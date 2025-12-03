@interface AXAuditCategoryVisual
- (BOOL)hasTextInRegionOfAuditIssue:(id)issue;
- (CGRect)_scaleRect:(CGRect)rect scale:(double)scale;
- (id)_auditGetScreenshotImageDataForFrame:(CGRect)frame;
- (id)_processVisionResult:(id)result options:(id)options coagulator:(id)coagulator;
- (id)allSupportedAuditTypes;
- (id)caseSelectorsForAuditing;
- (int64_t)_interfaceOrientationForElement:(id)element;
- (void)_auditRunContrastDetectionForAuditIssue:(id)issue;
- (void)_mlAuditTimedOut;
- (void)auditInaccessibleElement;
- (void)auditTextContrast;
@end

@implementation AXAuditCategoryVisual

- (id)caseSelectorsForAuditing
{
  if (qword_14E00 != -1)
  {
    sub_8284();
  }

  v3 = qword_14DF8;

  return v3;
}

- (id)allSupportedAuditTypes
{
  if (qword_14E10 != -1)
  {
    sub_8298();
  }

  v3 = qword_14E08;

  return v3;
}

- (void)auditInaccessibleElement
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[AXAuditCategoryVisual auditInaccessibleElement]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: started", &buf, 0xCu);
  }

  v4 = NSStringFromSelector(a2);
  v78 = [(AXAuditCategoryVisual *)self caseStartedForSelectorName:v4];
  v5 = AXAuditTestTypeElementDetection;
  if (([(AXAuditCategoryVisual *)self shouldRunAuditTestType:AXAuditTestTypeElementDetection]& 1) == 0)
  {
    goto LABEL_33;
  }

  v6 = +[AXAuditScreenshotManager sharedManager];
  lastTimestamp = [v6 lastTimestamp];
  if (!lastTimestamp)
  {

    goto LABEL_33;
  }

  v8 = [(AXAuditCategoryVisual *)self shouldRunAuditTestType:v5];

  if ((v8 & 1) == 0)
  {
LABEL_33:
    [(AXAuditCategoryVisual *)self caseEndedForSelectorName:v4 result:v78];
    goto LABEL_34;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v109 = 0x3032000000;
  v110 = sub_5128;
  v111 = sub_5138;
  iOSFrontmostAppForTargetPid = [(AXAuditCategoryEmbedded *)self iOSFrontmostAppForTargetPid];
  uiElement = [*(*(&buf + 1) + 40) uiElement];
  v9 = +[NSMutableArray array];
  v10 = [*(*(&buf + 1) + 40) elementsForAttribute:2095];
  v102[0] = _NSConcreteStackBlock;
  v102[1] = 3221225472;
  v102[2] = sub_5140;
  v102[3] = &unk_107B8;
  v71 = v9;
  v103 = v71;
  [v10 enumerateObjectsUsingBlock:v102];

  if (qword_14E28 != -1)
  {
    sub_82AC();
  }

  coreAnimationMainDisplay = [qword_14E18 coreAnimationMainDisplay];
  [coreAnimationMainDisplay scale];
  v13 = v12;

  imageNode = [qword_14E20 imageNode];
  [imageNode setShouldProcessRemotely:0];

  v15 = +[AXMVisionScreenRecognitionOptions defaultOptions];
  [v15 setDetectAXElements:1];
  [v15 setDetectText:0];
  [v15 setIsRTL:{objc_msgSend(uiElement, "BOOLWithAXAttribute:", 3026)}];
  [v15 setOrientation:{-[AXAuditCategoryVisual _interfaceOrientationForElement:](self, "_interfaceOrientationForElement:", uiElement)}];
  memset(v101, 0, sizeof(v101));
  [(AXAuditCategoryEmbedded *)self windowContextInformation];
  [v15 setFullRect:{*&v101[8], *&v101[16], *&v101[32]}];
  [v15 setIncludedLayerContextIDs:*v101];
  [v15 setPreserveInputImageSize:1];
  v16 = +[AXMLElementCoagulation sharedInstance];
  [v15 fullRect];
  [v16 setAppFrame:?];
  [v16 setAppOrientation:{objc_msgSend(v15, "orientation")}];
  [v16 setScreenScale:v13];
  [v16 setIsRTL:{objc_msgSend(v15, "isRTL")}];
  v69 = v16;
  v17 = +[AXAuditScreenshotManager sharedManager];
  [v17 lastTimestamp];
  v68 = v66 = v17;
  v76 = [v17 screenshotImageForTimestamp:v68];
  v67 = v15;
  v74 = [[CIImage alloc] initWithImage:v76];
  v18 = +[AXElement systemWideElement];
  springBoardApplication = [v18 springBoardApplication];
  uiElement2 = [springBoardApplication uiElement];

  [uiElement2 arrayWithAXAttribute:3054];
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v20 = v98 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v97 objects:v107 count:16];
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if (v21)
  {
    v26 = *v98;
    do
    {
      v27 = 0;
      do
      {
        if (*v98 != v26)
        {
          objc_enumerationMutation(v20);
        }

        v28 = [AXUIElement uiElementWithAXElement:*(*(&v97 + 1) + 8 * v27)];
        [v28 rectWithAXAttribute:2057];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v37 = [v28 BOOLWithAXAttribute:2025];
        v38 = [v28 BOOLWithAXAttribute:2016];
        v113.origin.x = v30;
        v113.origin.y = v32;
        v113.size.width = v34;
        v113.size.height = v36;
        if (!CGRectIsEmpty(v113) && v37 && v38 != 0)
        {
          v40 = x;
          v41 = y;
          v42 = width;
          v43 = height;
          if (CGRectIsEmpty(*&v40))
          {
            height = v36;
            width = v34;
            y = v32;
            x = v30;
          }

          else
          {
            v114.origin.x = x;
            v114.origin.y = y;
            v114.size.width = width;
            v114.size.height = height;
            v117.origin.x = v30;
            v117.origin.y = v32;
            v117.size.width = v34;
            v117.size.height = v36;
            v115 = CGRectUnion(v114, v117);
            x = v115.origin.x;
            y = v115.origin.y;
            width = v115.size.width;
            height = v115.size.height;
          }
        }

        v27 = v27 + 1;
      }

      while (v21 != v27);
      v44 = [v20 countByEnumeratingWithState:&v97 objects:v107 count:16];
      v21 = v44;
    }

    while (v44);
  }

  [(AXAuditCategoryEmbedded *)self orientedFrameForRect:x, y, width, height];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v116.origin.x = v46;
    v116.origin.y = v48;
    v116.size.width = v50;
    v116.size.height = v52;
    v54 = NSStringFromRect(v116);
    sub_82D4(v54, v106);
  }

  v95[0] = 0;
  v95[1] = v95;
  v95[2] = 0x3032000000;
  v95[3] = sub_5128;
  v95[4] = sub_5138;
  v96 = 0;
  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3254779904;
  v79[2] = sub_52A0;
  v79[3] = &unk_10828;
  v86 = v95;
  v79[4] = self;
  v80 = v67;
  v70 = v69;
  v81 = v70;
  v73 = v68;
  v82 = v73;
  v55 = *v101;
  v56 = v80;
  v89 = *&v101[8];
  v90 = *&v101[24];
  v91 = v46;
  v92 = v48;
  v93 = v50;
  v94 = v52;
  p_buf = &buf;
  v88 = v55;
  v72 = v71;
  v83 = v72;
  v57 = v4;
  v84 = v57;
  v58 = v78;
  v85 = v58;
  v59 = objc_retainBlock(v79);
  _mlAuditTimer = [(AXAuditCategoryVisual *)self _mlAuditTimer];
  if (!_mlAuditTimer || (-[AXAuditCategoryVisual _mlAuditTimer](self, "_mlAuditTimer"), v61 = objc_claimAutoreleasedReturnValue(), v62 = [v61 isValid], v61, _mlAuditTimer, (v62 & 1) == 0))
  {
    v104[0] = @"selectorName";
    v104[1] = @"caseResult";
    v105[0] = v57;
    v105[1] = v58;
    v63 = [NSDictionary dictionaryWithObjects:v105 forKeys:v104 count:2];
    v64 = [NSTimer scheduledTimerWithTimeInterval:self target:"_mlAuditTimedOut" selector:v63 userInfo:0 repeats:10.0];
    [(AXAuditCategoryVisual *)self set_mlAuditTimer:v64];
  }

  imageNode2 = [qword_14E20 imageNode];
  [imageNode2 triggerWithImage:v74 options:v56 cacheKey:0 resultHandler:v59];

  _Block_object_dispose(v95, 8);
  _Block_object_dispose(&buf, 8);

LABEL_34:
}

- (void)_mlAuditTimedOut
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[AXAuditCategoryVisual _mlAuditTimedOut]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: ML-generated description timed out!", &v10, 0xCu);
  }

  _mlAuditTimer = [(AXAuditCategoryVisual *)self _mlAuditTimer];
  userInfo = [_mlAuditTimer userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"selectorName"];

  _mlAuditTimer2 = [(AXAuditCategoryVisual *)self _mlAuditTimer];
  userInfo2 = [_mlAuditTimer2 userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:@"caseResult"];

  _mlAuditTimer3 = [(AXAuditCategoryVisual *)self _mlAuditTimer];
  [_mlAuditTimer3 invalidate];

  [(AXAuditCategoryVisual *)self set_mlAuditTimer:0];
  if ([v5 length])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[AXAuditCategoryVisual _mlAuditTimedOut]";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: Ending case for selector: %@", &v10, 0x16u);
    }

    [(AXAuditCategoryVisual *)self caseEndedForSelectorName:v5 result:v8];
  }
}

- (CGRect)_scaleRect:(CGRect)rect scale:(double)scale
{
  v4 = rect.origin.x * scale;
  v5 = rect.origin.y * scale;
  v6 = rect.size.width * scale;
  v7 = rect.size.height * scale;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)_processVisionResult:(id)result options:(id)options coagulator:(id)coagulator
{
  resultCopy = result;
  optionsCopy = options;
  coagulatorCopy = coagulator;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = resultCopy;
  features = [resultCopy features];
  v9 = [features countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      v12 = 0;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(features);
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(*(&v30 + 1) + 8 * v12);
          *buf = 136315394;
          v36 = "[AXAuditCategoryVisual _processVisionResult:options:coagulator:]";
          v37 = 2112;
          v38 = v13;
          _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: Feature results: %@", buf, 0x16u);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [features countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v10);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_83DC();
  }

  if ([optionsCopy disableCoagulator])
  {
    features2 = [v25 features];
  }

  else
  {
    CFAbsoluteTimeGetCurrent();
    features3 = [v25 features];
    features2 = [coagulatorCopy coagulateElements:features3];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_8460();
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = features2;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      v20 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          v21 = *(*(&v26 + 1) + 8 * v20);
          *buf = 136315394;
          v36 = "[AXAuditCategoryVisual _processVisionResult:options:coagulator:]";
          v37 = 2112;
          v38 = v21;
          _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: Sorted results: %@", buf, 0x16u);
        }

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  if (![v16 count] && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_8504();
  }

  return v16;
}

- (int64_t)_interfaceOrientationForElement:(id)element
{
  result = [objc_opt_class() axDeviceOrientationForInterfaceOrientation:{-[AXAuditCategoryEmbedded interfaceOrientation](self, "interfaceOrientation")}];
  if ((result - 1) >= 4)
  {
    return 0;
  }

  return result;
}

- (void)auditTextContrast
{
  v3 = NSStringFromSelector(a2);
  v4 = [(AXAuditCategoryVisual *)self caseStartedForSelectorName:v3];
  if ((-[AXAuditCategoryVisual shouldRunAuditTestType:](self, "shouldRunAuditTestType:", AXAuditTestTypeContrast) & 1) != 0 && (+[AXAuditScreenshotManager sharedManager](AXAuditScreenshotManager, "sharedManager"), v5 = objc_claimAutoreleasedReturnValue(), [v5 lastTimestamp], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v26 = AXAuditContrastDetectionTest;
    v24 = AXAuditShouldRunTestOption;
    v25 = &__kCFBooleanTrue;
    v7 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v27 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    v9 = +[NSMutableArray array];
    iOSFrontmostAppForTargetPid = [(AXAuditCategoryEmbedded *)self iOSFrontmostAppForTargetPid];
    v11 = [iOSFrontmostAppForTargetPid auditIssuesForOptions:v8];
    [v9 addObjectsFromArray:v11];

    if ([v9 count])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v20;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v19 + 1) + 8 * i);
            if ([v17 count])
            {
              v18 = AuditIssueFromServerAppDict(v17);
              if ([v18 issueClassification] == "undation.framework/CoreFoundation")
              {
                [(AXAuditCategoryVisual *)self _auditRunContrastDetectionForAuditIssue:v18];
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v14);
      }
    }

    [(AXAuditCategoryVisual *)self caseEndedForSelectorName:v3 result:v4, v19];
  }

  else
  {
    [(AXAuditCategoryVisual *)self caseEndedForSelectorName:v3 result:v4];
  }
}

- (BOOL)hasTextInRegionOfAuditIssue:(id)issue
{
  issueCopy = issue;
  auditElement = [issueCopy auditElement];
  axElement = [auditElement axElement];

  if (-[AXAuditCategoryVisual _doesContainsTextForTraits:](self, "_doesContainsTextForTraits:", [axElement traits]))
  {
    v7 = 1;
  }

  else
  {
    [issueCopy elementRect];
    v8 = [(AXAuditCategoryVisual *)self _auditGetScreenshotImageDataForFrame:?];
    v9 = +[AXAuditImageDetectionManager sharedManager];
    v10 = [v9 detectionResultsFromImageData:v8];

    v7 = [v10 count] != 0;
  }

  return v7;
}

- (id)_auditGetScreenshotImageDataForFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = +[AXAuditScreenshotManager sharedManager];
  lastTimestamp = [v7 lastTimestamp];
  v9 = [v7 screenshotImageForTimestamp:lastTimestamp inRect:{x, y, width, height}];
  v10 = UIImagePNGRepresentation(v9);

  return v10;
}

- (void)_auditRunContrastDetectionForAuditIssue:(id)issue
{
  issueCopy = issue;
  v5 = +[AXAuditContrastDetectionManager sharedManager];
  v6 = objc_alloc_init(AXAuditContrastInput);
  auditElement = [issueCopy auditElement];
  axElement = [auditElement axElement];

  [issueCopy elementRect];
  v9 = [(AXAuditCategoryVisual *)self _auditGetScreenshotImageDataForFrame:?];
  [v6 setImageData:v9];
  [v6 setEnhanced:0];
  foregroundColor = [issueCopy foregroundColor];
  if (foregroundColor)
  {
    [v6 setForegroundHexColorValue:foregroundColor];
  }

  backgroundColor = [issueCopy backgroundColor];
  if (backgroundColor)
  {
    [v6 setBackgroundHexColorValue:backgroundColor];
  }

  [issueCopy fontSize];
  if (v12 > 0.0)
  {
    [v6 setFontSize:?];
  }

  elementDescription = [issueCopy elementDescription];
  [v6 setIdentifier:elementDescription];

  v14 = [v5 contrastResultForInput:v6];
  v15 = v14;
  if (v14)
  {
    classification = [v14 classification];
    if ([(AXAuditCategoryVisual *)self _isFailureContrastIssueType:classification])
    {
      v29 = v9;
      v30 = axElement;
      v17 = [(AXAuditCategoryEmbedded *)self elementDescriptionForElement:axElement];
      v18 = [AXAuditIssue auditIssueForClassification:classification];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v5;
        auditElement2 = [issueCopy auditElement];
        [v18 setAuditElement:auditElement2];

        v27 = v17;
        [v18 setElementDescription:v17];
        [issueCopy elementRect];
        [v18 setElementRect:?];
        summary = [v15 summary];
        v31 = summary;
        v21 = [NSArray arrayWithObjects:&v31 count:1];
        [v18 setLongDescExtraInfo:v21];

        [v15 fontSize];
        [v18 setFontSize:?];
        compareColors = [v15 compareColors];
        if ([compareColors count] == &dword_0 + 2)
        {
          v23 = [compareColors objectAtIndexedSubscript:0];
          [v18 setForegroundColor:v23];

          v24 = [compareColors objectAtIndexedSubscript:1];
          [v18 setBackgroundColor:v24];
        }

        currentCaseResult = [(AXAuditCategoryVisual *)self currentCaseResult];
        [currentCaseResult addAuditIssue:v18];
        delegate = [(AXAuditCategoryVisual *)self delegate];
        [delegate auditCategory:self didEncounterIssue:v18];

        v17 = v27;
        v5 = v28;
      }

      v9 = v29;
      axElement = v30;
    }
  }
}

@end
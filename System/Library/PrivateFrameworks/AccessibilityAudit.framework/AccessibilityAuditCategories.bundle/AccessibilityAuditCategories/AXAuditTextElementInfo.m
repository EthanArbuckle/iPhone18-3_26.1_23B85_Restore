@interface AXAuditTextElementInfo
- (AXAuditTextElementInfo)init;
- (CGRect)_convertAccessibilityFrameToScreenCoordinates:(CGRect)a3 forElement:(id)a4;
- (id)_elementsForElement:(id)a3 attribute:(int64_t)a4 withParameter:(id)a5;
- (id)_elementsFromElement:(id)a3 direction:(int64_t)a4 withCount:(unint64_t)a5;
- (id)allSupportedAuditTypes;
- (id)caseSelectorsForAuditing;
- (id)navigationElementForElement:(id)a3 inDirection:(int64_t)a4;
- (id)swipeOrderForElement:(id)a3 inDirection:(int64_t)a4 includeElement:(BOOL)a5;
- (void)_auditCheckElementForMissingLabel:(id)a3 withSelectorName:(id)a4 imageNameAuditIssue:(id)a5 caseResult:(id)a6;
- (void)_auditCheckHumanReadableDescription:(id)a3;
- (void)_elementFinishedAnalyzingForAudit:(id)a3 caseResult:(id)a4;
- (void)_generateDescriptionForElement:(id)a3 withCompletion:(id)a4;
- (void)_getAuditIssuesForElement:(id)a3;
- (void)_mlAuditTimedOut;
- (void)auditCheckApplicationsAuditIssues;
- (void)auditCheckElementForRedundentText;
- (void)auditCheckElementsForMissingLabelAndUsingImageName;
- (void)auditCheckHitTest;
- (void)auditCheckHumanReadable;
- (void)purgeCache;
@end

@implementation AXAuditTextElementInfo

- (AXAuditTextElementInfo)init
{
  v7.receiver = self;
  v7.super_class = AXAuditTextElementInfo;
  v2 = [(AXAuditTextElementInfo *)&v7 init];
  if (v2)
  {
    v3 = [[AXMIconVisionEngine alloc] initWithIdentifier:@"AXMVisionEngineTestForInspector"];
    [(AXAuditTextElementInfo *)v2 set_engine:v3];

    v4 = [(AXAuditTextElementInfo *)v2 _engine];
    [v4 setMaximumQueueSize:10];

    v5 = [(AXAuditTextElementInfo *)v2 _engine];
    [v5 prewarmEngine];
  }

  return v2;
}

- (id)caseSelectorsForAuditing
{
  if (qword_14DB0 != -1)
  {
    sub_8220();
  }

  v3 = qword_14DA8;

  return v3;
}

- (id)allSupportedAuditTypes
{
  if (qword_14DC0 != -1)
  {
    sub_8234();
  }

  v3 = qword_14DB8;

  return v3;
}

- (void)_getAuditIssuesForElement:(id)a3
{
  v4 = a3;
  v5 = [(AXAuditTextElementInfo *)self shouldRunAuditTestType:AXAuditTestTypeDynamicText];
  v6 = [(AXAuditTextElementInfo *)self shouldRunAuditTestType:AXAuditTestTypeTextClipped];
  v7 = [(AXAuditTextElementInfo *)self shouldRunAuditTestType:AXAuditTestTypeTrait];
  v8 = v7;
  if ((v5 & 1) != 0 || (v6 & 1) != 0 || v7)
  {
    v100 = self;
    v9 = +[AXAuditPreferenceController sharedController];
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 spinRunloop]);

    v124 = AXAuditDynamicTextSupportTest;
    v11 = AXAuditShouldRunTestOption;
    v122[0] = AXAuditShouldRunTestOption;
    v12 = [NSNumber numberWithBool:v5];
    v122[1] = AXAuditSpinRunLoopOption;
    v123[0] = v12;
    v123[1] = v10;
    v13 = [NSDictionary dictionaryWithObjects:v123 forKeys:v122 count:2];
    v125 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v125 forKeys:&v124 count:1];

    v120 = AXAuditClippingTest;
    v118 = v11;
    v15 = [NSNumber numberWithBool:v6];
    v119 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v119 forKeys:&v118 count:1];
    v121 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1];

    v116 = AXAuditMissingTraitNotEnabledTest;
    v114 = v11;
    v18 = [NSNumber numberWithBool:v8];
    v115 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v115 forKeys:&v114 count:1];
    v117 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v117 forKeys:&v116 count:1];

    v21 = +[NSMutableDictionary dictionary];
    [v21 addEntriesFromDictionary:v14];
    [v21 addEntriesFromDictionary:v17];
    [v21 addEntriesFromDictionary:v20];
    v22 = [v4 auditIssuesForOptions:v21];
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v94 = v21;
        v95 = v20;
        v96 = v17;
        v97 = v14;
        v98 = v10;
        v99 = v4;
        v103 = 0u;
        v104 = 0u;
        memset(&aRect[1], 0, 32);
        v93 = v22;
        obj = v22;
        v23 = [obj countByEnumeratingWithState:&aRect[1] objects:v113 count:16];
        v24 = self;
        if (!v23)
        {
          goto LABEL_28;
        }

        v25 = v23;
        v26 = *aRect[3];
        while (1)
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*aRect[3] != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(aRect[2] + 8 * i);
            if ([v28 count])
            {
              v29 = AuditIssueFromServerAppDict(v28);
              [v29 elementRect];
              v31 = v30;
              v33 = v32;
              v35 = v34;
              v37 = v36;
              [(AXAuditCategoryEmbedded *)v24 orientedScreenBounds];
              v39 = v38;
              v41 = v40;
              v43 = v42;
              v45 = v44;
              v126.origin.x = v31;
              v126.origin.y = v33;
              v126.size.width = v35;
              v126.size.height = v37;
              if (CGRectIsEmpty(v126) || (v127.origin.x = v39, v127.origin.y = v41, v127.size.width = v43, v127.size.height = v45, CGRectIsEmpty(v127)) || (v92 = 0x3FE6666666666666, (AXMIsContainedBy() & 1) != 0))
              {
                v46 = [v29 auditElement];
                v47 = [v46 axElement];
                v48 = [v47 uiElement];
                [v48 rectWithAXAttribute:2003];
                aRect[0] = v49;
                v51 = v50;
                v53 = v52;
                v55 = v54;

                v56 = [v29 auditElement];
                v57 = [v56 axElement];
                v58 = [v57 uiElement];
                [v58 rectWithAXAttribute:2057];
                v60 = v59;
                v62 = v61;
                v64 = v63;
                v66 = v65;

                if (v64 * v66 / (v53 * v55) <= 0.5)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                  {
                    v84 = [v29 auditElement];
                    v85 = [v84 axElement];
                    *&v128.origin.x = aRect[0];
                    v128.origin.y = v51;
                    v128.size.width = v53;
                    v128.size.height = v55;
                    v86 = NSStringFromRect(v128);
                    v129.origin.x = v60;
                    v129.origin.y = v62;
                    v129.size.width = v64;
                    v129.size.height = v66;
                    v87 = NSStringFromRect(v129);
                    *buf = 136315906;
                    v106 = "[AXAuditTextElementInfo _getAuditIssuesForElement:]";
                    v107 = 2112;
                    v108 = v85;
                    v109 = 2112;
                    v110 = v86;
                    v111 = 2112;
                    v112 = v87;
                    _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: skipping because AXElement %@ with frame %@ has a visible frame %@ that is less than 50 percent visible", buf, 0x2Au);
                  }
                }

                else
                {
                  if ([v29 issueClassification] != "work/FrontBoardServices")
                  {
                    goto LABEL_19;
                  }

                  v67 = fontSizesToIgnore();
                  v68 = [v29 longDescExtraInfo];
                  v69 = [NSMutableSet setWithArray:v68];

                  [v69 minusSet:v67];
                  if ([v69 count])
                  {
                    v70 = [v69 allObjects];
                    [v29 setLongDescExtraInfo:v70];

LABEL_19:
                    v71 = [v29 auditElement];
                    v67 = [v71 axElement];

                    v69 = [(AXAuditCategoryEmbedded *)v24 elementDescriptionForElement:v67];
                    v72 = [v29 issueClassification];
                    v73 = [v29 auditElement];
                    [v29 elementRect];
                    v75 = v74;
                    v77 = v76;
                    v79 = v78;
                    v81 = v80;
                    v82 = [v29 longDescExtraInfo];
                    v83 = [v29 elementText];
                    [(AXAuditTextElementInfo *)v100 addIssueWithClassification:v72 auditElement:v73 elementRect:v69 elementDescription:0 mlGeneratedDescription:v82 longDescExtraInfo:v83 elementText:v75, v77, v79, v81];

                    v24 = v100;
                  }
                }
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                v88 = [v29 auditElement];
                v89 = [v88 axElement];
                v130.origin.x = v31;
                v130.origin.y = v33;
                v130.size.width = v35;
                v130.size.height = v37;
                v90 = NSStringFromRect(v130);
                v131.origin.x = v39;
                v131.origin.y = v41;
                v131.size.width = v43;
                v131.size.height = v45;
                v91 = NSStringFromRect(v131);
                *buf = 136315906;
                v106 = "[AXAuditTextElementInfo _getAuditIssuesForElement:]";
                v107 = 2112;
                v108 = v89;
                v109 = 2112;
                v110 = v90;
                v111 = 2112;
                v112 = v91;
                _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: skipping because AXElement %@ with frame %@ is less than 70 percent contained by screen bounds %@", buf, 0x2Au);
              }

              continue;
            }
          }

          v25 = [obj countByEnumeratingWithState:&aRect[1] objects:v113 count:16];
          if (!v25)
          {
LABEL_28:

            v10 = v98;
            v4 = v99;
            v17 = v96;
            v14 = v97;
            v21 = v94;
            v20 = v95;
            v22 = v93;
            break;
          }
        }
      }
    }
  }
}

- (void)auditCheckApplicationsAuditIssues
{
  v5 = NSStringFromSelector(a2);
  v3 = [(AXAuditTextElementInfo *)self caseStartedForSelectorName:v5];
  v4 = [(AXAuditCategoryEmbedded *)self iOSFrontmostAppForTargetPid];
  [(AXAuditTextElementInfo *)self _getAuditIssuesForElement:v4];
  [(AXAuditTextElementInfo *)self caseEndedForSelectorName:v5 result:v3];
}

- (void)_auditCheckElementForMissingLabel:(id)a3 withSelectorName:(id)a4 imageNameAuditIssue:(id)a5 caseResult:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(AXAuditTextElementInfo *)self shouldRunAuditTestType:AXAuditTestTypeSufficientElementDescription])
  {
    v14 = [v10 label];
    if ([v14 length])
    {
      v15 = 0;
    }

    else
    {
      v16 = [v10 value];
      v15 = [v16 length] == 0;
    }

    if (v12 || v15)
    {
      v17 = [v10 traits];
      if ((kAXBackButtonTrait & ~v17) != 0)
      {
        v28 = [(AXAuditCategoryEmbedded *)self elementDescriptionForElement:v10];
        v18 = [v10 uiElement];
        v19 = [v18 objectWithAXAttribute:5019];

        [(AXAuditTextElementInfo *)self set_remainingElementsToAnalyze:[(AXAuditTextElementInfo *)self _remainingElementsToAnalyze]+ 1];
        v20 = [(AXAuditTextElementInfo *)self _mlAuditTimer];
        if (!v20 || (v21 = v20, -[AXAuditTextElementInfo _mlAuditTimer](self, "_mlAuditTimer"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isValid], v22, v21, (v23 & 1) == 0))
        {
          v37[0] = @"selectorName";
          v37[1] = @"caseResult";
          v38[0] = v11;
          v38[1] = v13;
          v24 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
          v25 = [NSTimer scheduledTimerWithTimeInterval:self target:"_mlAuditTimedOut" selector:v24 userInfo:0 repeats:10.0];
          [(AXAuditTextElementInfo *)self set_mlAuditTimer:v25];
        }

        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1F18;
        v29[3] = &unk_10650;
        v29[4] = self;
        v30 = v10;
        v31 = v19;
        v32 = v28;
        v36 = v12 != 0;
        v33 = v12;
        v34 = v11;
        v35 = v13;
        v26 = v28;
        v27 = v19;
        [(AXAuditTextElementInfo *)self _generateDescriptionForElement:v30 withCompletion:v29];
      }
    }
  }
}

- (void)_elementFinishedAnalyzingForAudit:(id)a3 caseResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(AXAuditTextElementInfo *)self _remainingElementsToAnalyze]<= 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[AXAuditTextElementInfo _elementFinishedAnalyzingForAudit:caseResult:]";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: no more remaining elements! ending case for selector: %@", &v9, 0x16u);
    }

    v8 = [(AXAuditTextElementInfo *)self _mlAuditTimer];
    [v8 invalidate];

    [(AXAuditTextElementInfo *)self set_mlAuditTimer:0];
    [(AXAuditTextElementInfo *)self set_remainingElementsToAnalyze:0];
    [(AXAuditTextElementInfo *)self caseEndedForSelectorName:v6 result:v7];
  }
}

- (void)auditCheckElementsForMissingLabelAndUsingImageName
{
  v3 = NSStringFromSelector(a2);
  v4 = [(AXAuditTextElementInfo *)self caseStartedForSelectorName:v3];
  if (([(AXAuditTextElementInfo *)self shouldRunAuditTestType:AXAuditTestTypeSufficientElementDescription]& 1) != 0)
  {
    [(AXAuditTextElementInfo *)self set_remainingElementsToAnalyze:0];
    v18 = AXAuditElementLabelUsesImageNameTest;
    v16 = AXAuditShouldRunTestOption;
    v17 = &__kCFBooleanTrue;
    v5 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v19 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

    v7 = +[NSMutableDictionary dictionary];
    [v7 addEntriesFromDictionary:v6];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_2404;
    v11[3] = &unk_10678;
    v12 = v7;
    v13 = self;
    v8 = v3;
    v14 = v8;
    v9 = v4;
    v15 = v9;
    v10 = v7;
    [(AXAuditCategoryEmbedded *)self testOnAllVisibleElements:v11];
    [(AXAuditTextElementInfo *)self _elementFinishedAnalyzingForAudit:v8 caseResult:v9];
  }

  else
  {
    [(AXAuditTextElementInfo *)self caseEndedForSelectorName:v3 result:v4];
  }
}

- (void)auditCheckElementForRedundentText
{
  v3 = NSStringFromSelector(a2);
  v4 = [(AXAuditTextElementInfo *)self caseStartedForSelectorName:v3];
  if (([(AXAuditTextElementInfo *)self shouldRunAuditTestType:AXAuditTestTypeTrait]& 1) != 0)
  {
    v20 = v4;
    v21 = v3;
    v5 = [(AXAuditCategoryEmbedded *)self iOSFrontmostAppForTargetPid];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_2850;
    v28[3] = &unk_106A0;
    v19 = self;
    v28[4] = self;
    v6 = objc_retainBlock(v28);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = v5;
    obj = [v5 visibleElements];
    v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v23 = *v25;
      v9 = kAXButtonTrait;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [v11 label];
          v13 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
          v14 = [v12 stringByTrimmingCharactersInSet:v13];

          v15 = [v11 value];
          v16 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
          v17 = [v15 stringByTrimmingCharactersInSet:v16];

          (v6[2])(v6, v11, v14, v17, [v11 traits], v9, @"UIAccessibilityTraitButton", @"trait.button");
        }

        v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    v4 = v20;
    v3 = v21;
    [(AXAuditTextElementInfo *)v19 caseEndedForSelectorName:v21 result:v20];
  }

  else
  {
    [(AXAuditTextElementInfo *)self caseEndedForSelectorName:v3 result:v4];
  }
}

- (void)_auditCheckHumanReadableDescription:(id)a3
{
  v11 = a3;
  v4 = [v11 label];
  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  v7 = [v11 uiElement];
  v8 = [v7 objectWithAXAttribute:5019];

  if ([v6 length] && (objc_msgSend(v6, "axAuditStringIsHumanReadable") & 1) == 0)
  {
    v9 = [(AXAuditCategoryEmbedded *)self elementDescriptionForElement:v11];
    v10 = [AXAuditElement auditElementWithElement:v11 identifier:v8];
    [(AXAuditCategoryEmbedded *)self orientedFrameForElement:v11];
    [(AXAuditTextElementInfo *)self addIssueWithClassification:1002 auditElement:v10 elementRect:v9 elementDescription:?];
  }
}

- (void)auditCheckHumanReadable
{
  v3 = NSStringFromSelector(a2);
  v4 = [(AXAuditTextElementInfo *)self caseStartedForSelectorName:v3];
  if (([(AXAuditTextElementInfo *)self shouldRunAuditTestType:AXAuditTestTypeSufficientElementDescription]& 1) != 0)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_2C74;
    v5[3] = &unk_106C8;
    v5[4] = self;
    [(AXAuditCategoryEmbedded *)self testOnAllVisibleElements:v5];
  }

  [(AXAuditTextElementInfo *)self caseEndedForSelectorName:v3 result:v4];
}

- (void)auditCheckHitTest
{
  v4 = NSStringFromSelector(a2);
  v3 = [(AXAuditTextElementInfo *)self caseStartedForSelectorName:v4];
  [(AXAuditTextElementInfo *)self shouldRunAuditTestType:AXAuditTestTypeSwipeOrder];
  [(AXAuditTextElementInfo *)self caseEndedForSelectorName:v4 result:v3];
}

- (id)_elementsFromElement:(id)a3 direction:(int64_t)a4 withCount:(unint64_t)a5
{
  v7 = a3;
  v8 = [v7 uiElement];
  v9 = v8;
  if (a4 == 1)
  {
    [v8 nextElementsWithCount:a5];
  }

  else
  {
    [v8 previousElementsWithCount:a5];
  }
  v10 = ;

  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v10;
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

        v17 = [AXElement elementWithUIElement:*(*(&v19 + 1) + 8 * i), v19];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v11;
}

- (id)_elementsForElement:(id)a3 attribute:(int64_t)a4 withParameter:(id)a5
{
  v7 = a5;
  v8 = [a3 uiElement];
  v9 = [v8 uiElementsWithAttribute:a4 parameter:v7];

  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [AXElement elementWithUIElement:*(*(&v18 + 1) + 8 * i), v18];
        if (a3)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

- (id)navigationElementForElement:(id)a3 inDirection:(int64_t)a4
{
  v4 = [(AXAuditTextElementInfo *)self _elementsFromElement:a3 direction:a4 withCount:1];
  v5 = [v4 lastObject];

  return v5;
}

- (id)swipeOrderForElement:(id)a3 inDirection:(int64_t)a4 includeElement:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = +[NSMutableArray array];
  v10 = v9;
  if (v8 && v5)
  {
    [v9 addObject:v8];
    v11 = v8;
  }

  else if (!v8)
  {
    goto LABEL_9;
  }

  v12 = [(AXAuditTextElementInfo *)self navigationElementForElement:v8 inDirection:a4];
  v13 = v8;
  if (v12)
  {
    v14 = v8;
    do
    {
      v13 = v12;
      [v10 addObject:v12];

      v12 = [(AXAuditTextElementInfo *)self navigationElementForElement:v13 inDirection:a4];
      v14 = v13;
    }

    while (v12);
  }

LABEL_9:

  return v10;
}

- (void)_mlAuditTimedOut
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "AXAuditTextElementInfo: ML-generated description timed out!", v10, 2u);
  }

  v3 = [(AXAuditTextElementInfo *)self _mlAuditTimer];
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"selectorName"];

  v6 = [(AXAuditTextElementInfo *)self _mlAuditTimer];
  v7 = [v6 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"caseResult"];

  v9 = [(AXAuditTextElementInfo *)self _mlAuditTimer];
  [v9 invalidate];

  [(AXAuditTextElementInfo *)self set_mlAuditTimer:0];
  [(AXAuditTextElementInfo *)self set_remainingElementsToAnalyze:0];
  if ([v5 length])
  {
    [(AXAuditTextElementInfo *)self _elementFinishedAnalyzingForAudit:v5 caseResult:v8];
  }
}

- (CGRect)_convertAccessibilityFrameToScreenCoordinates:(CGRect)a3 forElement:(id)a4
{
  valuePtr = a3;
  v4 = a4;
  v5 = AXValueCreate(kAXValueTypeCGRect, &valuePtr);
  v6 = +[AXUIElement uiElementWithAXElement:](AXUIElement, "uiElementWithAXElement:", +[AXUIElement systemWideAXUIElement]);
  v7 = [v4 uiElement];

  v8 = [v7 numberWithAXAttribute:2021];
  v9 = [v6 objectWithAXAttribute:91505 parameter:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v5, v8, 0)}];

  if (v5)
  {
    CFRelease(v5);
  }

  if (v9)
  {
    AXValueGetValue(v9, kAXValueTypeCGRect, &valuePtr);
  }

  width = valuePtr.size.width;
  height = valuePtr.size.height;
  x = valuePtr.origin.x;
  y = valuePtr.origin.y;

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)_generateDescriptionForElement:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[NSDate timeIntervalSinceReferenceDate];
  if (v6 && (v9 = v8, +[AXAuditScreenshotManager sharedManager](AXAuditScreenshotManager, "sharedManager"), v10 = objc_claimAutoreleasedReturnValue(), [v10 lastTimestamp], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    [v6 visibleFrame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v38 = [(AXAuditTextElementInfo *)self _applicationElementForElement:v6];
    [(AXAuditTextElementInfo *)self _convertAccessibilityFrameToScreenCoordinates:v13 forElement:v15, v17, v19];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = +[AXAuditScreenshotManager sharedManager];
    v37 = [v28 lastTimestamp];
    v29 = [v28 screenshotImageForTimestamp:v21 inRect:{v23, v25, v27}];
    v30 = UIImagePNGRepresentation(v29);
    v31 = [[CIImage alloc] initWithData:v30];
    v32 = objc_alloc_init(AXMVisionAnalysisOptions);
    [v32 setDetectIconClass:1];
    v33 = [(AXAuditTextElementInfo *)self _engine];
    v34 = [v33 imageNode];
    [v34 setShouldProcessRemotely:0];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v43 = v30;
      v44 = 2112;
      v45 = v6;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "AXAuditTextElementInfo: analyzing image data: %@, element: %@", buf, 0x16u);
    }

    v35 = [(AXAuditTextElementInfo *)self _engine];
    v36 = [v35 imageNode];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_36F4;
    v39[3] = &unk_106F0;
    v41 = v9;
    v40 = v7;
    [v36 triggerWithImage:v31 options:v32 cacheKey:v30 resultHandler:v39];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)purgeCache
{
  v3 = [(AXAuditTextElementInfo *)self _engine];
  v2 = [v3 cache];
  [v2 purgeCache];
}

@end
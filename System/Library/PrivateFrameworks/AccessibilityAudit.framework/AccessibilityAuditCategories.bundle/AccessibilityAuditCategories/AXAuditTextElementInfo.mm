@interface AXAuditTextElementInfo
- (AXAuditTextElementInfo)init;
- (CGRect)_convertAccessibilityFrameToScreenCoordinates:(CGRect)coordinates forElement:(id)element;
- (id)_elementsForElement:(id)element attribute:(int64_t)attribute withParameter:(id)parameter;
- (id)_elementsFromElement:(id)element direction:(int64_t)direction withCount:(unint64_t)count;
- (id)allSupportedAuditTypes;
- (id)caseSelectorsForAuditing;
- (id)navigationElementForElement:(id)element inDirection:(int64_t)direction;
- (id)swipeOrderForElement:(id)element inDirection:(int64_t)direction includeElement:(BOOL)includeElement;
- (void)_auditCheckElementForMissingLabel:(id)label withSelectorName:(id)name imageNameAuditIssue:(id)issue caseResult:(id)result;
- (void)_auditCheckHumanReadableDescription:(id)description;
- (void)_elementFinishedAnalyzingForAudit:(id)audit caseResult:(id)result;
- (void)_generateDescriptionForElement:(id)element withCompletion:(id)completion;
- (void)_getAuditIssuesForElement:(id)element;
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

    _engine = [(AXAuditTextElementInfo *)v2 _engine];
    [_engine setMaximumQueueSize:10];

    _engine2 = [(AXAuditTextElementInfo *)v2 _engine];
    [_engine2 prewarmEngine];
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

- (void)_getAuditIssuesForElement:(id)element
{
  elementCopy = element;
  v5 = [(AXAuditTextElementInfo *)self shouldRunAuditTestType:AXAuditTestTypeDynamicText];
  v6 = [(AXAuditTextElementInfo *)self shouldRunAuditTestType:AXAuditTestTypeTextClipped];
  v7 = [(AXAuditTextElementInfo *)self shouldRunAuditTestType:AXAuditTestTypeTrait];
  v8 = v7;
  if ((v5 & 1) != 0 || (v6 & 1) != 0 || v7)
  {
    selfCopy = self;
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
    v22 = [elementCopy auditIssuesForOptions:v21];
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
        v99 = elementCopy;
        v103 = 0u;
        v104 = 0u;
        memset(&aRect[1], 0, 32);
        v93 = v22;
        obj = v22;
        v23 = [obj countByEnumeratingWithState:&aRect[1] objects:v113 count:16];
        selfCopy2 = self;
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
              [(AXAuditCategoryEmbedded *)selfCopy2 orientedScreenBounds];
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
                auditElement = [v29 auditElement];
                axElement = [auditElement axElement];
                uiElement = [axElement uiElement];
                [uiElement rectWithAXAttribute:2003];
                aRect[0] = v49;
                v51 = v50;
                v53 = v52;
                v55 = v54;

                auditElement2 = [v29 auditElement];
                axElement2 = [auditElement2 axElement];
                uiElement2 = [axElement2 uiElement];
                [uiElement2 rectWithAXAttribute:2057];
                v60 = v59;
                v62 = v61;
                v64 = v63;
                v66 = v65;

                if (v64 * v66 / (v53 * v55) <= 0.5)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                  {
                    auditElement3 = [v29 auditElement];
                    axElement3 = [auditElement3 axElement];
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
                    v108 = axElement3;
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

                  axElement4 = fontSizesToIgnore();
                  longDescExtraInfo = [v29 longDescExtraInfo];
                  v69 = [NSMutableSet setWithArray:longDescExtraInfo];

                  [v69 minusSet:axElement4];
                  if ([v69 count])
                  {
                    allObjects = [v69 allObjects];
                    [v29 setLongDescExtraInfo:allObjects];

LABEL_19:
                    auditElement4 = [v29 auditElement];
                    axElement4 = [auditElement4 axElement];

                    v69 = [(AXAuditCategoryEmbedded *)selfCopy2 elementDescriptionForElement:axElement4];
                    issueClassification = [v29 issueClassification];
                    auditElement5 = [v29 auditElement];
                    [v29 elementRect];
                    v75 = v74;
                    v77 = v76;
                    v79 = v78;
                    v81 = v80;
                    longDescExtraInfo2 = [v29 longDescExtraInfo];
                    elementText = [v29 elementText];
                    [(AXAuditTextElementInfo *)selfCopy addIssueWithClassification:issueClassification auditElement:auditElement5 elementRect:v69 elementDescription:0 mlGeneratedDescription:longDescExtraInfo2 longDescExtraInfo:elementText elementText:v75, v77, v79, v81];

                    selfCopy2 = selfCopy;
                  }
                }
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                auditElement6 = [v29 auditElement];
                axElement5 = [auditElement6 axElement];
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
                v108 = axElement5;
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
            elementCopy = v99;
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
  iOSFrontmostAppForTargetPid = [(AXAuditCategoryEmbedded *)self iOSFrontmostAppForTargetPid];
  [(AXAuditTextElementInfo *)self _getAuditIssuesForElement:iOSFrontmostAppForTargetPid];
  [(AXAuditTextElementInfo *)self caseEndedForSelectorName:v5 result:v3];
}

- (void)_auditCheckElementForMissingLabel:(id)label withSelectorName:(id)name imageNameAuditIssue:(id)issue caseResult:(id)result
{
  labelCopy = label;
  nameCopy = name;
  issueCopy = issue;
  resultCopy = result;
  if ([(AXAuditTextElementInfo *)self shouldRunAuditTestType:AXAuditTestTypeSufficientElementDescription])
  {
    label = [labelCopy label];
    if ([label length])
    {
      v15 = 0;
    }

    else
    {
      value = [labelCopy value];
      v15 = [value length] == 0;
    }

    if (issueCopy || v15)
    {
      traits = [labelCopy traits];
      if ((kAXBackButtonTrait & ~traits) != 0)
      {
        v28 = [(AXAuditCategoryEmbedded *)self elementDescriptionForElement:labelCopy];
        uiElement = [labelCopy uiElement];
        v19 = [uiElement objectWithAXAttribute:5019];

        [(AXAuditTextElementInfo *)self set_remainingElementsToAnalyze:[(AXAuditTextElementInfo *)self _remainingElementsToAnalyze]+ 1];
        _mlAuditTimer = [(AXAuditTextElementInfo *)self _mlAuditTimer];
        if (!_mlAuditTimer || (v21 = _mlAuditTimer, -[AXAuditTextElementInfo _mlAuditTimer](self, "_mlAuditTimer"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isValid], v22, v21, (v23 & 1) == 0))
        {
          v37[0] = @"selectorName";
          v37[1] = @"caseResult";
          v38[0] = nameCopy;
          v38[1] = resultCopy;
          v24 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
          v25 = [NSTimer scheduledTimerWithTimeInterval:self target:"_mlAuditTimedOut" selector:v24 userInfo:0 repeats:10.0];
          [(AXAuditTextElementInfo *)self set_mlAuditTimer:v25];
        }

        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1F18;
        v29[3] = &unk_10650;
        v29[4] = self;
        v30 = labelCopy;
        v31 = v19;
        v32 = v28;
        v36 = issueCopy != 0;
        v33 = issueCopy;
        v34 = nameCopy;
        v35 = resultCopy;
        v26 = v28;
        v27 = v19;
        [(AXAuditTextElementInfo *)self _generateDescriptionForElement:v30 withCompletion:v29];
      }
    }
  }
}

- (void)_elementFinishedAnalyzingForAudit:(id)audit caseResult:(id)result
{
  auditCopy = audit;
  resultCopy = result;
  if ([(AXAuditTextElementInfo *)self _remainingElementsToAnalyze]<= 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[AXAuditTextElementInfo _elementFinishedAnalyzingForAudit:caseResult:]";
      v11 = 2112;
      v12 = auditCopy;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: no more remaining elements! ending case for selector: %@", &v9, 0x16u);
    }

    _mlAuditTimer = [(AXAuditTextElementInfo *)self _mlAuditTimer];
    [_mlAuditTimer invalidate];

    [(AXAuditTextElementInfo *)self set_mlAuditTimer:0];
    [(AXAuditTextElementInfo *)self set_remainingElementsToAnalyze:0];
    [(AXAuditTextElementInfo *)self caseEndedForSelectorName:auditCopy result:resultCopy];
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
    selfCopy = self;
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
    iOSFrontmostAppForTargetPid = [(AXAuditCategoryEmbedded *)self iOSFrontmostAppForTargetPid];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_2850;
    v28[3] = &unk_106A0;
    selfCopy = self;
    v28[4] = self;
    v6 = objc_retainBlock(v28);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = iOSFrontmostAppForTargetPid;
    obj = [iOSFrontmostAppForTargetPid visibleElements];
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
          label = [v11 label];
          v13 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
          v14 = [label stringByTrimmingCharactersInSet:v13];

          value = [v11 value];
          v16 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
          v17 = [value stringByTrimmingCharactersInSet:v16];

          (v6[2])(v6, v11, v14, v17, [v11 traits], v9, @"UIAccessibilityTraitButton", @"trait.button");
        }

        v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    v4 = v20;
    v3 = v21;
    [(AXAuditTextElementInfo *)selfCopy caseEndedForSelectorName:v21 result:v20];
  }

  else
  {
    [(AXAuditTextElementInfo *)self caseEndedForSelectorName:v3 result:v4];
  }
}

- (void)_auditCheckHumanReadableDescription:(id)description
{
  descriptionCopy = description;
  label = [descriptionCopy label];
  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v6 = [label stringByTrimmingCharactersInSet:v5];

  uiElement = [descriptionCopy uiElement];
  v8 = [uiElement objectWithAXAttribute:5019];

  if ([v6 length] && (objc_msgSend(v6, "axAuditStringIsHumanReadable") & 1) == 0)
  {
    v9 = [(AXAuditCategoryEmbedded *)self elementDescriptionForElement:descriptionCopy];
    v10 = [AXAuditElement auditElementWithElement:descriptionCopy identifier:v8];
    [(AXAuditCategoryEmbedded *)self orientedFrameForElement:descriptionCopy];
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

- (id)_elementsFromElement:(id)element direction:(int64_t)direction withCount:(unint64_t)count
{
  elementCopy = element;
  uiElement = [elementCopy uiElement];
  v9 = uiElement;
  if (direction == 1)
  {
    [uiElement nextElementsWithCount:count];
  }

  else
  {
    [uiElement previousElementsWithCount:count];
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

- (id)_elementsForElement:(id)element attribute:(int64_t)attribute withParameter:(id)parameter
{
  parameterCopy = parameter;
  uiElement = [element uiElement];
  v9 = [uiElement uiElementsWithAttribute:attribute parameter:parameterCopy];

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
        if (element)
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

- (id)navigationElementForElement:(id)element inDirection:(int64_t)direction
{
  v4 = [(AXAuditTextElementInfo *)self _elementsFromElement:element direction:direction withCount:1];
  lastObject = [v4 lastObject];

  return lastObject;
}

- (id)swipeOrderForElement:(id)element inDirection:(int64_t)direction includeElement:(BOOL)includeElement
{
  includeElementCopy = includeElement;
  elementCopy = element;
  v9 = +[NSMutableArray array];
  v10 = v9;
  if (elementCopy && includeElementCopy)
  {
    [v9 addObject:elementCopy];
    v11 = elementCopy;
  }

  else if (!elementCopy)
  {
    goto LABEL_9;
  }

  v12 = [(AXAuditTextElementInfo *)self navigationElementForElement:elementCopy inDirection:direction];
  v13 = elementCopy;
  if (v12)
  {
    v14 = elementCopy;
    do
    {
      v13 = v12;
      [v10 addObject:v12];

      v12 = [(AXAuditTextElementInfo *)self navigationElementForElement:v13 inDirection:direction];
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

  _mlAuditTimer = [(AXAuditTextElementInfo *)self _mlAuditTimer];
  userInfo = [_mlAuditTimer userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"selectorName"];

  _mlAuditTimer2 = [(AXAuditTextElementInfo *)self _mlAuditTimer];
  userInfo2 = [_mlAuditTimer2 userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:@"caseResult"];

  _mlAuditTimer3 = [(AXAuditTextElementInfo *)self _mlAuditTimer];
  [_mlAuditTimer3 invalidate];

  [(AXAuditTextElementInfo *)self set_mlAuditTimer:0];
  [(AXAuditTextElementInfo *)self set_remainingElementsToAnalyze:0];
  if ([v5 length])
  {
    [(AXAuditTextElementInfo *)self _elementFinishedAnalyzingForAudit:v5 caseResult:v8];
  }
}

- (CGRect)_convertAccessibilityFrameToScreenCoordinates:(CGRect)coordinates forElement:(id)element
{
  valuePtr = coordinates;
  elementCopy = element;
  v5 = AXValueCreate(kAXValueTypeCGRect, &valuePtr);
  v6 = +[AXUIElement uiElementWithAXElement:](AXUIElement, "uiElementWithAXElement:", +[AXUIElement systemWideAXUIElement]);
  uiElement = [elementCopy uiElement];

  v8 = [uiElement numberWithAXAttribute:2021];
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

- (void)_generateDescriptionForElement:(id)element withCompletion:(id)completion
{
  elementCopy = element;
  completionCopy = completion;
  +[NSDate timeIntervalSinceReferenceDate];
  if (elementCopy && (v9 = v8, +[AXAuditScreenshotManager sharedManager](AXAuditScreenshotManager, "sharedManager"), v10 = objc_claimAutoreleasedReturnValue(), [v10 lastTimestamp], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    [elementCopy visibleFrame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v38 = [(AXAuditTextElementInfo *)self _applicationElementForElement:elementCopy];
    [(AXAuditTextElementInfo *)self _convertAccessibilityFrameToScreenCoordinates:v13 forElement:v15, v17, v19];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = +[AXAuditScreenshotManager sharedManager];
    lastTimestamp = [v28 lastTimestamp];
    v29 = [v28 screenshotImageForTimestamp:v21 inRect:{v23, v25, v27}];
    v30 = UIImagePNGRepresentation(v29);
    v31 = [[CIImage alloc] initWithData:v30];
    v32 = objc_alloc_init(AXMVisionAnalysisOptions);
    [v32 setDetectIconClass:1];
    _engine = [(AXAuditTextElementInfo *)self _engine];
    imageNode = [_engine imageNode];
    [imageNode setShouldProcessRemotely:0];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v43 = v30;
      v44 = 2112;
      v45 = elementCopy;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "AXAuditTextElementInfo: analyzing image data: %@, element: %@", buf, 0x16u);
    }

    _engine2 = [(AXAuditTextElementInfo *)self _engine];
    imageNode2 = [_engine2 imageNode];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_36F4;
    v39[3] = &unk_106F0;
    v41 = v9;
    v40 = completionCopy;
    [imageNode2 triggerWithImage:v31 options:v32 cacheKey:v30 resultHandler:v39];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)purgeCache
{
  _engine = [(AXAuditTextElementInfo *)self _engine];
  cache = [_engine cache];
  [cache purgeCache];
}

@end
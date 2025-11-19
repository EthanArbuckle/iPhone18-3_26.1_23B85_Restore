void sub_1120(id a1)
{
  v1 = NSStringFromSelector("auditCheckApplicationsAuditIssues");
  v7[0] = v1;
  v2 = NSStringFromSelector("auditCheckElementsForMissingLabelAndUsingImageName");
  v7[1] = v2;
  v3 = NSStringFromSelector("auditCheckElementForRedundentText");
  v7[2] = v3;
  v4 = NSStringFromSelector("auditCheckHumanReadable");
  v7[3] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:4];
  v6 = qword_14DA8;
  qword_14DA8 = v5;
}

void sub_1254(id a1)
{
  v4[0] = AXAuditTestTypeSufficientElementDescription;
  v4[1] = AXAuditTestTypeTrait;
  v4[2] = AXAuditTestTypeDynamicText;
  v4[3] = AXAuditTestTypeTextClipped;
  v1 = [NSArray arrayWithObjects:v4 count:4];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_14DB8;
  qword_14DB8 = v2;
}

void sub_1F18(uint64_t a1, void *a2)
{
  v18 = a2;
  if ([*(a1 + 32) _remainingElementsToAnalyze] >= 1)
  {
    [*(a1 + 32) set_remainingElementsToAnalyze:{objc_msgSend(*(a1 + 32), "_remainingElementsToAnalyze") - 1}];
    if ([v18 length])
    {
      v3 = [AXAuditElement auditElementWithElement:*(a1 + 40) identifier:*(a1 + 48)];
      v4 = *(a1 + 32);
      [v4 orientedFrameForElement:*(a1 + 40)];
      [v4 addIssueWithClassification:5000 auditElement:v3 elementRect:*(a1 + 56) elementDescription:v18 mlGeneratedDescription:?];
    }

    else
    {
      v5 = *(a1 + 32);
      if (*(a1 + 88) == 1)
      {
        v6 = [*(a1 + 64) issueClassification];
        v3 = [*(a1 + 64) auditElement];
        [*(a1 + 64) elementRect];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v15 = *(a1 + 56);
        v16 = [*(a1 + 64) longDescExtraInfo];
        v17 = [*(a1 + 64) elementText];
        [v5 addIssueWithClassification:v6 auditElement:v3 elementRect:v15 elementDescription:0 mlGeneratedDescription:v16 longDescExtraInfo:v17 elementText:{v8, v10, v12, v14}];
      }

      else
      {
        v3 = [AXAuditElement auditElementWithElement:*(a1 + 40) identifier:*(a1 + 48)];
        [*(a1 + 32) orientedFrameForElement:*(a1 + 40)];
        [v5 addIssueWithClassification:1000 auditElement:v3 elementRect:*(a1 + 56) elementDescription:?];
      }
    }

    [*(a1 + 32) _elementFinishedAnalyzingForAudit:*(a1 + 72) caseResult:*(a1 + 80)];
  }
}

void sub_2404(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 auditIssuesForOptions:*(a1 + 32)];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v11 count])
          {
            v12 = AuditIssueFromServerAppDict(v11);

            v8 = v12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  [*(a1 + 40) _auditCheckElementForMissingLabel:v3 withSelectorName:*(a1 + 48) imageNameAuditIssue:v8 caseResult:{*(a1 + 56), v13}];
}

void sub_2850(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = a2;
  if ((a6 & ~a5) == 0)
  {
    v32 = v14;
    v15 = a8;
    v16 = a4;
    v17 = a3;
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:v15 value:&stru_10BB8 table:@"Localizable"];

    v20 = [v19 length];
    v21 = [*(a1 + 32) elementDescriptionForElement:v32];
    v22 = [v32 uiElement];
    v23 = [v22 objectWithAXAttribute:5019];

    v24 = [v17 rangeOfString:v19 options:1];
    v25 = [v17 length];

    if (v24 == (v25 - v20))
    {
      v26 = *(a1 + 32);
      v27 = [AXAuditElement auditElementWithElement:v32 identifier:v23];
      [*(a1 + 32) orientedFrameForElement:v32];
      [v26 addIssueWithClassification:1004 auditElement:v27 elementRect:v21 elementDescription:?];
    }

    v28 = [v16 rangeOfString:v19 options:1];
    v29 = [v16 length];

    if (v28 == (v29 - v20))
    {
      v30 = *(a1 + 32);
      v31 = [AXAuditElement auditElementWithElement:v32 identifier:v23];
      [*(a1 + 32) orientedFrameForElement:v32];
      [v30 addIssueWithClassification:1005 auditElement:v31 elementRect:v21 elementDescription:?];
    }

    v14 = v32;
  }
}

void sub_36F4(uint64_t a1, void *a2)
{
  v3 = a2;
  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v6 = v5 - *(a1 + 40);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "AXAuditTextElementInfo: Image Node request took %.3fs to complete", &v8, 0xCu);
  }

  v7 = [v3 detectedFeatureDescriptionWithOptions:0];

  (*(*(a1 + 32) + 16))();
}

void sub_3950(id a1)
{
  v1 = NSStringFromSelector("auditHitUISize");
  v4 = v1;
  v2 = [NSArray arrayWithObjects:&v4 count:1];
  v3 = qword_14DC8;
  qword_14DC8 = v2;
}

void sub_3A28(id a1)
{
  v4 = AXAuditTestTypeHitRegion;
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_14DD8;
  qword_14DD8 = v2;
}

void sub_3BB0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isScannerElement])
  {
    [*(a1 + 32) orientedFrameForElement:v3];
    v8 = v7;
    if (v5 < 20.0 || v6 < 20.0)
    {
      v10 = v4;
      v11 = v5;
      v12 = v6;
      v13 = [v3 uiElement];
      v14 = [v13 objectWithAXAttribute:5019];

      v15 = [*(a1 + 32) elementDescriptionForElement:v3];
      v16 = [AXAuditElement auditElementWithElement:v3 identifier:v14];
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"currentsize.formatter" value:&stru_10BB8 table:@"Localizable"];
      v19 = [NSString stringWithFormat:v18, *&v11, *&v12];

      v20 = *(a1 + 32);
      v22 = v19;
      v21 = [NSArray arrayWithObjects:&v22 count:1];
      [v20 addIssueWithClassification:100 auditElement:v16 elementRect:v15 elementDescription:0 mlGeneratedDescription:v21 longDescExtraInfo:0 elementText:{v8, v10, v11, v12}];
    }
  }
}

id AuditIssueFromServerAppDict(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:kAXAuditIssueTypeKey];
  v3 = [v1 objectForKey:kAXAuditIssueElementDescKey];
  v4 = [v1 objectForKey:kAXAuditIssueElementKey];
  v5 = [v1 objectForKey:kAXAuditIssueAdditionalInfoKey];
  v6 = [v1 objectForKey:kAXAuditIssueIdentifierKey];
  v38 = [v1 objectForKey:kAXAuditIssueForegroundColorKey];
  v7 = [v1 objectForKey:kAXAuditIssueBackgroundColorKey];
  v40 = [v1 objectForKey:kAXAuditIssueFontSizeKey];
  v39 = [v1 objectForKey:kAXAuditIssueTextKey];
  cf = [v1 objectForKey:kAXAuditIssueElementRectKey];
  v8 = +[AXAuditIssue auditIssueForClassification:](AXAuditIssue, "auditIssueForClassification:", [v2 integerValue]);
  v37 = v7;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v6;
      v35 = v5;
      v9 = [AXElement elementWithUIElement:v4];
      v10 = [v4 objectWithAXAttribute:5019];
      v11 = [AXAuditElement auditElementWithElement:v9 identifier:v10];
      [v8 setAuditElement:v11];
      [v4 rectWithAXAttribute:2003];
      [v8 setElementRect:?];
    }

    else
    {
      v12 = CFGetTypeID(v4);
      if (v12 != AXUIElementGetTypeID())
      {
        goto LABEL_7;
      }

      v33 = v6;
      v35 = v5;
      v9 = [AXUIElement uiElementWithAXElement:v4];
      v10 = [v9 objectWithAXAttribute:5019];
      v11 = [AXElement elementWithUIElement:v9];
      v13 = [AXAuditElement auditElementWithElement:v11 identifier:v10];
      [v8 setAuditElement:v13];
      [v9 rectWithAXAttribute:2003];
      [v8 setElementRect:?];
    }

    v6 = v33;
    v5 = v35;
    v7 = v37;
  }

LABEL_7:
  [v8 setElementDescription:v3];
  v14 = v39;
  v15 = cf;
  if (v5)
  {
    v16 = [v5 objectForKey:kAXAuditIssueUnsupportedFontSizesKey];
    if (v16)
    {
      v34 = v6;
      v36 = v5;
      v30 = v4;
      v31 = v3;
      v32 = v2;
      v17 = +[NSMutableArray array];
      v18 = fontSizeSymbolMapping();
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v19 = v16;
      v20 = [v19 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v45;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v45 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [v18 objectForKey:*(*(&v44 + 1) + 8 * i)];
            [v17 addObject:v24];
          }

          v21 = [v19 countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v21);
      }

      [v8 setLongDescExtraInfo:v17];
      v3 = v31;
      v2 = v32;
      v4 = v30;
      v6 = v34;
      v5 = v36;
      v14 = v39;
      v15 = cf;
    }

    v7 = v37;
  }

  if (v15)
  {
    v25 = CFGetTypeID(v15);
    if (v25 == AXValueGetTypeID())
    {
      valuePtr = 0u;
      v43 = 0u;
      AXValueGetValue(cf, kAXValueTypeCGRect, &valuePtr);
      [v8 setElementRect:{valuePtr, v43}];
    }
  }

  v26 = v38;
  if ([v2 integerValue] == "undation.framework/CoreFoundation" || objc_msgSend(v2, "integerValue") == &stru_3D8.segname[7])
  {
    if ([v6 length])
    {
      v27 = [v8 elementDescription];
      if ([v27 length])
      {
        v28 = [v27 stringByAppendingFormat:@" %@", v6];
        [v8 setElementDescription:v28];

        v26 = v38;
      }

      else
      {
        [v8 setElementDescription:v6];
      }

      v14 = v39;
    }

    if ([v26 length])
    {
      [v8 setForegroundColor:v26];
    }

    if ([v7 length])
    {
      [v8 setBackgroundColor:v7];
    }

    if (v40)
    {
      [v40 doubleValue];
      [v8 setFontSize:?];
    }
  }

  if ([v14 length])
  {
    [v8 setElementText:v14];
  }

  return v8;
}

id fontSizeSymbolMapping()
{
  v3[0] = UIContentSizeCategoryExtraSmall;
  v3[1] = UIContentSizeCategorySmall;
  v4[0] = @"UIContentSizeCategoryExtraSmall";
  v4[1] = @"UIContentSizeCategorySmall";
  v3[2] = UIContentSizeCategoryMedium;
  v3[3] = UIContentSizeCategoryLarge;
  v4[2] = @"UIContentSizeCategoryMedium";
  v4[3] = @"UIContentSizeCategoryLarge";
  v3[4] = UIContentSizeCategoryExtraLarge;
  v3[5] = UIContentSizeCategoryExtraExtraLarge;
  v4[4] = @"UIContentSizeCategoryExtraLarge";
  v4[5] = @"UIContentSizeCategoryExtraExtraLarge";
  v3[6] = UIContentSizeCategoryExtraExtraExtraLarge;
  v3[7] = UIContentSizeCategoryAccessibilityMedium;
  v4[6] = @"UIContentSizeCategoryExtraExtraExtraLarge";
  v4[7] = @"UIContentSizeCategoryAccessibilityMedium";
  v3[8] = UIContentSizeCategoryAccessibilityLarge;
  v3[9] = UIContentSizeCategoryAccessibilityExtraLarge;
  v4[8] = @"UIContentSizeCategoryAccessibilityLarge";
  v4[9] = @"UIContentSizeCategoryAccessibilityExtraLarge";
  v3[10] = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v3[11] = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v4[10] = @"UIContentSizeCategoryAccessibilityExtraExtraLarge";
  v4[11] = @"UIContentSizeCategoryAccessibilityExtraExtraExtraLarge";
  v0 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:12];
  v1 = [NSMutableDictionary dictionaryWithDictionary:v0];

  return v1;
}

id fontSizesToIgnore()
{
  if (qword_14DE8 != -1)
  {
    sub_8270();
  }

  v1 = qword_14DF0;

  return v1;
}

void sub_451C(id a1)
{
  qword_14DF0 = [NSSet setWithObjects:@"UIContentSizeCategoryExtraSmall", @"UIContentSizeCategorySmall", @"UIContentSizeCategoryMedium", 0];

  _objc_release_x1();
}

void sub_45C8(id a1)
{
  v1 = NSStringFromSelector("auditTextContrast");
  v5[0] = v1;
  v2 = NSStringFromSelector("auditInaccessibleElement");
  v5[1] = v2;
  v3 = [NSArray arrayWithObjects:v5 count:2];
  v4 = qword_14DF8;
  qword_14DF8 = v3;
}

void sub_46BC(id a1)
{
  v4[0] = AXAuditTestTypeContrast;
  v4[1] = AXAuditTestTypeElementDetection;
  v1 = [NSArray arrayWithObjects:v4 count:2];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_14E08;
  qword_14E08 = v2;
}

uint64_t sub_5128(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_5140(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 visibleFrame];
  if (!CGRectIsEmpty(v5))
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_519C(id a1)
{
  v1 = dispatch_semaphore_create(0);
  v2 = [AXMDisplayManager alloc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_5298;
  v9[3] = &unk_10800;
  v10 = v1;
  v3 = v1;
  v4 = [v2 initWithCompletion:v9];
  v5 = qword_14E18;
  qword_14E18 = v4;

  v6 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v3, v6);
  v7 = [[AXMAXElementVisionEngine alloc] initWithIdentifier:@"axauditd-AXElementVision"];
  v8 = qword_14E20;
  qword_14E20 = v7;
}

void sub_52A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_8344();
  }

  v65 = v6;
  v66 = v5;
  v7 = [*(a1 + 32) _processVisionResult:v5 options:*(a1 + 40) coagulator:*(a1 + 48)];
  v8 = *(*(a1 + 88) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = +[AXAuditScreenshotManager sharedManager];
  [v10 screenshotScaleFactorForTimestamp:*(a1 + 56)];

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = *(*(*(a1 + 88) + 8) + 40);
  v11 = [obj countByEnumeratingWithState:&v78 objects:v94 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v79;
    v67 = *v79;
    do
    {
      v14 = 0;
      v68 = v12;
      do
      {
        if (*v79 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v78 + 1) + 8 * v14);
        v16 = *(a1 + 32);
        [v15 frame];
        [v16 _scaleRect:? scale:?];
        v18 = v17;
        v20 = v19;
        v22 = *(a1 + 112) + v21;
        v24 = v23 + *(a1 + 120);
        if (!CGRectIsEmpty(*(a1 + 144)))
        {
          v64 = 0x3FE0000000000000;
          if (AXMIsContainedBy())
          {
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_49;
            }

            v97.origin.x = v22;
            v97.origin.y = v24;
            v97.size.width = v18;
            v97.size.height = v20;
            v25 = NSStringFromRect(v97);
            *buf = 136315650;
            v85 = "[AXAuditCategoryVisual auditInaccessibleElement]_block_invoke";
            v86 = 2112;
            v87 = v15;
            v88 = 2112;
            v89 = v25;
            _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: skipping because ML Element %@ with frame %@ overlaps with status bar", buf, 0x20u);
LABEL_31:

            goto LABEL_49;
          }
        }

        [*(*(*(a1 + 96) + 8) + 40) visibleFrame];
        v64 = 0x3FECCCCCCCCCCCCDLL;
        if ((AXMIsContainedBy() & 1) == 0)
        {
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_49;
          }

          v100.origin.x = v22;
          v100.origin.y = v24;
          v100.size.width = v18;
          v100.size.height = v20;
          v25 = NSStringFromRect(v100);
          v47 = *(*(*(a1 + 96) + 8) + 40);
          [v47 visibleFrame];
          v48 = NSStringFromRect(v101);
          *buf = 136316162;
          v85 = "[AXAuditCategoryVisual auditInaccessibleElement]_block_invoke";
          v86 = 2112;
          v87 = v15;
          v88 = 2112;
          v89 = v25;
          v90 = 2112;
          v91 = v47;
          v12 = v68;
          v92 = 2112;
          v93 = v48;
          _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: skipping because ML Element %@ with frame %@ is outside the frontmost app %@ with visible frame %@", buf, 0x34u);

          goto LABEL_31;
        }

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v26 = *(a1 + 64);
        v27 = [v26 countByEnumeratingWithState:&v74 objects:v83 count:{16, 0x3FECCCCCCCCCCCCDLL}];
        if (v27)
        {
          v28 = v27;
          v29 = *v75;
          while (2)
          {
            for (i = 0; i != v28; i = i + 1)
            {
              if (*v75 != v29)
              {
                objc_enumerationMutation(v26);
              }

              [*(a1 + 32) orientedFrameForElement:*(*(&v74 + 1) + 8 * i)];
              v32 = v31;
              v34 = v33;
              v36 = v35;
              v38 = v37;
              AXMRectCenter();
              v95.x = v39;
              v95.y = v40;
              v98.origin.x = v32;
              v98.origin.y = v34;
              v98.size.width = v36;
              v98.size.height = v38;
              v41 = CGRectContainsPoint(v98, v95);
              AXMRectCenter();
              v96.x = v42;
              v96.y = v43;
              v99.origin.x = v22;
              v99.origin.y = v24;
              v99.size.width = v18;
              v99.size.height = v20;
              v44 = CGRectContainsPoint(v99, v96);
              if (v41 || v44)
              {

                goto LABEL_48;
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v74 objects:v83 count:16];
            if (v28)
            {
              continue;
            }

            break;
          }
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          v102.origin.x = v22;
          v102.origin.y = v24;
          v102.size.width = v18;
          v102.size.height = v20;
          v59 = NSStringFromCGRect(v102);
          [v15 confidence];
          *buf = 136315906;
          v85 = "[AXAuditCategoryVisual auditInaccessibleElement]_block_invoke";
          v86 = 2112;
          v87 = v15;
          v88 = 2112;
          v89 = v59;
          v90 = 2048;
          v91 = v60;
          _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: Reporting the following feature as inaccessible: %@/frame:%@/Confidence:%f", buf, 0x2Au);
        }

        if ([v15 uiClass] == &dword_8 + 3)
        {
          v45 = [v15 value];
          if (v45)
          {
            v46 = 1007;
          }

          else
          {
            v46 = 1006;
          }
        }

        else
        {
          v46 = 1006;
        }

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v49 = [v15 subfeatures];
        v50 = [v49 countByEnumeratingWithState:&v70 objects:v82 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v71;
          while (2)
          {
            for (j = 0; j != v51; j = j + 1)
            {
              if (*v71 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v54 = *(*(&v70 + 1) + 8 * j);
              if ([v54 uiClass] == &dword_8 + 3)
              {
                v55 = [v54 value];
                if (v55)
                {
                  v56 = v55;
                  [v54 confidence];
                  v58 = v57;

                  if (v58 > 0.5)
                  {
                    v46 = 1007;
                    goto LABEL_46;
                  }
                }
              }
            }

            v51 = [v49 countByEnumeratingWithState:&v70 objects:v82 count:16];
            if (v51)
            {
              continue;
            }

            break;
          }

LABEL_46:
          v13 = v67;
        }

        [*(a1 + 32) addIssueWithClassification:v46 auditElement:0 elementRect:0 elementDescription:0 mlGeneratedDescription:0 longDescExtraInfo:0 elementText:{v22, v24, v18, v20}];
LABEL_48:
        v12 = v68;
LABEL_49:
        v14 = v14 + 1;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v78 objects:v94 count:16];
    }

    while (v12);
  }

  v61 = [*(a1 + 32) _mlAuditTimer];
  v62 = [v61 isValid];

  if (v62)
  {
    [*(a1 + 32) caseEndedForSelectorName:*(a1 + 72) result:*(a1 + 80)];
  }

  v63 = [*(a1 + 32) _mlAuditTimer];
  [v63 invalidate];

  [*(a1 + 32) set_mlAuditTimer:0];
}

__n128 sub_59C8(uint64_t a1, uint64_t a2)
{
  *(a1 + 104) = *(a2 + 104);
  result = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = result;
  return result;
}

BOOL sub_7450(id a1, NSObject *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v4 = objc_opt_isKindOfClass();
  if (v2)
  {
    v5 = CFGetTypeID(v2);
    v6 = v5 == AXUIElementGetTypeID();
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 | v6;
  if (isKindOfClass)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  return v8 & 1;
}

AXAuditElement *__cdecl sub_74F0(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    v5 = v4 == AXUIElementGetTypeID();
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  v6 = objc_opt_isKindOfClass();
  v7 = v2;
  if (v5)
  {
LABEL_7:
    if (!v7)
    {
      goto LABEL_13;
    }

LABEL_8:
    Data = _AXUIElementCreateData();
    if (Data && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = objc_opt_new();
      [v7 setPlatformElementToken:Data];
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_13;
  }

  if (isKindOfClass)
  {
    v7 = [v2 axElement];
    goto LABEL_7;
  }

  if ((v6 & 1) == 0)
  {
    v7 = 0;
    goto LABEL_13;
  }

  v10 = [v2 uiElement];
  v7 = [v10 axElement];

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_13:

  return v7;
}

BOOL isAXValueWithType(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  v6 = v3 && (v5 = CFGetTypeID(v3), v5 == AXValueGetTypeID()) && AXValueGetType(v4) == a2;

  return v6;
}

AXAuditRange *__cdecl sub_7758(id a1, id a2)
{
  v2 = a2;
  if (isAXValueWithType(v2, 4) && (v5 = 0, v6 = 0, AXValueGetValue(v2, kAXValueTypeCFRange, &v5)))
  {
    v3 = [AXAuditRange createWithRange:v5, v6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_77E0(id a1, AXAuditRange *a2)
{
  v5[0] = [(AXAuditRange *)a2 range];
  v5[1] = v2;
  v3 = AXValueCreate(kAXValueTypeCFRange, v5);

  return v3;
}

AXAuditSize *__cdecl sub_78E8(id a1, id a2)
{
  v2 = a2;
  if (isAXValueWithType(v2, 2) && (v5 = 0.0, v6 = 0.0, AXValueGetValue(v2, kAXValueTypeCGSize, &v5)))
  {
    v3 = [AXAuditSize createWithSize:v5, v6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_7970(id a1, AXAuditSize *a2)
{
  [(AXAuditSize *)a2 size];
  v6[0] = v2;
  v6[1] = v3;
  v4 = AXValueCreate(kAXValueTypeCGSize, v6);

  return v4;
}

AXAuditPoint *__cdecl sub_7A78(id a1, id a2)
{
  v2 = a2;
  if (isAXValueWithType(v2, 1) && (v5 = 0.0, v6 = 0.0, AXValueGetValue(v2, kAXValueTypeCGPoint, &v5)))
  {
    v3 = [AXAuditPoint createWithPoint:v5, v6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_7B00(id a1, AXAuditPoint *a2)
{
  [(AXAuditPoint *)a2 point];
  v6[0] = v2;
  v6[1] = v3;
  v4 = AXValueCreate(kAXValueTypeCGPoint, v6);

  return v4;
}

AXAuditRect *__cdecl sub_7C08(id a1, id a2)
{
  v2 = a2;
  if (isAXValueWithType(v2, 3) && (v5 = 0u, v6 = 0u, AXValueGetValue(v2, kAXValueTypeCGRect, &v5)))
  {
    v3 = [AXAuditRect createWithRect:v5, v6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_7C98(id a1, AXAuditRect *a2)
{
  [(AXAuditRect *)a2 rect];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v6 = AXValueCreate(kAXValueTypeCGRect, v8);

  return v6;
}

void sub_82D4(void *a1, uint8_t *buf)
{
  *buf = 136315394;
  *(buf + 4) = "[AXAuditCategoryVisual auditInaccessibleElement]";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: using statusBarFrame %@", buf, 0x16u);
}

void sub_8460()
{
  CFAbsoluteTimeGetCurrent();
  sub_68EC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}
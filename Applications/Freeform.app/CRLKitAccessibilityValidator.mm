@interface CRLKitAccessibilityValidator
+ (void)performPlatformSpecificValidations;
+ (void)performValidations;
@end

@implementation CRLKitAccessibilityValidator

+ (void)performValidations
{
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLAVPlayerController", @"isPlaying", "B", v2, v3, v4, v5, v6, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLRulerUnits", @"convertPointsToRulerUnits:", "d", v7, v8, v9, v10, v11, "d");
  __CRLAccessibilityValidateClassMethodComplete(@"CRLRulerUnits", @"instance", "@", v12, v13, v14, v15, v16, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLSelectionPath", @"mostSpecificSelectionOfClass:", "@", v17, v18, v19, v20, v21, "#");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLSelectionPath", @"selectionPathWithAppendedSelection:", "@", v22, v23, v24, v25, v26, "@");
}

+ (void)performPlatformSpecificValidations
{
  __CRLAccessibilityValidateIvarType(@"CRLiOSEditableTextViewCell", "mTextField", "UITextField");
  __CRLAccessibilityValidateIsKindOfClass(@"CRLiOSInspectorTableViewCell", @"UITableViewCell");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"checked", "B", v2, v3, v4, v5, v6, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"setChecked:", "v", v7, v8, v9, v10, v11, "B");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"fullSizeControl", "@", v12, v13, v14, v15, v16, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"setFullSizeControl:", "v", v17, v18, v19, v20, v21, "@");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"fullSizeControlInsets", "{UIEdgeInsets=dddd}", v22, v23, v24, v25, v26, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"setFullSizeControlInsets:", "v", v27, v28, v29, v30, v31, "{UIEdgeInsets=dddd}");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"showsCheckmarkOnLeadingEdge", "B", v32, v33, v34, v35, v36, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"setShowsCheckmarkOnLeadingEdge:", "v", v37, v38, v39, v40, v41, "B");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"showsImageOnTrailingEdge", "B", v42, v43, v44, v45, v46, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"setShowsImageOnTrailingEdge:", "v", v47, v48, v49, v50, v51, "B");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"titleLabelColor", "@", v52, v53, v54, v55, v56, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"setTitleLabelColor:", "v", v57, v58, v59, v60, v61, "@");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"detailLabelColor", "@", v62, v63, v64, v65, v66, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"setDetailLabelColor:", "v", v67, v68, v69, v70, v71, "@");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"disclosureDetailLabelColor", "@", v72, v73, v74, v75, v76, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"setDisclosureDetailLabelColor:", "v", v77, v78, v79, v80, v81, "@");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"automaticallyResizesForContentSizeCategory", "B", v82, v83, v84, v85, v86, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"setAutomaticallyResizesForContentSizeCategory:", "v", v87, v88, v89, v90, v91, "B");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"currentContentSizeCategoryWrapsToNextLine", "B", v92, v93, v94, v95, v96, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"legacyFixedRowHeight", "d", v97, v98, v99, v100, v101, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSInspectorTableViewCell", @"setLegacyFixedRowHeight:", "v", v102, v103, v104, v105, v106, "d");
  __CRLAccessibilityValidateIsKindOfClass(@"CRLNavigationController", @"UINavigationController");
  __CRLAccessibilityValidateIsKindOfClass(@"CRLPopoverBasedViewController", @"UIViewController");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLPopoverBasedViewController", @"dismissAnimated:completion:", "v", v107, v108, v109, v110, v111, "B");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLPopoverBasedViewController", @"dismissAnimated:", "v", v112, v113, v114, v115, v116, "B");
  __CRLAccessibilityValidateIsKindOfClass(@"CRLiOSSegmentedControl", @"UIControl");
  __CRLAccessibilityValidateIvarType(@"CRLiOSSegmentedControl", "mButtonSegments", "NSMutableArray");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSSegmentedControl", @"setEnabled:forSegment:", "v", v117, v118, v119, v120, v121, "B");
  __CRLAccessibilityValidateIsKindOfClass(@"CRLStepper", @"UIControl");
  __CRLAccessibilityValidateIsKindOfClass(@"CRLScrollView", @"UIScrollView");

  __CRLAccessibilityValidateProtocolMethod(@"CRLScrollViewDelegate", @"scrollView:willAnimateToContentOffset:", 0, 1);
}

@end
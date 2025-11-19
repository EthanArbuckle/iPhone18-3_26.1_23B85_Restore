@interface CRLTextAccessibilityValidator
+ (void)performPlatformSpecificValidations;
+ (void)performValidations;
@end

@implementation CRLTextAccessibilityValidator

+ (void)performPlatformSpecificValidations
{
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPEditor", @"insertText:", "v", v2, v3, v4, v5, v6, "@");
  __CRLAccessibilityValidateClass(@"CRLWPColumn");
  __CRLAccessibilityValidateInstanceMethod(@"CRLWPRep", @"beginEditing");
  __CRLAccessibilityValidateInstanceMethod(@"CRLWPRep", @"canEditWithEditor:");
  __CRLAccessibilityValidateInstanceMethod(@"CRLWPRep", @"columnForCharIndex:");
  __CRLAccessibilityValidateInstanceMethod(@"Freeform.CRLWPEditor", @"canPerformEditorAction:withSender:");
  __CRLAccessibilityValidateInstanceMethod(@"Freeform.CRLWPEditor", @"copy:");
  __CRLAccessibilityValidateInstanceMethod(@"Freeform.CRLWPEditor", @"cut:");
  __CRLAccessibilityValidateInstanceMethod(@"Freeform.CRLWPEditor", @"deleteBackward:");
  __CRLAccessibilityValidateInstanceMethod(@"Freeform.CRLWPEditor", @"deleteForward:");
  __CRLAccessibilityValidateInstanceMethod(@"Freeform.CRLWPEditor", @"insertText:");
  __CRLAccessibilityValidateInstanceMethod(@"Freeform.CRLWPEditor", @"p_sendHandleTapNotification");
  __CRLAccessibilityValidateInstanceMethod(@"Freeform.CRLWPEditor", @"paste:");
  __CRLAccessibilityValidateInstanceMethod(@"Freeform.CRLWPEditor", @"replaceAction:");
  __CRLAccessibilityValidateInstanceMethod(@"Freeform.CRLWPEditor", @"selectAll:");

  __CRLAccessibilityValidateInstanceMethod(@"Freeform.CRLWPEditor", @"setIsBecomingActive:");
}

+ (void)performValidations
{
  __CRLAccessibilityValidateClassMethod(@"NSString", @"crlwp_stringForValue:withListNumberFormat:");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPAttachment", @"parentStorage", "@", v2, v3, v4, v5, v6, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPAttachment", @"setParentStorage:", "v", v7, v8, v9, v10, v11, "@");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPColumn", @"boundsOfLineFragmentAtIndex:", "{CGRect={CGPoint=dd}{CGSize=dd}}", v12, v13, v14, v15, v16, "Q");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPColumn", @"columnRectForRange:", "{CGRect={CGPoint=dd}{CGSize=dd}}", v17, v18, v19, v20, v21, "{_NSRange=QQ}");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPColumn", @"lineCount", "Q", v22, v23, v24, v25, v26, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPColumn", @"glyphRectForRange:includingLabel:", "{CGRect={CGPoint=dd}{CGSize=dd}}", v27, v28, v29, v30, v31, "{_NSRange=QQ}");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPColumn", @"lineIndexForCharIndex:eol:", "Q", v32, v33, v34, v35, v36, "Q");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPColumn", @"range", "{_NSRange=QQ}", v37, v38, v39, v40, v41, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPColumn", @"rangeOfLineFragmentAtIndex:", "{_NSRange=QQ}", v42, v43, v44, v45, v46, "Q");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPColumn", @"styleProvider", "@", v47, v48, v49, v50, v51, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPEditor", @"editingReps", "@", v52, v53, v54, v55, v56, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPEditor", @"endEditing", "v", v57, v58, v59, v60, v61, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPEditor", @"interactiveCanvasController", "@", v62, v63, v64, v65, v66, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPEditor", @"p_setTappedSelectionPath:", "v", v67, v68, v69, v70, v71, "@");
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPEditor", @"selection", "@", v72, v73, v74, v75, v76, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPEditor", @"replace:with:", "v", v77, v78, v79, v80, v81, "@");
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPEditor", @"setSelection:", "v", v82, v83, v84, v85, v86, "@");
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPEditor", @"storage", "@", v87, v88, v89, v90, v91, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPEditor", @"wpSelectionClass", "#", v92, v93, v94, v95, v96, 0);
  __CRLAccessibilityValidateIsKindOfClass(@"CRLWPHyperlinkField", @"CRLWPSmartField");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPHyperlinkField", @"displayText", "@", v97, v98, v99, v100, v101, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPHyperlinkField", @"url", "@", v102, v103, v104, v105, v106, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLInteractiveCanvasController", @"p_repsForStorage:", "@", v107, v108, v109, v110, v111, "@");
  __CRLAccessibilityValidateIsKindOfClass(@"Freeform.CRLWPLayout", @"CRLCanvasLayout");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPLineSpacing", @"amount", "d", v112, v113, v114, v115, v116, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPLineSpacing", @"mode", "q", v117, v118, v119, v120, v121, 0);
  __CRLAccessibilityValidateIsKindOfClass(@"Freeform.CRLWPListStyle", @"Freeform.CRLWPStyle");
  __CRLAccessibilityValidateIsKindOfClass(@"Freeform.CRLWPParagraphStyle", @"Freeform.CRLWPCharacterStyle");
  __CRLAccessibilityValidateIsKindOfClass(@"CRLWPRep", @"CRLCanvasRep");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPRep", @"caretRectForCharIndex:caretAffinity:", "{CGRect={CGPoint=dd}{CGSize=dd}}", v122, v123, v124, v125, v126, "Q");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPRep", @"columns", "@", v127, v128, v129, v130, v131, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPRep", @"columnForCharIndex:", "@", v132, v133, v134, v135, v136, "Q");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPRep", @"isBeingEdited", "B", v137, v138, v139, v140, v141, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPRep", @"isSelectionHighlightSuppressed", "B", v142, v143, v144, v145, v146, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPRep", @"pulseCaret", "v", v147, v148, v149, v150, v151, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPRep", @"range", "{_NSRange=QQ}", v152, v153, v154, v155, v156, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPRep", @"rectForSelection:includeRuby:includePaginatedAttachments:", "{CGRect={CGPoint=dd}{CGSize=dd}}", v157, v158, v159, v160, v161, "@");
  __CRLAccessibilityValidateIvarType(@"CRLWPRep", "_selectionHighlightLayer", "CAShapeLayer");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPRep", @"storage", "@", v162, v163, v164, v165, v166, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPSearchReference", @"searchReferencePoint", "{CGPoint=dd}", v167, v168, v169, v170, v171, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPSearchReference", @"selection", "@", v172, v173, v174, v175, v176, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPSearchReference", @"storage", "@", v177, v178, v179, v180, v181, 0);
  __CRLAccessibilityValidateIsKindOfClass(@"CRLWPSelection", @"CRLSubselection");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPSelection", @"initWithRange:", "@", v182, v183, v184, v185, v186, "{_NSRange=QQ}");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPSelection", @"initWithType:range:styleInsertionBehavior:caretAffinity:", "@", v187, v188, v189, v190, v191, "Q");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPSelection", @"isInsertionPoint", "B", v192, v193, v194, v195, v196, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPSelection", @"isRange", "B", v197, v198, v199, v200, v201, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPSelection", @"isValid", "B", v202, v203, v204, v205, v206, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPSelection", @"range", "{_NSRange=QQ}", v207, v208, v209, v210, v211, 0);
  __CRLAccessibilityValidateClassMethodComplete(@"CRLWPSelection", @"selectionWithRange:", "@", v212, v213, v214, v215, v216, "{_NSRange=QQ}");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPSelection", @"start", "Q", v217, v218, v219, v220, v221, 0);
  __CRLAccessibilityValidateIsKindOfClass(@"Freeform.CRLWPShapeItem", @"Freeform.CRLBoardItem");
  __CRLAccessibilityValidateIsKindOfClass(@"CRLWPShapeRep", @"CRLShapeRep");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPShapeRep", @"canBeginEditingChildRepOnDoubleTap:", "B", v222, v223, v224, v225, v226, "@");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPShapeRep", @"isEditingChildRep", "B", v227, v228, v229, v230, v231, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPShapeRep", @"updateChildrenFromLayout", "v", v232, v233, v234, v235, v236, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPShapeRep", @"willBeginEditingContainedInfo:", "v", v237, v238, v239, v240, v241, "@");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPSmartField", @"parentStorage", "@", v242, v243, v244, v245, v246, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPSmartField", @"range", "{_NSRange=QQ}", v247, v248, v249, v250, v251, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPStorage", @"attachmentOrFootnoteAtCharIndex:", "@", v252, v253, v254, v255, v256, "q");
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPStorage", @"changeCount", "Q", v257, v258, v259, v260, v261, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPStorage", @"enumerateSmartFieldsWithAttributeKind:inRange:usingBlock:", "v", v262, v263, v264, v265, v266, "Q");
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPStorage", @"hasSmartFields", "B", v267, v268, v269, v270, v271, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPStorage", @"length", "q", v272, v273, v274, v275, v276, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPStorage", @"listStyleAtCharIndex:effectiveRange:", "@", v277, v278, v279, v280, v281, "q");
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPStorage", @"paragraphCount", "q", v282, v283, v284, v285, v286, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPStorage", @"paragraphIndexAtCharIndex:", "q", v287, v288, v289, v290, v291, "q");
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPStorage", @"paragraphStyleAtCharIndex:effectiveRange:", "@", v292, v293, v294, v295, v296, "q");
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPStorage", @"range", "{_NSRange=QQ}", v297, v298, v299, v300, v301, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPStorage", @"smartFieldAtCharIndex:attributeKind:effectiveRange:", "@", v302, v303, v304, v305, v306, "q");
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPStorage", @"string", "@", v307, v308, v309, v310, v311, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPStorage", @"stringEquivalentFromRange:", "@", v312, v313, v314, v315, v316, "{_NSRange=QQ}");
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPStorage", @"substringWithRange:", "@", v317, v318, v319, v320, v321, "{_NSRange=QQ}");
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPStorage", @"textRangeForParagraphAtIndex:", "{_NSRange=QQ}", v322, v323, v324, v325, v326, "q");
  __CRLAccessibilityValidateInstanceMethodComplete(@"Freeform.CRLWPStorage", @"wpKind", "C", v327, v328, v329, v330, v331, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPTabs", @"count", "Q", v332, v333, v334, v335, v336, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPTabs", @"indexForTabWithPosition:alignment:leader:", "Q", v337, v338, v339, v340, v341, "d");
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLWPTabs", @"removeTabAtIndex:", "v", v342, v343, v344, v345, v346, "Q");
}

@end
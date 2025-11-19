void sub_101318214()
{
  sub_1000C5968();
  v2 = "[CRLConnectionLineMagnet initWithType:normalizedPosition:]";
  sub_1000C88F0();
  v3 = 26;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Found non-finite normalized magnet position. Falling back to (0.5, 0.5).", v1, 0x22u);
}

void sub_1013182E4()
{
  sub_1000C5968();
  v2 = "[CRLConnectionLineMagnet setMagnetNormalizedPosition:]";
  sub_1000C88F0();
  v3 = 37;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Found non-finite normalized magnet position. Falling back to (0.5, 0.5).", v1, 0x22u);
}

void sub_1013183B4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101318470(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_1000C88E0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_101318548()
{
  sub_1000C5968();
  v2 = "[CRLItemProviderItemWriter createItemProviderWithCopyOfBoardItems:fromInteractiveCanvasController:outCopiedBoardItems:]";
  sub_1000C88F0();
  v3 = 56;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Somehow didn't end up with the same number of board items", v1, 0x22u);
}

void sub_101318604(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_1000C88E0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1013186DC(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v9 = [0 domain];
  [0 code];
  sub_1000C88E0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_1013187F0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013188C0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013189A4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101318A74()
{
  sub_1000C5968();
  v2 = "[CRLItemProviderItemWriter createItemProviderWithCopyOfBoardItems:fromInteractiveCanvasController:outCopiedBoardItems:]_block_invoke_2";
  sub_1000C88F0();
  v3 = 212;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d requestedViewScale should never be negative.", v1, 0x22u);
}

void sub_101318B44()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101318C3C(void *a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 67109378;
  *(buf + 1) = a3;
  *(buf + 4) = 2114;
  *(buf + 10) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
}

void sub_101318D08()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Angle out of range", v2, v3, v4, v5, v6);
}

void sub_101318DE0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Angle out of range", v2, v3, v4, v5, v6);
}

void sub_101318EA4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLSizeExpandedToMatchAspectRatio() actually shrank the size", v2, v3, v4, v5, v6);
}

void sub_101318F68()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d cannot give scale = 0 for CRLRoundedRectForScale!", v2, v3, v4, v5, v6);
}

void sub_10131902C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d cannot give scale = 0 for CRLRoundedRectForScale!", v2, v3, v4, v5, v6);
}

void sub_101319104(uint8_t *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = [sub_100125554() registeredTypeIdentifiers];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Content Identifiers: %@", a1, 0xCu);
}

void sub_1013191AC(void *a1, void *a2)
{
  v5 = a1;
  v6 = sub_100125560();
  v7 = NSStringFromClass(v6);
  [a2 domain];
  objc_claimAutoreleasedReturnValue();
  [sub_100125554() code];
  sub_1000C8904();
  sub_100125538();
  sub_1000C88E0();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x2Au);
}

void sub_10131927C(void *a1)
{
  v1 = a1;
  v2 = [UTTypeRAWImage identifier];
  sub_1000C8938();
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Unable to load shared content of type %{public}@. Provided item is nil", v3, 0xCu);
}

void sub_101319474(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = sub_100125560();
  v6 = NSStringFromClass(v5);
  v12 = [*(*(*a1 + 8) + 40) domain];
  [*(*(*a1 + 8) + 40) code];
  sub_1000C88E0();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x2Au);
}

void sub_101319658(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 identifier];
  v7 = [a3 localizedDescription];
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unable to load shared content of type %{public}@ with error %{public}@", &v8, 0x16u);
}

void sub_101319754(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = sub_100125560();
  NSStringFromClass(v7);
  objc_claimAutoreleasedReturnValue();
  v8 = [sub_100125554() domain];
  [a3 code];
  sub_1000C8904();
  sub_1000C88E0();
  _os_log_error_impl(v9, v10, v11, v12, v13, 0x34u);
}

void sub_101319860()
{
  sub_1000C5968();
  sub_10010A508();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10131991C(void *a1)
{
  v2 = a1;
  v3 = [sub_1000C59B8() description];
  sub_100128E0C();
  sub_1000CDD68();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void sub_101319B24()
{
  sub_1000C5968();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101319C20()
{
  sub_1000C5968();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101319D08()
{
  sub_1000C5968();
  sub_10010A508();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101319E8C(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLFreehandDrawingToolAbstractPathInsertion p_preexistingFreehandDrawingLayoutForInsertingShapeWithFrameInRoot:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolAbstractPathInsertion.m";
  v7 = 1024;
  v8 = 212;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should be able to get z-order index path for freehand drawing. Bailing early to avoid accidental overlaps.", v2, 0x22u);
}

void sub_101319FB0(int a1, NSObject *a2)
{
  v2[0] = 67110402;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLFreehandDrawingToolAbstractPathInsertion p_updateOrCreateParentDrawingToBestMatch]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolAbstractPathInsertion.m";
  v7 = 1024;
  v8 = 424;
  v9 = 2082;
  v10 = "closestDrawingLayout";
  v11 = 2082;
  v12 = "initialDrawingLayout";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected inequality between %{public}s and %{public}s", v2, 0x36u);
}

void sub_10131A0CC(void *a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a1;
  v22.origin.x = a3;
  v22.origin.y = a4;
  v22.size.width = a5;
  v22.size.height = a6;
  v12 = NSStringFromCGRect(v22);
  v13[0] = 67110146;
  v13[1] = a2;
  v14 = 2082;
  v15 = "[CRLMultiselectResizeLayout computeLayoutGeometry]";
  v16 = 2082;
  v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMultiselectResizeLayout.m";
  v18 = 1024;
  v19 = 97;
  v20 = 2114;
  v21 = v12;
  _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to determine proper layout geometry! Got %{public}@", v13, 0x2Cu);
}

void sub_10131A224(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLMultiselectResizeLayout reliedOnLayouts]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMultiselectResizeLayout.m";
  v7 = 1024;
  v8 = 105;
  v9 = 2082;
  v10 = "self.layoutController";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10131A31C(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLWPShapeRep initWithLayout:canvas:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeRep.m";
  v7 = 1024;
  v8 = 56;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad layout class", v2, 0x22u);
}

void sub_10131A418(int a1, NSObject *a2)
{
  v2[0] = 67110402;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLWPShapeRep updateChildrenFromLayout]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeRep.m";
  v7 = 1024;
  v8 = 180;
  v9 = 2082;
  v10 = "self.containedRep.layout";
  v11 = 2082;
  v12 = "self.layout.textLayout";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected equality between %{public}s and %{public}s", v2, 0x36u);
}

void sub_10131A534(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a2 domain];
  v7 = 138544130;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  v11 = 2048;
  v12 = [a2 code];
  v13 = 2112;
  v14 = a2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error creating NSString from data. Error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", &v7, 0x2Au);
}

void sub_10131A63C(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLTextBoxingBoardItemProvider newBoardItemWithFactory:bakedSize:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLTextBoxingBoardItemProvider.m";
  v7 = 1024;
  v8 = 95;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Either the plain text string or the rich text string should be non-nil", v2, 0x22u);
}

void sub_10131A724(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLWPLongPressGestureRecognizer touchesMoved:withEvent:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPLongPressGestureRecognizer.m";
  v7 = 1024;
  v8 = 56;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Time travel should have had a non-zero value here", v2, 0x22u);
}

void sub_10131A80C()
{
  sub_1000C5968();
  v3 = "+[CRLShapeLibraryShape p_stringForKey:inBaseStringsTableWithName:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibraryShape.m";
  v6 = 1024;
  v7 = 93;
  v8 = v0;
  v9 = "englishString";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10131A8F8()
{
  sub_1000C5968();
  v3 = "[CRLShapeLibraryShape positionInCategoryWithID:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibraryShape.m";
  v6 = 1024;
  v7 = 150;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Must pass a categoryID when fetching a shape library shape's position.", v2, 0x22u);
}

void sub_10131AA10(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "[CRLSandboxedURL initWithURL:]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLSandboxedURL.m";
  v8 = 1024;
  v9 = 39;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Sandboxed URL should not be initialized with a non-file URL. URL=%@", v3, 0x2Cu);
}

void sub_10131AB08()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Sanboxing access didn't transfer as expected to sandboxed URL copy.", v2, v3, v4, v5, v6);
}

void sub_10131ABCC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Copy should never be nil.", v2, v3, v4, v5, v6);
}

void sub_10131AC90()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Sanboxing access didn't transfer as expected to sandboxed URL copy.", v2, v3, v4, v5, v6);
}

void sub_10131AD54()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Copy should never be nil.", v2, v3, v4, v5, v6);
}

void sub_10131AE18()
{
  sub_1000C5968();
  v3 = "[CRLImageCompatibilityChecker initWithImageData:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageCompatibilityChecker.m";
  v6 = 1024;
  v7 = 40;
  v8 = v0;
  v9 = "imageData != nil";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, 0x2Cu);
}

void sub_10131AF04()
{
  sub_1000C5968();
  v3 = "[CRLImageCompatibilityChecker checkCompatibilityUpToLevel:completionHandler:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageCompatibilityChecker.m";
  v6 = 1024;
  v7 = 49;
  v8 = v0;
  v9 = "maxDesiredCompatibilityLevel > CRLMediaCompatibilityLevelNone";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, 0x2Cu);
}

void sub_10131AFF0(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLStyledEditor copyStyle:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLStyledEditor.m";
  v7 = 1024;
  v8 = 160;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should only copy style with a single object selected", v2, 0x22u);
}

void sub_10131B1C8()
{
  sub_1000C5968();
  v3 = "[CRLCanvasImager initWithBoard:renderForWideGamut:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m";
  v6 = 1024;
  v7 = 83;
  v8 = v0;
  v9 = "board";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10131B2B4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not reuse an imager unless it has been explicitly marked as safe to reuse", v2, v3, v4, v5, v6);
}

void sub_10131B378()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot call viewScale if scaledImageSize has been set.", v2, v3, v4, v5, v6);
}

void sub_10131B43C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d viewScale must be > 0.0", v2, v3, v4, v5, v6);
}

void sub_10131B500()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot call contentsScale if scaledImageSize has been set.", v2, v3, v4, v5, v6);
}

void sub_10131B5C4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d contentsScale must be > 0.0", v2, v3, v4, v5, v6);
}

void sub_10131B688()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot call scaledImageSize if viewScale or contentsScale has been set.", v2, v3, v4, v5, v6);
}

void sub_10131B74C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d can't make an image with 0 width or height", v2, v3, v4, v5, v6);
}

void sub_10131B824()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d given a non-integral scaled image size", v2, v3, v4, v5, v6);
}

void sub_10131B8E8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d given a non-integral maximum image size", v2, v3, v4, v5, v6);
}

void sub_10131B9AC()
{
  sub_1000C5968();
  v3 = "[CRLCanvasImager newImage]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m";
  v6 = 1024;
  v7 = 225;
  v8 = v0;
  v9 = "board";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10131BA98()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d wrong canvas", v2, v3, v4, v5, v6);
}

void sub_10131BB5C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d wrong canvas", v2, v3, v4, v5, v6);
}

void sub_10131BC20()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d wrong canvas", v2, v3, v4, v5, v6);
}

void sub_10131BCE4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Using a specific scaled image size and max image size at the same time is unsupported.", v2, v3, v4, v5, v6);
}

void sub_10131BDBC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d both ratios in imager are zero!", v2, v3, v4, v5, v6);
}

void sub_10131BEBC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d shouldn't be reusing context", v2, v3, v4, v5, v6);
}

void sub_10131BF80(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[NSException(CRLAdditions) crl_raiseWithError:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSException_CRLAdditions.m";
  v7 = 1024;
  v8 = 14;
  v9 = 2082;
  v10 = "error != nil";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, 0x2Cu);
}

void sub_10131C078(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "[NSException(CRLAdditions) crl_error]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSException_CRLAdditions.m";
  v8 = 1024;
  v9 = 28;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected NSException value for CRLErrorExceptionUserInfoKey: %@", v3, 0x2Cu);
}

void sub_10131C170()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10131C25C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10131C334()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10131C420()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10131C4EC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10131C5C4()
{
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
}

void sub_10131C6BC()
{
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
}

void sub_10131C7C8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10131C894(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLiOSPencilDownGestureRecognizer touchesBegan:withEvent:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSPencilDownGestureRecognizer.m";
  v7 = 1024;
  v8 = 25;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should only see pencil input to this gesture.", v2, 0x22u);
}

void sub_10131C9E0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a3 domain];
  [a3 code];
  sub_10013F708();
  sub_10013F740(&_mh_execute_header, v8, v9, "Unable to decode data %p: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v10, v11, v12, v13, v14);
}

void sub_10131CAD0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Data causing exception: %@", &v2, 0xCu);
}

void sub_10131CB70(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a3 domain];
  [a3 code];
  sub_10013F708();
  sub_10013F740(&_mh_execute_header, v8, v9, "Error reading data from path %@, errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v10, v11, v12, v13, v14);
}

void sub_10131CC60(void *a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a1;
  v21.origin.x = a3;
  v21.origin.y = a4;
  v21.size.width = a5;
  v21.size.height = a6;
  v12 = NSStringFromCGRect(v21);
  v14[0] = 67110146;
  v14[1] = a2;
  v15 = 2082;
  sub_1000C59AC();
  v16 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTransformLayout.m";
  v17 = 1024;
  v18 = 96;
  v19 = 2114;
  v20 = v13;
  _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to determine proper layout geometry! Got %{public}@", v14, 0x2Cu);
}

void sub_10131CDB4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10131CE9C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10131CF84()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10131D058()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, v3, v4, v5, v6);
}

void sub_10131D140(uint64_t a1, int a2)
{
  v4[0] = 67110146;
  v4[1] = a2;
  v5 = 2082;
  v6 = "[CRLImageCompatibilityConverter initWithImageData:desiredCompatibilityLevel:assetOwner:]";
  v7 = 2082;
  sub_1000C599C();
  v8 = 63;
  v9 = 2048;
  v10 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Image converter created without need for conversion (level %zd)", v4, 0x2Cu);
}

void sub_10131D234()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10131D308()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10131D3DC(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a2 domain];
  [a2 code];
  sub_100142488();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100142454();
  sub_10014249C(&_mh_execute_header, v7, v8, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Error saving image data! errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v9, v10, v11, v12, v13);
}

void sub_10131D500(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a2 domain];
  [a2 code];
  sub_100142488();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100142454();
  sub_10014249C(&_mh_execute_header, v7, v8, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Error saving image data! errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v9, v10, v11, v12, v13);
}

void sub_10131D624(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a2 domain];
  [a2 code];
  sub_100142488();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100142454();
  sub_10014249C(&_mh_execute_header, v7, v8, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Error saving image data! errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v9, v10, v11, v12, v13);
}

void sub_10131D748()
{
  sub_1000C5968();
  v2 = "[CRLTemporaryDirectory path]";
  sub_1000C88F0();
  v3 = 71;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Directory has already been removed", v1, 0x22u);
}

void sub_10131D82C(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to remove CRLTemporaryDirectory. Error: %@, path: %@", &v4, 0x16u);
}

void sub_10131D8CC()
{
  sub_1000C5968();
  v2 = "[CRLTemporaryDirectory removeDirectory]";
  sub_1000C88F0();
  v3 = 92;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Directory has already been removed", v1, 0x22u);
}

void sub_10131D9B0()
{
  sub_1000C5968();
  v3 = "[CRLTemporaryDirectory _createDirectoryWithSignature:subdirectory:error:]_block_invoke";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTemporaryDirectory.m";
  v6 = 1024;
  v7 = 114;
  v8 = v0;
  v9 = "secretSubdirectoryNameBase";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10131DA9C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected editor controller!", v2, v3, v4, v5, v6);
}

void sub_10131DB60()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Callers to -[CRLCanvasEditor maskWithShape:] must have a -[tag] method to specify the shape type to use for the image mask.", v2, v3, v4, v5, v6);
}

void sub_10131DC24()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Canvas editor expects canvas selection!", v2, v3, v4, v5, v6);
}

void sub_10131DCE8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Canvas editor expects canvas selection!", v2, v3, v4, v5, v6);
}

void sub_10131DDAC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Expected a command group to be open.", v2, v3, v4, v5, v6);
}

void sub_10131DE70()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not be given file promises in normal paste logic! App being copied from is misbehaving.", v2, v3, v4, v5, v6);
}

void sub_10131DF98()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d couldn't find selected info in all drawables!", v2, v3, v4, v5, v6);
}

void sub_10131E05C()
{
  sub_1000C5968();
  v2 = "[CRLFreehandDrawingsAttachment teardown]";
  sub_1000C88F0();
  v3 = 56;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d attempting to call teardown on an instance of CRLFreehandDrawingsAttachment that has already been torn down.", v1, 0x22u);
}

void sub_10131E12C()
{
  sub_1000C5968();
  v2 = "[CRLFreehandDrawingsAttachment dealloc]";
  sub_1000C88F0();
  v3 = 61;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d teardown not called for CRLFreehandDrawingsAttachment.", v1, 0x22u);
}

void sub_10131E1FC()
{
  sub_1000C5968();
  v2 = "[CRLCanvasLayer setController:]";
  sub_1000C88F0();
  v3 = 198;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d shouldn't try to set canvasLayer's controller more than once", v1, 0x22u);
}

void sub_10131E2CC()
{
  sub_1000C5968();
  v2 = "[CRLCanvasLayer endAnimatingViewScaleExternallyWithToken:]";
  sub_1000C88F0();
  v3 = 778;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Trying to end animating view scale without a matching call to begin.", v1, 0x22u);
}

void sub_10131E39C()
{
  sub_1000C5968();
  v3 = "[CRLCanvasLayer endAnimatingViewScaleExternallyWithToken:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayer.m";
  v6 = 1024;
  v7 = 770;
  v8 = v0;
  v9 = "token";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10131E4D8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10131E5B4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10131E6A4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10131E780()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10131E84C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10131E92C()
{
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
}

void sub_10131EA38()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

uint64_t sub_10131EB04()
{
  sub_1000C5968();
  v3 = "[NSArray(CRLAdditions) crl_arrayByRemovingFirstObject]";
  sub_1000C88F0();
  v4 = 239;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't remove the first object of an empty array!", v2, 0x22u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101840728);
  return 0;
}

void sub_10131EBCC()
{
  +[CRLAssertionHandler packedBacktraceString];
  sub_10015B6E4();
  sub_100100F84(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v2, v3, v4, v5, v6);
}

uint64_t sub_10131ECB4()
{
  sub_1000C5968();
  v3 = "[NSArray(CRLAdditions) crl_onlyObject]";
  sub_1000C88F0();
  v4 = 400;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d As this method returns the only object in the array, it only makes sense if the array has at most one object.", v2, 0x22u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101840820);
  return 0;
}

void sub_10131EDA4(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = a3;
  *(buf + 6) = 2082;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error opening file at path %s: %{public}s", buf, 0x16u);
}

void sub_10131EE10(void *a1, int a2)
{
  v3 = a1;
  strerror(a2);
  sub_10015D8A8(&_mh_execute_header, v4, v5, "Error cleaning up dispatch channel: %{public}s", v6, v7, v8, v9, 2u);
}

void sub_10131EEC4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Channel is closed", v2, v3, v4, v5, v6);
}

void sub_10131EF88()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Channel is closed", v2, v3, v4, v5, v6);
}

void sub_10131F04C()
{
  sub_1000C5968();
  v3 = "[CRLFileIOChannel close]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLFileIOChannel.m";
  v6 = 1024;
  v7 = 260;
  v8 = v0;
  v9 = "_channel";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10131F138(void *a1, void *a2)
{
  v4 = a1;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = [sub_1000C59B8() domain];
  v7 = 138544130;
  v8 = v2;
  v9 = 2114;
  v10 = v6;
  v11 = 2048;
  v12 = [a2 code];
  v13 = 2112;
  v14 = a2;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "F_FULLFSYNC failed, errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", &v7, 0x2Au);
}

void sub_10131F23C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Channel file descriptor is closed", v2, v3, v4, v5, v6);
}

void sub_10131F300()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Channel is closed", v2, v3, v4, v5, v6);
}

void sub_10131F3C4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Channel is closed", v2, v3, v4, v5, v6);
}

void sub_10131F488()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Channel is closed", v2, v3, v4, v5, v6);
}

void sub_10131F54C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Channel file descriptor is closed", v2, v3, v4, v5, v6);
}

void sub_10131F610()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Channel is closed", v2, v3, v4, v5, v6);
}

void sub_10131F6D4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Channel is closed", v2, v3, v4, v5, v6);
}

void sub_10131F890()
{
  sub_1000C5968();
  v2 = "[CRLWPSmartField isEquivalentToObject:]";
  sub_1000C88F0();
  v3 = 111;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Expect to have a UUIDString.", v1, 0x22u);
}

void sub_10131F974()
{
  sub_1000C5968();
  v2 = "[CRLWPSmartField isEquivalentToObject:]";
  sub_1000C88F0();
  v3 = 112;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Expect to have a UUIDString for other object.", v1, 0x22u);
}

void sub_10131FA44()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10131FB64()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10131FC48()
{
  sub_1000C5968();
  v3 = "[CRLWPDragAndDropHelper handleDragOperation:withDragInfo:atUnscaledPoint:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPDragAndDropHelper.m";
  v6 = 1024;
  v7 = 235;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid drag selection", v2, 0x22u);
}

void sub_10131FD38()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10131FE1C(uint64_t a1, int a2)
{
  v4[0] = 67110146;
  v4[1] = a2;
  v5 = 2082;
  sub_1000C59AC();
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPDragAndDropHelper.m";
  v7 = 1024;
  v8 = 298;
  v9 = 2112;
  v10 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d source selection %@ is not a range", v4, 0x2Cu);
}

void sub_10131FF10()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10131FFE0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013200B8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101320190()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10132025C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101320334()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101320414()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101320500()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013205EC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013206C4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101320790()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10132085C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101320934()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101320A20(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLGroupRep recursivelyDrawInContext:keepingChildrenPassingTest:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupRep.m";
  v7 = 1024;
  v8 = 93;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid group transform; bailing out on group", v2, 0x22u);
}

void sub_101320B1C(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[UIResponder(CRLAdditions) crl_textInputSource]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/UIResponder_CRLAdditions.m";
  v7 = 1024;
  v8 = 19;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Responder does not respond to _textInputSource.", v2, 0x22u);
}

void sub_101320C04()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101320CD4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101320DB8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101320E9C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101320F94()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10132106C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1001715C4();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid image fill technique: %zu Defaulting to natural size.");
}

void sub_101321134()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1001715C4();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid image fill technique: %zu Defaulting to natural size.");
}

void sub_1013211FC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013212DC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013213C8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013214A0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10132156C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10132164C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101321718()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013217F0(void *a1)
{
  v2 = a1;
  v3 = [sub_1000C59B8() imageData];
  sub_1000C59AC();
  sub_1001715C4();
  sub_1000CDD68();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void sub_10132190C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013219F8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101321AD0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101321BBC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101321C88()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101321D60()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101321E40()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101321F20()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101321FEC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1001715C4();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid image fill technique: %zu Defaulting to natural size.");
}

void sub_1013220B4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101322180()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't set shouldTouchesOutsideCancel after loading the view", v2, v3, v4, v5, v6);
}

void sub_101322244()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't add a cancel button after loading the view", v2, v3, v4, v5, v6);
}

void sub_10132231C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't have more than one cancel button", v2, v3, v4, v5, v6);
}

void sub_1013223E0(void *a1, char a2, NSObject *a3)
{
  if (a1)
  {
    v8 = objc_opt_class();
    v7 = NSStringFromClass(v8);
  }

  else
  {
    v7 = @"Nil";
  }

  v9 = a2 & 1;
  v10 = [a1 presentedViewController];
  if (v10)
  {
    v3 = [a1 presentedViewController];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
  }

  else
  {
    v11 = @"Nil";
  }

  v13 = [a1 presentedViewController];
  v14 = 138544386;
  v15 = v7;
  v16 = 2050;
  v17 = a1;
  v18 = 1024;
  v19 = v9;
  v20 = 2114;
  v21 = v11;
  v22 = 2050;
  v23 = v13;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Dismiss view controller: <%{public}@: %{public}p>, animated=%d, presentedViewController=<%{public}@: %{public}p>", &v14, 0x30u);

  if (v10)
  {
  }

  if (a1)
  {
  }
}

void sub_101322570(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [sub_1000C59B8() packedBacktraceString];
  v6 = 134218242;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Dismiss view controller %p backtrace: >>%{public}@<<", &v6, 0x16u);
}

void sub_101322658()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101322798(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_10043BF9C(a2);
  v6 = 138412290;
  v7 = v4;
  sub_100175730(&_mh_execute_header, v3, v5, "set state to %@", &v6);
}

void sub_101322860()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101322940()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101322A94(uint64_t a1, int a2)
{
  v4[0] = 67110146;
  v4[1] = a2;
  v5 = 2082;
  v6 = "[CRLiOSRepNudgeGestureRecognizer touchesBegan:withEvent:]";
  v7 = 2082;
  sub_1000C599C();
  v8 = 124;
  v9 = 2048;
  v10 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d non-zero (%lu) swipe touches when there should be zero", v4, 0x2Cu);
}

void sub_101322B9C(uint8_t *a1, uint64_t a2, uint64_t *a3, NSObject *a4)
{
  v4 = *(a2 + 80) + 1;
  *a1 = 134217984;
  *a3 = v4;
  sub_100175730(&_mh_execute_header, a4, a3, "adding another swipe touch (%tu)", a1);
}

void sub_101322C18(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "swipe touch is hitting the rep to be nudged. failing.", buf, 2u);
}

void sub_101322C80(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "setting first swipe touch", buf, 2u);
}

void sub_101322D98(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = *(a1 + 80);
  v4 = 134217984;
  v5 = v3;
  sub_100175730(&_mh_execute_header, a2, a3, "touches ended with num swipe touches: %lu", &v4);
}

void sub_101322E3C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101322F1C(void *a1, CGFloat a2, CGFloat a3)
{
  v5 = a1;
  v10.x = a2;
  v10.y = a3;
  v6 = NSStringFromCGPoint(v10);
  v8 = 138412290;
  v9 = v6;
  sub_100175730(&_mh_execute_header, v5, v7, "nudging by %@", &v8);
}

void sub_101323008(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_10043BF9C([a2 state]);
  v6 = 138412290;
  v7 = v4;
  sub_100175730(&_mh_execute_header, v3, v5, "operation ended with nudge in state %@", &v6);
}

void sub_1013230C0(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[CRLiOSScribbleInteractionSetupHelper setupScribbleEditingProvider:scribbleObserver:scribbleActive:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSScribbleInteractionSetupHelper.m";
  v7 = 1024;
  v8 = 24;
  v9 = 2082;
  v10 = "editingProvider.scribbleInteraction";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_1013231B8(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLImageDataHelper generateThumbnailImageDataWithCompletionHandler:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageDataHelper.m";
  v7 = 1024;
  v8 = 52;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Needs to implement download-handling thumbnail creation!", v2, 0x22u);
}

void sub_1013232C8()
{
  sub_1000C5968();
  v2 = "+[CRLRulerUnits instance]";
  sub_1000C88F0();
  v3 = 64;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Trying to acquire CRLRulerUnits singleton from a secondary thread - this class is not thread safe.", v1, 0x22u);
}

void sub_1013233C0()
{
  sub_1000C5968();
  v2 = "+[CRLRulerUnits formatterForRulerUnits:decimalPlaces:trailingZeros:lenient:]";
  sub_1000C88F0();
  v3 = 264;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Pica formatting not currently supported", v1, 0x22u);
}

void sub_1013234A4(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[PKStroke(CRLAdditions) crl_strokeForTracingWithOutset:shouldIgnoreMask:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/PKStroke_CRLAdditions.m";
  v7 = 1024;
  v8 = 311;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d the scale on a PKStroke should not be 0", v2, 0x22u);
}

void sub_10132358C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown CRLGLDataBufferDataType!", v2, v3, v4, v5, v6);
}

void sub_101323650()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown data type!", v2, v3, v4, v5, v6);
}

void sub_101323714()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown data type!", v2, v3, v4, v5, v6);
}

void sub_1013237D8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown data type!", v2, v3, v4, v5, v6);
}

void sub_10132389C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown data type!", v2, v3, v4, v5, v6);
}

void sub_101323960()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown data type!", v2, v3, v4, v5, v6);
}

void sub_101323A24()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown data type!", v2, v3, v4, v5, v6);
}

void sub_101323AE8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown data type!", v2, v3, v4, v5, v6);
}

void sub_101323BAC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown data type!", v2, v3, v4, v5, v6);
}

void sub_101323C70()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to generate buffer(s)!", v2, v3, v4, v5, v6);
}

void sub_101323D8C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d no attributes!", v2, v3, v4, v5, v6);
}

void sub_101323E64()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d vertexCount==0!", v2, v3, v4, v5, v6);
}

void sub_101323F3C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bufferCount==0!", v2, v3, v4, v5, v6);
}

void sub_101324000()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Element array count Sanity check", v2, v3, v4, v5, v6);
}

void sub_1013240C4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to generate buffer!", v2, v3, v4, v5, v6);
}

void sub_1013241D8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Too many vertices!", v2, v3, v4, v5, v6);
}

void sub_10132429C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Mesh size is not at least 2x2!", v2, v3, v4, v5, v6);
}

void sub_101324360()
{
  sub_1000C5968();
  v3 = "+[CRLGPUDataBuffer p_addTransparentBorderInsetToTextureRect:vertexRect:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m";
  v6 = 1024;
  v7 = 1097;
  v8 = v0;
  v9 = "textureRect";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101324460()
{
  sub_1000C5968();
  v3 = "+[CRLGPUDataBuffer p_addTransparentBorderInsetToTextureRect:vertexRect:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m";
  v6 = 1024;
  v7 = 1098;
  v8 = v0;
  v9 = "vertexRect";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10132454C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't initialize metal buffers without a device!", v2, v3, v4, v5, v6);
}

void sub_101324610()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Mesh size is not at least 2x2!", v2, v3, v4, v5, v6);
}

void sub_1013246D4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can only be called on a buffer that conforms to metal protocol!", v2, v3, v4, v5, v6);
}

void sub_101324798()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown attribute size!", v2, v3, v4, v5, v6);
}

void sub_10132485C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can only be called from within update block!", v2, v3, v4, v5, v6);
}

void sub_101324920()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101324A20(uint64_t a1, int a2, NSObject *a3)
{
  if (a1)
  {
    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
  }

  else
  {
    v6 = @"Nil";
  }

  v8[0] = 67110402;
  v8[1] = a2;
  v9 = 2082;
  v10 = "+[CRLiOSWindowWrapper windowWrapperForView:assert:]";
  sub_1000C88F0();
  v11 = 53;
  v12 = 2114;
  v13 = v6;
  v14 = 2050;
  v15 = a1;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Could not find scene wrapper for view <%{public}@: %{public}p>", v8, 0x36u);
  if (a1)
  {
  }
}

void sub_101324B60()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101324C38()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d userInteraction should be enabled when _userInteractionEnabledCount = 0", v2, v3, v4, v5, v6);
}

void sub_101324CFC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101324DD4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Called endIgnoringUserInteractionWithToken without matching beginIgnoringUserInteraction", v2, v3, v4, v5, v6);
}

void sub_10132503C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101325128()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101325214()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_1013252EC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Setting up player controller when movie isn't playable!", v2, v3, v4, v5, v6);
}

void sub_1013253C4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Setting up player controller for data that needs to be downloaded!", v2, v3, v4, v5, v6);
}

void sub_10132549C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10132559C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101325660()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Attempting to tear down the player controller with inconsistent flag/dynamic time state", v2, v3, v4, v5, v6);
}

void sub_10132574C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101325810()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013258E8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Dynamic poster time changes can only be made on the main thread", v2, v3, v4, v5, v6);
}

void sub_1013259AC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Dynamic poster time changes can only be made on the main thread", v2, v3, v4, v5, v6);
}

void sub_101325A84()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d A dynamic poster time change must be in progress", v2, v3, v4, v5, v6);
}

void sub_101325B48()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Dynamic poster time changes can only be made on the main thread", v2, v3, v4, v5, v6);
}

void sub_101325C20()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Mismatch between starting and ending dynamic visible poster time changes", v2, v3, v4, v5, v6);
}

void sub_101325CF8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101325DDC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101325EC0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Buffer size too small: %zu", v2, v3, v4, v5, v6);
}

void sub_101325FE0(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a2 domain];
  [a2 code];
  sub_100142488();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100142454();
  sub_10014249C(&_mh_execute_header, v7, v8, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Error reading from filter CRLStreamReadChannel: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v9, v10, v11, v12, v13);
}

void sub_101326104()
{
  sub_1000C5968();
  v3 = "[CRLBufferedReadChannel _readFromOffset:length:handler:]_block_invoke";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m";
  v6 = 1024;
  v7 = 281;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The source handler for the stream read channel should not be nil", v2, 0x22u);
}

void sub_1013261F4(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a2 domain];
  [a2 code];
  sub_100142488();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100142454();
  sub_10014249C(&_mh_execute_header, v7, v8, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Error reading from source CRLReadChannel: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v9, v10, v11, v12, v13);
}

void sub_10132637C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10132649C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10132656C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d lineWidth should not be negative.", v2, v3, v4, v5, v6);
}

void sub_101326644()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can not calculate the stroked bounds of an empty path.", v2, v3, v4, v5, v6);
}

void sub_101326708()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Couldn't get a gradient for this join, but this should have been caught upstream by skipping no-op segments.", v2, v3, v4, v5, v6);
}

void sub_1013267CC(int a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a1;
  v4 = 2082;
  v5 = "void CRLGrowPathBoundsAtTFromTypeAndPoints(CRLPathBoundsApplierState *, CGFloat, CGPathElementType, CGPoint *)";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CGPath_CRLAdditions.m";
  v8 = 1024;
  v9 = 365;
  v10 = 1024;
  v11 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid element type %d", v3, 0x28u);
}

void sub_1013268C0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d path gradient can't handle moveTo element", v2, v3, v4, v5, v6);
}

void sub_101326984(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[NSNotificationCenter(CRLAdditions) crl_addObserverForName:object:queue:usingBlock:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSNotificationCenter_CRLAdditions.m";
  v7 = 1024;
  v8 = 17;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d You should not add an observer for all notifications on the main thread because it's deadlock prone.", v2, 0x22u);
}

void sub_101326A6C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101326B4C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101326C24()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101326D04()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101326DE4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101326EB0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101326F90()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10132705C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101327148()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101327228()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013272F4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013273CC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013274AC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101327584()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10132765C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 first];
  objc_opt_class();
  sub_10019F700();
  v6 = sub_10019F714(v5);
  sub_10019F734(&_mh_execute_header, v7, v8, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d unable to perform comparison on %{public}@", v9, v10, v11, v12, v13);
}

void sub_101327770(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 second];
  objc_opt_class();
  sub_10019F700();
  v6 = sub_10019F714(v5);
  sub_10019F734(&_mh_execute_header, v7, v8, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d unable to perform comparison on %{public}@", v9, v10, v11, v12, v13);
}

void sub_101327884(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[UIGestureRecognizer(CRLGestureDispatcher) setGestureDelegate:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/UIGestureRecognizer+Text.m";
  v7 = 1024;
  v8 = 84;
  v9 = 2082;
  v10 = "grDelegate";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

uint64_t sub_10132797C()
{
  sub_1001A79F4();
  sub_1000C59AC();
  sub_1001715C4();
  sub_1001A7A10();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101843C58);
  return 0;
}

void sub_101327A4C()
{
  sub_1001A7A04();
  +[CRLAssertionHandler packedBacktraceString];
  sub_10015B6E4();
  sub_100100F84(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v2, v3, v4, v5, v6);
}

uint64_t sub_101327AE0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101843C98);
  return 0;
}

uint64_t sub_101327BC4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101843CD8);
  return 0;
}

uint64_t sub_101327CBC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101843D18);
  return 0;
}

uint64_t sub_101327DB4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101843D58);
  return 0;
}

uint64_t sub_101327EAC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101843D98);
  return 0;
}

uint64_t sub_101327F90()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101843DD8);
  return 0;
}

uint64_t sub_101328068()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101843E18);
  return 0;
}

uint64_t sub_101328140()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101843E58);
  return 0;
}

uint64_t sub_101328218()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101843E98);
  return 0;
}

uint64_t sub_1013282F0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101843F00);
  return 0;
}

uint64_t sub_1013283C8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101843F40);
  return 0;
}

uint64_t sub_101328568()
{
  sub_1000C5968();
  sub_1000C59AC();
  v4 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m";
  sub_1001715C4();
  sub_1001A7A10();
  v5 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Given index (%zd) must not be negative.", v3, 0x2Cu);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101844040);
  return 0;
}

uint64_t sub_101328704()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101844140);
  return 0;
}

uint64_t sub_101328854()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101844200);
  return 0;
}

uint64_t sub_101328940()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101844240);
  return 0;
}

uint64_t sub_101328A18()
{
  sub_1001A79F4();
  sub_1000C59AC();
  sub_1001715C4();
  sub_1001A7A10();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101844280);
  return 0;
}

uint64_t sub_101328AFC()
{
  sub_1001A79F4();
  sub_1000C59AC();
  sub_1001715C4();
  sub_1001A7A10();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_1018442C0);
  return 0;
}

uint64_t sub_101328BF4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101844300);
  return 0;
}

uint64_t sub_101328CE0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101844340);
  return 0;
}

uint64_t sub_101328E1C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_1018443C0);
  return 0;
}

uint64_t sub_101328EF4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101844440);
  return 0;
}

uint64_t sub_101328FCC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101844400);
  return 0;
}

uint64_t sub_1013290A4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101844480);
  return 0;
}

uint64_t sub_10132917C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_1018444C0);
  return 0;
}

void sub_101329274(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[UIDevice(CRLAdditions) crl_platformString]_block_invoke";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/UIDevice_CRLAdditions.m";
  v7 = 1024;
  v8 = 46;
  v9 = 2082;
  v10 = "s_platformString";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101329380()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to create cache directory: %@");
}

void sub_101329458()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to create cache directory: %@");
}

void sub_101329530()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to create cache directory: %@");
}

void sub_101329608()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to get contents of copy cache directory: %@");
}

void sub_101329744()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10132980C()
{
  v0 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018447D0);
  }

  v1 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8[0] = 67109890;
    v8[1] = v0;
    v9 = 2082;
    v10 = "[CRLPasteboardController boardItemStyleKindsOnPasteboard:]";
    v11 = 2082;
    v12 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m";
    v13 = 1024;
    v14 = 311;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to min", v8, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018447F0);
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v2;
    v6 = +[CRLAssertionHandler packedBacktraceString];
    sub_1000C5950();
    sub_1001B04F0(&_mh_execute_header, v5, v7, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v8);
  }

  v3 = [NSString stringWithUTF8String:"[CRLPasteboardController boardItemStyleKindsOnPasteboard:]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:311 isFatal:0 description:"Out-of-bounds type assignment was clamped to min"];
}

void sub_101329A2C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101329AF8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101329BD8()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to create a temporary file for oversize string: %@");
}

void sub_101329CB0()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to create a temporary file for oversize string: %@");
}

void sub_101329DC4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101329E90()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101329F48(void *a1, int a2)
{
  v3 = a1;
  v4 = +[CRLAssertionHandler packedBacktraceString];
  v6[0] = 67109378;
  v6[1] = a2;
  sub_10010A4F8();
  sub_1001B04F0(&_mh_execute_header, v3, v5, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v6);
}

void sub_10132A028()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10132A0F0(void *a1, int a2)
{
  v3 = a1;
  v4 = +[CRLAssertionHandler packedBacktraceString];
  v6[0] = 67109378;
  v6[1] = a2;
  sub_10010A4F8();
  sub_1001B04F0(&_mh_execute_header, v3, v5, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v6);
}

void sub_10132A1D0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10132A298(void *a1, int a2)
{
  v3 = a1;
  v4 = +[CRLAssertionHandler packedBacktraceString];
  v6[0] = 67109378;
  v6[1] = a2;
  sub_10010A4F8();
  sub_1001B04F0(&_mh_execute_header, v3, v5, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v6);
}

void sub_10132A3C8()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Error creating rich text string: %@");
}

void sub_10132A4A0()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Request for property list for unsupported pasteboard type %@");
}

void sub_10132A564()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10132A644()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Expected scanner to read integer from pasteboard state type %@.");
}

void sub_10132A71C()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Expected scanner to be at end from pasteboard state type %@.");
}

void sub_10132A7E0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to recover from CoreGraphics and CRLBrushStroke failing to stroke.", v2, v3, v4, v5, v6);
}

void sub_10132A8A4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot offset path that is already smaller than the offset amount!", v2, v3, v4, v5, v6);
}

void sub_10132A968()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d If delta X is 0, we would divide by zero.", v2, v3, v4, v5, v6);
}

void sub_10132AA2C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The wrap path cannot be empty when calculating the convex hull.", v2, v3, v4, v5, v6);
}

void sub_10132AB04()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d firstElementAfter should be at least 1.", v2, v3, v4, v5, v6);
}

void sub_10132ABDC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d -pathByCreatingHoleInPathAtPoint doesn't know how to handle close elements.", v2, v3, v4, v5, v6);
}

void sub_10132ACB4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d If we have a path before, the last element before +1 should be a curve or line.", v2, v3, v4, v5, v6);
}

void sub_10132AD8C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d -pathByCreatingHoleInPathAtPoint doesn't know how to handle close elements.", v2, v3, v4, v5, v6);
}

void sub_10132AE64()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d If we have a path after, the first element after should be a curve or line.", v2, v3, v4, v5, v6);
}

void sub_10132AF28()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to split a path with subpaths less than 2 elements at a time.", v2, v3, v4, v5, v6);
}

void sub_10132B028(uint8_t *buf, int a2, uint64_t a3, os_log_t log)
{
  *buf = 67110146;
  *(buf + 1) = a2;
  *(buf + 4) = 2082;
  *(buf + 10) = "[CRLBezierPath(CRLAdditions) pathSplitAtSubpathBoundariesWithSoftElementLimit:hardElementLimit:]";
  *(buf + 9) = 2082;
  *(buf + 20) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm";
  *(buf + 14) = 1024;
  *(buf + 30) = 1147;
  *(buf + 17) = 2048;
  *(buf + 36) = a3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d elementCount (%zd) should be positive.", buf, 0x2Cu);
}

void sub_10132B0F0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d It is impossible to find pointAlongPathAtPercentage at any percentage of an empty path.", v2, v3, v4, v5, v6);
}

void sub_10132B2B8(int a1, NSObject *a2, double a3)
{
  v3[0] = 67110146;
  v3[1] = a1;
  v4 = 2082;
  v5 = "[CRLBezierPath(CRLAdditions) pointAlongPathAtPercentage:withFlattenedPath:andLength:atStartIndex:]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm";
  v8 = 1024;
  v9 = 1374;
  v10 = 2048;
  v11 = a3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to find point at percentage: %f", v3, 0x2Cu);
}

void sub_10132B3AC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d lineWidth should not be negative.", v2, v3, v4, v5, v6);
}

void sub_10132B484()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can not calculate the stroked bounds of an empty path.", v2, v3, v4, v5, v6);
}

void sub_10132B548()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should provide a threshold if not looking for the closest match.", v2, v3, v4, v5, v6);
}

void sub_10132B620()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No valid roots!", v2, v3, v4, v5, v6);
}

void sub_10132B6F8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d isnan!", v2, v3, v4, v5, v6);
}

void sub_10132B8AC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected angle sign", v2, v3, v4, v5, v6);
}

void sub_10132B970()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Must provide a group info or nil as parent of a counter rotate info!", v2, v3, v4, v5, v6);
}

void sub_10132BA34()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d We don't expect this to be called", v2, v3, v4, v5, v6);
}

void sub_10132BAF8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d We don't expect this to be called", v2, v3, v4, v5, v6);
}

void sub_10132BBBC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, v3, v4, v5, v6);
}

void sub_10132BC8C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10132BD5C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10132BE2C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10132BEE8(void *a1, int a2)
{
  v3 = a1;
  v4 = +[CRLAssertionHandler packedBacktraceString];
  v5[0] = 67109378;
  v5[1] = a2;
  v6 = 2114;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, 0x12u);
}

void sub_10132C000()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10132C0D0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10132C1DC(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLiOSConcreteScribbleCapableElement initWithEditingFrame:identifier:scribbleEditingBlock:scribbleElementIsFocusedBlock:shouldDelayFocus:hitToleranceInsetsWithDefaultInsetsBlock:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSConcreteScribbleCapableElement.m";
  v7 = 1024;
  v8 = 37;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Got empty editing frame", v2, 0x22u);
}

void sub_10132C350(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLShapeLibraryCollection shapeWithIdentifier:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibraryCollection.m";
  v7 = 1024;
  v8 = 62;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d [CRLShapeLibraryCollection shapeWithIdentifier:] should not be called because CRLShapeLibraryCollection has no editable shapes", v2, 0x22u);
}

void sub_10132C44C()
{
  sub_1000C5968();
  v2 = "[CRLMediaReplaceKnobTracker initWithRep:knob:]";
  sub_1000C88F0();
  v3 = 25;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Media replace knob tracker made without a media-replacing rep", v1, 0x22u);
}

void sub_10132C530()
{
  sub_1000C5968();
  v2 = "[CRLMediaReplaceKnobTracker initWithRep:knob:]";
  sub_1000C88F0();
  v3 = 26;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Media replace knob tracker made without media replace knob", v1, 0x22u);
}

void sub_10132C600()
{
  sub_1000C5968();
  v3 = "[CRLFreehandDrawingToolPixelEraser p_endErasingAndFinalize:]_block_invoke";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolPixelEraser.m";
  v6 = 1024;
  v7 = 233;
  v8 = v0;
  v9 = "shapeStrokes";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10132C8E0()
{
  sub_1000C5968();
  v2 = "[CRLFreehandDrawingToolPixelEraser p_erasableAreaPathInUnscaledSpaceForErasingStrokePath:withVisibleRulerBezierPath:]";
  sub_1000C88F0();
  v3 = 674;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d subpathsFromSubtractedPath should never empty.", v1, 0x22u);
}

void sub_10132C9C4()
{
  sub_1000C5968();
  v2 = "[CRLFreehandDrawingToolPixelEraser p_erasableAreaPathInUnscaledSpaceForErasingStrokePath:withVisibleRulerBezierPath:]";
  sub_1000C88F0();
  v3 = 662;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Begin point from erasing stroke path should not be null.", v1, 0x22u);
}

void sub_10132CA94()
{
  sub_1000C5968();
  v3 = "[CRLShapeSearchIndex addSearchResultWithIdentifier:forKeyword:priority:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchIndex.m";
  v6 = 1024;
  v7 = 115;
  v8 = v0;
  v9 = "identifier != nil";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, 0x2Cu);
}

void sub_10132CB94()
{
  sub_1000C5968();
  v3 = "[CRLShapeSearchIndex addSearchResultWithIdentifier:forKeyword:priority:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchIndex.m";
  v6 = 1024;
  v7 = 116;
  v8 = v0;
  v9 = "keyword != nil";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, 0x2Cu);
}

void sub_10132CD84()
{
  sub_1000C5968();
  v3 = "[CRLMaskResizeTracker initWithImageRep:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskResizeTracker.m";
  v6 = 1024;
  v7 = 30;
  v8 = v0;
  v9 = "imageRep != nil";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, 0x2Cu);
}

void sub_10132CE70(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "[CRLMaskResizeTracker willBeginDynamicOperationForReps:]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskResizeTracker.m";
  v8 = 1024;
  v9 = 68;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected rep(s) for transformation %@", v3, 0x2Cu);
}

void sub_10132CF68()
{
  sub_1000C5968();
  v2 = "[CRLMaskResizeTracker changeDynamicLayoutsForReps:]";
  sub_1000C88F0();
  v3 = 80;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d image mask editor not given correct reps for resize", v1, 0x22u);
}

void sub_10132D04C()
{
  sub_1000C5968();
  v2 = "[CRLMaskResizeTracker commitChangesForReps:]";
  sub_1000C88F0();
  v3 = 135;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Image rep was moved to floating to manipulate it. This will probably do something bad for template objects.", v1, 0x22u);
}

void sub_10132D158(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "[CRLBezierPathSource initWithBezierPath:]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBezierPathSource.m";
  v8 = 1024;
  v9 = 31;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Ignoring invalid bezier path %@", v3, 0x2Cu);
}

void sub_10132D250(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLBezierPathSource p_setBezierPath:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBezierPathSource.m";
  v7 = 1024;
  v8 = 178;
  v9 = 2082;
  v10 = "path";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10132D384()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out of bounds error when appending a strokePointData object.", v2, v3, v4, v5, v6);
}

void sub_10132D448()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out of bounds error when appending a strokePointData object.", v2, v3, v4, v5, v6);
}

void sub_10132D50C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds startingAtIndex parameter.", v2, v3, v4, v5, v6);
}

void sub_10132D5E4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds endAtIndex parameter.", v2, v3, v4, v5, v6);
}

void sub_10132D838()
{
  sub_1000C5968();
  v3 = "+[CRLPKStrokePathConverter strokePathsFromBezierPath:baseWidth:strokePathCompactData:inkType:isFountainPenInkV2:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m";
  v6 = 1024;
  v7 = 733;
  v8 = v0;
  v9 = "newStrokePath";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10132D924()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpectedly failed to generate B-Spline control points.", v2, v3, v4, v5, v6);
}

void sub_10132D9E8()
{
  sub_1000C59E0();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Could not instantiate UTType for %@");
}

void sub_10132DAB8()
{
  sub_1000C59E0();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to create UTType for %@");
}

void sub_10132DB88(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[NSArray(CRLUTIUtilities) crl_UTTypes]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLUTIUtilities.m";
  v7 = 1024;
  v8 = 139;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Expecting an array of strings.", v2, 0x22u);
}

void sub_10132DC70(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLPencilKitInkStroke paintPath:wantsInteriorStroke:inContext:useFastDrawing:parameterized:shouldReverseDrawOrder:]_block_invoke";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPencilKitInkStroke.m";
  v7 = 1024;
  v8 = 272;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not try to draw a CRLPencilKitInkStroke without its strokePathCompactData and maskPath.", v2, 0x22u);
}

void sub_10132DD58(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLFakeProgress initWithMaxValue:numberOfStages:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLProgress.m";
  v7 = 1024;
  v8 = 617;
  v9 = 2082;
  v10 = "numberOfStages > 0";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, 0x2Cu);
}

void sub_10132DEDC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "*** CRLAccessibility validation error: %@", &v2, 0xCu);
}

void sub_10132DFCC()
{
  sub_1000C5968();
  v3 = "[CRLInstantAlphaBinaryBitmap initWithWidth:height:rowBytes:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaBinaryBitmap.m";
  v6 = 1024;
  v7 = 23;
  v8 = v0;
  v9 = "width > 0 && height > 0 && rowBytes >= width / 8";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, 0x2Cu);
}

void sub_10132E0B8()
{
  sub_1000C5968();
  v3 = "[CRLInstantAlphaBinaryBitmap unionWithBitmap:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaBinaryBitmap.m";
  v6 = 1024;
  v7 = 53;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d unionWithBitmap: sizes do not match", v2, 0x22u);
}

void sub_10132E1F8(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "[CRLBasicShapeLibrary shapeFromSearchResult:]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBasicShapeLibrary.m";
  v8 = 1024;
  v9 = 83;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Basic shape from result is nil: %@", v3, 0x2Cu);
}

void sub_10132E2F0()
{
  sub_1000C5968();
  v3 = "[CRLBasicShapeLibrary p_baseName]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBasicShapeLibrary.m";
  v6 = 1024;
  v7 = 95;
  v8 = v0;
  v9 = "englishString";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10132E3DC()
{
  sub_1000C5968();
  v4 = "[CRLBasicShapeLibrary p_shapeTypeAtIndex:]";
  v5 = v0;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBasicShapeLibrary.m";
  v7 = 1024;
  v8 = 101;
  v9 = 2048;
  v10 = v1;
  v11 = 2048;
  v12 = 21;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Index for shape type is %lu, but must be less than kCRLShapeTypeCustom (%ld)", v3, 0x36u);
}

void sub_10132E5D4(double a1, double a2)
{
  v2 = NSStringFromCGSize(*&a1);
  sub_1000C8938();
  sub_1001DB614();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10132E6B8(double a1, double a2, double a3, double a4)
{
  v4 = NSStringFromCGRect(*&a1);
  sub_1000C8938();
  sub_1001DB614();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10132E774(double a1, double a2)
{
  v2 = NSStringFromCGPoint(*&a1);
  sub_1000C8938();
  sub_1001DB614();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10132E830(double a1, double a2)
{
  v2 = NSStringFromCGPoint(*&a1);
  sub_1000C8938();
  sub_1001DB614();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10132E8EC(double a1, double a2)
{
  v2 = NSStringFromCGPoint(*&a1);
  sub_1000C8938();
  sub_1001DB614();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10132EA20(__n128 *a1)
{
  sub_1001DB5F8(a1, __stack_chk_guard);
  v2 = NSStringFromCGAffineTransform(v1);
  sub_1000C8938();
  sub_1001DB614();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10132EADC(__n128 *a1)
{
  sub_1001DB5F8(a1, __stack_chk_guard);
  v2 = NSStringFromCGAffineTransform(v1);
  sub_1000C8938();
  sub_1001DB614();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10132EB98(__n128 *a1)
{
  sub_1001DB5F8(a1, __stack_chk_guard);
  v2 = NSStringFromCGAffineTransform(v1);
  sub_1000C8938();
  sub_1001DB614();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10132EC54(__n128 *a1)
{
  sub_1001DB5F8(a1, __stack_chk_guard);
  v2 = NSStringFromCGAffineTransform(v1);
  sub_1000C8938();
  sub_1001DB614();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10132ED10(__n128 *a1)
{
  sub_1001DB5F8(a1, __stack_chk_guard);
  v2 = NSStringFromCGAffineTransform(v1);
  sub_1000C8938();
  sub_1001DB614();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10132EDCC(__n128 *a1)
{
  sub_1001DB5F8(a1, __stack_chk_guard);
  v2 = NSStringFromCGAffineTransform(v1);
  sub_1000C8938();
  sub_1001DB614();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10132EE88(__n128 *a1)
{
  sub_1001DB5F8(a1, __stack_chk_guard);
  v2 = NSStringFromCGAffineTransform(v1);
  sub_1000C8938();
  sub_1001DB614();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10132F084(char a1, char a2)
{
  if (a1)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = v3;
  if (a2)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v11 = v5;
  sub_1001DB614();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10132F1BC(double a1, double a2)
{
  v2 = NSStringFromCGPoint(*&a1);
  sub_1000C8938();
  sub_1001DB614();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10132F2C8(double a1, double a2, double a3, double a4)
{
  v4 = NSStringFromCGRect(*&a1);
  sub_1000C8938();
  sub_1001DB614();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10132F44C()
{
  sub_1000C5968();
  v2 = "[CRLReadChannelInputStreamAdapter readToBuffer:size:]";
  sub_1000C88F0();
  v3 = 117;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d nil read channels", v1, 0x22u);
}

void sub_10132F51C()
{
  sub_1000C5968();
  v2 = "[CRLReadChannelInputStreamAdapter seekToOffset:]";
  sub_1000C88F0();
  v3 = 156;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Not a seekable stream", v1, 0x22u);
}

void sub_10132F5EC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected Bezier element type", v2, v3, v4, v5, v6);
}

void sub_10132F700()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d At least 2 points expected", v2, v3, v4, v5, v6);
}

void sub_10132F7C4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d At least 2 points expected before the tail", v2, v3, v4, v5, v6);
}

void sub_10132F89C(int a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 67110146;
  *(buf + 1) = a3;
  *(buf + 4) = 2082;
  *(buf + 10) = "[CRLBezierPathSimplifier outputCurrentSolution]";
  *(buf + 9) = 2082;
  *(buf + 20) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathSimplifier.mm";
  *(buf + 14) = 1024;
  *(buf + 30) = 374;
  *(buf + 17) = 1024;
  *(buf + 9) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected solution element type: %d", buf, 0x28u);
}

void sub_10132F974()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Undefined cubic control points", v2, v3, v4, v5, v6);
}

void sub_10132FBC4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10132FC90(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = a2;
  [v2 count];
  sub_10015D8A8(&_mh_execute_header, v4, v5, "Failed to parse ZIP entry %tu. Will attempt to adjust offset backward.", v6, v7, v8, v9, 0);
}

void sub_10132FD38(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = a2;
  [v2 count];
  sub_10015D8A8(&_mh_execute_header, v4, v5, "Failed to parse ZIP entry %tu. Will attempt to adjust offset forward.", v6, v7, v8, v9, 0);
}

void sub_10132FF04()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10132FFD0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133018C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101330248(void *a1)
{
  v1 = sub_1001E8348(a1);
  sub_1001E8310(v1, 1.5047e-36);
  sub_1001E8328(&_mh_execute_header, v2, v3, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<");
}

void sub_1013302C4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013303A8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10133048C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101330570()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101330654()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101330788()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10133086C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10133093C()
{
  sub_1000C5968();
  v2 = "[CRLCanvasAlignmentGuide isAssociatedContentVisibleInUnscaledRect:]";
  sub_1000C88F0();
  v3 = 105;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d isAssociatedContentVisibleInUnscaledRect isn't expecting a null rect ", v1, 0x22u);
}

void sub_101330A0C()
{
  sub_1000C5968();
  v2 = "[CRLCanvasAlignmentGuide renderableWithICC:]";
  sub_1000C88F0();
  v3 = 151;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot render a guide where start == end", v1, 0x22u);
}

void sub_101330ADC(uint64_t *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4[0] = 67110146;
  v4[1] = a2;
  v5 = 2082;
  v6 = "[CRLiOSCanvasPointerInteractionDelegate pointerInteraction:regionForRequest:defaultRegion:]";
  v7 = 2082;
  v8 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasPointerInteractionDelegate.m";
  v9 = 1024;
  v10 = 126;
  v11 = 2112;
  v12 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected lastCursorUpdatingSource type! %@", v4, 0x2Cu);
}

void sub_101330BD8(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLiOSCanvasPointerInteractionDelegate pointerInteraction:styleForRegion:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasPointerInteractionDelegate.m";
  v7 = 1024;
  v8 = 152;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid cursor without any data!", v2, 0x22u);
}

void sub_101330CFC()
{
  sub_1000C5968();
  v2 = "[CRLiOSFreehandDrawingHighlightManager teardown]";
  sub_1000C88F0();
  v3 = 55;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d attempting to call teardown on an instance of CRLiOSFreehandDrawingHighlightManager that has already been torn down.", v1, 0x22u);
}

void sub_101330DCC()
{
  sub_1000C5968();
  v2 = "[CRLiOSFreehandDrawingHighlightManager dealloc]";
  sub_1000C88F0();
  v3 = 60;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d teardown not called for CRLiOSFreehandDrawingHighlightManager.", v1, 0x22u);
}

void sub_101330E9C()
{
  sub_1000C5968();
  v3 = "[CRLiOSFreehandDrawingHighlightManager pulseAnimationDidStop:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLiOSFreehandDrawingHighlightManager.m";
  v6 = 1024;
  v7 = 280;
  v8 = v0;
  v9 = "_pulseArrayController";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101330F88()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tool type %lu does not support color");
}

void sub_101331088()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown tool type %lu when generating stroke widths.");
}

void sub_10133114C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown tool type %lu when generating stroke widths.");
}

void sub_101331210()
{
  sub_1001F16C8(__stack_chk_guard);
  sub_10010A544();
  sub_1001F16D4();
  sub_1000C599C();
  sub_10010A558();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot get color for current tool (%zd)");
}

void sub_1013312D4()
{
  sub_1001F16C8(__stack_chk_guard);
  sub_10010A544();
  sub_1001F16D4();
  sub_1000C599C();
  sub_10010A558();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot get opacity for current tool (%zd)");
}

void sub_101331398()
{
  sub_1001F16C8(__stack_chk_guard);
  sub_10010A544();
  sub_1001F16D4();
  sub_1000C599C();
  sub_10010A558();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot get width for current tool (%zd)");
}

void sub_10133145C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tool does not support azimuth.", v2, v3, v4, v5, v6);
}

void sub_101331520()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot set color for given tool (%zd)");
}

void sub_1013315E4()
{
  sub_1001F16C8(__stack_chk_guard);
  sub_10010A544();
  sub_1001F16D4();
  sub_1000C599C();
  sub_10010A558();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot set opacity for tool (%zd)");
}

void sub_1013316A8()
{
  sub_1001F16C8(__stack_chk_guard);
  sub_10010A544();
  sub_1001F16D4();
  sub_1000C599C();
  sub_10010A558();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot set width for tool (%zd)");
}

void sub_10133176C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tool does not support azimuth.", v2, v3, v4, v5, v6);
}

void sub_101331844()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should have at least one stroke width option.", v2, v3, v4, v5, v6);
}

void sub_101331908()
{
  sub_1000C5968();
  v2 = "+[CRLWPiOSStorageSpellChecker p_inputLanguageDidChangeNotification:]";
  sub_1000C88F0();
  v3 = 74;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v1, 0x22u);
}

void sub_1013319D8()
{
  sub_1000C5968();
  v3 = "[CRLWPiOSStorageSpellChecker initWithStorage:selectionPath:orSearchCanvasDelegate:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPiOSStorageSpellChecker.m";
  v6 = 1024;
  v7 = 149;
  v8 = v0;
  v9 = "storage";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101331AC4()
{
  sub_1000C5968();
  v2 = "[CRLWPiOSStorageSpellChecker i_addSpellingAndGrammarMarksInRange:spellingResults:grammarResults:sync:]";
  sub_1000C88F0();
  v3 = 177;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d attempt to spellcheck past end of string", v1, 0x22u);
}

void sub_101331BD0()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101331D0C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No columns to lay out into", v2, v3, v4, v5, v6);
}

void sub_101331DE4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Column index mismatch", v2, v3, v4, v5, v6);
}

void sub_101331EA8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Too many layoutStates pushed", v2, v3, v4, v5, v6);
}

void sub_10133200C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d stack size is invalid", v2, v3, v4, v5, v6);
}

void sub_10133210C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad paragraphEnumerator", v2, v3, v4, v5, v6);
}

void sub_101332234()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad _state.paragraphRange.length", v2, v3, v4, v5, v6);
}

void sub_1013322F8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d We should not restore from our own object.", v2, v3, v4, v5, v6);
}

void sub_1013323D0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad _typesetterCharIndex", v2, v3, v4, v5, v6);
}

void sub_101332494()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d _pushedStates stack is empty", v2, v3, v4, v5, v6);
}

void sub_101332558()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101332644()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad _state.column() in layoutColumn", v2, v3, v4, v5, v6);
}

void sub_10133280C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad lineHeightGuess", v2, v3, v4, v5, v6);
}

void sub_1013328E4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Layout failure, No old lines.", v2, v3, v4, v5, v6);
}

void sub_101332C64()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d anchoredCharIndex shouldn't go backwards", v2, v3, v4, v5, v6);
}

void sub_101332D3C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d discrepancy computing anchored range", v2, v3, v4, v5, v6);
}

void sub_101332EA0()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101332F78()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad _state.charIndex", v2, v3, v4, v5, v6);
}

void sub_101333050()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad line end", v2, v3, v4, v5, v6);
}

void sub_101333128()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad glyphCount", v2, v3, v4, v5, v6);
}

void sub_101333200()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d failed to create a line fragment", v2, v3, v4, v5, v6);
}

void sub_1013332C4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d pIsLastColumn doesn't work on the body or TOC", v2, v3, v4, v5, v6);
}

void sub_101333388()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad minHeight/maxHeight", v2, v3, v4, v5, v6);
}

void sub_10133344C()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101333524()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013335FC()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013336D4(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "[CRLSixChannelTilingLayer drawLayer:inContext:]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSixChannelTilingLayer.m";
  v8 = 1024;
  v9 = 216;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected delegate call for layer %@", v3, 0x2Cu);
}

void sub_101333808()
{
  sub_1000C5968();
  v2 = "[CRLiOSInsertPageViewController scribbleInteractionWillBeginWriting:]";
  sub_1000C88F0();
  v3 = 396;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad state on _shouldIgnoreCancelBecauseOfWriting", v1, 0x22u);
}

void sub_1013338D8()
{
  sub_1000C5968();
  v2 = "[CRLiOSInsertPageViewController scribbleInteractionDidFinishWriting:]";
  sub_1000C88F0();
  v3 = 402;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad state on _shouldIgnoreCancelBecauseOfWriting", v1, 0x22u);
}

void sub_1013339E4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101333ABC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101333B88()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101333C54()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101333D2C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101333E04()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101333ED0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101333FBC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013340E4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013341D0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013342BC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013343EC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013344B8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101334700()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013347CC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101334898()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101334984()
{
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C59F4();
  sub_100114F44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void sub_101334A74()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101334B54()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_100114F44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101334C20()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101334CEC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101334DB8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101334EC0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

uint64_t sub_101334F98()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_1018496A8);
  return 0;
}

uint64_t sub_101335090()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_1018496E8);
  return 0;
}

void sub_101335168()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101335254()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101335398()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101335478()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101335558()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101335638()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101335718()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013357F8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013358D8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013359B8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101335AA4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101335B7C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Specified range is out of range of string", v2, v3, v4, v5, v6);
}

void sub_101335C2C()
{
  sub_1000CAA3C();
  sub_1000CAA24(v1, v2, v3, 1.5047e-36);
  sub_1000CAA4C(&_mh_execute_header, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v4, v5);
}

void sub_101335C98()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Character index out of range", v2, v3, v4, v5, v6);
}

void sub_101335D5C()
{
  sub_1000C5968();
  sub_1000C59AC();
  v3 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm";
  v4 = 1024;
  v5 = 1065;
  v6 = v0;
  v7 = "replaceString";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101335E44()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1001715C4();
  sub_1000D4D3C();
  sub_100114F44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101335F14()
{
  sub_1000C59AC();
  sub_1001715C4();
  sub_100114F44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void sub_101335FF8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1001715C4();
  sub_1000D4D3C();
  sub_100114F44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013360F0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Illegal value for arabic numeral topic label <= 0", v2, v3, v4, v5, v6);
}

void sub_1013361A0()
{
  if (__cxa_guard_acquire(&qword_101A34888))
  {
    __cxa_atexit(sub_100221874, 0, &_mh_execute_header);

    __cxa_guard_release(&qword_101A34888);
  }
}

void sub_101336218()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Illegal value for roman numeral topic label <= 0", v2, v3, v4, v5, v6);
}

void sub_1013362DC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Illegal value for circled number numeral topic label <= 0", v2, v3, v4, v5, v6);
}

void sub_1013363A0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Illegal value for arabic numeral topic label <= 0", v2, v3, v4, v5, v6);
}

void sub_101336464()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d number out of bounds for algorithm", v2, v3, v4, v5, v6);
}

void sub_10133653C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d string out of bounds", v2, v3, v4, v5, v6);
}

void sub_101336600()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Hebrew number out of bounds for algorithm", v2, v3, v4, v5, v6);
}

void sub_1013366D8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d string out of bounds", v2, v3, v4, v5, v6);
}

void sub_10133679C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d index out of bounds", v2, v3, v4, v5, v6);
}

void sub_101336860()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid surrogate pair", v2, v3, v4, v5, v6);
}

void sub_101336924()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d index inside surrogate pair", v2, v3, v4, v5, v6);
}

void sub_101336A9C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1001715C4();
  sub_100114F44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x32u);
}

void sub_101336B80()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d index is out of bounds", v2, v3, v4, v5, v6);
}

void sub_101336C44()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d inDigit is larger than single digit", v2, v3, v4, v5, v6);
}

void sub_101336D08()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d inValue too large for ideographicNumberStringForSmallValue", v2, v3, v4, v5, v6);
}

void sub_101336DCC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d number out of range", v2, v3, v4, v5, v6);
}

void sub_101336EA4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d string out of range", v2, v3, v4, v5, v6);
}

void sub_101336F68()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d number out of range", v2, v3, v4, v5, v6);
}

void sub_101337040()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d string out of range", v2, v3, v4, v5, v6);
}

void sub_101337104()
{
  sub_1000C5968();
  v3 = "[CRLStyledRep shouldHideSelectionHighlightDueToRectangularPath]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLStyledRep.m";
  v6 = 1024;
  v7 = 253;
  v8 = v0;
  v9 = "wrapPath";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_1013371F0()
{
  sub_1000C5968();
  v3 = "[CRLStyledRep dynamicShadowUpdateToValue:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLStyledRep.m";
  v6 = 1024;
  v7 = 292;
  v8 = v0;
  v9 = "shadow";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_1013372F4(int a1)
{
  v4[0] = 67110146;
  v4[1] = a1;
  sub_10022BC84();
  v5 = "void CRLPKPointReductionFilter::setPointReductionFilterThresholdMultiplier(CGFloat)";
  v6 = v1;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKPointReductionFilter.h";
  v8 = 1024;
  v9 = 46;
  v10 = 2048;
  v11 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected multiplier value < 0 (%f).", v4, 0x2Cu);
}

void sub_1013373E4(int a1)
{
  v2[0] = 67109890;
  v2[1] = a1;
  sub_10022BC84();
  v3 = "[CRLPKStrokeGenerator outputPoint:baseValues:]";
  sub_1000C88F0();
  v4 = 454;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d pt velocity is nan", v2, 0x22u);
}

BOOL sub_1013374D0(_DWORD *a1)
{
  *a1 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  sub_10022BC78();
  if (!v1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10184A7A8);
  }

  if (sub_10010A528())
  {
    sub_100142488();
    sub_1000C88F0();
    sub_10022BC90(&_mh_execute_header, v4, v5, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to max", v6, v7, v8, v9, v10);
  }

  sub_10022BC78();
  if (!v1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10184A7C8);
  }

  v2 = sub_10022BCB0();
  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

BOOL sub_10133761C(unsigned int *a1)
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  *a1 = v2;
  sub_10022BC78();
  if (!v3)
  {
    dispatch_once(&qword_101AD5A10, &stru_10184A888);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109890;
    v7[1] = v2;
    sub_10022BC84();
    v8 = "void CRLPKStartHookFilter::fixStartHook(std::vector<CRLPKInputPoint> *)";
    sub_1000C88F0();
    v9 = 132;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to max", v7, 0x22u);
  }

  sub_10022BC78();
  if (!v3)
  {
    dispatch_once(&qword_101AD5A10, &stru_10184A8A8);
  }

  v5 = sub_10022BCB0();
  return os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
}

BOOL sub_101337768(_DWORD *a1)
{
  *a1 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  sub_10022BC78();
  if (!v1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10184A928);
  }

  if (sub_10010A528())
  {
    sub_100142488();
    sub_1000C88F0();
    sub_10022BC90(&_mh_execute_header, v4, v5, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to max", v6, v7, v8, v9, v10);
  }

  sub_10022BC78();
  if (!v1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10184A948);
  }

  v2 = sub_10022BCB0();
  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

BOOL sub_10133788C(_DWORD *a1)
{
  *a1 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  sub_10022BC78();
  if (!v1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10184A968);
  }

  if (sub_10010A528())
  {
    sub_100142488();
    sub_1000C88F0();
    sub_10022BC90(&_mh_execute_header, v4, v5, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to max", v6, v7, v8, v9, v10);
  }

  sub_10022BC78();
  if (!v1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10184A988);
  }

  v2 = sub_10022BCB0();
  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

void sub_1013379C4(int a1)
{
  v2[0] = 67109890;
  v2[1] = a1;
  sub_10022BC84();
  v3 = "virtual void CRLPKDecompressionFilter::run()";
  sub_1000C88F0();
  v4 = 34;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Reference timestamp is needed to decompress points.", v2, 0x22u);
}

void sub_101337A9C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101337B7C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101337C68()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101337D40()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101337E2C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101337F04()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101337FF0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013380C8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101338194()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101338260()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133834C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101338424()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101338510()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013385DC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013386A8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013387B0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d cannot add line to subpath without move first", v2, v3, v4, v5, v6);
}

void sub_101338874()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d cannot add line to subpath without move first", v2, v3, v4, v5, v6);
}

void sub_101338938()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d cannot close subpath without a line or curve segment", v2, v3, v4, v5, v6);
}

void sub_101338A10(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a2 domain];
  v7 = 138544130;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  v11 = 2048;
  v12 = [a2 code];
  v13 = 2112;
  v14 = a2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error coordinating reading URL for board item: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", &v7, 0x2Au);
}

void sub_101338B18()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101338C40(void *a1, NSObject *a2)
{
  if (a1)
  {
    v5 = objc_opt_class();
    v4 = NSStringFromClass(v5);
  }

  else
  {
    v4 = @"Nil";
  }

  v6 = a1 == 0;
  v7 = [a1 filename];
  v8 = [a1 assetUUID];
  v9 = [v8 UUIDString];
  v10 = 138543874;
  v11 = v4;
  v12 = 2112;
  v13 = v7;
  v14 = 2114;
  v15 = v9;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to determine valid provider class for <%{public}@: filename=%@, assetUUID=%{public}@> ", &v10, 0x20u);

  if (!v6)
  {
  }
}

void sub_101338E04()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101338EDC()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101338FA0(void *a1, int a2)
{
  v3 = a1;
  v4 = +[CRLAssertionHandler packedBacktraceString];
  v5[0] = 67109378;
  v5[1] = a2;
  v6 = 2114;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, 0x12u);
}

void sub_101339248(void *a1, int a2)
{
  v3 = a1;
  __error();
  v6[0] = 67110146;
  v6[1] = a2;
  v7 = 2082;
  v8 = "[CRLImageProviderPool p_updateFileDescriptorLimit]";
  v9 = 2082;
  sub_1000C599C();
  v10 = 522;
  v11 = v4;
  v12 = v5;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to get fd limit: getrlimit set errno to %d. Assuming limit of 256.", v6, 0x28u);
}

void sub_101339354(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "createStageWithSteps: taking steps not a positive number: %g", &v2, 0xCu);
}

void sub_1013393E4()
{
  sub_1000C5968();
  v3 = "[CRLWPSearch initWithString:options:hitBlock:storage:range:searchCanvasDelegate:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSearch.m";
  v6 = 1024;
  v7 = 26;
  v8 = v0;
  v9 = "string";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_1013394E4()
{
  sub_1000C5968();
  v3 = "[CRLWPSearch initWithString:options:hitBlock:storage:range:searchCanvasDelegate:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSearch.m";
  v6 = 1024;
  v7 = 27;
  v8 = v0;
  v9 = "storage";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_1013395E4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to free transform with no reps", v2, v3, v4, v5, v6);
}

void sub_1013396BC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLCanvasRepFreeTransformTracker: could not find a selected rep for the given layout", v2, v3, v4, v5, v6);
}

void sub_101339780()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Mismatched rep count", v2, v3, v4, v5, v6);
}

void sub_101339844()
{
  sub_1000C5968();
  v3 = "[CRLCanvasRepFreeTransformTracker applyNewBoundsToRep:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepFreeTransformTracker.m";
  v6 = 1024;
  v7 = 543;
  v8 = v0;
  v9 = "cmd";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10133996C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101339A58()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101339B44()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101339C1C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101339CE8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101339DB4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101339E6C()
{
  sub_1001A7A04();
  v0 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_100100F84(&_mh_execute_header, v1, v2, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v3, v4, v5, v6, 2u);
}

void sub_101339F38()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133A018()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133A0F8(void *a1, void *a2, NSObject *a3)
{
  v6 = [a1 editingCoordinator];
  v7 = [v6 mainBoard];
  v8 = [v7 id];
  v9 = [v8 UUIDString];
  v10 = a1[2];
  v11 = [a2 UUIDDescription];
  v12 = 138544130;
  v13 = v9;
  v14 = 2048;
  v15 = a1;
  v16 = 2112;
  v17 = v10;
  v18 = 2112;
  v19 = v11;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%{public}@ %p %@ setSelectionPath: %@", &v12, 0x2Au);
}

void sub_10133A240()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Least specific selection MUST be a board selection. Selection path is malformed. %@");
}

void sub_10133A438()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133A518()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133A5F8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133A6C4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133A7A4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133A870()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133A948()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Editor %@ must be on the stack to retrieve its associated selection");
}

void sub_10133AA14()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133AB74()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133AC54()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133ADC0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133AEAC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133AF78()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133B044()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133B1D8(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[CRLWPTab tabAlignmentFromString:isRTL:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPTabs.mm";
  v7 = 1024;
  v8 = 154;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unrecognized tab alignment string. Returning kTabAlignmentLeft by default.", v2, 0x22u);
}

void sub_10133B374()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133B460()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133B54C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133B638()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133B710()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133B7E8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133B8D4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133B9C0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133BA98()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133BB70(uint64_t a1, int a2)
{
  v4[0] = 67110146;
  v4[1] = a2;
  v5 = 2082;
  sub_1000C59AC();
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m";
  v7 = 1024;
  v8 = 260;
  v9 = 2112;
  v10 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not ask to draw unknown layer (%@).", v4, 0x2Cu);
}

void sub_10133BC64()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133BE20()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133BF0C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133BFD8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133C108()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133C1D4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133C2C0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133C3AC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133C498()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133C584()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133C65C()
{
  sub_1002616C4();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1002616D4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
}

void sub_10133C758()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133C824()
{
  sub_1002616C4();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1002616D4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
}

void sub_10133C920()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133C9EC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133CAB8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133CB98()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133CC78()
{
  sub_1002616C4();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1002616D4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
}

void sub_10133CD60()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133CE40()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133CF0C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133CFEC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133D0CC()
{
  sub_1002616C4();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1002616D4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
}

void sub_10133D1B4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133D294()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133D374()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133D4B0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133D588(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "void CRLNotifyCGAssertionAvoided()";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLSafeCGWrappers.m";
  v7 = 1024;
  v8 = 94;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d A CG call was elided because of an invalid parameter.", v2, 0x22u);
}

void sub_10133D670(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLFreehandDrawingTransformInfo editorClass]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTransformInfo.m";
  v7 = 1024;
  v8 = 74;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d We don't expect this to be called", v2, 0x22u);
}

void sub_10133D758()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds startingAtPointIndex parameter.", v2, v3, v4, v5, v6);
}

void sub_10133D830()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds endingAtPointIndex parameter.", v2, v3, v4, v5, v6);
}

void sub_10133D908()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to convert a PKStroke with no points. Using fallback values.", v2, v3, v4, v5, v6);
}

void sub_10133D9CC(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "void _CRLPKControlPointsFromFlattenedPathApplier(std::vector<CGPoint> *, const CGPathElement *)";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKCGPathUtility.mm";
  v7 = 1024;
  v8 = 206;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d If path includes kCGPathElementAddQuadCurveToPoint or kCGPathElementAddCurveToPoint it was not properly flattened.", v2, 0x22u);
}

void sub_10133DAC8(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLWPCTTypesetterCache addTypesetterForParagraphIdentifier:typesetter:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCTTypesetterCache.mm";
  v7 = 1024;
  v8 = 43;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d too many entries in our typesetter cache", v2, 0x22u);
}

void sub_10133DBB0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d shouldn't be adding animations after we've started showing them", v2, v3, v4, v5, v6);
}

void sub_10133DC74()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d unexpected animation started", v2, v3, v4, v5, v6);
}

void sub_10133DD38()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d unexpected animation stopped", v2, v3, v4, v5, v6);
}

void sub_10133DE10()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d animation stopped before starting", v2, v3, v4, v5, v6);
}

void sub_10133DED4()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10133DFAC()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10133E084()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10133E15C()
{
  v2 = 67110146;
  sub_1001A79F4();
  v3 = "[CRLCurvedShadowRenderHelper drawCurvedShadow:forImage:inContext:forUnscaledSize:withScaleFactor:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCurvedShadowRenderHelper.m";
  v6 = 1024;
  sub_100266C04();
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d scaleFactor (%f) should be greater than 0.", &v2, 0x2Cu);
}

void sub_10133E250()
{
  v2 = 67110146;
  sub_1001A79F4();
  v3 = "[CRLCurvedShadowRenderHelper drawCurvedShadow:forImage:inContext:forUnscaledSize:withScaleFactor:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCurvedShadowRenderHelper.m";
  v6 = 1024;
  sub_100266C04();
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d scaleFactor (%f) should not be greater than 1.", &v2, 0x2Cu);
}

void sub_10133E344()
{
  v2 = 67109890;
  sub_1001A79F4();
  v3 = "[CRLCurvedShadowRenderHelper drawCurvedShadow:forImage:inContext:forUnscaledSize:withScaleFactor:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCurvedShadowRenderHelper.m";
  v6 = 1024;
  v7 = 152;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot render curved shadow, the size is too large for the CIContext to convert back to a CGImage. Skipping render.", &v2, 0x22u);
}

void sub_10133E44C()
{
  sub_1000C5968();
  v3 = "[CRLCADisplayLinkPlatformAdapter dealloc]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDisplayLinkPlatformAdapter.m";
  v6 = 1024;
  v7 = 40;
  v8 = v0;
  v9 = "_displayLink";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10133E538()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Trying to manipulate an invalid display link", v2, v3, v4, v5, v6);
}

void sub_10133E5FC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Trying to manipulate an invalid display link", v2, v3, v4, v5, v6);
}

void sub_10133E6C0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Trying to manipulate an invalid display link", v2, v3, v4, v5, v6);
}

void sub_10133E784(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLCanvasAutoscroll p_startAutoscroll:unscaledPoint:unscaledDistancePastVisibleRect:unscaledInset:directions:repeatInterval:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasAutoscroll.m";
  v7 = 1024;
  v8 = 170;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, 0x22u);
}

void sub_10133E8D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [a3 domain];
  v9 = 138413314;
  v10 = a1;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  v15 = 2048;
  v16 = [a3 code];
  v17 = 2112;
  v18 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to get filetype for URL (%@): errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", &v9, 0x34u);
}

void sub_10133E9EC(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[NSURL(CRLAdditions) crl_urlFromUserProvidedTelephoneString:withDataDetector:]_block_invoke";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSURL_CRLAdditions.m";
  v7 = 1024;
  v8 = 292;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Expected phone number match from NSDataDetector", v2, 0x22u);
}

void sub_10133EAC0(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_1000C5950();
  sub_1000CDD68();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10133EB80(void *a1, void *a2)
{
  v3 = a1;
  [a2 count];
  sub_1000CDD68();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void sub_10133EC9C(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLiOSMultiSelectGestureRecognizer initWithInteractiveCanvasController:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSMultiSelectGestureRecognizer.m";
  v7 = 1024;
  v8 = 57;
  v9 = 2082;
  v10 = "icc";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10133ED94(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_10043BF9C(a2);
  sub_10026D638(&_mh_execute_header, v5, v6, "enter state %@", v7, v8, v9, v10, 2u);
}

void sub_10133EE40(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_10043BF9C([a2 state]);
  sub_10026D638(&_mh_execute_header, v5, v6, "multi-select reset from state %@", v7, v8, v9, v10, 2u);
}

void sub_10133F1D0(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = sub_10043BF9C([a3 state]);
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "multi-select informed that %@ has taken control. now in state: %@", &v8, 0x16u);
}

void sub_10133F2C0(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_10043BF9C([a2 state]);
  sub_10026D638(&_mh_execute_header, v5, v6, "operation did end in state %@", v7, v8, v9, v10, 2u);
}

void sub_10133F4D4()
{
  sub_1000C5968();
  v3 = "[CRLCanvasKnobTracker initWithRep:knob:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasKnobTracker.m";
  v6 = 1024;
  v7 = 43;
  v8 = v0;
  v9 = "rep";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10133F5D4()
{
  sub_1000C5968();
  v3 = "[CRLCanvasKnobTracker initWithRep:knob:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasKnobTracker.m";
  v6 = 1024;
  v7 = 44;
  v8 = v0;
  v9 = "knob";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10133F6C0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not be trying to customize the touch types for this gesture!", v2, v3, v4, v5, v6);
}

void sub_10133F784()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Only expect a single touch in this logic.", v2, v3, v4, v5, v6);
}

void sub_10133F85C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Only expect a touch to begin when we are possible.", v2, v3, v4, v5, v6);
}

void sub_10133F934()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should have made a decision before touchesEnded", v2, v3, v4, v5, v6);
}

void sub_10133F9F8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133FAC4()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133FBB8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133FC84()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133FD50()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10133FE1C()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10133FF10()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101340004()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013400D0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101340194()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can only reset editing state if we have a single info selected", v2, v3, v4, v5, v6);
}

void sub_101340258()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Listening to command notifications when we don't care!", v2, v3, v4, v5, v6);
}

void sub_10134031C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Listening to command notifications when we don't care!", v2, v3, v4, v5, v6);
}

void sub_1013403E0()
{
  sub_1000C5968();
  v4 = "[CRLPathEditor toggleSelectedNodeToType:]";
  v5 = v0;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPathEditor.m";
  v7 = 1024;
  v8 = 1344;
  v9 = 2048;
  v10 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected node type %li", v3, 0x2Cu);
}

void sub_10134056C(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLBasicShapeLibraryCollection shapeWithIdentifier:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBasicShapeLibraryCollection.m";
  v7 = 1024;
  v8 = 50;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d [CRLBasicShapeLibraryCollection shapeWithIdentifier:] should not be called because CRLBasicShapeLibraryCollection has no editable shapes", v2, 0x22u);
}

void sub_101340668()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101340760()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101340868()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to set audio session category before starting playback (%@)");
}

void sub_101340934()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101340A2C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101340B34()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101340C14()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101340CF4()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to set audio session category after ending playback (%@)");
}

void sub_101340DD4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101340F38()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101341024()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101341104()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013411E4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013412B0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10134139C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10134147C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101341548()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101341634()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101341764()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101341830()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10134191C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101341A4C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101341B18()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101341BF0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101341CBC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101341D9C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101341E74()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101341F40()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101342020()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013420F8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad text alignment (%lu).");
}

void sub_1013421D8()
{
  sub_1000C5968();
  v2 = "[CRLHighlightController createLayerWithZOrder:contentsScaleForLayers:]";
  sub_1000C88F0();
  v3 = 99;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Shouldn't be creating _layer again", v1, 0x22u);
}

void sub_1013422BC()
{
  sub_1000C5968();
  v2 = "[CRLHighlightController p_buildLayersWithBackgroundForPath:withImage:]";
  sub_1000C88F0();
  v3 = 209;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d viewScale must be set before calling this method!", v1, 0x22u);
}

void sub_1013423A0()
{
  sub_1000C5968();
  v3 = "[CRLHighlightController p_buildLayersWithBackgroundForPath:withImage:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLHighlightController.m";
  v6 = 1024;
  v7 = 218;
  v8 = v0;
  v9 = "_backgroundColor";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_1013424A0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101342580()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101342660()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101342738()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101342804()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013428DC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013429A8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101342A80()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101342B4C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101342C18()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101342CE4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101342DBC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101342E94()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101342F80()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101343150()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101343230()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101343308()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101343438(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6[0] = 67110146;
  v6[1] = a3;
  v7 = 2082;
  v8 = "+[CRLFreehandDrawingShapeTracingHelper unscaledOutlinePathFromFreehandDrawingShapeLayouts:scaledOutset:viewScale:]";
  v9 = 2082;
  v10 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingShapeTracingHelper.m";
  v11 = 1024;
  v12 = 111;
  v13 = 2048;
  v14 = [a2 count];
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to trace freehand drawing shape layouts (count: %zu).", v6, 0x2Cu);
}

void sub_101343570()
{
  sub_1000C5968();
  v2 = "[TSUSparseArray maxIndexForCurrentDepth]";
  sub_1000C88F0();
  v3 = 301;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Not expecting a shiftedDepth larger than 32", v1, 0x22u);
}

void sub_101343640()
{
  sub_1000C5968();
  v2 = "[TSUSparseArray increaseDepth]";
  sub_1000C88F0();
  v3 = 339;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d TSUSparseArray - getting too deep", v1, 0x22u);
}

void sub_101343768(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert Assertion backtrace: >>%{public}@<<", &v3, 0xCu);
}

void sub_101343828(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 134218242;
  v5 = sub_10028CE28();
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert Assertion backtrace. Load address 0x%0llx, Backtrace:\n%{public}@", &v4, 0x16u);
}

void sub_10134391C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101343A00()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101343AE4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101343BF0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101343D10()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Mapping data providers to types is not allowed after pasteboard writing has started", v2, v3, v4, v5, v6);
}

void sub_101343DD4()
{
  sub_1000CAA3C();
  sub_1002913D4(1.5049e-36, v1, v2, v3);
  *(v4 + 10) = "[CRLPasteboardWriteAssistant pasteboardObject]";
  *(v4 + 18) = v5;
  *(v4 + 20) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardWriteAssistant.mm";
  *(v4 + 28) = 1024;
  sub_1002913C0(v6, v4);
  _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Pasteboard object has already been serialized. Call %{public}@ instead.", v7, 0x2Cu);
}

void sub_101343E8C()
{
  sub_1000CAA3C();
  sub_1002913D4(1.5049e-36, v1, v2, v3);
  *(v4 + 10) = "[CRLPasteboardWriteAssistant serializeNativeDataForPasteboard:]";
  *(v4 + 18) = v5;
  *(v4 + 20) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardWriteAssistant.mm";
  *(v4 + 28) = 1024;
  sub_1002913C0(v6, v4);
  _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d %{public}@ needs to be invoked on the main thread for its implicit read lock", v7, 0x2Cu);
}

void sub_101343F58()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No attempt was made to serialize native data", v2, v3, v4, v5, v6);
}

void sub_10134401C(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "void CRLPasteboardAssertNSData(CRLPasteboard *__strong, NSData *__strong, NSString *__strong)";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboard_Internal.h";
  v8 = 1024;
  v9 = 13;
  v10 = 2114;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Data for %{public}@ is too large for the pasteboard. It may be silently dropped.", v3, 0x2Cu);
}

void sub_101344114()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No attempt was made to serialize native data", v2, v3, v4, v5, v6);
}

void sub_101344250()
{
  sub_1000C5968();
  v2 = "[CRLWPAdornmentRect initWithCharacterFillAdornmentState:]";
  sub_1000C88F0();
  v3 = 65;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Attempted to create an adornment with a non-finite rect", v1, 0x22u);
}

void sub_101344320()
{
  sub_1000C5968();
  v2 = "[CRLWPAdornmentRect initWithCharacterStrokeAdornmentState:]";
  sub_1000C88F0();
  v3 = 77;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Attempted to create an adornment with a non-finite rect", v1, 0x22u);
}

void sub_1013443F0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013444DC(void *a1, int a2, CGFloat a3, CGFloat a4)
{
  v7 = a1;
  v17.width = a3;
  v17.height = a4;
  v8 = NSStringFromCGSize(v17);
  v10[0] = 67110146;
  v10[1] = a2;
  v11 = 2082;
  sub_1000C59AC();
  v12 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m";
  v13 = 1024;
  v14 = 47;
  v15 = 2114;
  v16 = v9;
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not be resampling an image to this size %{public}@ on a platform with memory limits!", v10, 0x2Cu);
}

void sub_101344618()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013446E4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10134479C()
{
  v0 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_100100F84(&_mh_execute_header, v1, v2, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v3, v4, v5, v6, 2u);
}

void sub_10134486C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101344958(uint64_t a1, int a2)
{
  v4[0] = 67110146;
  v4[1] = a2;
  v5 = 2082;
  sub_1000C59AC();
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m";
  v7 = 1024;
  v8 = 282;
  v9 = 2112;
  v10 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Error %@ creating pre-insertion asset wrapper for data.", v4, 0x2Cu);
}

void sub_101344A60()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101344B4C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101344C38()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to create library, error %@");
}

void sub_101344CFC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101344DC8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101344E94()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101344F80()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10134504C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101345138()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101345204()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013452F0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013453BC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013454A8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101345574()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101345660()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10134572C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101345818()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to create pipeline state, error %@");
}

void sub_1013458F0()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to create pipeline reflection object, error %@");
}

void sub_1013459B4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101345A80()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101345B58()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101345C30()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101345D08()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101345DF4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101345EE0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101345FAC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101346078()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101346144()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't build an editor from the canvas editor with something that isn't a CRLBoardItemSelection (received %@)");
}

void sub_10134626C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10134634C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101346424()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013464FC(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8[0] = 67110146;
  v8[1] = a3;
  v9 = 2082;
  sub_1000C59AC();
  sub_1000D4D50();
  v10 = 1051;
  v11 = 2114;
  v12 = v7;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Starting container had a parent info of an unexpected class %{public}@", v8, 0x2Cu);
}

void sub_101346638()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101346710()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013467F0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013468C8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013469A8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101346A94()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101346B80()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101346C58()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101346D24()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101346E10()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Shouldn't vend an empty command group: %@");
}

void sub_101346F24()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101346FFC()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013470E8()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013471D4()
{
  sub_1000C5968();
  v3 = "+[CRLWPStorageSanitizer filterText:removingAttachments:removingControlCharacters:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorageSanitizer.m";
  v6 = 1024;
  v7 = 103;
  v8 = v0;
  v9 = "theStr";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_1013472D4()
{
  sub_1000C5968();
  v3 = "+[CRLWPStorageSanitizer filterText:removingAttachments:removingControlCharacters:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorageSanitizer.m";
  v6 = 1024;
  v7 = 208;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Internal inconsistency in attributed string", v2, 0x22u);
}

void sub_1013473B0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10134749C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101347574()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10134764C()
{
  sub_1002B3328();
  v2 = v1;
  v11.x = sub_1002B3318();
  v3 = NSStringFromCGPoint(v11);
  sub_100128E0C();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1002B32F8(&_mh_execute_header, v4, v5, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid target point for collaborator HUD! %@", v6, v7, v8, v9, v10);
}

void sub_101347748()
{
  sub_1002B3328();
  v2 = v1;
  v11.x = sub_1002B3318();
  v3 = NSStringFromCGPoint(v11);
  sub_100128E0C();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1002B32F8(&_mh_execute_header, v4, v5, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid target point for collaborator HUD! %@", v6, v7, v8, v9, v10);
}

void sub_101347844()
{
  sub_1002B3328();
  v2 = v1;
  v11.x = sub_1002B3318();
  v3 = NSStringFromCGPoint(v11);
  sub_100128E0C();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1002B32F8(&_mh_execute_header, v4, v5, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid target point for collaborator HUD! %@", v6, v7, v8, v9, v10);
}

void sub_101347A80()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101347B60()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101347C40()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101347D20()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101347DEC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101347EB8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101347F84()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10134805C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101348134()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101348200()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013482E0()
{
  sub_1000C5968();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013483C8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013484A8()
{
  sub_1000C5968();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101348590()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Delegate callback called for unexpected insert page view controller.", v2, v3, v4, v5, v6);
}

void sub_101348654()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Delegate callback called for unexpected insert page view controller.", v2, v3, v4, v5, v6);
}

void sub_101348718()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Delegate callback called for unexpected insert page view controller.", v2, v3, v4, v5, v6);
}

void sub_1013487DC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Delegate callback called for unexpected insert page view controller.", v2, v3, v4, v5, v6);
}

void sub_1013488A0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Delegate callback called for unexpected insert page view controller.", v2, v3, v4, v5, v6);
}

void sub_101348964()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Delegate callback called for unexpected insert page view controller.", v2, v3, v4, v5, v6);
}

void sub_101348A28()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Delegate callback called for unexpected insert page view controller.", v2, v3, v4, v5, v6);
}

void sub_101348AEC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Delegate callback called for unexpected insert page view controller.", v2, v3, v4, v5, v6);
}

void sub_101348BB0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Delegate callback called for unexpected insert page view controller.", v2, v3, v4, v5, v6);
}

void sub_101348C74()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Delegate callback called for unexpected insert page view controller.", v2, v3, v4, v5, v6);
}

void sub_101348D38()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Delegate callback called for unexpected insert page view controller.", v2, v3, v4, v5, v6);
}

void sub_101348DE8(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_101348EA4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Delegate callback called for unexpected insert page view controller.", v2, v3, v4, v5, v6);
}

void sub_101348F68()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Delegate callback called for unexpected insert page view controller.", v2, v3, v4, v5, v6);
}

void sub_10134902C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Delegate callback called for unexpected insert page view controller.", v2, v3, v4, v5, v6);
}

void sub_1013490F0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Delegate callback called for unexpected insert page view controller.", v2, v3, v4, v5, v6);
}

void sub_1013491B4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Delegate callback called for unexpected insert page view controller.", v2, v3, v4, v5, v6);
}

void sub_10134928C()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101349350(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_10134940C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This method only knows how to count pages of shapes.", v2, v3, v4, v5, v6);
}

void sub_10134950C()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013495F8()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013496E4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLShapeControlRep only valid for control knob tracker", v2, v3, v4, v5, v6);
}

void sub_1013497BC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLShapeControlLayout only valid for control knob tracker", v2, v3, v4, v5, v6);
}

void sub_101349894()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d wrong knob for control knob tracker", v2, v3, v4, v5, v6);
}

void sub_10134996C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Ending knob when we didn't begin!", v2, v3, v4, v5, v6);
}

void sub_101349A30()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101349B08()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101349BCC(void *a1, int a2)
{
  v3 = a1;
  v4 = +[CRLAssertionHandler packedBacktraceString];
  v5[0] = 67109378;
  v5[1] = a2;
  v6 = 2114;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, 0x12u);
}

void sub_101349CA8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101349D74()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101349E40()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101349F18()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101349FE4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10134A100()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10134A2C8(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "+[CRLSmartStroke classForName:]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSmartStroke.mm";
  v8 = 1024;
  v9 = 64;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to find Smart Stroke class for name: %@", v3, 0x2Cu);
}

void sub_10134A44C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to deserialize content description - property list format was unexpectedly %lu", &v3, 0xCu);
}

void sub_10134A4F0(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a2 domain];
  v7 = 138544130;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  v11 = 2048;
  v12 = [a2 code];
  v13 = 2112;
  v14 = a2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to deserialize content description - Error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", &v7, 0x2Au);
}

void sub_10134A60C(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[CRLPasteboardObjectReadAssistantHelper contentDescriptionFromPasteboard:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardObjectReadAssistantHelper.m";
  v7 = 1024;
  v8 = 18;
  v9 = 2082;
  v10 = "data";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10134A704(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  sub_1000CDD68();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void sub_10134A83C(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a2 = 67110146;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2082;
  *(a2 + 10) = "[CRLChangeNotifier p_processChanges:preprocessing:]";
  *(a2 + 18) = 2082;
  *(a2 + 20) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLChangeNotifier.m";
  *(a2 + 28) = 1024;
  *(a2 + 30) = 310;
  *(a2 + 34) = 2112;
  *(a2 + 36) = a1;
  sub_1002C687C(&_mh_execute_header, a4, a3, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Exception thrown during %@; some observers may not have been notified.", a2);
}

void sub_10134A90C()
{
  sub_10010A544();
  v3 = "[CRLChangeNotifier p_processChanges:preprocessing:]_block_invoke";
  v4 = v0;
  sub_1000C599C();
  sub_10010A558();
  sub_1002C687C(&_mh_execute_header, v1, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d _currentlyNotifyingCount managed to get negative! %zi", v2);
}

void sub_10134A9E4()
{
  sub_1000C5968();
  v5 = "[CRLChangeNotifier p_processChanges:preprocessing:]_block_invoke";
  v6 = v0;
  sub_1000C599C();
  v7 = 242;
  v8 = v1;
  v9 = "_classObserversToCheckForRemovalAfterNotifications";
  sub_1002C687C(&_mh_execute_header, v2, v3, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v4);
}

void sub_10134AAD4()
{
  sub_1000C5968();
  v5 = "[CRLChangeNotifier p_processChanges:preprocessing:]_block_invoke";
  v6 = v0;
  sub_1000C599C();
  v7 = 243;
  v8 = v1;
  v9 = "_objectObserversToCheckForRemovalAfterNotifications";
  sub_1002C687C(&_mh_execute_header, v2, v3, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v4);
}

void sub_10134ABB0()
{
  sub_10010A544();
  v3 = "[CRLChangeNotifier p_processChanges:preprocessing:]_block_invoke";
  v4 = v0;
  sub_1000C599C();
  sub_10010A558();
  sub_1002C687C(&_mh_execute_header, v1, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d _currentlyNotifyingCount should be > 0! %zi", v2);
}

void sub_10134AC9C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d zero-length character", v2, v3, v4, v5, v6);
}

void sub_10134AD74()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to advance curCharIndex", v2, v3, v4, v5, v6);
}

void sub_10134AE4C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d zero-length character", v2, v3, v4, v5, v6);
}

void sub_10134AF24()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The source storage and/or the specified sub range are invalid.", v2, v3, v4, v5, v6);
}

void sub_10134B13C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d request for characters past end of string (extendedString)", v2, v3, v4, v5, v6);
}

void sub_10134B200()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d request for characters past end of string", v2, v3, v4, v5, v6);
}

void sub_10134B2C4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Callers to -[CRLShapeEditor intersectPaths:] must have a -[tag] method to specify what kind of intersection to perform.", v2, v3, v4, v5, v6);
}

void sub_10134B388()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot change shape from a shape whose width or height is zero", v2, v3, v4, v5, v6);
}

void sub_10134B460()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot change shape to a shape whose width and height are both nonzero.", v2, v3, v4, v5, v6);
}

void sub_10134B538()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Changing shapes is only supported from within an open command group.", v2, v3, v4, v5, v6);
}

void sub_10134B610(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "[NSObject(CRLAdditions) crl_removeObserverForToken:]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSObject_CRLAdditions.m";
  v8 = 1024;
  v9 = 203;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Attempted to stop key-value observing on %@ using a token that it was not associated with", v3, 0x2Cu);
}

void sub_10134B71C()
{
  sub_1002D2D28();
  v3 = "NSString *CRLAppBundleIdentifier()_block_invoke";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBundleUtilities.m";
  v6 = 1024;
  sub_1002D2D14();
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d App bundle identifier (%@) has unexpected prefix.", v2, 0x2Cu);
}

void sub_10134B800()
{
  sub_1002D2D28();
  v3 = "NSString *CRLAppGroupIdentifier()_block_invoke";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBundleUtilities.m";
  v6 = 1024;
  sub_1002D2D14();
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d App group identifier (%@) has unexpected prefix.", v2, 0x2Cu);
}

void sub_10134B8E4()
{
  sub_1000C5968();
  v2 = "[CRLMultipleImporterHelper mediaCompatibilityCheckHasBeenHandledForImporter:]";
  sub_1000C88F0();
  v3 = 55;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Importer compatibility check is being handled for an importer not in the list.", v1, 0x22u);
}

void sub_10134B9B4()
{
  sub_1000C5968();
  v2 = "[CRLMultipleImporterHelper completeImportWithCompatibilityOnAllDevices:allowHEVCContent:]";
  sub_1000C88F0();
  v3 = 61;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not attempt to complete compatibility logic if not all importers have provided a compatibility response!", v1, 0x22u);
}

void sub_10134BA84()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d selection is past the end of storage", v2, v3, v4, v5, v6);
}

void sub_10134BB48()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d illegal nil parameter", v2, v3, v4, v5, v6);
}

void sub_10134BC0C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d illegal nil parameter", v2, v3, v4, v5, v6);
}

void sub_10134BD20()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10134BDF8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not call when layout has not been validated", v2, v3, v4, v5, v6);
}

void sub_10134BF0C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Illegal anchored range", v2, v3, v4, v5, v6);
}

void sub_10134BFD0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d column transform hasn't been set yet.", v2, v3, v4, v5, v6);
}

void sub_10134C0D0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10134C1BC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10134C2A8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid charIndex for line fragment", v2, v3, v4, v5, v6);
}

void sub_10134C380()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10134C50C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d column has unexpected start", v2, v3, v4, v5, v6);
}

void sub_10134C5D0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d ruby glyph range is meaningless without limitSelection", v2, v3, v4, v5, v6);
}

void sub_10134C694()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_10134C758()
{
  sub_1000C5968();
  v3 = "[CRLInteractiveCanvasRepContentSubviewUpdater p_mainThreadUpdateSubviewsFromRepContentPiles:]_block_invoke_3";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentSubviewUpdater.m";
  v6 = 1024;
  v7 = 150;
  v8 = v0;
  v9 = "contentLayers";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10134C844()
{
  sub_1000C59E0();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Rep content pile did not implement either CRLInteractiveCanvasRepLayerPile or CRLInteractiveCanvasRepContentPlatformViewPile: %@");
}

void sub_10134C914()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Layout should have run at least once on the main thread.", v2, v3, v4, v5, v6);
}

void sub_10134CA8C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d There should always be a rep content subview with layers on top.", v2, v3, v4, v5, v6);
}

void sub_10134CB64()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The topmost rep content subview should always contain layers", v2, v3, v4, v5, v6);
}

void sub_10134CC28()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_10134CD00()
{
  sub_1000C59E0();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Rep content pile did not implement either CRLInteractiveCanvasRepLayerPile or CRLInteractiveCanvasRepContentPlatformViewPile: %@");
}

void sub_10134CDD0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Reusing the subview for rep content layers must be allowed.", v2, v3, v4, v5, v6);
}

void sub_10134CE94()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_10134CF58()
{
  sub_1000C5968();
  v2 = "[CRLiOSCanvasContextMenuInteractionDelegate contextMenuInteraction:configurationForMenuAtLocation:]";
  sub_1000C88F0();
  v3 = 80;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected menuAppearance!", v1, 0x22u);
}

void sub_10134D014(void *a1, int a2)
{
  v3 = a1;
  v4 = +[CRLAssertionHandler packedBacktraceString];
  v5[0] = 67109378;
  v5[1] = a2;
  v6 = 2114;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, 0x12u);
}

void sub_10134D0F0()
{
  sub_1000C5968();
  v2 = "[CRLiOSCanvasContextMenuInteractionDelegate contextMenuInteraction:willDisplayMenuForConfiguration:animator:]";
  sub_1000C88F0();
  v3 = 216;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not be told will display when already displayed", v1, 0x22u);
}

void sub_10134D1C0(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLBezierPath(CRLCanvasAdditions) boundsIncludingCRLStroke:]_block_invoke";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBezierPath_CRLCanvasAdditions.m";
  v7 = 1024;
  v8 = 45;
}

void sub_10134D2A8(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLDocumentModelEnumerator initWithEnumerator:flags:filter:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDocumentModelEnumerator.m";
  v7 = 1024;
  v8 = 67;
  v9 = 2082;
  v10 = "enumerator";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10134D3B4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Our knob validator block expects to stop knob recognition before we have begun", v2, v3, v4, v5, v6);
}

void sub_10134D48C()
{
  sub_1000C5968();
  sub_1000C59AC();
  v3 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSKnobDragGestureRecognizer.m";
  v4 = 1024;
  v5 = 197;
  v6 = v0;
  v7 = "_tracker";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10134D588(uint64_t a1, void *a2)
{
  v3 = a2;
  [sub_1000C59B8() delay];
  sub_10022BC84();
  sub_1000C59AC();
  sub_1001715C4();
  sub_100266C04();
  sub_1000CDD68();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void sub_10134D69C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d requesting a delay of 0", v2, v3, v4, v5, v6);
}

void sub_10134D774(uint64_t a1, void *a2)
{
  v3 = a2;
  [sub_1000C59B8() delay];
  sub_10022BC84();
  sub_1000C59AC();
  sub_1001715C4();
  sub_100266C04();
  sub_1000CDD68();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void sub_10134D888(uint64_t a1, void *a2)
{
  v3 = a2;
  [sub_1000C59B8() delay];
  sub_10022BC84();
  sub_1000C59AC();
  sub_1001715C4();
  sub_100266C04();
  sub_1000CDD68();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void sub_10134D99C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d requesting a delay of 0", v2, v3, v4, v5, v6);
}

void sub_10134DA74()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d requesting a delay of 0", v2, v3, v4, v5, v6);
}

void sub_10134DB38(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = sub_10043BF9C([a2 state]);
  v8[0] = 67110146;
  v8[1] = a3;
  sub_10022BC84();
  sub_1000C59AC();
  v9 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSKnobDragGestureRecognizer.m";
  sub_1001715C4();
  v10 = 590;
  v11 = 2112;
  v12 = v7;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d delay fired when knob GR in state %@", v8, 0x2Cu);
}

void sub_10134DC60()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d shouldn't have delayed knob tracking!", v2, v3, v4, v5, v6);
}

void sub_10134DD24()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Delayed knob tracking timer fired when we have no tracker!", v2, v3, v4, v5, v6);
}

void sub_10134DDE8(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLHandwritingRecognitionStatusHelper p_recognitionStatusStringsForDrawing:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLHandwritingRecognitionStatusHelper.m";
  v7 = 1024;
  v8 = 222;
  v9 = 2082;
  v10 = "drawing";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10134DEE0()
{
  sub_1000C5968();
  v2 = "[CRLiOSPencilTrayLassoEditingView toggleFillColorPickerPresentation]";
  sub_1000C88F0();
  v3 = 237;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not try to toggle fill color picker presentation while its color well is hidden.", v1, 0x22u);
}

void sub_10134DFB0()
{
  sub_1000C5968();
  v2 = "[CRLiOSPencilTrayLassoEditingView toggleStrokeColorPickerPresentation]";
  sub_1000C88F0();
  v3 = 246;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not try to toggle stroke color picker presentation while its color well is hidden.", v1, 0x22u);
}

void sub_10134E080()
{
  sub_1000C5968();
  v3 = "+[NSUUID(NSUUID_CRLAdditions) crl_uuidByCryptographicHashOfString:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSUUID_CRLAdditions.m";
  v6 = 1024;
  v7 = 67;
  v8 = v0;
  v9 = "string";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10134E180()
{
  sub_1000C5968();
  v3 = "+[NSUUID(NSUUID_CRLAdditions) crl_uuidByCryptographicHashOfString:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSUUID_CRLAdditions.m";
  v6 = 1024;
  v7 = 84;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d SHA256 hash should return 32(CC_SHA256_DIGEST_LENGTH) bytes.", v2, 0x22u);
}

void sub_10134E270(int a1)
{
  v3[0] = 67110146;
  v3[1] = a1;
  v4 = 2082;
  sub_1000C59AC();
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Fonts/CRLWPFontMetricsCache.mm";
  v6 = 1024;
  v7 = 54;
  v8 = v1;
  v9 = "font";
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v3, 0x2Cu);
}

void sub_10134E378()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad metrics for font %{public}@");
}

void sub_10134E43C()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad spaceBefore for %{public}@");
}

void sub_10134E514()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad attachmentHeight for %{public}@");
}

void sub_10134E5EC()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad ascent for %{public}@");
}

void sub_10134E6C4()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad descent for %{public}@");
}

void sub_10134E79C()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad leadingAbove for %{public}@");
}

void sub_10134E874()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad leadingBelow for %{public}@");
}

void sub_10134E94C()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad spaceAfter for %{public}@");
}

void sub_10134EA24()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad verticalHeight info for %{public}@");
}

void sub_10134EAFC()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad xHeight info for %{public}@");
}

void sub_10134EBD4()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad underlineThickness info for %{public}@");
}

void sub_10134ECAC()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad underlinePosition info for %{public}@");
}

void sub_10134EDD4(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLNonInteractiveInsertionContext preferredCenter]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInsertionContext.m";
  v7 = 1024;
  v8 = 197;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The preferred center is not applicable for a noninteractive insertion context.", v2, 0x22u);
}

void sub_10134EEA8(int a1, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *this)
{
  if (!this)
  {
    return;
  }

  v3 = *(this + 2);
  if (v3 < 0)
  {
    if (v3 == -2)
    {
      v5 = 4294967294;
    }

    else
    {
      v5 = *(this + 2);
      atomic_compare_exchange_strong_explicit(this + 2, &v5, v3 + 1, memory_order_release, memory_order_relaxed);
      if (v5 == v3)
      {
        if (v3 != -1)
        {
          return;
        }

        goto LABEL_4;
      }
    }

    if ((pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_RemoveRefMaybeLocked(this, v5) & 1) == 0)
    {
      return;
    }

    goto LABEL_4;
  }

  if (atomic_fetch_add_explicit(this + 2, 0xFFFFFFFF, memory_order_release) != 1)
  {
    return;
  }

LABEL_4:
  v4 = *(*this + 8);

  v4(this);
}

uint64_t sub_10134EF68(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    v2 = *(result + 8);
    if (v2 < 0)
    {
      if (v2 == -1)
      {
        return pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_AddRefMaybeLocked();
      }

      v3 = *(result + 8);
      atomic_compare_exchange_strong_explicit((result + 8), &v3, v2 - 1, memory_order_relaxed, memory_order_relaxed);
      if (v3 != v2)
      {
        return pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_AddRefMaybeLocked();
      }
    }

    else
    {
      atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
    }
  }

  return result;
}

uint64_t sub_10134F418(uint64_t a1)
{
  v2 = j__strrchr("/AppleInternal/Library/BuildRoots/4~B_w5ugB0cWO2QulcgZa4ZXN9Wn2ujMQpX1I70JA/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", 47);
  *a1 = sub_1002F6DB8("/AppleInternal/Library/BuildRoots/4~B_w5ugB0cWO2QulcgZa4ZXN9Wn2ujMQpX1I70JA/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", v2, 0x2Fu);
  *(a1 + 8) = "operator->";
  *(a1 + 16) = 186;
  *(a1 + 24) = "DataType *pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr, pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->() const [PtrTemplate = pxrInternal__aapl__pxrReserved__::TfWeakPtr, Type = pxrInternal__aapl__pxrReserved__::SdfLayer]";
  *(a1 + 32) = 0;
  v3 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
  return sub_10134F484(v3);
}

uint64_t sub_10134F484(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = sub_1002FA344(result);
    if (v2)
    {
      sub_1002FA358();
      return (*(v3 + 8))(v4, v5);
    }
  }

  return result;
}

uint64_t sub_10134F4D4(void *a1, uint64_t a2)
{
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  result = *(a2 + 8);
  if (result)
  {
    result = sub_1002FA344(result);
    if (v3)
    {
      sub_1002FA358();
      return (*(v4 + 8))(v5, v6);
    }
  }

  return result;
}

uint64_t sub_10134F53C(uint64_t a1)
{
  sub_1002FA380(a1);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = *(v1 + 8);
  if (result)
  {
    result = sub_1002FA344(result);
    if (v4)
    {
      sub_1002FA358();
      return (*(v5 + 8))();
    }
  }

  return result;
}

uint64_t *sub_10134F59C(uint64_t *result, uint64_t *a2, void *a3)
{
  *a3 = &off_101854268 + 1;
  result[1] = &off_101854268 + 1;
  v3 = *a2;
  *result = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t *sub_10134F5E0(uint64_t *result, uint64_t a2, uint64_t *a3)
{
  result[1] = a2;
  v3 = *a3;
  *result = *a3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t sub_10134F63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1002F6B18(a1);
  result = *(a3 + 8);
  if (result)
  {
    result = sub_1002FA344(result);
    if (v5)
    {
      sub_1002FA358();
      return (*(v6 + 8))();
    }
  }

  return result;
}

uint64_t sub_10134F6B8(uint64_t a1)
{
  sub_1002FA380(a1);
  if ((*v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  result = *(v1 + 8);
  if (result)
  {
    result = sub_1002FA344(result);
    if (v4)
    {
      sub_1002FA358();
      return (*(v5 + 8))();
    }
  }

  return result;
}

uint64_t *sub_10134F720(uint64_t *result, uint64_t *a2)
{
  result[1] = &off_101854268 + 1;
  v2 = *a2;
  *result = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void sub_10134F840(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error creating directory: %@", buf, 0xCu);
}

void sub_10134F8C0()
{
  sub_1000C8938();
  sub_100114F44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10134FA6C()
{
  sub_1000C8938();
  sub_100114F44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10134FB10()
{
  sub_1000C8938();
  v3 = 1026;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Success inspecting USDZ %{public}@, result %{public}i", v2, 0x12u);
}

uint64_t sub_10134FB94(uint64_t a1)
{
  result = sub_1002FA344(a1);
  if (v2)
  {
    sub_1002FA358();
    return (*(v3 + 8))(v4, v5);
  }

  return result;
}

uint64_t sub_10134FBDC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002FA344(a1);
  if (v4)
  {
    (*(*v3 + 8))(v3);
  }

  result = *a2;
  if (*a2)
  {
    result = sub_1002FA344(result);
    if (v4)
    {
      sub_1002FA358();
      return (*(v6 + 8))();
    }
  }

  return result;
}

atomic_ullong *sub_10134FC58(atomic_ullong *result, atomic_ullong **a2)
{
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
  {
    __dmb(9u);
    result = *a2;
    v2 = (*a2)[1];
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

void sub_10134FCA8(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLiOSDocumentMode initWithBoardViewController:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentMode.m";
  v7 = 1024;
  v8 = 27;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not be initializing an abstract instance of CRLiOSDocumentMode.", v2, 0x22u);
}

void sub_10134FDA4(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[NSError(CRLAdditions) crl_errorWithCode:userInfo:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSError_CRLAdditions.m";
  v7 = 1024;
  v8 = 40;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad error code", v2, 0x22u);
}

void sub_10134FE8C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10134FFD0(void *a1)
{
  v4 = a1;
  v5 = sub_100125560();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  [sub_1000C59B8() domain];
  objc_claimAutoreleasedReturnValue();
  [sub_100125554() code];
  sub_10030350C();
  sub_1000C88E0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void sub_101350098()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101350170()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135025C(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a2 domain];
  [a2 code];
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100142454();
  sub_1000C88E0();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x4Au);
}

void sub_101350390(void *a1)
{
  v4 = a1;
  v5 = sub_100125560();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  [sub_1000C59B8() domain];
  objc_claimAutoreleasedReturnValue();
  [sub_100125554() code];
  sub_10030350C();
  sub_1000C88E0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void sub_10135046C(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a2 domain];
  [a2 code];
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100142454();
  sub_1000C88E0();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x4Au);
}

void sub_1013505A0(void *a1)
{
  v4 = a1;
  v5 = sub_100125560();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  [sub_1000C59B8() domain];
  objc_claimAutoreleasedReturnValue();
  [sub_100125554() code];
  sub_10030350C();
  sub_1000C88E0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void sub_101350668(void *a1)
{
  v4 = a1;
  v5 = sub_100125560();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  [sub_1000C59B8() domain];
  objc_claimAutoreleasedReturnValue();
  [sub_100125554() code];
  sub_10030350C();
  sub_1000C88E0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void sub_101350744()
{
  sub_10030353C();
  sub_1000C599C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to make a string out of data with UTI %@");
}

void sub_101350838(void *a1)
{
  v4 = a1;
  v5 = sub_100125560();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  [sub_1000C59B8() domain];
  objc_claimAutoreleasedReturnValue();
  [sub_100125554() code];
  sub_10030350C();
  sub_1000C88E0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void sub_101350914(void *a1)
{
  v4 = a1;
  v5 = sub_100125560();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  [sub_1000C59B8() domain];
  objc_claimAutoreleasedReturnValue();
  [sub_100125554() code];
  sub_10030350C();
  sub_1000C88E0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void sub_1013509DC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101350ABC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101350B94(void *a1)
{
  v4 = a1;
  v5 = sub_100125560();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  [sub_1000C59B8() domain];
  objc_claimAutoreleasedReturnValue();
  [sub_100125554() code];
  sub_10030350C();
  sub_1000C88E0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void sub_101350C5C(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C88E0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void sub_101350EA4()
{
  sub_10030353C();
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No progress provided for UTI %@");
}

void sub_101350F80()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135106C()
{
  sub_10030353C();
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to create a temporary file for oversize string: %@");
}

void sub_101351134(void *a1)
{
  v4 = a1;
  v5 = sub_100125560();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  [sub_1000C59B8() domain];
  objc_claimAutoreleasedReturnValue();
  [sub_100125554() code];
  sub_10030350C();
  sub_1000C88E0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void sub_101351210()
{
  sub_10030353C();
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No progress provided for UTI %@");
}

void sub_1013512EC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013513D8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013514B0(void *a1)
{
  v4 = a1;
  v5 = sub_100125560();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  [sub_1000C59B8() domain];
  objc_claimAutoreleasedReturnValue();
  [sub_100125554() code];
  sub_10030350C();
  sub_1000C88E0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void sub_10135158C(void *a1)
{
  v4 = a1;
  v5 = sub_100125560();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  [sub_1000C59B8() domain];
  objc_claimAutoreleasedReturnValue();
  [sub_100125554() code];
  sub_10030350C();
  sub_1000C88E0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void sub_101351654(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = sub_100125560();
  NSStringFromClass(v7);
  objc_claimAutoreleasedReturnValue();
  v13 = [sub_100125554() domain];
  [a3 code];
  sub_1000C88E0();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x34u);
}

void sub_10135175C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101351850(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7[0] = 67110146;
  v7[1] = a3;
  v8 = 2082;
  v9 = "id CRLCheckedProtocolCast(__strong id<NSObject>, NSUInteger, ...)";
  v10 = 2082;
  v11 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLCast.m";
  v12 = 1024;
  v13 = 65;
  v14 = 2114;
  v15 = v6;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected object type %{public}@ in checked cast to multiple protocols", v7, 0x2Cu);
}

void sub_101351AEC(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLConnectionLineRep newTrackerForKnob:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineRep.m";
  v7 = 1024;
  v8 = 261;
  v9 = 2082;
  v10 = "knob";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101351BF8(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "+[CRLWPHyperlinkField newURLFromURLReference:]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPHyperlinkField.mm";
  v8 = 1024;
  v9 = 171;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to create an NSURL from %@", v3, 0x2Cu);
}

void sub_101351CF0()
{
  sub_1000C5968();
  v3 = "[CRLImageFaceAnalyzer initWithImageData:assetOwner:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageFaceAnalyzer.m";
  v6 = 1024;
  v7 = 38;
  v8 = v0;
  v9 = "imageData";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101351DDC()
{
  sub_1000C5968();
  v3 = "[CRLImageFaceAnalyzer p_analyzeFaceRectsIfNeeded]_block_invoke";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageFaceAnalyzer.m";
  v6 = 1024;
  v7 = 87;
  v8 = v0;
  v9 = "bitmapProvider";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101351EDC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error detecting faces: %@", &v2, 0xCu);
}

void sub_101351F68(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLFreehandDrawingTool performActionWithInputPoint:isInitialPoint:isFinalPoint:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTool.m";
  v7 = 1024;
  v8 = 50;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Shouldn't be already tracking or performing actions when receiving the initial point.", v2, 0x22u);
}

void sub_101352050(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7[0] = 67110146;
  v7[1] = a3;
  v8 = 2082;
  v9 = "[CRLFreehandDrawingTool convertToScratchOutOfStrokes:]";
  v10 = 2082;
  v11 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTool.m";
  v12 = 1024;
  v13 = 109;
  v14 = 2114;
  v15 = v6;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tool (%{public}@) does not support scratch-out.", v7, 0x2Cu);
}

void sub_101352184()
{
  sub_1000C5968();
  v3 = "[CRLConnectionLineOrthogonalLayout getClippedHeadPortion]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineOrthogonalLayout.mm";
  v6 = 1024;
  v7 = 179;
  v8 = v0;
  v9 = "self.connectedTo";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101352270()
{
  sub_1000C5968();
  v3 = "[CRLConnectionLineOrthogonalLayout getClippedTailPortion]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineOrthogonalLayout.mm";
  v6 = 1024;
  v7 = 192;
  v8 = v0;
  v9 = "self.connectedFrom";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101352370(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "routePath should never search more than 300 nodes. Searched %i.", v2, 8u);
}

void sub_1013523FC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013524D4(uint64_t a1, int a2)
{
  LODWORD(v4) = 67110146;
  HIDWORD(v4) = a2;
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v2, v3, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d no ICC for this rep (%@); consider asking self.canvas instead", v4);
}

void sub_1013525A0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d subclass should override this method", v2, v3, v4, v5, v6);
}

void sub_101352664()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d i_layerFrameInScaledCanvasIgnoringDragging is invalid in this state", v2, v3, v4, v5, v6);
}

void sub_101352728()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This method should not be called if current rep is not connected to connection line.", v2, v3, v4, v5, v6);
}

void sub_1013527EC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Connection line item should not be nil.", v2, v3, v4, v5, v6);
}

void sub_1013528B0(uint64_t a1, int a2, NSObject *a3)
{
  if (a1)
  {
    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
  }

  else
  {
    v6 = @"Nil";
  }

  v8[0] = 67110402;
  v8[1] = a2;
  sub_10022BC84();
  v9 = "[CRLCanvasRep repForPreviewing]";
  sub_1000C88F0();
  v10 = 1143;
  v11 = 2114;
  v12 = v6;
  v13 = 2050;
  v14 = a1;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d There should have been a rep suitable for previewing <%{public}@: %{public}p>", v8, 0x36u);
  if (a1)
  {
  }
}

void sub_1013529EC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to find topmost rotated ancestor for counteracting the layer transform.", v2, v3, v4, v5, v6);
}

void sub_101352AB0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This rep's clipRect should not be null.", v2, v3, v4, v5, v6);
}

void sub_101352C14()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101352CEC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d If something in a group has been selected, there should  be a group selection.", v2, v3, v4, v5, v6);
}

void sub_101352E28()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Expect four collaborator sublayers", v2, v3, v4, v5, v6);
}

void sub_101352F14()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d -positionOfStandardKnob:forBounds: works for standard knobs only", v2, v3, v4, v5, v6);
}

void sub_101352FD8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101353150()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d beginning dynamic operation on rep already being manipulated", v2, v3, v4, v5, v6);
}

void sub_101353214()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101353300()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d shouldn't have shadow renderable if shadow is not enabled", v2, v3, v4, v5, v6);
}

void sub_1013533C4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d dynamic drag beginning outside of dynamic operation", v2, v3, v4, v5, v6);
}

void sub_101353488()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101353560()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d dynamic rotate began outside of dynamic operation", v2, v3, v4, v5, v6);
}

void sub_101353638()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101353724(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7[0] = 67110146;
  v7[1] = a3;
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d We don't know how to rotate a %@", v7, 0x2Cu);
}

void sub_10135383C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d resize begins without being in dynamic operation", v2, v3, v4, v5, v6);
}

void sub_101353900()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't create CRLCommandSetInfoGeometry without a boardItem.", v2, v3, v4, v5, v6);
}

void sub_1013539C4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d free transform begins without being in dynamic operation", v2, v3, v4, v5, v6);
}

void sub_101353A9C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101353B88(uint64_t a1, int a2)
{
  LODWORD(v4) = 67110146;
  HIDWORD(v4) = a2;
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v2, v3, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to make a preview drag image for infos %@", v4);
}

void sub_101353C54()
{
  sub_1000C5968();
  v2 = "[CRLWPStorage(SpellCheck) rangeOfNumericalSuffixPrecedingCharIndex:forLocale:]";
  sub_1000C88F0();
  v3 = 19;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Locale string is too short.", v1, 0x22u);
}

void sub_101353DB0()
{
  sub_1000C5968();
  v2 = "[CRLWPStorage(SpellCheck) rangeOfNumericalSuffixPrecedingCharIndex:forLocale:]";
  sub_1000C88F0();
  v3 = 23;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid charIndex.", v1, 0x22u);
}

void sub_101353E80()
{
  sub_1000C5968();
  v3 = "[CRLPasteboardCopyAssistant initWithPasteboard:sourceContext:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardCopyAssistant.mm";
  v6 = 1024;
  v7 = 19;
  v8 = v0;
  v9 = "pasteboard";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101353F6C()
{
  sub_1000C5968();
  v2 = "[CRLPasteboardCopyAssistant loadData]";
  sub_1000C88F0();
  v3 = 32;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Didn't attempt to copy before trying to load native data.", v1, 0x22u);
}

void sub_10135403C()
{
  sub_1000C5968();
  v2 = "[CRLPasteboardCopyAssistant copyToPasteboardIsSmartCopy:]";
  sub_1000C88F0();
  v3 = 41;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v1, 0x22u);
}

void sub_101354120()
{
  sub_1000C5968();
  v3 = "[CRLWPRep(DragAdditions) updateDragAndDropUIForPoint:dragInfo:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep+DragAdditions.m";
  v6 = 1024;
  v7 = 243;
  v8 = 2080;
  v9 = "[CRLWPRep(DragAdditions) updateDragAndDropUIForPoint:dragInfo:]";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d If %s found model objects, one should be a storage.", v2, 0x2Cu);
}

void sub_101354208()
{
  sub_1000C5968();
  v3 = "[CRLWPRep(DragAdditions) p_dragItemsForBeginningDragWithSelection:inlineRepBeingDragged:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep+DragAdditions.m";
  v6 = 1024;
  v7 = 395;
  v8 = v0;
  v9 = "itemProvider";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_1013542F4()
{
  sub_1000C5968();
  v3 = "[CRLDisplayLink setPaused:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDisplayLink.m";
  v6 = 1024;
  v7 = 71;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't pause an invalid display link.", v2, 0x22u);
}

void sub_1013543E4()
{
  sub_1000C5968();
  v3 = "[CRLDisplayLinkManager p_createPlatformAdapter]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDisplayLink.m";
  v6 = 1024;
  v7 = 181;
  v8 = v0;
  v9 = "_adapter";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_1013544D0()
{
  sub_1000C5968();
  v3 = "[CRLDisplayLinkManager p_destroyPlatformAdapter]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDisplayLink.m";
  v6 = 1024;
  v7 = 186;
  v8 = v0;
  v9 = "_adapter";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_1013545D0()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013546A8()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101354780()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10135486C()
{
  sub_1000C5968();
  v3 = "[CRLGroupLayout childInfosForChildLayouts]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupLayout.m";
  v6 = 1024;
  v7 = 133;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d should have same number of children!", v2, 0x22u);
}

void sub_1013549D4()
{
  sub_1000C5968();
  v3 = "[CRLGroupLayout p_createDynamicCopies]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupLayout.m";
  v6 = 1024;
  v7 = 774;
  v8 = v0;
  v9 = "_dynamicLayoutGeometry";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101354AC0()
{
  sub_1000C5968();
  v3 = "[CRLGroupLayout p_destroyDynamicCopies]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupLayout.m";
  v6 = 1024;
  v7 = 784;
  v8 = v0;
  v9 = "_dynamicLayoutGeometry";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101354BAC(void *a1, int a2, CGFloat a3, CGFloat a4)
{
  v7 = a1;
  v18.x = a3;
  v18.y = a4;
  v8 = NSStringFromCGPoint(v18);
  v9[0] = 67110146;
  v9[1] = a2;
  v10 = 2082;
  v11 = "[CRLCanvasHUDController p_showHUDAtPoint:inCanvasView:withNudge:size:anchorPoint:]";
  v12 = 2082;
  v13 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasHUDController.m";
  v14 = 1024;
  v15 = 204;
  v16 = 2112;
  v17 = v8;
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Anchor point should be [0, 1]! Got %@", v9, 0x2Cu);
}

void sub_101354D00(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLCanvasHUDController p_showHUDAtPoint:inCanvasView:withNudge:size:anchorPoint:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasHUDController.m";
  v7 = 1024;
  v8 = 211;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d trying to move the CanvasHUD from one canvas to another while it is visible!", v2, 0x22u);
}

void sub_101354DE8()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101354EC0()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, v3, v4, v5, v6);
}

void sub_101354FAC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Movie validation cancelled itself without the checker knowing about it.", v2, v3, v4, v5, v6);
}

void sub_101355084()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Movie validation cancelled itself without the checker knowing about it.", v2, v3, v4, v5, v6);
}

void sub_10135515C()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101355248()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Movie validation cancelled itself without the checker knowing about it.", v2, v3, v4, v5, v6);
}

void sub_101355320()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Movie validation cancelled itself without the checker knowing about it.", v2, v3, v4, v5, v6);
}

void sub_1013553E4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid preset", v2, v3, v4, v5, v6);
}

void sub_1013554A8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Asset tracks must be loaded", v2, v3, v4, v5, v6);
}

void sub_10135556C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Asset tracks must be loaded", v2, v3, v4, v5, v6);
}

void sub_101355630()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Asset tracks must be loaded", v2, v3, v4, v5, v6);
}

void sub_101355708()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013557F4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013558CC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101355998()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101355A64()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101355B30()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101355BFC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101355CE8()
{
  sub_1000C5968();
  sub_1000C59AC();
  v3 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageLayout.m";
  v4 = 1024;
  v5 = 893;
  v6 = 2048;
  v7 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d already editing mask in mode %ld", v2, 0x2Cu);
}

void sub_101355DD0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101355E9C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101355F68()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101356040()
{
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
}

void sub_10135614C()
{
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
}

void sub_101356244()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135631C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013563F4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013564CC(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLFreehandDrawingMixedTypeEditor setEditorController:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingMixedTypeEditor.m";
  v7 = 1024;
  v8 = 76;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected editor controller!", v2, 0x22u);
}

void sub_1013565B4(uint64_t a1, int a2)
{
  v4[0] = 67110146;
  v4[1] = a2;
  v5 = 2082;
  sub_1000C59AC();
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLinePathSource.m";
  v7 = 1024;
  v8 = 46;
  v9 = 2112;
  v10 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Ignoring invalid bezier path %@", v4, 0x2Cu);
}

void sub_1013566A8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10135677C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101356850()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101356924(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[AVAssetExportSession(CRLAdditions) crl_exportSessionWithAsset:presetName:preserveFrameDuration:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/AVAssetExportSession_CRLAdditions.m";
  v7 = 1024;
  v8 = 32;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not have been able to request conversion to HEVC on hardware without encoding support!", v2, 0x22u);
}

void sub_101356A0C(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLMutableDropShadow setColor:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShadowMutableMethods.h";
  v7 = 1024;
  v8 = 34;
  v9 = 2082;
  v10 = "color";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101356B04(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLiOSDocumentModeFreehandDrawingTransform modeWillBeginFromMode:forced:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeFreehandDrawingTransform.m";
  v7 = 1024;
  v8 = 23;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Transform mode is a submode of freehand drawing mode and can only transition from a freehand drawing mode", v2, 0x22u);
}

void sub_101356C3C()
{
  sub_1000C5968();
  v3 = "+[CRLConnectionLineAdjustmentHelper p_getUpdatedMagnetForClineItem:forHeadMagnet:withOriginalLayout:withIcc:newConnectedInfo:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLineAdjustmentHelper.m";
  v6 = 1024;
  v7 = 152;
  v8 = v0;
  v9 = "originalLayout";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101356D28()
{
  sub_1000C5968();
  v3 = "+[CRLConnectionLineAdjustmentHelper p_computeLayoutInfoGeometry:andPathSource:forConnectionLine:withBoardItemOwner:]_block_invoke";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLineAdjustmentHelper.m";
  v6 = 1024;
  v7 = 259;
  v8 = v0;
  v9 = "layout";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101356E14()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot show media replace UI with cross-container selection!", v2, v3, v4, v5, v6);
}

void sub_101356ED8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Showing replace media UI when more than one image is selected!", v2, v3, v4, v5, v6);
}

void sub_101356F9C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The URL array must only contain one object.", v2, v3, v4, v5, v6);
}

void sub_101357060()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The data array must only contain one object.", v2, v3, v4, v5, v6);
}

void sub_101357124()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't replace media interactively without running completion blocks on the main queue.", v2, v3, v4, v5, v6);
}

void sub_1013571E8(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "[CRLMediaReplacingHelper p_replaceCanvasElementInfo:withInfoFromInfoImporter:interactively:allowedTypes:actionString:queue:completion:]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMediaReplacingHelper.m";
  v8 = 1024;
  v9 = 256;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid single info to replace: %@", v3, 0x2Cu);
}

void sub_1013572CC(void *a1, int a2)
{
  v3 = a1;
  v4 = +[CRLAssertionHandler packedBacktraceString];
  v5[0] = 67109378;
  v5[1] = a2;
  v6 = 2114;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, 0x12u);
}

void sub_1013573BC(int a1, NSObject *a2)
{
  v2[0] = 67110402;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLMediaReplacingHelper p_replaceCanvasElementInfo:withInfoFromInfoImporter:interactively:allowedTypes:actionString:queue:completion:]_block_invoke_8";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMediaReplacingHelper.m";
  v7 = 1024;
  v8 = 448;
  v9 = 2082;
  v10 = "dispatch_get_main_queue()";
  v11 = 2082;
  v12 = "queue";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected equality between %{public}s and %{public}s", v2, 0x36u);
}

void sub_1013574C4()
{
  sub_1000C5968();
  v2 = "CRLCanvasKnobTag CRLCanvasKnobTagByRotating270Degrees(CRLCanvasKnobTag)";
  sub_1000C88F0();
  v3 = 59;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected knob tag", v1, 0x22u);
}

void sub_101357594()
{
  sub_1000C5968();
  v2 = "CRLCanvasKnobTag CRLCanvasKnobTagByRotating90Degrees(CRLCanvasKnobTag)";
  sub_1000C88F0();
  v3 = 88;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected knob tag", v1, 0x22u);
}

void sub_101357664()
{
  sub_1000C5968();
  v4 = "CRLCanvasKnobTag CRLCanvasKnobTagWithFlip(CRLCanvasKnobTag)";
  v5 = v0;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasKnob.m";
  v7 = 1024;
  v8 = 238;
  v9 = 2048;
  v10 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d don't know how to flip knob tag %tu", v3, 0x2Cu);
}

void sub_101357764()
{
  sub_1000C5968();
  v3 = "[CRLCanvasKnob initWithType:position:radius:tag:onRep:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasKnob.m";
  v6 = 1024;
  v7 = 313;
  v8 = v0;
  v9 = "rep";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101357864()
{
  sub_1000C5968();
  v3 = "[CRLiOSRepDragGestureRecognizer initWithInteractiveCanvasController:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepDragGestureRecognizer.m";
  v6 = 1024;
  v7 = 108;
  v8 = v0;
  v9 = "icc";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101357950(void *a1)
{
  v2 = a1;
  v3 = [sub_10034DF8C() state];
  v4 = sub_10043BF9C(v3);
  sub_1000C8938();
  sub_10026D638(&_mh_execute_header, v5, v6, "reset drag from state %@", v7, v8, v9, v10, v11);
}

void sub_101357A0C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should close group before resetting", v2, v3, v4, v5, v6);
}

void sub_101357AD0(unint64_t a1, void *a2)
{
  if (a1 > 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(&off_101857D08 + a1);
  }

  v4 = 138412290;
  v5 = v2;
  v3 = a2;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "set drag state to %@", &v4, 0xCu);
}

void sub_101357BA4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d drag failed to take control!", v2, v3, v4, v5, v6);
}

void sub_101357C7C(void *a1)
{
  v2 = a1;
  [sub_10034DF8C() count];
  sub_1000C8938();
  sub_10026D638(&_mh_execute_header, v3, v4, "%zi touches began", v5, v6, v7, v8, v9);
}

void sub_101357F24(void *a1)
{
  v2 = a1;
  [sub_10034DF8C() count];
  sub_1000C8938();
  sub_10026D638(&_mh_execute_header, v3, v4, "%zi touches ended", v5, v6, v7, v8, v9);
}

void sub_101357FD0(void *a1)
{
  v2 = a1;
  v3 = [sub_10034DF8C() state];
  v4 = sub_10043BF9C(v3);
  sub_1000C8938();
  sub_10026D638(&_mh_execute_header, v5, v6, "ending gesture with state: %@", v7, v8, v9, v10, v11);
}

void sub_1013581AC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d setting tracker points when there is no tracker", v2, v3, v4, v5, v6);
}

void sub_101358284()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Search reference selection path must contain the text selection if selection path is provided", v2, v3, v4, v5, v6);
}

void sub_101358348()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d New selection is not the same class as the old selection.", v2, v3, v4, v5, v6);
}

void sub_10135840C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Selection path must be provided on initialization for any search reference that is asked for one.", v2, v3, v4, v5, v6);
}

void sub_1013584E4(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = [a2 code];
  v7 = [a2 domain];
  v8[0] = 67110658;
  v8[1] = a3;
  v9 = 2082;
  v10 = "+[CRLManagedAccountUtilities loggedInUserHasManagedAppleID]";
  v11 = 2082;
  v12 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLManagedAccountUtilities.m";
  v13 = 1024;
  v14 = 26;
  v15 = 2048;
  v16 = v6;
  v17 = 2114;
  v18 = v7;
  v19 = 2112;
  v20 = a2;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Could not determine if iCloud account is Managed Apple ID, error: %zd %{public}@ %@", v8, 0x40u);
}

void sub_101358640()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Didn't end paragraph layout", v2, v3, v4, v5, v6);
}

void sub_101358704()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d paragraph must be set up before requesting typesetter", v2, v3, v4, v5, v6);
}

void sub_1013587C8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013588B4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d cached paragraph typesetter has wrong char count", v2, v3, v4, v5, v6);
}

void sub_10135898C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101358B54()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d nil state in paragraph layout", v2, v3, v4, v5, v6);
}

void sub_101358C18()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d localRange.length must be >= 1", v2, v3, v4, v5, v6);
}

void sub_101358CF0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Incorrect initial range", v2, v3, v4, v5, v6);
}

void sub_101358E04()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Must have at least one style run", v2, v3, v4, v5, v6);
}

void sub_101358EC8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid local range", v2, v3, v4, v5, v6);
}

void sub_101358FA0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013590C8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid local range", v2, v3, v4, v5, v6);
}

void sub_1013591A0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135928C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to create temporary string for _textBuffer", v2, v3, v4, v5, v6);
}

void sub_101359350()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid localRange parameter", v2, v3, v4, v5, v6);
}

void sub_101359428()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101359514()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101359600()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013596D8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Shouldn't be called if no intersection", v2, v3, v4, v5, v6);
}

void sub_10135979C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d layoutLine called without paragraph being set up correctly", v2, v3, v4, v5, v6);
}

void sub_101359874()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't skip glyph vectors with ruby", v2, v3, v4, v5, v6);
}

void sub_10135994C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad start char index", v2, v3, v4, v5, v6);
}

void sub_101359BB4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad leading", v2, v3, v4, v5, v6);
}

void sub_101359C8C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad lineRef count", v2, v3, v4, v5, v6);
}

void sub_101359D64()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad endCharIndex", v2, v3, v4, v5, v6);
}

void sub_101359E8C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Last line should reach the end of the paragraph", v2, v3, v4, v5, v6);
}

void sub_101359F64()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Expect label color, or paragraph color as the default.", v2, v3, v4, v5, v6);
}

void sub_10135A03C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135A128()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLWPResolvePropertyForStyles should not return NSNull.", v2, v3, v4, v5, v6);
}

void sub_10135A200()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad localMaxCharIndex", v2, v3, v4, v5, v6);
}

void sub_10135A2D8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CTTypesetterCreateLine returned nil", v2, v3, v4, v5, v6);
}

void sub_10135A400()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad hyphenation result", v2, v3, v4, v5, v6);
}

void sub_10135A4D8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad line width", v2, v3, v4, v5, v6);
}

void sub_10135A600()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d line fragment isn't from the current paragraph", v2, v3, v4, v5, v6);
}

void sub_10135A6D8()
{
  sub_1000C5968();
  sub_1000C59AC();
  v3 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm";
  v4 = 1024;
  v5 = 2923;
  v6 = 2048;
  v7 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad range length %ld.", v2, 0x2Cu);
}

void sub_10135A7D4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d nil typesetter", v2, v3, v4, v5, v6);
}

void sub_10135A8AC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d nil lineRef", v2, v3, v4, v5, v6);
}

void sub_10135AB00()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d illegal list level", v2, v3, v4, v5, v6);
}

void sub_10135ABD8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad run index", v2, v3, v4, v5, v6);
}

void sub_10135AC9C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Negative lineRef start position", v2, v3, v4, v5, v6);
}

void sub_10135AD74()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Emphasis marks, no font.", v2, v3, v4, v5, v6);
}

void sub_10135AE38()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad runCount", v2, v3, v4, v5, v6);
}

void sub_10135AEFC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d line fragment isn't from the current paragraph", v2, v3, v4, v5, v6);
}

void sub_10135AFD4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d break line has no thickness", v2, v3, v4, v5, v6);
}

BOOL sub_10135B084(uint64_t a1, void *a2)
{
  sub_10022BC78();
  if (!v3)
  {
    dispatch_once(&qword_101AD5A10, &stru_101858E98);
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_100142488();
    sub_1000C88F0();
    sub_10022BC90(&_mh_execute_header, v6, v7, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to min", v8, v9, v10, v11, v12);
  }

  sub_10022BC78();
  if (!v3)
  {
    dispatch_once(&qword_101AD5A10, &stru_101858EB8);
  }

  v4 = off_1019EDA68;
  *a2 = off_1019EDA68;
  return os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
}

BOOL sub_10135B1A8(uint64_t a1, void *a2)
{
  sub_10022BC78();
  if (!v3)
  {
    dispatch_once(&qword_101AD5A10, &stru_101858E58);
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_100142488();
    sub_1000C88F0();
    sub_10022BC90(&_mh_execute_header, v6, v7, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to max", v8, v9, v10, v11, v12);
  }

  sub_10022BC78();
  if (!v3)
  {
    dispatch_once(&qword_101AD5A10, &stru_101858E78);
  }

  v4 = off_1019EDA68;
  *a2 = off_1019EDA68;
  return os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
}

void sub_10135B2E0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad font", v2, v3, v4, v5, v6);
}

void sub_10135B3B8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad underline value", v2, v3, v4, v5, v6);
}

void sub_10135B490()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad strikethru value", v2, v3, v4, v5, v6);
}

void sub_10135B554()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad writing direction map.", v2, v3, v4, v5, v6);
}

void sub_10135B618()
{
  sub_1000C5968();
  v2 = "[CRLZipFileWriteChannel writeData:handler:]";
  sub_1000C88F0();
  v3 = 40;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Channel is closed", v1, 0x22u);
}

void sub_10135B6E8()
{
  sub_1000C5968();
  v2 = "[CRLZipFileWriteChannel flushWithCompletion:]";
  sub_1000C88F0();
  v3 = 57;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Flushing ZIP write channel only adds a barrier.", v1, 0x22u);
}

void sub_10135B7CC(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLWPPadding initWithTopInset:leftInset:bottomInset:rightInset:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPPadding.mm";
  v7 = 1024;
  v8 = 53;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Illegal huge padding value", v2, 0x22u);
}

void sub_10135BA08(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLCanvasLayoutController p_recreateLayoutsIfNeededToValidateLayouts:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayoutController.m";
  v7 = 1024;
  v8 = 637;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Shouldn't be validating layouts that need recreating", v2, 0x22u);
}

void sub_10135BAF0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10135BBC0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10135BC90()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10135BD60()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10135BE30()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10135BF14()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10135BFE4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10135C0B4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10135C184()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10135C2A4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135C3C0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135C48C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135C56C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135C644()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135C71C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135C808()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135C8E0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135C9C0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d wrong rep class for line segment knob tracker", v2, v3, v4, v5, v6);
}

void sub_10135CA98()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d wrong knob for line segment knob tracker", v2, v3, v4, v5, v6);
}

void sub_10135CB70()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d shape is not a line segment, but using line segment knob tracker", v2, v3, v4, v5, v6);
}

void sub_10135CC48()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d wrong knob type for line segment resize", v2, v3, v4, v5, v6);
}

void sub_10135CDFC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10135CECC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Layouts must either override computeLayoutGeometry, or have a non-nil info to query for geometry", v2, v3, v4, v5, v6);
}

void sub_10135CF90()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not begin a dynamic operation while already in one.", v2, v3, v4, v5, v6);
}

void sub_10135D068()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10135D14C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10135D21C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10135D300()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10135D3E4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10135D4B4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not transfer layout geometry to info that's in the document!", v2, v3, v4, v5, v6);
}

void sub_10135D578()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10135D648()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135D714()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135D7E0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135D8AC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135D998()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135DA70()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135DB5C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135DC34()
{
  sub_1000C5968();
  v3 = "[CRLHyperlinkRegion initWithURL:bezierPath:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLHyperlinkRegion.m";
  v6 = 1024;
  v7 = 29;
  v8 = v0;
  v9 = "aURL != nil";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, 0x2Cu);
}

void sub_10135DD34()
{
  sub_1000C5968();
  v3 = "[CRLHyperlinkRegion initWithURL:bezierPath:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLHyperlinkRegion.m";
  v6 = 1024;
  v7 = 30;
  v8 = v0;
  v9 = "aBezierPath != nil";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, 0x2Cu);
}

void sub_10135DE20()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135DF00()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135DFEC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135E0C4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135E19C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135E274()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135E340()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135E418()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135E4E4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135E5B0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135E688()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135E754()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135E820()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135E8F8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135E9C4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135EA90()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135EB5C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135EC28()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135ED00()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135EDD8()
{
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
}

void sub_10135EED0()
{
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
}

void sub_10135EFDC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135F0B4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135F1A0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135F280()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135F358()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135F438()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135F510()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135F5F0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135F6C8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135F7A0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135F86C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135F944()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135FA30()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135FB08()
{
  sub_1000C5968();
  v2 = "[CRLMultiRepRotateTracker unscaledCenterForRotation]";
  sub_1000C88F0();
  v3 = 45;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Must have at least one tracker to ask for its center of rotation", v1, 0x22u);
}

void sub_10135FBD8()
{
  sub_1000C5968();
  v2 = "[CRLMultiRepRotateTracker currentTotalAngleOfRotationInRadians]";
  sub_1000C88F0();
  v3 = 58;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Must have at least one tracker to ask for its total angle of rotation", v1, 0x22u);
}

void sub_10135FCA8()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135FDB0()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10135FEA4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10135FF70()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136003C()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136011C(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[CRLCommandControllerObjCHelper fatalAssertOnNilCommand:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandControllerObjCHelper.m";
  v7 = 1024;
  v8 = 17;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to enqueue nil command.", v2, 0x22u);
}

void sub_10136020C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected an even number of indexes", v2, v3, v4, v5, v6);
}

void sub_1013602E4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d index vector size is wrong", v2, v3, v4, v5, v6);
}

void sub_1013603A8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d index vector size is wrong", v2, v3, v4, v5, v6);
}

void sub_1013604BC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d shouldn't be trying to map NSNotFound", v2, v3, v4, v5, v6);
}

void sub_101360580()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d shouldn't be trying to map NSNotFound", v2, v3, v4, v5, v6);
}

void sub_101360658()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad affinity", v2, v3, v4, v5, v6);
}

void sub_101360758()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101360830()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013608FC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013609C8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101360AA0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101360BE4(uint64_t a1, int a2)
{
  v4[0] = 67110146;
  v4[1] = a2;
  v5 = 2082;
  sub_1000C59AC();
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingEditor.m";
  v7 = 1024;
  v8 = 727;
  v9 = 2112;
  v10 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to create a temporary directory for sharing drawings as images: %@", v4, 0x2Cu);
}

void sub_101360D3C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101360E28()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101360F14()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101361000()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d asking for starPoints on wrong type of pathSource", v2, v3, v4, v5, v6);
}

void sub_1013610C4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d asking for starRadius on wrong type of pathSource", v2, v3, v4, v5, v6);
}

void sub_101361188()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d asking for arrowIndent on wrong type of pathSource", v2, v3, v4, v5, v6);
}

void sub_10136124C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d asking for arrowIndent on wrong type of pathSource", v2, v3, v4, v5, v6);
}

void sub_101361310()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d asking for arrowIndent on wrong type of pathSource", v2, v3, v4, v5, v6);
}

void sub_1013613D4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d asking for arrowIndent on wrong type of pathSource", v2, v3, v4, v5, v6);
}

void sub_101361498()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d UITouch altitudeAngle is invalid; using a default in its place.", v2, v3, v4, v5, v6);
}

void sub_101361570()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d UITouch azimuth is invalid; using a default in its place.", v2, v3, v4, v5, v6);
}

void sub_101361648()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d UITouch force is invalid; using a default in its place.", v2, v3, v4, v5, v6);
}

void sub_101361720()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013617F8(void *a1, void *a2)
{
  v4 = a1;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = [sub_1000C59B8() domain];
  [a2 code];
  sub_10030350C();
  sub_1003A2950(&_mh_execute_header, v7, v8, "Error creating CRLAsset: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v9, v10, v11, v12, v13);
}

void sub_1013618C4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136199C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101361A68()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101361B54()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101361C34(void *a1, void *a2)
{
  v4 = a1;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = [sub_1000C59B8() domain];
  [a2 code];
  sub_10030350C();
  sub_1003A2950(&_mh_execute_header, v7, v8, "Error creating asset wrapper: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v9, v10, v11, v12, v13);
}

void sub_101361D00(id *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [*a1 domain];
  [*a1 code];
  sub_1003A2970();
  sub_1003A2950(&_mh_execute_header, v7, v8, "Error creating CRLAsset: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v9, v10, v11, v12, v13);
}

void sub_101361E00()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101361F00(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[NSProgress(NSProgress_CRLAdditions) crl_progressWithCRLProgress:totalUnitCount:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSProgress_CRLAdditions.m";
  v7 = 1024;
  v8 = 70;
  v9 = 2082;
  v10 = "progressObserver";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101362048()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101362114()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013621F4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013622E0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013623B8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101362490()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101362568(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v17 = a1;
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  v18 = NSStringFromCGRect(v24);
  v25.origin.x = a6;
  v25.origin.y = a7;
  v25.size.width = a8;
  v25.size.height = a9;
  v19 = NSStringFromCGRect(v25);
  v20 = 138543618;
  v21 = v18;
  v22 = 2114;
  v23 = v19;
  _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "The OS lied about the keyboard frame for a null input view %{public}@. We ignored it and replaced it with %{public}@.", &v20, 0x16u);
}

void sub_101362718()
{
  sub_1000C5968();
  v2 = "[CRLFill applyToRenderable:withScale:]";
  sub_1000C88F0();
  v3 = 72;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d called -applyToRenderable:withScale: on a CRLFill that can't", v1, 0x22u);
}

void sub_1013627E8()
{
  sub_1000C5968();
  v2 = "[CRLFill fillType]";
  sub_1000C88F0();
  v3 = 112;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d subclasses must override", v1, 0x22u);
}

void sub_1013628CC(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7[0] = 67110146;
  v7[1] = a3;
  v8 = 2082;
  v9 = "[CRLKeyboardMovementManipulator duplicateSelectionMovingByDelta:]";
  v10 = 2082;
  v11 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLKeyboardMovementManipulator.m";
  v12 = 1024;
  v13 = 143;
  v14 = 2114;
  v15 = v6;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Editor (%{public}@) responds to copy: but not copyForKeyboardMovementDuplicationToPasteboard:. Falling back to canvas editor.", v7, 0x2Cu);
}

void sub_101362A00()
{
  sub_1000C5968();
  v2 = "[CRLColorFill initWithColor:]";
  sub_1000C88F0();
  v3 = 145;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for color", v1, 0x22u);
}

void sub_101362AD0()
{
  sub_1000C5968();
  v3 = "[CRLColorFill initWithUIColor:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLColorFill.m";
  v6 = 1024;
  v7 = 170;
  v8 = v0;
  v9 = "uiColor";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101362BBC()
{
  sub_1000C5968();
  v2 = "[CRLColorFill applyToRenderable:withScale:]";
  sub_1000C88F0();
  v3 = 259;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Applying color fill with unsupported properties to CRLCanvasRenderable", v1, 0x22u);
}

void sub_101362C8C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101362D78()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101362E50()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101362F28()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101362FF4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013630C0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013631A0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101363278()
{
  sub_1000C5968();
  v3 = "[NSSet(CRLAdditions) crl_setByMappingObjectsUsingBlock:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSSet_CRLAdditions.m";
  v6 = 1024;
  v7 = 95;
  v8 = v0;
  v9 = "block != nil";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, 0x2Cu);
}

void sub_1013633B4()
{
  sub_1000C5968();
  v3 = "[NSSet(CRLAdditions) crl_onlyObject]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSSet_CRLAdditions.m";
  v6 = 1024;
  v7 = 126;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d As this method returns the only object in the set, it only makes sense if the set has at most one object.", v2, 0x22u);
}

void sub_101363490()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Input geometries' sizes don't match", v2, v3, v4, v5, v6);
}

void sub_101363554()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Attempted to set the position of a CRLCanvasInfoGeometry with a non-finite position", v2, v3, v4, v5, v6);
}

void sub_101363618()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Attempted to set the size of a CRLCanvasInfoGeometry with NaNs", v2, v3, v4, v5, v6);
}

void sub_101363740(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLiOSPreventScrollGestureRecognizer initWithInteractiveCanvasController:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSPreventScrollGestureRecognizer.m";
  v7 = 1024;
  v8 = 29;
  v9 = 2082;
  v10 = "icc";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10136384C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Expected to get a toolkit UI state from the document!", v2, v3, v4, v5, v6);
}

void sub_101363910()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_1013639E8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not add a freehand drawing toolkit observer that's already added.", v2, v3, v4, v5, v6);
}

void sub_101363AAC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101363B84()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not remove a freehand drawing toolkit observer that has not been added.", v2, v3, v4, v5, v6);
}

void sub_101363C48()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should only try to begin drawing mode when it's allowed.", v2, v3, v4, v5, v6);
}

void sub_101363D0C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Transform mode can only begin when drawing mode is already active.", v2, v3, v4, v5, v6);
}

void sub_101363DD0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101363E94()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101363F58()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_10136401C(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "+[CRLModelSearchController assertSearchTargetImplementsProperMethods:]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m";
  v8 = 1024;
  v9 = 229;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Search target %@ does not respond to one of the necessary protocol methods.", v3, 0x2Cu);
}

void sub_101364114()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101364228()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Async result building only supports searching one root.", v2, v3, v4, v5, v6);
}

void sub_1013642EC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Could not find next root search target. Defaulting to 0.", v2, v3, v4, v5, v6);
}

void sub_1013643B0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d must have a valid search target at this point", v2, v3, v4, v5, v6);
}

void sub_1013644C4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Could not find searchReference in current root search target range.", v2, v3, v4, v5, v6);
}

void sub_101364588()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can not find searchReference while currentRootSearchTargetRange is invalid.", v2, v3, v4, v5, v6);
}

void sub_10136469C()
{
  sub_1000C5968();
  v2 = "[CRLWrapSegments p_buildSegmentsForPath:]";
  sub_1000C88F0();
  v3 = 100;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d cannot enumerate flattened segments for a non-flat path", v1, 0x22u);
}

void sub_101364780()
{
  sub_1000C5968();
  v2 = "[CRLWrapSegments p_buildSegmentsForPath:]";
  sub_1000C88F0();
  v3 = 101;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d mSegments must be NULL when initializing", v1, 0x22u);
}

void sub_1013648F0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad selection -- extends past end of storage", v2, v3, v4, v5, v6);
}

void sub_1013649C8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid index for right edge of selection", v2, v3, v4, v5, v6);
}

void sub_101364AA0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Couldn't find left edge char index", v2, v3, v4, v5, v6);
}

void sub_101364B64()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Precondition: caretIndex is either equal to the given charIndex or one past", v2, v3, v4, v5, v6);
}

void sub_101364C3C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Character index should be inside allowable selection range.", v2, v3, v4, v5, v6);
}

void sub_101364D14()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not have received NSNotFound.", v2, v3, v4, v5, v6);
}

void sub_101364DD8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101364EC4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Expect no runs for a partitioned attachment line fragment", v2, v3, v4, v5, v6);
}

void sub_101364F88()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not have received NSNotFound.", v2, v3, v4, v5, v6);
}

void sub_101365060()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not have received NSNotFound.", v2, v3, v4, v5, v6);
}

void sub_101365124()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d illegal direction", v2, v3, v4, v5, v6);
}

void sub_1013651E8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unsupported direction", v2, v3, v4, v5, v6);
}

void sub_1013652C0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Result beyond selection range max.", v2, v3, v4, v5, v6);
}

void sub_101365398()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Result beyond selection range min.", v2, v3, v4, v5, v6);
}

void sub_10136545C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101365534()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Empty column in p_withLineIndexForCharIndex", v2, v3, v4, v5, v6);
}

void sub_1013655F8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unsupported vertical character direction", v2, v3, v4, v5, v6);
}

void sub_1013656BC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unsupported vertical character direction", v2, v3, v4, v5, v6);
}

void sub_101365780()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d sentence movement in layout direction is not supported", v2, v3, v4, v5, v6);
}

void sub_1013658D8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unsupported horizontal line direction", v2, v3, v4, v5, v6);
}

void sub_10136599C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unsupported granularity", v2, v3, v4, v5, v6);
}

void sub_101365A74()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d composed character extends past storage boundary", v2, v3, v4, v5, v6);
}

void sub_101365B4C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unsupported vertical character direction", v2, v3, v4, v5, v6);
}

void sub_101365C74()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not be on last paragraph yet.", v2, v3, v4, v5, v6);
}

void sub_101365D4C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101365E24()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1001715C4();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unsupported direction: %lu");
}

void sub_101365EEC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d unexpected granularity", v2, v3, v4, v5, v6);
}

void sub_101365FC4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013660B0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Column should not be nil", v2, v3, v4, v5, v6);
}

void sub_101366174()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d backwards should never be NULL!", v2, v3, v4, v5, v6);
}

void sub_10136624C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid selection type", v2, v3, v4, v5, v6);
}

void sub_101366310()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d can't delete without a command controller", v2, v3, v4, v5, v6);
}

void sub_1013663E8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Trying to delete past end of storage", v2, v3, v4, v5, v6);
}

void sub_1013664AC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad ranges", v2, v3, v4, v5, v6);
}

void sub_101366584()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad range lengths", v2, v3, v4, v5, v6);
}

void sub_10136665C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d overlapping transposition ranges", v2, v3, v4, v5, v6);
}

void sub_101366720()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136685C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d can't delete without a command controller", v2, v3, v4, v5, v6);
}

void sub_101366920()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid selection type", v2, v3, v4, v5, v6);
}

void sub_1013669E4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101366AD0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1001715C4();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d illegal text direction: %ld");
}

void sub_101366BAC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1001715C4();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d illegal text direction: %ld");
}

void sub_101366C88()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid selection anchor", v2, v3, v4, v5, v6);
}

void sub_101366D60()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid selection anchor", v2, v3, v4, v5, v6);
}

void sub_101366E38()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1001715C4();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d illegal text direction: %ld");
}

void sub_101366F14()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1001715C4();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d illegal text direction: %ld");
}

void sub_101366FDC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013670B4()
{
  sub_1000C5968();
  v2 = "[CRLImageToolbarButtonItem setImage:]";
  sub_1000C88F0();
  v3 = 66;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Only symbol images are supported", v1, 0x22u);
}

void sub_101367184()
{
  sub_1000C5968();
  v2 = "[CRLImageToolbarButtonItem setLandscapeImagePhone:]";
  sub_1000C88F0();
  v3 = 76;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Only symbol images are supported", v1, 0x22u);
}

void sub_101367290()
{
  sub_1000C59E0();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Error extracting attachment: %@");
}

void sub_101367374()
{
  sub_1000C59E0();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Error extracting attachment: %@");
}

void sub_101367458()
{
  sub_1000C5968();
  v3 = "[CRLiOSFreehandDrawingGestureRecognizer initWithInteractiveCanvasController:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLiOSFreehandDrawingGestureRecognizer.m";
  v6 = 1024;
  v7 = 92;
  v8 = v0;
  v9 = "icc";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101367544(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_10043BF9C(a2);
  sub_10026D638(&_mh_execute_header, v5, v6, "transitioning to state %{public}@", v7, v8, v9, v10, 2u);
}

void sub_101367998(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = sub_10043BF9C([v2 state]);
  sub_10026D638(&_mh_execute_header, v5, v6, "delay timer fired. GR in state %{public}@", v7, v8, v9, v10, 2u);
}

void sub_101367C28()
{
  sub_1000C5968();
  v2 = "[CRLiOSFreehandDrawingGestureRecognizer p_cancelOrFailAndCleanUpChanges]";
  sub_1000C88F0();
  v3 = 625;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot cancel/fail a GR that has already ended.", v1, 0x22u);
}

void sub_101367D54()
{
  sub_1000C5968();
  v2 = "[CRLiOSFreehandDrawingGestureRecognizer p_beginDynamicDrawing]";
  sub_1000C88F0();
  v3 = 684;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Freehand drawing GR did not successfully take control", v1, 0x22u);
}

void sub_101367EB4()
{
  sub_1000C5968();
  v3 = "+[CRLFreehandDrawingHostingEditorHelper makeCopyOfSelectedDrawingItemsFromHostingEditor:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingHostingEditorHelper.m";
  v6 = 1024;
  v7 = 19;
  v8 = v0;
  v9 = "icc";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101367F8C(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, 2u);
}

void sub_1013680DC(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, 2u);
}

void sub_1013681A0()
{
  sub_1000C5968();
  v3 = "+[CRLFreehandDrawingHostingEditorHelper makeCopyOfSelectedDrawingItemsFromHostingEditor:]_block_invoke";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingHostingEditorHelper.m";
  v6 = 1024;
  v7 = 53;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Expected a layout so that we can calculate the geometries correctly", v2, 0x22u);
}

void sub_101368268(void *a1, int a2)
{
  v3 = a1;
  v4 = +[CRLAssertionHandler packedBacktraceString];
  v5[0] = 67109378;
  v5[1] = a2;
  sub_10010A4F8();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, 0x12u);
}

void sub_101368360()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d attempting to take control with an unregistered TM %@");
}

void sub_1013684C4(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7[0] = 67110146;
  v7[1] = a3;
  v8 = 2082;
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Controlling TM %@ would not give up control at the end of an operation", v7, 0x2Cu);
}

void sub_1013685F4()
{
  sub_1000CAA3C();
  *v1 = 67110146;
  *(v1 + 4) = v2;
  *(v1 + 8) = 2082;
  *(v1 + 10) = "+[CRLTrackerManipulatorCoordinator p_dynamicallySubclassGRForNotification:]";
  *(v1 + 18) = 2082;
  *(v1 + 20) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLTrackerManipulatorCoordinator.m";
  *(v1 + 28) = 1024;
  *(v1 + 30) = 198;
  *(v1 + 34) = 2112;
  *(v1 + 36) = v3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No dynamic subclass for %@!", v4, 0x2Cu);
}

void sub_1013686C4()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d trying to subclass something that is already subclassed %@");
}

void sub_101368788()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d removing dynamic subclass from GR %@ that doesn't have one!");
}

void sub_10136884C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  v10 = NSStringFromCGRect(v13);
  v11 = 138412290;
  v12 = v10;
  _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Attempting to overlay an image with a bad frame: %@", &v11, 0xCu);
}

void sub_101368930(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLInstantAlphaImage initWithWidth:height:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaImage.m";
  v7 = 1024;
  v8 = 15;
  v9 = 2082;
  v10 = "width > 0 && height > 0";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, 0x2Cu);
}

void sub_101368A78()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101368B44()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101368C24()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101368D2C(uint64_t a1, id *a2, void *a3)
{
  v4 = *a2;
  v5 = a3;
  v6 = [v4 error];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [*a2 error];
  v10 = [v9 domain];
  v11 = [*a2 error];
  [v11 code];
  v18 = [*a2 error];
  sub_10013F740(&_mh_execute_header, v12, v13, "CRLAVPlayerController %p: Player looper failed with error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v14, v15, v16, v17, 2u);
}

void sub_101368EF8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101368FC4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101369180()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101369274()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101369360()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101369438()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101369524(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v13 = [a3 domain];
  [a3 code];
  sub_10013F740(&_mh_execute_header, v7, v8, "CRLAVPlayerController %p: Playback did fail with error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v9, v10, v11, v12, 2u);
}

void sub_101369644()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101369870()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101369948()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101369A78()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101369B44()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101369C10(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLAnimatedGIFLayer dealloc]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFLayer.m";
  v7 = 1024;
  v8 = 23;
  v9 = 2082;
  v10 = "mController";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101369D1C()
{
  sub_1000C5968();
  v3 = "[CRLGestureDispatcher initWithInteractiveCanvasController:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGestureDispatcher.m";
  v6 = 1024;
  v7 = 161;
  v8 = v0;
  v9 = "icc";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101369E08()
{
  sub_1000C5968();
  v2 = "[CRLGestureDispatcher handleGesture:]";
  sub_1000C88F0();
  v3 = 184;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d gestureTarget should not be nil, shouldReceiveTouch should have failed this gesture", v1, 0x22u);
}

void sub_101369ED8()
{
  sub_1000C5968();
  v2 = "[CRLGestureDispatcher handleGesture:withTarget:]";
  sub_1000C88F0();
  v3 = 221;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d handleGesture:withTarget: can only be called from a target's handleGesture: method", v1, 0x22u);
}

void sub_101369FBC()
{
  sub_1001A79F4();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void sub_10136A110()
{
  sub_1001A79F4();
  sub_1000C59AC();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136A20C()
{
  sub_1001A79F4();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100266C04();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136A2DC()
{
  sub_1001A79F4();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100266C04();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136A3AC()
{
  sub_1001A79F4();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136A47C()
{
  sub_1001A79F4();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100266C04();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136A54C()
{
  sub_1001A79F4();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136A61C()
{
  sub_1001A79F4();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136A700()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136A7D8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136A8A4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136A970()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136AA3C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136AB08()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136ABD4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136ACA0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136ADA8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136AE74()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136AF4C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136B068()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136B154()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136B220()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136B384()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136B470()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136B55C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136B63C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136B728()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136B800()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136B8E0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136B9CC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136BA98()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136BB64()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136BC30()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136BCFC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136BDC8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136BE94()
{
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
}

void sub_10136BF8C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136C050(void *a1, int a2)
{
  v3 = a1;
  v4 = +[CRLAssertionHandler packedBacktraceString];
  v5[0] = 67109378;
  v5[1] = a2;
  v6 = 2114;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, 0x12u);
}

void sub_10136C12C(void *a1, void *a2)
{
  v4 = a1;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = [sub_1000C59B8() domain];
  v7 = 138544130;
  v8 = v2;
  v9 = 2114;
  v10 = v6;
  v11 = 2048;
  v12 = [a2 code];
  v13 = 2112;
  v14 = a2;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error creating CRLAsset: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", &v7, 0x2Au);
}

void sub_10136C230()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136C2FC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136C3C8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

uint64_t sub_10136C494()
{
  sub_1000C5968();
  v4 = "[CRLImageProvider initWithImageData:]";
  v5 = v0;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageProvider.m";
  v7 = 1024;
  v8 = 35;
  v9 = v0;
  v10 = "imageData";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v3, 0x2Cu);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_10185FE80);
  return 0;
}

uint64_t sub_10136C58C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d subclasses of CRLImageProvider must implement -naturalSize", v2, v3, v4, v5, v7);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_10185FEC0);
  return 0;
}

uint64_t sub_10136C65C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d subclasses of CRLImageProvider must implement -isValid", v2, v3, v4, v5, v7);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_10185FF00);
  return 0;
}

uint64_t sub_10136C72C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d subclasses of CRLImageProvider must implement -drawImageInContext:rect:", v2, v3, v4, v5, v7);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_10185FF40);
  return 0;
}

void sub_10136C7FC(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLShapeCollectionDataSource p_shapeCollectionAtIndex:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeCollectionDataSource.m";
  v7 = 1024;
  v8 = 122;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Attempting to find a shape collection at an invalid index (NSNotFound).", v2, 0x22u);
}

void sub_10136CAD8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136CBA4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136CC7C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136CD54()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136CE2C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136CF04()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136CFD0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't calculate a percentage of a path with a NaN length.", v2, v3, v4, v5, v6);
}

void sub_10136D094()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't calculate a percentage of a path with no length or elements.", v2, v3, v4, v5, v6);
}

void sub_10136D158()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't get a point on an empty path.", v2, v3, v4, v5, v6);
}

void sub_10136D230()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d -rawGradientAt:fromElement: can't handle move to.", v2, v3, v4, v5, v6);
}

void sub_10136D308()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d -curvatureAt:fromElement: can't handle move to.", v2, v3, v4, v5, v6);
}

void sub_10136D408()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLPathNearestAngleOnPathToLineApplier doesn't handle quad curves or some other element type", v2, v3, v4, v5, v6);
}

void sub_10136D4CC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Degenerate curve! Cannot do intersection logic correctly", v2, v3, v4, v5, v6);
}

void sub_10136D590()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Did not clean up properly at end of drag operation!", v2, v3, v4, v5, v6);
}

void sub_10136D654()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_10136D72C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Called dragging entered when we were already in state entered!", v2, v3, v4, v5, v6);
}

void sub_10136D8B8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d draggingUpdated called without draggingEntered called first!", v2, v3, v4, v5, v6);
}

void sub_10136D968(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, 2u);
}

void sub_10136DA7C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d draggingExited called without draggingEntered called first!", v2, v3, v4, v5, v6);
}

void sub_10136DB68()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d draggingUpdated called without draggingEntered called first!", v2, v3, v4, v5, v6);
}

void sub_10136DC40()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d OS shouldn't tell us to perform drag operation when -shouldAllowDragOperationForDragInfo returns NO", v2, v3, v4, v5, v6);
}

void sub_10136DD40()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Called performIndirectDragOperationWithDragInfo when we were already in a drag!", v2, v3, v4, v5, v6);
}

void sub_10136DE18()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Indirect drops should never reject the resulting insert", v2, v3, v4, v5, v6);
}

void sub_10136DEDC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Called performIndirectDragOperationWithDragInfo when we were already in a drag!", v2, v3, v4, v5, v6);
}

void sub_10136DFB4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Indirect drops should never reject the resulting insert", v2, v3, v4, v5, v6);
}

void sub_10136E0C8()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10136E1A0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpectedly being asked to cleanup DnD when in state Idle", v2, v3, v4, v5, v6);
}

void sub_10136E264()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10136E328(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, 2u);
}

void sub_10136E400()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d If we have a drag destination, our drag operation should not be None", v2, v3, v4, v5, v6);
}

void sub_10136E4B0(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, 2u);
}

void sub_10136E5D8(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, 2u);
}

void sub_10136E69C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Showing canvas highlight when a rep is highlighted", v2, v3, v4, v5, v6);
}

void sub_10136E7D8()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

uint64_t sub_10136E8B0(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (a2 < a2 + a3)
    {
      sub_10041F8B8();
    }
  }

  return result;
}

void sub_10136E9A0()
{
  sub_10041FC78();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1001A7A10();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136EA70()
{
  sub_10041FC78();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1001A7A10();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136EB54()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136EC20()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136ED48()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1001A7A10();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unsupported BOOLean operation type: %zu", v2, 0x2Cu);
}

void sub_10136EE34()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136EF00()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136EFEC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136F108()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136F1F4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

uint64_t sub_10136F2CC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101861260);
  return 0;
}

uint64_t sub_10136F3C4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_1018612A0);
  return 0;
}

void sub_10136F4A8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136F574()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136F660()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136F72C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136F814()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136F8E0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136F9AC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10136FA98()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136FBC8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136FCF8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10136FDC4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10136FE98()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10136FF80()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013700B8(uint64_t a1, int a2)
{
  v4[0] = 67110146;
  v4[1] = a2;
  v5 = 2082;
  sub_1000C59AC();
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSString_CRLAdditions.m";
  v7 = 1024;
  v8 = 1342;
  v9 = 2112;
  v10 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to make a string out of data with UTI %@", v4, 0x2Cu);
}

void sub_10137022C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013702F8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013703E4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013704D0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013705A8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101370674()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101370754()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101370820()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013708EC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013709C4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101370A9C(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "CRLInputType CRLInputTypeForUITouchType(UITouchType)";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLInputType.m";
  v7 = 1024;
  v8 = 20;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected touch type UITouchTypeIndirect", v2, 0x22u);
}

void sub_101370B98()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101370C84()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101370E14()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101370EF4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101370FE0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013710C0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10137121C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013712F4(void *a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 134218240;
  *(&v3 + 4) = *a1;
  WORD6(v3) = 2048;
  HIWORD(v3) = a2;
  sub_10042EDB8(&_mh_execute_header, a2, a3, "%p export session finished with status %li", v3, *(&v3 + 1));
}

void sub_1013713D4()
{
  sub_1000C8938();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  sub_10042EDB8(&_mh_execute_header, v0, v1, "Export session produced output larger than input (%llu vs. %llu). Checking compatibility.", v2, v3);
}

void sub_1013714DC(id *a1, void *a2)
{
  v3 = *a1;
  v4 = *a1;
  v5 = a2;
  [v3 UTF8String];
  sub_1000C8938();
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Preset (%s) is more compatible than input. Using output.", v6, 0xCu);
}

void sub_101371594(char a1, NSObject *a2)
{
  v2 = "less";
  if (a1)
  {
    v2 = "more";
  }

  v3 = "input";
  if (a1)
  {
    v3 = "output";
  }

  v4 = 136315394;
  v5 = v2;
  v6 = 2080;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Output was %s compatible. Using %s.", &v4, 0x16u);
}

void sub_1013718D8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013719C4(uint64_t a1, int a2)
{
  v4[0] = 67110146;
  v4[1] = a2;
  v5 = 2082;
  v6 = "[CRLMovieCompatibilityConverter p_checkInitialCompatibilityLevelWithCompletionHandler:]";
  v7 = 2082;
  sub_1000C599C();
  v8 = 427;
  v9 = 2048;
  v10 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d mInitialCompatibilityLevel is %zd, not CRLMediaCompatibilityLevelUnknown", v4, 0x2Cu);
}

void sub_101371AB8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101371B98()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101371C84()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101371D5C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101371E28()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101371EF4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101371FAC(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_10137207C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101372140(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_101372210()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013722D4(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_1013723A4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101372468(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_101372538()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013725FC(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_1013726B8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101372788()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101372858()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10137293C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101372A20()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101372B04()
{
  sub_1000C5968();
  v2 = "[CRLConnectionLineEditor insertAndConnectBoardItem:postProcessBlock:]";
  sub_1000C88F0();
  v3 = 338;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Connection line already has something connected to its to-end.", v1, 0x22u);
}

void sub_101372BE8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101372CCC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101372D9C()
{
  sub_1000C5968();
  v2 = "[CRLConnectionLineEditor saveDefaultInsertionPreset:]";
  sub_1000C88F0();
  v3 = 423;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Only should save default style with a single object selected!", v1, 0x22u);
}

void sub_101372E6C(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLImageMaskResizer initWithInteractiveCanvasController:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageMaskResizer.m";
  v7 = 1024;
  v8 = 28;
  v9 = 2082;
  v10 = "interactiveCanvasController";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101372F64(uint64_t a1, int a2)
{
  LODWORD(v4) = 67110146;
  HIDWORD(v4) = a2;
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v2, v3, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Catalog color (named %@) is missing.", v4);
}

void sub_101373030()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10137311C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013731FC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013732DC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013733BC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10137349C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101373568()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101373640(uint64_t a1, int a2)
{
  LODWORD(v4) = 67110146;
  HIDWORD(v4) = a2;
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v2, v3, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid hex string: %@", v4);
}

void sub_10137370C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013737E4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013738B0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101373988(void *a1)
{
  v2 = a1;
  v3 = [sub_1000C59B8() CGColor];
  CGColorGetNumberOfComponents(v3);
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1001A7A10();
  sub_1000CDD68();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void sub_101373A8C(void *a1)
{
  v2 = a1;
  v3 = [sub_1000C59B8() CGColor];
  CGColorGetNumberOfComponents(v3);
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1001A7A10();
  sub_1000CDD68();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void sub_101373B90(void *a1)
{
  v2 = a1;
  v3 = [sub_1000C59B8() CGColor];
  CGColorGetNumberOfComponents(v3);
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1001A7A10();
  sub_1000CDD68();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void sub_101373C94()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1001A7A10();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unhandled contrast scenario (%zu).");
}

void sub_101373D70()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101373E3C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101373F08(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLWPGrammarResults grammarResultForCharIndex:outRange:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSpellingResults.m";
  v7 = 1024;
  v8 = 185;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No grammar error found for range", v2, 0x22u);
}

void sub_101373FF0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Trying to make a non-rounded-rectangle path continuously curve", v2, v3, v4, v5, v6);
}

void sub_1013740B4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d called cornerRadius on wrong type pathSource", v2, v3, v4, v5, v6);
}

void sub_101374178()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d called cornerRadius on wrong type pathSource", v2, v3, v4, v5, v6);
}

void sub_10137423C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d called numberOfSides on wrong type pathSource", v2, v3, v4, v5, v6);
}

void sub_101374300()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Need to provide feedback string for chevron!", v2, v3, v4, v5, v6);
}

void sub_1013743C4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Need to provide axLabel component string for chevron!", v2, v3, v4, v5, v6);
}

void sub_101374488()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Need to provide axValue string for chevron!", v2, v3, v4, v5, v6);
}

void sub_101374560()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, v3, v4, v5, v6);
}

void sub_101374630()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, v3, v4, v5, v6);
}

void sub_101374700()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, v3, v4, v5, v6);
}

void sub_1013747D0()
{
  sub_1000C5968();
  v3 = "[CRLBoardItemImporter p_placeholderInit]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m";
  v6 = 1024;
  v7 = 293;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", v2, 0x22u);
}

void sub_1013748AC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10137497C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Must call -teardown on ICC before it is deallocated", v2, v3, v4, v5, v6);
}

void sub_101374A54()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Must call -teardown on CVC before ICC is deallocated", v2, v3, v4, v5, v6);
}

void sub_101374B2C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Layer host must be cleared out of ICC before it is deallocated, to avoid a zombie crash.", v2, v3, v4, v5, v6);
}

void sub_101374C04()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d ObjCTypes string overflowed", v2, v3, v4, v5, v6);
}

void sub_101374CDC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The OS undo gestures should not be sending us selectors we can't respond to!", v2, v3, v4, v5, v6);
}

void sub_101374DA0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101374E78()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d removeBackgroundRenderingObject called on an object that is not in the array", v2, v3, v4, v5, v6);
}

void sub_101374F3C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected re-use of ICC with a different delegate", v2, v3, v4, v5, v6);
}

void sub_101375000()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013750EC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013751D8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013752B0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101375388()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_10137544C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101375524()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013755FC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_1013756D4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not suppress layer updates unless collab is suspended!", v2, v3, v4, v5, v6);
}

void sub_1013757C0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d editor controller mismatch", v2, v3, v4, v5, v6);
}

void sub_101375898()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Negative reentrancy counter", v2, v3, v4, v5, v6);
}

void sub_101375970()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d ICC delegate must provide the editor controller! (You probably need to give it a document selection through canvas selection, too.)", v2, v3, v4, v5, v6);
}

void sub_101375A34(void *a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a1;
  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  v12 = NSStringFromCGRect(v19);
  v14[0] = 67110146;
  v14[1] = a2;
  sub_10022BC84();
  sub_1000C59AC();
  v15 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m";
  sub_1001715C4();
  v16 = 1559;
  v17 = 2114;
  v18 = v13;
  _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Don't know how to handle desired zoom rect %{public}@!", v14, 0x2Cu);
}

void sub_101375B80(void *a1)
{
  v2 = a1;
  v3 = [sub_1000C59B8() delegate];
  sub_10022BC84();
  sub_1000C59AC();
  sub_1001715C4();
  sub_1000C5A00();
  sub_1000CDD68();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void sub_101375CA0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101375D78(void *a1)
{
  v2 = a1;
  v3 = [sub_1000C59B8() delegate];
  sub_10022BC84();
  sub_1000C59AC();
  sub_1001715C4();
  sub_1000C5A00();
  sub_1000CDD68();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void sub_101375E84(uint64_t a1, int a2)
{
  LODWORD(v4) = 67110146;
  HIDWORD(v4) = a2;
  sub_10022BC84();
  sub_1000C59AC();
  sub_1001715C4();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v2, v3, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Caller set a selection path that does not want to set selection or scroll: %@", v4);
}

void sub_101375F54()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Scroll options CRLCanvasScrollOptionWaitForViewLayoutIfNeeded and CRLCanvasScrollOptionScrollForcingLayoutIfNeeded are mutually exclusive", v2, v3, v4, v5, v6);
}

void sub_10137602C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Scrolling automatically in an unsupported configuration!", v2, v3, v4, v5, v6);
}

void sub_1013760F0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_1013761B4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot calculate unobscured frame without view", v2, v3, v4, v5, v6);
}

void sub_101376278()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d We expect a superview for bounds calculation", v2, v3, v4, v5, v6);
}

void sub_10137633C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot tell scrollRectToVisible to zoom!", v2, v3, v4, v5, v6);
}

void sub_101376414()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot tell scrollRectToVisible to zoom!", v2, v3, v4, v5, v6);
}

void sub_1013764D8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d You shouldn't ask to grow the canvas if the canvas doesn't grow in general", v2, v3, v4, v5, v6);
}

void sub_10137659C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101376674()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d If we're given any info without a parent, we should have been given at least one info with a parent, too.", v2, v3, v4, v5, v6);
}

void sub_101376738()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101376810()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d couldn't remove rep from parent", v2, v3, v4, v5, v6);
}

void sub_1013768D4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013769AC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101376A84()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101376B5C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101376C34(uint64_t a1, int a2)
{
  LODWORD(v4) = 67110146;
  HIDWORD(v4) = a2;
  LOWORD(v5) = 2082;
  *(&v5 + 2) = "[CRLInteractiveCanvasController collaboratorCursorSelectionPathChangedFromSelectionPath:toSelectionPath:collaboratorPresence:]_block_invoke_2";
  WORD5(v5) = 2082;
  sub_1000C599C();
  sub_1000C5A14(&_mh_execute_header, v2, v3, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Could not determine HUD position for selection path %@", v4, v5, DWORD2(v5));
}

void sub_101376D18()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101376DDC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101376EA0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101376F64()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_10137703C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101377114()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_1013771D8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should only update HUD on the layout thread.", v2, v3, v4, v5, v6);
}

void sub_10137733C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101377414()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Showing two huds for the same lobby session", v2, v3, v4, v5, v6);
}

void sub_1013774D8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should only update HUD on the layout thread.", v2, v3, v4, v5, v6);
}

void sub_10137759C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should only update HUD on the layout thread.", v2, v3, v4, v5, v6);
}

void sub_101377660()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should only update HUD on the layout thread.", v2, v3, v4, v5, v6);
}

void sub_101377724()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d didn't end previous dynamic operation before starting a new one", v2, v3, v4, v5, v6);
}

void sub_1013777FC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Inspector-driven dynamic operation in process when beginning separate dynamic operation", v2, v3, v4, v5, v6);
}

void sub_1013778C0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d didn't begin or already ending dynamic operation", v2, v3, v4, v5, v6);
}

void sub_101377984()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d ending dynamic operation without starting a new one or calling willEnd", v2, v3, v4, v5, v6);
}

void sub_101377A5C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot begin inspector dynamic operation while in non-inspector dynamic operation", v2, v3, v4, v5, v6);
}

void sub_101377B20()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Ended more dynamic operations than you began!", v2, v3, v4, v5, v6);
}

void sub_101377BE4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101377CD0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101377DBC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101377E94()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101377F80()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101378058()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101378130()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Temporary additional board items should not already be in our model!", v2, v3, v4, v5, v6);
}

void sub_1013781F4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d change notifications should only come in on the main thread", v2, v3, v4, v5, v6);
}

void sub_1013782CC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d failed to perform locked action", v2, v3, v4, v5, v6);
}

void sub_101378390()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Don't expect to have changed text on background thread", v2, v3, v4, v5, v6);
}

void sub_101378454()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Don't expect to have changed selection on background thread", v2, v3, v4, v5, v6);
}

void sub_101378518()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d animation nesting not yet supported", v2, v3, v4, v5, v6);
}

void sub_1013785DC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d can't commit if we don't have an animation open", v2, v3, v4, v5, v6);
}

void sub_1013786A0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d i_layout should only be called by our CV, from the main thread", v2, v3, v4, v5, v6);
}

void sub_101378764()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10137883C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101378928()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101378A00()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Content offset was outside the expected range! Clamping to a possibly sane value.", v2, v3, v4, v5, v6);
}

void sub_101378AD8()
{
  sub_1000C5968();
  v3 = "[CRLAdditionalTransformCoordinateSpace initWithCoordinateSpace:identifier:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLAdditionalTransformCoordinateSpace.m";
  v6 = 1024;
  v7 = 23;
  v8 = v0;
  v9 = "coordinateSpace";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101378BD8()
{
  sub_1000C5968();
  v3 = "[CRLAdditionalTransformCoordinateSpace initWithCoordinateSpace:identifier:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLAdditionalTransformCoordinateSpace.m";
  v6 = 1024;
  v7 = 25;
  v8 = v0;
  v9 = "identifier";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101378CC4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101378D80(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_101378E50()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101378F0C(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_101378FC8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101379084(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_101379154()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101379210(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_1013792CC()
{
  sub_1000C5968();
  v3 = "+[CRLIOUtils newCGDataProviderForReadChannel:length:outInfo:outCallbacks:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLIOUtils.m";
  v6 = 1024;
  v7 = 157;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Need a seekable input stream for CGDataProvider", v2, 0x22u);
}

void sub_101379420(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [a3 domain];
  v9 = 138413314;
  v10 = a1;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  v15 = 2048;
  v16 = [a3 code];
  v17 = 2112;
  v18 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error importing drawable from URL (%@): errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", &v9, 0x34u);
}

void sub_10137953C(void *a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 67110146;
  HIDWORD(v3) = a2;
  *v4 = 2082;
  *&v4[2] = "[CRLInfoImporterBoardItemProvider provideBoardItemWithFactory:completionHandler:]";
  *&v4[10] = 2082;
  *&v4[12] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLInfoImporterBoardItemProvider.m";
  *&v4[20] = 1024;
  *&v4[22] = 132;
  *&v4[26] = 2114;
  *&v4[28] = *a1;
  sub_1000C5A14(&_mh_execute_header, a2, a3, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to create a UTType for %{public}@", v3, *v4, *&v4[8], *&v4[16], *&v4[24], *&v4[32]);
}

void sub_10137963C()
{
  sub_1000C59E0();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Error %@ creating pre-insertion asset wrapper for data.");
}

void sub_101379720()
{
  sub_1000C59E0();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Error %@ creating pre-insertion asset wrapper for data.");
}

void sub_101379804(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLInfoImporterBoardItemProvider provideBoardItemWithFactory:completionHandler:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLInfoImporterBoardItemProvider.m";
  v7 = 1024;
  v8 = 191;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No data or URL available. Unable to import.", v2, 0x22u);
}

void sub_1013798EC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013799D8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101379AB8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101379B84()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101379C5C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101379D3C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101379E28()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101379F00()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101379FEC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10137A0D8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10137A230()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10137A2FC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10137A418()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10137A4F0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10137A5BC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10137A764()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10137A86C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10137A944()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10137AA30()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10137AB10()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10137ABE8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10137ACC8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Archive is closed", v2, v3, v4, v5, v6);
}

void sub_10137ADC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [sub_1000C59B8() name];
  sub_1000CDD68();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_10137AEB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [sub_1000C59B8() name];
  sub_10047EC40();
  sub_1000CDD68();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

void sub_10137AF80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [sub_1000C59B8() name];
  sub_10047EC40();
  sub_1000CDD68();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

void sub_10137B050(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v9 = [v2 name];
  sub_10010A518();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10137B0F0()
{
  v0 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101865958);
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v16) = 67109890;
    HIDWORD(v16) = v0;
    *v17 = 2082;
    *&v17[2] = "[CRLZipReadChannel processData:CRC:isDone:handler:]_block_invoke";
    *&v17[10] = 2082;
    *&v17[12] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipReadChannel.m";
    *&v17[20] = 1024;
    *&v17[22] = 259;
    sub_10010A518();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101865978);
  }

  v1 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v9 = v1;
    v10 = +[CRLAssertionHandler packedBacktraceString];
    sub_1000C5950();
    sub_10010A518();
    _os_log_error_impl(v11, v12, v13, v14, v15, 0x12u);
  }

  v2 = [NSString stringWithUTF8String:"[CRLZipReadChannel processData:CRC:isDone:handler:]_block_invoke", v16, *v17, *&v17[16], *&v17[24]];
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipReadChannel.m"];
  [CRLAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:259 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];
}

void sub_10137B308()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Already closed", v2, v3, v4, v5, v6);
}

void sub_10137B3E0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Low water is too small", v2, v3, v4, v5, v6);
}

void sub_10137B4A4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Already closed", v2, v3, v4, v5, v6);
}

void sub_10137B57C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Stroke tool should only be initialized with a stroke tool type (got %zu).");
}

void sub_10137B648()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10137B714()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10137B7F4()
{
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
}

void sub_10137B8EC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLPKStrokeConverter returned an empty path ending at pointIndex: %lu.");
}

void sub_10137B9B8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10137BA90()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10137BB68()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10137BC54()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10137BD40()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10137BE2C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10137BF18()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10137BFF8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10137C0D8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10137C1A4(uint64_t a1, int a2)
{
  LODWORD(v4) = 67110146;
  HIDWORD(v4) = a2;
  LOWORD(v5) = 2082;
  *(&v5 + 2) = "[CRLFreehandDrawingToolStroke p_currentPKInkType]";
  WORD5(v5) = 2082;
  sub_1000C599C();
  sub_1000C5A14(&_mh_execute_header, v2, v3, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected tool type for rendering with PencilKit (%zu). Defaulting to pen ink.", v4, v5, DWORD2(v5));
}

void sub_10137C288()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10137C374()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10137C460()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10137C538()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10137C604()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10137C6D0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10137C79C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d begin possible op with ICC in dynamic operation", v2, v3, v4, v5, v6);
}

void sub_10137C874()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d beginning possible operation without ending previous operation", v2, v3, v4, v5, v6);
}

void sub_10137C938()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d begin op with ICC in dynamic operation", v2, v3, v4, v5, v6);
}

void sub_10137CA10()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d beginning operation without ending previous operation", v2, v3, v4, v5, v6);
}

void sub_10137CAE8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No controlling TM when beginning operation", v2, v3, v4, v5, v6);
}

void sub_10137CBC0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d tracker controller should not commit dynamic changes", v2, v3, v4, v5, v6);
}

void sub_10137CCE8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d ending op with ICC still in dynamic operation", v2, v3, v4, v5, v6);
}

void sub_10137CDAC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d cancelling when not in operation", v2, v3, v4, v5, v6);
}

void sub_10137CE70()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d cannot begin transforming reps until we are in a transform", v2, v3, v4, v5, v6);
}

void sub_10137CF34(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_10019F734(&_mh_execute_header, v4, v5, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d tracker is handling GR %@ when not in a transform", v6, v7, v8, v9, 2u);
}

void sub_10137D050(void *a1)
{
  v2 = a1;
  v3 = [sub_1000C59B8() tracker];
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000CDD68();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void sub_10137D158(uint64_t a1, int a2)
{
  v3[0] = 67110146;
  v3[1] = a2;
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d controlling GR reset in an operation, but we aren't in an operation! %@", v3, 0x2Cu);
}

void sub_10137D234(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_10019F734(&_mh_execute_header, v4, v5, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d tracker is handling TM %@ when not in a transform", v6, v7, v8, v9, 2u);
}

void sub_10137D350(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_10022BC84();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_10019F734(&_mh_execute_header, v4, v5, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Controlling TM %@ has different dynamic operation expectations than current operation", v6, v7, v8, v9, 2u);
}

void sub_10137D458()
{
  sub_1000C5968();
  v3 = "[CRLShapeRepHelperDefault drawInContext:withContent:strokeDrawOptions:withOpacity:usingPathOverride:patternOffsetsBySubpathOverride:transparencyLayersBySubpath:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRepHelperDefault.m";
  v6 = 1024;
  v7 = 109;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Canvas and CGContext disagree about whether we are suppressing backgrounds", v2, 0x22u);
}

void sub_10137D520()
{
  v0 = +[CRLAssertionHandler packedBacktraceString];
  sub_10015B6E4();
  sub_100100F84(&_mh_execute_header, v1, v2, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v3, v4, v5, v6, v7);
}

void sub_10137D5E8()
{
  sub_1000C5968();
  v3 = "[CRLShapeRepHelperDefault drawInContext:withContent:strokeDrawOptions:withOpacity:usingPathOverride:patternOffsetsBySubpathOverride:transparencyLayersBySubpath:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRepHelperDefault.m";
  v6 = 1024;
  v7 = 339;
  v8 = v0;
  v9 = "transparencyLayersBySubpath";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10137D6D4()
{
  sub_10041FC78();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100266C04();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d New device size not handled (%f). Defaulting to CRLUIScreenClassPhoneUISmall.", v2, v3, v4, v5, v6);
}

void sub_10137D798()
{
  sub_10041FC78();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100266C04();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d New device size not handled (%f). Defaulting to CRLUIScreenClassPhoneUIRegularZoom.", v2, v3, v4, v5, v6);
}

void sub_10137D85C()
{
  sub_10041FC78();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100266C04();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d New device size not handled (%f). Defaulting to CRLUIScreenClassPhoneUIRegularPlus.", v2, v3, v4, v5, v6);
}

void sub_10137D920()
{
  sub_10041FC78();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100266C04();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d New device size not handled (%f). Defaulting to CRLUIScreenClassPhoneUIRegular.", v2, v3, v4, v5, v6);
}

void sub_10137D9E4()
{
  sub_10041FC78();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100266C04();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d New device size not handled (%f). Defaulting to CRLUIScreenClassPhoneUILarge.", v2, v3, v4, v5, v6);
}

void sub_10137DC38()
{
  sub_1000C5968();
  v2 = "+[UIScreen(CRLAdditions) crl_resetScreenScaleCache]";
  sub_1000C88F0();
  v3 = 327;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No one should look at the screen scale before the application has finished launching, because the value isn't ready yet and may change! To debug, break in UIScreen.crl_screenScale and re-launch the app.", v1, 0x22u);
}

void sub_10137DD08()
{
  sub_1000C5968();
  v2 = "+[UIScreen(CRLAdditions) crl_is3xScreenScale]";
  sub_1000C88F0();
  v3 = 347;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unsupported screen scale.", v1, 0x22u);
}

void sub_10137DE28()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The shape library and basic shape library must be in the same locale.", v2, v3, v4, v5, v6);
}

void sub_10137DEEC()
{
  sub_1000C5968();
  v4 = "[CRLShapeSearchResultsCollection numberOfShapesInSection:]";
  v5 = v0;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchResultsCollection.m";
  v7 = 1024;
  v8 = 131;
  v9 = 2048;
  v10 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to retrieve the number of shapes in a section (%lu) beyond the size of the number of sections in the search results", v3, 0x2Cu);
}

void sub_10137E050()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d separatedBasicResults must only contain 4 elements.", v2, v3, v4, v5, v6);
}

void sub_10137E128()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d separatedShapeLibraryResults must only contain 4 elements.", v2, v3, v4, v5, v6);
}

void sub_10137E200()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d allShapes cannot be nil.", v2, v3, v4, v5, v6);
}

void sub_10137E2C4()
{
  sub_1000C5968();
  v3 = "[CRLShapeSearchResultsCollection p_sequentialShapePosition:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchResultsCollection.m";
  v6 = 1024;
  v7 = 329;
  v8 = v0;
  v9 = "self.p_shapeLibrary";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10137E3C4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Comparison of shape position must return either ascending or descending.", v2, v3, v4, v5, v6);
}

void sub_10137E488()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10137E56C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10137E63C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10137E720()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10137E804()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10137E8D4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10137E9B8(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLConnectionLineKnobTracker moveKnobToRepPosition:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLineKnobTracker.m";
  v7 = 1024;
  v8 = 801;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d wrong knob type for line segment resize", v2, 0x22u);
}

void sub_10137EAA0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d teardown not called for CRLCanvasView.", v2, v3, v4, v5, v6);
}

void sub_10137EB64()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d shouldn't try to set canvasView's controller more than once", v2, v3, v4, v5, v6);
}

void sub_10137EC28()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d attempting to call teardown on an instance of CRLCanvasView that has already been torn down.", v2, v3, v4, v5, v6);
}

void sub_10137ECEC(void *a1)
{
  v2 = a1;
  v8 = [sub_1000C59B8() identifier];
  sub_1000CDD68();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Cu);
}

void sub_10137EE10()
{
  sub_1000C5968();
  v3 = "[CRLCanvasView additionalTransformIntoCoordinateSpace:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasView.m";
  v6 = 1024;
  v7 = 178;
  v8 = v0;
  v9 = "icc";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10137EF10()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d reps conforming to CRLPathEditableRep protocol only valid for path node knob tracker", v2, v3, v4, v5, v6);
}

void sub_10137EFE8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d wrong knob for path node knob tracker", v2, v3, v4, v5, v6);
}

void sub_10137F0C0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d knob tracker should never have a null knob", v2, v3, v4, v5, v6);
}

void sub_10137F198()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d should have created a knob, but got nil", v2, v3, v4, v5, v6);
}

void sub_10137F25C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't close command group. This is bad news.", v2, v3, v4, v5, v6);
}

void sub_10137F320(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[CRLInstantAlphaSeedFill newSeedFillWithImage:seedPoint:context:oldFill:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaSeedFill.m";
  v7 = 1024;
  v8 = 178;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d can't allocate span stack", v2, 0x22u);
}

void sub_10137F4E4(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLiOSPresetCollectionViewController p_setupUIInLabeledCell:atIndexPath:context:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSPresetCollectionViewController.m";
  v7 = 1024;
  v8 = 476;
  v9 = 2082;
  v10 = "localizedName";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10137F5DC(int a1, NSObject *a2, double a3)
{
  v3[0] = 67110146;
  v3[1] = a1;
  v4 = 2082;
  v5 = "void CRLPKInputSmoother::setSmoothingThresholdMultiplier(CGFloat)";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKInputSmoother.mm";
  v8 = 1024;
  v9 = 27;
  v10 = 2048;
  v11 = a3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected multiplier value < 0 (%f).", v3, 0x2Cu);
}

void sub_10137F6F8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't provide an image renderer for a non-finite size", v2, v3, v4, v5, v6);
}

void sub_10137F7D0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should be able to lock new renderer.", v2, v3, v4, v5, v6);
}

void sub_10137F894()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CGContext has an invalid associated screen scale.", v2, v3, v4, v5, v6);
}

void sub_10137F958()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d renderedCGImage shouldn't be NULL", v2, v3, v4, v5, v6);
}

void sub_10137FA1C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d completionMultiplyImage shouldn't be NULL", v2, v3, v4, v5, v6);
}

void sub_10137FAF4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d completionAddImage shouldn't be NULL", v2, v3, v4, v5, v6);
}

void sub_10137FBCC(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "[CRLiOSDeterminateProgressViewController animateTransition:]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSDeterminateProgressViewController.m";
  v8 = 1024;
  v9 = 470;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown transition: %@", v3, 0x2Cu);
}

void sub_10137FCC4()
{
  sub_1000C5968();
  v3 = "[CRLiOSShapePresetCollectionViewLayoutProvider cellRegistrationDictionary]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapePresetCollectionViewLayoutProvider.m";
  v6 = 1024;
  v7 = 73;
  v8 = v0;
  v9 = "cellNib";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10137FDC4()
{
  sub_1000C5968();
  v3 = "[CRLiOSShapePresetCollectionViewLayoutProvider cellRegistrationDictionary]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapePresetCollectionViewLayoutProvider.m";
  v6 = 1024;
  v7 = 74;
  v8 = v0;
  v9 = "labeledCellNib";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10137FEB0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Table View Cell style Value2 is not supported in CRLiOSInspectorTableViewCell.", v2, v3, v4, v5, v6);
}

void sub_10137FF88()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Table View Cell style Value2 is not supported in CRLiOSInspectorTableViewCell.", v2, v3, v4, v5, v6);
}

void sub_10138004C()
{
  sub_1000C5968();
  sub_1000C88F0();
}

void sub_101380110()
{
  sub_1000C5968();
  sub_1000C88F0();
}

void sub_1013801D4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil table view if index path was also nil", v2, v3, v4, v5, v6);
}

void sub_1013802AC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil delegate if table view was also nil", v2, v3, v4, v5, v6);
}

void sub_101380370(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLCanvasButtonKnobTracker initWithRep:knob:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasButtonKnobTracker.m";
  v7 = 1024;
  v8 = 27;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d button knob tracker made without a button knob", v2, 0x22u);
}

void sub_101380480()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLUndoManager: undo manager has been overridden. This call is unexpected: beginUndoGrouping", v2, v3, v4, v5, v6);
}

void sub_101380544()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLUndoManager: undo manager has been overridden. This call is unexpected: endUndoGrouping", v2, v3, v4, v5, v6);
}

void sub_101380608()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Disable count underflow", v2, v3, v4, v5, v6);
}

void sub_1013806CC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLUndoManager: undo manager has been overridden. This call is unexpected: groupsByEvent", v2, v3, v4, v5, v6);
}

void sub_101380790()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLUndoManager: undo manager has been overridden. This call is unexpected: setGroupsByEvent:", v2, v3, v4, v5, v6);
}

void sub_101380854()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLUndoManager: undo manager has been overridden. This call is unexpected: setLevelsOfUndo:", v2, v3, v4, v5, v6);
}

void sub_101380918()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLUndoManager: undo manager has been overridden. This call is unexpected: setRunLoopModes:", v2, v3, v4, v5, v6);
}

void sub_1013809DC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLUndoManager: undo manager has been overridden. This call is unexpected.", v2, v3, v4, v5, v6);
}

void sub_101380AA0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLUndoManager: undo manager has been overridden. This call is unexpected.", v2, v3, v4, v5, v6);
}

void sub_101380B64()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLUndoManager: undo manager has been overridden. This call is unexpected: removeAllActionsWithTarget:", v2, v3, v4, v5, v6);
}

void sub_101380C28()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLUndoManager: undo manager has been overridden. This call is unexpected: registerUndoWithTarget", v2, v3, v4, v5, v6);
}

void sub_101380CEC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLUndoManager: undo manager has been overridden. This call is unexpected: prepareWithInvocationTarget", v2, v3, v4, v5, v6);
}

void sub_101380DB0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLUndoManager: undo manager has been overridden. This call is unexpected: setActionName:", v2, v3, v4, v5, v6);
}

void sub_101380E74()
{
  sub_1000C5968();
  v2 = "[CRLFreehandDrawingSelectionDecorator tearDown]";
  sub_1000C88F0();
  v3 = 32;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not call -tearDown twice.", v1, 0x22u);
}

void sub_101380F44()
{
  sub_1000C5968();
  v2 = "[CRLFreehandDrawingSelectionDecorator dealloc]";
  sub_1000C88F0();
  v3 = 40;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d You must call -tearDown before deallocation.", v1, 0x22u);
}

void sub_101381014()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013810E4()
{
  sub_1000C5968();
  v2 = "[CRLShapeLayout setGeometry:]";
  sub_1000C88F0();
  v3 = 194;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d You should not be setting the geometry on a shape except via its own validation logic, or via -offsetGeometryBy: Please talk to drawables if you think you want to do this.", v1, 0x22u);
}

void sub_1013811C8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101381298()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101381368()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101381438()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138151C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101381600()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013816E4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013817A0()
{
  sub_1001A7A04();
  v0 = +[CRLAssertionHandler packedBacktraceString];
  sub_10015B6E4();
  sub_1000C88E0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10138186C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101381950()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101381A34()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101381B18()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101381BFC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101381CE0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101381DC4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101381EA8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101381F8C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101382070()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101382140()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101382210()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013822F4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013823D8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013824BC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138258C()
{
  sub_1000C5968();
  v2 = "[CRLShapeLayout p_applyResizeTransform:transformInParentSpace:preservingAspectRatio:layoutSize:geometryForLayout:hasHorizontalFlip:hasVerticalFlip:]";
  sub_1000C88F0();
  v3 = 1046;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d A shape taking a size should not be in a generic dynamic state, or static state", v1, 0x22u);
}

void sub_101382670()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101382754()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101382838(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  sub_1000C59AC();
  sub_1000C88E0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);
}

void sub_101382960()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101382A44()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101382B14()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101382BE4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101382CB4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101382D84()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad adornments type (expected kAdornmentsTypeInvisibles or kAdornmentsTypeInvisiblesBreak", v2, v3, v4, v5, v6);
}

void sub_101382E48()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad adornments type (expected kAdornmentsTypeEmphasisMarks or kAdornmentTypeHiddenDeletions", v2, v3, v4, v5, v6);
}

void sub_101382F0C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad adornments type (expected kAdornmentsTypeAttachments", v2, v3, v4, v5, v6);
}

void sub_101382FD0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013830B0()
{
  sub_1000C5968();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013831AC()
{
  sub_1000C5968();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101383438()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101383540()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10138360C(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "CGFloat CRLNormalize(CGFloat, CGFloat, CGFloat)";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLMath.m";
  v7 = 1024;
  v8 = 88;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d max >= min!", v2, 0x22u);
}

void sub_1013836F4(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a2 domain];
  v7 = 138544130;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  v11 = 2048;
  v12 = [a2 code];
  v13 = 2112;
  v14 = a2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error creating CRLAsset: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", &v7, 0x2Au);
}

uint64_t sub_1013837FC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Passing in nil is invalid.", v2, v3, v4, v5, v7);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101868C60);
  return 0;
}

uint64_t sub_1013838CC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Creating retain cycle between gradient and its shading ref", v2, v3, v4, v5, v7);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_1018689F8);
  return 0;
}

uint64_t sub_1013839D8(int a1, NSObject *a2)
{
  v3[0] = 67110402;
  v3[1] = a1;
  v4 = 2082;
  v5 = "[CRLGradientFill p_newColorInShadingColorSpaceFromColor:]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGradientFill.m";
  v8 = 1024;
  v9 = 299;
  v10 = 2082;
  v11 = "originalColorSpace";
  v12 = 2082;
  v13 = "CRLColorRGBSpaceSRGB";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected equality between %{public}s and %{public}s", v3, 0x36u);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101868A78);
  return 0;
}

uint64_t sub_101383AEC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Shading color space should not be unspecified.", v2, v3, v4, v5, v7);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101868A38);
  return 0;
}

uint64_t sub_101383BBC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Subclasses should override.", v2, v3, v4, v5, v7);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101868BB8);
  return 0;
}

uint64_t sub_101383C8C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Subclasses should override.", v2, v3, v4, v5, v7);
  if (qword_101AD5A10 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_101AD5A10, &stru_101868BF8);
  return 0;
}

void sub_101383D5C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Token cannot be nil.", v2, v3, v4, v5, v6);
}

void sub_101383E20()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Token cannot be nil.", v2, v3, v4, v5, v6);
}

void sub_101383F34()
{
  sub_1000C59E0();
  sub_1000D4D50();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Attempted to temporarily relinquish token that has already been relinquished: %{public}@");
}

void sub_101383FE8(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_1000C88E0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1013840AC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Token cannot be nil.", v2, v3, v4, v5, v6);
}

void sub_10138415C(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_1000C88E0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_101384220()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Completion handler was already called.", v2, v3, v4, v5, v6);
}

void sub_1013842E4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Removing all tokens should also cancel all timeout blocks.", v2, v3, v4, v5, v6);
}

void sub_1013843BC(id *a1, void *a2, id *a3)
{
  v5 = *a1;
  v6 = a2;
  v7 = [v5 logContext];
  v8 = [v7 publicString];
  v9 = [*a1 logContext];
  v10 = [v9 privateString];
  v11 = [*a1 name];
  [*a3 timeout];
  v17 = [*a3 intent];
  sub_1000C88E0();
  _os_log_error_impl(v12, v13, v14, v15, v16, 0x34u);
}

void sub_101384600(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v5 publicString];
  v8 = [*(a1 + 48) privateString];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 8) count];
  v11 = 138544386;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  v15 = 2048;
  v16 = a3;
  v17 = 2112;
  v18 = v9;
  v19 = 2048;
  v20 = v10;
  _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@ %@ ┏ %llx '%@' pending resource requests (%tu total)", &v11, 0x34u);
}

void sub_1013847D0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v5 publicString];
  v8 = [*(a1 + 48) privateString];
  v9 = 138543874;
  v10 = v7;
  v11 = 2112;
  v12 = v8;
  v13 = 2048;
  v14 = a3;
  _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@ %@ ┗ %llx", &v9, 0x20u);
}

void sub_1013848DC(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "┏ Begin all traceable resources (%tu total)", &v2, 0xCu);
}

void sub_10138497C(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "┗ End all traceable resources (%tu total)", &v2, 0xCu);
}

void sub_101384A08()
{
  sub_1000C59E0();
  sub_1000D4D50();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Token was deallocated without getting relinquished: %{public}@");
}

void sub_101384AE4()
{
  sub_1000C59E0();
  sub_1000D4D50();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Token was deallocated with paused timeout: %{public}@");
}

void sub_101384BAC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unbalanced -pauseTimeout and -resumeTimeout calls.", v2, v3, v4, v5, v6);
}

void sub_101384C84()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected state.", v2, v3, v4, v5, v6);
}

void sub_101384D48()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected state.", v2, v3, v4, v5, v6);
}

void sub_101384E0C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Operation completion handler is getting deallocated before it was invoked.", v2, v3, v4, v5, v6);
}

void sub_101384ED0()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, v3, v4, v5, v6);
}

void sub_101384FBC()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, v3, v4, v5, v6);
}

void sub_1013850A8()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101385180()
{
  sub_1000C5968();
  v3 = "[CRLDragToInsertController dealloc]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragToInsertController.m";
  v6 = 1024;
  v7 = 131;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d must finish dragging before deallocating drag to insert controller", v2, 0x22u);
}

void sub_1013852AC(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[UIImage(CRLAdditions) crl_systemImageNamed:withFallbackCustomImageNamed:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/UIImage_CRLAdditions.m";
  v7 = 1024;
  v8 = 103;
  v9 = 2082;
  v10 = "result";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_1013853A4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Shouldn't be trying to set the width of a whole object eraser.", v2, v3, v4, v5, v6);
}

void sub_101385508()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Path creator should always provide some kind of path.", v2, v3, v4, v5, v6);
}

void sub_1013855CC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This method should only be called for slicing erasers.", v2, v3, v4, v5, v6);
}

void sub_101385870()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d strokePatternOffsetArray must have the same count as the number of provided subpaths (if it's provided)", v2, v3, v4, v5, v6);
}

void sub_101385984()
{
  sub_1000C5968();
  v2 = "[CRLBoardItemEditor setEditorController:]";
  sub_1000C88F0();
  v3 = 164;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected editor controller!", v1, 0x22u);
}

void sub_101385A54(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "[CRLBoardItemEditor nextEditorForSelection:withNewEditorStack:selectionPath:]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBoardItemEditor.m";
  v8 = 1024;
  v9 = 192;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d There is a more specific selection on top of a plain board item editor! %@", v3, 0x2Cu);
}

void sub_101385B4C()
{
  sub_1000C5968();
  v2 = "[CRLBoardItemEditor selectionWillChangeFromSelection:toSelection:withFlags:inSelectionPath:withNewEditors:]";
  sub_1000C88F0();
  v3 = 198;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Board item editor expects a board item selection!", v1, 0x22u);
}

void sub_101385C1C()
{
  sub_1000C5968();
  v3 = "[CRLBoardItemEditor selectionDidChangeFromSelection:toSelection:withFlags:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBoardItemEditor.m";
  v6 = 1024;
  v7 = 204;
  v8 = v0;
  v9 = "boardItemSelection";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101385D58()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Shouldn't be torn down twice!", v2, v3, v4, v5, v6);
}

void sub_101385E1C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Must be torn down!", v2, v3, v4, v5, v6);
}

void sub_101385EE0(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "[CRLInteractiveCanvasLayerHelper updateLayers]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasLayerHelper.m";
  v8 = 1024;
  v9 = 144;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Canvas layer tree mismatch detected! The fully and incrementally updated layer trees do not match.\n%@", v3, 0x2Cu);
}

void sub_101385FD8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Layout with bottommost layers should have run at least once on the main thread.", v2, v3, v4, v5, v6);
}

void sub_1013860B0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Layout with overlay layers should have run at least once on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101386174()
{
  sub_1000C5968();
  v3 = "[CRLInteractiveCanvasLayerHelper endSuppressingLayerUpdates]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasLayerHelper.m";
  v6 = 1024;
  v7 = 517;
  v8 = v0;
  v9 = "_repsWhoseLayersAreAllowedToUpdate";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101386260()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101386374()
{
  sub_1000C5968();
  v2 = "[CRLCanvasAbstractLayout layoutsForProvidingGuidesForChildLayouts]";
  sub_1000C88F0();
  v3 = 177;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This method should never be called on a layout which returns NO for providesGuidesForChildLayouts.", v1, 0x22u);
}

void sub_101386444()
{
  sub_1000C5968();
  v3 = "[CRLCanvasAbstractLayout exchangeChildAtIndex:withChildAtIndex:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasAbstractLayout.m";
  v6 = 1024;
  v7 = 276;
  v8 = v0;
  v9 = "_children";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101386544()
{
  sub_1000C5968();
  v2 = "[CRLCanvasAbstractLayout exchangeChildAtIndex:withChildAtIndex:]";
  sub_1000C88F0();
  v3 = 279;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad index", v1, 0x22u);
}

void sub_101386614()
{
  sub_1000CAA3C();
  sub_1002913D4(1.5049e-36, v1, v2, v3);
  *(v4 + 10) = "[CRLPKStroke _strokePointAtIndex:]";
  *(v4 + 18) = v5;
  sub_1004F26C8(v6, v4);
  sub_1004F26B4(v7, v8);
  sub_1004F26D8(&_mh_execute_header, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid index in %@", v9, v10);
}

void sub_1013866B8()
{
  sub_1000CAA3C();
  sub_1002913D4(1.5049e-36, v1, v2, v3);
  *(v4 + 10) = "[CRLPKStroke _insertStrokePoint:atIndex:]";
  *(v4 + 18) = v5;
  sub_1004F26C8(v6, v4);
  sub_1004F26B4(v7, v8);
  sub_1004F26D8(&_mh_execute_header, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid index in %@", v9, v10);
}

void sub_10138675C()
{
  sub_1000CAA3C();
  sub_1002913D4(1.5049e-36, v1, v2, v3);
  *(v4 + 10) = "[CRLPKStroke _removeStrokePointAtIndex:]";
  *(v4 + 18) = v5;
  sub_1004F26C8(v6, v4);
  sub_1004F26B4(v7, v8);
  sub_1004F26D8(&_mh_execute_header, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid index in %@", v9, v10);
}

void sub_101386800()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d %ld is out of bounds");
}

BOOL sub_1013868B0(unsigned int *a1, void *a2)
{
  v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  *a1 = v4;
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101869F90);
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8[0] = 67109890;
    v8[1] = v4;
    v9 = 2082;
    v10 = "[CRLPKStroke _splineControlPoint:]";
    sub_1000C88F0();
    v11 = 439;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to max", v8, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101869FB0);
  }

  v6 = off_1019EDA68;
  *a2 = off_1019EDA68;
  return os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
}

void sub_101386A24()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Segment index %ld is out of bounds");
}

void sub_101386AE8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Segment index %ld is out of bounds");
}

void sub_101386BAC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Segment index %ld is out of bounds");
}

void sub_101386CAC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Only CRLPKStrokePoint instances can be added to a stroke's point array", v2, v3, v4, v5, v6);
}

void sub_101386D70()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Only CRLPKStrokePoint instances can be added to a stroke's point array", v2, v3, v4, v5, v6);
}

void sub_101386E34()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Only CRLPKStrokePoint instances can be added to a stroke's point array", v2, v3, v4, v5, v6);
}

void sub_101386F0C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown platform!", v2, v3, v4, v5, v6);
}

void sub_101386FD0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown platform!", v2, v3, v4, v5, v6);
}

void sub_101387094()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Shouldn't be asking for the maximum Metal texture size on a device that doesn't support Metal.", v2, v3, v4, v5, v6);
}

void sub_101387158()
{
  sub_1000C5968();
  v3 = "[CRLCapabilities metalCapabilitiesForDevice:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLCapabilities.m";
  v6 = 1024;
  v7 = 438;
  v8 = v0;
  v9 = "device";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10138726C(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[CRLImage crl_quickInspectorImageNamed:isPrivateImage:isBundledImage:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
  v7 = 1024;
  v8 = 715;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, 0x22u);
}

void sub_10138737C(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLImage(RenderingAdditions) CGImageForSize:inContext:orContentsScaleProvider:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImage_RenderingAdditions.m";
  v7 = 1024;
  v8 = 25;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d using context to determine requested image size. contents scale provider should be nil", v2, 0x22u);
}

void sub_101387478()
{
  sub_1000C5968();
  v3 = "[CRLMetalDeviceCapabilities initWithDevice:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMetalDeviceCapabilities.m";
  v6 = 1024;
  v7 = 20;
  v8 = v0;
  v9 = "device";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101387564()
{
  sub_1000C5968();
  v3 = "[CRLMetalDeviceCapabilities supportsGPUFamily:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMetalDeviceCapabilities.m";
  v6 = 1024;
  v7 = 62;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't compare iOS to macOS GPUs.", v2, 0x22u);
}

void sub_101387654(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLWPAdornmentLine initWithStart:length:color:thickness:lineCount:underline:adornmentLocation:underLineAdjustment:isWhitespace:renderingDelegate:allowAntialiasing:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPAdornmentLine.m";
  v7 = 1024;
  v8 = 34;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Illegal line count", v2, 0x22u);
}

void sub_101387750()
{
  sub_1000C5968();
  v3 = "[CRLBasicShapeLibraryShape initWithShapeType:position:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBasicShapeLibraryShape.m";
  v6 = 1024;
  v7 = 32;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Basic shapes do not know about the custom shape type.", v2, 0x22u);
}

void sub_10138782C()
{
  sub_1000C5968();
  v3 = "+[CRLBasicShapeLibraryShape p_baseStringForKey:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBasicShapeLibraryShape.m";
  v6 = 1024;
  v7 = 174;
  v8 = v0;
  v9 = "englishString";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10138792C()
{
  sub_1000C5968();
  v3 = "[CRLiOSRepRotateGestureRecognizer initWithInteractiveCanvasController:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepRotateGestureRecognizer.m";
  v6 = 1024;
  v7 = 56;
  v8 = v0;
  v9 = "icc";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101387A18()
{
  sub_1000C5968();
  v3 = "[CRLiOSRepRotateGestureRecognizer p_beginTracking]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepRotateGestureRecognizer.m";
  v6 = 1024;
  v7 = 542;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d rotate GR did not successfully take control", v2, 0x22u);
}

void sub_101387B08(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLWidthLimitedQueue initWithLimit:name:targetQueue:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLWidthLimitedQueue.m";
  v7 = 1024;
  v8 = 48;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Queue limit should be at least one.", v2, 0x22u);
}

void sub_101387BDC(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_1000C5950();
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v3, 0x12u);
}

void sub_101387C90()
{
  v0 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186AAE0);
  }

  v1 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109890;
    v7[1] = v0;
    v8 = 2082;
    v9 = "[CRLWidthLimitedQueue initWithLimit:name:targetQueue:]";
    v10 = 2082;
    v11 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLWidthLimitedQueue.m";
    v12 = 1024;
    v13 = 56;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to max", v7, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186AB00);
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v2;
    v6 = +[CRLAssertionHandler packedBacktraceString];
    sub_1000C5950();
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v7, 0x12u);
  }

  v3 = [NSString stringWithUTF8String:"[CRLWidthLimitedQueue initWithLimit:name:targetQueue:]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLWidthLimitedQueue.m"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:56 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];
}

void sub_101387EB8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d We need to set the poster time and the poster image together. The poster image is a board item asset so it is async so we'll have to wait until we have both, then use CRLCommandSetMoviePosterTime.", v2, v3, v4, v5, v6);
}

void sub_101387F7C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101388054()
{
  sub_1000C5968();
  v3 = "[CRLMovieEditor willBeginChangingTimePropertyForMovieItem:withLocalizedMessage:cancelHandler:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieEditor.m";
  v6 = 1024;
  v7 = 130;
  v8 = v0;
  v9 = "_modalOperationToken";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101388140()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101388218()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d didEndChangingTimePropertyForMovieItem called without matching willBeginChangingTimePropertyForMovieItem", v2, v3, v4, v5, v6);
}

void sub_1013882F0()
{
  sub_1000C5968();
  v3 = "[CRLMovieEditor didEndChangingTimePropertyForMovieItem:withCommand:error:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieEditor.m";
  v6 = 1024;
  v7 = 176;
  v8 = v0;
  v9 = "_modalOperationToken";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_1013883DC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Only should save default style with a single object selected!", v2, v3, v4, v5, v6);
}

BOOL sub_10138848C(unsigned int *a1, void *a2)
{
  v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  *a1 = v4;
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186ACE0);
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8[0] = 67109890;
    v8[1] = v4;
    v9 = 2082;
    v10 = "CGFloat _CRLPKVectorSafeGet(std::vector<CGFloat>, int)";
    v11 = 2082;
    v12 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKCalculusUtility.mm";
    v13 = 1024;
    v14 = 16;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to max", v8, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186AD00);
  }

  v6 = off_1019EDA68;
  *a2 = off_1019EDA68;
  return os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
}

void sub_101388630()
{
  sub_1000C5968();
  v2 = "[CRLTilingLayer drawLayer:inContext:]";
  sub_1000C88F0();
  v3 = 382;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This tiling layer is not responsible for the layer asking to be drawn", v1, 0x22u);
}

void sub_101388700()
{
  sub_1000C5968();
  v2 = "[CRLTilingLayer drawLayer:inContext:]";
  sub_1000C88F0();
  v3 = 379;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This tiling layer is not responsible for the layer asking to be drawn", v1, 0x22u);
}

void sub_101388898()
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  sub_10010A56C();
  if (!v1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186AF30);
  }

  if (sub_10010A528())
  {
    LODWORD(v16) = 67109890;
    sub_100509160();
    sub_10010A518();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
  }

  sub_10010A56C();
  if (!v1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186AF50);
  }

  if (sub_10010A528())
  {
    v9 = v0;
    v10 = +[CRLAssertionHandler packedBacktraceString];
    sub_1000C5950();
    sub_10010A518();
    _os_log_error_impl(v11, v12, v13, v14, v15, 0x12u);
  }

  v2 = [NSString stringWithUTF8String:"NSInteger dgtsv(long, long, double *, double *, double *, double *, long)", v16];
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditableBezierPathSmoothing.m"];
  sub_10050918C();
}

void sub_101388A44()
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  sub_10010A56C();
  if (!v1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186AEF0);
  }

  if (sub_10010A528())
  {
    LODWORD(v16) = 67109890;
    sub_100509160();
    sub_10010A518();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
  }

  sub_10010A56C();
  if (!v1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186AF10);
  }

  if (sub_10010A528())
  {
    v9 = v0;
    v10 = +[CRLAssertionHandler packedBacktraceString];
    sub_1000C5950();
    sub_10010A518();
    _os_log_error_impl(v11, v12, v13, v14, v15, 0x12u);
  }

  v2 = [NSString stringWithUTF8String:"NSInteger dgtsv(long, long, double *, double *, double *, double *, long)", v16];
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditableBezierPathSmoothing.m"];
  sub_10050918C();
}

void sub_101388C04()
{
  sub_1000C5968();
  v3 = "[CRLPasteboardMultipleImportableBoardItemProvider initWithImportableBoardItemProviders:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardMultipleImportableBoardItemProvider.m";
  v6 = 1024;
  v7 = 37;
  v8 = v0;
  v9 = "(boardItemProviders != nil) && (boardItemProvidersCount > 0)";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, 0x2Cu);
}

void sub_101388CF0()
{
  sub_1000C5968();
  v3 = "[CRLPasteboardMultipleImportableBoardItemProvider provideBoardItemsWithFactory:completionHandler:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardMultipleImportableBoardItemProvider.m";
  v6 = 1024;
  v7 = 85;
  v8 = v0;
  v9 = "completionHandler != nil";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", v2, 0x2Cu);
}

void sub_101388DDC()
{
  sub_1000C5968();
  v3 = "[CRLPasteboardMultipleImportableBoardItemProvider p_boardItemProviderDidRequestMediaCompatibilityRequirement:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardMultipleImportableBoardItemProvider.m";
  v6 = 1024;
  v7 = 254;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No media types were specified! Falling back to Mixed to have understandable strings.", v2, 0x22u);
}

void sub_101388ECC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101388FA4()
{
  sub_1000C5968();
  v3 = "[CRLiOSDocumentModeController initWithDelegate:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeController.m";
  v6 = 1024;
  v7 = 37;
  v8 = v0;
  v9 = "_mode";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101389090()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101389168()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Trying to add a document mode observer that's already added", v2, v3, v4, v5, v6);
}

void sub_10138922C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101389304()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Trying to remove a document mode observer that has not been added", v2, v3, v4, v5, v6);
}

void sub_1013893C8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_10138948C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101389564()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not change mode while we are already changing the mode.", v2, v3, v4, v5, v6);
}

void sub_101389628()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_1013896EC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_1013897C4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013898B0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10138997C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101389A48()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101389B14()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101389BE0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101389CAC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101389D84()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101389E5C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101389F34()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10138A0BC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138A18C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138A248(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_10138A304()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138A3D4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138A4A4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138A560(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_10138A61C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138A6EC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138A7BC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138A88C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138A95C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138AA2C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138AAFC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138ABE0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138ACB0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138AD80()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138AE50()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138AF20()
{
  sub_1000C5968();
  v3 = "[CRLImageRepDrawingHelper invalidateSizedImageIfNeededForBakedMaskPathFromBlock:]_block_invoke";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepDrawingHelper.m";
  v6 = 1024;
  v7 = 717;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Need some mask path if comparing masks", v2, 0x22u);
}

void sub_10138AFFC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Desired size is an impossible multiple of current size.", v2, v3, v4, v5, v6);
}

void sub_10138B0D4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Desired size is an impossible multiple of current size.", v2, v3, v4, v5, v6);
}

void sub_10138B198()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Desired size is an impossible multiple of current size.", v2, v3, v4, v5, v6);
}

void sub_10138B270()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Desired size is an impossible multiple of current size.", v2, v3, v4, v5, v6);
}

void sub_10138B348()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Desired size is an impossible multiple of current size.", v2, v3, v4, v5, v6);
}

void sub_10138B3F8(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, 2u);
}

void sub_10138B4D0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Desired size is an impossible multiple of current size.", v2, v3, v4, v5, v6);
}

void sub_10138B580(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, 2u);
}

void sub_10138B680(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, 2u);
}

void sub_10138B828()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10138B8F4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138B9D8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138BAA8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138BB8C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138BC5C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138BD2C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10138BE5C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10138BF3C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138C020()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138C104()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10138C1D0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10138C2B0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138C3D0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138C4A0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138C570()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10138C6F0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138C7D4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138C8B8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10138C9D4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138CAA4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138CB74()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138CC94()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138CDC8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138CF38(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "[CRLInspectorTextFieldClampNumberFormatter p_textShouldBeginEditingWithContent:]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLInspectorFieldFormatters.m";
  v8 = 1024;
  v9 = 221;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid initial string %@", v3, 0x2Cu);
}

void sub_10138D030(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLInspectorTextFieldLengthFormatter crlaxLocalizedDescriptionFromValue:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLInspectorFieldFormatters.m";
  v7 = 1024;
  v8 = 586;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Did not find a valid number formatter for accessible description.", v2, 0x22u);
}

void sub_10138D12C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not start monitoring a control for animations that is already being monitored.", v2, v3, v4, v5, v6);
}

void sub_10138D1F0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not stop monitoring a control for animations that is not already being monitored.", v2, v3, v4, v5, v6);
}

void sub_10138D2F0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Trying to apply animations to a control that's not being monitored.", v2, v3, v4, v5, v6);
}

void sub_10138D3C8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Button animation received out-of-order touch events. This may be due to calling [self refresh] or [tableView reloadData] directly instead of calling [self.refreshingDelegate refreshableInspectorPaneWantsToRefresh:self].", v2, v3, v4, v5, v6);
}

void sub_10138D48C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Trying to apply animations to a control that's not being monitored.", v2, v3, v4, v5, v6);
}

void sub_10138D550()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Trying to apply animations to a control that's not being monitored.", v2, v3, v4, v5, v6);
}

void sub_10138D614()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Trying to apply animations to a control that's not being monitored.", v2, v3, v4, v5, v6);
}

void sub_10138D6D8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Trying to apply animations to a control that's not being monitored.", v2, v3, v4, v5, v6);
}

void sub_10138D7B0()
{
  sub_1000C5968();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10138D9D0()
{
  sub_1000C5968();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10138DAA8()
{
  sub_1000C5968();
  v2 = "[CRLCanvasSpacingGuide initForEdge:ofGeneratingObjectRect:andParentSpacing:]";
  sub_1000C88F0();
  v3 = 45;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d if you are creating a center spacing guide, use CRLCanvasCenterAlignmentGuide", v1, 0x22u);
}

void sub_10138DB8C()
{
  sub_1000C5968();
  v2 = "[CRLCanvasSpacingGuide initForEdge:ofGeneratingObjectRect:andParentSpacing:]";
  sub_1000C88F0();
  v3 = 69;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d if you are creating a center spacing guide, use CRLCanvasCenterAlignmentGuide", v1, 0x22u);
}

void sub_10138DC70()
{
  sub_1000C5968();
  v2 = "[CRLZipFileWriter initWithZipFileArchive:options:error:]";
  sub_1000C88F0();
  v3 = 67;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected offset", v1, 0x22u);
}

void sub_10138DD40()
{
  sub_1000C5968();
  v2 = "[CRLZipFileWriter copyEntriesFromZipFileWriter:readingFromURL:options:completionHandler:]";
  sub_1000C88F0();
  v3 = 110;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Closed writer must be closed.", v1, 0x22u);
}

void sub_10138DDFC(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_10138DEB8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138DF74(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_1000C597C(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, 2u);
}

void sub_10138E034()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138E118()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138E1E8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138E2A4(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_10138E374()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138E430(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_10138E500()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138E5BC(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_10138E68C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10138E748(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_10138E868(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

void sub_10138E930(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "[CRLPdfTagger beginDrawable:]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLPdfTagger.mm";
  v8 = 1024;
  v9 = 1488;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Drawable of class %@ not handled", v3, 0x2Cu);
}

void sub_10138EA28()
{
  sub_1002616C4();
  sub_1005344AC();
  sub_1000C599C();
  sub_1002616D4();
  sub_1005344BC(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected inequality between %{public}s and %{public}s", v2, v3, v4, v5, v6);
}

void sub_10138EB18()
{
  sub_1002616C4();
  sub_1005344AC();
  sub_1000C599C();
  sub_1002616D4();
  sub_1005344BC(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected inequality between %{public}s and %{public}s", v2, v3, v4, v5, v6);
}

void sub_10138EBF4()
{
  sub_1002616C4();
  sub_1005344AC();
  sub_1000C599C();
  sub_1002616D4();
  sub_1005344BC(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected inequality between %{public}s and %{public}s", v2, v3, v4, v5, v6);
}

void sub_10138ED70()
{
  sub_1000C5968();
  v3 = "[CRLiOSScribbleInteractionDelegate indirectScribbleInteraction:focusElementIfNeeded:referencePoint:completion:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSScribbleInteractionDelegate.m";
  v6 = 1024;
  v7 = 67;
  v8 = v0;
  v9 = "scribbleElement";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10138EE70(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "scribbleElement: %@", &v2, 0xCu);
}

void sub_10138EF10()
{
  sub_1000C5968();
  v3 = "[CRLiOSScribbleInteractionDelegate indirectScribbleInteraction:focusElementIfNeeded:referencePoint:completion:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSScribbleInteractionDelegate.m";
  v6 = 1024;
  v7 = 78;
  v8 = v0;
  v9 = "inputResponder";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10138F010(void *a1)
{
  v2 = a1;
  v3 = sub_1000C59B8();
  v4 = NSStringFromSelector(v3);
  sub_100537C50();
  sub_100537C30(&_mh_execute_header, v5, v6, "%{public}@\n %{public}@", v7, v8, v9, v10, v11);
}

void sub_10138F0C0()
{
  sub_1000C5968();
  v3 = "[CRLiOSScribbleInteractionDelegate p_isElementFocused:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSScribbleInteractionDelegate.m";
  v6 = 1024;
  v7 = 125;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Element says it is focused but we have no editing TIR", v2, 0x22u);
}

void sub_10138F1C4(void *a1, const char *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a1;
  v12 = NSStringFromSelector(a2);
  v18.origin.x = a3;
  v18.origin.y = a4;
  v18.size.width = a5;
  v18.size.height = a6;
  v13 = NSStringFromCGRect(v18);
  v14 = 138543618;
  v15 = v12;
  v16 = 2114;
  v17 = v13;
  _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}@\n Expanding rect, previous rect was %{public}@", &v14, 0x16u);
}

void sub_10138F324(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = sub_1000C59B8();
  v7 = NSStringFromSelector(v6);
  v14 = [a3 rootIdentifier];
  sub_100537C30(&_mh_execute_header, v8, v9, "%{public}@\n providing root UUID for inserting textbox %{public}@", v10, v11, v12, v13, 2u);
}

void sub_10138F3F8()
{
  sub_1000C5968();
  v3 = "[CRLShapeRepHelperFreehandDrawing drawInContext:withContent:strokeDrawOptions:withOpacity:usingPathOverride:patternOffsetsBySubpathOverride:transparencyLayersBySubpath:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRepHelperFreehandDrawing.m";
  v6 = 1024;
  v7 = 77;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Canvas and CGContext disagree about whether we are suppressing backgrounds", v2, 0x22u);
}

void sub_10138F4E8()
{
  sub_1000C5968();
  v3 = "[CRLShapeRepHelperFreehandDrawing drawInContext:withContent:strokeDrawOptions:withOpacity:usingPathOverride:patternOffsetsBySubpathOverride:transparencyLayersBySubpath:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRepHelperFreehandDrawing.m";
  v6 = 1024;
  v7 = 105;
  v8 = v0;
  v9 = "pencilKitStrokes";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10138F5D4(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLMultipleItemImporter p_importerDidRequestMediaCompatibilityRequirement:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMultipleItemImporter.m";
  v7 = 1024;
  v8 = 322;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No media types were specified! Falling back to Mixed to have understandable strings.", v2, 0x22u);
}

void sub_10138F6D0(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLWPMutableRangeArray addRange:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRangeArray.mm";
  v7 = 1024;
  v8 = 438;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d addRange failure", v2, 0x22u);
}

void sub_10138F808()
{
  sub_1000C5968();
  v4 = "NSString *NSStringFromCRLWPSelectionType(CRLWPSelectionType)";
  v5 = v0;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSelection.mm";
  v7 = 1024;
  v8 = 92;
  v9 = 2048;
  v10 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown selection type: %lu", v3, 0x2Cu);
}

void sub_10138F908()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Non smartfield selection has smartField range", v2, v3, v4, v5, v6);
}

void sub_10138F9E0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d illegal range length", v2, v3, v4, v5, v6);
}

void sub_10138FAB8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d illegal range location", v2, v3, v4, v5, v6);
}

void sub_10138FB7C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Selection has a leading edge but no storage to get the leading char", v2, v3, v4, v5, v6);
}

void sub_10138FC40()
{
  sub_1000C5968();
  v3 = "+[CRLWPSelection selectionFromWPSelection:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSelection.mm";
  v6 = 1024;
  v7 = 227;
  v8 = v0;
  v9 = "wpSelection";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10138FD2C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Selection type must be visual", v2, v3, v4, v5, v6);
}

void sub_10138FDF0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d illegal visual range", v2, v3, v4, v5, v6);
}

void sub_10138FEB4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Visual ranges have not been calculated", v2, v3, v4, v5, v6);
}

void sub_10138FF8C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013900BC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10139019C()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101390290()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013903D4()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013904C8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101390594(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLWPImmediatePressGestureRecognizer touchesMoved:withEvent:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPImmediatePressGestureRecognizer.m";
  v7 = 1024;
  v8 = 75;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Time travel should have had a non-zero value here", v2, 0x22u);
}

void sub_101390690(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CALayer(CRLAdditions) crl_setIfDifferentFrame:orTransform:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CALayer_CRLAdditions.m";
  v7 = 1024;
  v8 = 34;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Attempting to set frame or transform on layer with NaN values.", v2, 0x22u);
}

void sub_1013907C8()
{
  sub_1002616C4();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to Parse SVG File", v2, v3, v4, v5, v6);
}

void sub_1013908F4()
{
  sub_1002616C4();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected 'defer' component", v2, v3, v4, v5, v6);
}

void sub_1013909D0(void *a1)
{
  [a1 count];
  sub_10019F700();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_10054E950();
  sub_1000C88E0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
}

void sub_101390AC4()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_100114F44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101390BA4(void *a1)
{
  [a1 count];
  sub_10019F700();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_10054E950();
  sub_1000C88E0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
}

void sub_101390C98()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_100114F44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101390D78()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_100114F44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101390EA8()
{
  sub_1002616C4();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100114F44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void sub_101390F94()
{
  sub_1002616C4();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No value for initial polyline point!", v2, v3, v4, v5, v6);
}

void sub_10139119C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Info is wrong class for layout.", v2, v3, v4, v5, v6);
}

void sub_101391274()
{
  sub_1000C5968();
  v3 = "[CRLWPShapeLayout initWithInfo:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeLayout.m";
  v6 = 1024;
  v7 = 27;
  v8 = v0;
  v9 = "self.wpShapeInfo.text";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101391374()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Resize tracker should be able to say if it is enqueueing commands in real time.", v2, v3, v4, v5, v6);
}

void sub_10139144C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d There should already be a command group open if we are enqueueing in real time.", v2, v3, v4, v5, v6);
}

void sub_101391524()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Resize tracker should be able to say if it is enqueueing commands in real time.", v2, v3, v4, v5, v6);
}

void sub_1013915FC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d There should already be a command group open if we are enqueueing in real time.", v2, v3, v4, v5, v6);
}

void sub_101391738()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101391804()
{
  sub_1000C5968();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101391900()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013919CC()
{
  sub_1000C5968();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101391B04(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLWPShapeEditor saveDefaultInsertionPreset:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeEditor.m";
  v7 = 1024;
  v8 = 166;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Only should save default style with a single object selected!", v2, 0x22u);
}

void sub_101391BEC()
{
  sub_1000C5968();
  v3 = "[CRLCanvasLayoutGeometry initWithInfoGeometry:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayoutGeometry.m";
  v6 = 1024;
  v7 = 53;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d can't create layout geometry from info geometry if width and height are not valid", v2, 0x22u);
}

void sub_101391CC8()
{
  sub_1000C5968();
  v3 = "[CRLCanvasLayoutGeometry initWithInfoGeometry:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayoutGeometry.m";
  v6 = 1024;
  v7 = 48;
  v8 = v0;
  v9 = "infoGeometry";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101391DB4()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to load legacy CIKernel with name: %{public}@");
}

void sub_101391E80()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to load Metal CIKernel with name: %{public}@");
}

void sub_101391F4C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101392030()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101392114()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101392248()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101392318()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013923FC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101392530(int a1)
{
  v3[0] = 67110402;
  v3[1] = a1;
  v4 = 2082;
  sub_1000C59AC();
  sub_1000C599C();
  v5 = 74;
  v6 = v1;
  v7 = "kernelsFromString.count";
  v8 = v1;
  v9 = "1U";
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected equality between %{public}s and %{public}s", v3, 0x36u);
}

void sub_101392640()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101392724()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013927F4(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[CRLLineEnd lineEndWithType:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLLineEnd.m";
  v7 = 1024;
  v8 = 194;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not ask for line end with this type (count)", v2, 0x22u);
}

void sub_1013928DC(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLFreehandDrawingToolMarquee p_updateDottedMarqueeDecoratorRenderable:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolMarquee.m";
  v7 = 1024;
  v8 = 369;
  v9 = 2082;
  v10 = "_pathCreator";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101392A24(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLBadgeView_i setFinalImageWithName:legacyName:accessibilityName:scalesImageToFit:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/StatusHUDs/CRLBadgeView_i.m";
  v7 = 1024;
  v8 = 45;
}

void sub_101392B0C()
{
  sub_10010A544();
  sub_1000C599C();
  sub_10010A558();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected creator state, %lu");
}

void sub_101392BEC()
{
  sub_1000C5968();
  v4 = "[CRLFreehandDrawingPathCreator setSmoothingThresholdMultiplier:]";
  v5 = v0;
  sub_1000C599C();
  v6 = 130;
  v7 = v1;
  v8 = "_strokeGenerator";
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v3, 0x2Cu);
}

void sub_101392CD0()
{
  sub_10010A544();
  sub_1000C599C();
  sub_10010A558();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected creator state, %lu");
}

void sub_101392DB0()
{
  sub_1000C5968();
  v4 = "[CRLFreehandDrawingPathCreator setPointReductionFilterThresholdMultiplier:]";
  v5 = v0;
  sub_1000C599C();
  v6 = 137;
  v7 = v1;
  v8 = "_strokeGenerator";
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v3, 0x2Cu);
}

void sub_101392E94()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d beginDrawing should be called from the waiting state.", v2, v3, v4, v5, v6);
}

void sub_101392F58()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d endDrawing should be called from the started state.", v2, v3, v4, v5, v6);
}

void sub_10139301C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't handoff to a new path creator when using PencilKit.", v2, v3, v4, v5, v6);
}

void sub_1013930F4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Need at least two points to do a handoff.", v2, v3, v4, v5, v6);
}

BOOL sub_1013931B8(unsigned int *a1, void *a2)
{
  v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  *a1 = v4;
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186F0A0);
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8[0] = 67109890;
    v8[1] = v4;
    v9 = 2082;
    v10 = "[CRLFreehandDrawingPathCreator p_immutableUncommittedCountNotAdjustedForLastPoint]";
    sub_1000C88F0();
    v11 = 339;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to min", v8, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186F0C0);
  }

  v6 = off_1019EDA68;
  *a2 = off_1019EDA68;
  return os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
}

void sub_101393328()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d continueDrawing should be called from the started state.", v2, v3, v4, v5, v6);
}

void sub_1013933EC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The immutable point count should only ever increase.", v2, v3, v4, v5, v6);
}

void sub_1013934B0()
{
  sub_1000C5968();
  v3 = "[CRLCounterRotateRep p_counterRotateInfo]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCounterRotateRep.m";
  v6 = 1024;
  v7 = 25;
  v8 = v0;
  v9 = "counterRotateInfo";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10139359C()
{
  sub_1000C5968();
  v3 = "[CRLCounterRotateRep p_possibleChildRep]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCounterRotateRep.m";
  v6 = 1024;
  v7 = 31;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should have either one or zero child reps.", v2, 0x22u);
}

void sub_101393678()
{
  sub_1000C5968();
  v3 = "[CRLCounterRotateRep p_childRep]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCounterRotateRep.m";
  v6 = 1024;
  v7 = 37;
  v8 = v0;
  v9 = "childRepToReturn";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101393764()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10139381C(void *a1, int a2)
{
  v3 = a1;
  v4 = +[CRLAssertionHandler packedBacktraceString];
  v5[0] = 67109378;
  v5[1] = a2;
  v6 = 2114;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, 0x12u);
}

void sub_1013938F8(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "[CRLZipWriter beginEntryWithNameImpl:force32BitSize:lastModificationDate:size:CRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipWriter.m";
  v8 = 1024;
  v9 = 166;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Already have an entry with name: %@", v3, 0x2Cu);
}

void sub_1013939F0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101393ABC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101393B74()
{
  v0 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186F3B8);
  }

  v1 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109890;
    v7[1] = v0;
    v8 = 2082;
    v9 = "[CRLZipWriter addDataImpl:queue:completion:]_block_invoke_3";
    v10 = 2082;
    v11 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipWriter.m";
    v12 = 1024;
    v13 = 274;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to max", v7, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186F3D8);
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v2;
    v6 = +[CRLAssertionHandler packedBacktraceString];
    sub_1000C5950();
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v7, 0x12u);
  }

  v3 = [NSString stringWithUTF8String:"[CRLZipWriter addDataImpl:queue:completion:]_block_invoke"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipWriter.m"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:274 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];
}

void sub_101393D9C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101393EBC()
{
  sub_1000C5968();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101393FA4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101394070()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10139413C()
{
  sub_1000C5968();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10139428C(void *a1, void *a2)
{
  v4 = a1;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = [sub_1000C59B8() domain];
  v7 = 138544130;
  v8 = v2;
  v9 = 2114;
  v10 = v6;
  v11 = 2048;
  v12 = [a2 code];
  v13 = 2112;
  v14 = a2;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Couldn't write Zip: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", &v7, 0x2Au);
}

void sub_101394390()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101394468()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101394534()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101394614()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013946F4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013947C0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10139488C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101394958()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101394A44()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101394B1C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101394BF4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101394CC0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101394D8C(uint64_t a1, int a2)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  sub_1000C59AC();
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m";
  v6 = 1024;
  sub_1002EF210();
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLWPEditor can't handle a gesture of kind %{public}@", v3, 0x2Cu);
}

void sub_101394E74()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101394F54(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = [a2 tmCoordinator];
  v7 = [v6 controllingTM];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10[0] = 67110146;
  v10[1] = a3;
  v11 = 2082;
  sub_1000C59AC();
  v12 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m";
  v13 = 1024;
  sub_1002EF210();
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d could not take control with WP Editing Controller. Controlling TM is %{public}@", v10, 0x2Cu);
}

void sub_1013950A0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101395178(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLRotorSearchController locateSearchReference:]_block_invoke";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLAccessibility/Canvas/Accessibility/iOS/CRLRotorSearchController.m";
  v7 = 1024;
  v8 = 82;
  v9 = 2082;
  v10 = "layout";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101395270(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = [a2 gestureKind];
  v7 = sub_1003EB144([a2 gestureState]);
  v8[0] = 67110402;
  v8[1] = a3;
  v9 = 2082;
  v10 = "[CRLBaseGesture gestureBeganAtLocation:]";
  v11 = 2082;
  v12 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBaseGesture.m";
  v13 = 1024;
  v14 = 85;
  v15 = 2112;
  v16 = v6;
  v17 = 2112;
  v18 = v7;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Gesture %@ in invalid state %@", v8, 0x36u);
}

void sub_1013953C0()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013954B4()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101395594()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101395660()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10139572C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013957F8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013958C4()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101395990()
{
  v0 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186FF30);
  }

  v1 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109890;
    v7[1] = v0;
    v8 = 2082;
    v9 = "[CRLConnectionLineAbstractLayout clipPath:onLayout:outset:reversed:isValid:]";
    v10 = 2082;
    v11 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineAbstractLayout.m";
    v12 = 1024;
    v13 = 674;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to max", v7, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186FF50);
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v2;
    v6 = +[CRLAssertionHandler packedBacktraceString];
    sub_1000C5950();
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v7, 0x12u);
  }

  v3 = [NSString stringWithUTF8String:"[CRLConnectionLineAbstractLayout clipPath:onLayout:outset:reversed:isValid:]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineAbstractLayout.m"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:674 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];
}

void sub_101395BCC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101395CAC()
{
  sub_1000C5968();
  v3 = "[CRLCanvasRepRotateTracker initWithRep:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepRotateTracker.m";
  v6 = 1024;
  v7 = 87;
  v8 = v0;
  v9 = "rep";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101395D98()
{
  sub_1000C5968();
  v3 = "[CRLCanvasRepRotateTracker changeDynamicLayoutsForReps:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepRotateTracker.m";
  v6 = 1024;
  v7 = 186;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d attempting to rotate more than one rep, or the wrong rep", v2, 0x22u);
}

void sub_101395E9C(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[CRLPathSource pathSourceForShapeType:naturalSize:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSource.m";
  v7 = 1024;
  v8 = 309;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not be trying to get the path of a custom shape from here!", v2, 0x22u);
}

void sub_101395F84()
{
  sub_1000C5968();
  v2 = "[CRLiOSWindowIgnoreUserInteractionSafeWrapper endIgnoringUserInteractionSafely]";
  sub_1000C88F0();
  v3 = 50;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v1, 0x22u);
}

void sub_101396054()
{
  sub_1000C5968();
  v2 = "[CRLiOSWindowIgnoreUserInteractionSafeWrapper resumeIgnoringUserInteractionSafely]";
  sub_1000C88F0();
  v3 = 63;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v1, 0x22u);
}

void sub_101396138()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Local URL should be a file URL.", v2, v3, v4, v5, v6);
}

void sub_101396210(void *a1, void *a2)
{
  v4 = a1;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = [sub_1000C59B8() domain];
  v7 = 138544130;
  v8 = v2;
  v9 = 2114;
  v10 = v6;
  v11 = 2048;
  v12 = [a2 code];
  v13 = 2112;
  v14 = a2;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not create property list from data. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", &v7, 0x2Au);
}

void sub_101396314(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 path];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to write property list to path: %@", &v5, 0xCu);
}

void sub_1013963D0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't parse local defaults plist", v2, v3, v4, v5, v6);
}

void sub_101396494()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Don't have local defaults plist", v2, v3, v4, v5, v6);
}

void sub_101396558(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67110146;
  v3[1] = a2;
  v4 = 2082;
  v5 = "[CRLGroupEditor nextEditorForSelection:withNewEditorStack:selectionPath:]";
  v6 = 2082;
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupEditor.m";
  v8 = 1024;
  v9 = 46;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown editor class for selection %@", v3, 0x2Cu);
}

void sub_101396650()
{
  sub_1000C5968();
  v3 = "[CRLGroupEditor pasteWithPasteboard:atIndex:forceMatchStyle:bakeFormulas:completionHandler:]_block_invoke";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupEditor.m";
  v6 = 1024;
  v7 = 229;
  v8 = v0;
  v9 = "groupToInsertInto";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10139678C()
{
  sub_1000C5968();
  v3 = "[CRLGroupEditor pasteNativeInfosFromPasteboard:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupEditor.m";
  v6 = 1024;
  v7 = 356;
  v8 = v0;
  v9 = "groupToInsertInto";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10139692C()
{
  sub_1000C5968();
  v3 = "[CRLGroupEditor duplicate:]_block_invoke";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupEditor.m";
  v6 = 1024;
  v7 = 489;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d We don't expect to see cross-container selections in Freeform that have objects that aren't in a container (aka freehand drawings!", v2, 0x22u);
}

void sub_101396A08(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLWPTextKnobTracker dealloc]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPTextKnobTracker.mm";
  v7 = 1024;
  v8 = 156;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d _textMagnifierTimer retains us, so it should be gone by our -dealloc", v2, 0x22u);
}

void sub_101396AF0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101396BD0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101396CBC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101396D94()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101396E80()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101396F58()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101397024()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013970F0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101397248()
{
  sub_1000C5968();
  sub_1000C59AC();
  v3 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSelectionPath.m";
  v4 = 1024;
  v5 = 68;
  v6 = 2048;
  v7 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Requested selection index %tu is out of range!", v2, 0x2Cu);
}

void sub_101397330()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101397420()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013974EC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013975B8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101397684()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101397750()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101397840()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101397930()
{
  sub_1000C5968();
  v3 = "[CRLCanvasRepDragTracker initWithRep:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m";
  v6 = 1024;
  v7 = 136;
  v8 = v0;
  v9 = "rep";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101397A1C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d showing UI for drag without being in some kind of dynamic operation", v2, v3, v4, v5, v6);
}

void sub_101397AE0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should only call insertInfosAndUpdateDragForDuplicatingDragIfAppropriate once!", v2, v3, v4, v5, v6);
}

void sub_101397BB8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to find index!", v2, v3, v4, v5, v6);
}

void sub_101397C7C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d non-zero snap level when we aren't constraining the drag. that doesn't make sense.", v2, v3, v4, v5, v6);
}

void sub_101397D54()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d number of reps uneven for attached drag", v2, v3, v4, v5, v6);
}

void sub_101397E2C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d prioritizing Y offset with a unit direction that doesn't have an Y value!", v2, v3, v4, v5, v6);
}

void sub_101397EDC(void *a1)
{
  v1 = a1;
  sub_1001E8310(v1, 1.5047e-36);
  sub_1001E8328(&_mh_execute_header, v2, v3, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<");
}

void sub_101397F64()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d prioritizing X offset with a unit direction that doesn't have an X value!", v2, v3, v4, v5, v6);
}

void sub_1013980B4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013981A0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101398278()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101398344()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101398410()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013984E8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101398610()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013986FC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013987E8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101398928()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101398A08()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101398AD4()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101398BB4()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101398CBC()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101398DB0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101398E90()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101398F70(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a2 domain];
  [a2 code];
  sub_1005A0990();
  sub_1003A2950(&_mh_execute_header, v7, v8, "Error creating temporary directory: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v9, v10, v11, v12, 2u);
}

void sub_101399064(void *a1, void *a2)
{
  v4 = a1;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = [sub_1000C59B8() domain];
  [a2 code];
  sub_1005A0990();
  sub_1003A2950(&_mh_execute_header, v7, v8, "Error copying photo picker item: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v9, v10, v11, v12, 2u);
}

void sub_10139918C(void *a1, void *a2)
{
  v4 = a1;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = [sub_1000C59B8() domain];
  [a2 code];
  sub_1005A0990();
  sub_1003A2950(&_mh_execute_header, v7, v8, "Error getting item from photo picker: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v9, v10, v11, v12, 2u);
}

void sub_1013992D0()
{
  sub_1000C59E0();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No file extension for CG-provided type identifier: %{public}@");
}

void sub_1013993A0(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[PHPickerResult(CRLAdditions) crl_safeLastPathComponentForItemURL:registeredTypeIdentifier:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/PHPickerResult_CRLAdditions.m";
  v7 = 1024;
  v8 = 127;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to create image source to check file type for photo picker file URL with no file extension.", v2, 0x22u);
}

void sub_10139949C()
{
  sub_1000C59E0();
  sub_1002EF210();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No file extension for file URL with registered type identifier: %{public}@");
}

void sub_10139956C()
{
  sub_1000C5968();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101399654()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101399734()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101399800()
{
  sub_1000C5968();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013998FC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad extended range", v2, v3, v4, v5, v6);
}

void sub_1013999D4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d illegal instantiation of abstract class CRLWPStorageSpellChecker", v2, v3, v4, v5, v6);
}

void sub_101399A98()
{
  sub_1000C5968();
  v3 = "[CRLWPStorageSpellChecker dealloc]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorageSpellChecker.mm";
  v6 = 1024;
  v7 = 143;
  v8 = v0;
  v9 = "_storage";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101399B98()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d checked ranges exceed storage", v2, v3, v4, v5, v6);
}

void sub_101399C98()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bogus char index", v2, v3, v4, v5, v6);
}

void sub_101399D5C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Locale string is too short.", v2, v3, v4, v5, v6);
}

void sub_101399EAC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid charIndex.", v2, v3, v4, v5, v6);
}

void sub_101399FD4()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10139A0B4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10139A194()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10139A274()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10139A354()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10139A484()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10139A578()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10139A66C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10139A758()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10139A81C(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_1000C88E0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10139A8FC(void *a1)
{
  v1 = a1;
  objc_opt_class();
  sub_10019F700();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  v3 = v2;
  sub_1000C88E0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void sub_10139A9F0(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_1000C88E0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10139AAD0(void *a1)
{
  v1 = a1;
  objc_opt_class();
  sub_10019F700();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000C5A00();
  sub_1000C88E0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
}

void sub_10139ABB8(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_1000C88E0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10139AC98()
{
  sub_1002616C4();
  sub_1005344AC();
  sub_1000D4D50();
  sub_1005B0388();
  sub_1005B0398(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CMTimebaseCreateWithMasterClock failed (%d)");
}

void sub_10139AD48(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_1000C88E0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10139AE28()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10139AEEC(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_1000C88E0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10139AFCC()
{
  sub_1002616C4();
  sub_1005344AC();
  sub_1000D4D50();
  sub_1005B0388();
  sub_1005B0398(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CMTimebaseAddTimerDispatchSource failed (%d)");
}

void sub_10139B090()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Reached -dealloc without teardown being hit.", v2, v3, v4, v5, v6);
}

void sub_10139B168()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Reached -dealloc with associated animated GIF layers.", v2, v3, v4, v5, v6);
}

void sub_10139B22C()
{
  sub_1002616C4();
  sub_1005344AC();
  sub_1000D4D50();
  sub_1005B0388();
  sub_1005B0398(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CMTimebaseRemoveTimerDispatchSource failed (%d)");
}

void sub_10139B2F0()
{
  sub_1002616C4();
  sub_1005344AC();
  sub_1000D4D50();
  sub_1005B0388();
  sub_1005B0398(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CMTimebaseSetRate failed (%d)");
}

void sub_10139B3B4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Scrubbing to time when not known to be scrubbing!", v2, v3, v4, v5, v6);
}

void sub_10139B478()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Uneven begin/end scrubbing calls!", v2, v3, v4, v5, v6);
}

void sub_10139B58C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not be requesting an updated rate without also requesting an updated anchor time.", v2, v3, v4, v5, v6);
}

void sub_10139B664()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10139B73C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_10139B814()
{
  sub_1002616C4();
  sub_1005344AC();
  sub_1000D4D50();
  sub_1005B0388();
  sub_1005B0398(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CMTimebaseSetTimerDispatchSourceNextFireTime failed (%d)");
}

void sub_10139B8D8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_10139B9B0()
{
  sub_1002616C4();
  sub_1005344AC();
  sub_1000D4D50();
  sub_1005B0388();
  sub_1005B0398(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CMTimebaseSetTimerDispatchSourceNextFireTime failed (%d)");
}

void sub_10139BA88()
{
  sub_1002616C4();
  sub_1005344AC();
  sub_1000D4D50();
  sub_1005B0388();
  sub_1005B0398(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CMTimebaseSetRateAndAnchorTime failed (%d)");
}

void sub_10139BB4C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Double-enabling display link", v2, v3, v4, v5, v6);
}

void sub_10139BBFC(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_1000C88E0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10139BCC8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Disabling display link unexpectedly!", v2, v3, v4, v5, v6);
}

void sub_10139BD8C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_10139BE50()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_10139BF14()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot get the current min z-value for a cross-container selection", v2, v3, v4, v5, v6);
}

void sub_10139BFD8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot get the current max z-value for a cross-container selection", v2, v3, v4, v5, v6);
}

void sub_10139C09C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot get the current z-value for a cross-container selection", v2, v3, v4, v5, v6);
}

void sub_10139C160()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d If we have a cross-container selection, the container whose z-order is being changed must be specified!", v2, v3, v4, v5, v6);
}

void sub_10139C238()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Max index for z-order is below min index! This is not good. Skipping z-order operation entirely.", v2, v3, v4, v5, v6);
}

void sub_10139C2FC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not get the generic z-order siblings for a cross-container selection", v2, v3, v4, v5, v6);
}

void sub_10139C460()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot get the generic min index for a cross-container selection", v2, v3, v4, v5, v6);
}

void sub_10139C524()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot get the generic max index for a cross-container selection", v2, v3, v4, v5, v6);
}

void sub_10139C5E8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot get the generic max index for a cross-container selection", v2, v3, v4, v5, v6);
}

void sub_10139C6AC()
{
  sub_1000C5968();
  v2 = "[CRLCanvasSearchReference commandForReplacingWithString:options:]";
  sub_1000C88F0();
  v3 = 80;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot replace string on drawable", v1, 0x22u);
}

void sub_10139C77C()
{
  sub_1000C5968();
  v2 = "[CRLCanvasSearchReference selectionPath]";
  sub_1000C88F0();
  v3 = 97;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Canvas search reference was not initialized with a selection path!", v1, 0x22u);
}

void sub_10139C84C()
{
  sub_1000C5968();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10139C95C()
{
  sub_1000C5968();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10139CA94()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Use the class method: styleProviderForStorage and do not allocate this class directly. Alternatively, provide your own implementation.", v2, v3, v4, v5, v6);
}

void sub_10139CB58()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Use the class method: styleProviderForStorage and do not allocate this class directly. Alternatively, provide your own implementation.", v2, v3, v4, v5, v6);
}

void sub_10139CC1C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Use the class method: styleProviderForStorage and do not allocate this class directly. Alternatively, provide your own implementation.", v2, v3, v4, v5, v6);
}

void sub_10139CCE0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Use the class method: styleProviderForStorage and do not allocate this class directly. Alternatively, provide your own implementation.", v2, v3, v4, v5, v6);
}

uint64_t EntityProperty<>.init()()
{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

uint64_t IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)()
{
  return IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
}

{
  return IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)()
{
  return IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
}

{
  return IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t _AssistantIntent.IntentProjection.subscript.getter()
{
  return _AssistantIntent.IntentProjection.subscript.getter();
}

{
  return _AssistantIntent.IntentProjection.subscript.getter();
}

uint64_t _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)()
{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall URL.fragment(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.fragment(percentEncoded:)(percentEncoded);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::Int_optional __swiftcall IndexSet.integerGreaterThan(_:)(Swift::Int a1)
{
  v1 = IndexSet.integerGreaterThan(_:)(a1);
  result.value = v1;
  result.is_nil = v2;
  return result;
}

Swift::tuple_inserted_Bool_memberAfterInsert_Int __swiftcall IndexSet.insert(_:)(Swift::Int a1)
{
  v1 = IndexSet.insert(_:)(a1);
  result.memberAfterInsert = v2;
  result.inserted = v1;
  return result;
}

Swift::Int_optional __swiftcall IndexSet.remove(_:)(Swift::Int a1)
{
  v1 = IndexSet.remove(_:)(a1);
  result.value = v1;
  result.is_nil = v2;
  return result;
}

uint64_t ChoiceOf.init(_:)()
{
  return ChoiceOf.init(_:)();
}

{
  return ChoiceOf.init(_:)();
}

uint64_t dispatch thunk of Decoder.decodeSingularBoolField(value:)()
{
  return dispatch thunk of Decoder.decodeSingularBoolField(value:)();
}

{
  return dispatch thunk of Decoder.decodeSingularBoolField(value:)();
}

uint64_t dispatch thunk of Decoder.decodeSingularFloatField(value:)()
{
  return dispatch thunk of Decoder.decodeSingularFloatField(value:)();
}

{
  return dispatch thunk of Decoder.decodeSingularFloatField(value:)();
}

uint64_t dispatch thunk of Decoder.decodeSingularDoubleField(value:)()
{
  return dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
}

{
  return dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
}

uint64_t dispatch thunk of Decoder.decodeSingularUInt32Field(value:)()
{
  return dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
}

{
  return dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
}

uint64_t Tips.Rule.init<A>(_:_:)()
{
  return Tips.Rule.init<A>(_:_:)();
}

{
  return Tips.Rule.init<A>(_:_:)();
}

uint64_t Text.init(_:)()
{
  return Text.init(_:)();
}

{
  return Text.init(_:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t ForEach<>.init(_:content:)()
{
  return ForEach<>.init(_:content:)();
}

{
  return ForEach<>.init(_:content:)();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t CRStruct_0.encode(to:)()
{
  return CRStruct_0.encode(to:)();
}

{
  return CRStruct_0.encode(to:)();
}

uint64_t CRAttributedString.init(_:)()
{
  return CRAttributedString.init(_:)();
}

{
  return CRAttributedString.init(_:)();
}

{
  return CRAttributedString.init(_:)();
}

uint64_t CROrderedDictionary.subscript.getter()
{
  return CROrderedDictionary.subscript.getter();
}

{
  return CROrderedDictionary.subscript.getter();
}

uint64_t Capsule.subscript.getter()
{
  return Capsule.subscript.getter();
}

{
  return Capsule.subscript.getter();
}

uint64_t Capsule.init(_:id:)()
{
  return Capsule.init(_:id:)();
}

{
  return Capsule.init(_:id:)();
}

uint64_t dispatch thunk of CRDecoder.CRValueContainer.decode(_:)()
{
  return dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
}

{
  return dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
}

{
  return dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
}

uint64_t dispatch thunk of CREncoder.CRValueContainer.encode(_:)()
{
  return dispatch thunk of CREncoder.CRValueContainer.encode(_:)();
}

{
  return dispatch thunk of CREncoder.CRValueContainer.encode(_:)();
}

{
  return dispatch thunk of CREncoder.CRValueContainer.encode(_:)();
}

Swift::String __swiftcall String.init(_:)(NSString a1)
{
  v1 = String.init(_:)(a1);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.init(cString:)()
{
  return String.init(cString:)();
}

{
  return String.init(cString:)();
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

__C::_NSRange_optional __swiftcall _NSRange.intersection(_:)(__C::_NSRange a1)
{
  v1 = _NSRange.intersection(_:)(a1.location, a1.length);
  result.value.length = v2;
  result.value.location = v1;
  result.is_nil = v3;
  return result;
}

Swift::String __swiftcall Substring.lowercased()()
{
  v0 = Substring.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t dispatch thunk of SingleValueDecodingContainer.decode(_:)()
{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

uint64_t dispatch thunk of SingleValueEncodingContainer.encode(_:)()
{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex)
{
  RangeOfComposedCharactersAtIndex = _CFStringGetRangeOfComposedCharactersAtIndex(theString, theIndex);
  length = RangeOfComposedCharactersAtIndex.length;
  location = RangeOfComposedCharactersAtIndex.location;
  result.length = length;
  result.location = location;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  CurrentTokenRange = _CFStringTokenizerGetCurrentTokenRange(tokenizer);
  length = CurrentTokenRange.length;
  location = CurrentTokenRange.location;
  result.length = length;
  result.location = location;
  return result;
}

CGPoint CGContextConvertPointToDeviceSpace(CGContextRef c, CGPoint point)
{
  v4 = _CGContextConvertPointToDeviceSpace(c, point);
  y = v4.y;
  x = v4.x;
  result.y = y;
  result.x = x;
  return result;
}

CGPoint CGContextConvertPointToUserSpace(CGContextRef c, CGPoint point)
{
  v4 = _CGContextConvertPointToUserSpace(c, point);
  y = v4.y;
  x = v4.x;
  result.y = y;
  result.x = x;
  return result;
}

CGSize CGContextConvertSizeToDeviceSpace(CGContextRef c, CGSize size)
{
  v4 = _CGContextConvertSizeToDeviceSpace(c, size);
  height = v4.height;
  width = v4.width;
  result.height = height;
  result.width = width;
  return result;
}

CGSize CGContextConvertSizeToUserSpace(CGContextRef c, CGSize size)
{
  v4 = _CGContextConvertSizeToUserSpace(c, size);
  height = v4.height;
  width = v4.width;
  result.height = height;
  result.width = width;
  return result;
}

CGPoint CGPathGetCurrentPoint(CGPathRef path)
{
  CurrentPoint = _CGPathGetCurrentPoint(path);
  y = CurrentPoint.y;
  x = CurrentPoint.x;
  result.y = y;
  result.x = x;
  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  v4 = _CGPointApplyAffineTransform(point, t);
  y = v4.y;
  x = v4.x;
  result.y = y;
  result.x = x;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  v7 = _CTFramesetterSuggestFrameSizeWithConstraints(framesetter, stringRange, frameAttributes, constraints, fitRange);
  height = v7.height;
  width = v7.width;
  result.height = height;
  result.width = width;
  return result;
}

CFRange CTLineGetStringRange(CTLineRef line)
{
  StringRange = _CTLineGetStringRange(line);
  length = StringRange.length;
  location = StringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

CFRange CTRunGetStringRange(CTRunRef run)
{
  StringRange = _CTRunGetStringRange(run);
  length = StringRange.length;
  location = StringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSRangeFromString(NSString *aString)
{
  v3 = _NSRangeFromString(aString);
  length = v3.length;
  location = v3.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v4 = _NSUnionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::SdfAssetPath>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfVec3f>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::TfToken>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<int>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<float>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<int>()
{
    ;
  }
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  MethodDescription = _protocol_getMethodDescription(p, aSel, isRequiredMethod, isInstanceMethod);
  types = MethodDescription.types;
  name = MethodDescription.name;
  result.types = types;
  result.name = name;
  return result;
}
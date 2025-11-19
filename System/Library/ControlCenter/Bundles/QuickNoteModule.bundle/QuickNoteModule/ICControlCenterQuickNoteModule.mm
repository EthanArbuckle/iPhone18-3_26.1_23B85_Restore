@interface ICControlCenterQuickNoteModule
- (id)iconGlyph;
- (id)launchURLForTouchType:(int64_t)a3;
- (void)handleTapWithTouchType:(int64_t)a3;
@end

@implementation ICControlCenterQuickNoteModule

- (id)launchURLForTouchType:(int64_t)a3
{
  v22[1] = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDC5E98];
  v21 = *MEMORY[0x29EDC5E88];
  v6 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], a2, v3, v4, a3 == 2);
  v10 = objc_msgSend_stringValue(v6, v7, v8, v9);
  v22[0] = v10;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v11, v12, v13, v22, &v21, 1);
  v18 = objc_msgSend_urlForQuickNoteWithOptions_(v5, v15, v16, v17, v14);

  v19 = *MEMORY[0x29EDCA608];

  return v18;
}

- (void)handleTapWithTouchType:(int64_t)a3
{
  v7 = objc_msgSend_showOnLockScreen(MEMORY[0x29EDC5EC8], a2, v3, v4);
  v11 = objc_msgSend_launchURLForTouchType_(self, v8, v9, v10, a3);
  v12 = objc_opt_new();
  objc_msgSend_setObject_forKeyedSubscript_(v12, v13, v14, v15, MEMORY[0x29EDB8EB0], *MEMORY[0x29EDC1190]);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v16, v17, v18, *MEMORY[0x29EDC0C78], *MEMORY[0x29EDC1188]);
  if (v7)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v12, v19, v20, v21, *MEMORY[0x29EDC6CE8], *MEMORY[0x29EDC6CF0]);
  }

  v22 = dispatch_get_global_queue(0, 0);
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 3221225472;
  v25[2] = sub_29C9E6040;
  v25[3] = &unk_29F33E318;
  v26 = v11;
  v27 = v12;
  v23 = v12;
  v24 = v11;
  dispatch_async(v22, v25);
}

- (id)iconGlyph
{
  v3 = objc_msgSend_configurationWithPointSize_weight_scale_(MEMORY[0x29EDC7AD0], a2, 30.0, v2, 4, -1);
  v7 = objc_msgSend_mainScreen(MEMORY[0x29EDC7C40], v4, v5, v6);
  v11 = objc_msgSend_traitCollection(v7, v8, v9, v10);
  v15 = objc_msgSend_configurationWithTraitCollection_(v3, v12, v13, v14, v11);

  v19 = objc_msgSend__systemImageNamed_withConfiguration_(MEMORY[0x29EDC7AC8], v16, v17, v18, @"note.text.badge.plus", v15);
  objc_msgSend_size(v19, v20, v21, v22);
  v24 = v23;
  objc_msgSend_size(v19, v25, v23, v26);
  v28 = v27;
  objc_msgSend_alignmentRectInsets(v19, v29, v30, v27);
  v35 = v32 + 0.0;
  v36 = v31 + 0.0;
  v37 = v24 - (v32 + v34);
  v38 = v28 - (v31 + v33);
  if (v32 < v34)
  {
    v32 = v34;
  }

  if (v31 < v33)
  {
    v31 = v33;
  }

  v39 = -v32;
  v40 = -v31;
  v82.origin.x = v35;
  v82.origin.y = v36;
  v82.size.width = v37;
  v82.size.height = v38;
  v83 = CGRectInset(v82, v39, v40);
  x = v83.origin.x;
  y = v83.origin.y;
  width = v83.size.width;
  height = v83.size.height;
  v45 = -CGRectGetMinX(v83);
  v84.origin.x = x;
  v84.origin.y = y;
  v84.size.width = width;
  v84.size.height = height;
  MinY = CGRectGetMinY(v84);
  v47 = -MinY;
  v50 = objc_msgSend_sharedApplication(MEMORY[0x29EDC7938], v48, MinY, v49);
  v54 = objc_msgSend_userInterfaceLayoutDirection(v50, v51, v52, v53);

  if (v54 == 1)
  {
    v58 = objc_msgSend_imageWithHorizontallyFlippedOrientation(v19, v55, v56, v57);

    v19 = v58;
  }

  v59 = objc_alloc(MEMORY[0x29EDC7AB8]);
  v61 = objc_msgSend_initWithSize_(v59, v60, width, height);
  v77[0] = MEMORY[0x29EDCA5F8];
  v77[1] = 3221225472;
  v77[2] = sub_29C9E6384;
  v77[3] = &unk_29F33E340;
  v78 = v19;
  v79 = v45;
  v80 = v47;
  v62 = v19;
  v66 = objc_msgSend_imageWithActions_(v61, v63, v64, v65, v77);
  v70 = objc_msgSend_imageWithRenderingMode_(v66, v67, v68, v69, 2);

  if (v54 == 1)
  {
    v74 = objc_msgSend_imageWithHorizontallyFlippedOrientation(v70, v71, v72, v73);
  }

  else
  {
    v74 = v70;
  }

  v75 = v74;

  return v75;
}

@end
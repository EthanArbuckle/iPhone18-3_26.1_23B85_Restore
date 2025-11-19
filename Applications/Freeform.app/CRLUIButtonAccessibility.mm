@interface CRLUIButtonAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (id)__accessibilityLabel;
@end

@implementation CRLUIButtonAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (id)__accessibilityLabel
{
  v3 = [(CRLUIButtonAccessibility *)self imageForState:0];
  if (!v3)
  {
    v3 = [(CRLUIButtonAccessibility *)self backgroundImageForState:0];
  }

  v4 = [v3 accessibilityLabel];
  if ([v4 length])
  {
    v5 = v4;
    goto LABEL_13;
  }

  if (!qword_101A34F68)
  {
    v6 = [objc_opt_class() crlaxAdditionalButtonLabelsPerImageFileName];
    v7 = [v6 mutableCopy];
    v8 = qword_101A34F68;
    qword_101A34F68 = v7;

    v9 = qword_101A34F68;
    if (!qword_101A34F68)
    {
      v10 = objc_opt_new();
      v11 = qword_101A34F68;
      qword_101A34F68 = v10;

      v9 = qword_101A34F68;
    }

    v12 = CRLAccessibilityLocalizedString(@"extras");
    [v9 setObject:v12 forKey:@"CRL_NavigationBarExtrasIcon.png"];

    v13 = qword_101A34F68;
    v14 = CRLAccessibilityLocalizedString(@"preview.button");
    [v13 setObject:v14 forKey:@"CRL_Preview_N.png"];

    v15 = qword_101A34F68;
    v16 = CRLAccessibilityLocalizedString(@"paragraph.align.justified");
    [v15 setObject:v16 forKey:@"TSWP_align-H_justify_N.png"];

    v17 = qword_101A34F68;
    v18 = CRLAccessibilityLocalizedString(@"paragraph.align.left");
    [v17 setObject:v18 forKey:@"TSWP_align-H_left_N.png"];

    v19 = qword_101A34F68;
    v20 = CRLAccessibilityLocalizedString(@"paragraph.align.center");
    [v19 setObject:v20 forKey:@"TSWP_align-H_center_N.png"];

    v21 = qword_101A34F68;
    v22 = CRLAccessibilityLocalizedString(@"paragraph.align.right");
    [v21 setObject:v22 forKey:@"TSWP_align-H_right_N.png"];

    v23 = qword_101A34F68;
    v24 = CRLAccessibilityLocalizedString(@"paragraph.align.natural");
    [v23 setObject:v24 forKey:@"TSWP_align-H_natural_N.png"];

    v25 = qword_101A34F68;
    v26 = CRLAccessibilityLocalizedString(@"vertical.align.top");
    [v25 setObject:v26 forKey:@"TSWP_align-V_top_N.png"];

    v27 = qword_101A34F68;
    v28 = CRLAccessibilityLocalizedString(@"vertical.align.middle");
    [v27 setObject:v28 forKey:@"TSWP_align-V_middle_N.png"];

    v29 = qword_101A34F68;
    v30 = CRLAccessibilityLocalizedString(@"vertical.align.bottom");
    [v29 setObject:v30 forKey:@"TSWP_align-V_bottom_N.png"];

    v31 = qword_101A34F68;
    v32 = CRLAccessibilityLocalizedString(@"bold");
    [v31 setObject:v32 forKey:@"sf_inspector_style_bold.png"];

    v33 = qword_101A34F68;
    v34 = CRLAccessibilityLocalizedString(@"italic");
    [v33 setObject:v34 forKey:@"sf_inspector_style_italic.png"];

    v35 = qword_101A34F68;
    v36 = CRLAccessibilityLocalizedString(@"underline");
    [v35 setObject:v36 forKey:@"sf_inspector_style_underline.png"];

    v37 = qword_101A34F68;
    v38 = CRLAccessibilityLocalizedString(@"strikethrough");
    [v37 setObject:v38 forKey:@"sf_inspector_style_strikethrough.png"];

    v39 = qword_101A34F68;
    v40 = CRLAccessibilityLocalizedString(@"gear.button");
    [v39 setObject:v40 forKey:@"CRL_GearIcon.png"];

    v41 = qword_101A34F68;
    v42 = CRLAccessibilityLocalizedString(@"delete.button");
    [v41 setObject:v42 forKey:@"DeleteGlyph.png"];

    v43 = qword_101A34F68;
    v44 = CRLAccessibilityLocalizedString(@"formula.input.key.delete");
    [v43 setObject:v44 forKey:@"Keyboard_glyph_delete-N"];

    v45 = qword_101A34F68;
    v46 = CRLAccessibilityLocalizedString(@"formula.input.key.functionbrowser");
    [v45 setObject:v46 forKey:@"Keyboard-Formula_glyph_fx-P"];

    v47 = qword_101A34F68;
    v48 = CRLAccessibilityLocalizedString(@"formula.input.key.operatortoggle");
    [v47 setObject:v48 forKey:@"Keyboard-Formula_glyph_formula2-P"];

    v49 = qword_101A34F68;
    v50 = CRLAccessibilityLocalizedString(@"formula.input.key.date.duration");
    [v49 setObject:v50 forKey:@"Keyboard-DateTime.png"];
  }

  v51 = [v3 accessibilityIdentifier];
  v52 = [v51 lastPathComponent];

  v53 = [qword_101A34F68 objectForKey:v52];
  if (v53)
  {
    goto LABEL_10;
  }

  v54 = qword_101A34F68;
  v55 = [v52 stringByAppendingPathExtension:@"png"];
  v5 = [v54 objectForKey:v55];

  if (v5)
  {
    goto LABEL_12;
  }

  if ([v52 hasPrefix:@"CRL_Sync"])
  {
    v57 = @"sync.button";
  }

  else if ([v52 hasPrefix:@"CRL_Duplicate"])
  {
    v57 = @"duplicate.button";
  }

  else if ([v52 hasPrefix:@"CRL_Delete"])
  {
    v57 = @"delete.button";
  }

  else if ([v52 hasPrefix:@"CRL_Action"])
  {
    v57 = @"action.button";
  }

  else if ([v52 hasPrefix:@"CRL_New"])
  {
    v58 = [(CRLUIButtonAccessibility *)self superview];
    NSClassFromString(@"CRLToolbar");
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v53 = [objc_opt_class() crlaxAddDocumentButtonLabel];
      if (v53)
      {
        goto LABEL_10;
      }
    }

    v57 = @"new.button";
  }

  else if ([v52 hasPrefix:@"CRL_GearIcon"])
  {
    v57 = @"gear.button";
  }

  else
  {
    if (([v52 hasPrefix:@"kn_tb_icon_play"] & 1) == 0 && !objc_msgSend(v52, "hasPrefix:", @"kn_tb_icon_extdisplay"))
    {
      v60.receiver = self;
      v60.super_class = CRLUIButtonAccessibility;
      v53 = [(CRLUIButtonAccessibility *)&v60 accessibilityLabel];
      goto LABEL_10;
    }

    v57 = @"preview.animation";
  }

  v53 = CRLAccessibilityLocalizedString(v57);
LABEL_10:
  v5 = v53;
LABEL_12:

LABEL_13:

  return v5;
}

@end
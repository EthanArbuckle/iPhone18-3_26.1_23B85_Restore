@interface DoseComplicationFormatter
- (BOOL)supportsFamily:(int64_t)a3 forDevice:(id)a4;
- (DoseComplicationFormatter)init;
- (id)_alwaysOnTemplateWithFamily:(int64_t)a3 content:(id)a4 device:(id)a5;
- (id)_setupNoiseTemplateWithFamily:(int64_t)a3 device:(id)a4;
- (id)_templateWithFamily:(int64_t)a3 content:(id)a4 device:(id)a5;
- (id)accessibilityLabelForSymbol:(id)a3;
- (id)alwaysOnTemplateWithFamily:(int64_t)a3 forDevice:(id)a4;
- (id)createGaugeProviderWithFillValue:(double)a3 tintColor:(id)a4;
- (id)createMonospaceTextProviderWithText:(id)a3 shortText:(id)a4;
- (id)createOuterMonospaceTextProviderWithText:(id)a3;
- (id)formattedTemplateWithFamily:(int64_t)a3 forDevice:(id)a4;
- (id)fullColorImageProviderWithImage:(id)a3;
- (id)fullColorImageProviderWithSymbolName:(id)a3 tintColor:(id)a4 pointSizeSymbolConstants:(id *)a5;
- (id)imageProviderWithImage:(id)a3 tintColor:(id)a4;
- (id)imageProviderWithSymbolName:(id)a3 tintColor:(id)a4;
- (id)imageProviderWithSymbolName:(id)a3 tintColor:(id)a4 pointSizeSymbolConstants:(id *)a5;
- (id)newAlwaysOnDoseContent;
- (id)newSwitcherDoseContent;
- (id)setupComplicationBackgroundColor;
- (id)switcherTemplateWithFamily:(int64_t)a3 forDevice:(id)a4;
@end

@implementation DoseComplicationFormatter

- (DoseComplicationFormatter)init
{
  v12.receiver = self;
  v12.super_class = DoseComplicationFormatter;
  v2 = [(DoseComplicationFormatter *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSNumberFormatter);
    [v3 setNumberStyle:1];
    [v3 setMaximumFractionDigits:0];
    v4 = [NSNumber numberWithInt:0];
    v5 = [v3 stringFromNumber:v4];
    [v3 setNotANumberSymbol:v5];

    [(DoseComplicationFormatter *)v2 setDbFormatter:v3];
    v6 = [(DoseComplicationFormatter *)v2 newSwitcherDoseContent];
    [(DoseComplicationFormatter *)v2 setCurrentDoseContent:v6];

    v7 = [(DoseComplicationFormatter *)v2 newSwitcherDoseContent];
    switcherDoseContent = v2->_switcherDoseContent;
    v2->_switcherDoseContent = v7;

    v9 = [(DoseComplicationFormatter *)v2 newAlwaysOnDoseContent];
    alwaysOnDoseContent = v2->_alwaysOnDoseContent;
    v2->_alwaysOnDoseContent = v9;
  }

  return v2;
}

- (id)newSwitcherDoseContent
{
  v3 = objc_opt_new();
  [v3 setIsEnabled:1];
  LODWORD(v4) = 1116995584;
  [v3 setSlowLeq:v4];
  LODWORD(v5) = 1116995584;
  [v3 setFastLeq:v5];
  [v3 fastLeq];
  v7 = fmaxf(v6, 30.0);
  if (v7 > 120.0)
  {
    v7 = 120.0;
  }

  v8 = (v7 + -30.0) / 90.0;
  *&v8 = v8;
  [v3 setGaugeFillValue:v8];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"LEVEL_SHORT" value:&stru_C3E0 table:0];
  v12 = [v9 localizedStringForKey:@"LEVEL_SHORT" value:v11 table:@"Noise"];
  v13 = [(DoseComplicationFormatter *)self dbFormatter];
  [v3 slowLeq];
  v14 = [NSNumber numberWithFloat:?];
  v15 = [v13 stringFromNumber:v14];
  v16 = [NSString stringWithFormat:v12, v15];
  [v3 setLevelContentShort:v16];

  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"LEVEL_LONG" value:&stru_C3E0 table:0];
  v20 = [v17 localizedStringForKey:@"LEVEL_LONG" value:v19 table:@"Noise"];
  v21 = [(DoseComplicationFormatter *)self dbFormatter];
  [v3 slowLeq];
  v22 = [NSNumber numberWithFloat:?];
  v23 = [v21 stringFromNumber:v22];
  v24 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v20, [v23 integerValue]);
  [v3 setLevelContentLong:v24];

  v25 = [NSBundle bundleForClass:objc_opt_class()];
  v26 = [NSBundle bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:@"OK_LABEL" value:&stru_C3E0 table:0];
  v28 = [v25 localizedStringForKey:@"OK_LABEL" value:v27 table:@"Noise"];
  [v3 setClassifierContent:v28];

  [v3 setClassificationImageName:@"checkmark.circle.fill"];
  v29 = +[UIColor systemGreenColor];
  [v3 setTintColor:v29];

  v30 = +[UIColor systemGreenColor];
  [v3 setImageTintColor:v30];

  return v3;
}

- (id)newAlwaysOnDoseContent
{
  v2 = objc_opt_new();
  [v2 setIsEnabled:0];
  [v2 setSlowLeq:0.0];
  [v2 setFastLeq:0.0];
  [v2 setGaugeFillValue:0.0];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"UNIT_LABEL" value:&stru_C3E0 table:0];
  v6 = [v3 localizedStringForKey:@"UNIT_LABEL" value:v5 table:@"Noise"];
  [v2 setLevelContentShort:v6];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"UNIT_LABEL_LONG" value:&stru_C3E0 table:0];
  v10 = [v7 localizedStringForKey:@"UNIT_LABEL_LONG" value:v9 table:@"Noise"];
  [v2 setLevelContentLong:v10];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"APP_NAME" value:&stru_C3E0 table:0];
  v14 = [v11 localizedStringForKey:@"APP_NAME" value:v13 table:@"Noise"];
  [v2 setClassifierContent:v14];

  [v2 setClassificationImageName:@"circle.fill"];
  v15 = +[UIColor systemGrayColor];
  [v2 setTintColor:v15];

  v16 = [UIColor colorWithWhite:1.0 alpha:0.3];
  [v2 setImageTintColor:v16];

  return v2;
}

- (BOOL)supportsFamily:(int64_t)a3 forDevice:(id)a4
{
  if (CLKComplicationFamilyCircularMedium == a3)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = 0x1FDFu >> a3;
    if (a3 > 0xC)
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4 & 1;
}

- (id)accessibilityLabelForSymbol:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"checkmark.circle.fill"])
  {
    v4 = @"THRESHOLD_OK_SYMBOL_ACCESSIBILITY";
LABEL_5:
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:v4 value:&stru_C3E0 table:0];
    v8 = [v5 localizedStringForKey:v4 value:v7 table:@"Noise"];

    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"exclamationmark.triangle.fill"])
  {
    v4 = @"THRESHOLD_WARNING_SYMBOL_ACCESSIBILITY";
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)imageProviderWithSymbolName:(id)a3 tintColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:2 scale:12.0];
  if (qword_10B28 != -1)
  {
    sub_6810();
  }

  v9 = [qword_10B20 objectForKeyedSubscript:v6];
  if (!v9)
  {
    v9 = [UIImage systemImageNamed:v6 withConfiguration:v8];
    v10 = [(DoseComplicationFormatter *)self accessibilityLabelForSymbol:v6];
    [v9 setAccessibilityLabel:v10];

    [qword_10B20 setObject:v9 forKeyedSubscript:v6];
  }

  v11 = [(DoseComplicationFormatter *)self imageProviderWithImage:v9 tintColor:v7];

  return v11;
}

- (id)imageProviderWithSymbolName:(id)a3 tintColor:(id)a4 pointSizeSymbolConstants:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [CLKSymbolImageProvider symbolImageProviderWithSystemName:v9];
  [v10 setTintColor:v8];

  v11 = [(DoseComplicationFormatter *)self accessibilityLabelForSymbol:v9];

  [v10 setAccessibilityLabel:v11];
  [v10 setIgnoreHierarchicalLayers:1];
  v12 = [NSNumber numberWithDouble:a5->var0];
  [v10 setOverridePointSize:v12];

  return v10;
}

- (id)imageProviderWithImage:(id)a3 tintColor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [CLKImageProvider imageProviderWithOnePieceImage:v6];
  [v7 setTintColor:v5];

  v8 = [v6 accessibilityLabel];

  [v7 setAccessibilityLabel:v8];

  return v7;
}

- (id)fullColorImageProviderWithImage:(id)a3
{
  v3 = a3;
  v4 = [CLKFullColorImageProvider providerWithFullColorImage:v3 monochromeFilterType:1];
  v5 = [v3 accessibilityLabel];

  [v4 setAccessibilityLabel:v5];

  return v4;
}

- (id)fullColorImageProviderWithSymbolName:(id)a3 tintColor:(id)a4 pointSizeSymbolConstants:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [CLKFullColorSymbolImageProvider symbolImageProviderWithSystemName:v9];
  [v10 setTintColor:v8];

  v11 = [(DoseComplicationFormatter *)self accessibilityLabelForSymbol:v9];

  [v10 setAccessibilityLabel:v11];
  [v10 setIgnoreHierarchicalLayers:1];
  v12 = [NSNumber numberWithDouble:a5->var0];
  [v10 setOverridePointSize:v12];

  return v10;
}

- (id)setupComplicationBackgroundColor
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [UIColor colorWithWhite:1.0 alpha:0.1];
  [v2 setObject:v3 forKeyedSubscript:NTKRichComplicationViewBackgroundColorKey];

  return v2;
}

- (id)formattedTemplateWithFamily:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = [(DoseComplicationFormatter *)self switcherDoseContent];
  v8 = [(DoseComplicationFormatter *)self _templateWithFamily:a3 content:v7 device:v6];

  return v8;
}

- (id)switcherTemplateWithFamily:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = [(DoseComplicationFormatter *)self switcherDoseContent];
  v8 = [(DoseComplicationFormatter *)self _templateWithFamily:a3 content:v7 device:v6];

  return v8;
}

- (id)alwaysOnTemplateWithFamily:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = [(DoseComplicationFormatter *)self alwaysOnDoseContent];
  v8 = [(DoseComplicationFormatter *)self _alwaysOnTemplateWithFamily:a3 content:v7 device:v6];

  return v8;
}

- (id)_alwaysOnTemplateWithFamily:(int64_t)a3 content:(id)a4 device:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (qword_10BF0 != -1)
  {
    sub_6824();
  }

  v121 = xmmword_10BB0;
  v122 = *&qword_10BC0;
  *v123 = xmmword_10BD0;
  *&v123[16] = xmmword_10BE0;
  v117 = xmmword_10B70;
  v118 = xmmword_10B80;
  v119 = xmmword_10B90;
  v120 = unk_10BA0;
  v113 = xmmword_10B30;
  v114 = unk_10B40;
  v115 = xmmword_10B50;
  v116 = *&qword_10B60;
  if (a3 <= 7)
  {
    if (a3 <= 2)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_37;
        }

        v10 = objc_alloc_init(CLKComplicationTemplateModularLargeStandardBody);
        v17 = [NSBundle bundleForClass:objc_opt_class()];
        v18 = [NSBundle bundleForClass:objc_opt_class()];
        v19 = [v18 localizedStringForKey:@"HEADER_TITLE" value:&stru_C3E0 table:0];
        v20 = [v17 localizedStringForKey:@"HEADER_TITLE" value:v19 table:@"Noise"];
        v21 = [CLKSimpleTextProvider textProviderWithText:v20];
        [v10 setHeaderTextProvider:v21];

        v22 = [v8 classifierContent];
        v23 = [CLKSimpleTextProvider textProviderWithText:v22];
        [v10 setBody1TextProvider:v23];

        v24 = [v8 levelContentLong];
        v25 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v24 shortText:0];
        [v10 setBody2TextProvider:v25];

        v26 = +[UIColor systemBlueColor];
        v27 = [v10 headerTextProvider];
        [v27 setTintColor:v26];
      }

      else
      {
        v10 = objc_alloc_init(CLKComplicationTemplateModularSmallStackImage);
        v46 = [v8 classificationImageName];

        if (v46)
        {
          v47 = [v8 classificationImageName];
          v48 = [v8 imageTintColor];
          v111 = v119;
          v112 = v120;
          v49 = [(DoseComplicationFormatter *)self imageProviderWithSymbolName:v47 tintColor:v48 pointSizeSymbolConstants:&v111];
          [v10 setLine1ImageProvider:v49];
        }

        v50 = [v8 levelContentShort];
        v51 = [NSString localizedStringWithFormat:@"%@", v50];
        v52 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v51 shortText:0];
        [v10 setLine2TextProvider:v52];

        [v10 setHighlightLine2:0];
      }

      v42 = [v8 tintColor];
      [v10 setTintColor:v42];
LABEL_31:

      goto LABEL_38;
    }

    if (a3 != 3)
    {
      if (a3 == 4)
      {
        v10 = objc_alloc_init(CLKComplicationTemplateCircularSmallStackText);
        v28 = [NSBundle bundleForClass:objc_opt_class()];
        v29 = [NSBundle bundleForClass:objc_opt_class()];
        [v29 localizedStringForKey:@"UNKNOWN_DECIBELS_LEVEL" value:&stru_C3E0 table:0];
        v31 = v30 = v9;
        v32 = [v28 localizedStringForKey:@"UNKNOWN_DECIBELS_LEVEL" value:v31 table:@"Noise"];
        v33 = [CLKSimpleTextProvider textProviderWithText:v32];
        [v10 setLine1TextProvider:v33];

        v9 = v30;
        v34 = [NSBundle bundleForClass:objc_opt_class()];
        v35 = [NSBundle bundleForClass:objc_opt_class()];
        v36 = [v35 localizedStringForKey:@"UNIT_LABEL" value:&stru_C3E0 table:0];
        v37 = [v34 localizedStringForKey:@"UNIT_LABEL" value:v36 table:@"Noise"];
        v38 = [CLKSimpleTextProvider textProviderWithText:v37];
        [v10 setLine2TextProvider:v38];

        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v110 = v9;
    v10 = objc_alloc_init(CLKComplicationTemplateUtilitarianLargeFlat);
    v53 = [v8 classificationImageName];

    if (v53)
    {
      v54 = [v8 classificationImageName];
      v55 = [v8 imageTintColor];
      v56 = [(DoseComplicationFormatter *)self imageProviderWithSymbolName:v54 tintColor:v55];
      [v10 setImageProvider:v56];
    }

    v108 = [NSBundle bundleForClass:objc_opt_class()];
    v109 = [NSBundle bundleForClass:objc_opt_class()];
    v107 = [v109 localizedStringForKey:@"LEVEL_SUMMARY" value:&stru_C3E0 table:0];
    v57 = [v108 localizedStringForKey:@"LEVEL_SUMMARY" value:v107 table:@"Noise"];
    v106 = [v8 classifierContent];
    v58 = [v106 uppercaseString];
    v59 = [NSBundle bundleForClass:objc_opt_class()];
    v60 = [NSBundle bundleForClass:objc_opt_class()];
    v61 = [v60 localizedStringForKey:&stru_C3E0 value:&stru_C3E0 table:0];
    v62 = [v59 localizedStringForKey:&stru_C3E0 value:v61 table:@"Noise"];
    v63 = v57;
    v64 = [NSString localizedStringWithFormat:v57, v58, v62];
    v65 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v64 shortText:0];
    [v10 setTextProvider:v65];

    v66 = [v10 textProvider];
    [v66 setIgnoreUppercaseStyle:1];
LABEL_35:

    v9 = v110;
    goto LABEL_38;
  }

  if (a3 <= 9)
  {
    if (a3 != 8)
    {
      v39 = [NSBundle bundleForClass:objc_opt_class()];
      v40 = [NSBundle bundleForClass:objc_opt_class()];
      v41 = [v40 localizedStringForKey:@"HEADER_TITLE" value:&stru_C3E0 table:0];
      v42 = [v39 localizedStringForKey:@"HEADER_TITLE" value:v41 table:@"Noise"];

      v10 = objc_alloc_init(CLKComplicationTemplateGraphicBezelCircularText);
      v43 = [v42 localizedCapitalizedString];
      v44 = [CLKSimpleTextProvider textProviderWithText:v43];
      [v10 setTextProvider:v44];

      v45 = [(DoseComplicationFormatter *)self _alwaysOnTemplateWithFamily:10 content:v8 device:v9];
      [v10 setCircularTemplate:v45];
LABEL_30:

      goto LABEL_31;
    }

    v110 = v9;
    v10 = objc_alloc_init(CLKComplicationTemplateGraphicCornerMeteredGaugeText);
    v73 = [NSBundle bundleForClass:objc_opt_class()];
    v74 = [NSBundle bundleForClass:objc_opt_class()];
    v75 = [v74 localizedStringForKey:@"UNIT_LABEL" value:&stru_C3E0 table:0];
    v76 = [v73 localizedStringForKey:@"UNIT_LABEL" value:v75 table:@"Noise"];
    v77 = [CLKSimpleTextProvider textProviderWithText:v76];
    [v10 setLeadingTextProvider:v77];

    v78 = [v10 leadingTextProvider];
    [v78 setIgnoreUppercaseStyle:1];

    v79 = [UIColor colorWithRed:0.99 green:0.99 blue:0.99 alpha:1.0];
    v80 = [v10 leadingTextProvider];
    [v80 setTintColor:v79];

    v81 = [NSBundle bundleForClass:objc_opt_class()];
    v82 = [NSBundle bundleForClass:objc_opt_class()];
    v83 = [v82 localizedStringForKey:@"UNKNOWN_DECIBELS_LEVEL" value:&stru_C3E0 table:0];
    v84 = [v81 localizedStringForKey:@"UNKNOWN_DECIBELS_LEVEL" value:v83 table:@"Noise"];
    v85 = [(DoseComplicationFormatter *)self createOuterMonospaceTextProviderWithText:v84];
    [v10 setOuterTextProvider:v85];

    v86 = [v8 classificationImageName];

    if (v86)
    {
      v87 = [v8 classificationImageName];
      v88 = [v8 imageTintColor];
      v111 = v113;
      v112 = v114;
      v89 = [(DoseComplicationFormatter *)self fullColorImageProviderWithSymbolName:v87 tintColor:v88 pointSizeSymbolConstants:&v111];
      [v10 setOuterImageProvider:v89];
    }

    [v8 gaugeFillValue];
    v91 = v90;
    v66 = [v8 tintColor];
    v92 = [(DoseComplicationFormatter *)self createGaugeProviderWithFillValue:v66 tintColor:v91];
    [v10 setGaugeProvider:v92];

    goto LABEL_35;
  }

  switch(a3)
  {
    case 10:
      v10 = objc_alloc_init(CLKComplicationTemplateGraphicCircularOpenMeteredGaugeImage);
      v67 = [v8 levelContentShort];
      v68 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v67 shortText:0];
      [v10 setTextProvider:v68];

      v69 = [v8 classificationImageName];

      if (v69)
      {
        v14 = [v8 classificationImageName];
        v15 = [v8 imageTintColor];
        v111 = v116;
        v16 = v117;
        goto LABEL_28;
      }

LABEL_29:
      [v8 gaugeFillValue];
      v72 = v71;
      v42 = [v8 tintColor];
      v45 = [(DoseComplicationFormatter *)self createGaugeProviderWithFillValue:v42 tintColor:v72];
      [v10 setGaugeProvider:v45];
      goto LABEL_30;
    case 11:
      v10 = objc_alloc_init(CLKComplicationTemplateGraphicRectangularTextMeteredGauge);
      v93 = [v8 classifierContent];
      v94 = [CLKSimpleTextProvider textProviderWithText:v93];

      v95 = [UIColor colorWithRed:0.99 green:0.99 blue:0.99 alpha:1.0];
      [v94 setTintColor:v95];

      [v10 setHeaderTextProvider:v94];
      v96 = [NSBundle bundleForClass:objc_opt_class()];
      v97 = [NSBundle bundleForClass:objc_opt_class()];
      v98 = [v97 localizedStringForKey:@"UNIT_LABEL_LONG" value:&stru_C3E0 table:0];
      v99 = [v96 localizedStringForKey:@"UNIT_LABEL_LONG" value:v98 table:@"Noise"];
      v100 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v99 shortText:0];
      [v10 setBody1TextProvider:v100];

      [v8 gaugeFillValue];
      v102 = v101;
      v103 = [v8 tintColor];
      v104 = [(DoseComplicationFormatter *)self createGaugeProviderWithFillValue:v103 tintColor:v102];
      [v10 setGaugeProvider:v104];

      goto LABEL_38;
    case 12:
      v10 = objc_alloc_init(CLKComplicationTemplateGraphicExtraLargeCircularOpenMeteredGaugeImage);
      v11 = [v8 levelContentShort];
      v12 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v11 shortText:0];
      [v10 setTextProvider:v12];

      v13 = [v8 classificationImageName];

      if (v13)
      {
        v14 = [v8 classificationImageName];
        v15 = [v8 imageTintColor];
        v111 = *&v123[8];
        v16 = *&v123[24];
LABEL_28:
        v112 = v16;
        v70 = [(DoseComplicationFormatter *)self fullColorImageProviderWithSymbolName:v14 tintColor:v15 pointSizeSymbolConstants:&v111];
        [v10 setImageProvider:v70];

        goto LABEL_29;
      }

      goto LABEL_29;
  }

LABEL_37:
  v10 = [(DoseComplicationFormatter *)self _templateWithFamily:a3 content:v8 device:v9];
LABEL_38:

  return v10;
}

- (id)_templateWithFamily:(int64_t)a3 content:(id)a4 device:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (qword_10BF0 != -1)
  {
    sub_6824();
  }

  *&v192[16] = xmmword_10BB0;
  v193 = *&qword_10BC0;
  *v194 = xmmword_10BD0;
  *&v194[16] = xmmword_10BE0;
  *v190 = xmmword_10B70;
  *&v190[16] = xmmword_10B80;
  v191 = xmmword_10B90;
  *v192 = unk_10BA0;
  v187 = xmmword_10B30;
  *v188 = unk_10B40;
  *&v188[16] = xmmword_10B50;
  v189 = *&qword_10B60;
  v10 = [v8 classificationImageName];

  if (v10)
  {
    v11 = [v8 classificationImageName];
    v12 = [v8 imageTintColor];
    v13 = [(DoseComplicationFormatter *)self imageProviderWithSymbolName:v11 tintColor:v12];

    v14 = [v8 classificationImageName];
    v15 = [(DoseComplicationFormatter *)self accessibilityLabelForSymbol:v14];
    v183 = v13;
    [v13 setAccessibilityLabel:v15];
  }

  else
  {
    v183 = 0;
  }

  v16 = [UIColor colorWithRed:0.99 green:0.99 blue:0.99 alpha:1.0];
  v17 = [(DoseComplicationFormatter *)self dbFormatter];
  [v8 slowLeq];
  v18 = [NSNumber numberWithFloat:?];
  v19 = [v17 stringFromNumber:v18];

  v184 = v19;
  if (CLKComplicationFamilyCircularMedium == a3)
  {
    v20 = objc_alloc_init(CLKComplicationTemplateCircularMediumStackImage);
    v21 = v183;
    [v20 setLine1ImageProvider:v183];
    v22 = [v8 levelContentShort];
    v23 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v22 shortText:v19];
    [v20 setLine2TextProvider:v23];

LABEL_8:
    if ([v8 isEnabled])
    {
      [v20 setTintColor:v16];
    }

    goto LABEL_87;
  }

  v20 = 0;
  if (a3 > 6)
  {
    if (a3 > 9)
    {
      v182 = v16;
      if (a3 == 10)
      {
        v20 = objc_alloc_init(CLKComplicationTemplateGraphicCircularOpenMeteredGaugeImage);
        v57 = v9;
        if ([v8 isEnabled])
        {
          v58 = [v8 levelContentShort];
          v59 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v58 shortText:v184];
          [v20 setTextProvider:v59];
        }

        else
        {
          v58 = [NSBundle bundleForClass:objc_opt_class()];
          v59 = [NSBundle bundleForClass:objc_opt_class()];
          v126 = [v59 localizedStringForKey:@"UNIT_LABEL" value:&stru_C3E0 table:0];
          v127 = [v58 localizedStringForKey:@"UNIT_LABEL" value:v126 table:@"Noise"];
          v128 = [CLKSimpleTextProvider textProviderWithText:v127];
          [v20 setTextProvider:v128];
        }

        v21 = v183;

        v129 = [v8 classificationImageName];

        if (v129)
        {
          v130 = [v8 classificationImageName];
          v131 = [v8 imageTintColor];
          v185 = v189;
          v186 = *v190;
          v132 = [(DoseComplicationFormatter *)self fullColorImageProviderWithSymbolName:v130 tintColor:v131 pointSizeSymbolConstants:&v185];
          [v20 setImageProvider:v132];
        }

        [v8 gaugeFillValue];
        v134 = v133;
        v135 = [v8 tintColor];
        v136 = [(DoseComplicationFormatter *)self createGaugeProviderWithFillValue:v135 tintColor:v134];
        [v20 setGaugeProvider:v136];
      }

      else
      {
        v21 = v183;
        if (a3 != 11)
        {
          if (a3 != 12)
          {
            goto LABEL_87;
          }

          v20 = objc_alloc_init(CLKComplicationTemplateGraphicExtraLargeCircularOpenMeteredGaugeImage);
          v178 = v9;
          if ([v8 isEnabled])
          {
            v36 = [v8 levelContentShort];
            v37 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v36 shortText:v19];
            [v20 setTextProvider:v37];
          }

          else
          {
            v36 = [NSBundle bundleForClass:objc_opt_class()];
            v37 = [NSBundle bundleForClass:objc_opt_class()];
            v107 = [v37 localizedStringForKey:@"UNIT_LABEL" value:&stru_C3E0 table:0];
            v108 = [v36 localizedStringForKey:@"UNIT_LABEL" value:v107 table:@"Noise"];
            v109 = [CLKSimpleTextProvider textProviderWithText:v108];
            [v20 setTextProvider:v109];

            v21 = v183;
          }

          v110 = [v8 classificationImageName];

          if (v110)
          {
            v111 = [v8 classificationImageName];
            v112 = [v8 imageTintColor];
            v185 = *&v194[8];
            v186 = *&v194[24];
            v113 = [(DoseComplicationFormatter *)self fullColorImageProviderWithSymbolName:v111 tintColor:v112 pointSizeSymbolConstants:&v185];
            [v20 setImageProvider:v113];
          }

          [v8 gaugeFillValue];
          v115 = v114;
          v116 = [v8 tintColor];
          v117 = [(DoseComplicationFormatter *)self createGaugeProviderWithFillValue:v116 tintColor:v115];
          [v20 setGaugeProvider:v117];
LABEL_69:

          v9 = v178;
LABEL_86:
          v16 = v182;
          goto LABEL_87;
        }

        v57 = v9;
        v20 = objc_alloc_init(CLKComplicationTemplateGraphicRectangularTextMeteredGauge);
        v93 = [v8 classifierContent];
        v94 = [CLKSimpleTextProvider textProviderWithText:v93];

        v95 = [v8 tintColor];
        [v94 setTintColor:v95];

        [v20 setHeaderTextProvider:v94];
        v96 = [v8 levelContentLong];
        v97 = [v8 levelContentShort];
        v98 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v96 shortText:v97];
        [v20 setBody1TextProvider:v98];

        v99 = [v8 classificationImageName];

        if (v99)
        {
          v100 = [v8 isEnabled];
          v101 = [v8 classificationImageName];
          if (v100)
          {
            v102 = [v8 imageTintColor];
            v185 = *&v190[8];
            v186 = *&v190[24];
            v103 = [(DoseComplicationFormatter *)self fullColorImageProviderWithSymbolName:v101 tintColor:v102 pointSizeSymbolConstants:&v185];
            [v20 setHeaderImageProvider:v103];
          }

          else
          {
            v167 = [v8 tintColor];
            v185 = *&v190[8];
            v186 = *&v190[24];
            v168 = [(DoseComplicationFormatter *)self fullColorImageProviderWithSymbolName:v101 tintColor:v167 pointSizeSymbolConstants:&v185];
            [v20 setHeaderImageProvider:v168];

            v101 = [v8 tintColor];
            v102 = [v20 body1TextProvider];
            [v102 setTintColor:v101];
          }

          v21 = v183;
        }

        [v8 gaugeFillValue];
        v170 = v169;
        v171 = [v8 tintColor];
        v172 = [(DoseComplicationFormatter *)self createGaugeProviderWithFillValue:v171 tintColor:v170];
        [v20 setGaugeProvider:v172];
      }

      v9 = v57;
      goto LABEL_86;
    }

    if (a3 == 7)
    {
      v179 = v9;
      v20 = objc_alloc_init(CLKComplicationTemplateExtraLargeStackImage);
      v41 = [v8 classificationImageName];

      if (v41)
      {
        v42 = [v8 classificationImageName];
        [v8 imageTintColor];
        v44 = v43 = v16;
        v185 = v193;
        v186 = *v194;
        v45 = [(DoseComplicationFormatter *)self imageProviderWithSymbolName:v42 tintColor:v44 pointSizeSymbolConstants:&v185];
        [v20 setLine1ImageProvider:v45];

        v16 = v43;
      }

      v21 = v183;
      if ([v8 isEnabled])
      {
        v46 = [v8 levelContentShort];
        v47 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v46 shortText:v19];
        [v20 setLine2TextProvider:v47];
      }

      else
      {
        v118 = v16;
        v46 = [NSBundle bundleForClass:objc_opt_class()];
        v47 = [NSBundle bundleForClass:objc_opt_class()];
        v119 = [v47 localizedStringForKey:@"UNIT_LABEL" value:&stru_C3E0 table:0];
        v120 = [v46 localizedStringForKey:@"UNIT_LABEL" value:v119 table:@"Noise"];
        v121 = [CLKSimpleTextProvider textProviderWithText:v120];
        [v20 setLine2TextProvider:v121];

        v16 = v118;
      }

      v9 = v179;

      goto LABEL_87;
    }

    if (a3 != 8)
    {
      v182 = v16;
      v24 = v9;
      if ([v8 isEnabled])
      {
        v25 = [NSBundle bundleForClass:objc_opt_class()];
        v26 = [NSBundle bundleForClass:objc_opt_class()];
        v27 = [v26 localizedStringForKey:@"BEZEL_LABEL" value:&stru_C3E0 table:0];
        v28 = [v25 localizedStringForKey:@"BEZEL_LABEL" value:v27 table:@"Noise"];
        v29 = [v8 classifierContent];
        v30 = [NSString localizedStringWithFormat:v28, v29];
      }

      else
      {
        v25 = [NSBundle bundleForClass:objc_opt_class()];
        v26 = [NSBundle bundleForClass:objc_opt_class()];
        v27 = [v26 localizedStringForKey:@"BEZEL_SUSPENDED_LABEL" value:&stru_C3E0 table:0];
        v30 = [v25 localizedStringForKey:@"BEZEL_SUSPENDED_LABEL" value:v27 table:@"Noise"];
      }

      v20 = objc_alloc_init(CLKComplicationTemplateGraphicBezelCircularText);
      v104 = [v30 localizedCapitalizedString];
      v105 = [CLKSimpleTextProvider textProviderWithText:v104];
      [v20 setTextProvider:v105];

      v106 = [(DoseComplicationFormatter *)self _templateWithFamily:10 content:v8 device:v24];
      [v20 setCircularTemplate:v106];

      v9 = v24;
      goto LABEL_75;
    }

    v180 = v9;
    v182 = v16;
    if ([v8 isEnabled])
    {
      v20 = objc_alloc_init(CLKComplicationTemplateGraphicCornerMeteredGaugeText);
      v67 = [NSBundle bundleForClass:objc_opt_class()];
      v68 = [NSBundle bundleForClass:objc_opt_class()];
      v69 = [v68 localizedStringForKey:@"UNIT_LABEL" value:&stru_C3E0 table:0];
      v70 = [v67 localizedStringForKey:@"UNIT_LABEL" value:v69 table:@"Noise"];
      v71 = [CLKSimpleTextProvider textProviderWithText:v70];
      [v20 setLeadingTextProvider:v71];

      v72 = [v20 leadingTextProvider];
      [v72 setIgnoreUppercaseStyle:1];

      v73 = [v8 tintColor];
      v74 = [v20 leadingTextProvider];
      [v74 setTintColor:v73];

      v75 = [(DoseComplicationFormatter *)self dbFormatter];
      [v8 slowLeq];
      v76 = [NSNumber numberWithFloat:?];
      v77 = [v75 stringFromNumber:v76];
      v78 = [(DoseComplicationFormatter *)self createOuterMonospaceTextProviderWithText:v77];
      [v20 setOuterTextProvider:v78];

      v79 = [v8 classificationImageName];

      if (v79)
      {
        v80 = [v8 classificationImageName];
        v81 = [v8 imageTintColor];
        v185 = v187;
        v186 = *v188;
        v82 = [(DoseComplicationFormatter *)self fullColorImageProviderWithSymbolName:v80 tintColor:v81 pointSizeSymbolConstants:&v185];
        [v20 setOuterImageProvider:v82];
LABEL_72:
      }
    }

    else
    {
      v20 = objc_alloc_init(CLKComplicationTemplateGraphicCornerMeteredGaugeImage);
      v145 = [NSBundle bundleForClass:objc_opt_class()];
      v146 = [NSBundle bundleForClass:objc_opt_class()];
      v147 = [v146 localizedStringForKey:@"UNIT_LABEL" value:&stru_C3E0 table:0];
      v148 = [v145 localizedStringForKey:@"UNIT_LABEL" value:v147 table:@"Noise"];
      v149 = [CLKSimpleTextProvider textProviderWithText:v148];
      [v20 setLeadingTextProvider:v149];

      v150 = [v20 leadingTextProvider];
      [v150 setIgnoreUppercaseStyle:1];

      v151 = [v8 tintColor];
      v152 = [v20 leadingTextProvider];
      [v152 setTintColor:v151];

      v153 = [v8 classificationImageName];

      if (v153)
      {
        v80 = [v8 classificationImageName];
        v81 = [v8 imageTintColor];
        v185 = *&v188[8];
        v186 = *&v188[24];
        v82 = [(DoseComplicationFormatter *)self fullColorImageProviderWithSymbolName:v80 tintColor:v81 pointSizeSymbolConstants:&v185];
        [v20 setImageProvider:v82];
        goto LABEL_72;
      }
    }

    [v8 gaugeFillValue];
    v155 = v154;
    v156 = [v8 tintColor];
    v157 = [(DoseComplicationFormatter *)self createGaugeProviderWithFillValue:v156 tintColor:v155];
    [v20 setGaugeProvider:v157];

LABEL_74:
    v9 = v180;
LABEL_75:
    v21 = v183;
    goto LABEL_86;
  }

  if (a3 <= 2)
  {
    if (!a3)
    {
      v20 = objc_alloc_init(CLKComplicationTemplateModularSmallStackImage);
      v38 = [v8 classificationImageName];

      v21 = v183;
      if (v38)
      {
        v39 = [v8 isEnabled];
        v40 = [v8 classificationImageName];
        if (v39)
        {
          [v8 imageTintColor];
        }

        else
        {
          [v8 tintColor];
        }
        v163 = ;
        v185 = v191;
        v186 = *v192;
        v164 = [(DoseComplicationFormatter *)self imageProviderWithSymbolName:v40 tintColor:v163 pointSizeSymbolConstants:&v185];
        [v20 setLine1ImageProvider:v164];

        v21 = v183;
      }

      v165 = [v8 levelContentShort];
      v166 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v165 shortText:v19];
      [v20 setLine2TextProvider:v166];

      [v20 setHighlightLine2:0];
      goto LABEL_8;
    }

    v21 = v183;
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_87;
      }

      goto LABEL_24;
    }

    v178 = v9;
    v182 = v16;
    v20 = objc_alloc_init(CLKComplicationTemplateModularLargeStandardBody);
    v60 = [NSBundle bundleForClass:objc_opt_class()];
    v61 = [NSBundle bundleForClass:objc_opt_class()];
    v62 = [v61 localizedStringForKey:@"HEADER_TITLE" value:&stru_C3E0 table:0];
    v63 = [v60 localizedStringForKey:@"HEADER_TITLE" value:v62 table:@"Noise"];
    v64 = [CLKSimpleTextProvider textProviderWithText:v63];
    [v20 setHeaderTextProvider:v64];

    if ([v8 isEnabled])
    {
      v65 = [v8 classifierContent];
      v66 = [CLKSimpleTextProvider textProviderWithText:v65];
      [v20 setBody1TextProvider:v66];

      [v20 setTintColor:v182];
    }

    else
    {
      v137 = [NSBundle bundleForClass:objc_opt_class()];
      v138 = [NSBundle bundleForClass:objc_opt_class()];
      v139 = [v138 localizedStringForKey:@"MEASUREMENTS_LABEL" value:&stru_C3E0 table:0];
      v140 = [v137 localizedStringForKey:@"MEASUREMENTS_LABEL" value:v139 table:@"Noise"];
      v141 = [CLKSimpleTextProvider textProviderWithText:v140];
      [v20 setBody1TextProvider:v141];
    }

    v21 = v183;
    v142 = [v8 levelContentLong];
    v143 = [v8 levelContentShort];
    v144 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v142 shortText:v143];
    [v20 setBody2TextProvider:v144];

    v116 = +[UIColor systemBlueColor];
    v117 = [v20 headerTextProvider];
    [v117 setTintColor:v116];
    goto LABEL_69;
  }

  if (a3 == 3)
  {
    v180 = v9;
    v20 = objc_alloc_init(CLKComplicationTemplateUtilitarianLargeFlat);
    [v20 setImageProvider:v183];
    v182 = v16;
    if ([v8 isEnabled])
    {
      [v20 setTintColor:v16];
      v176 = [NSBundle bundleForClass:objc_opt_class()];
      v177 = [NSBundle bundleForClass:objc_opt_class()];
      v175 = [v177 localizedStringForKey:@"LEVEL_SUMMARY" value:&stru_C3E0 table:0];
      v48 = [v176 localizedStringForKey:@"LEVEL_SUMMARY" value:v175 table:@"Noise"];
      v174 = [v8 classifierContent];
      v49 = [v174 uppercaseString];
      v50 = [(DoseComplicationFormatter *)self dbFormatter];
      [v8 slowLeq];
      v51 = [NSNumber numberWithFloat:?];
      v52 = [v50 stringFromNumber:v51];
      v53 = [NSString localizedStringWithFormat:v48, v49, v52];
      v54 = [v8 levelContentShort];
      v55 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v53 shortText:v54];
      [v20 setTextProvider:v55];

      v56 = [v20 textProvider];
      [v56 setIgnoreUppercaseStyle:1];
    }

    else
    {
      v56 = [NSBundle bundleForClass:objc_opt_class()];
      v122 = [NSBundle bundleForClass:objc_opt_class()];
      v123 = [v122 localizedStringForKey:@"SUSPENDED_LABEL" value:&stru_C3E0 table:0];
      v124 = [v56 localizedStringForKey:@"SUSPENDED_LABEL" value:v123 table:@"Noise"];
      v125 = [CLKSimpleTextProvider textProviderWithText:v124];
      [v20 setTextProvider:v125];
    }

    goto LABEL_74;
  }

  if (a3 != 4)
  {
    v21 = v183;
    if (a3 != 6)
    {
      goto LABEL_87;
    }

LABEL_24:
    v31 = v16;
    v32 = v9;
    v20 = objc_alloc_init(CLKComplicationTemplateUtilitarianSmallFlat);
    [v20 setImageProvider:v21];
    v33 = [v8 levelContentShort];
    v34 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v33 shortText:v184];
    [v20 setTextProvider:v34];

    v35 = [v20 textProvider];
    [v35 setIgnoreUppercaseStyle:1];

    if ([v8 isEnabled])
    {
      v16 = v31;
      [v20 setTintColor:v31];
      v9 = v32;
    }

    else
    {
      v9 = v32;
      v16 = v31;
    }

    goto LABEL_87;
  }

  v181 = v9;
  if ([v8 isEnabled])
  {
    v20 = objc_alloc_init(CLKComplicationTemplateCircularSmallStackText);
    v83 = [(DoseComplicationFormatter *)self dbFormatter];
    v84 = v16;
    [v8 slowLeq];
    v85 = [NSNumber numberWithFloat:?];
    v86 = [v83 stringFromNumber:v85];
    v87 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v86 shortText:0];
    [v20 setLine1TextProvider:v87];

    v88 = [NSBundle bundleForClass:objc_opt_class()];
    v89 = [NSBundle bundleForClass:objc_opt_class()];
    v90 = [v89 localizedStringForKey:@"UNIT_LABEL" value:&stru_C3E0 table:0];
    v91 = [v88 localizedStringForKey:@"UNIT_LABEL" value:v90 table:@"Noise"];
    v92 = [CLKSimpleTextProvider textProviderWithText:v91];
    [v20 setLine2TextProvider:v92];

    v16 = v84;
  }

  else
  {
    v20 = objc_alloc_init(CLKComplicationTemplateCircularSmallSimpleImage);
    v158 = [v8 classificationImageName];

    if (v158)
    {
      v159 = [v8 classificationImageName];
      [v8 imageTintColor];
      v161 = v160 = v16;
      v185 = *&v192[8];
      v186 = *&v192[24];
      v162 = [(DoseComplicationFormatter *)self imageProviderWithSymbolName:v159 tintColor:v161 pointSizeSymbolConstants:&v185];
      [v20 setImageProvider:v162];

      v16 = v160;
    }
  }

  v9 = v181;
  v21 = v183;
LABEL_87:

  return v20;
}

- (id)_setupNoiseTemplateWithFamily:(int64_t)a3 device:(id)a4
{
  v6 = a4;
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_6384;
  v53[3] = &unk_C330;
  v53[4] = self;
  v7 = objc_retainBlock(v53);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_63E8;
  v52[3] = &unk_C358;
  v52[4] = self;
  v8 = objc_retainBlock(v52);
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_64D0;
  v51[3] = &unk_C380;
  v51[4] = self;
  v9 = objc_retainBlock(v51);
  if (CLKComplicationFamilyCircularMedium == a3)
  {
    v10 = CLKComplicationTemplateCircularMediumSimpleImage;
    goto LABEL_3;
  }

  v11 = 0;
  if (a3 > 6)
  {
    if (a3 <= 9)
    {
      if (a3 == 7)
      {
        v11 = objc_alloc_init(CLKComplicationTemplateExtraLargeSimpleImage);
        (v8[2])(v8, @"XL_noise");
      }

      else
      {
        if (a3 != 8)
        {
          v11 = objc_alloc_init(CLKComplicationTemplateGraphicBezelCircularText);
          v48 = [NSBundle bundleForClass:objc_opt_class()];
          v14 = [NSBundle bundleForClass:objc_opt_class()];
          v15 = [v14 localizedStringForKey:@"SETUP_NOISE" value:&stru_C3E0 table:0];
          v16 = [v48 localizedStringForKey:@"SETUP_NOISE" value:v15 table:@"Noise"];
          v17 = sub_6318(v16, v16);
          [v11 setTextProvider:v17];

          v12 = [(DoseComplicationFormatter *)self _setupNoiseTemplateWithFamily:10 device:v6];
          [v11 setCircularTemplate:v12];
          goto LABEL_6;
        }

        v11 = objc_alloc_init(CLKComplicationTemplateGraphicCornerTextImage);
        v34 = [NSBundle bundleForClass:objc_opt_class()];
        v35 = [NSBundle bundleForClass:objc_opt_class()];
        v36 = [v35 localizedStringForKey:@"SETUP_NOISE" value:&stru_C3E0 table:0];
        v37 = [v34 localizedStringForKey:@"SETUP_NOISE" value:v36 table:@"Noise"];
        v38 = sub_6318(v37, v37);
        [v11 setTextProvider:v38];

        (v9[2])(v9, @"rich-corner_noise-394h");
      }

      v12 = LABEL_5:;
      [v11 setImageProvider:v12];
LABEL_6:

      goto LABEL_7;
    }

    switch(a3)
    {
      case 10:
        v11 = objc_alloc_init(CLKComplicationTemplateGraphicCircularImage);
        (v9[2])(v9, @"circular-md_noise");
        break;
      case 11:
        v11 = objc_alloc_init(CLKComplicationTemplateGraphicRectangularTextMeteredGauge);
        v50 = [NSBundle bundleForClass:objc_opt_class()];
        v39 = [NSBundle bundleForClass:objc_opt_class()];
        v40 = [v39 localizedStringForKey:@"APP_NAME" value:&stru_C3E0 table:0];
        v41 = [v50 localizedStringForKey:@"APP_NAME" value:v40 table:@"Noise"];
        v42 = sub_6318(v41, v41);
        [v11 setHeaderTextProvider:v42];

        v43 = [NSBundle bundleForClass:objc_opt_class()];
        v44 = [NSBundle bundleForClass:objc_opt_class()];
        v45 = [v44 localizedStringForKey:@"SETUP_LONG" value:&stru_C3E0 table:0];
        v46 = [v43 localizedStringForKey:@"SETUP_LONG" value:v45 table:@"Noise"];
        v47 = sub_6318(v46, v46);
        [v11 setBody1TextProvider:v47];

        v12 = (v7[2])(v7);
        [v11 setGaugeProvider:v12];
        goto LABEL_6;
      case 12:
        v11 = objc_alloc_init(CLKComplicationTemplateGraphicExtraLargeCircularImage);
        (v9[2])(v9, @"XL_noise");
        break;
      default:
        goto LABEL_7;
    }
    v24 = ;
    [v11 setImageProvider:v24];

    v12 = [(DoseComplicationFormatter *)self setupComplicationBackgroundColor];
    [v11 setMetadata:v12];
    goto LABEL_6;
  }

  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v11 = objc_alloc_init(CLKComplicationTemplateUtilitarianLargeFlat);
        v12 = [NSBundle bundleForClass:objc_opt_class()];
        v18 = [NSBundle bundleForClass:objc_opt_class()];
        v19 = v18;
        v20 = @"SETUP_NOISE";
        break;
      case 4:
        v10 = CLKComplicationTemplateCircularSmallSimpleImage;
LABEL_3:
        v11 = objc_alloc_init(v10);
        (v8[2])(v8, @"circular-sm_noise");
        goto LABEL_5;
      case 6:
        v11 = objc_alloc_init(CLKComplicationTemplateUtilitarianSmallFlat);
        v12 = [NSBundle bundleForClass:objc_opt_class()];
        v18 = [NSBundle bundleForClass:objc_opt_class()];
        v19 = v18;
        v20 = @"SETUP_SHORT";
        break;
      default:
        goto LABEL_7;
    }

    v21 = [v18 localizedStringForKey:v20 value:&stru_C3E0 table:0];
    v22 = [v12 localizedStringForKey:v20 value:v21 table:@"Noise"];
    v23 = sub_6318(v22, v22);
    [v11 setTextProvider:v23];

LABEL_35:
    goto LABEL_6;
  }

  switch(a3)
  {
    case 0:
      v11 = objc_alloc_init(CLKComplicationTemplateModularSmallSimpleImage);
      (v8[2])(v8, @"modular-sm_noise");
      goto LABEL_5;
    case 1:
      v11 = objc_alloc_init(CLKComplicationTemplateModularLargeStandardBody);
      v49 = [NSBundle bundleForClass:objc_opt_class()];
      v25 = [NSBundle bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"HEADER_TITLE" value:&stru_C3E0 table:0];
      v27 = [v49 localizedStringForKey:@"HEADER_TITLE" value:v26 table:@"Noise"];
      v28 = sub_6318(v27, v27);
      [v11 setHeaderTextProvider:v28];

      v29 = [NSBundle bundleForClass:objc_opt_class()];
      v30 = [NSBundle bundleForClass:objc_opt_class()];
      v31 = [v30 localizedStringForKey:@"SETUP_LONG" value:&stru_C3E0 table:0];
      v32 = [v29 localizedStringForKey:@"SETUP_LONG" value:v31 table:@"Noise"];
      v33 = sub_6318(v32, v32);
      [v11 setBody1TextProvider:v33];

      v12 = +[UIColor systemBlueColor];
      v19 = [v11 headerTextProvider];
      [v19 setTintColor:v12];
      goto LABEL_35;
    case 2:
      v11 = objc_alloc_init(CLKComplicationTemplateUtilitarianSmallSquare);
      (v8[2])(v8, @"utility-corner_noise");
      goto LABEL_5;
  }

LABEL_7:

  return v11;
}

- (id)createMonospaceTextProviderWithText:(id)a3 shortText:(id)a4
{
  v4 = [CLKSimpleTextProvider textProviderWithText:a3 shortText:a4];
  [v4 setMonospacedNumbers:1];

  return v4;
}

- (id)createOuterMonospaceTextProviderWithText:(id)a3
{
  v3 = [DoseTextProvider textProviderWithText:a3];
  [v3 setMonospacedNumbers:1];

  return v3;
}

- (id)createGaugeProviderWithFillValue:(double)a3 tintColor:(id)a4
{
  v4 = fmax(a3, 0.0);
  if (v4 <= 1.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = _SPLGradientColor(a4);
  *&v7 = v5;
  v8 = [CLKSimpleGaugeProvider gaugeProviderWithStyle:1 gaugeColors:v6 gaugeColorLocations:&off_C948 fillFraction:v7];

  return v8;
}

@end
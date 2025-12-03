@interface DoseComplicationFormatter
- (BOOL)supportsFamily:(int64_t)family forDevice:(id)device;
- (DoseComplicationFormatter)init;
- (id)_alwaysOnTemplateWithFamily:(int64_t)family content:(id)content device:(id)device;
- (id)_setupNoiseTemplateWithFamily:(int64_t)family device:(id)device;
- (id)_templateWithFamily:(int64_t)family content:(id)content device:(id)device;
- (id)accessibilityLabelForSymbol:(id)symbol;
- (id)alwaysOnTemplateWithFamily:(int64_t)family forDevice:(id)device;
- (id)createGaugeProviderWithFillValue:(double)value tintColor:(id)color;
- (id)createMonospaceTextProviderWithText:(id)text shortText:(id)shortText;
- (id)createOuterMonospaceTextProviderWithText:(id)text;
- (id)formattedTemplateWithFamily:(int64_t)family forDevice:(id)device;
- (id)fullColorImageProviderWithImage:(id)image;
- (id)fullColorImageProviderWithSymbolName:(id)name tintColor:(id)color pointSizeSymbolConstants:(id *)constants;
- (id)imageProviderWithImage:(id)image tintColor:(id)color;
- (id)imageProviderWithSymbolName:(id)name tintColor:(id)color;
- (id)imageProviderWithSymbolName:(id)name tintColor:(id)color pointSizeSymbolConstants:(id *)constants;
- (id)newAlwaysOnDoseContent;
- (id)newSwitcherDoseContent;
- (id)setupComplicationBackgroundColor;
- (id)switcherTemplateWithFamily:(int64_t)family forDevice:(id)device;
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
    newSwitcherDoseContent = [(DoseComplicationFormatter *)v2 newSwitcherDoseContent];
    [(DoseComplicationFormatter *)v2 setCurrentDoseContent:newSwitcherDoseContent];

    newSwitcherDoseContent2 = [(DoseComplicationFormatter *)v2 newSwitcherDoseContent];
    switcherDoseContent = v2->_switcherDoseContent;
    v2->_switcherDoseContent = newSwitcherDoseContent2;

    newAlwaysOnDoseContent = [(DoseComplicationFormatter *)v2 newAlwaysOnDoseContent];
    alwaysOnDoseContent = v2->_alwaysOnDoseContent;
    v2->_alwaysOnDoseContent = newAlwaysOnDoseContent;
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
  dbFormatter = [(DoseComplicationFormatter *)self dbFormatter];
  [v3 slowLeq];
  v14 = [NSNumber numberWithFloat:?];
  v15 = [dbFormatter stringFromNumber:v14];
  v16 = [NSString stringWithFormat:v12, v15];
  [v3 setLevelContentShort:v16];

  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"LEVEL_LONG" value:&stru_C3E0 table:0];
  v20 = [v17 localizedStringForKey:@"LEVEL_LONG" value:v19 table:@"Noise"];
  dbFormatter2 = [(DoseComplicationFormatter *)self dbFormatter];
  [v3 slowLeq];
  v22 = [NSNumber numberWithFloat:?];
  v23 = [dbFormatter2 stringFromNumber:v22];
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

- (BOOL)supportsFamily:(int64_t)family forDevice:(id)device
{
  if (CLKComplicationFamilyCircularMedium == family)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = 0x1FDFu >> family;
    if (family > 0xC)
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4 & 1;
}

- (id)accessibilityLabelForSymbol:(id)symbol
{
  symbolCopy = symbol;
  if ([symbolCopy isEqualToString:@"checkmark.circle.fill"])
  {
    v4 = @"THRESHOLD_OK_SYMBOL_ACCESSIBILITY";
LABEL_5:
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:v4 value:&stru_C3E0 table:0];
    v8 = [v5 localizedStringForKey:v4 value:v7 table:@"Noise"];

    goto LABEL_7;
  }

  if ([symbolCopy isEqualToString:@"exclamationmark.triangle.fill"])
  {
    v4 = @"THRESHOLD_WARNING_SYMBOL_ACCESSIBILITY";
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)imageProviderWithSymbolName:(id)name tintColor:(id)color
{
  nameCopy = name;
  colorCopy = color;
  v8 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:2 scale:12.0];
  if (qword_10B28 != -1)
  {
    sub_6810();
  }

  v9 = [qword_10B20 objectForKeyedSubscript:nameCopy];
  if (!v9)
  {
    v9 = [UIImage systemImageNamed:nameCopy withConfiguration:v8];
    v10 = [(DoseComplicationFormatter *)self accessibilityLabelForSymbol:nameCopy];
    [v9 setAccessibilityLabel:v10];

    [qword_10B20 setObject:v9 forKeyedSubscript:nameCopy];
  }

  v11 = [(DoseComplicationFormatter *)self imageProviderWithImage:v9 tintColor:colorCopy];

  return v11;
}

- (id)imageProviderWithSymbolName:(id)name tintColor:(id)color pointSizeSymbolConstants:(id *)constants
{
  colorCopy = color;
  nameCopy = name;
  v10 = [CLKSymbolImageProvider symbolImageProviderWithSystemName:nameCopy];
  [v10 setTintColor:colorCopy];

  v11 = [(DoseComplicationFormatter *)self accessibilityLabelForSymbol:nameCopy];

  [v10 setAccessibilityLabel:v11];
  [v10 setIgnoreHierarchicalLayers:1];
  v12 = [NSNumber numberWithDouble:constants->var0];
  [v10 setOverridePointSize:v12];

  return v10;
}

- (id)imageProviderWithImage:(id)image tintColor:(id)color
{
  colorCopy = color;
  imageCopy = image;
  v7 = [CLKImageProvider imageProviderWithOnePieceImage:imageCopy];
  [v7 setTintColor:colorCopy];

  accessibilityLabel = [imageCopy accessibilityLabel];

  [v7 setAccessibilityLabel:accessibilityLabel];

  return v7;
}

- (id)fullColorImageProviderWithImage:(id)image
{
  imageCopy = image;
  v4 = [CLKFullColorImageProvider providerWithFullColorImage:imageCopy monochromeFilterType:1];
  accessibilityLabel = [imageCopy accessibilityLabel];

  [v4 setAccessibilityLabel:accessibilityLabel];

  return v4;
}

- (id)fullColorImageProviderWithSymbolName:(id)name tintColor:(id)color pointSizeSymbolConstants:(id *)constants
{
  colorCopy = color;
  nameCopy = name;
  v10 = [CLKFullColorSymbolImageProvider symbolImageProviderWithSystemName:nameCopy];
  [v10 setTintColor:colorCopy];

  v11 = [(DoseComplicationFormatter *)self accessibilityLabelForSymbol:nameCopy];

  [v10 setAccessibilityLabel:v11];
  [v10 setIgnoreHierarchicalLayers:1];
  v12 = [NSNumber numberWithDouble:constants->var0];
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

- (id)formattedTemplateWithFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  switcherDoseContent = [(DoseComplicationFormatter *)self switcherDoseContent];
  v8 = [(DoseComplicationFormatter *)self _templateWithFamily:family content:switcherDoseContent device:deviceCopy];

  return v8;
}

- (id)switcherTemplateWithFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  switcherDoseContent = [(DoseComplicationFormatter *)self switcherDoseContent];
  v8 = [(DoseComplicationFormatter *)self _templateWithFamily:family content:switcherDoseContent device:deviceCopy];

  return v8;
}

- (id)alwaysOnTemplateWithFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  alwaysOnDoseContent = [(DoseComplicationFormatter *)self alwaysOnDoseContent];
  v8 = [(DoseComplicationFormatter *)self _alwaysOnTemplateWithFamily:family content:alwaysOnDoseContent device:deviceCopy];

  return v8;
}

- (id)_alwaysOnTemplateWithFamily:(int64_t)family content:(id)content device:(id)device
{
  contentCopy = content;
  deviceCopy = device;
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
  if (family <= 7)
  {
    if (family <= 2)
    {
      if (family)
      {
        if (family != 1)
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

        classifierContent = [contentCopy classifierContent];
        v23 = [CLKSimpleTextProvider textProviderWithText:classifierContent];
        [v10 setBody1TextProvider:v23];

        levelContentLong = [contentCopy levelContentLong];
        v25 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:levelContentLong shortText:0];
        [v10 setBody2TextProvider:v25];

        v26 = +[UIColor systemBlueColor];
        headerTextProvider = [v10 headerTextProvider];
        [headerTextProvider setTintColor:v26];
      }

      else
      {
        v10 = objc_alloc_init(CLKComplicationTemplateModularSmallStackImage);
        classificationImageName = [contentCopy classificationImageName];

        if (classificationImageName)
        {
          classificationImageName2 = [contentCopy classificationImageName];
          imageTintColor = [contentCopy imageTintColor];
          v111 = v119;
          v112 = v120;
          v49 = [(DoseComplicationFormatter *)self imageProviderWithSymbolName:classificationImageName2 tintColor:imageTintColor pointSizeSymbolConstants:&v111];
          [v10 setLine1ImageProvider:v49];
        }

        levelContentShort = [contentCopy levelContentShort];
        v51 = [NSString localizedStringWithFormat:@"%@", levelContentShort];
        v52 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v51 shortText:0];
        [v10 setLine2TextProvider:v52];

        [v10 setHighlightLine2:0];
      }

      tintColor = [contentCopy tintColor];
      [v10 setTintColor:tintColor];
LABEL_31:

      goto LABEL_38;
    }

    if (family != 3)
    {
      if (family == 4)
      {
        v10 = objc_alloc_init(CLKComplicationTemplateCircularSmallStackText);
        v28 = [NSBundle bundleForClass:objc_opt_class()];
        v29 = [NSBundle bundleForClass:objc_opt_class()];
        [v29 localizedStringForKey:@"UNKNOWN_DECIBELS_LEVEL" value:&stru_C3E0 table:0];
        v31 = v30 = deviceCopy;
        v32 = [v28 localizedStringForKey:@"UNKNOWN_DECIBELS_LEVEL" value:v31 table:@"Noise"];
        v33 = [CLKSimpleTextProvider textProviderWithText:v32];
        [v10 setLine1TextProvider:v33];

        deviceCopy = v30;
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

    v110 = deviceCopy;
    v10 = objc_alloc_init(CLKComplicationTemplateUtilitarianLargeFlat);
    classificationImageName3 = [contentCopy classificationImageName];

    if (classificationImageName3)
    {
      classificationImageName4 = [contentCopy classificationImageName];
      imageTintColor2 = [contentCopy imageTintColor];
      v56 = [(DoseComplicationFormatter *)self imageProviderWithSymbolName:classificationImageName4 tintColor:imageTintColor2];
      [v10 setImageProvider:v56];
    }

    v108 = [NSBundle bundleForClass:objc_opt_class()];
    v109 = [NSBundle bundleForClass:objc_opt_class()];
    v107 = [v109 localizedStringForKey:@"LEVEL_SUMMARY" value:&stru_C3E0 table:0];
    v57 = [v108 localizedStringForKey:@"LEVEL_SUMMARY" value:v107 table:@"Noise"];
    classifierContent2 = [contentCopy classifierContent];
    uppercaseString = [classifierContent2 uppercaseString];
    v59 = [NSBundle bundleForClass:objc_opt_class()];
    v60 = [NSBundle bundleForClass:objc_opt_class()];
    v61 = [v60 localizedStringForKey:&stru_C3E0 value:&stru_C3E0 table:0];
    v62 = [v59 localizedStringForKey:&stru_C3E0 value:v61 table:@"Noise"];
    v63 = v57;
    v64 = [NSString localizedStringWithFormat:v57, uppercaseString, v62];
    v65 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v64 shortText:0];
    [v10 setTextProvider:v65];

    textProvider = [v10 textProvider];
    [textProvider setIgnoreUppercaseStyle:1];
LABEL_35:

    deviceCopy = v110;
    goto LABEL_38;
  }

  if (family <= 9)
  {
    if (family != 8)
    {
      v39 = [NSBundle bundleForClass:objc_opt_class()];
      v40 = [NSBundle bundleForClass:objc_opt_class()];
      v41 = [v40 localizedStringForKey:@"HEADER_TITLE" value:&stru_C3E0 table:0];
      tintColor = [v39 localizedStringForKey:@"HEADER_TITLE" value:v41 table:@"Noise"];

      v10 = objc_alloc_init(CLKComplicationTemplateGraphicBezelCircularText);
      localizedCapitalizedString = [tintColor localizedCapitalizedString];
      v44 = [CLKSimpleTextProvider textProviderWithText:localizedCapitalizedString];
      [v10 setTextProvider:v44];

      v45 = [(DoseComplicationFormatter *)self _alwaysOnTemplateWithFamily:10 content:contentCopy device:deviceCopy];
      [v10 setCircularTemplate:v45];
LABEL_30:

      goto LABEL_31;
    }

    v110 = deviceCopy;
    v10 = objc_alloc_init(CLKComplicationTemplateGraphicCornerMeteredGaugeText);
    v73 = [NSBundle bundleForClass:objc_opt_class()];
    v74 = [NSBundle bundleForClass:objc_opt_class()];
    v75 = [v74 localizedStringForKey:@"UNIT_LABEL" value:&stru_C3E0 table:0];
    v76 = [v73 localizedStringForKey:@"UNIT_LABEL" value:v75 table:@"Noise"];
    v77 = [CLKSimpleTextProvider textProviderWithText:v76];
    [v10 setLeadingTextProvider:v77];

    leadingTextProvider = [v10 leadingTextProvider];
    [leadingTextProvider setIgnoreUppercaseStyle:1];

    v79 = [UIColor colorWithRed:0.99 green:0.99 blue:0.99 alpha:1.0];
    leadingTextProvider2 = [v10 leadingTextProvider];
    [leadingTextProvider2 setTintColor:v79];

    v81 = [NSBundle bundleForClass:objc_opt_class()];
    v82 = [NSBundle bundleForClass:objc_opt_class()];
    v83 = [v82 localizedStringForKey:@"UNKNOWN_DECIBELS_LEVEL" value:&stru_C3E0 table:0];
    v84 = [v81 localizedStringForKey:@"UNKNOWN_DECIBELS_LEVEL" value:v83 table:@"Noise"];
    v85 = [(DoseComplicationFormatter *)self createOuterMonospaceTextProviderWithText:v84];
    [v10 setOuterTextProvider:v85];

    classificationImageName5 = [contentCopy classificationImageName];

    if (classificationImageName5)
    {
      classificationImageName6 = [contentCopy classificationImageName];
      imageTintColor3 = [contentCopy imageTintColor];
      v111 = v113;
      v112 = v114;
      v89 = [(DoseComplicationFormatter *)self fullColorImageProviderWithSymbolName:classificationImageName6 tintColor:imageTintColor3 pointSizeSymbolConstants:&v111];
      [v10 setOuterImageProvider:v89];
    }

    [contentCopy gaugeFillValue];
    v91 = v90;
    textProvider = [contentCopy tintColor];
    v92 = [(DoseComplicationFormatter *)self createGaugeProviderWithFillValue:textProvider tintColor:v91];
    [v10 setGaugeProvider:v92];

    goto LABEL_35;
  }

  switch(family)
  {
    case 10:
      v10 = objc_alloc_init(CLKComplicationTemplateGraphicCircularOpenMeteredGaugeImage);
      levelContentShort2 = [contentCopy levelContentShort];
      v68 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:levelContentShort2 shortText:0];
      [v10 setTextProvider:v68];

      classificationImageName7 = [contentCopy classificationImageName];

      if (classificationImageName7)
      {
        classificationImageName8 = [contentCopy classificationImageName];
        imageTintColor4 = [contentCopy imageTintColor];
        v111 = v116;
        v16 = v117;
        goto LABEL_28;
      }

LABEL_29:
      [contentCopy gaugeFillValue];
      v72 = v71;
      tintColor = [contentCopy tintColor];
      v45 = [(DoseComplicationFormatter *)self createGaugeProviderWithFillValue:tintColor tintColor:v72];
      [v10 setGaugeProvider:v45];
      goto LABEL_30;
    case 11:
      v10 = objc_alloc_init(CLKComplicationTemplateGraphicRectangularTextMeteredGauge);
      classifierContent3 = [contentCopy classifierContent];
      v94 = [CLKSimpleTextProvider textProviderWithText:classifierContent3];

      v95 = [UIColor colorWithRed:0.99 green:0.99 blue:0.99 alpha:1.0];
      [v94 setTintColor:v95];

      [v10 setHeaderTextProvider:v94];
      v96 = [NSBundle bundleForClass:objc_opt_class()];
      v97 = [NSBundle bundleForClass:objc_opt_class()];
      v98 = [v97 localizedStringForKey:@"UNIT_LABEL_LONG" value:&stru_C3E0 table:0];
      v99 = [v96 localizedStringForKey:@"UNIT_LABEL_LONG" value:v98 table:@"Noise"];
      v100 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v99 shortText:0];
      [v10 setBody1TextProvider:v100];

      [contentCopy gaugeFillValue];
      v102 = v101;
      tintColor2 = [contentCopy tintColor];
      v104 = [(DoseComplicationFormatter *)self createGaugeProviderWithFillValue:tintColor2 tintColor:v102];
      [v10 setGaugeProvider:v104];

      goto LABEL_38;
    case 12:
      v10 = objc_alloc_init(CLKComplicationTemplateGraphicExtraLargeCircularOpenMeteredGaugeImage);
      levelContentShort3 = [contentCopy levelContentShort];
      v12 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:levelContentShort3 shortText:0];
      [v10 setTextProvider:v12];

      classificationImageName9 = [contentCopy classificationImageName];

      if (classificationImageName9)
      {
        classificationImageName8 = [contentCopy classificationImageName];
        imageTintColor4 = [contentCopy imageTintColor];
        v111 = *&v123[8];
        v16 = *&v123[24];
LABEL_28:
        v112 = v16;
        v70 = [(DoseComplicationFormatter *)self fullColorImageProviderWithSymbolName:classificationImageName8 tintColor:imageTintColor4 pointSizeSymbolConstants:&v111];
        [v10 setImageProvider:v70];

        goto LABEL_29;
      }

      goto LABEL_29;
  }

LABEL_37:
  v10 = [(DoseComplicationFormatter *)self _templateWithFamily:family content:contentCopy device:deviceCopy];
LABEL_38:

  return v10;
}

- (id)_templateWithFamily:(int64_t)family content:(id)content device:(id)device
{
  contentCopy = content;
  deviceCopy = device;
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
  classificationImageName = [contentCopy classificationImageName];

  if (classificationImageName)
  {
    classificationImageName2 = [contentCopy classificationImageName];
    imageTintColor = [contentCopy imageTintColor];
    v13 = [(DoseComplicationFormatter *)self imageProviderWithSymbolName:classificationImageName2 tintColor:imageTintColor];

    classificationImageName3 = [contentCopy classificationImageName];
    v15 = [(DoseComplicationFormatter *)self accessibilityLabelForSymbol:classificationImageName3];
    v183 = v13;
    [v13 setAccessibilityLabel:v15];
  }

  else
  {
    v183 = 0;
  }

  v16 = [UIColor colorWithRed:0.99 green:0.99 blue:0.99 alpha:1.0];
  dbFormatter = [(DoseComplicationFormatter *)self dbFormatter];
  [contentCopy slowLeq];
  v18 = [NSNumber numberWithFloat:?];
  v19 = [dbFormatter stringFromNumber:v18];

  v184 = v19;
  if (CLKComplicationFamilyCircularMedium == family)
  {
    v20 = objc_alloc_init(CLKComplicationTemplateCircularMediumStackImage);
    v21 = v183;
    [v20 setLine1ImageProvider:v183];
    levelContentShort = [contentCopy levelContentShort];
    v23 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:levelContentShort shortText:v19];
    [v20 setLine2TextProvider:v23];

LABEL_8:
    if ([contentCopy isEnabled])
    {
      [v20 setTintColor:v16];
    }

    goto LABEL_87;
  }

  v20 = 0;
  if (family > 6)
  {
    if (family > 9)
    {
      v182 = v16;
      if (family == 10)
      {
        v20 = objc_alloc_init(CLKComplicationTemplateGraphicCircularOpenMeteredGaugeImage);
        v57 = deviceCopy;
        if ([contentCopy isEnabled])
        {
          levelContentShort2 = [contentCopy levelContentShort];
          v59 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:levelContentShort2 shortText:v184];
          [v20 setTextProvider:v59];
        }

        else
        {
          levelContentShort2 = [NSBundle bundleForClass:objc_opt_class()];
          v59 = [NSBundle bundleForClass:objc_opt_class()];
          v126 = [v59 localizedStringForKey:@"UNIT_LABEL" value:&stru_C3E0 table:0];
          v127 = [levelContentShort2 localizedStringForKey:@"UNIT_LABEL" value:v126 table:@"Noise"];
          v128 = [CLKSimpleTextProvider textProviderWithText:v127];
          [v20 setTextProvider:v128];
        }

        v21 = v183;

        classificationImageName4 = [contentCopy classificationImageName];

        if (classificationImageName4)
        {
          classificationImageName5 = [contentCopy classificationImageName];
          imageTintColor2 = [contentCopy imageTintColor];
          v185 = v189;
          v186 = *v190;
          v132 = [(DoseComplicationFormatter *)self fullColorImageProviderWithSymbolName:classificationImageName5 tintColor:imageTintColor2 pointSizeSymbolConstants:&v185];
          [v20 setImageProvider:v132];
        }

        [contentCopy gaugeFillValue];
        v134 = v133;
        tintColor = [contentCopy tintColor];
        v136 = [(DoseComplicationFormatter *)self createGaugeProviderWithFillValue:tintColor tintColor:v134];
        [v20 setGaugeProvider:v136];
      }

      else
      {
        v21 = v183;
        if (family != 11)
        {
          if (family != 12)
          {
            goto LABEL_87;
          }

          v20 = objc_alloc_init(CLKComplicationTemplateGraphicExtraLargeCircularOpenMeteredGaugeImage);
          v178 = deviceCopy;
          if ([contentCopy isEnabled])
          {
            levelContentShort3 = [contentCopy levelContentShort];
            v37 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:levelContentShort3 shortText:v19];
            [v20 setTextProvider:v37];
          }

          else
          {
            levelContentShort3 = [NSBundle bundleForClass:objc_opt_class()];
            v37 = [NSBundle bundleForClass:objc_opt_class()];
            v107 = [v37 localizedStringForKey:@"UNIT_LABEL" value:&stru_C3E0 table:0];
            v108 = [levelContentShort3 localizedStringForKey:@"UNIT_LABEL" value:v107 table:@"Noise"];
            v109 = [CLKSimpleTextProvider textProviderWithText:v108];
            [v20 setTextProvider:v109];

            v21 = v183;
          }

          classificationImageName6 = [contentCopy classificationImageName];

          if (classificationImageName6)
          {
            classificationImageName7 = [contentCopy classificationImageName];
            imageTintColor3 = [contentCopy imageTintColor];
            v185 = *&v194[8];
            v186 = *&v194[24];
            v113 = [(DoseComplicationFormatter *)self fullColorImageProviderWithSymbolName:classificationImageName7 tintColor:imageTintColor3 pointSizeSymbolConstants:&v185];
            [v20 setImageProvider:v113];
          }

          [contentCopy gaugeFillValue];
          v115 = v114;
          tintColor2 = [contentCopy tintColor];
          headerTextProvider = [(DoseComplicationFormatter *)self createGaugeProviderWithFillValue:tintColor2 tintColor:v115];
          [v20 setGaugeProvider:headerTextProvider];
LABEL_69:

          deviceCopy = v178;
LABEL_86:
          v16 = v182;
          goto LABEL_87;
        }

        v57 = deviceCopy;
        v20 = objc_alloc_init(CLKComplicationTemplateGraphicRectangularTextMeteredGauge);
        classifierContent = [contentCopy classifierContent];
        v94 = [CLKSimpleTextProvider textProviderWithText:classifierContent];

        tintColor3 = [contentCopy tintColor];
        [v94 setTintColor:tintColor3];

        [v20 setHeaderTextProvider:v94];
        levelContentLong = [contentCopy levelContentLong];
        levelContentShort4 = [contentCopy levelContentShort];
        v98 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:levelContentLong shortText:levelContentShort4];
        [v20 setBody1TextProvider:v98];

        classificationImageName8 = [contentCopy classificationImageName];

        if (classificationImageName8)
        {
          isEnabled = [contentCopy isEnabled];
          classificationImageName9 = [contentCopy classificationImageName];
          if (isEnabled)
          {
            imageTintColor4 = [contentCopy imageTintColor];
            v185 = *&v190[8];
            v186 = *&v190[24];
            v103 = [(DoseComplicationFormatter *)self fullColorImageProviderWithSymbolName:classificationImageName9 tintColor:imageTintColor4 pointSizeSymbolConstants:&v185];
            [v20 setHeaderImageProvider:v103];
          }

          else
          {
            tintColor4 = [contentCopy tintColor];
            v185 = *&v190[8];
            v186 = *&v190[24];
            v168 = [(DoseComplicationFormatter *)self fullColorImageProviderWithSymbolName:classificationImageName9 tintColor:tintColor4 pointSizeSymbolConstants:&v185];
            [v20 setHeaderImageProvider:v168];

            classificationImageName9 = [contentCopy tintColor];
            imageTintColor4 = [v20 body1TextProvider];
            [imageTintColor4 setTintColor:classificationImageName9];
          }

          v21 = v183;
        }

        [contentCopy gaugeFillValue];
        v170 = v169;
        tintColor5 = [contentCopy tintColor];
        v172 = [(DoseComplicationFormatter *)self createGaugeProviderWithFillValue:tintColor5 tintColor:v170];
        [v20 setGaugeProvider:v172];
      }

      deviceCopy = v57;
      goto LABEL_86;
    }

    if (family == 7)
    {
      v179 = deviceCopy;
      v20 = objc_alloc_init(CLKComplicationTemplateExtraLargeStackImage);
      classificationImageName10 = [contentCopy classificationImageName];

      if (classificationImageName10)
      {
        classificationImageName11 = [contentCopy classificationImageName];
        [contentCopy imageTintColor];
        v44 = v43 = v16;
        v185 = v193;
        v186 = *v194;
        v45 = [(DoseComplicationFormatter *)self imageProviderWithSymbolName:classificationImageName11 tintColor:v44 pointSizeSymbolConstants:&v185];
        [v20 setLine1ImageProvider:v45];

        v16 = v43;
      }

      v21 = v183;
      if ([contentCopy isEnabled])
      {
        levelContentShort5 = [contentCopy levelContentShort];
        v47 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:levelContentShort5 shortText:v19];
        [v20 setLine2TextProvider:v47];
      }

      else
      {
        v118 = v16;
        levelContentShort5 = [NSBundle bundleForClass:objc_opt_class()];
        v47 = [NSBundle bundleForClass:objc_opt_class()];
        v119 = [v47 localizedStringForKey:@"UNIT_LABEL" value:&stru_C3E0 table:0];
        v120 = [levelContentShort5 localizedStringForKey:@"UNIT_LABEL" value:v119 table:@"Noise"];
        v121 = [CLKSimpleTextProvider textProviderWithText:v120];
        [v20 setLine2TextProvider:v121];

        v16 = v118;
      }

      deviceCopy = v179;

      goto LABEL_87;
    }

    if (family != 8)
    {
      v182 = v16;
      v24 = deviceCopy;
      if ([contentCopy isEnabled])
      {
        v25 = [NSBundle bundleForClass:objc_opt_class()];
        v26 = [NSBundle bundleForClass:objc_opt_class()];
        v27 = [v26 localizedStringForKey:@"BEZEL_LABEL" value:&stru_C3E0 table:0];
        v28 = [v25 localizedStringForKey:@"BEZEL_LABEL" value:v27 table:@"Noise"];
        classifierContent2 = [contentCopy classifierContent];
        v30 = [NSString localizedStringWithFormat:v28, classifierContent2];
      }

      else
      {
        v25 = [NSBundle bundleForClass:objc_opt_class()];
        v26 = [NSBundle bundleForClass:objc_opt_class()];
        v27 = [v26 localizedStringForKey:@"BEZEL_SUSPENDED_LABEL" value:&stru_C3E0 table:0];
        v30 = [v25 localizedStringForKey:@"BEZEL_SUSPENDED_LABEL" value:v27 table:@"Noise"];
      }

      v20 = objc_alloc_init(CLKComplicationTemplateGraphicBezelCircularText);
      localizedCapitalizedString = [v30 localizedCapitalizedString];
      v105 = [CLKSimpleTextProvider textProviderWithText:localizedCapitalizedString];
      [v20 setTextProvider:v105];

      v106 = [(DoseComplicationFormatter *)self _templateWithFamily:10 content:contentCopy device:v24];
      [v20 setCircularTemplate:v106];

      deviceCopy = v24;
      goto LABEL_75;
    }

    v180 = deviceCopy;
    v182 = v16;
    if ([contentCopy isEnabled])
    {
      v20 = objc_alloc_init(CLKComplicationTemplateGraphicCornerMeteredGaugeText);
      v67 = [NSBundle bundleForClass:objc_opt_class()];
      v68 = [NSBundle bundleForClass:objc_opt_class()];
      v69 = [v68 localizedStringForKey:@"UNIT_LABEL" value:&stru_C3E0 table:0];
      v70 = [v67 localizedStringForKey:@"UNIT_LABEL" value:v69 table:@"Noise"];
      v71 = [CLKSimpleTextProvider textProviderWithText:v70];
      [v20 setLeadingTextProvider:v71];

      leadingTextProvider = [v20 leadingTextProvider];
      [leadingTextProvider setIgnoreUppercaseStyle:1];

      tintColor6 = [contentCopy tintColor];
      leadingTextProvider2 = [v20 leadingTextProvider];
      [leadingTextProvider2 setTintColor:tintColor6];

      dbFormatter2 = [(DoseComplicationFormatter *)self dbFormatter];
      [contentCopy slowLeq];
      v76 = [NSNumber numberWithFloat:?];
      v77 = [dbFormatter2 stringFromNumber:v76];
      v78 = [(DoseComplicationFormatter *)self createOuterMonospaceTextProviderWithText:v77];
      [v20 setOuterTextProvider:v78];

      classificationImageName12 = [contentCopy classificationImageName];

      if (classificationImageName12)
      {
        classificationImageName13 = [contentCopy classificationImageName];
        imageTintColor5 = [contentCopy imageTintColor];
        v185 = v187;
        v186 = *v188;
        v82 = [(DoseComplicationFormatter *)self fullColorImageProviderWithSymbolName:classificationImageName13 tintColor:imageTintColor5 pointSizeSymbolConstants:&v185];
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

      leadingTextProvider3 = [v20 leadingTextProvider];
      [leadingTextProvider3 setIgnoreUppercaseStyle:1];

      tintColor7 = [contentCopy tintColor];
      leadingTextProvider4 = [v20 leadingTextProvider];
      [leadingTextProvider4 setTintColor:tintColor7];

      classificationImageName14 = [contentCopy classificationImageName];

      if (classificationImageName14)
      {
        classificationImageName13 = [contentCopy classificationImageName];
        imageTintColor5 = [contentCopy imageTintColor];
        v185 = *&v188[8];
        v186 = *&v188[24];
        v82 = [(DoseComplicationFormatter *)self fullColorImageProviderWithSymbolName:classificationImageName13 tintColor:imageTintColor5 pointSizeSymbolConstants:&v185];
        [v20 setImageProvider:v82];
        goto LABEL_72;
      }
    }

    [contentCopy gaugeFillValue];
    v155 = v154;
    tintColor8 = [contentCopy tintColor];
    v157 = [(DoseComplicationFormatter *)self createGaugeProviderWithFillValue:tintColor8 tintColor:v155];
    [v20 setGaugeProvider:v157];

LABEL_74:
    deviceCopy = v180;
LABEL_75:
    v21 = v183;
    goto LABEL_86;
  }

  if (family <= 2)
  {
    if (!family)
    {
      v20 = objc_alloc_init(CLKComplicationTemplateModularSmallStackImage);
      classificationImageName15 = [contentCopy classificationImageName];

      v21 = v183;
      if (classificationImageName15)
      {
        isEnabled2 = [contentCopy isEnabled];
        classificationImageName16 = [contentCopy classificationImageName];
        if (isEnabled2)
        {
          [contentCopy imageTintColor];
        }

        else
        {
          [contentCopy tintColor];
        }
        v163 = ;
        v185 = v191;
        v186 = *v192;
        v164 = [(DoseComplicationFormatter *)self imageProviderWithSymbolName:classificationImageName16 tintColor:v163 pointSizeSymbolConstants:&v185];
        [v20 setLine1ImageProvider:v164];

        v21 = v183;
      }

      levelContentShort6 = [contentCopy levelContentShort];
      v166 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:levelContentShort6 shortText:v19];
      [v20 setLine2TextProvider:v166];

      [v20 setHighlightLine2:0];
      goto LABEL_8;
    }

    v21 = v183;
    if (family != 1)
    {
      if (family != 2)
      {
        goto LABEL_87;
      }

      goto LABEL_24;
    }

    v178 = deviceCopy;
    v182 = v16;
    v20 = objc_alloc_init(CLKComplicationTemplateModularLargeStandardBody);
    v60 = [NSBundle bundleForClass:objc_opt_class()];
    v61 = [NSBundle bundleForClass:objc_opt_class()];
    v62 = [v61 localizedStringForKey:@"HEADER_TITLE" value:&stru_C3E0 table:0];
    v63 = [v60 localizedStringForKey:@"HEADER_TITLE" value:v62 table:@"Noise"];
    v64 = [CLKSimpleTextProvider textProviderWithText:v63];
    [v20 setHeaderTextProvider:v64];

    if ([contentCopy isEnabled])
    {
      classifierContent3 = [contentCopy classifierContent];
      v66 = [CLKSimpleTextProvider textProviderWithText:classifierContent3];
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
    levelContentLong2 = [contentCopy levelContentLong];
    levelContentShort7 = [contentCopy levelContentShort];
    v144 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:levelContentLong2 shortText:levelContentShort7];
    [v20 setBody2TextProvider:v144];

    tintColor2 = +[UIColor systemBlueColor];
    headerTextProvider = [v20 headerTextProvider];
    [headerTextProvider setTintColor:tintColor2];
    goto LABEL_69;
  }

  if (family == 3)
  {
    v180 = deviceCopy;
    v20 = objc_alloc_init(CLKComplicationTemplateUtilitarianLargeFlat);
    [v20 setImageProvider:v183];
    v182 = v16;
    if ([contentCopy isEnabled])
    {
      [v20 setTintColor:v16];
      v176 = [NSBundle bundleForClass:objc_opt_class()];
      v177 = [NSBundle bundleForClass:objc_opt_class()];
      v175 = [v177 localizedStringForKey:@"LEVEL_SUMMARY" value:&stru_C3E0 table:0];
      v48 = [v176 localizedStringForKey:@"LEVEL_SUMMARY" value:v175 table:@"Noise"];
      classifierContent4 = [contentCopy classifierContent];
      uppercaseString = [classifierContent4 uppercaseString];
      dbFormatter3 = [(DoseComplicationFormatter *)self dbFormatter];
      [contentCopy slowLeq];
      v51 = [NSNumber numberWithFloat:?];
      v52 = [dbFormatter3 stringFromNumber:v51];
      v53 = [NSString localizedStringWithFormat:v48, uppercaseString, v52];
      levelContentShort8 = [contentCopy levelContentShort];
      v55 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:v53 shortText:levelContentShort8];
      [v20 setTextProvider:v55];

      textProvider = [v20 textProvider];
      [textProvider setIgnoreUppercaseStyle:1];
    }

    else
    {
      textProvider = [NSBundle bundleForClass:objc_opt_class()];
      v122 = [NSBundle bundleForClass:objc_opt_class()];
      v123 = [v122 localizedStringForKey:@"SUSPENDED_LABEL" value:&stru_C3E0 table:0];
      v124 = [textProvider localizedStringForKey:@"SUSPENDED_LABEL" value:v123 table:@"Noise"];
      v125 = [CLKSimpleTextProvider textProviderWithText:v124];
      [v20 setTextProvider:v125];
    }

    goto LABEL_74;
  }

  if (family != 4)
  {
    v21 = v183;
    if (family != 6)
    {
      goto LABEL_87;
    }

LABEL_24:
    v31 = v16;
    v32 = deviceCopy;
    v20 = objc_alloc_init(CLKComplicationTemplateUtilitarianSmallFlat);
    [v20 setImageProvider:v21];
    levelContentShort9 = [contentCopy levelContentShort];
    v34 = [(DoseComplicationFormatter *)self createMonospaceTextProviderWithText:levelContentShort9 shortText:v184];
    [v20 setTextProvider:v34];

    textProvider2 = [v20 textProvider];
    [textProvider2 setIgnoreUppercaseStyle:1];

    if ([contentCopy isEnabled])
    {
      v16 = v31;
      [v20 setTintColor:v31];
      deviceCopy = v32;
    }

    else
    {
      deviceCopy = v32;
      v16 = v31;
    }

    goto LABEL_87;
  }

  v181 = deviceCopy;
  if ([contentCopy isEnabled])
  {
    v20 = objc_alloc_init(CLKComplicationTemplateCircularSmallStackText);
    dbFormatter4 = [(DoseComplicationFormatter *)self dbFormatter];
    v84 = v16;
    [contentCopy slowLeq];
    v85 = [NSNumber numberWithFloat:?];
    v86 = [dbFormatter4 stringFromNumber:v85];
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
    classificationImageName17 = [contentCopy classificationImageName];

    if (classificationImageName17)
    {
      classificationImageName18 = [contentCopy classificationImageName];
      [contentCopy imageTintColor];
      v161 = v160 = v16;
      v185 = *&v192[8];
      v186 = *&v192[24];
      v162 = [(DoseComplicationFormatter *)self imageProviderWithSymbolName:classificationImageName18 tintColor:v161 pointSizeSymbolConstants:&v185];
      [v20 setImageProvider:v162];

      v16 = v160;
    }
  }

  deviceCopy = v181;
  v21 = v183;
LABEL_87:

  return v20;
}

- (id)_setupNoiseTemplateWithFamily:(int64_t)family device:(id)device
{
  deviceCopy = device;
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
  if (CLKComplicationFamilyCircularMedium == family)
  {
    v10 = CLKComplicationTemplateCircularMediumSimpleImage;
    goto LABEL_3;
  }

  v11 = 0;
  if (family > 6)
  {
    if (family <= 9)
    {
      if (family == 7)
      {
        v11 = objc_alloc_init(CLKComplicationTemplateExtraLargeSimpleImage);
        (v8[2])(v8, @"XL_noise");
      }

      else
      {
        if (family != 8)
        {
          v11 = objc_alloc_init(CLKComplicationTemplateGraphicBezelCircularText);
          v48 = [NSBundle bundleForClass:objc_opt_class()];
          v14 = [NSBundle bundleForClass:objc_opt_class()];
          v15 = [v14 localizedStringForKey:@"SETUP_NOISE" value:&stru_C3E0 table:0];
          v16 = [v48 localizedStringForKey:@"SETUP_NOISE" value:v15 table:@"Noise"];
          v17 = sub_6318(v16, v16);
          [v11 setTextProvider:v17];

          setupComplicationBackgroundColor = [(DoseComplicationFormatter *)self _setupNoiseTemplateWithFamily:10 device:deviceCopy];
          [v11 setCircularTemplate:setupComplicationBackgroundColor];
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

      setupComplicationBackgroundColor = LABEL_5:;
      [v11 setImageProvider:setupComplicationBackgroundColor];
LABEL_6:

      goto LABEL_7;
    }

    switch(family)
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

        setupComplicationBackgroundColor = (v7[2])(v7);
        [v11 setGaugeProvider:setupComplicationBackgroundColor];
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

    setupComplicationBackgroundColor = [(DoseComplicationFormatter *)self setupComplicationBackgroundColor];
    [v11 setMetadata:setupComplicationBackgroundColor];
    goto LABEL_6;
  }

  if (family > 2)
  {
    switch(family)
    {
      case 3:
        v11 = objc_alloc_init(CLKComplicationTemplateUtilitarianLargeFlat);
        setupComplicationBackgroundColor = [NSBundle bundleForClass:objc_opt_class()];
        v18 = [NSBundle bundleForClass:objc_opt_class()];
        headerTextProvider = v18;
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
        setupComplicationBackgroundColor = [NSBundle bundleForClass:objc_opt_class()];
        v18 = [NSBundle bundleForClass:objc_opt_class()];
        headerTextProvider = v18;
        v20 = @"SETUP_SHORT";
        break;
      default:
        goto LABEL_7;
    }

    v21 = [v18 localizedStringForKey:v20 value:&stru_C3E0 table:0];
    v22 = [setupComplicationBackgroundColor localizedStringForKey:v20 value:v21 table:@"Noise"];
    v23 = sub_6318(v22, v22);
    [v11 setTextProvider:v23];

LABEL_35:
    goto LABEL_6;
  }

  switch(family)
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

      setupComplicationBackgroundColor = +[UIColor systemBlueColor];
      headerTextProvider = [v11 headerTextProvider];
      [headerTextProvider setTintColor:setupComplicationBackgroundColor];
      goto LABEL_35;
    case 2:
      v11 = objc_alloc_init(CLKComplicationTemplateUtilitarianSmallSquare);
      (v8[2])(v8, @"utility-corner_noise");
      goto LABEL_5;
  }

LABEL_7:

  return v11;
}

- (id)createMonospaceTextProviderWithText:(id)text shortText:(id)shortText
{
  v4 = [CLKSimpleTextProvider textProviderWithText:text shortText:shortText];
  [v4 setMonospacedNumbers:1];

  return v4;
}

- (id)createOuterMonospaceTextProviderWithText:(id)text
{
  v3 = [DoseTextProvider textProviderWithText:text];
  [v3 setMonospacedNumbers:1];

  return v3;
}

- (id)createGaugeProviderWithFillValue:(double)value tintColor:(id)color
{
  v4 = fmax(value, 0.0);
  if (v4 <= 1.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = _SPLGradientColor(color);
  *&v7 = v5;
  v8 = [CLKSimpleGaugeProvider gaugeProviderWithStyle:1 gaugeColors:v6 gaugeColorLocations:&off_C948 fillFraction:v7];

  return v8;
}

@end
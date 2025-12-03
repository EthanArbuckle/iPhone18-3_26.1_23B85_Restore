@interface CARSubtitlesPanel
- (id)_colorOptions;
- (id)_fetchSubtitleSettings;
- (id)_fontOptions;
- (id)_opacityOptions;
- (id)specifierSections;
- (void)_performUpdatesOnSubtitleSettings:(id)settings;
@end

@implementation CARSubtitlesPanel

- (id)specifierSections
{
  v187 = [NSMutableArray arrayWithCapacity:4];
  objc_initWeak(&location, self);
  subtitleSettings = [(CARSubtitlesPanel *)self subtitleSettings];
  v4 = subtitleSettings == 0;

  if (v4)
  {
    _fetchSubtitleSettings = [(CARSubtitlesPanel *)self _fetchSubtitleSettings];
    subtitleSettings = self->_subtitleSettings;
    self->_subtitleSettings = _fetchSubtitleSettings;
  }

  v7 = [CARSettingsSwitchCellSpecifier alloc];
  v8 = sub_10001C80C(@"SUBTITLES_CLOSED_CAPTIONS_AND_SDH");
  v222[0] = _NSConcreteStackBlock;
  v222[1] = 3221225472;
  v222[2] = sub_100023A24;
  v222[3] = &unk_1000DAE68;
  objc_copyWeak(&v223, &location);
  v186 = [(CARSettingsSwitchCellSpecifier *)v7 initWithTitle:v8 image:0 icon:0 actionBlock:v222];

  subtitleSettings2 = [(CARSubtitlesPanel *)self subtitleSettings];
  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [subtitleSettings2 closedCaptionsEnabled]);
  [(CARSettingsCellSpecifier *)v186 setCellValue:v10];

  [(CARSettingsCellSpecifier *)v186 setAccessibilityIdentifier:@"CPSettingsCaptionsSwitch"];
  v11 = [CARSettingsCellSpecifierSection alloc];
  v230 = v186;
  v12 = [NSArray arrayWithObjects:&v230 count:1];
  v13 = [(CARSettingsCellSpecifierSection *)v11 initWithSpecifiers:v12];
  [v187 addObject:v13];

  textFontPanel = [(CARSubtitlesPanel *)self textFontPanel];
  LODWORD(v12) = textFontPanel == 0;

  if (v12)
  {
    subtitleSettings3 = [(CARSubtitlesPanel *)self subtitleSettings];
    fontName = [subtitleSettings3 fontName];

    v17 = [CARSettingsFontOptionsPanel alloc];
    panelController = [(CARSettingsPanel *)self panelController];
    v19 = sub_10001C80C(@"SUBTITLES_FONT");
    _fontOptions = [(CARSubtitlesPanel *)self _fontOptions];
    v21 = [NSNumber numberWithInt:fontName];
    v220[0] = _NSConcreteStackBlock;
    v220[1] = 3221225472;
    v220[2] = sub_100023B24;
    v220[3] = &unk_1000DB5D8;
    objc_copyWeak(&v221, &location);
    subtitleSettings4 = [(CARSubtitlesPanel *)self subtitleSettings];
    allowFontNameOverride = [subtitleSettings4 allowFontNameOverride];
    v218[0] = _NSConcreteStackBlock;
    v218[1] = 3221225472;
    v218[2] = sub_100023BB8;
    v218[3] = &unk_1000DB620;
    objc_copyWeak(&v219, &location);
    v24 = [(CARSubtitleSettingOptionsPanel *)v17 initWithPanelController:panelController title:v19 options:_fontOptions selectedValue:v21 selectionHandler:v220 allowsOverride:allowFontNameOverride allowsOverrideSwitchHandler:v218];
    textFontPanel = self->_textFontPanel;
    self->_textFontPanel = v24;

    objc_destroyWeak(&v219);
    objc_destroyWeak(&v221);
  }

  textFontPanel2 = [(CARSubtitlesPanel *)self textFontPanel];
  cellSpecifier = [textFontPanel2 cellSpecifier];

  subtitleSettings5 = [(CARSubtitlesPanel *)self subtitleSettings];
  v28 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [subtitleSettings5 fontName]);
  [cellSpecifier setCellValue:v28];

  [cellSpecifier setAccessibilityIdentifier:@"CPSettingsSubtitlesTextFont"];
  textSizePanel = [(CARSubtitlesPanel *)self textSizePanel];
  LODWORD(subtitleSettings5) = textSizePanel == 0;

  if (subtitleSettings5)
  {
    subtitleSettings6 = [(CARSubtitlesPanel *)self subtitleSettings];
    fontSize = [subtitleSettings6 fontSize];

    v177 = [CARSubtitleSettingOptionsPanel alloc];
    panelController2 = [(CARSettingsPanel *)self panelController];
    v179 = sub_10001C80C(@"SUBTITLES_TEXT_SIZE");
    v32 = sub_10001C80C(@"SUBTITLES_TEXT_SIZE_SMALL");
    v33 = [CARSettingsOption optionWithTitle:v32 value:&off_1000E2B30];
    v229[0] = v33;
    v34 = sub_10001C80C(@"SUBTITLES_TEXT_SIZE_MEDIUM");
    v183 = [CARSettingsOption optionWithTitle:v34 value:&off_1000E2B48];
    v229[1] = v183;
    v35 = sub_10001C80C(@"SUBTITLES_TEXT_SIZE_LARGE");
    v36 = [CARSettingsOption optionWithTitle:v35 value:&off_1000E2B60];
    v229[2] = v36;
    v37 = sub_10001C80C(@"SUBTITLES_TEXT_SIZE_EXTRA_LARGE");
    v38 = [CARSettingsOption optionWithTitle:v37 value:&off_1000E2B78];
    v229[3] = v38;
    v39 = [NSArray arrayWithObjects:v229 count:4];
    v40 = [NSNumber numberWithInt:fontSize];
    v174 = v33;
    v172 = v32;
    v216[0] = _NSConcreteStackBlock;
    v216[1] = 3221225472;
    v216[2] = sub_100023C4C;
    v216[3] = &unk_1000DB5D8;
    objc_copyWeak(&v217, &location);
    subtitleSettings7 = [(CARSubtitlesPanel *)self subtitleSettings];
    allowFontSizeOverride = [subtitleSettings7 allowFontSizeOverride];
    v214[0] = _NSConcreteStackBlock;
    v214[1] = 3221225472;
    v214[2] = sub_100023CE0;
    v214[3] = &unk_1000DB620;
    objc_copyWeak(&v215, &location);
    v43 = [(CARSubtitleSettingOptionsPanel *)v177 initWithPanelController:panelController2 title:v179 options:v39 selectedValue:v40 selectionHandler:v216 allowsOverride:allowFontSizeOverride allowsOverrideSwitchHandler:v214];
    textSizePanel = self->_textSizePanel;
    self->_textSizePanel = v43;

    objc_destroyWeak(&v215);
    objc_destroyWeak(&v217);
  }

  textSizePanel2 = [(CARSubtitlesPanel *)self textSizePanel];
  cellSpecifier2 = [textSizePanel2 cellSpecifier];

  subtitleSettings8 = [(CARSubtitlesPanel *)self subtitleSettings];
  v47 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [subtitleSettings8 fontSize]);
  [cellSpecifier2 setCellValue:v47];

  [cellSpecifier2 setAccessibilityIdentifier:@"CPSettingsSubtitlesTextSize"];
  textColorPanel = [(CARSubtitlesPanel *)self textColorPanel];
  LODWORD(subtitleSettings8) = textColorPanel == 0;

  if (subtitleSettings8)
  {
    subtitleSettings9 = [(CARSubtitlesPanel *)self subtitleSettings];
    fontColor = [subtitleSettings9 fontColor];

    v51 = [CARSubtitleSettingOptionsPanel alloc];
    panelController3 = [(CARSettingsPanel *)self panelController];
    v53 = sub_10001C80C(@"SUBTITLES_TEXT_COLOR");
    _colorOptions = [(CARSubtitlesPanel *)self _colorOptions];
    v55 = [NSNumber numberWithInt:fontColor];
    v212[0] = _NSConcreteStackBlock;
    v212[1] = 3221225472;
    v212[2] = sub_100023D74;
    v212[3] = &unk_1000DB5D8;
    objc_copyWeak(&v213, &location);
    subtitleSettings10 = [(CARSubtitlesPanel *)self subtitleSettings];
    allowFontColorOverride = [subtitleSettings10 allowFontColorOverride];
    v210[0] = _NSConcreteStackBlock;
    v210[1] = 3221225472;
    v210[2] = sub_100023E08;
    v210[3] = &unk_1000DB620;
    objc_copyWeak(&v211, &location);
    v58 = [(CARSubtitleSettingOptionsPanel *)v51 initWithPanelController:panelController3 title:v53 options:_colorOptions selectedValue:v55 selectionHandler:v212 allowsOverride:allowFontColorOverride allowsOverrideSwitchHandler:v210];
    textColorPanel = self->_textColorPanel;
    self->_textColorPanel = v58;

    objc_destroyWeak(&v211);
    objc_destroyWeak(&v213);
  }

  textColorPanel2 = [(CARSubtitlesPanel *)self textColorPanel];
  cellSpecifier3 = [textColorPanel2 cellSpecifier];

  subtitleSettings11 = [(CARSubtitlesPanel *)self subtitleSettings];
  v62 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [subtitleSettings11 fontColor]);
  [cellSpecifier3 setCellValue:v62];

  [cellSpecifier3 setAccessibilityIdentifier:@"CPSettingsSubtitlesTextColor"];
  v63 = sub_10001C80C(@"SUBTITLES_TEXT");
  localizedUppercaseString = [v63 localizedUppercaseString];

  v64 = [CARSettingsCellSpecifierSection alloc];
  v228[0] = cellSpecifier;
  v228[1] = cellSpecifier2;
  v228[2] = cellSpecifier3;
  v65 = [NSArray arrayWithObjects:v228 count:3];
  v66 = [(CARSettingsCellSpecifierSection *)v64 initWithTitle:localizedUppercaseString specifiers:v65];
  [v187 addObject:v66];

  backgroundColorPanel = [(CARSubtitlesPanel *)self backgroundColorPanel];
  LODWORD(v65) = backgroundColorPanel == 0;

  if (v65)
  {
    subtitleSettings12 = [(CARSubtitlesPanel *)self subtitleSettings];
    backgroundColor = [subtitleSettings12 backgroundColor];

    v70 = [CARSubtitleSettingOptionsPanel alloc];
    panelController4 = [(CARSettingsPanel *)self panelController];
    v72 = sub_10001C80C(@"SUBTITLES_BACKGROUND_COLOR");
    _colorOptions2 = [(CARSubtitlesPanel *)self _colorOptions];
    v74 = [NSNumber numberWithInt:backgroundColor];
    v208[0] = _NSConcreteStackBlock;
    v208[1] = 3221225472;
    v208[2] = sub_100023E9C;
    v208[3] = &unk_1000DB5D8;
    objc_copyWeak(&v209, &location);
    subtitleSettings13 = [(CARSubtitlesPanel *)self subtitleSettings];
    allowBackgroundColorOverride = [subtitleSettings13 allowBackgroundColorOverride];
    v206[0] = _NSConcreteStackBlock;
    v206[1] = 3221225472;
    v206[2] = sub_100023F30;
    v206[3] = &unk_1000DB620;
    objc_copyWeak(&v207, &location);
    v77 = [(CARSubtitleSettingOptionsPanel *)v70 initWithPanelController:panelController4 title:v72 options:_colorOptions2 selectedValue:v74 selectionHandler:v208 allowsOverride:allowBackgroundColorOverride allowsOverrideSwitchHandler:v206];
    backgroundColorPanel = self->_backgroundColorPanel;
    self->_backgroundColorPanel = v77;

    objc_destroyWeak(&v207);
    objc_destroyWeak(&v209);
  }

  backgroundColorPanel2 = [(CARSubtitlesPanel *)self backgroundColorPanel];
  cellSpecifier4 = [backgroundColorPanel2 cellSpecifier];

  subtitleSettings14 = [(CARSubtitlesPanel *)self subtitleSettings];
  v81 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [subtitleSettings14 backgroundColor]);
  [cellSpecifier4 setCellValue:v81];

  [cellSpecifier4 setAccessibilityIdentifier:@"CPSettingsSubtitlesBackgroundColor"];
  backgroundOpacityPanel = [(CARSubtitlesPanel *)self backgroundOpacityPanel];
  LODWORD(subtitleSettings14) = backgroundOpacityPanel == 0;

  if (subtitleSettings14)
  {
    subtitleSettings15 = [(CARSubtitlesPanel *)self subtitleSettings];
    backgroundOpacity = [subtitleSettings15 backgroundOpacity];

    v85 = [CARSubtitleSettingOptionsPanel alloc];
    panelController5 = [(CARSettingsPanel *)self panelController];
    v87 = sub_10001C80C(@"SUBTITLES_BACKGROUND_OPACITY");
    _opacityOptions = [(CARSubtitlesPanel *)self _opacityOptions];
    v89 = [NSNumber numberWithInt:backgroundOpacity];
    v204[0] = _NSConcreteStackBlock;
    v204[1] = 3221225472;
    v204[2] = sub_100023FC4;
    v204[3] = &unk_1000DB5D8;
    objc_copyWeak(&v205, &location);
    subtitleSettings16 = [(CARSubtitlesPanel *)self subtitleSettings];
    allowBackgroundOpacityOverride = [subtitleSettings16 allowBackgroundOpacityOverride];
    v202[0] = _NSConcreteStackBlock;
    v202[1] = 3221225472;
    v202[2] = sub_100024058;
    v202[3] = &unk_1000DB620;
    objc_copyWeak(&v203, &location);
    v92 = [(CARSubtitleSettingOptionsPanel *)v85 initWithPanelController:panelController5 title:v87 options:_opacityOptions selectedValue:v89 selectionHandler:v204 allowsOverride:allowBackgroundOpacityOverride allowsOverrideSwitchHandler:v202];
    backgroundOpacityPanel = self->_backgroundOpacityPanel;
    self->_backgroundOpacityPanel = v92;

    objc_destroyWeak(&v203);
    objc_destroyWeak(&v205);
  }

  backgroundOpacityPanel2 = [(CARSubtitlesPanel *)self backgroundOpacityPanel];
  cellSpecifier5 = [backgroundOpacityPanel2 cellSpecifier];

  subtitleSettings17 = [(CARSubtitlesPanel *)self subtitleSettings];
  v96 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [subtitleSettings17 backgroundOpacity]);
  [cellSpecifier5 setCellValue:v96];

  [cellSpecifier5 setAccessibilityIdentifier:@"CPSettingsSubtitlesBackgroundOpacity"];
  v97 = sub_10001C80C(@"SUBTITLES_BACKGROUND");
  localizedUppercaseString2 = [v97 localizedUppercaseString];

  v98 = [CARSettingsCellSpecifierSection alloc];
  v227[0] = cellSpecifier4;
  v227[1] = cellSpecifier5;
  v99 = [NSArray arrayWithObjects:v227 count:2];
  v100 = [(CARSettingsCellSpecifierSection *)v98 initWithTitle:localizedUppercaseString2 specifiers:v99];
  [v187 addObject:v100];

  textOpacityPanel = [(CARSubtitlesPanel *)self textOpacityPanel];
  LODWORD(v99) = textOpacityPanel == 0;

  if (v99)
  {
    subtitleSettings18 = [(CARSubtitlesPanel *)self subtitleSettings];
    textOpacity = [subtitleSettings18 textOpacity];

    v104 = [CARSubtitleSettingOptionsPanel alloc];
    panelController6 = [(CARSettingsPanel *)self panelController];
    v106 = sub_10001C80C(@"SUBTITLES_TEXT_OPACITY");
    _opacityOptions2 = [(CARSubtitlesPanel *)self _opacityOptions];
    v108 = [NSNumber numberWithInt:textOpacity];
    v200[0] = _NSConcreteStackBlock;
    v200[1] = 3221225472;
    v200[2] = sub_1000240EC;
    v200[3] = &unk_1000DB5D8;
    objc_copyWeak(&v201, &location);
    subtitleSettings19 = [(CARSubtitlesPanel *)self subtitleSettings];
    allowTextOpacityOverride = [subtitleSettings19 allowTextOpacityOverride];
    v198[0] = _NSConcreteStackBlock;
    v198[1] = 3221225472;
    v198[2] = sub_100024180;
    v198[3] = &unk_1000DB620;
    objc_copyWeak(&v199, &location);
    v111 = [(CARSubtitleSettingOptionsPanel *)v104 initWithPanelController:panelController6 title:v106 options:_opacityOptions2 selectedValue:v108 selectionHandler:v200 allowsOverride:allowTextOpacityOverride allowsOverrideSwitchHandler:v198];
    textOpacityPanel = self->_textOpacityPanel;
    self->_textOpacityPanel = v111;

    objc_destroyWeak(&v199);
    objc_destroyWeak(&v201);
  }

  textOpacityPanel2 = [(CARSubtitlesPanel *)self textOpacityPanel];
  cellSpecifier6 = [textOpacityPanel2 cellSpecifier];

  subtitleSettings20 = [(CARSubtitlesPanel *)self subtitleSettings];
  v115 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [subtitleSettings20 textOpacity]);
  [cellSpecifier6 setCellValue:v115];

  [cellSpecifier6 setAccessibilityIdentifier:@"CPSettingsSubtitlesTextOpacity"];
  textEdgeStylePanel = [(CARSubtitlesPanel *)self textEdgeStylePanel];
  LODWORD(subtitleSettings20) = textEdgeStylePanel == 0;

  if (subtitleSettings20)
  {
    subtitleSettings21 = [(CARSubtitlesPanel *)self subtitleSettings];
    textEdgeStyle = [subtitleSettings21 textEdgeStyle];

    v162 = [CARSubtitleSettingOptionsPanel alloc];
    panelController7 = [(CARSettingsPanel *)self panelController];
    v163 = sub_10001C80C(@"SUBTITLES_TEXT_EDGE_STYLE");
    v170 = sub_10001C80C(@"SUBTITLES_TEXT_EDGE_STYLE_NONE");
    v169 = [CARSettingsOption optionWithTitle:v170 value:&off_1000E2B30];
    v226[0] = v169;
    v168 = sub_10001C80C(@"SUBTITLES_TEXT_EDGE_STYLE_DROP_SHADOW");
    v167 = [CARSettingsOption optionWithTitle:v168 value:&off_1000E2B48];
    v226[1] = v167;
    v166 = sub_10001C80C(@"SUBTITLES_TEXT_EDGE_STYLE_RAISED");
    v165 = [CARSettingsOption optionWithTitle:v166 value:&off_1000E2B60];
    v226[2] = v165;
    v119 = sub_10001C80C(@"SUBTITLES_TEXT_EDGE_STYLE_DEPRESSED");
    v120 = [CARSettingsOption optionWithTitle:v119 value:&off_1000E2B78];
    v226[3] = v120;
    v121 = sub_10001C80C(@"SUBTITLES_TEXT_EDGE_STYLE_UNIFORM");
    v122 = [CARSettingsOption optionWithTitle:v121 value:&off_1000E2B90];
    v226[4] = v122;
    v123 = [NSArray arrayWithObjects:v226 count:5];
    v124 = [NSNumber numberWithInt:textEdgeStyle];
    v196[0] = _NSConcreteStackBlock;
    v196[1] = 3221225472;
    v196[2] = sub_100024214;
    v196[3] = &unk_1000DB5D8;
    objc_copyWeak(&v197, &location);
    subtitleSettings22 = [(CARSubtitlesPanel *)self subtitleSettings];
    allowTextEdgeStyleOverride = [subtitleSettings22 allowTextEdgeStyleOverride];
    v194[0] = _NSConcreteStackBlock;
    v194[1] = 3221225472;
    v194[2] = sub_1000242A8;
    v194[3] = &unk_1000DB620;
    objc_copyWeak(&v195, &location);
    v127 = [(CARSubtitleSettingOptionsPanel *)v162 initWithPanelController:panelController7 title:v163 options:v123 selectedValue:v124 selectionHandler:v196 allowsOverride:allowTextEdgeStyleOverride allowsOverrideSwitchHandler:v194];
    textEdgeStylePanel = self->_textEdgeStylePanel;
    self->_textEdgeStylePanel = v127;

    objc_destroyWeak(&v195);
    objc_destroyWeak(&v197);
  }

  textEdgeStylePanel2 = [(CARSubtitlesPanel *)self textEdgeStylePanel];
  cellSpecifier7 = [textEdgeStylePanel2 cellSpecifier];

  subtitleSettings23 = [(CARSubtitlesPanel *)self subtitleSettings];
  v132 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [subtitleSettings23 textEdgeStyle]);
  [cellSpecifier7 setCellValue:v132];

  [cellSpecifier7 setAccessibilityIdentifier:@"CPSettingsSubtitlesTextEdgeStyle"];
  textHighlightPanel = [(CARSubtitlesPanel *)self textHighlightPanel];
  LODWORD(subtitleSettings23) = textHighlightPanel == 0;

  if (subtitleSettings23)
  {
    subtitleSettings24 = [(CARSubtitlesPanel *)self subtitleSettings];
    textHighlightColor = [subtitleSettings24 textHighlightColor];

    v136 = sub_10001C80C(@"SUBTITLES_HIGHLIGHT_COLOR");
    localizedUppercaseString3 = [v136 localizedUppercaseString];
    _colorOptions3 = [(CARSubtitlesPanel *)self _colorOptions];
    v139 = [NSNumber numberWithInt:textHighlightColor];
    v192[0] = _NSConcreteStackBlock;
    v192[1] = 3221225472;
    v192[2] = sub_10002433C;
    v192[3] = &unk_1000DB648;
    objc_copyWeak(&v193, &location);
    v171 = [CARSettingsOptionsPicker pickerWithLabel:localizedUppercaseString3 options:_colorOptions3 selectedValue:v139 selectionHandler:v192];

    subtitleSettings25 = [(CARSubtitlesPanel *)self subtitleSettings];
    textHighlightOpacity = [subtitleSettings25 textHighlightOpacity];

    v142 = sub_10001C80C(@"SUBTITLES_HIGHLIGHT_OPACITY");
    localizedUppercaseString4 = [v142 localizedUppercaseString];
    _opacityOptions3 = [(CARSubtitlesPanel *)self _opacityOptions];
    v145 = [NSNumber numberWithInt:textHighlightOpacity];
    v190[0] = _NSConcreteStackBlock;
    v190[1] = 3221225472;
    v190[2] = sub_100024408;
    v190[3] = &unk_1000DB648;
    objc_copyWeak(&v191, &location);
    v146 = [CARSettingsOptionsPicker pickerWithLabel:localizedUppercaseString4 options:_opacityOptions3 selectedValue:v145 selectionHandler:v190];

    v147 = [CARSubtitleSettingsOptionsPairPanel alloc];
    panelController8 = [(CARSettingsPanel *)self panelController];
    v149 = sub_10001C80C(@"SUBTITLES_TEXT_HIGHLIGHT");
    subtitleSettings26 = [(CARSubtitlesPanel *)self subtitleSettings];
    allowTextHighlightOverride = [subtitleSettings26 allowTextHighlightOverride];
    v188[0] = _NSConcreteStackBlock;
    v188[1] = 3221225472;
    v188[2] = sub_1000244D4;
    v188[3] = &unk_1000DB620;
    objc_copyWeak(&v189, &location);
    v152 = [(CARSubtitleSettingsOptionsPairPanel *)v147 initWithPanelController:panelController8 title:v149 primaryPicker:v171 secondaryPicker:v146 allowsOverride:allowTextHighlightOverride allowsOverrideSwitchHandler:v188];
    textHighlightPanel = self->_textHighlightPanel;
    self->_textHighlightPanel = v152;

    objc_destroyWeak(&v189);
    objc_destroyWeak(&v191);

    objc_destroyWeak(&v193);
  }

  textHighlightPanel2 = [(CARSubtitlesPanel *)self textHighlightPanel];
  cellSpecifier8 = [textHighlightPanel2 cellSpecifier];

  [cellSpecifier8 setAccessibilityIdentifier:@"CPSettingsSubtitlesTextHighlight"];
  v156 = sub_10001C80C(@"SUBTITLES_ADVANCED");
  localizedUppercaseString5 = [v156 localizedUppercaseString];

  v158 = [CARSettingsCellSpecifierSection alloc];
  v225[0] = cellSpecifier6;
  v225[1] = cellSpecifier7;
  v225[2] = cellSpecifier8;
  v159 = [NSArray arrayWithObjects:v225 count:3];
  v160 = [(CARSettingsCellSpecifierSection *)v158 initWithTitle:localizedUppercaseString5 specifiers:v159];
  [v187 addObject:v160];

  objc_destroyWeak(&v223);
  objc_destroyWeak(&location);

  return v187;
}

- (id)_fetchSubtitleSettings
{
  panelController = [(CARSettingsPanel *)self panelController];
  vehicleVideoSettings = [panelController vehicleVideoSettings];

  subtitleSettings = [vehicleVideoSettings subtitleSettings];

  return subtitleSettings;
}

- (void)_performUpdatesOnSubtitleSettings:(id)settings
{
  settingsCopy = settings;
  subtitleSettings = [(CARSubtitlesPanel *)self subtitleSettings];
  if (settingsCopy)
  {
    settingsCopy[2](settingsCopy, subtitleSettings);
  }

  panelController = [(CARSettingsPanel *)self panelController];
  vehicleVideoSettings = [panelController vehicleVideoSettings];

  [vehicleVideoSettings setSubtitleSettings:subtitleSettings];
}

- (id)_fontOptions
{
  v2 = [CARSettingsFontOption optionWithFontName:@"Helvetica" value:&off_1000E2B30];
  v13[0] = v2;
  v3 = [CARSettingsFontOption optionWithFontName:@"CinecavX" value:&off_1000E2B48];
  v13[1] = v3;
  v4 = [CARSettingsFontOption optionWithFontName:@"Menlo" value:&off_1000E2B60];
  v13[2] = v4;
  v5 = [CARSettingsFontOption optionWithFontName:@"Lucida Grande" value:&off_1000E2B78];
  v13[3] = v5;
  v6 = [CARSettingsFontOption optionWithFontName:@"Avenir" value:&off_1000E2B90];
  v13[4] = v6;
  v7 = [CARSettingsFontOption optionWithFontName:@"Copperplate" value:&off_1000E2BA8];
  v13[5] = v7;
  v8 = sub_10001C80C(@"SUBTITLES_SYSTEM_FONT");
  v9 = [CARSettingsFontOption optionWithFontName:0 displayName:v8 value:&off_1000E2BC0];
  v13[6] = v9;
  v10 = [CARSettingsFontOption optionWithFontName:@"Savoye LET" displayName:@"Savoye" value:&off_1000E2BD8];
  v13[7] = v10;
  v11 = [NSArray arrayWithObjects:v13 count:8];

  return v11;
}

- (id)_colorOptions
{
  v19 = sub_10001C80C(@"SUBTITLES_BLACK");
  v18 = [CARSettingsOption optionWithTitle:v19 value:&off_1000E2B30];
  v20[0] = v18;
  v17 = sub_10001C80C(@"SUBTITLES_WHITE");
  v16 = [CARSettingsOption optionWithTitle:v17 value:&off_1000E2B48];
  v20[1] = v16;
  v15 = sub_10001C80C(@"SUBTITLES_BLUE");
  v14 = [CARSettingsOption optionWithTitle:v15 value:&off_1000E2B60];
  v20[2] = v14;
  v13 = sub_10001C80C(@"SUBTITLES_RED");
  v2 = [CARSettingsOption optionWithTitle:v13 value:&off_1000E2B78];
  v20[3] = v2;
  v3 = sub_10001C80C(@"SUBTITLES_GREEN");
  v4 = [CARSettingsOption optionWithTitle:v3 value:&off_1000E2B90];
  v20[4] = v4;
  v5 = sub_10001C80C(@"SUBTITLES_CYAN");
  v6 = [CARSettingsOption optionWithTitle:v5 value:&off_1000E2BA8];
  v20[5] = v6;
  v7 = sub_10001C80C(@"SUBTITLES_YELLOW");
  v8 = [CARSettingsOption optionWithTitle:v7 value:&off_1000E2BC0];
  v20[6] = v8;
  v9 = sub_10001C80C(@"SUBTITLES_MAGENTA");
  v10 = [CARSettingsOption optionWithTitle:v9 value:&off_1000E2BD8];
  v20[7] = v10;
  v11 = [NSArray arrayWithObjects:v20 count:8];

  return v11;
}

- (id)_opacityOptions
{
  v13 = sub_10001C80C(@"SUBTITLES_0_PERCENT");
  v2 = [CARSettingsOption optionWithTitle:v13 value:&off_1000E2BF0];
  v14[0] = v2;
  v3 = sub_10001C80C(@"SUBTITLES_25_PERCENT");
  v4 = [CARSettingsOption optionWithTitle:v3 value:&off_1000E2C08];
  v14[1] = v4;
  v5 = sub_10001C80C(@"SUBTITLES_50_PERCENT");
  v6 = [CARSettingsOption optionWithTitle:v5 value:&off_1000E2C20];
  v14[2] = v6;
  v7 = sub_10001C80C(@"SUBTITLES_75_PERCENT");
  v8 = [CARSettingsOption optionWithTitle:v7 value:&off_1000E2C38];
  v14[3] = v8;
  v9 = sub_10001C80C(@"SUBTITLES_100_PERCENT");
  v10 = [CARSettingsOption optionWithTitle:v9 value:&off_1000E2C50];
  v14[4] = v10;
  v11 = [NSArray arrayWithObjects:v14 count:5];

  return v11;
}

@end
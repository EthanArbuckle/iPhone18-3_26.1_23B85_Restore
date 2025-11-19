@interface CARSubtitlesPanel
- (id)_colorOptions;
- (id)_fetchSubtitleSettings;
- (id)_fontOptions;
- (id)_opacityOptions;
- (id)specifierSections;
- (void)_performUpdatesOnSubtitleSettings:(id)a3;
@end

@implementation CARSubtitlesPanel

- (id)specifierSections
{
  v187 = [NSMutableArray arrayWithCapacity:4];
  objc_initWeak(&location, self);
  v3 = [(CARSubtitlesPanel *)self subtitleSettings];
  v4 = v3 == 0;

  if (v4)
  {
    v5 = [(CARSubtitlesPanel *)self _fetchSubtitleSettings];
    subtitleSettings = self->_subtitleSettings;
    self->_subtitleSettings = v5;
  }

  v7 = [CARSettingsSwitchCellSpecifier alloc];
  v8 = sub_10001C80C(@"SUBTITLES_CLOSED_CAPTIONS_AND_SDH");
  v222[0] = _NSConcreteStackBlock;
  v222[1] = 3221225472;
  v222[2] = sub_100023A24;
  v222[3] = &unk_1000DAE68;
  objc_copyWeak(&v223, &location);
  v186 = [(CARSettingsSwitchCellSpecifier *)v7 initWithTitle:v8 image:0 icon:0 actionBlock:v222];

  v9 = [(CARSubtitlesPanel *)self subtitleSettings];
  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 closedCaptionsEnabled]);
  [(CARSettingsCellSpecifier *)v186 setCellValue:v10];

  [(CARSettingsCellSpecifier *)v186 setAccessibilityIdentifier:@"CPSettingsCaptionsSwitch"];
  v11 = [CARSettingsCellSpecifierSection alloc];
  v230 = v186;
  v12 = [NSArray arrayWithObjects:&v230 count:1];
  v13 = [(CARSettingsCellSpecifierSection *)v11 initWithSpecifiers:v12];
  [v187 addObject:v13];

  v14 = [(CARSubtitlesPanel *)self textFontPanel];
  LODWORD(v12) = v14 == 0;

  if (v12)
  {
    v15 = [(CARSubtitlesPanel *)self subtitleSettings];
    v16 = [v15 fontName];

    v17 = [CARSettingsFontOptionsPanel alloc];
    v18 = [(CARSettingsPanel *)self panelController];
    v19 = sub_10001C80C(@"SUBTITLES_FONT");
    v20 = [(CARSubtitlesPanel *)self _fontOptions];
    v21 = [NSNumber numberWithInt:v16];
    v220[0] = _NSConcreteStackBlock;
    v220[1] = 3221225472;
    v220[2] = sub_100023B24;
    v220[3] = &unk_1000DB5D8;
    objc_copyWeak(&v221, &location);
    v22 = [(CARSubtitlesPanel *)self subtitleSettings];
    v23 = [v22 allowFontNameOverride];
    v218[0] = _NSConcreteStackBlock;
    v218[1] = 3221225472;
    v218[2] = sub_100023BB8;
    v218[3] = &unk_1000DB620;
    objc_copyWeak(&v219, &location);
    v24 = [(CARSubtitleSettingOptionsPanel *)v17 initWithPanelController:v18 title:v19 options:v20 selectedValue:v21 selectionHandler:v220 allowsOverride:v23 allowsOverrideSwitchHandler:v218];
    textFontPanel = self->_textFontPanel;
    self->_textFontPanel = v24;

    objc_destroyWeak(&v219);
    objc_destroyWeak(&v221);
  }

  v26 = [(CARSubtitlesPanel *)self textFontPanel];
  v185 = [v26 cellSpecifier];

  v27 = [(CARSubtitlesPanel *)self subtitleSettings];
  v28 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v27 fontName]);
  [v185 setCellValue:v28];

  [v185 setAccessibilityIdentifier:@"CPSettingsSubtitlesTextFont"];
  v29 = [(CARSubtitlesPanel *)self textSizePanel];
  LODWORD(v27) = v29 == 0;

  if (v27)
  {
    v30 = [(CARSubtitlesPanel *)self subtitleSettings];
    v31 = [v30 fontSize];

    v177 = [CARSubtitleSettingOptionsPanel alloc];
    v181 = [(CARSettingsPanel *)self panelController];
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
    v40 = [NSNumber numberWithInt:v31];
    v174 = v33;
    v172 = v32;
    v216[0] = _NSConcreteStackBlock;
    v216[1] = 3221225472;
    v216[2] = sub_100023C4C;
    v216[3] = &unk_1000DB5D8;
    objc_copyWeak(&v217, &location);
    v41 = [(CARSubtitlesPanel *)self subtitleSettings];
    v42 = [v41 allowFontSizeOverride];
    v214[0] = _NSConcreteStackBlock;
    v214[1] = 3221225472;
    v214[2] = sub_100023CE0;
    v214[3] = &unk_1000DB620;
    objc_copyWeak(&v215, &location);
    v43 = [(CARSubtitleSettingOptionsPanel *)v177 initWithPanelController:v181 title:v179 options:v39 selectedValue:v40 selectionHandler:v216 allowsOverride:v42 allowsOverrideSwitchHandler:v214];
    textSizePanel = self->_textSizePanel;
    self->_textSizePanel = v43;

    objc_destroyWeak(&v215);
    objc_destroyWeak(&v217);
  }

  v45 = [(CARSubtitlesPanel *)self textSizePanel];
  v184 = [v45 cellSpecifier];

  v46 = [(CARSubtitlesPanel *)self subtitleSettings];
  v47 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v46 fontSize]);
  [v184 setCellValue:v47];

  [v184 setAccessibilityIdentifier:@"CPSettingsSubtitlesTextSize"];
  v48 = [(CARSubtitlesPanel *)self textColorPanel];
  LODWORD(v46) = v48 == 0;

  if (v46)
  {
    v49 = [(CARSubtitlesPanel *)self subtitleSettings];
    v50 = [v49 fontColor];

    v51 = [CARSubtitleSettingOptionsPanel alloc];
    v52 = [(CARSettingsPanel *)self panelController];
    v53 = sub_10001C80C(@"SUBTITLES_TEXT_COLOR");
    v54 = [(CARSubtitlesPanel *)self _colorOptions];
    v55 = [NSNumber numberWithInt:v50];
    v212[0] = _NSConcreteStackBlock;
    v212[1] = 3221225472;
    v212[2] = sub_100023D74;
    v212[3] = &unk_1000DB5D8;
    objc_copyWeak(&v213, &location);
    v56 = [(CARSubtitlesPanel *)self subtitleSettings];
    v57 = [v56 allowFontColorOverride];
    v210[0] = _NSConcreteStackBlock;
    v210[1] = 3221225472;
    v210[2] = sub_100023E08;
    v210[3] = &unk_1000DB620;
    objc_copyWeak(&v211, &location);
    v58 = [(CARSubtitleSettingOptionsPanel *)v51 initWithPanelController:v52 title:v53 options:v54 selectedValue:v55 selectionHandler:v212 allowsOverride:v57 allowsOverrideSwitchHandler:v210];
    textColorPanel = self->_textColorPanel;
    self->_textColorPanel = v58;

    objc_destroyWeak(&v211);
    objc_destroyWeak(&v213);
  }

  v60 = [(CARSubtitlesPanel *)self textColorPanel];
  v182 = [v60 cellSpecifier];

  v61 = [(CARSubtitlesPanel *)self subtitleSettings];
  v62 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v61 fontColor]);
  [v182 setCellValue:v62];

  [v182 setAccessibilityIdentifier:@"CPSettingsSubtitlesTextColor"];
  v63 = sub_10001C80C(@"SUBTITLES_TEXT");
  v175 = [v63 localizedUppercaseString];

  v64 = [CARSettingsCellSpecifierSection alloc];
  v228[0] = v185;
  v228[1] = v184;
  v228[2] = v182;
  v65 = [NSArray arrayWithObjects:v228 count:3];
  v66 = [(CARSettingsCellSpecifierSection *)v64 initWithTitle:v175 specifiers:v65];
  [v187 addObject:v66];

  v67 = [(CARSubtitlesPanel *)self backgroundColorPanel];
  LODWORD(v65) = v67 == 0;

  if (v65)
  {
    v68 = [(CARSubtitlesPanel *)self subtitleSettings];
    v69 = [v68 backgroundColor];

    v70 = [CARSubtitleSettingOptionsPanel alloc];
    v71 = [(CARSettingsPanel *)self panelController];
    v72 = sub_10001C80C(@"SUBTITLES_BACKGROUND_COLOR");
    v73 = [(CARSubtitlesPanel *)self _colorOptions];
    v74 = [NSNumber numberWithInt:v69];
    v208[0] = _NSConcreteStackBlock;
    v208[1] = 3221225472;
    v208[2] = sub_100023E9C;
    v208[3] = &unk_1000DB5D8;
    objc_copyWeak(&v209, &location);
    v75 = [(CARSubtitlesPanel *)self subtitleSettings];
    v76 = [v75 allowBackgroundColorOverride];
    v206[0] = _NSConcreteStackBlock;
    v206[1] = 3221225472;
    v206[2] = sub_100023F30;
    v206[3] = &unk_1000DB620;
    objc_copyWeak(&v207, &location);
    v77 = [(CARSubtitleSettingOptionsPanel *)v70 initWithPanelController:v71 title:v72 options:v73 selectedValue:v74 selectionHandler:v208 allowsOverride:v76 allowsOverrideSwitchHandler:v206];
    backgroundColorPanel = self->_backgroundColorPanel;
    self->_backgroundColorPanel = v77;

    objc_destroyWeak(&v207);
    objc_destroyWeak(&v209);
  }

  v79 = [(CARSubtitlesPanel *)self backgroundColorPanel];
  v180 = [v79 cellSpecifier];

  v80 = [(CARSubtitlesPanel *)self subtitleSettings];
  v81 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v80 backgroundColor]);
  [v180 setCellValue:v81];

  [v180 setAccessibilityIdentifier:@"CPSettingsSubtitlesBackgroundColor"];
  v82 = [(CARSubtitlesPanel *)self backgroundOpacityPanel];
  LODWORD(v80) = v82 == 0;

  if (v80)
  {
    v83 = [(CARSubtitlesPanel *)self subtitleSettings];
    v84 = [v83 backgroundOpacity];

    v85 = [CARSubtitleSettingOptionsPanel alloc];
    v86 = [(CARSettingsPanel *)self panelController];
    v87 = sub_10001C80C(@"SUBTITLES_BACKGROUND_OPACITY");
    v88 = [(CARSubtitlesPanel *)self _opacityOptions];
    v89 = [NSNumber numberWithInt:v84];
    v204[0] = _NSConcreteStackBlock;
    v204[1] = 3221225472;
    v204[2] = sub_100023FC4;
    v204[3] = &unk_1000DB5D8;
    objc_copyWeak(&v205, &location);
    v90 = [(CARSubtitlesPanel *)self subtitleSettings];
    v91 = [v90 allowBackgroundOpacityOverride];
    v202[0] = _NSConcreteStackBlock;
    v202[1] = 3221225472;
    v202[2] = sub_100024058;
    v202[3] = &unk_1000DB620;
    objc_copyWeak(&v203, &location);
    v92 = [(CARSubtitleSettingOptionsPanel *)v85 initWithPanelController:v86 title:v87 options:v88 selectedValue:v89 selectionHandler:v204 allowsOverride:v91 allowsOverrideSwitchHandler:v202];
    backgroundOpacityPanel = self->_backgroundOpacityPanel;
    self->_backgroundOpacityPanel = v92;

    objc_destroyWeak(&v203);
    objc_destroyWeak(&v205);
  }

  v94 = [(CARSubtitlesPanel *)self backgroundOpacityPanel];
  v178 = [v94 cellSpecifier];

  v95 = [(CARSubtitlesPanel *)self subtitleSettings];
  v96 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v95 backgroundOpacity]);
  [v178 setCellValue:v96];

  [v178 setAccessibilityIdentifier:@"CPSettingsSubtitlesBackgroundOpacity"];
  v97 = sub_10001C80C(@"SUBTITLES_BACKGROUND");
  v173 = [v97 localizedUppercaseString];

  v98 = [CARSettingsCellSpecifierSection alloc];
  v227[0] = v180;
  v227[1] = v178;
  v99 = [NSArray arrayWithObjects:v227 count:2];
  v100 = [(CARSettingsCellSpecifierSection *)v98 initWithTitle:v173 specifiers:v99];
  [v187 addObject:v100];

  v101 = [(CARSubtitlesPanel *)self textOpacityPanel];
  LODWORD(v99) = v101 == 0;

  if (v99)
  {
    v102 = [(CARSubtitlesPanel *)self subtitleSettings];
    v103 = [v102 textOpacity];

    v104 = [CARSubtitleSettingOptionsPanel alloc];
    v105 = [(CARSettingsPanel *)self panelController];
    v106 = sub_10001C80C(@"SUBTITLES_TEXT_OPACITY");
    v107 = [(CARSubtitlesPanel *)self _opacityOptions];
    v108 = [NSNumber numberWithInt:v103];
    v200[0] = _NSConcreteStackBlock;
    v200[1] = 3221225472;
    v200[2] = sub_1000240EC;
    v200[3] = &unk_1000DB5D8;
    objc_copyWeak(&v201, &location);
    v109 = [(CARSubtitlesPanel *)self subtitleSettings];
    v110 = [v109 allowTextOpacityOverride];
    v198[0] = _NSConcreteStackBlock;
    v198[1] = 3221225472;
    v198[2] = sub_100024180;
    v198[3] = &unk_1000DB620;
    objc_copyWeak(&v199, &location);
    v111 = [(CARSubtitleSettingOptionsPanel *)v104 initWithPanelController:v105 title:v106 options:v107 selectedValue:v108 selectionHandler:v200 allowsOverride:v110 allowsOverrideSwitchHandler:v198];
    textOpacityPanel = self->_textOpacityPanel;
    self->_textOpacityPanel = v111;

    objc_destroyWeak(&v199);
    objc_destroyWeak(&v201);
  }

  v113 = [(CARSubtitlesPanel *)self textOpacityPanel];
  v176 = [v113 cellSpecifier];

  v114 = [(CARSubtitlesPanel *)self subtitleSettings];
  v115 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v114 textOpacity]);
  [v176 setCellValue:v115];

  [v176 setAccessibilityIdentifier:@"CPSettingsSubtitlesTextOpacity"];
  v116 = [(CARSubtitlesPanel *)self textEdgeStylePanel];
  LODWORD(v114) = v116 == 0;

  if (v114)
  {
    v117 = [(CARSubtitlesPanel *)self subtitleSettings];
    v118 = [v117 textEdgeStyle];

    v162 = [CARSubtitleSettingOptionsPanel alloc];
    v164 = [(CARSettingsPanel *)self panelController];
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
    v124 = [NSNumber numberWithInt:v118];
    v196[0] = _NSConcreteStackBlock;
    v196[1] = 3221225472;
    v196[2] = sub_100024214;
    v196[3] = &unk_1000DB5D8;
    objc_copyWeak(&v197, &location);
    v125 = [(CARSubtitlesPanel *)self subtitleSettings];
    v126 = [v125 allowTextEdgeStyleOverride];
    v194[0] = _NSConcreteStackBlock;
    v194[1] = 3221225472;
    v194[2] = sub_1000242A8;
    v194[3] = &unk_1000DB620;
    objc_copyWeak(&v195, &location);
    v127 = [(CARSubtitleSettingOptionsPanel *)v162 initWithPanelController:v164 title:v163 options:v123 selectedValue:v124 selectionHandler:v196 allowsOverride:v126 allowsOverrideSwitchHandler:v194];
    textEdgeStylePanel = self->_textEdgeStylePanel;
    self->_textEdgeStylePanel = v127;

    objc_destroyWeak(&v195);
    objc_destroyWeak(&v197);
  }

  v129 = [(CARSubtitlesPanel *)self textEdgeStylePanel];
  v130 = [v129 cellSpecifier];

  v131 = [(CARSubtitlesPanel *)self subtitleSettings];
  v132 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v131 textEdgeStyle]);
  [v130 setCellValue:v132];

  [v130 setAccessibilityIdentifier:@"CPSettingsSubtitlesTextEdgeStyle"];
  v133 = [(CARSubtitlesPanel *)self textHighlightPanel];
  LODWORD(v131) = v133 == 0;

  if (v131)
  {
    v134 = [(CARSubtitlesPanel *)self subtitleSettings];
    v135 = [v134 textHighlightColor];

    v136 = sub_10001C80C(@"SUBTITLES_HIGHLIGHT_COLOR");
    v137 = [v136 localizedUppercaseString];
    v138 = [(CARSubtitlesPanel *)self _colorOptions];
    v139 = [NSNumber numberWithInt:v135];
    v192[0] = _NSConcreteStackBlock;
    v192[1] = 3221225472;
    v192[2] = sub_10002433C;
    v192[3] = &unk_1000DB648;
    objc_copyWeak(&v193, &location);
    v171 = [CARSettingsOptionsPicker pickerWithLabel:v137 options:v138 selectedValue:v139 selectionHandler:v192];

    v140 = [(CARSubtitlesPanel *)self subtitleSettings];
    v141 = [v140 textHighlightOpacity];

    v142 = sub_10001C80C(@"SUBTITLES_HIGHLIGHT_OPACITY");
    v143 = [v142 localizedUppercaseString];
    v144 = [(CARSubtitlesPanel *)self _opacityOptions];
    v145 = [NSNumber numberWithInt:v141];
    v190[0] = _NSConcreteStackBlock;
    v190[1] = 3221225472;
    v190[2] = sub_100024408;
    v190[3] = &unk_1000DB648;
    objc_copyWeak(&v191, &location);
    v146 = [CARSettingsOptionsPicker pickerWithLabel:v143 options:v144 selectedValue:v145 selectionHandler:v190];

    v147 = [CARSubtitleSettingsOptionsPairPanel alloc];
    v148 = [(CARSettingsPanel *)self panelController];
    v149 = sub_10001C80C(@"SUBTITLES_TEXT_HIGHLIGHT");
    v150 = [(CARSubtitlesPanel *)self subtitleSettings];
    v151 = [v150 allowTextHighlightOverride];
    v188[0] = _NSConcreteStackBlock;
    v188[1] = 3221225472;
    v188[2] = sub_1000244D4;
    v188[3] = &unk_1000DB620;
    objc_copyWeak(&v189, &location);
    v152 = [(CARSubtitleSettingsOptionsPairPanel *)v147 initWithPanelController:v148 title:v149 primaryPicker:v171 secondaryPicker:v146 allowsOverride:v151 allowsOverrideSwitchHandler:v188];
    textHighlightPanel = self->_textHighlightPanel;
    self->_textHighlightPanel = v152;

    objc_destroyWeak(&v189);
    objc_destroyWeak(&v191);

    objc_destroyWeak(&v193);
  }

  v154 = [(CARSubtitlesPanel *)self textHighlightPanel];
  v155 = [v154 cellSpecifier];

  [v155 setAccessibilityIdentifier:@"CPSettingsSubtitlesTextHighlight"];
  v156 = sub_10001C80C(@"SUBTITLES_ADVANCED");
  v157 = [v156 localizedUppercaseString];

  v158 = [CARSettingsCellSpecifierSection alloc];
  v225[0] = v176;
  v225[1] = v130;
  v225[2] = v155;
  v159 = [NSArray arrayWithObjects:v225 count:3];
  v160 = [(CARSettingsCellSpecifierSection *)v158 initWithTitle:v157 specifiers:v159];
  [v187 addObject:v160];

  objc_destroyWeak(&v223);
  objc_destroyWeak(&location);

  return v187;
}

- (id)_fetchSubtitleSettings
{
  v2 = [(CARSettingsPanel *)self panelController];
  v3 = [v2 vehicleVideoSettings];

  v4 = [v3 subtitleSettings];

  return v4;
}

- (void)_performUpdatesOnSubtitleSettings:(id)a3
{
  v7 = a3;
  v4 = [(CARSubtitlesPanel *)self subtitleSettings];
  if (v7)
  {
    v7[2](v7, v4);
  }

  v5 = [(CARSettingsPanel *)self panelController];
  v6 = [v5 vehicleVideoSettings];

  [v6 setSubtitleSettings:v4];
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
@interface AXUISettingsInstructionsView
- (AXUISettingsInstructionsView)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width;
- (id)settingsLocString:(id)string table:(id)table;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (void)_initializeContent;
- (void)closeButtonTapped:(id)tapped;
- (void)setNeedsLayout;
@end

@implementation AXUISettingsInstructionsView

- (AXUISettingsInstructionsView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v11.receiver = self;
  v11.super_class = AXUISettingsInstructionsView;
  v6 = [(AXUISettingsInstructionsView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v6)
  {
    array = [MEMORY[0x1E695DF70] array];
    marginConstraints = v6->_marginConstraints;
    v6->_marginConstraints = array;

    objc_storeStrong(&v6->_specifier, specifier);
    [(AXUISettingsInstructionsView *)v6 _initializeContent];
    v9 = v6;
  }

  return v6;
}

- (id)settingsLocString:(id)string table:(id)table
{
  specifier = self->_specifier;
  tableCopy = table;
  stringCopy = string;
  v8 = [(PSSpecifier *)specifier propertyForKey:@"bundlePath"];
  v9 = [MEMORY[0x1E696AAE8] bundleWithPath:v8];
  v10 = [v9 localizedStringForKey:stringCopy value:stringCopy table:tableCopy];

  return v10;
}

- (void)_initializeContent
{
  v164 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  contentLabels = self->_contentLabels;
  self->_contentLabels = v3;

  v5 = objc_opt_new();
  moreLabels = self->_moreLabels;
  self->_moreLabels = v5;

  v7 = [(PSSpecifier *)self->_specifier propertyForKey:@"table"];
  array = [MEMORY[0x1E695DF70] array];
  footerConfiguration = [MEMORY[0x1E69DCC28] footerConfiguration];
  textProperties = [footerConfiguration textProperties];
  color = [textProperties color];

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  obj = [(PSSpecifier *)self->_specifier propertyForKey:@"content"];
  v131 = [obj countByEnumeratingWithState:&v154 objects:v163 count:16];
  v10 = 0;
  if (!v131)
  {
LABEL_57:

    goto LABEL_58;
  }

  v128 = *v155;
  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  v123 = *MEMORY[0x1E69DDD28];
  v15 = 0x1E69C5000uLL;
  v118 = *MEMORY[0x1E69DB758];
  v119 = *MEMORY[0x1E69DB670];
  v117 = *MEMORY[0x1E69DB650];
  v120 = v7;
  do
  {
    v16 = 0;
    do
    {
      if (*v155 != v128)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v154 + 1) + 8 * v16);
      v18 = [v17 objectForKey:@"requiresNoHomeButton"];
      bOOLValue = [v18 BOOLValue];

      if (!bOOLValue || (AXDeviceHasHomeButton() & 1) == 0)
      {
        v20 = [v17 objectForKey:@"alreadyLocalized"];
        bOOLValue2 = [v20 BOOLValue];

        v22 = [v17 objectForKey:@"headerLabel"];
        v23 = v22;
        v139 = bOOLValue2;
        if (bOOLValue2)
        {
          v24 = v22;
        }

        else
        {
          v148 = MEMORY[0x1E69E9820];
          v149 = 3221225472;
          v150 = __50__AXUISettingsInstructionsView__initializeContent__block_invoke;
          v151 = &unk_1E812DC30;
          selfCopy = self;
          v153 = v7;
          v24 = AXLocStringForDeviceVariant();
        }

        v25 = v24;
        v26 = [v17 objectForKey:@"contentGetter"];
        v137 = v25;
        if ([v26 length])
        {
          target = [(PSSpecifier *)self->_specifier target];
          v140 = [target safeStringForKey:v26];

          v25 = v137;
        }

        else
        {
          v140 = 0;
        }

        [v17 objectForKey:@"contentLabel"];
        v138 = v136 = v26;
        if (v138)
        {
          if (v139)
          {
            v28 = v138;
            v29 = v140;
          }

          else
          {
            v142 = MEMORY[0x1E69E9820];
            v143 = 3221225472;
            v144 = __50__AXUISettingsInstructionsView__initializeContent__block_invoke_2;
            v145 = &unk_1E812DC30;
            selfCopy2 = self;
            v147 = v7;
            v28 = AXLocStringForDeviceVariant();

            v29 = v147;
          }

          v140 = v28;
          v26 = v136;
        }

        v135 = [v17 objectForKey:@"moreLabel"];
        v132 = v23;
        v133 = v16;
        if ([v25 length])
        {
          v30 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v11, v12, v13, v14}];
          headerLabel = self->_headerLabel;
          self->_headerLabel = v30;

          [(UILabel *)self->_headerLabel setNumberOfLines:0];
          [(UILabel *)self->_headerLabel setAdjustsFontForContentSizeCategory:1];
          [(UILabel *)self->_headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
          clearColor = [MEMORY[0x1E69DC888] clearColor];
          [(UILabel *)self->_headerLabel setBackgroundColor:clearColor];

          [(UILabel *)self->_headerLabel setLineBreakMode:0];
          LODWORD(v33) = 0.5;
          [(UILabel *)self->_headerLabel _setHyphenationFactor:v33];
          [(UILabel *)self->_headerLabel setText:v25];
          v127 = v10;
          if (AXProcessIsSetup() && !_UISolariumEnabled())
          {
            sharedStyle = [getBFFStyleClass() sharedStyle];
            [sharedStyle applyThemeToLabel:self->_headerLabel];
          }

          else
          {
            [(UILabel *)self->_headerLabel setTextColor:color];
          }

          footerHyperlinkColor2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v123 addingSymbolicTraits:2 options:0];
          v37 = [MEMORY[0x1E69DB878] fontWithDescriptor:0.0 size:?];
          [(UILabel *)self->_headerLabel setFont:v37];

          [(UILabel *)self->_headerLabel sizeToFit];
          contentView = [(AXUISettingsInstructionsView *)self contentView];
          [contentView addSubview:self->_headerLabel];

          leadingAnchor = [(UILabel *)self->_headerLabel leadingAnchor];
          contentView2 = [(AXUISettingsInstructionsView *)self contentView];
          leadingAnchor2 = [contentView2 leadingAnchor];
          v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];

          v129 = v42;
          [(NSMutableArray *)self->_marginConstraints addObject:v42];
          topAnchor = [(UILabel *)self->_headerLabel topAnchor];
          contentView3 = [(AXUISettingsInstructionsView *)self contentView];
          topAnchor2 = [contentView3 topAnchor];
          v45 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
          v162[0] = v45;
          v162[1] = v42;
          trailingAnchor = [(UILabel *)self->_headerLabel trailingAnchor];
          contentView4 = [(AXUISettingsInstructionsView *)self contentView];
          trailingAnchor2 = [contentView4 trailingAnchor];
          [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-15.0];
          v50 = v49 = self;
          v162[2] = v50;
          v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:3];
          [array addObjectsFromArray:v51];

          self = v49;
          v34 = v49->_headerLabel;

          v52 = v129;
          v7 = v120;
          goto LABEL_38;
        }

        if ([v140 length])
        {
          v34 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v11, v12, v13, v14}];
          [(UILabel *)v34 setNumberOfLines:0];
          [(UILabel *)v34 setLineBreakMode:0];
          clearColor2 = [MEMORY[0x1E69DC888] clearColor];
          [(UILabel *)v34 setBackgroundColor:clearColor2];

          [(UILabel *)v34 setTranslatesAutoresizingMaskIntoConstraints:0];
          if (AXProcessIsSetup() && !_UISolariumEnabled())
          {
            sharedStyle2 = [getBFFStyleClass() sharedStyle];
            [sharedStyle2 applyThemeToLabel:v34];
          }

          else
          {
            [(UILabel *)v34 setTextColor:color];
          }

          [(UILabel *)v34 setText:v140];
          v61 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v123];
          [(UILabel *)v34 setFont:v61];

          [(UILabel *)v34 setAdjustsFontForContentSizeCategory:1];
          LODWORD(v62) = 0.5;
          [(UILabel *)v34 _setHyphenationFactor:v62];
          [(UILabel *)v34 sizeToFit];
          contentView5 = [(AXUISettingsInstructionsView *)self contentView];
          [contentView5 addSubview:v34];

          [(NSMutableArray *)self->_contentLabels addObject:v34];
          topAnchor3 = [(UILabel *)v34 topAnchor];
          if (v10)
          {
            bottomAnchor = [(UILabel *)v10 bottomAnchor];
            footerHyperlinkColor2 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:0.0];
          }

          else
          {
            bottomAnchor = [(AXUISettingsInstructionsView *)self contentView];
            topAnchor4 = [bottomAnchor topAnchor];
            footerHyperlinkColor2 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:5.0];
          }

          leadingAnchor3 = [(UILabel *)v34 leadingAnchor];
          contentView6 = [(AXUISettingsInstructionsView *)self contentView];
          leadingAnchor4 = [contentView6 leadingAnchor];
          v52 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:0.0];

          [(NSMutableArray *)self->_marginConstraints addObject:v52];
          v161[0] = footerHyperlinkColor2;
          v161[1] = v52;
          trailingAnchor3 = [(UILabel *)v34 trailingAnchor];
          contentView7 = [(AXUISettingsInstructionsView *)self contentView];
          trailingAnchor4 = [contentView7 trailingAnchor];
          v73 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-15.0];
          v161[2] = v73;
          v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:3];
          [array addObjectsFromArray:v74];

          v141 = 8226;
          accessibilityLabel = [(UILabel *)v34 accessibilityLabel];
          v76 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v141 length:1];
          accessibilityLabel2 = [(UILabel *)v34 accessibilityLabel];
          v78 = [accessibilityLabel stringByReplacingOccurrencesOfString:v76 withString:&stru_1F4041FC0 options:1 range:{0, objc_msgSend(accessibilityLabel2, "length")}];
          [(UILabel *)v34 setAccessibilityLabel:v78];

LABEL_38:
          v10 = v34;
          v15 = 0x1E69C5000;
          v23 = v132;
          v16 = v133;
          v26 = v136;
          v25 = v137;
LABEL_39:

          if ((v139 & 1) == 0)
          {
          }

          goto LABEL_42;
        }

        if (!v135 || (AXProcessIsSetup() & 1) != 0)
        {
          goto LABEL_39;
        }

        v53 = [objc_alloc(MEMORY[0x1E69DD168]) initWithFrame:{v11, v12, v13, v14}];
        appearance = [*(v15 + 1808) appearance];
        footerHyperlinkColor = [appearance footerHyperlinkColor];
        v56 = v15;
        v57 = footerHyperlinkColor;
        if (footerHyperlinkColor)
        {
          appearance2 = [*(v56 + 1808) appearance];
          footerHyperlinkColor2 = [appearance2 footerHyperlinkColor];

          v59 = 0x1E69DC000;
        }

        else
        {
          v59 = 0x1E69DC000uLL;
          footerHyperlinkColor2 = [MEMORY[0x1E69DC888] systemBlueColor];
        }

        clearColor3 = [*(v59 + 2184) clearColor];
        [v53 setBackgroundColor:clearColor3];

        [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v53 setShowsVerticalScrollIndicator:0];
        [v53 setEditable:0];
        [v53 setSelectable:1];
        [v53 setScrollEnabled:0];
        textContainer = [v53 textContainer];
        [textContainer setLineFragmentPadding:0.0];

        [v53 _setInteractiveTextSelectionDisabled:1];
        [v53 setDelegate:self];
        v81 = [v17 objectForKey:@"additionalContent"];
        [v53 _accessibilitySetRetainedValue:v81 forKey:@"additionalContent"];

        v82 = [v17 objectForKey:@"additionalTitleLabel"];
        [v53 _accessibilitySetRetainedValue:v82 forKey:@"additionalTitleLabel"];

        v83 = [v17 objectForKey:@"additionalSubtitleLabel"];
        [v53 _accessibilitySetRetainedValue:v83 forKey:@"additionalSubtitleLabel"];

        v84 = [v17 objectForKey:@"symbolName"];
        [v53 _accessibilitySetRetainedValue:v84 forKey:@"symbolName"];

        v85 = [v17 objectForKey:@"image"];
        [v53 _accessibilitySetRetainedValue:v85 forKey:@"image"];

        v86 = [v17 objectForKey:@"customActionBlock"];
        [v53 _accessibilitySetRetainedValue:v86 forKey:@"customActionBlock"];

        [v53 _accessibilitySetRetainedValue:v7 forKey:@"tableIdentifier"];
        if (v139)
        {
          v87 = v135;
          v88 = footerHyperlinkColor2;
          goto LABEL_48;
        }

        v87 = [(AXUISettingsInstructionsView *)self settingsLocString:v135 table:v7];
        v88 = footerHyperlinkColor2;
        if (v87)
        {
LABEL_48:
          v89 = v87;
          v90 = objc_alloc(MEMORY[0x1E696AAB0]);
          v159[0] = v119;
          v91 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F4041FC0];
          v160[0] = v91;
          v160[1] = MEMORY[0x1E695E110];
          v159[1] = v118;
          v159[2] = v117;
          v92 = [(AXUISettingsInstructionsView *)self _accessibilityHigherContrastTintColorForColor:v88];
          v160[2] = v92;
          v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v160 forKeys:v159 count:3];
          v130 = v89;
          v94 = [v90 initWithString:v89 attributes:v93];

          [v53 setAttributedText:v94];
          v95 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v123];
          [v53 setFont:v95];

          [v53 setAdjustsFontForContentSizeCategory:1];
          [v53 sizeToFit];
          contentView8 = [(AXUISettingsInstructionsView *)self contentView];
          [contentView8 addSubview:v53];
        }

        else
        {
          specifier = self->_specifier;
          _AXAssert();
          v130 = 0;
        }

        topAnchor5 = [v53 topAnchor];
        if (v10)
        {
          bottomAnchor2 = [(UILabel *)v10 bottomAnchor];
          v99 = [topAnchor5 constraintEqualToAnchor:bottomAnchor2 constant:0.0];
        }

        else
        {
          bottomAnchor2 = [(AXUISettingsInstructionsView *)self contentView];
          topAnchor6 = [bottomAnchor2 topAnchor];
          v99 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:5.0];
        }

        v126 = v99;

        leadingAnchor5 = [v53 leadingAnchor];
        contentView9 = [(AXUISettingsInstructionsView *)self contentView];
        leadingAnchor6 = [contentView9 leadingAnchor];
        v104 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:0.0];

        [(NSMutableArray *)self->_marginConstraints addObject:v104];
        v158[0] = v99;
        v158[1] = v104;
        v105 = v104;
        trailingAnchor5 = [v53 trailingAnchor];
        contentView10 = [(AXUISettingsInstructionsView *)self contentView];
        trailingAnchor6 = [contentView10 trailingAnchor];
        v109 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6 constant:-15.0];
        v158[2] = v109;
        v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:v158 count:3];
        [array addObjectsFromArray:v110];

        v34 = v53;
        [(NSMutableArray *)self->_moreLabels addObject:v34];

        v52 = v130;
        goto LABEL_38;
      }

LABEL_42:
      ++v16;
    }

    while (v131 != v16);
    v111 = [obj countByEnumeratingWithState:&v154 objects:v163 count:16];
    v131 = v111;
  }

  while (v111);

  if (v10)
  {
    bottomAnchor3 = [(UILabel *)v10 bottomAnchor];
    contentView11 = [(AXUISettingsInstructionsView *)self contentView];
    bottomAnchor4 = [contentView11 bottomAnchor];
    obj = bottomAnchor3;
    v115 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4 constant:-5.0];
    [array addObject:v115];

    goto LABEL_57;
  }

LABEL_58:
  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  v94 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  itemCopy = item;
  actionCopy = action;
  v43 = viewCopy;
  v40 = [viewCopy _accessibilityValueForKey:@"additionalContent"];
  v44 = [viewCopy _accessibilityValueForKey:@"tableIdentifier"];
  v39 = [viewCopy _accessibilityValueForKey:@"additionalTitleLabel"];
  v38 = [viewCopy _accessibilityValueForKey:@"additionalSubtitleLabel"];
  v37 = [viewCopy _accessibilityValueForKey:@"image"];
  v41 = [viewCopy _accessibilityValueForKey:@"symbolName"];
  v8 = [viewCopy _accessibilityValueForKey:@"customActionBlock"];
  v42 = v8;
  if (v8)
  {
    v9 = MEMORY[0x1E69DC628];
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __80__AXUISettingsInstructionsView_textView_primaryActionForTextItem_defaultAction___block_invoke;
    v85[3] = &unk_1E812DC58;
    v86 = v8;
    v10 = [v9 actionWithHandler:v85];
    v11 = v86;
    goto LABEL_55;
  }

  if (v38)
  {
    v34 = [(AXUISettingsInstructionsView *)self settingsLocString:v38 table:v44];
  }

  else
  {
    v34 = 0;
  }

  if (v41)
  {
    v12 = objc_alloc(MEMORY[0x1E69B7D68]);
    headerView = [(AXUISettingsInstructionsView *)self settingsLocString:v39 table:v44];
    v14 = [v12 initWithTitle:headerView detailText:v34 symbolName:v41];
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x1E69B7D68]);
    headerView = [(AXUISettingsInstructionsView *)self settingsLocString:v39 table:v44];
    if (v37)
    {
      v14 = [v15 initWithTitle:headerView detailText:v34 icon:v37];
    }

    else
    {
      v16 = [v15 initWithTitle:headerView];

      if (!v34)
      {
        v46 = v16;
        goto LABEL_13;
      }

      headerView = [v16 headerView];
      [headerView setDetailText:v34];
      v14 = v16;
    }
  }

  v46 = v14;

LABEL_13:
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v40;
  v49 = [obj countByEnumeratingWithState:&v81 objects:v93 count:16];
  if (!v49)
  {
    goto LABEL_54;
  }

  v48 = *v82;
  do
  {
    for (i = 0; i != v49; ++i)
    {
      if (*v82 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v81 + 1) + 8 * i);
      v55 = [v18 objectForKeyedSubscript:@"identifier"];
      if (![v55 isEqualToString:@"REACHABILITY"])
      {
        goto LABEL_24;
      }

      if (MGGetBoolAnswer())
      {
        v88 = 0;
        v89 = &v88;
        v90 = 0x2020000000;
        v19 = getSBSIsReachabilityEnabledSymbolLoc_ptr;
        v91 = getSBSIsReachabilityEnabledSymbolLoc_ptr;
        if (!getSBSIsReachabilityEnabledSymbolLoc_ptr)
        {
          v87[0] = MEMORY[0x1E69E9820];
          v87[1] = 3221225472;
          v87[2] = __getSBSIsReachabilityEnabledSymbolLoc_block_invoke;
          v87[3] = &unk_1E812DCD0;
          v87[4] = &v88;
          __getSBSIsReachabilityEnabledSymbolLoc_block_invoke(v87);
          v19 = v89[3];
        }

        _Block_object_dispose(&v88, 8);
        if (!v19)
        {
          [AXUISettingsInstructionsView textView:primaryActionForTextItem:defaultAction:];
          __break(1u);
        }

        if (v19())
        {
LABEL_24:
          v20 = [v18 objectForKeyedSubscript:@"alreadyLocalized"];
          bOOLValue = [v20 BOOLValue];

          v53 = [v18 objectForKeyedSubscript:@"contentLabel"];
          v52 = [v18 objectForKeyedSubscript:@"headerLabel"];
          v51 = [v18 objectForKeyedSubscript:@"sectionLabel"];
          v54 = [v18 objectForKeyedSubscript:@"supportedPlatforms"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_39;
          }

          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v21 = v54;
          v22 = [v21 countByEnumeratingWithState:&v77 objects:v92 count:16];
          if (v22)
          {
            v23 = 0;
            v24 = *v78;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v78 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v77 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if ([v26 isEqualToString:@"iphone"] && (AXDeviceIsPhone() & 1) != 0)
                  {
                    v23 = 1;
                  }

                  else if ([v26 isEqualToString:@"ipad"])
                  {
                    v23 |= AXDeviceIsPad();
                  }
                }
              }

              v22 = [v21 countByEnumeratingWithState:&v77 objects:v92 count:16];
            }

            while (v22);

            if (v23)
            {
LABEL_39:
              if (bOOLValue)
              {
                v27 = v53;
                v28 = v52;
                v29 = v51;
              }

              else
              {
                v71 = MEMORY[0x1E69E9820];
                v72 = 3221225472;
                v73 = __80__AXUISettingsInstructionsView_textView_primaryActionForTextItem_defaultAction___block_invoke_2;
                v74 = &unk_1E812DC30;
                selfCopy = self;
                v76 = v44;
                v27 = AXLocStringForDeviceVariant();
                v65 = MEMORY[0x1E69E9820];
                v66 = 3221225472;
                v67 = __80__AXUISettingsInstructionsView_textView_primaryActionForTextItem_defaultAction___block_invoke_3;
                v68 = &unk_1E812DC30;
                selfCopy2 = self;
                v70 = v76;
                v28 = AXLocStringForDeviceVariant();
                v59 = MEMORY[0x1E69E9820];
                v60 = 3221225472;
                v61 = __80__AXUISettingsInstructionsView_textView_primaryActionForTextItem_defaultAction___block_invoke_4;
                v62 = &unk_1E812DC30;
                selfCopy3 = self;
                v64 = v70;
                v29 = AXLocStringForDeviceVariant();
              }

              v30 = v29;
              if ([v29 length])
              {
                [v46 addSectionWithHeader:v30 content:&stru_1F4041FC0];
              }

              if ([v27 length] || objc_msgSend(v28, "length"))
              {
                [v46 addBulletedListItemWithTitle:v28 description:v27];
              }

              if (bOOLValue)
              {
              }

              else
              {
              }
            }
          }

          else
          {
          }
        }
      }
    }

    v49 = [obj countByEnumeratingWithState:&v81 objects:v93 count:16];
  }

  while (v49);
LABEL_54:

  [v46 addSectionWithHeader:@" " content:@" "];
  [(AXUISettingsInstructionsView *)self setMoreInfoController:v46];
  v31 = MEMORY[0x1E69DC628];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __80__AXUISettingsInstructionsView_textView_primaryActionForTextItem_defaultAction___block_invoke_5;
  v56[3] = &unk_1E812DC80;
  v57 = v46;
  selfCopy4 = self;
  v32 = v46;
  v10 = [v31 actionWithHandler:v56];

  v11 = v34;
LABEL_55:

  return v10;
}

void __80__AXUISettingsInstructionsView_textView_primaryActionForTextItem_defaultAction___block_invoke_5(uint64_t a1)
{
  v6 = [objc_alloc(MEMORY[0x1E69B7D40]) initWithRootViewController:*(a1 + 32)];
  v2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:*(a1 + 40) action:sel_closeButtonTapped_];
  v3 = [*(a1 + 32) navigationItem];
  [v3 setRightBarButtonItem:v2];

  v4 = [*(a1 + 40) window];
  v5 = [v4 rootViewController];
  [v5 presentViewController:v6 animated:1 completion:0];
}

- (void)closeButtonTapped:(id)tapped
{
  moreInfoController = [(AXUISettingsInstructionsView *)self moreInfoController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AXUISettingsInstructionsView_closeButtonTapped___block_invoke;
  v5[3] = &unk_1E812DCA8;
  v5[4] = self;
  [moreInfoController dismissViewControllerAnimated:1 completion:v5];
}

- (void)setNeedsLayout
{
  v14 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = AXUISettingsInstructionsView;
  [(AXUISettingsInstructionsView *)&v12 setNeedsLayout];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_marginConstraints;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setConstant:{15.0, v8}];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (double)preferredHeightForWidth:(double)width
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = width + -15.0;
  [(UILabel *)self->_headerLabel sizeThatFits:width + -15.0, 3.40282347e38];
  v6 = v5 + 5.0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = self->_contentLabels;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v24 + 1) + 8 * v11) sizeThatFits:{v4, 3.40282347e38}];
        v6 = v6 + v12;
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_moreLabels;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v20 + 1) + 8 * v17) sizeThatFits:{v4, 3.40282347e38, v20}];
        v6 = v6 + v18;
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  return v6 + 5.0;
}

- (uint64_t)textView:primaryActionForTextItem:defaultAction:.cold.1()
{
  dlerror();
  abort_report_np();
  return __getBFFStyleClass_block_invoke_cold_1();
}

@end
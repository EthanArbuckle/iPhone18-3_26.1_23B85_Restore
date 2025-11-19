@interface MFRecipientTableViewCell
+ (double)_deviceSpecificLayoutMargin;
+ (double)_realDetailButtonAccessoryMargin;
+ (double)detailLineHeight;
+ (double)heightWithRecipient:(id)a3 width:(double)a4;
+ (id)_attributedStringRepresentationOfCompleteMatchesForRecipient:(id)a3 constrainedToWidth:(double)a4 overflowRecipients:(id *)a5 useHighlighting:(BOOL)a6;
+ (id)_attributedStringRepresentationOfPartialEmailMatchForSingleRecipient:(id)a3 useHighlighting:(BOOL)a4;
+ (id)_copyAttributedStringRepresentationOfGroupRecipient:(id)a3 withSortedRecipientList:(id)a4;
+ (id)_tintedAttributedString:(id)a3 toColor:(id)a4 shouldDim:(BOOL)a5;
+ (id)cellForRecipient:(id)a3;
+ (id)defaultDetailStringAttributes;
+ (id)defaultTitleStringAttributes;
+ (id)groupDetailStringAttributes;
+ (id)highlightedDetailStringAttributes;
+ (id)highlightedTitleStringAttributes;
+ (id)labelDetailStringAttributes;
+ (id)regularTitleStringAttributes;
- (MFRecipientTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)tintColor;
- (void)animateSnapshotOfLabel:(id)a3 withBlock:(id)a4;
- (void)setBackgroundColor:(id)a3;
- (void)setOpaque:(BOOL)a3;
- (void)setRecipient:(id)a3;
- (void)setTintColor:(id)a3 animated:(BOOL)a4;
- (void)updateActiveConstraints;
@end

@implementation MFRecipientTableViewCell

+ (id)cellForRecipient:(id)a3
{
  v3 = a3;
  v4 = [MFRecipientTableViewCell alloc];
  v5 = +[MFRecipientTableViewCell identifier];
  v6 = [(MFRecipientTableViewCell *)v4 initWithStyle:0 reuseIdentifier:v5];

  if (v6)
  {
    [(MFRecipientTableViewCell *)v6 setRecipient:v3];
  }

  return v6;
}

- (MFRecipientTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v19.receiver = self;
  v19.super_class = MFRecipientTableViewCell;
  v4 = [(MFRecipientTableViewCell *)&v19 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DC938] mf_isPadIdiom];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    detailLabel = v4->_detailLabel;
    v4->_detailLabel = v6;

    [(UILabel *)v4->_detailLabel setOpaque:v5 ^ 1u];
    LODWORD(v8) = 1148846080;
    [(UILabel *)v4->_detailLabel setContentHuggingPriority:1 forAxis:v8];
    LODWORD(v9) = 1112014848;
    [(UILabel *)v4->_detailLabel setContentHuggingPriority:0 forAxis:v9];
    v10 = [(MFRecipientTableViewCell *)v4 contentView];
    [v10 addSubview:v4->_detailLabel];

    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v11;

    [(UILabel *)v4->_titleLabel setOpaque:v5 ^ 1u];
    LODWORD(v13) = 1148846080;
    [(UILabel *)v4->_titleLabel setContentHuggingPriority:1 forAxis:v13];
    LODWORD(v14) = 1112014848;
    [(UILabel *)v4->_titleLabel setContentHuggingPriority:0 forAxis:v14];
    v15 = [(MFRecipientTableViewCell *)v4 contentView];
    [v15 addSubview:v4->_titleLabel];

    if (MFModernUIApplicationPreferredContentSizeIsLargerThanLarge())
    {
      [(UILabel *)v4->_detailLabel setNumberOfLines:0];
      LODWORD(v16) = 1.0;
      [(UILabel *)v4->_detailLabel _setHyphenationFactor:v16];
      [(UILabel *)v4->_titleLabel setNumberOfLines:0];
      LODWORD(v17) = 1.0;
      [(UILabel *)v4->_titleLabel _setHyphenationFactor:v17];
    }

    [(MFRecipientTableViewCell *)v4 setOpaque:v5 ^ 1u];
    [(MFRecipientTableViewCell *)v4 setShouldHighlightCompleteMatches:1];
    [(MFRecipientTableViewCell *)v4 setShouldDimIrrelevantInformation:1];
    v4->_shouldHideDetailLabel = 0;
    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v4;
}

- (void)updateActiveConstraints
{
  v3 = [(MFRecipientTableViewCell *)self activeConstraints];

  if (v3)
  {
    v4 = MEMORY[0x1E696ACD8];
    v69 = [(MFRecipientTableViewCell *)self activeConstraints];
    [v4 deactivateConstraints:?];
  }

  if ([(MFRecipientTableViewCell *)self accessoryType]== 4)
  {
    [objc_opt_class() _realDetailButtonAccessoryMargin];
    v6 = v5 + 0.0;
  }

  else if ([(MFRecipientTableViewCell *)self accessoryType]== 1)
  {
    v6 = 16.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = *MEMORY[0x1E69DDD80];
  v70 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [v70 _bodyLeading];
  v9 = v8;
  v10 = [(MFRecipientTableViewCell *)self titleLabel];
  v11 = [v10 font];
  [v11 ascender];
  v13 = v12;
  v14 = [(MFRecipientTableViewCell *)self titleLabel];
  v15 = [v14 font];
  [v15 capHeight];
  v17 = v16;

  v18 = objc_opt_class();
  [(MFRecipientTableViewCell *)self bounds];
  [v18 _constrainedWidthForTitleViewWithAccessoryWidth:v6 containerWidth:v19];
  v21 = v20;
  v71 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = [(MFRecipientTableViewCell *)self titleLabel];
  v23 = [v22 topAnchor];
  v24 = [(MFRecipientTableViewCell *)self contentView];
  v25 = [v24 topAnchor];
  v26 = [v23 constraintEqualToAnchor:v25 constant:round(-(v13 - v17 - v9 * 0.6))];
  [v71 addObject:v26];

  v27 = [(MFRecipientTableViewCell *)self titleLabel];
  v28 = [v27 leadingAnchor];
  v29 = [(MFRecipientTableViewCell *)self contentView];
  v30 = [v29 leadingAnchor];
  [(MFRecipientTableViewCell *)self separatorInset];
  v32 = [v28 constraintEqualToAnchor:v30 constant:v31];
  [v71 addObject:v32];

  v33 = [(MFRecipientTableViewCell *)self titleLabel];
  v34 = [v33 widthAnchor];
  v35 = [v34 constraintEqualToConstant:v21];
  [v71 addObject:v35];

  v36 = objc_opt_class();
  [(MFRecipientTableViewCell *)self bounds];
  [v36 _constrainedWidthForDetailViewWithAccessoryWidth:v6 containerWidth:v37];
  v39 = v38;
  v40 = [(MFRecipientTableViewCell *)self detailLabel];
  v41 = [v40 font];
  [v41 descender];
  v43 = v42;
  v44 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v7];
  [v44 _bodyLeading];
  v46 = v45;

  v47 = [(MFRecipientTableViewCell *)self detailLabel];
  LODWORD(v40) = [v47 isHidden];
  v48 = round(v43 + v46 * 0.6);

  if (v40)
  {
    v49 = [(MFRecipientTableViewCell *)self titleLabel];
    v50 = [v49 bottomAnchor];
    v51 = [(MFRecipientTableViewCell *)self contentView];
    v52 = [v51 bottomAnchor];
    v53 = [v50 constraintEqualToAnchor:v52 constant:-v48];
    [v71 addObject:v53];
  }

  else
  {
    v54 = [(MFRecipientTableViewCell *)self detailLabel];
    v55 = [v54 topAnchor];
    v56 = [(MFRecipientTableViewCell *)self titleLabel];
    v57 = [v56 bottomAnchor];
    v58 = [v55 constraintEqualToAnchor:v57 constant:0.0];
    [v71 addObject:v58];

    v59 = [(MFRecipientTableViewCell *)self detailLabel];
    v60 = [v59 leadingAnchor];
    v61 = [(MFRecipientTableViewCell *)self titleLabel];
    v62 = [v61 leadingAnchor];
    v63 = [v60 constraintEqualToAnchor:v62];
    [v71 addObject:v63];

    v64 = [(MFRecipientTableViewCell *)self detailLabel];
    v65 = [v64 bottomAnchor];
    v66 = [(MFRecipientTableViewCell *)self contentView];
    v67 = [v66 bottomAnchor];
    v68 = [v65 constraintEqualToAnchor:v67 constant:-v48];
    [v71 addObject:v68];

    v49 = [(MFRecipientTableViewCell *)self detailLabel];
    v50 = [v49 widthAnchor];
    v51 = [v50 constraintEqualToConstant:v39];
    [v71 addObject:v51];
  }

  [(MFRecipientTableViewCell *)self setActiveConstraints:v71];
  [MEMORY[0x1E696ACD8] activateConstraints:v71];
}

+ (double)_deviceSpecificLayoutMargin
{
  if (_deviceSpecificLayoutMargin_onceToken != -1)
  {
    +[MFRecipientTableViewCell _deviceSpecificLayoutMargin];
  }

  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  v3 = v2;
  v4 = 15.0;
  if (_deviceSpecificLayoutMargin_wantsWideContentMargins == 1)
  {
    [v2 bounds];
    if (CGRectGetWidth(v6) <= 320.0)
    {
      v4 = 16.0;
    }

    else
    {
      v4 = 20.0;
    }
  }

  return v4;
}

void __55__MFRecipientTableViewCell__deviceSpecificLayoutMargin__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = MGCopyAnswer();
  v2 = v1;
  if (!v0)
  {
    _deviceSpecificLayoutMargin_wantsWideContentMargins = 0;
    if (!v1)
    {
      return;
    }

    goto LABEL_6;
  }

  Value = CFBooleanGetValue(v0);
  v4 = 0;
  if (Value && v2)
  {
    v4 = CFBooleanGetValue(v2) != 0;
  }

  _deviceSpecificLayoutMargin_wantsWideContentMargins = v4;
  CFRelease(v0);
  if (v2)
  {
LABEL_6:

    CFRelease(v2);
  }
}

+ (double)_realDetailButtonAccessoryMargin
{
  if (_realDetailButtonAccessoryMargin_onceToken != -1)
  {
    +[MFRecipientTableViewCell _realDetailButtonAccessoryMargin];
  }

  return *&_realDetailButtonAccessoryMargin_realAccessoryMargin + 4.0;
}

void __60__MFRecipientTableViewCell__realDetailButtonAccessoryMargin__block_invoke()
{
  v3 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
  [v3 setAccessoryType:4];
  [v3 layoutSubviews];
  v0 = [v3 _defaultAccessoryView];
  if ([v3 _shouldReverseLayoutDirection])
  {
    [v0 frame];
    MaxX = CGRectGetMaxX(v5);
  }

  else
  {
    [v3 frame];
    Width = CGRectGetWidth(v6);
    [v0 frame];
    MaxX = Width - CGRectGetMinX(v7);
  }

  _realDetailButtonAccessoryMargin_realAccessoryMargin = *&MaxX;
}

+ (id)_attributedStringRepresentationOfCompleteMatchesForRecipient:(id)a3 constrainedToWidth:(double)a4 overflowRecipients:(id *)a5 useHighlighting:(BOOL)a6
{
  v81 = a6;
  v99 = *MEMORY[0x1E69E9840];
  v83 = a3;
  v82 = [v83 displayString];
  if (([v83 isGroup] & 1) == 0 && (!v82 || !objc_msgSend(v82, "length")))
  {
    v7 = [v83 placeholderName];

    v82 = v7;
  }

  if ([v83 isGroup] && (objc_msgSend(v83, "wasCompleteMatch") & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"RECENT_GROUP" value:&stru_1F3CF3758 table:@"Main"];

    v82 = v9;
  }

  if (v81)
  {
    [objc_opt_class() defaultTitleStringAttributes];
  }

  else
  {
    [objc_opt_class() highlightedTitleStringAttributes];
  }
  v79 = ;
  if (v82)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v82 attributes:v79];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AD40]);
  }

  v11 = v10;
  if ([v83 isGroup] && objc_msgSend(v83, "wasCompleteMatch"))
  {
    v12 = [v83 childrenWithCompleteMatches];
    v80 = v12;
    v13 = [v83 children];
    if ([v13 count] == 2)
    {
      v14 = [v83 children];
      v15 = [v14 count];
      v77 = v15 - [v12 count] == 1;
    }

    else
    {
      v77 = 0;
    }

    v16 = [v12 count] > 1;
    v86 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    v17 = MFLocalizedAddressSeparator();
    v18 = [objc_opt_class() highlightedTitleStringAttributes];
    [v17 sizeWithAttributes:v18];
    v20 = v19;
    v21 = v16 || v77;

    v22 = 0;
    v23 = 0;
    v24 = 0.0;
    while (v22 < [v12 count])
    {
      v25 = [v12 objectAtIndex:v22];
      v26 = _displayNameForRecipient(v25, v21);
      v27 = [objc_opt_class() highlightedTitleStringAttributes];
      [v26 sizeWithAttributes:v27];
      v29 = v28;

      v24 = v24 + v20 + v29;
      if (a4 <= 0.0 || v24 <= a4)
      {
        [v86 addObject:v26];
      }

      else
      {
        v30 = v23;
        if (!v23)
        {
          v30 = [MEMORY[0x1E695DF70] array];
        }

        v23 = v30;
        [v30 addObject:v25];
      }

      ++v22;
    }

    if ([v23 count])
    {
      v31 = v23;
      *a5 = v23;
    }

    if ([v86 count])
    {
      if ([v86 count] != 2 || (v32 = objc_msgSend(v86, "count"), objc_msgSend(v83, "children"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "count"), v33, v32 != v34))
      {
        obj = [MEMORY[0x1E696AD60] string];
        for (i = 0; [v86 count] > i; ++i)
        {
          v41 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          if (i)
          {
            [v41 localizedStringForKey:@"GROUP_NON_FINAL_ITEM" value:&stru_1F3CF3758 table:@"Main"];
          }

          else
          {
            [v41 localizedStringForKey:@"GROUP_INITIAL_ITEM" value:&stru_1F3CF3758 table:@"Main"];
          }
          v42 = ;

          v43 = [v86 objectAtIndexedSubscript:i];
          [obj appendFormat:v42, v43];
        }

        v44 = [v86 count];
        v45 = [v83 children];
        v46 = [v45 count];

        if (v44 < v46)
        {
          v47 = MFLocalizedAddressSeparator();
          goto LABEL_45;
        }

LABEL_44:
        v47 = &stru_1F3CF3758;
LABEL_45:
        if (v77)
        {
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v48 = [v83 children];
          v49 = [v48 countByEnumeratingWithState:&v92 objects:v98 count:16];
          if (v49)
          {
            v50 = 0;
            v51 = *v93;
LABEL_48:
            v52 = 0;
            v53 = v50;
            while (1)
            {
              if (*v93 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v50 = *(*(&v92 + 1) + 8 * v52);

              if (([v80 containsObject:v50] & 1) == 0)
              {
                break;
              }

              ++v52;
              v53 = v50;
              if (v49 == v52)
              {
                v49 = [v48 countByEnumeratingWithState:&v92 objects:v98 count:16];
                if (v49)
                {
                  goto LABEL_48;
                }

                break;
              }
            }

            if (!v50)
            {
              goto LABEL_63;
            }

            v54 = _displayNameForRecipient(v50, 1);
            [v54 sizeWithAttributes:v79];
            if (v24 + v55 >= a4)
            {
              if (v23)
              {
                [v23 addObject:v50];
              }

              else
              {
                v97 = v50;
                *a5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
              }
            }

            else
            {
              v56 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
              v57 = [v56 localizedStringForKey:@"SHORT_BINARY_RECIPIENT_SEPARATOR" value:&stru_1F3CF3758 table:@"Main"];

              v58 = [MEMORY[0x1E696AEC0] stringWithFormat:v57, obj, v54];

              v47 = &stru_1F3CF3758;
              obj = v58;
            }
          }

          else
          {
            v50 = v48;
          }
        }

LABEL_63:
        v59 = [obj stringByAppendingString:v47];
        v60 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v59 attributes:v79];
        [v11 setAttributedString:v60];

        goto LABEL_64;
      }

      v35 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v36 = [v35 localizedStringForKey:@"SHORT_BINARY_RECIPIENT_SEPARATOR" value:&stru_1F3CF3758 table:@"Main"];

      v37 = MEMORY[0x1E696AEC0];
      v38 = [v86 objectAtIndexedSubscript:0];
      v39 = [v86 objectAtIndexedSubscript:1];
      obj = [v37 stringWithFormat:v36, v38, v39];
    }

    else
    {
      v36 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      obj = [v36 localizedStringForKey:@"RECENT_GROUP" value:&stru_1F3CF3758 table:@"Main"];
    }

    goto LABEL_44;
  }

LABEL_64:
  if (v81)
  {
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    obja = [v83 completelyMatchedAttributedStrings];
    v61 = [obja countByEnumeratingWithState:&v88 objects:v96 count:16];
    if (v61)
    {
      v87 = *v89;
      do
      {
        for (j = 0; j != v61; ++j)
        {
          if (*v89 != v87)
          {
            objc_enumerationMutation(obja);
          }

          v63 = *(*(&v88 + 1) + 8 * j);
          v64 = [v11 string];
          v65 = [v63 string];
          v66 = [v64 rangeOfString:v65];
          v68 = v67;

          while (v66 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v69 = [objc_opt_class() highlightedTitleStringAttributes];
            [v11 addAttributes:v69 range:{v66, v68}];

            v70 = [v11 string];
            v71 = [v70 length];

            v72 = [v11 string];
            v73 = [v63 string];
            v66 = [v72 rangeOfString:v73 options:0 range:{v66 + 1, v71 + ~v66}];
            v68 = v74;
          }
        }

        v61 = [obja countByEnumeratingWithState:&v88 objects:v96 count:16];
      }

      while (v61);
    }

    v75 = obja;
  }

  else
  {
    v75 = [objc_opt_class() regularTitleStringAttributes];
    [v11 setAttributes:v75 range:{0, objc_msgSend(v11, "length")}];
  }

  return v11;
}

+ (id)_copyAttributedStringRepresentationOfGroupRecipient:(id)a3 withSortedRecipientList:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v35 = v5;
  v36 = v6;
  if ([v6 count])
  {
    if ([v6 count] == 1)
    {
      v7 = [v5 children];
      [v7 count];
    }

    v8 = v6;
  }

  else
  {
    v8 = [v5 children];
  }

  v9 = v8;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v12)
  {
    v13 = *v38;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = _displayNameForRecipient(*(*(&v37 + 1) + 8 * i), 1);
        [v10 addObject:v15];
      }

      v12 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v12);
  }

  if ([v10 count] >= 8)
  {
    v16 = [v10 count] - 7;
    [v10 removeObjectsInRange:{7, v16}];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
    v18 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:v17 numberStyle:0];
    v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"N_MORE" value:&stru_1F3CF3758 table:@"Main"];

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:v20, v18];
    [v10 addObject:v21];
  }

  v22 = objc_alloc_init(MEMORY[0x1E696AD40]);
  if ([v10 count] == 1)
  {
    v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:@"GROUP_FINAL_ITEM" value:&stru_1F3CF3758 table:@"Main"];

    v25 = [v22 mutableString];
    v26 = [v10 objectAtIndex:0];
    [v25 appendFormat:v24, v26];
  }

  else
  {
    for (j = 0; [v10 count] > j; ++j)
    {
      if (j)
      {
        if ([v10 count] - 1 <= j)
        {
          v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          [v30 localizedStringForKey:@"GROUP_FINAL_ITEM" value:&stru_1F3CF3758 table:@"Main"];
        }

        else
        {
          v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          [v30 localizedStringForKey:@"GROUP_NON_FINAL_ITEM" value:&stru_1F3CF3758 table:@"Main"];
        }
        v31 = ;
      }

      else
      {
        v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v31 = [v30 localizedStringForKey:@"GROUP_INITIAL_ITEM" value:&stru_1F3CF3758 table:@"Main"];
      }

      v32 = v31;

      v33 = [v22 mutableString];
      v34 = [v10 objectAtIndexedSubscript:j];
      [v33 appendFormat:v32, v34];
    }
  }

  v27 = [objc_opt_class() groupDetailStringAttributes];
  [v22 setAttributes:v27 range:{0, objc_msgSend(v22, "length")}];

  return v22;
}

+ (id)_attributedStringRepresentationOfPartialEmailMatchForSingleRecipient:(id)a3 useHighlighting:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([v5 isGroup])
  {
    v6 = 0;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E696AD40]);
    v8 = [v5 address];
    v9 = [objc_opt_class() defaultDetailStringAttributes];
    v6 = [v7 initWithString:v8 attributes:v9];

    if (v4)
    {
      v10 = [v5 originContext];
      v11 = [v10 searchTerm];

      if ([v11 length])
      {
        v12 = [v6 string];
        v13 = [v12 rangeOfString:v11];
        v15 = v14;

        if (!v13)
        {
          v16 = [objc_opt_class() highlightedDetailStringAttributes];
          [v6 setAttributes:v16 range:{0, v15}];
        }
      }
    }
  }

  return v6;
}

+ (id)_tintedAttributedString:(id)a3 toColor:(id)a4 shouldDim:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [v7 mutableCopy];
  v10 = v9;
  if (v5)
  {
    ColorSpace = CGColorGetColorSpace([v8 CGColor]);
    if (CGColorSpaceGetModel(ColorSpace))
    {
      v24 = NAN;
      v25 = NAN;
      v22 = NAN;
      v23 = NAN;
      [v8 getHue:&v24 saturation:&v23 brightness:&v22 alpha:&v25];
      v12 = [MEMORY[0x1E69DC888] colorWithHue:v24 saturation:v23 * 0.5 brightness:v22 * 0.75 alpha:v25];
    }

    else
    {
      v12 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.44];
    }

    v14 = v12;
    v15 = [v7 length];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__MFRecipientTableViewCell__tintedAttributedString_toColor_shouldDim___block_invoke;
    v18[3] = &unk_1E80707B8;
    v19 = v8;
    v16 = v14;
    v20 = v16;
    v21 = v10;
    [v7 enumerateAttributesInRange:0 options:v15 usingBlock:{0x100000, v18}];
  }

  else
  {
    v13 = [v9 length];
    [v10 addAttribute:*MEMORY[0x1E69DB650] value:v8 range:{0, v13}];
  }

  return v10;
}

void __70__MFRecipientTableViewCell__tintedAttributedString_toColor_shouldDim___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v7 = [v12 objectForKey:@"mf_tintType"];

  if (v7 == @"mf_ttstrong")
  {
    v10 = 32;
  }

  else
  {
    v8 = [v12 objectForKey:@"mf_tintType"];

    if (v8 != @"mf_ttdimmed")
    {
      v9 = 0;
      goto LABEL_8;
    }

    v10 = 40;
  }

  v9 = *(a1 + v10);
  if (v9)
  {
    v11 = *MEMORY[0x1E69DB650];
    [*(a1 + 48) removeAttribute:*MEMORY[0x1E69DB650] range:{a3, a4}];
    [*(a1 + 48) addAttribute:v11 value:v9 range:{a3, a4}];
  }

LABEL_8:
}

- (void)setRecipient:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5 || self->_recipient == v5)
  {
    goto LABEL_37;
  }

  objc_storeStrong(&self->_recipient, a3);
  self->_shouldHideDetailLabel = 0;
  v7 = [(MFRecipientTableViewCell *)self titleLabel];
  [v7 bounds];
  v9 = v8;

  v10 = objc_opt_class();
  recipient = self->_recipient;
  v66 = 0;
  v60 = [v10 _attributedStringRepresentationOfCompleteMatchesForRecipient:recipient constrainedToWidth:&v66 overflowRecipients:-[MFRecipientTableViewCell shouldHighlightCompleteMatches](self useHighlighting:{"shouldHighlightCompleteMatches"), v9}];
  v61 = v66;
  v12 = [(MFRecipientTableViewCell *)self titleLabel];
  v13 = [(MFRecipientTableViewCell *)self tintColor];
  v14 = [MFRecipientTableViewCell _tintedAttributedString:v60 toColor:v13 shouldDim:self->_shouldDimIrrelevantInformation];
  [v12 setAttributedText:v14];

  if ([(MFComposeRecipient *)v6 isGroup])
  {
    v15 = [(MFComposeRecipient *)v6 childrenWithCompleteMatches];
    self->_shouldHideDetailLabel = [v15 count] != 0;

    v16 = [(MFComposeRecipient *)v6 children];
    v17 = [v16 count];
    shouldHideDetailLabel = self->_shouldHideDetailLabel;
    if (v17 >= 3)
    {
      shouldHideDetailLabel = 0;
    }

    self->_shouldHideDetailLabel = shouldHideDetailLabel;

    v19 = [v61 count];
    v20 = self->_shouldHideDetailLabel;
    if (v19)
    {
      v20 = 0;
    }

    self->_shouldHideDetailLabel = v20;
    v21 = [(MFComposeRecipient *)v6 childrenWithCompleteMatches];
    if ([v61 count])
    {
      v22 = [v21 arrayByExcludingObjectsInArray:v61];

      v21 = v22;
    }

    v23 = [(MFComposeRecipient *)v6 sortedChildren];
    v24 = [v23 arrayByExcludingObjectsInArray:v21];

    v25 = [objc_opt_class() _copyAttributedStringRepresentationOfGroupRecipient:v6 withSortedRecipientList:v24];
    v26 = [(MFRecipientTableViewCell *)self detailLabel];
    v27 = [(MFRecipientTableViewCell *)self tintColor];
    v28 = [MFRecipientTableViewCell _tintedAttributedString:v25 toColor:v27 shouldDim:self->_shouldDimIrrelevantInformation];
    [v26 setAttributedText:v28];

    v29 = [(MFRecipientTableViewCell *)self detailLabel];
    [v29 setNumberOfLines:0];
  }

  else
  {
    v30 = [(MFRecipientTableViewCell *)self detailLabel];
    [v30 setHidden:0];

    v31 = [(MFComposeRecipient *)v6 address];
    if ([v31 length])
    {
      v32 = [(MFComposeRecipient *)v6 kind]== 4;

      if (!v32)
      {
        if ([(MFRecipientTableViewCell *)self shouldHighlightCompleteMatches])
        {
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v33 = [(MFComposeRecipient *)self->_recipient completelyMatchedAttributedStrings];
          v34 = [v33 countByEnumeratingWithState:&v62 objects:v67 count:16];
          if (v34)
          {
            obj = v33;
            v35 = *v63;
            while (2)
            {
              for (i = 0; i != v34; ++i)
              {
                if (*v63 != v35)
                {
                  objc_enumerationMutation(obj);
                }

                v37 = [*(*(&v62 + 1) + 8 * i) attributesAtIndex:0 effectiveRange:0];
                v38 = [v37 objectForKey:@"MFComposeRecipientStringMatchType"];
                v39 = [v38 isEqualToString:@"MFComposeRecipientStringMatchAddress"];

                if ((v39 & 1) == 0)
                {
                  v40 = 0;
                  goto LABEL_27;
                }
              }

              v34 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
              if (v34)
              {
                continue;
              }

              break;
            }

            v40 = 1;
LABEL_27:
            v33 = obj;
          }

          else
          {
            v40 = 1;
          }
        }

        else
        {
          v40 = 0;
        }

        v43 = [(MFRecipientTableViewCell *)self detailLabel];
        [v43 setNumberOfLines:!MFModernUIApplicationPreferredContentSizeIsLargerThanLarge()];

        v44 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F3CF3758];
        v45 = [(MFComposeRecipient *)v6 label];
        v46 = [v45 length];

        if (v46)
        {
          v47 = objc_alloc(MEMORY[0x1E696AAB0]);
          v48 = [(MFComposeRecipient *)v6 label];
          v49 = [objc_opt_class() labelDetailStringAttributes];
          v50 = [v47 initWithString:v48 attributes:v49];

          v51 = [(MFRecipientTableViewCell *)self tintColor];
          v52 = [MFRecipientTableViewCell _tintedAttributedString:v50 toColor:v51 shouldDim:self->_shouldDimIrrelevantInformation];
          [v44 appendAttributedString:v52];

          v53 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"  "];
          [v44 appendAttributedString:v53];
        }

        v54 = [objc_opt_class() _attributedStringRepresentationOfPartialEmailMatchForSingleRecipient:v6 useHighlighting:v40];
        v55 = [(MFRecipientTableViewCell *)self tintColor];
        v56 = [MFRecipientTableViewCell _tintedAttributedString:v54 toColor:v55 shouldDim:self->_shouldDimIrrelevantInformation];
        [v44 appendAttributedString:v56];

        v57 = [(MFRecipientTableViewCell *)self detailLabel];
        [v57 setAttributedText:v44];

        goto LABEL_33;
      }
    }

    else
    {
    }

    v41 = [(MFRecipientTableViewCell *)self detailLabel];
    v42 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F3CF3758];
    [v41 setAttributedText:v42];

    self->_shouldHideDetailLabel = 1;
  }

LABEL_33:
  if (self->_shouldHideDetailLabel)
  {
    v58 = [(MFRecipientTableViewCell *)self detailLabel];
    [v58 setHidden:1];
  }

  else
  {
    v58 = [(MFRecipientTableViewCell *)self detailLabel];
    [v58 setHidden:0];
  }

  [(MFRecipientTableViewCell *)self updateActiveConstraints];
LABEL_37:
}

+ (double)heightWithRecipient:(id)a3 width:(double)a4
{
  v5 = a3;
  v6 = [objc_opt_class() defaultTitleStringAttributes];
  v7 = *MEMORY[0x1E69DB648];
  v8 = [v6 objectForKey:*MEMORY[0x1E69DB648]];
  [v8 capHeight];

  v9 = [objc_opt_class() defaultDetailStringAttributes];
  v10 = [v9 objectForKey:v7];
  [v10 capHeight];

  v11 = +[MFFontMetricCache sharedFontMetricCache];
  [v11 cachedFloat:&__block_literal_global_78 forKey:@"MFRecipientTableViewCellSpaceBtwnTitleAndDetail"];

  v12 = *MEMORY[0x1E69DDD80];
  v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [v13 _bodyLeading];
  v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v12];
  [v14 _bodyLeading];

  if (v5 && [v5 isGroup])
  {
    v15 = [v5 sortedChildren];
    v16 = [v5 childrenWithCompleteMatches];
    if ([v16 count])
    {
      [a1 _realDetailButtonAccessoryMargin];
      [a1 _constrainedWidthForTitleViewWithAccessoryWidth:? containerWidth:?];
      v29 = 0;
      v17 = [a1 _attributedStringRepresentationOfCompleteMatchesForRecipient:v5 constrainedToWidth:&v29 overflowRecipients:0 useHighlighting:?];
      v18 = v29;
      if ([v18 count])
      {
        v19 = [v16 arrayByExcludingObjectsInArray:v18];

        v16 = v19;
      }

      if ([v16 count])
      {
        v20 = [v15 arrayByExcludingObjectsInArray:v16];

        v15 = v20;
      }
    }

    if ([v15 count])
    {
      [a1 _realDetailButtonAccessoryMargin];
      [a1 _constrainedWidthForDetailViewWithAccessoryWidth:? containerWidth:?];
      v22 = v21;
      v23 = [a1 _copyAttributedStringRepresentationOfGroupRecipient:v5 withSortedRecipientList:v15];
      [v23 boundingRectWithSize:1 options:0 context:{v22, 1.79769313e308}];
      v24 = [v23 attribute:v7 atIndex:0 effectiveRange:0];
      [v24 lineHeight];
    }
  }

  v25 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
  UIRoundToViewScale();
  v27 = v26;

  return v27;
}

double __54__MFRecipientTableViewCell_heightWithRecipient_width___block_invoke()
{
  v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [v0 _bodyLeading];
  v2 = v1 * 0.475;

  return v2;
}

- (void)setOpaque:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = MFRecipientTableViewCell;
  [(MFRecipientTableViewCell *)&v8 setOpaque:?];
  if (a3)
  {
    [(MFRecipientTableViewCell *)self backgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v5 = ;
  v6 = [(MFRecipientTableViewCell *)self detailLabel];
  [v6 setBackgroundColor:v5];
  v7 = [(MFRecipientTableViewCell *)self titleLabel];
  [v7 setBackgroundColor:v5];
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MFRecipientTableViewCell;
  [(MFRecipientTableViewCell *)&v9 setBackgroundColor:v4];
  if ([(MFRecipientTableViewCell *)self isOpaque])
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] clearColor];
  }

  v6 = v5;
  v7 = [(MFRecipientTableViewCell *)self detailLabel];
  [v7 setBackgroundColor:v6];
  v8 = [(MFRecipientTableViewCell *)self titleLabel];
  [v8 setBackgroundColor:v6];
}

- (id)tintColor
{
  tintColor = self->_tintColor;
  if (!tintColor)
  {
    v4 = +[MFRecipientTableViewCell _defaultTintColor];
    v5 = self->_tintColor;
    self->_tintColor = v4;

    tintColor = self->_tintColor;
  }

  return tintColor;
}

- (void)setTintColor:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = v7;
  if (v7 && self->_tintColor != v7)
  {
    objc_storeStrong(&self->_tintColor, a3);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__MFRecipientTableViewCell_setTintColor_animated___block_invoke;
    aBlock[3] = &unk_1E806C570;
    aBlock[4] = self;
    v9 = _Block_copy(aBlock);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__MFRecipientTableViewCell_setTintColor_animated___block_invoke_2;
    v13[3] = &unk_1E806C570;
    v13[4] = self;
    v10 = _Block_copy(v13);
    if (v4)
    {
      v11 = [(MFRecipientTableViewCell *)self titleLabel];
      [(MFRecipientTableViewCell *)self animateSnapshotOfLabel:v11 withBlock:v9];

      v12 = [(MFRecipientTableViewCell *)self detailLabel];
      [(MFRecipientTableViewCell *)self animateSnapshotOfLabel:v12 withBlock:v10];
    }

    else
    {
      v9[2](v9);
      v10[2](v10);
    }
  }
}

void __50__MFRecipientTableViewCell_setTintColor_animated___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) titleLabel];
  v2 = [v6 attributedText];
  v3 = [*(a1 + 32) tintColor];
  v4 = [MFRecipientTableViewCell _tintedAttributedString:v2 toColor:v3 shouldDim:*(*(a1 + 32) + 1042)];
  v5 = [*(a1 + 32) titleLabel];
  [v5 setAttributedText:v4];
}

void __50__MFRecipientTableViewCell_setTintColor_animated___block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) detailLabel];
  v2 = [v6 attributedText];
  v3 = [*(a1 + 32) tintColor];
  v4 = [MFRecipientTableViewCell _tintedAttributedString:v2 toColor:v3 shouldDim:*(*(a1 + 32) + 1042)];
  v5 = [*(a1 + 32) detailLabel];
  [v5 setAttributedText:v4];
}

- (void)animateSnapshotOfLabel:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E69DCF70]);
  [v6 frame];
  v9 = [v8 initWithFrame:?];
  [v9 captureSnapshotOfView:v6 withSnapshotType:1];
  [(MFRecipientTableViewCell *)self addSubview:v9];
  [v6 setAlpha:0.0];
  v7[2](v7);
  v10 = MEMORY[0x1E69DD250];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__MFRecipientTableViewCell_animateSnapshotOfLabel_withBlock___block_invoke;
  v15[3] = &unk_1E806C520;
  v16 = v9;
  v11 = v6;
  v17 = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__MFRecipientTableViewCell_animateSnapshotOfLabel_withBlock___block_invoke_2;
  v13[3] = &unk_1E806D6F0;
  v12 = v16;
  v14 = v12;
  [v10 animateWithDuration:v15 animations:v13 completion:0.3];
}

uint64_t __61__MFRecipientTableViewCell_animateSnapshotOfLabel_withBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

uint64_t __61__MFRecipientTableViewCell_animateSnapshotOfLabel_withBlock___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) removeFromSuperview];
  }

  return result;
}

+ (id)defaultTitleStringAttributes
{
  v2 = +[_MFTableCellAttributesCache sharedInstance];
  v3 = [v2 cachedAttributesForIdentifier:@"defaultTitle" constructionBlock:&__block_literal_global_96_0];

  return v3;
}

id __56__MFRecipientTableViewCell_defaultTitleStringAttributes__block_invoke()
{
  v8[3] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  if (MFModernUIApplicationPreferredContentSizeIsLargerThanLarge())
  {
    v1 = 0;
  }

  else
  {
    v1 = 4;
  }

  [v0 setLineBreakMode:v1];
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];
  v4 = *MEMORY[0x1E69DB648];
  v7[0] = @"mf_tintType";
  v7[1] = v4;
  v8[0] = @"mf_ttdimmed";
  v8[1] = v3;
  v7[2] = *MEMORY[0x1E69DB688];
  v8[2] = v0;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

+ (id)regularTitleStringAttributes
{
  v3 = +[_MFTableCellAttributesCache sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__MFRecipientTableViewCell_regularTitleStringAttributes__block_invoke;
  v6[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v6[4] = a1;
  v4 = [v3 cachedAttributesForIdentifier:@"regularTitle" constructionBlock:v6];

  return v4;
}

id __56__MFRecipientTableViewCell_regularTitleStringAttributes__block_invoke()
{
  v0 = [objc_opt_class() defaultTitleStringAttributes];
  v1 = [v0 mutableCopy];

  [v1 setObject:@"mf_ttstrong" forKey:@"mf_tintType"];

  return v1;
}

+ (id)highlightedTitleStringAttributes
{
  v2 = +[_MFTableCellAttributesCache sharedInstance];
  v3 = [v2 cachedAttributesForIdentifier:@"emphasizedTitle" constructionBlock:&__block_literal_global_107];

  return v3;
}

id __60__MFRecipientTableViewCell_highlightedTitleStringAttributes__block_invoke()
{
  v8[3] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  if (MFModernUIApplicationPreferredContentSizeIsLargerThanLarge())
  {
    v1 = 0;
  }

  else
  {
    v1 = 4;
  }

  [v0 setLineBreakMode:v1];
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:32770 options:0];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];
  v4 = *MEMORY[0x1E69DB648];
  v7[0] = @"mf_tintType";
  v7[1] = v4;
  v8[0] = @"mf_ttstrong";
  v8[1] = v3;
  v7[2] = *MEMORY[0x1E69DB688];
  v8[2] = v0;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

+ (id)defaultDetailStringAttributes
{
  v2 = +[_MFTableCellAttributesCache sharedInstance];
  v3 = [v2 cachedAttributesForIdentifier:@"detailDefault" constructionBlock:&__block_literal_global_112];

  return v3;
}

id __57__MFRecipientTableViewCell_defaultDetailStringAttributes__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  if (MFModernUIApplicationPreferredContentSizeIsLargerThanLarge())
  {
    v1 = 0;
  }

  else
  {
    v1 = 4;
  }

  [v0 setLineBreakMode:v1];
  v2 = _baseDetailAttributes();
  v3 = [v2 mutableCopy];

  [v3 setObject:v0 forKeyedSubscript:*MEMORY[0x1E69DB688]];

  return v3;
}

+ (id)highlightedDetailStringAttributes
{
  v3 = +[_MFTableCellAttributesCache sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__MFRecipientTableViewCell_highlightedDetailStringAttributes__block_invoke;
  v6[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v6[4] = a1;
  v4 = [v3 cachedAttributesForIdentifier:@"detailHigh" constructionBlock:v6];

  return v4;
}

id __61__MFRecipientTableViewCell_highlightedDetailStringAttributes__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) defaultDetailStringAttributes];
  v2 = [v1 mutableCopy];

  v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:2 options:0];
  v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  [v2 setObject:@"mf_ttstrong" forKeyedSubscript:@"mf_tintType"];

  return v2;
}

+ (id)groupDetailStringAttributes
{
  v2 = +[_MFTableCellAttributesCache sharedInstance];
  v3 = [v2 cachedAttributesForIdentifier:@"detailGroup" constructionBlock:&__block_literal_global_120];

  return v3;
}

id __55__MFRecipientTableViewCell_groupDetailStringAttributes__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v0 setLineBreakMode:0];
  [v0 setLineSpacing:3.0];
  v1 = _baseDetailAttributes();
  v2 = [v1 mutableCopy];

  [v2 setObject:v0 forKeyedSubscript:*MEMORY[0x1E69DB688]];

  return v2;
}

+ (id)labelDetailStringAttributes
{
  v2 = +[_MFTableCellAttributesCache sharedInstance];
  v3 = [v2 cachedAttributesForIdentifier:@"detailLabelLabel" constructionBlock:&__block_literal_global_125_0];

  return v3;
}

id __55__MFRecipientTableViewCell_labelDetailStringAttributes__block_invoke()
{
  v9[3] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:2 options:0];
  v8[0] = *MEMORY[0x1E69DB648];
  v1 = [MEMORY[0x1E69DB878] fontWithDescriptor:v0 size:0.0];
  v9[0] = v1;
  v8[1] = *MEMORY[0x1E69DB650];
  v2 = _colorForLabelType__labelColors_0;
  if (!_colorForLabelType__labelColors_0)
  {
    v3 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
    v4 = _colorForLabelType__labelColors_0;
    _colorForLabelType__labelColors_0 = v3;

    v2 = _colorForLabelType__labelColors_0;
  }

  v5 = v2;
  v8[2] = @"mf_tintType";
  v9[1] = v5;
  v9[2] = @"mf_ttdimmed";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

+ (double)detailLineHeight
{
  v2 = _baseDetailAttributes();
  v3 = [v2 objectForKey:*MEMORY[0x1E69DB648]];
  [v3 lineHeight];
  v5 = v4;

  return v5;
}

@end
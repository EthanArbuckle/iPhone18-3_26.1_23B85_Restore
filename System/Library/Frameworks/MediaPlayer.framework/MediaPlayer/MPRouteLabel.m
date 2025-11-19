@interface MPRouteLabel
- (BOOL)_labelFitsText:(id)a3 withSize:(CGSize)a4;
- (BOOL)_textColorFollowsTintColor;
- (CGSize)_labelSizeForText:(id)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MPRouteLabel)initWithFrame:(CGRect)a3;
- (NSString)designatedGroupLeaderName;
- (id)_bestStringThatFitsSize:(CGSize)a3;
- (id)_formattedRouteName;
- (id)_formattedRouteNameForDesignatedGroupLeaderNameText:(id)a3 routeNamesText:(id)a4;
- (id)_marketingNames;
- (id)_plusSeparatedRouteNames:(id)a3;
- (id)_routeNamesSortedLength:(id)a3;
- (id)_truncateText:(id)a3 by:(int64_t)a4;
- (int64_t)_compareLength:(id)a3 with:(id)a4;
- (void)_routeDidChangeNotification:(id)a3;
- (void)_setTextColorFollowsTintColor:(BOOL)a3;
- (void)_updateRouteLabel;
- (void)_updateTitleIfNeeded;
- (void)addRouteName:(id)a3;
- (void)addRouteNamesFromArray:(id)a3;
- (void)layoutSubviews;
- (void)removeRouteName:(id)a3;
- (void)removeRouteNamesFromArray:(id)a3;
- (void)setDisplayAsSiriSuggestion:(BOOL)a3;
- (void)setFont:(id)a3;
- (void)setForcesUppercaseText:(BOOL)a3;
- (void)setMinimumEndCharacterCount:(int64_t)a3;
- (void)setOmitGroupLeaderName:(BOOL)a3;
- (void)setRoute:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextColor:(id)a3;
- (void)setTruncationMode:(int64_t)a3;
- (void)setUpdatesRouteInternally:(BOOL)a3;
- (void)subscribeToRouteNotificationIfNeeded;
@end

@implementation MPRouteLabel

- (CGSize)intrinsicContentSize
{
  v3 = [(MPRouteLabel *)self designatedGroupLeaderName];
  v4 = [(NSMutableSet *)self->_routeNames allObjects];
  v5 = [(MPRouteLabel *)self _plusSeparatedRouteNames:v4];
  v6 = [(MPRouteLabel *)self _formattedRouteNameForDesignatedGroupLeaderNameText:v3 routeNamesText:v5];

  [(MPRouteLabel *)self _labelSizeForText:v6];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (NSString)designatedGroupLeaderName
{
  if (self->_omitGroupLeaderName)
  {
    return 0;
  }

  else
  {
    return self->_designatedGroupLeaderName;
  }
}

- (id)_marketingNames
{
  if (_marketingNames_onceToken != -1)
  {
    dispatch_once(&_marketingNames_onceToken, &__block_literal_global_54);
  }

  v3 = _marketingNames_marketingNames;

  return v3;
}

void __31__MPRouteLabel__marketingNames__block_invoke()
{
  v0 = _marketingNames_marketingNames;
  _marketingNames_marketingNames = &unk_1F150AC60;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MPRouteLabel;
  [(MPRouteLabel *)&v3 layoutSubviews];
  [(MPRouteLabel *)self bounds];
  [(BSUIEmojiLabelView *)self->_contentView setFrame:?];
  [(MPRouteLabel *)self _updateRouteLabel];
}

- (void)_updateRouteLabel
{
  [(MPRouteLabel *)self _updateTitleIfNeeded];
  text = self->_text;
  contentView = self->_contentView;

  [(BSUIEmojiLabelView *)contentView setText:text];
}

- (void)_updateTitleIfNeeded
{
  previousDesignatedGroupLeaderName = self->_previousDesignatedGroupLeaderName;
  v4 = [(MPRouteLabel *)self designatedGroupLeaderName];
  if (previousDesignatedGroupLeaderName == v4)
  {
    LOBYTE(v31) = 0;
  }

  else
  {
    v5 = self->_previousDesignatedGroupLeaderName;
    v6 = [(MPRouteLabel *)self designatedGroupLeaderName];
    v31 = [(NSString *)v5 isEqual:v6]^ 1;
  }

  v7 = [(NSMutableSet *)self->_previousRouteNames isEqualToSet:self->_routeNames];
  [(MPRouteLabel *)self bounds];
  v33.origin.x = v8;
  v33.origin.y = v9;
  v33.size.width = v10;
  v33.size.height = v11;
  v12 = CGRectEqualToRect(self->_previousBounds, v33);
  previousForcesUppercaseText = self->_previousForcesUppercaseText;
  forcesUppercaseText = self->_forcesUppercaseText;
  v15 = ([(UIFont *)self->_previousFont isEqual:self->_font]& 1) == 0 && self->_previousFont != self->_font;
  if (v31 & 1 | ((v7 & 1) == 0) || !v12 || previousForcesUppercaseText != forcesUppercaseText || v15 || self->_previousTruncationMode != self->_truncationMode || self->_previousDisplayAsSiriSuggestion != self->_displayAsSiriSuggestion)
  {
    [(MPRouteLabel *)self bounds];
    self->_previousBounds.origin.x = v16;
    self->_previousBounds.origin.y = v17;
    self->_previousBounds.size.width = v18;
    self->_previousBounds.size.height = v19;
    v20 = [(UIFont *)self->_font copy];
    previousFont = self->_previousFont;
    self->_previousFont = v20;

    v22 = [(MPRouteLabel *)self designatedGroupLeaderName];
    v23 = [v22 copy];
    v24 = self->_previousDesignatedGroupLeaderName;
    self->_previousDesignatedGroupLeaderName = v23;

    v25 = [(NSMutableSet *)self->_routeNames copy];
    previousRouteNames = self->_previousRouteNames;
    self->_previousRouteNames = v25;

    self->_previousForcesUppercaseText = self->_forcesUppercaseText;
    self->_previousDisplayAsSiriSuggestion = self->_displayAsSiriSuggestion;
    self->_previousTruncationMode = self->_truncationMode;
    [(MPRouteLabel *)self bounds];
    v29 = [(MPRouteLabel *)self _bestStringThatFitsSize:v27, v28];
    text = self->_text;
    self->_text = v29;

    [(MPRouteLabel *)self invalidateIntrinsicContentSize];

    [(MPRouteLabel *)self setNeedsLayout];
  }
}

- (int64_t)_compareLength:(id)a3 with:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 length];
  if (v7 <= [v6 length])
  {
    v9 = [v5 length];
    v8 = v9 < [v6 length];
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (void)_routeDidChangeNotification:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MPRouteLabel__routeDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)subscribeToRouteNotificationIfNeeded
{
  if (self->_route)
  {
    updatesRouteInternally = self->_updatesRouteInternally;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = v4;
    if (updatesRouteInternally)
    {
      [v4 addObserver:self selector:sel__routeDidChangeNotification_ name:@"MPAVRouteDidChangeNotification" object:self->_route];
    }

    else
    {
      [v4 removeObserver:self name:@"MPAVRouteDidChangeNotification" object:self->_route];
    }
  }
}

- (id)_bestStringThatFitsSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = [(NSMutableSet *)self->_routeNames allObjects];
  v7 = [(MPRouteLabel *)v5 _routeNamesSortedAlphanumeric:v6];

  v8 = [(NSMutableSet *)v5->_routeNames allObjects];
  v65 = [(MPRouteLabel *)v5 _routeNamesSortedLength:v8];

  v9 = [(MPRouteLabel *)v5 designatedGroupLeaderName];
  v10 = [v9 copy];

  v11 = [(MPRouteLabel *)v5 _plusSeparatedRouteNames:v7];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__MPRouteLabel__bestStringThatFitsSize___block_invoke;
  aBlock[3] = &unk_1E7682438;
  aBlock[4] = v5;
  *&aBlock[5] = width;
  *&aBlock[6] = height;
  v66 = _Block_copy(aBlock);
  if (v66[2](v66, v10, v11))
  {
    v12 = [(MPRouteLabel *)v5 _formattedRouteNameForDesignatedGroupLeaderNameText:v10 routeNamesText:v11];
LABEL_46:
    if ([(MPRouteLabel *)v5 displayAsSiriSuggestion])
    {
      v55 = MEMORY[0x1E696AEC0];
      v56 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
      v57 = [v56 localizedStringForKey:@"NOW_PLAYING_SIRI_SUGGESTION" value:&stru_1F149ECA8 table:@"MediaPlayer"];
      v58 = [v57 localizedUppercaseString];
      v54 = [v55 stringWithFormat:v58, v12];
    }

    else
    {
      v12 = v12;
      v54 = v12;
    }

    goto LABEL_49;
  }

  v13 = [v10 length] - 2 * v5->_minimumEndCharacterCount;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__58734;
  v78 = __Block_byref_object_dispose__58735;
  v79 = &stru_1F149ECA8;
  if (v13 >= 1)
  {
    while (1)
    {
      v14 = [(MPRouteLabel *)v5 designatedGroupLeaderName];
      v15 = [v14 isEqualToString:v10];

      v16 = v15 ? 1 : 2;
      v17 = [(MPRouteLabel *)v5 _truncateText:v10 by:v16];

      v18 = [(MPRouteLabel *)v5 _plusSeparatedRouteNames:v65];
      v10 = v17;
      v19 = v75[5];
      v75[5] = v18;

      if (v66[2](v66, v17, v75[5]))
      {
        break;
      }

      if (!--v13)
      {
        goto LABEL_11;
      }
    }

    *(v81 + 24) = 1;
    v20 = v75[5];

    v11 = v20;
  }

LABEL_11:
  if (v81[3])
  {
    v21 = 0;
  }

  else
  {
    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v65];
    v61 = v7;
    v23 = [v22 firstObject];
    v24 = [v23 length];
    v64 = v11;
    minimumEndCharacterCount = v5->_minimumEndCharacterCount;

    *(v81 + 24) = 0;
    v26 = v75[5];
    v75[5] = &stru_1F149ECA8;

    if (v24 - 2 * minimumEndCharacterCount >= 1)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = ~(2 * minimumEndCharacterCount) + v24;
      v29 = &unk_1E7682460;
      do
      {
        v30 = v28;
        v67[0] = v27;
        v67[1] = 3221225472;
        v67[2] = __40__MPRouteLabel__bestStringThatFitsSize___block_invoke_44;
        v67[3] = v29;
        v68 = v22;
        v69 = v5;
        v72 = &v74;
        v71 = v66;
        v70 = v10;
        v73 = &v80;
        [v65 enumerateObjectsUsingBlock:v67];
        v31 = *(v81 + 24);
        if (v31 == 1)
        {
          v32 = v29;
          v33 = v75[5];

          v64 = v33;
          v29 = v32;
        }

        if (v31)
        {
          break;
        }

        v28 = v30 - 1;
      }

      while (v30);
    }

    if (v81[3])
    {
      v21 = 0;
      v7 = v61;
      v11 = v64;
      v34 = v22;
    }

    else
    {
      v7 = v61;
      [v61 firstObject];
      v36 = v35 = v64;
      v34 = v22;
      if ([v61 count] < 2)
      {
        v37 = v36;
      }

      else
      {
        v37 = __40__MPRouteLabel__bestStringThatFitsSize___block_invoke_2(v36, [v61 count] - 1);
      }

      v38 = v37;
      if (v66[2](v66, v10, v37))
      {
        v11 = v38;
        v21 = 0;
        v39 = v36;
      }

      else
      {
        v60 = v38;
        v39 = [v61 firstObject];

        v35 = &stru_1F149ECA8;
        v40 = 1;
        while (1)
        {
          v41 = [v39 length];
          v21 = v40 > v41;
          if (v40 > v41)
          {
            break;
          }

          v42 = [(MPRouteLabel *)v5 _truncateText:v39 by:v40];

          if ([v61 count] < 2)
          {
            v35 = v42;
          }

          else
          {
            v35 = __40__MPRouteLabel__bestStringThatFitsSize___block_invoke_2(v42, [v61 count] - 1);
          }

          ++v40;
          if (v66[2](v66, v10, v35))
          {
            v43 = v35;
            v35 = v43;
            goto LABEL_34;
          }
        }

        v43 = [v61 firstObject];
LABEL_34:
        v11 = v43;

        v38 = v60;
      }
    }
  }

  _Block_object_dispose(&v74, 8);

  _Block_object_dispose(&v80, 8);
  v44 = [(MPRouteLabel *)v5 _formattedRouteNameForDesignatedGroupLeaderNameText:v10 routeNamesText:v11];
  v12 = v44;
  if (!v21 || ![v44 length])
  {
    goto LABEL_46;
  }

  v62 = v7;
  v63 = v10;
  v45 = 0;
  while (1)
  {
    v46 = [(MPRouteLabel *)v5 _truncateText:v12 by:v45 + 1];
    if ([(MPRouteLabel *)v5 displayAsSiriSuggestion])
    {
      v47 = MEMORY[0x1E696AEC0];
      v48 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
      [v48 localizedStringForKey:@"NOW_PLAYING_SIRI_SUGGESTION" value:&stru_1F149ECA8 table:@"MediaPlayer"];
      v49 = v5;
      v50 = v12;
      v52 = v51 = v11;
      v53 = [v52 localizedUppercaseString];
      v54 = [v47 stringWithFormat:v53, v46];

      v11 = v51;
      v12 = v50;
      v5 = v49;
      v10 = v63;
    }

    else
    {
      v54 = v46;
    }

    if ([(MPRouteLabel *)v5 _labelFitsText:v54 withSize:width, height])
    {
      break;
    }

    if (++v45 >= [v12 length])
    {
      v7 = v62;
      goto LABEL_46;
    }
  }

  v7 = v62;
LABEL_49:

  return v54;
}

uint64_t __40__MPRouteLabel__bestStringThatFitsSize___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) _formattedRouteNameForDesignatedGroupLeaderNameText:a2 routeNamesText:a3];
  if ([*(a1 + 32) displayAsSiriSuggestion])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
    v7 = [v6 localizedStringForKey:@"NOW_PLAYING_SIRI_SUGGESTION" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    v8 = [v7 localizedUppercaseString];
    v9 = [v5 stringWithFormat:v8, v4];
  }

  else
  {
    v9 = v4;
  }

  v10 = [*(a1 + 32) _labelFitsText:v9 withSize:{*(a1 + 40), *(a1 + 48)}];

  return v10;
}

void __40__MPRouteLabel__bestStringThatFitsSize___block_invoke_44(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  v7 = [*(a1 + 32) firstObject];
  v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v9 = [v7 length];
  if (v9 <= [v8 length])
  {
    v10 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v11 = [v17 isEqualToString:v10];

    v12 = v11 ? 1 : 2;
    v13 = [*(a1 + 40) _truncateText:v8 by:v12];
    [*(a1 + 32) setObject:v13 atIndexedSubscript:a3];

    v14 = [*(a1 + 40) _plusSeparatedRouteNames:*(a1 + 32)];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if ((*(*(a1 + 56) + 16))())
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

id __40__MPRouteLabel__bestStringThatFitsSize___block_invoke_2(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AAE8];
  v5 = a1;
  v6 = [v4 mediaPlayerBundle];
  v7 = [v6 localizedStringForKey:@"ROUTE_NAME_PLUS_COUNT" value:&stru_1F149ECA8 table:@"MediaPlayer"];
  v8 = [v3 stringWithFormat:v7, v5, a2];

  return v8;
}

- (id)_truncateText:(id)a3 by:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  truncationMode = self->_truncationMode;
  if (!truncationMode)
  {
    v18 = [v6 length];
    minimumEndCharacterCount = self->_minimumEndCharacterCount;
    if (v18 - a4 >= minimumEndCharacterCount)
    {
      v20 = a4;
    }

    else
    {
      v20 = (v18 - minimumEndCharacterCount) & ~((v18 - minimumEndCharacterCount) >> 63);
    }

    v12 = [v7 substringWithRange:{0, (v18 - v20) & ~((v18 - v20) >> 63)}];
    v21 = MEMORY[0x1E696AEC0];
    v13 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
    v15 = [v13 localizedStringForKey:@"ROUTE_NAME_CENTER_TRUNCATING_SEPARATOR" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    v17 = [v21 stringWithFormat:@"%@%@", v12, v15];
LABEL_10:

    goto LABEL_12;
  }

  if (truncationMode == 1)
  {
    if ([v6 length] - (a4 + 2 * self->_minimumEndCharacterCount) <= 0)
    {
      a4 = [v7 length] - 2 * self->_minimumEndCharacterCount;
    }

    v9 = vcvtpd_s64_f64(vcvtd_n_f64_u64([v7 length], 1uLL));
    v10 = vcvtd_n_f64_s64(a4, 1uLL);
    v11 = (v10 + v9);
    v12 = [v7 substringWithRange:{0, (v9 - v10)}];
    v13 = [v7 substringWithRange:{v11, objc_msgSend(v7, "length") - v11}];
    v14 = MEMORY[0x1E696AEC0];
    v15 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
    v16 = [v15 localizedStringForKey:@"ROUTE_NAME_CENTER_TRUNCATING_SEPARATOR" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    v17 = [v14 stringWithFormat:@"%@%@%@", v12, v16, v13];

    goto LABEL_10;
  }

  v17 = 0;
LABEL_12:

  return v17;
}

- (BOOL)_labelFitsText:(id)a3 withSize:(CGSize)a4
{
  width = a4.width;
  [(MPRouteLabel *)self _labelSizeForText:a3, a4.width, a4.height];
  if (v5 < width)
  {
    return 1;
  }

  v7 = v5 - width;
  if (v7 < 0.0)
  {
    v7 = -v7;
  }

  return v7 < 0.00000011920929;
}

- (CGSize)_labelSizeForText:(id)a3
{
  [(UILabel *)self->_sizingLabel setText:a3];
  sizingLabel = self->_sizingLabel;

  [(UILabel *)sizingLabel intrinsicContentSize];
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)_plusSeparatedRouteNames:(id)a3
{
  v3 = [(MPRouteLabel *)self _routeNamesSortedAlphanumeric:a3];
  v4 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
  v5 = [v4 localizedStringForKey:@"ROUTE_NAME_PLUS_SEPARATOR" value:&stru_1F149ECA8 table:@"MediaPlayer"];
  v6 = [v3 componentsJoinedByString:v5];

  return v6;
}

- (id)_routeNamesSortedLength:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__MPRouteLabel__routeNamesSortedLength___block_invoke;
  v5[3] = &unk_1E7682410;
  v5[4] = self;
  v3 = [a3 sortedArrayUsingComparator:v5];

  return v3;
}

- (id)_formattedRouteNameForDesignatedGroupLeaderNameText:(id)a3 routeNamesText:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 copy];
  v9 = [(MPRouteLabel *)self _marketingNames];
  v10 = [(MPRouteLabel *)self designatedGroupLeaderName];
  v11 = [v9 containsObject:v10];

  if (v11)
  {
    v12 = [(MPRouteLabel *)self designatedGroupLeaderName];
  }

  else
  {
    v12 = v6;
  }

  v13 = v12;
  if ([v8 length] && objc_msgSend(v13, "length"))
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
    v16 = [v15 localizedStringForKey:@"ROUTE_NAME_ARROW_FORMAT" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    v17 = [v14 stringWithFormat:v16, v13, v8];

    v8 = v15;
  }

  else
  {
    if ([v13 length])
    {
      if (v13)
      {
        v18 = v13;
      }

      else
      {
        v18 = v7;
      }

      v19 = v18;
    }

    else
    {
      if (![v7 length])
      {
        goto LABEL_16;
      }

      v19 = v7;
    }

    v17 = v19;
  }

  v8 = v17;
LABEL_16:
  if (self->_forcesUppercaseText)
  {
    v32 = v6;
    v20 = [v8 localizedUppercaseString];
    v21 = [v20 mutableCopy];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = [(MPRouteLabel *)self _marketingNames];
    v23 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v34;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v33 + 1) + 8 * i);
          v28 = [v8 rangeOfString:v27];
          if (v28 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v21 replaceCharactersInRange:v28 withString:{v29, v27}];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v24);
    }

    v30 = [v21 copy];
    v8 = v30;
    v6 = v32;
  }

  return v8;
}

- (id)_formattedRouteName
{
  v3 = [(MPRouteLabel *)self designatedGroupLeaderName];
  v4 = [(NSMutableSet *)self->_routeNames allObjects];
  v5 = [(MPRouteLabel *)self _plusSeparatedRouteNames:v4];

  v6 = [(MPRouteLabel *)self _formattedRouteNameForDesignatedGroupLeaderNameText:v3 routeNamesText:v5];

  return v6;
}

- (void)removeRouteNamesFromArray:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSMutableSet *)self->_routeNames removeObject:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(MPRouteLabel *)self invalidateIntrinsicContentSize];
  [(MPRouteLabel *)self setNeedsLayout];
}

- (void)removeRouteName:(id)a3
{
  [(NSMutableSet *)self->_routeNames removeObject:a3];
  [(MPRouteLabel *)self invalidateIntrinsicContentSize];

  [(MPRouteLabel *)self setNeedsLayout];
}

- (void)addRouteNamesFromArray:(id)a3
{
  [(NSMutableSet *)self->_routeNames addObjectsFromArray:a3];
  [(MPRouteLabel *)self invalidateIntrinsicContentSize];

  [(MPRouteLabel *)self setNeedsLayout];
}

- (void)addRouteName:(id)a3
{
  [(NSMutableSet *)self->_routeNames addObject:a3];
  [(MPRouteLabel *)self invalidateIntrinsicContentSize];

  [(MPRouteLabel *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(MPRouteLabel *)self _bestStringThatFitsSize:?];
  [(MPRouteLabel *)self _labelSizeForText:v6];
  if (v7 < width)
  {
    width = v7;
  }

  if (v8 < height)
  {
    height = v8;
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_setTextColorFollowsTintColor:(BOOL)a3
{
  v3 = a3;
  v4 = [(MPRouteLabel *)self titleLabel];
  [v4 _setTextColorFollowsTintColor:v3];
}

- (void)setUpdatesRouteInternally:(BOOL)a3
{
  if (self->_updatesRouteInternally != a3)
  {
    self->_updatesRouteInternally = a3;
    [(MPRouteLabel *)self subscribeToRouteNotificationIfNeeded];
  }
}

- (void)setOmitGroupLeaderName:(BOOL)a3
{
  if (self->_omitGroupLeaderName != a3)
  {
    self->_omitGroupLeaderName = a3;
    [(MPRouteLabel *)self invalidateIntrinsicContentSize];

    [(MPRouteLabel *)self setNeedsLayout];
  }
}

- (void)setDisplayAsSiriSuggestion:(BOOL)a3
{
  if (self->_displayAsSiriSuggestion != a3)
  {
    self->_displayAsSiriSuggestion = a3;
    [(MPRouteLabel *)self invalidateIntrinsicContentSize];

    [(MPRouteLabel *)self setNeedsLayout];
  }
}

- (void)setTruncationMode:(int64_t)a3
{
  if (self->_truncationMode != a3)
  {
    self->_truncationMode = a3;
    [(MPRouteLabel *)self invalidateIntrinsicContentSize];

    [(MPRouteLabel *)self setNeedsLayout];
  }
}

- (void)setTextAlignment:(int64_t)a3
{
  if (self->_textAlignment != a3)
  {
    self->_textAlignment = a3;
    [(BSUIEmojiLabelView *)self->_contentView setTextAlignment:?];
  }
}

- (void)setRoute:(id)a3
{
  v34[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  route = self->_route;
  if (route != v5)
  {
    if (route)
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 removeObserver:self name:@"MPAVRouteDidChangeNotification" object:self->_route];
    }

    objc_storeStrong(&self->_route, a3);
    [(MPRouteLabel *)self subscribeToRouteNotificationIfNeeded];
  }

  if ([(MPAVRoute *)v5 isAppleTVRoute])
  {
    v8 = [(MPAVRoute *)v5 designatedGroupLeaderName];
    v9 = [v8 length] != 0;
  }

  else
  {
    v9 = 0;
  }

  if (![(MPAVRoute *)v5 isDeviceRoute]|| v9)
  {
    v10 = [(MPAVRoute *)v5 designatedGroupLeaderName];
  }

  else
  {
    v10 = MRAVOutputDeviceCopyLocalDeviceLocalizedName();
  }

  v11 = v10;
  if (![(__CFString *)v10 length]|| ![(MPAVRoute *)v5 isAirPlayingToDevice]|| ![(MPAVRoute *)v5 isProxyGroupPlayer])
  {
    if (![(MPAVRoute *)v5 isDeviceRoute]|| [(MPAVRoute *)v5 numberOfOutputDevices]> 1)
    {
      v21 = [(MPAVRoute *)v5 isSplitRoute];

      if (v21)
      {
        v22 = MEMORY[0x1E696AEC0];
        v23 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
        v11 = &stru_1F149ECA8;
        v24 = [v23 localizedStringForKey:@"ROUTE_NAME_HEADPHONES_COUNT" value:&stru_1F149ECA8 table:@"MediaPlayer"];
        v25 = [v22 stringWithFormat:v24, -[MPAVRoute numberOfOutputDevices](v5, "numberOfOutputDevices")];
        v31 = v25;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];

        goto LABEL_34;
      }

      v14 = [(MPAVRoute *)v5 routeNames];
      goto LABEL_33;
    }

    v16 = v5;
    v11 = v16;
    if (v16 && self->_usesPredictedOutputDevice)
    {
      v17 = [(__CFString *)v16 predictedOutputDevice];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 routeName];
        v34[0] = v19;
        v20 = v34;
      }

      else
      {
        v19 = [(__CFString *)v11 routeName];
        v33 = v19;
        v20 = &v33;
      }

      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    }

    else
    {
      v18 = [(__CFString *)v16 routeName];
      v32 = v18;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    }

LABEL_32:
LABEL_33:
    v11 = &stru_1F149ECA8;
    goto LABEL_34;
  }

  v12 = objc_alloc(MEMORY[0x1E695DF70]);
  v13 = [(MPAVRoute *)v5 routeNames];
  v14 = [v12 initWithArray:v13];

  v15 = [v14 indexOfObject:v11];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v14 removeObjectAtIndex:v15];
  }

  if (self->_omitGroupLeaderName)
  {
    goto LABEL_32;
  }

LABEL_34:
  v26 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v14];
  v27 = [(MPRouteLabel *)self designatedGroupLeaderName];
  if (v11 == v27)
  {
    v29 = 1;
  }

  else
  {
    v28 = [(MPRouteLabel *)self designatedGroupLeaderName];
    v29 = [(__CFString *)v11 isEqualToString:v28];
  }

  v30 = [v26 isEqualToSet:self->_routeNames];
  if (!v29 || (v30 & 1) == 0)
  {
    objc_storeStrong(&self->_designatedGroupLeaderName, v11);
    objc_storeStrong(&self->_routeNames, v26);
    [(MPRouteLabel *)self invalidateIntrinsicContentSize];
    [(MPRouteLabel *)self setNeedsLayout];
  }
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_textColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_textColor, a3);
    [(BSUIEmojiLabelView *)self->_contentView setTextColor:v5];
  }
}

- (void)setMinimumEndCharacterCount:(int64_t)a3
{
  if (a3 < 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MPRouteLabel.m" lineNumber:111 description:@"MPRouteLabel's minimumEndCharacter property must be greater than or equal to 0."];
  }

  if (self->_minimumEndCharacterCount != a3)
  {
    self->_minimumEndCharacterCount = a3;
    [(MPRouteLabel *)self invalidateIntrinsicContentSize];

    [(MPRouteLabel *)self setNeedsLayout];
  }
}

- (void)setForcesUppercaseText:(BOOL)a3
{
  if (self->_forcesUppercaseText != a3)
  {
    self->_forcesUppercaseText = a3;
    [(MPRouteLabel *)self invalidateIntrinsicContentSize];

    [(MPRouteLabel *)self setNeedsLayout];
  }
}

- (void)setFont:(id)a3
{
  v5 = a3;
  if (([(UIFont *)self->_font isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_font, a3);
    [(BSUIEmojiLabelView *)self->_contentView setFont:v5];
    [(UILabel *)self->_sizingLabel setFont:v5];
    [(MPRouteLabel *)self invalidateIntrinsicContentSize];
    [(MPRouteLabel *)self setNeedsLayout];
  }
}

- (BOOL)_textColorFollowsTintColor
{
  v2 = [(MPRouteLabel *)self titleLabel];
  v3 = [v2 _textColorFollowsTintColor];

  return v3;
}

- (MPRouteLabel)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = MPRouteLabel;
  v3 = [(MPRouteLabel *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AEC0]);
    designatedGroupLeaderName = v3->_designatedGroupLeaderName;
    v3->_designatedGroupLeaderName = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    previousRouteNames = v3->_previousRouteNames;
    v3->_previousRouteNames = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    routeNames = v3->_routeNames;
    v3->_routeNames = v8;

    v10 = objc_alloc(MEMORY[0x1E69DCC10]);
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    v15 = [v10 initWithFrame:{*MEMORY[0x1E695F058], v12, v13, v14}];
    sizingLabel = v3->_sizingLabel;
    v3->_sizingLabel = v15;

    v17 = [objc_alloc(MEMORY[0x1E698E7E0]) initWithFrame:{v11, v12, v13, v14}];
    contentView = v3->_contentView;
    v3->_contentView = v17;

    v3->_minimumEndCharacterCount = 2;
    v3->_omitGroupLeaderName = 0;
    v3->_updatesRouteInternally = 1;
    v3->_usesPredictedOutputDevice = 0;
    [(MPRouteLabel *)v3 addSubview:v3->_contentView];
    [(MPRouteLabel *)v3 addSubview:v3->_sizingLabel];
    [(UILabel *)v3->_sizingLabel setHidden:1];
  }

  return v3;
}

@end
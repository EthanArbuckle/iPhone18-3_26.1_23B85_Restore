@interface _MCDReusableCell
+ (id)cellForTableView:(id)a3 indexPath:(id)a4;
+ (id)reuseIdentifier;
- (CGSize)sizeForArtwork;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_MCDReusableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateArtworkImageViewTintColor;
- (void)layoutBadges:(id)a3;
- (void)setArtworkRadiusKind:(unint64_t)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setPlaceholderHighlightedTintColor:(id)a3;
- (void)setPlaceholderTintColor:(id)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation _MCDReusableCell

- (void)_updateArtworkImageViewTintColor
{
  v5 = [(_MCDReusableCell *)self artworkImageView];
  if (([(_MCDReusableCell *)self isHighlighted]& 1) != 0 || ([(_MCDReusableCell *)self isSelected]& 1) != 0)
  {
    v3 = [(_MCDReusableCell *)self placeholderHighlightedTintColor];
  }

  else
  {
    v3 = [(_MCDReusableCell *)self placeholderTintColor];
  }

  v4 = v3;
  [v5 setTintColor:v3];
}

- (_MCDReusableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = _MCDReusableCell;
  v4 = [(_MCDReusableCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(_MCDReusableCell *)v4 setAccessibilityIdentifier:@"CPListItem"];
    v6 = [(_MCDReusableCell *)v5 textLabel];
    [v6 setAccessibilityIdentifier:@"CPListItemTitle"];
  }

  return v5;
}

+ (id)cellForTableView:(id)a3 indexPath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() reuseIdentifier];
  v8 = [v6 dequeueReusableCellWithIdentifier:v7 forIndexPath:v5];

  return v8;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (CGSize)sizeForArtwork
{
  v2 = 36.0;
  v3 = 36.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setPlaceholderTintColor:(id)a3
{
  v5 = a3;
  if (self->_placeholderTintColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placeholderTintColor, a3);
    [(_MCDReusableCell *)self _updateArtworkImageViewTintColor];
    v5 = v6;
  }
}

- (void)setPlaceholderHighlightedTintColor:(id)a3
{
  v5 = a3;
  if (self->_placeholderHighlightedTintColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placeholderHighlightedTintColor, a3);
    [(_MCDReusableCell *)self _updateArtworkImageViewTintColor];
    v5 = v6;
  }
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = _MCDReusableCell;
  [(_MCDReusableCell *)&v5 setHighlighted:a3 animated:a4];
  [(_MCDReusableCell *)self _updateArtworkImageViewTintColor];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = _MCDReusableCell;
  [(_MCDReusableCell *)&v5 setSelected:a3 animated:a4];
  [(_MCDReusableCell *)self _updateArtworkImageViewTintColor];
}

- (void)setArtworkRadiusKind:(unint64_t)a3
{
  if (self->_artworkRadiusKind != a3)
  {
    self->_artworkRadiusKind = a3;
    [(_MCDReusableCell *)self setNeedsLayout];
  }
}

- (void)layoutBadges:(id)a3
{
  v4 = a3;
  [(_MCDReusableCell *)self horizontalMargin];
  v6 = v5;
  if ([v4 count])
  {
    v6 = v6 + (2 * [v4 count] + 2);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v93 objects:v98 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v94;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v94 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v93 + 1) + 8 * i);
        [v12 setHidden:0];
        [v12 bounds];
        v6 = v6 + v13;
      }

      v9 = [v7 countByEnumeratingWithState:&v93 objects:v98 count:16];
    }

    while (v9);
  }

  v14 = [(_MCDReusableCell *)self effectiveUserInterfaceLayoutDirection];
  v15 = [(_MCDReusableCell *)self textLabel];
  [v15 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [(_MCDReusableCell *)self contentView];
  [v24 bounds];
  v29 = sub_1000FCF00(v14, v17, v19, v21, v23, v25, v26, v27, v28);
  v31 = v30;
  v88 = v32;

  v33 = [(_MCDReusableCell *)self effectiveUserInterfaceLayoutDirection];
  v34 = [(_MCDReusableCell *)self contentView];
  [v34 frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = [(_MCDReusableCell *)self contentView];
  [v43 bounds];
  v48 = sub_1000FCF00(v33, v36, v38, v40, v42, v44, v45, v46, v47);
  v50 = v49;
  v52 = v51;
  v54 = v53;

  v99.origin.x = v48;
  v99.origin.y = v50;
  v99.size.width = v52;
  v99.size.height = v54;
  v55 = CGRectGetMaxX(v99) - v29;
  v56 = [(_MCDReusableCell *)self textLabel];
  [v56 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
  v58 = v57;

  if (v6 + v58 >= v55)
  {
    v59 = v55 - v6;
  }

  else
  {
    v59 = v58;
  }

  v60 = [(_MCDReusableCell *)self contentView:v6 + v58];
  v61 = sub_1000FCFE0(v60, v29, v31, v59, v89);
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = [(_MCDReusableCell *)self textLabel];
  [v68 setFrame:{v61, v63, v65, v67}];

  *rect = v29;
  v100.origin.x = v29;
  v69 = v31;
  v100.origin.y = v31;
  v70 = v59;
  v100.size.width = v59;
  v100.size.height = v89;
  MaxX = CGRectGetMaxX(v100);
  memset(&rect[1], 0, 32);
  v91 = 0u;
  v92 = 0u;
  v72 = v7;
  v73 = [v72 countByEnumeratingWithState:&rect[1] objects:v97 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = MaxX + 4.0;
    v76 = *rect[3];
    do
    {
      for (j = 0; j != v74; j = j + 1)
      {
        if (*rect[3] != v76)
        {
          objc_enumerationMutation(v72);
        }

        v78 = *(rect[2] + 8 * j);
        [v78 frame];
        v80 = v79;
        v82 = v81;
        v84 = v83;
        *&v101.origin.x = rect[0];
        v101.origin.y = v69;
        v101.size.width = v70;
        v101.size.height = v89;
        MidY = CGRectGetMidY(v101);
        v102.origin.x = v75;
        v102.origin.y = v80;
        v102.size.width = v82;
        v102.size.height = v84;
        v86 = MidY + CGRectGetHeight(v102) * -0.5;
        v87 = [(_MCDReusableCell *)self contentView];
        [v78 setFrame:{sub_1000FCFE0(v87, v75, v86, v82, v84)}];

        v103.origin.x = v75;
        v103.origin.y = v86;
        v103.size.width = v82;
        v103.size.height = v84;
        v75 = CGRectGetMaxX(v103) + 2.0;
      }

      v74 = [v72 countByEnumeratingWithState:&rect[1] objects:v97 count:16];
    }

    while (v74);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  if (_os_feature_enabled_impl())
  {
    v5 = [(_MCDReusableCell *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    if ([v6 isEqualToString:UIContentSizeCategoryExtraExtraLarge])
    {
      v7 = 48.0;
    }

    else if ([v6 isEqualToString:UIContentSizeCategoryExtraExtraExtraLarge])
    {
      v7 = 52.0;
    }

    else
    {
      v7 = 44.0;
    }
  }

  else
  {
    v7 = 44.0;
  }

  v8 = width;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end
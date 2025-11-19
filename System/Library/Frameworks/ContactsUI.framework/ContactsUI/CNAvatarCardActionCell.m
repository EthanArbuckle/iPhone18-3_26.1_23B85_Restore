@interface CNAvatarCardActionCell
+ (id)cellNibForActions;
+ (id)cellNibForContacts;
- (void)_updateFonts;
- (void)_updateHighlightAnimated:(BOOL)a3;
- (void)awakeFromNib;
- (void)prepareForReuse;
- (void)reloadData;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)startTrackingWithGestureRecognizer:(id)a3;
- (void)trackHighlight:(id)a3;
@end

@implementation CNAvatarCardActionCell

- (void)trackHighlight:(id)a3
{
  v11 = a3;
  if ([v11 state] == 1 || objc_msgSend(v11, "state") == 2)
  {
    [v11 locationInView:self];
    v5 = v4;
    v7 = v6;
    [(CNAvatarCardActionCell *)self bounds];
    y = v14.origin.y;
    height = v14.size.height;
    v15.origin.x = CGRectGetMaxX(v14) + -120.0;
    v15.size.width = 120.0;
    v15.origin.y = y;
    v15.size.height = height;
    v13.x = v5;
    v13.y = v7;
    v10 = CGRectContainsPoint(v15, v13);
    if (v10 != [(CNAvatarCardActionCell *)self moreHighlighted])
    {
      [(CNAvatarCardActionCell *)self setMoreHighlighted:v10];
      [(CNAvatarCardActionCell *)self _updateHighlightAnimated:1];
    }
  }
}

- (void)startTrackingWithGestureRecognizer:(id)a3
{
  v4 = a3;
  [v4 addTarget:self action:sel_trackHighlight_];
  [(CNAvatarCardActionCell *)self trackHighlight:v4];

  [(CNAvatarCardActionCell *)self reloadData];
}

- (void)reloadData
{
  v56[2] = *MEMORY[0x1E69E9840];
  if ([(CNAvatarCardActionCell *)self context]== 3)
  {
    v3 = [(CNAvatarCardActionCell *)self actionImageView];
    [v3 setImage:0];
  }

  else
  {
    v4 = [(CNAvatarCardActionCell *)self action];
    v5 = [v4 image];
    v6 = [(CNAvatarCardActionCell *)self actionImageView];
    [v6 setImage:v5];

    v3 = +[CNUIColorRepository navigationListActionIconFillColorRegular];
    v7 = [(CNAvatarCardActionCell *)self actionImageView];
    [v7 setTintColor:v3];
  }

  if (-[CNAvatarCardActionCell context](self, "context") == 3 && (-[CNAvatarCardActionCell action](self, "action"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isBackAction], v8, !v9))
  {
    v31 = [(CNAvatarCardActionCell *)self action];
    v32 = [v31 titleForContext:{-[CNAvatarCardActionCell context](self, "context")}];
    v33 = [(CNAvatarCardActionCell *)self titleLabel];
    [v33 setText:v32];

    v34 = [(CNAvatarCardActionCell *)self action];
    v35 = [v34 subtitleForContext:{-[CNAvatarCardActionCell context](self, "context")}];
  }

  else
  {
    v55[0] = *MEMORY[0x1E69DB648];
    v10 = [(CNAvatarCardActionCell *)self titleLabel];
    v11 = [v10 font];
    v56[0] = v11;
    v12 = *MEMORY[0x1E69DB650];
    v55[1] = *MEMORY[0x1E69DB650];
    v13 = [(CNAvatarCardActionCell *)self titleLabel];
    v14 = [v13 textColor];
    v56[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];

    v16 = [(CNAvatarCardActionCell *)self action];
    v17 = [v16 titleForContext:{-[CNAvatarCardActionCell context](self, "context")}];

    v18 = [(CNAvatarCardActionCell *)self action];
    v19 = [v18 subtitleForContext:{-[CNAvatarCardActionCell context](self, "context")}];

    v20 = v17;
    v54 = v15;
    if ([v19 length])
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  %@", v20, v19, v15];

      v22 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v21 attributes:v15];
      v23 = [(CNAvatarCardActionCell *)self subtitleLabel];
      v24 = [v23 textColor];
      [v22 addAttribute:v12 value:v24 range:{objc_msgSend(v20, "length") + objc_msgSend(@"%@  %@", "length") - 4, objc_msgSend(v19, "length")}];
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v20 attributes:v15];
      v21 = v20;
    }

    [MEMORY[0x1E69DD250] inheritedAnimationDuration];
    v26 = v25;
    v27 = [(CNAvatarCardActionCell *)self titleLabel];
    v28 = [v27 layer];

    if (v26 <= 0.0 || ([v28 animationForKey:@"kCATransitionFade"], v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
    {
      if (v26 == 0.0)
      {
        v30 = [v28 animationForKey:@"kCATransitionFade"];

        if (v30)
        {
          [v28 removeAnimationForKey:@"kCATransitionFade"];
        }
      }
    }

    else
    {
      v36 = [MEMORY[0x1E6979538] animation];
      v37 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [v36 setTimingFunction:v37];

      [v36 setType:*MEMORY[0x1E697A030]];
      [v36 setDuration:v26];
      [v28 addAnimation:v36 forKey:@"kCATransitionFade"];
    }

    v38 = [(CNAvatarCardActionCell *)self titleLabel];
    [v38 setAttributedText:v22];

    v35 = 0;
  }

  v39 = [(CNAvatarCardActionCell *)self subtitleLabel];
  [v39 setText:v35];

  v40 = [(CNAvatarCardActionCell *)self pageControl];
  [v40 setNumberOfPages:1];

  v41 = [(CNAvatarCardActionCell *)self action];
  v42 = [v41 isBackAction];

  if (v42)
  {
    v43 = +[CNUIColorRepository orbActionCellBackgroundColor];
    [(CNAvatarCardActionCell *)self setBackgroundColor:v43];
  }

  else
  {
    [(CNAvatarCardActionCell *)self setBackgroundColor:0];
  }

  v44 = objc_opt_class();
  v45 = [(CNAvatarCardActionCell *)self action];
  if (objc_opt_isKindOfClass())
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  if (v46)
  {
    v47 = 0;
  }

  else
  {
    v44 = [(CNAvatarCardActionCell *)self action];
    v47 = [v44 isBackAction] ^ 1;
  }

  v48 = [(CNAvatarCardActionCell *)self expandButton];
  [v48 setHidden:v47];

  if (!v46)
  {
  }

  v49 = [(CNAvatarCardActionCell *)self expandButton];
  v50 = [v49 isHidden];

  v51 = [(CNAvatarCardActionCell *)self expandButtonWidthConstraint];
  v52 = v51;
  v53 = 66.0;
  if (v50)
  {
    v53 = 20.0;
  }

  [v51 setConstant:v53];
}

- (void)_updateHighlightAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNAvatarCardActionCell *)self defaultHighlightView];
  [v5 setHighlighted:-[CNAvatarCardActionCell isHighlighted](self animated:{"isHighlighted"), v3}];

  v6 = [(CNAvatarCardActionCell *)self action];
  v7 = [v6 isBackAction];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__CNAvatarCardActionCell__updateHighlightAnimated___block_invoke;
  v12[3] = &unk_1E74E4768;
  v13 = v7;
  v12[4] = self;
  v8 = _Block_copy(v12);
  v9 = v8;
  if (v3)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:0.2];
  }

  else
  {
    (*(v8 + 2))(v8);
  }

  if ([(CNAvatarCardActionCell *)self isHighlighted])
  {
    v10 = [(CNAvatarCardActionCell *)self moreHighlighted]| v7;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(CNAvatarCardActionCell *)self expandButton];
  [v11 setHighlighted:v10 & 1];
}

void __51__CNAvatarCardActionCell__updateHighlightAnimated___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695EFD0];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  *&v10.a = *MEMORY[0x1E695EFD0];
  *&v10.c = v3;
  v4 = *(MEMORY[0x1E695EFD0] + 32);
  *&v10.tx = v4;
  if (*(a1 + 40) == 1)
  {
    *&v9.a = v2;
    *&v9.c = v3;
    *&v9.tx = v4;
    CGAffineTransformRotate(&v10, &v9, 3.14149265);
  }

  v5 = [*(a1 + 32) expandButton];
  v9 = v8;
  [v5 setTransform:&v9];

  if ([*(a1 + 32) isHighlighted])
  {
    v6 = 0.75;
  }

  else
  {
    v6 = 0.55;
  }

  v7 = [*(a1 + 32) actionImageView];
  [v7 setAlpha:v6];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CNAvatarCardActionCell;
  [(CNAvatarCardActionCell *)&v4 prepareForReuse];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__CNAvatarCardActionCell_prepareForReuse__block_invoke;
  v3[3] = &unk_1E74E6A88;
  v3[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6.receiver = self;
  v6.super_class = CNAvatarCardActionCell;
  [(CNAvatarCardActionCell *)&v6 setHighlighted:a3 animated:?];
  [(CNAvatarCardActionCell *)self _updateHighlightAnimated:v4];
}

- (void)awakeFromNib
{
  v12.receiver = self;
  v12.super_class = CNAvatarCardActionCell;
  [(CNAvatarCardActionCell *)&v12 awakeFromNib];
  [(CNAvatarCardActionCell *)self setSelectionStyle:0];
  v3 = [(CNAvatarCardActionCell *)self translatingViewLeadingConstraint];
  [v3 constant];
  [(CNAvatarCardActionCell *)self setInitialTranslatingViewLeadingConstraintConstant:?];

  [(CNAvatarCardActionCell *)self setPreservesSuperviewLayoutMargins:0];
  v4 = *MEMORY[0x1E69DDCE0];
  v5 = *(MEMORY[0x1E69DDCE0] + 8);
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  v7 = *(MEMORY[0x1E69DDCE0] + 24);
  [(CNAvatarCardActionCell *)self setLayoutMargins:*MEMORY[0x1E69DDCE0], v5, v6, v7];
  [(CNAvatarCardActionCell *)self setSeparatorInset:v4, v5, v6, v7];
  v8 = +[CNUIColorRepository navigationListCellTitleTextColorRegular];
  [(UILabel *)self->_titleLabel setTextColor:v8];

  v9 = +[CNUIColorRepository navigationListCellSubtitleTextColorRegular];
  [(UILabel *)self->_subtitleLabel setTextColor:v9];

  [(CNAvatarCardActionCell *)self _updateFonts];
  expandButton = self->_expandButton;
  if (expandButton)
  {
    v11 = [MEMORY[0x1E69DCAB8] cnui_symbolImageForNavigationListChevron];
    [(UIButton *)expandButton setImage:v11 forState:0];
  }
}

- (void)_updateFonts
{
  v3 = MEMORY[0x1E69DB878];
  v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0 options:2];
  v5 = [v3 fontWithDescriptor:v4 size:0.0];
  v6 = [(CNAvatarCardActionCell *)self titleLabel];
  [v6 setFont:v5];

  v7 = MEMORY[0x1E69DB878];
  v10 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0 options:2];
  v8 = [v7 fontWithDescriptor:v10 size:0.0];
  v9 = [(CNAvatarCardActionCell *)self subtitleLabel];
  [v9 setFont:v8];
}

+ (id)cellNibForContacts
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CNAvatarCardActionCell_cellNibForContacts__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (cellNibForContacts_onceToken != -1)
  {
    dispatch_once(&cellNibForContacts_onceToken, block);
  }

  v2 = cellNibForContacts_nib;

  return v2;
}

void __44__CNAvatarCardActionCell_cellNibForContacts__block_invoke()
{
  v0 = MEMORY[0x1E69DCCE8];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = [v0 nibWithNibName:@"CNAvatarCardActionCell-Contact-OrbHW" bundle:v3];
  v2 = cellNibForContacts_nib;
  cellNibForContacts_nib = v1;
}

+ (id)cellNibForActions
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CNAvatarCardActionCell_cellNibForActions__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (cellNibForActions_onceToken != -1)
  {
    dispatch_once(&cellNibForActions_onceToken, block);
  }

  v2 = cellNibForActions_nib;

  return v2;
}

void __43__CNAvatarCardActionCell_cellNibForActions__block_invoke()
{
  v0 = MEMORY[0x1E69DCCE8];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = [v0 nibWithNibName:@"CNAvatarCardActionCell-Expand-OrbHW" bundle:v3];
  v2 = cellNibForActions_nib;
  cellNibForActions_nib = v1;
}

@end
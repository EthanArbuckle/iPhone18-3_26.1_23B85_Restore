@interface CNAvatarCardActionCell
+ (id)cellNibForActions;
+ (id)cellNibForContacts;
- (void)_updateFonts;
- (void)_updateHighlightAnimated:(BOOL)animated;
- (void)awakeFromNib;
- (void)prepareForReuse;
- (void)reloadData;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)startTrackingWithGestureRecognizer:(id)recognizer;
- (void)trackHighlight:(id)highlight;
@end

@implementation CNAvatarCardActionCell

- (void)trackHighlight:(id)highlight
{
  highlightCopy = highlight;
  if ([highlightCopy state] == 1 || objc_msgSend(highlightCopy, "state") == 2)
  {
    [highlightCopy locationInView:self];
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

- (void)startTrackingWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  [recognizerCopy addTarget:self action:sel_trackHighlight_];
  [(CNAvatarCardActionCell *)self trackHighlight:recognizerCopy];

  [(CNAvatarCardActionCell *)self reloadData];
}

- (void)reloadData
{
  v56[2] = *MEMORY[0x1E69E9840];
  if ([(CNAvatarCardActionCell *)self context]== 3)
  {
    actionImageView = [(CNAvatarCardActionCell *)self actionImageView];
    [actionImageView setImage:0];
  }

  else
  {
    action = [(CNAvatarCardActionCell *)self action];
    image = [action image];
    actionImageView2 = [(CNAvatarCardActionCell *)self actionImageView];
    [actionImageView2 setImage:image];

    actionImageView = +[CNUIColorRepository navigationListActionIconFillColorRegular];
    actionImageView3 = [(CNAvatarCardActionCell *)self actionImageView];
    [actionImageView3 setTintColor:actionImageView];
  }

  if (-[CNAvatarCardActionCell context](self, "context") == 3 && (-[CNAvatarCardActionCell action](self, "action"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isBackAction], v8, !v9))
  {
    action2 = [(CNAvatarCardActionCell *)self action];
    v32 = [action2 titleForContext:{-[CNAvatarCardActionCell context](self, "context")}];
    titleLabel = [(CNAvatarCardActionCell *)self titleLabel];
    [titleLabel setText:v32];

    action3 = [(CNAvatarCardActionCell *)self action];
    v35 = [action3 subtitleForContext:{-[CNAvatarCardActionCell context](self, "context")}];
  }

  else
  {
    v55[0] = *MEMORY[0x1E69DB648];
    titleLabel2 = [(CNAvatarCardActionCell *)self titleLabel];
    font = [titleLabel2 font];
    v56[0] = font;
    v12 = *MEMORY[0x1E69DB650];
    v55[1] = *MEMORY[0x1E69DB650];
    titleLabel3 = [(CNAvatarCardActionCell *)self titleLabel];
    textColor = [titleLabel3 textColor];
    v56[1] = textColor;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];

    action4 = [(CNAvatarCardActionCell *)self action];
    v17 = [action4 titleForContext:{-[CNAvatarCardActionCell context](self, "context")}];

    action5 = [(CNAvatarCardActionCell *)self action];
    v19 = [action5 subtitleForContext:{-[CNAvatarCardActionCell context](self, "context")}];

    v20 = v17;
    v54 = v15;
    if ([v19 length])
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  %@", v20, v19, v15];

      v22 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v21 attributes:v15];
      subtitleLabel = [(CNAvatarCardActionCell *)self subtitleLabel];
      textColor2 = [subtitleLabel textColor];
      [v22 addAttribute:v12 value:textColor2 range:{objc_msgSend(v20, "length") + objc_msgSend(@"%@  %@", "length") - 4, objc_msgSend(v19, "length")}];
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v20 attributes:v15];
      v21 = v20;
    }

    [MEMORY[0x1E69DD250] inheritedAnimationDuration];
    v26 = v25;
    titleLabel4 = [(CNAvatarCardActionCell *)self titleLabel];
    layer = [titleLabel4 layer];

    if (v26 <= 0.0 || ([layer animationForKey:@"kCATransitionFade"], v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
    {
      if (v26 == 0.0)
      {
        v30 = [layer animationForKey:@"kCATransitionFade"];

        if (v30)
        {
          [layer removeAnimationForKey:@"kCATransitionFade"];
        }
      }
    }

    else
    {
      animation = [MEMORY[0x1E6979538] animation];
      v37 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [animation setTimingFunction:v37];

      [animation setType:*MEMORY[0x1E697A030]];
      [animation setDuration:v26];
      [layer addAnimation:animation forKey:@"kCATransitionFade"];
    }

    titleLabel5 = [(CNAvatarCardActionCell *)self titleLabel];
    [titleLabel5 setAttributedText:v22];

    v35 = 0;
  }

  subtitleLabel2 = [(CNAvatarCardActionCell *)self subtitleLabel];
  [subtitleLabel2 setText:v35];

  pageControl = [(CNAvatarCardActionCell *)self pageControl];
  [pageControl setNumberOfPages:1];

  action6 = [(CNAvatarCardActionCell *)self action];
  isBackAction = [action6 isBackAction];

  if (isBackAction)
  {
    v43 = +[CNUIColorRepository orbActionCellBackgroundColor];
    [(CNAvatarCardActionCell *)self setBackgroundColor:v43];
  }

  else
  {
    [(CNAvatarCardActionCell *)self setBackgroundColor:0];
  }

  action8 = objc_opt_class();
  action7 = [(CNAvatarCardActionCell *)self action];
  if (objc_opt_isKindOfClass())
  {
    v46 = action7;
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
    action8 = [(CNAvatarCardActionCell *)self action];
    v47 = [action8 isBackAction] ^ 1;
  }

  expandButton = [(CNAvatarCardActionCell *)self expandButton];
  [expandButton setHidden:v47];

  if (!v46)
  {
  }

  expandButton2 = [(CNAvatarCardActionCell *)self expandButton];
  isHidden = [expandButton2 isHidden];

  expandButtonWidthConstraint = [(CNAvatarCardActionCell *)self expandButtonWidthConstraint];
  v52 = expandButtonWidthConstraint;
  v53 = 66.0;
  if (isHidden)
  {
    v53 = 20.0;
  }

  [expandButtonWidthConstraint setConstant:v53];
}

- (void)_updateHighlightAnimated:(BOOL)animated
{
  animatedCopy = animated;
  defaultHighlightView = [(CNAvatarCardActionCell *)self defaultHighlightView];
  [defaultHighlightView setHighlighted:-[CNAvatarCardActionCell isHighlighted](self animated:{"isHighlighted"), animatedCopy}];

  action = [(CNAvatarCardActionCell *)self action];
  isBackAction = [action isBackAction];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__CNAvatarCardActionCell__updateHighlightAnimated___block_invoke;
  v12[3] = &unk_1E74E4768;
  v13 = isBackAction;
  v12[4] = self;
  v8 = _Block_copy(v12);
  v9 = v8;
  if (animatedCopy)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:0.2];
  }

  else
  {
    (*(v8 + 2))(v8);
  }

  if ([(CNAvatarCardActionCell *)self isHighlighted])
  {
    v10 = [(CNAvatarCardActionCell *)self moreHighlighted]| isBackAction;
  }

  else
  {
    v10 = 0;
  }

  expandButton = [(CNAvatarCardActionCell *)self expandButton];
  [expandButton setHighlighted:v10 & 1];
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

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  v6.receiver = self;
  v6.super_class = CNAvatarCardActionCell;
  [(CNAvatarCardActionCell *)&v6 setHighlighted:highlighted animated:?];
  [(CNAvatarCardActionCell *)self _updateHighlightAnimated:animatedCopy];
}

- (void)awakeFromNib
{
  v12.receiver = self;
  v12.super_class = CNAvatarCardActionCell;
  [(CNAvatarCardActionCell *)&v12 awakeFromNib];
  [(CNAvatarCardActionCell *)self setSelectionStyle:0];
  translatingViewLeadingConstraint = [(CNAvatarCardActionCell *)self translatingViewLeadingConstraint];
  [translatingViewLeadingConstraint constant];
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
    cnui_symbolImageForNavigationListChevron = [MEMORY[0x1E69DCAB8] cnui_symbolImageForNavigationListChevron];
    [(UIButton *)expandButton setImage:cnui_symbolImageForNavigationListChevron forState:0];
  }
}

- (void)_updateFonts
{
  v3 = MEMORY[0x1E69DB878];
  v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0 options:2];
  v5 = [v3 fontWithDescriptor:v4 size:0.0];
  titleLabel = [(CNAvatarCardActionCell *)self titleLabel];
  [titleLabel setFont:v5];

  v7 = MEMORY[0x1E69DB878];
  v10 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0 options:2];
  v8 = [v7 fontWithDescriptor:v10 size:0.0];
  subtitleLabel = [(CNAvatarCardActionCell *)self subtitleLabel];
  [subtitleLabel setFont:v8];
}

+ (id)cellNibForContacts
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CNAvatarCardActionCell_cellNibForContacts__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  block[4] = self;
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
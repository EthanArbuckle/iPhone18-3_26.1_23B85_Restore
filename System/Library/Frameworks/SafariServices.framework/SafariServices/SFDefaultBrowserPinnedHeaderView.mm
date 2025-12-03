@interface SFDefaultBrowserPinnedHeaderView
- (CGSize)intrinsicContentSize;
- (SFDefaultBrowserPinnedHeaderView)initWithFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
- (void)setLockupView:(id)view;
- (void)setPocketContainerInteraction:(id)interaction;
@end

@implementation SFDefaultBrowserPinnedHeaderView

- (SFDefaultBrowserPinnedHeaderView)initWithFrame:(CGRect)frame
{
  v64[4] = *MEMORY[0x1E69E9840];
  v61.receiver = self;
  v61.super_class = SFDefaultBrowserPinnedHeaderView;
  v3 = [(SFDefaultBrowserPinnedHeaderView *)&v61 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(SFDefaultBrowserPinnedHeaderView *)v3 setBackgroundColor:systemBackgroundColor];

    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [(SFDefaultBrowserPinnedHeaderView *)v3 setBackgroundColor:0];
    }

    else
    {
      systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [(SFDefaultBrowserPinnedHeaderView *)v3 setBackgroundColor:systemBackgroundColor2];
    }

    [(SFDefaultBrowserPinnedHeaderView *)v3 setDirectionalLayoutMargins:11.0, 15.17, 11.0, 16.0];
    [(SFDefaultBrowserPinnedHeaderView *)v3 setHidden:1];
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v6 = *MEMORY[0x1E695F058];
      v7 = *(MEMORY[0x1E695F058] + 8);
      v8 = *(MEMORY[0x1E695F058] + 16);
      v9 = *(MEMORY[0x1E695F058] + 24);
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E69DD250]);
      v6 = *MEMORY[0x1E695F058];
      v7 = *(MEMORY[0x1E695F058] + 8);
      v8 = *(MEMORY[0x1E695F058] + 16);
      v9 = *(MEMORY[0x1E695F058] + 24);
      v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
      separatorColor = [MEMORY[0x1E69DC888] separatorColor];
      [v11 setBackgroundColor:separatorColor];

      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(SFDefaultBrowserPinnedHeaderView *)v3 addSubview:v11];
      v51 = MEMORY[0x1E696ACD8];
      leadingAnchor = [v11 leadingAnchor];
      leadingAnchor2 = [(SFDefaultBrowserPinnedHeaderView *)v3 leadingAnchor];
      v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v64[0] = v55;
      trailingAnchor = [v11 trailingAnchor];
      trailingAnchor2 = [(SFDefaultBrowserPinnedHeaderView *)v3 trailingAnchor];
      v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v64[1] = v14;
      bottomAnchor = [v11 bottomAnchor];
      bottomAnchor2 = [(SFDefaultBrowserPinnedHeaderView *)v3 bottomAnchor];
      v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v64[2] = v17;
      heightAnchor = [v11 heightAnchor];
      v19 = [heightAnchor constraintEqualToConstant:1.0];
      v64[3] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
      [v51 activateConstraints:v20];
    }

    v21 = [objc_alloc(MEMORY[0x1E69DC738]) initWithFrame:{v6, v7, v8, v9}];
    selectionMarkingButton = v3->_selectionMarkingButton;
    v3->_selectionMarkingButton = v21;

    [(UIButton *)v3->_selectionMarkingButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v3->_selectionMarkingButton setMaximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
    v60 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
    v58 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill" withConfiguration:?];
    [UIButton setImage:"setImage:forState:" forState:?];
    LODWORD(v23) = 1144750080;
    [(UIButton *)v3->_selectionMarkingButton setContentHuggingPriority:0 forAxis:v23];
    [(SFDefaultBrowserPinnedHeaderView *)v3 addSubview:v3->_selectionMarkingButton];
    layoutMarginsGuide = [(SFDefaultBrowserPinnedHeaderView *)v3 layoutMarginsGuide];
    v25 = MEMORY[0x1E696ACD8];
    leadingAnchor3 = [(UIButton *)v3->_selectionMarkingButton leadingAnchor];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v28 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v63[0] = v28;
    centerYAnchor = [(UIButton *)v3->_selectionMarkingButton centerYAnchor];
    v56 = layoutMarginsGuide;
    centerYAnchor2 = [layoutMarginsGuide centerYAnchor];
    v31 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v63[1] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
    [v25 activateConstraints:v32];

    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v33 = objc_alloc_init(MEMORY[0x1E69DD250]);
      scrollPocketView = v3->_scrollPocketView;
      v3->_scrollPocketView = v33;

      [(UIView *)v3->_scrollPocketView setUserInteractionEnabled:0];
      [(UIView *)v3->_scrollPocketView setTranslatesAutoresizingMaskIntoConstraints:0];
      v35 = v3->_scrollPocketView;
      v36 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithStyle:2];
      [(UIView *)v35 addInteraction:v36];

      [(SFDefaultBrowserPinnedHeaderView *)v3 addSubview:v3->_scrollPocketView];
      v48 = MEMORY[0x1E696ACD8];
      leadingAnchor5 = [(UIView *)v3->_scrollPocketView leadingAnchor];
      leadingAnchor6 = [(SFDefaultBrowserPinnedHeaderView *)v3 leadingAnchor];
      v50 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v62[0] = v50;
      trailingAnchor3 = [(UIView *)v3->_scrollPocketView trailingAnchor];
      trailingAnchor4 = [(SFDefaultBrowserPinnedHeaderView *)v3 trailingAnchor];
      v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v62[1] = v38;
      topAnchor = [(UIView *)v3->_scrollPocketView topAnchor];
      topAnchor2 = [(SFDefaultBrowserPinnedHeaderView *)v3 topAnchor];
      v41 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v62[2] = v41;
      bottomAnchor3 = [(UIView *)v3->_scrollPocketView bottomAnchor];
      bottomAnchor4 = [(SFDefaultBrowserPinnedHeaderView *)v3 bottomAnchor];
      v44 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v62[3] = v44;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:4];
      [v48 activateConstraints:v45];
    }

    v46 = v3;
  }

  return v3;
}

- (void)setLockupView:(id)view
{
  v26[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  lockupView = self->_lockupView;
  if (lockupView != viewCopy)
  {
    [(ASCLockupView *)lockupView removeFromSuperview];
    objc_storeStrong(&self->_lockupView, view);
    if (viewCopy)
    {
      [(ASCLockupView *)self->_lockupView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(ASCLockupView *)self->_lockupView setUserInteractionEnabled:0];
      [(ASCLockupView *)self->_lockupView setMaximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
      [(SFDefaultBrowserPinnedHeaderView *)self addSubview:self->_lockupView];
      layoutMarginsGuide = [(SFDefaultBrowserPinnedHeaderView *)self layoutMarginsGuide];
      v19 = MEMORY[0x1E696ACD8];
      topAnchor = [(ASCLockupView *)self->_lockupView topAnchor];
      topAnchor2 = [layoutMarginsGuide topAnchor];
      v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v26[0] = v22;
      bottomAnchor = [(ASCLockupView *)self->_lockupView bottomAnchor];
      bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
      v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v26[1] = v8;
      leadingAnchor = [(ASCLockupView *)self->_lockupView leadingAnchor];
      trailingAnchor = [(UIButton *)self->_selectionMarkingButton trailingAnchor];
      v11 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:18.0];
      v26[2] = v11;
      trailingAnchor2 = [(ASCLockupView *)self->_lockupView trailingAnchor];
      v25 = layoutMarginsGuide;
      trailingAnchor3 = [layoutMarginsGuide trailingAnchor];
      v14 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
      v26[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
      [v19 activateConstraints:v15];

      [(SFDefaultBrowserPinnedHeaderView *)self setSemanticContentAttribute:3];
      subviews = [(ASCLockupView *)viewCopy subviews];
      firstObject = [subviews firstObject];
      effectiveUserInterfaceLayoutDirection = [firstObject effectiveUserInterfaceLayoutDirection];

      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        [(SFDefaultBrowserPinnedHeaderView *)self setSemanticContentAttribute:4];
      }
    }
  }
}

- (CGSize)intrinsicContentSize
{
  [(SFDefaultBrowserPinnedHeaderView *)self bounds];
  traitCollection = [(SFDefaultBrowserPinnedHeaderView *)self traitCollection];
  ASCLockupViewSizeGetEstimatedSize();
  v5 = v4;
  v7 = v6;

  v8 = fmin(v7, 90.0) + 22.0;
  v9 = v5;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)setPocketContainerInteraction:(id)interaction
{
  interactionCopy = interaction;
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v6 = interactionCopy;
  if (isSolariumEnabled)
  {
    pocketContainerInteraction = self->_pocketContainerInteraction;
    if (pocketContainerInteraction != interactionCopy)
    {
      if (pocketContainerInteraction)
      {
        [(SFDefaultBrowserPinnedHeaderView *)self removeInteraction:?];
      }

      objc_storeStrong(&self->_pocketContainerInteraction, interaction);
      [(SFDefaultBrowserPinnedHeaderView *)self addInteraction:interactionCopy];
      v6 = interactionCopy;
    }
  }
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5.receiver = self;
  v5.super_class = SFDefaultBrowserPinnedHeaderView;
  [(SFDefaultBrowserPinnedHeaderView *)&v5 setHidden:?];
  [(_UIScrollPocketContainerInteraction *)self->_pocketContainerInteraction _setActive:!hiddenCopy];
}

@end
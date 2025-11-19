@interface SFDefaultBrowserPinnedHeaderView
- (CGSize)intrinsicContentSize;
- (SFDefaultBrowserPinnedHeaderView)initWithFrame:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
- (void)setLockupView:(id)a3;
- (void)setPocketContainerInteraction:(id)a3;
@end

@implementation SFDefaultBrowserPinnedHeaderView

- (SFDefaultBrowserPinnedHeaderView)initWithFrame:(CGRect)a3
{
  v64[4] = *MEMORY[0x1E69E9840];
  v61.receiver = self;
  v61.super_class = SFDefaultBrowserPinnedHeaderView;
  v3 = [(SFDefaultBrowserPinnedHeaderView *)&v61 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(SFDefaultBrowserPinnedHeaderView *)v3 setBackgroundColor:v4];

    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [(SFDefaultBrowserPinnedHeaderView *)v3 setBackgroundColor:0];
    }

    else
    {
      v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [(SFDefaultBrowserPinnedHeaderView *)v3 setBackgroundColor:v5];
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
      v12 = [MEMORY[0x1E69DC888] separatorColor];
      [v11 setBackgroundColor:v12];

      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(SFDefaultBrowserPinnedHeaderView *)v3 addSubview:v11];
      v51 = MEMORY[0x1E696ACD8];
      v59 = [v11 leadingAnchor];
      v57 = [(SFDefaultBrowserPinnedHeaderView *)v3 leadingAnchor];
      v55 = [v59 constraintEqualToAnchor:v57];
      v64[0] = v55;
      v53 = [v11 trailingAnchor];
      v13 = [(SFDefaultBrowserPinnedHeaderView *)v3 trailingAnchor];
      v14 = [v53 constraintEqualToAnchor:v13];
      v64[1] = v14;
      v15 = [v11 bottomAnchor];
      v16 = [(SFDefaultBrowserPinnedHeaderView *)v3 bottomAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];
      v64[2] = v17;
      v18 = [v11 heightAnchor];
      v19 = [v18 constraintEqualToConstant:1.0];
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
    v24 = [(SFDefaultBrowserPinnedHeaderView *)v3 layoutMarginsGuide];
    v25 = MEMORY[0x1E696ACD8];
    v26 = [(UIButton *)v3->_selectionMarkingButton leadingAnchor];
    v27 = [v24 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v63[0] = v28;
    v29 = [(UIButton *)v3->_selectionMarkingButton centerYAnchor];
    v56 = v24;
    v30 = [v24 centerYAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
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
      v54 = [(UIView *)v3->_scrollPocketView leadingAnchor];
      v52 = [(SFDefaultBrowserPinnedHeaderView *)v3 leadingAnchor];
      v50 = [v54 constraintEqualToAnchor:v52];
      v62[0] = v50;
      v49 = [(UIView *)v3->_scrollPocketView trailingAnchor];
      v37 = [(SFDefaultBrowserPinnedHeaderView *)v3 trailingAnchor];
      v38 = [v49 constraintEqualToAnchor:v37];
      v62[1] = v38;
      v39 = [(UIView *)v3->_scrollPocketView topAnchor];
      v40 = [(SFDefaultBrowserPinnedHeaderView *)v3 topAnchor];
      v41 = [v39 constraintEqualToAnchor:v40];
      v62[2] = v41;
      v42 = [(UIView *)v3->_scrollPocketView bottomAnchor];
      v43 = [(SFDefaultBrowserPinnedHeaderView *)v3 bottomAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];
      v62[3] = v44;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:4];
      [v48 activateConstraints:v45];
    }

    v46 = v3;
  }

  return v3;
}

- (void)setLockupView:(id)a3
{
  v26[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  lockupView = self->_lockupView;
  if (lockupView != v5)
  {
    [(ASCLockupView *)lockupView removeFromSuperview];
    objc_storeStrong(&self->_lockupView, a3);
    if (v5)
    {
      [(ASCLockupView *)self->_lockupView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(ASCLockupView *)self->_lockupView setUserInteractionEnabled:0];
      [(ASCLockupView *)self->_lockupView setMaximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
      [(SFDefaultBrowserPinnedHeaderView *)self addSubview:self->_lockupView];
      v7 = [(SFDefaultBrowserPinnedHeaderView *)self layoutMarginsGuide];
      v19 = MEMORY[0x1E696ACD8];
      v24 = [(ASCLockupView *)self->_lockupView topAnchor];
      v23 = [v7 topAnchor];
      v22 = [v24 constraintEqualToAnchor:v23];
      v26[0] = v22;
      v21 = [(ASCLockupView *)self->_lockupView bottomAnchor];
      v20 = [v7 bottomAnchor];
      v8 = [v21 constraintEqualToAnchor:v20];
      v26[1] = v8;
      v9 = [(ASCLockupView *)self->_lockupView leadingAnchor];
      v10 = [(UIButton *)self->_selectionMarkingButton trailingAnchor];
      v11 = [v9 constraintEqualToAnchor:v10 constant:18.0];
      v26[2] = v11;
      v12 = [(ASCLockupView *)self->_lockupView trailingAnchor];
      v25 = v7;
      v13 = [v7 trailingAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      v26[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
      [v19 activateConstraints:v15];

      [(SFDefaultBrowserPinnedHeaderView *)self setSemanticContentAttribute:3];
      v16 = [(ASCLockupView *)v5 subviews];
      v17 = [v16 firstObject];
      v18 = [v17 effectiveUserInterfaceLayoutDirection];

      if (v18 == 1)
      {
        [(SFDefaultBrowserPinnedHeaderView *)self setSemanticContentAttribute:4];
      }
    }
  }
}

- (CGSize)intrinsicContentSize
{
  [(SFDefaultBrowserPinnedHeaderView *)self bounds];
  v3 = [(SFDefaultBrowserPinnedHeaderView *)self traitCollection];
  ASCLockupViewSizeGetEstimatedSize();
  v5 = v4;
  v7 = v6;

  v8 = fmin(v7, 90.0) + 22.0;
  v9 = v5;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)setPocketContainerInteraction:(id)a3
{
  v8 = a3;
  v5 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v6 = v8;
  if (v5)
  {
    pocketContainerInteraction = self->_pocketContainerInteraction;
    if (pocketContainerInteraction != v8)
    {
      if (pocketContainerInteraction)
      {
        [(SFDefaultBrowserPinnedHeaderView *)self removeInteraction:?];
      }

      objc_storeStrong(&self->_pocketContainerInteraction, a3);
      [(SFDefaultBrowserPinnedHeaderView *)self addInteraction:v8];
      v6 = v8;
    }
  }
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SFDefaultBrowserPinnedHeaderView;
  [(SFDefaultBrowserPinnedHeaderView *)&v5 setHidden:?];
  [(_UIScrollPocketContainerInteraction *)self->_pocketContainerInteraction _setActive:!v3];
}

@end
@interface SFDefaultBrowserScrollInstructionView
- (SFDefaultBrowserScrollInstructionView)initWithFrame:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
- (void)setPocketContainerInteraction:(id)a3;
@end

@implementation SFDefaultBrowserScrollInstructionView

- (SFDefaultBrowserScrollInstructionView)initWithFrame:(CGRect)a3
{
  v46[4] = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = SFDefaultBrowserScrollInstructionView;
  v3 = [(SFDefaultBrowserScrollInstructionView *)&v44 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(SFDefaultBrowserScrollInstructionView *)v3 setBackgroundColor:v4];

    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [(SFDefaultBrowserScrollInstructionView *)v3 setBackgroundColor:0];
    }

    else
    {
      v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [(SFDefaultBrowserScrollInstructionView *)v3 setBackgroundColor:v5];
    }

    [(SFDefaultBrowserScrollInstructionView *)v3 setHidden:1];
    [(SFDefaultBrowserScrollInstructionView *)v3 layoutMargins];
    [(SFDefaultBrowserScrollInstructionView *)v3 setLayoutMargins:20.0];
    v6 = 0x1E695D000;
    if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
    {
      v7 = objc_alloc(MEMORY[0x1E69DD250]);
      v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v9 = [MEMORY[0x1E69DC888] separatorColor];
      [v8 setBackgroundColor:v9];

      [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(SFDefaultBrowserScrollInstructionView *)v3 addSubview:v8];
      v34 = MEMORY[0x1E696ACD8];
      v42 = [v8 leadingAnchor];
      v40 = [(SFDefaultBrowserScrollInstructionView *)v3 leadingAnchor];
      v38 = [v42 constraintEqualToAnchor:v40];
      v46[0] = v38;
      v36 = [v8 trailingAnchor];
      v10 = [(SFDefaultBrowserScrollInstructionView *)v3 trailingAnchor];
      v11 = [v36 constraintEqualToAnchor:v10];
      v46[1] = v11;
      v12 = [v8 topAnchor];
      v13 = [(SFDefaultBrowserScrollInstructionView *)v3 topAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      v46[2] = v14;
      v15 = [v8 heightAnchor];
      v16 = [v15 constraintEqualToConstant:0.5];
      v46[3] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
      [v34 activateConstraints:v17];

      v6 = 0x1E695D000uLL;
    }

    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v19 = [MEMORY[0x1E69DB878] _sf_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:0 compatibleWithTraitCollection:*MEMORY[0x1E69DB980]];
    [v18 setFont:v19];

    [v18 setNumberOfLines:0];
    v20 = _WBSLocalizedString();
    [v18 setText:v20];

    [v18 setTextAlignment:1];
    v21 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v18 setTextColor:v21];

    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v18 setAdjustsFontForContentSizeCategory:1];
    [v18 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC70]];
    [(SFDefaultBrowserScrollInstructionView *)v3 addSubview:v18];
    v22 = [(SFDefaultBrowserScrollInstructionView *)v3 layoutMarginsGuide];
    v33 = MEMORY[0x1E696ACD8];
    v43 = [v18 topAnchor];
    v41 = [v22 topAnchor];
    v39 = [v43 constraintEqualToAnchor:v41];
    v45[0] = v39;
    v37 = [v18 bottomAnchor];
    v35 = [v22 bottomAnchor];
    v32 = [v37 constraintEqualToAnchor:v35];
    v45[1] = v32;
    v23 = [v18 leadingAnchor];
    v24 = [v22 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v45[2] = v25;
    v26 = [v18 trailingAnchor];
    v27 = [v22 trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v45[3] = v28;
    v29 = [*(v6 + 3784) arrayWithObjects:v45 count:4];
    [v33 activateConstraints:v29];

    v30 = v3;
  }

  return v3;
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
        [(SFDefaultBrowserScrollInstructionView *)self removeInteraction:?];
      }

      objc_storeStrong(&self->_pocketContainerInteraction, a3);
      [(SFDefaultBrowserScrollInstructionView *)self addInteraction:v8];
      v6 = v8;
    }
  }
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SFDefaultBrowserScrollInstructionView;
  [(SFDefaultBrowserScrollInstructionView *)&v5 setHidden:?];
  [(_UIScrollPocketContainerInteraction *)self->_pocketContainerInteraction _setActive:!v3];
}

@end
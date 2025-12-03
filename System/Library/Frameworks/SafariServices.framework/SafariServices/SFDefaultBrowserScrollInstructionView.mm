@interface SFDefaultBrowserScrollInstructionView
- (SFDefaultBrowserScrollInstructionView)initWithFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
- (void)setPocketContainerInteraction:(id)interaction;
@end

@implementation SFDefaultBrowserScrollInstructionView

- (SFDefaultBrowserScrollInstructionView)initWithFrame:(CGRect)frame
{
  v46[4] = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = SFDefaultBrowserScrollInstructionView;
  v3 = [(SFDefaultBrowserScrollInstructionView *)&v44 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(SFDefaultBrowserScrollInstructionView *)v3 setBackgroundColor:systemBackgroundColor];

    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [(SFDefaultBrowserScrollInstructionView *)v3 setBackgroundColor:0];
    }

    else
    {
      systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [(SFDefaultBrowserScrollInstructionView *)v3 setBackgroundColor:systemBackgroundColor2];
    }

    [(SFDefaultBrowserScrollInstructionView *)v3 setHidden:1];
    [(SFDefaultBrowserScrollInstructionView *)v3 layoutMargins];
    [(SFDefaultBrowserScrollInstructionView *)v3 setLayoutMargins:20.0];
    v6 = 0x1E695D000;
    if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
    {
      v7 = objc_alloc(MEMORY[0x1E69DD250]);
      v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      separatorColor = [MEMORY[0x1E69DC888] separatorColor];
      [v8 setBackgroundColor:separatorColor];

      [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(SFDefaultBrowserScrollInstructionView *)v3 addSubview:v8];
      v34 = MEMORY[0x1E696ACD8];
      leadingAnchor = [v8 leadingAnchor];
      leadingAnchor2 = [(SFDefaultBrowserScrollInstructionView *)v3 leadingAnchor];
      v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v46[0] = v38;
      trailingAnchor = [v8 trailingAnchor];
      trailingAnchor2 = [(SFDefaultBrowserScrollInstructionView *)v3 trailingAnchor];
      v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v46[1] = v11;
      topAnchor = [v8 topAnchor];
      topAnchor2 = [(SFDefaultBrowserScrollInstructionView *)v3 topAnchor];
      v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v46[2] = v14;
      heightAnchor = [v8 heightAnchor];
      v16 = [heightAnchor constraintEqualToConstant:0.5];
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
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v18 setTextColor:secondaryLabelColor];

    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v18 setAdjustsFontForContentSizeCategory:1];
    [v18 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC70]];
    [(SFDefaultBrowserScrollInstructionView *)v3 addSubview:v18];
    layoutMarginsGuide = [(SFDefaultBrowserScrollInstructionView *)v3 layoutMarginsGuide];
    v33 = MEMORY[0x1E696ACD8];
    topAnchor3 = [v18 topAnchor];
    topAnchor4 = [layoutMarginsGuide topAnchor];
    v39 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v45[0] = v39;
    bottomAnchor = [v18 bottomAnchor];
    bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
    v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v45[1] = v32;
    leadingAnchor3 = [v18 leadingAnchor];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v25 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v45[2] = v25;
    trailingAnchor3 = [v18 trailingAnchor];
    trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
    v28 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v45[3] = v28;
    v29 = [*(v6 + 3784) arrayWithObjects:v45 count:4];
    [v33 activateConstraints:v29];

    v30 = v3;
  }

  return v3;
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
        [(SFDefaultBrowserScrollInstructionView *)self removeInteraction:?];
      }

      objc_storeStrong(&self->_pocketContainerInteraction, interaction);
      [(SFDefaultBrowserScrollInstructionView *)self addInteraction:interactionCopy];
      v6 = interactionCopy;
    }
  }
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5.receiver = self;
  v5.super_class = SFDefaultBrowserScrollInstructionView;
  [(SFDefaultBrowserScrollInstructionView *)&v5 setHidden:?];
  [(_UIScrollPocketContainerInteraction *)self->_pocketContainerInteraction _setActive:!hiddenCopy];
}

@end
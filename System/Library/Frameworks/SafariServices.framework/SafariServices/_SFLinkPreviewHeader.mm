@interface _SFLinkPreviewHeader
- (CGSize)intrinsicContentSize;
- (_SFLinkPreviewHeaderDelegate)delegate;
- (double)defaultHeight;
- (id)_initWithMinimumPreviewUI:(BOOL)a3 isOnNativeHost:(BOOL)a4;
- (void)displayScaleDidChange;
- (void)fluidProgressViewWillShowProgress:(id)a3;
- (void)layoutSubviews;
- (void)linkPreviewHeaderContentView:(id)a3 didEnableLinkPreview:(BOOL)a4;
- (void)setDomain:(id)a3;
@end

@implementation _SFLinkPreviewHeader

- (id)_initWithMinimumPreviewUI:(BOOL)a3 isOnNativeHost:(BOOL)a4
{
  v55[4] = *MEMORY[0x1E69E9840];
  v52.receiver = self;
  v52.super_class = _SFLinkPreviewHeader;
  v5 = [(_SFLinkPreviewHeader *)&v52 initWithFrame:a3, a4, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    v5[432] = a3;
    v7 = *(MEMORY[0x1E695F050] + 16);
    *(v5 + 440) = *MEMORY[0x1E695F050];
    *(v5 + 456) = v7;
    v8 = objc_alloc_init(MEMORY[0x1E69B1C40]);
    v9 = *(v6 + 62);
    *(v6 + 62) = v8;

    [*(v6 + 62) setDelegate:v6];
    v10 = [MEMORY[0x1E69DC888] sf_safariAccentColor];
    [*(v6 + 62) setProgressBarFillColor:v10];

    [v6 setClipsToBounds:0];
    *(v6 + 59) = 0;
    if ((*(v6 + 432) & 1) == 0)
    {
      v11 = [[SFLinkPreviewHeaderContentView alloc] initWithStyle:*(v6 + 59)];
      v12 = *(v6 + 51);
      *(v6 + 51) = v11;

      [*(v6 + 51) setTranslatesAutoresizingMaskIntoConstraints:0];
      [v6 setLinkPreviewEnabled:1];
      [*(v6 + 51) setDelegate:v6];
      [v6 addSubview:*(v6 + 51)];
      v13 = 0x1E695D000;
      if (!*(v6 + 59))
      {
        v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v15 = *(v6 + 52);
        *(v6 + 52) = v14;

        v16 = [v6 opaqueSeparatorColor];
        [*(v6 + 52) setBackgroundColor:v16];

        [*(v6 + 52) setTranslatesAutoresizingMaskIntoConstraints:0];
        [v6 addSubview:*(v6 + 52)];
        v50 = [*(v6 + 52) layer];
        [v50 setMinificationFilter:*MEMORY[0x1E6979820]];
        [v50 setShouldRasterize:1];
        v17 = [*(v6 + 52) heightAnchor];
        v18 = [v17 constraintEqualToConstant:1.0];
        v19 = *(v6 + 53);
        *(v6 + 53) = v18;

        v42 = MEMORY[0x1E696ACD8];
        v48 = [*(v6 + 52) leadingAnchor];
        v46 = [v6 leadingAnchor];
        v44 = [v48 constraintEqualToAnchor:v46];
        v55[0] = v44;
        v20 = [*(v6 + 52) trailingAnchor];
        v21 = [v6 trailingAnchor];
        v22 = [v20 constraintEqualToAnchor:v21];
        v55[1] = v22;
        v23 = [*(v6 + 52) bottomAnchor];
        v24 = [v6 bottomAnchor];
        v25 = [v23 constraintEqualToAnchor:v24];
        v55[2] = v25;
        v13 = 0x1E695D000uLL;
        v55[3] = *(v6 + 53);
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:4];
        [v42 activateConstraints:v26];

        [v6 displayScaleDidChange];
        v27 = objc_opt_self();
        v54 = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
        v29 = [v6 registerForTraitChanges:v28 withTarget:v6 action:sel_displayScaleDidChange];
      }

      v51 = [*(v6 + 51) leadingAnchor];
      v49 = [v6 leadingAnchor];
      v47 = [v51 constraintEqualToAnchor:v49];
      v53[0] = v47;
      v45 = [*(v6 + 51) trailingAnchor];
      v30 = [v6 trailingAnchor];
      v31 = [v45 constraintEqualToAnchor:v30];
      v53[1] = v31;
      v32 = [*(v6 + 51) topAnchor];
      v33 = [v6 topAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];
      v53[2] = v34;
      v35 = [*(v6 + 51) bottomAnchor];
      v36 = [v6 bottomAnchor];
      v37 = [v35 constraintEqualToAnchor:v36];
      v53[3] = v37;
      v38 = [*(v13 + 3784) arrayWithObjects:v53 count:4];
      [v43 activateConstraints:v38];

      if (!*(v6 + 59))
      {
        v39 = [MEMORY[0x1E69DC888] systemBackgroundColor];
        [v6 setBackgroundColor:v39];
      }
    }

    v40 = v6;
  }

  return v6;
}

- (void)displayScaleDidChange
{
  v3 = [(_SFLinkPreviewHeader *)self traitCollection];
  [v3 displayScale];
  v5 = v4;

  v6 = [(UIView *)self->_hairline layer];
  [v6 setRasterizationScale:v5];

  hairlineHeightConstraint = self->_hairlineHeightConstraint;

  [(NSLayoutConstraint *)hairlineHeightConstraint setConstant:1.0 / v5];
}

- (double)defaultHeight
{
  if (!self->_isMinimumPreviewUI)
  {
    return 44.0;
  }

  [MEMORY[0x1E69B1C40] progressBarHeightWithPreferredStyle:0];
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x1E69DE788];
  [(_SFLinkPreviewHeader *)self defaultHeight];
  v4 = v3;
  v5 = v2;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = _SFLinkPreviewHeader;
  [(_SFLinkPreviewHeader *)&v19 layoutSubviews];
  [(_SFLinkPreviewHeader *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_SFFluidProgressView *)self->_progressView frame];
  v12 = v11;
  rect = v13;
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  Width = CGRectGetWidth(v20);
  [MEMORY[0x1E69B1C40] progressBarHeightWithPreferredStyle:0];
  _SFFloorFloatToPixels();
  v16 = v15;
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  CGRectGetMaxY(v21);
  v22.origin.x = v12;
  v22.origin.y = rect;
  v22.size.width = Width;
  v22.size.height = v16;
  CGRectGetHeight(v22);
  _SFRoundRectToPixels();
  [(_SFFluidProgressView *)self->_progressView setFrame:?];
  [(_SFFluidProgressView *)self->_progressView setCornerRadius:0.0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  if (!CGRectEqualToRect(self->_lastLayoutBounds, v23) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained linkPreviewHeaderBoundsDidChange:self];
  }

  self->_lastLayoutBounds.origin.x = v4;
  self->_lastLayoutBounds.origin.y = v6;
  self->_lastLayoutBounds.size.width = v8;
  self->_lastLayoutBounds.size.height = v10;
}

- (void)setDomain:(id)a3
{
  objc_storeStrong(&self->_domain, a3);
  v5 = a3;
  [(SFLinkPreviewHeaderContentView *)self->_contentView setDomain:v5];
}

- (void)fluidProgressViewWillShowProgress:(id)a3
{
  v4 = [(_SFFluidProgressView *)self->_progressView superview];

  if (v4 != self)
  {
    progressView = self->_progressView;

    [(_SFLinkPreviewHeader *)self addSubview:progressView];
  }
}

- (void)linkPreviewHeaderContentView:(id)a3 didEnableLinkPreview:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained linkPreviewHeader:self didEnableLinkPreview:v4];
  }
}

- (_SFLinkPreviewHeaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
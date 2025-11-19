@interface PUPhotosAssetDebugOverlayView
- (PUPhotosAssetDebugOverlayView)init;
- (PUPhotosAssetDebugOverlayView)initWithClientIdentifier:(id)a3;
- (PUPhotosAssetDebugOverlayView)initWithCoder:(id)a3;
- (PUPhotosAssetDebugOverlayView)initWithFrame:(CGRect)a3;
- (PUPhotosAssetDebugOverlayViewDelegate)delegate;
- (id)_debugDescription;
- (id)_hdrImageTextForCurrentlyDisplayedImage;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_configureButtonImageView;
- (void)_fileRadar;
- (void)_openURL:(id)a3;
- (void)_setupView;
- (void)_toggleInfoOverlay;
- (void)_updateImageDynamicRangeOption:(int64_t)a3;
- (void)_updateInfoLabel;
- (void)_updateInfoOverlayAppearance;
- (void)_updateOverlayButton;
- (void)setDelegate:(id)a3;
- (void)update;
@end

@implementation PUPhotosAssetDebugOverlayView

- (PUPhotosAssetDebugOverlayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PUPhotosAssetDebugOverlayView)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PUPhotosAssetDebugOverlayView.m" lineNumber:519 description:@"initWithCoder is unavailable"];

  return 0;
}

- (PUPhotosAssetDebugOverlayView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PUPhotosAssetDebugOverlayView.m" lineNumber:514 description:@"initWithFrame is unavailable"];

  return 0;
}

- (PUPhotosAssetDebugOverlayView)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUPhotosAssetDebugOverlayView.m" lineNumber:509 description:@"init is unavailable"];

  return 0;
}

- (void)_updateImageDynamicRangeOption:(int64_t)a3
{
  v5 = [(PUPhotosAssetDebugOverlayView *)self delegate];
  [v5 photosAssetDebugOverlayView:self didRequestPreferredImageDynamicRange:a3];
}

- (void)_openURL:(id)a3
{
  v3 = MEMORY[0x1E6963608];
  v4 = a3;
  v5 = [v3 defaultWorkspace];
  [v5 openURL:v4 configuration:0 completionHandler:0];
}

- (void)_fileRadar
{
  v15[5] = *MEMORY[0x1E69E9840];
  v14[0] = @"ComponentName";
  v14[1] = @"Title";
  v15[0] = @"Photos UI Core";
  v15[1] = @"[Photos View Usage] Insert Bug Title";
  v14[2] = @"ComponentID";
  v14[3] = @"Classification";
  v15[2] = @"936635";
  v15[3] = @"Other Bug";
  v14[4] = @"Description";
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PUPhotosAssetDebugOverlayView *)self _debugDescription];
  v5 = [v3 stringWithFormat:@"Photos Asset View Debug Info:\n%@\n\nPlease attach a screenshot.", v4];
  v15[4] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];

  v7 = [MEMORY[0x1E696AF20] componentsWithString:@"tap-to-radar://new"];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__PUPhotosAssetDebugOverlayView__fileRadar__block_invoke;
  v12[3] = &unk_1E83F73B8;
  v13 = v8;
  v9 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v12];
  [v7 setQueryItems:v9];
  v10 = [v7 URL];
  [(PUPhotosAssetDebugOverlayView *)self _openURL:v10];

  v11 = *MEMORY[0x1E69E9840];
}

void __43__PUPhotosAssetDebugOverlayView__fileRadar__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AF60] queryItemWithName:a2 value:a3];
  [v3 addObject:v4];
}

- (void)_toggleInfoOverlay
{
  v3 = [(PUPhotosAssetDebugOverlayView *)self showInfoOverlay]^ 1;

  [(PUPhotosAssetDebugOverlayView *)self setShowInfoOverlay:v3];
}

- (id)_hdrImageTextForCurrentlyDisplayedImage
{
  v3 = [(PUPhotosAssetDebugOverlayView *)self delegate];
  v4 = [v3 photosAssetDebugOverlayViewCurrentlyDisplayedImage:self];

  if (v4)
  {
    if ([v4 isHighDynamicRange])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }
  }

  else
  {
    v5 = @"Unknown";
  }

  return v5;
}

- (id)_debugDescription
{
  v34[2] = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotosAssetDebugOverlayView *)self delegate];
  v4 = [v3 photosAssetDebugOverlayViewPreferredImageDynamicRange:self];

  v5 = MEMORY[0x1E695DF70];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [(PUPhotosAssetDebugOverlayView *)self clientIdentifier];
  v8 = [v6 stringWithFormat:@"Client Identifier: %@", v7];
  v34[0] = v8;
  if ((v4 - 1) > 2)
  {
    v9 = @"Unspecified";
  }

  else
  {
    v9 = off_1E83F73D8[v4 - 1];
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PreferredImageDynamicRange: %@", v9];
  v34[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v12 = [v5 arrayWithArray:v11];

  v13 = [(PUPhotosAssetDebugOverlayView *)self delegate];
  v14 = [v13 photosAssetDebugOverlayViewHasEffectivePreferredImageDynamicRange:self];

  if (v14)
  {
    v15 = [(PUPhotosAssetDebugOverlayView *)self delegate];
    v16 = [v15 photosAssetDebugOverlayViewEffectivePreferredImageDynamicRange:self];

    if ((v16 - 1) > 2)
    {
      v17 = @"Unspecified";
    }

    else
    {
      v17 = off_1E83F73D8[v16 - 1];
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nEffectivePreferredImageDynamicRange: %@", v17];
    [v12 addObject:v18];
  }

  v19 = MEMORY[0x1E696AEC0];
  v20 = [(PUPhotosAssetDebugOverlayView *)self _hdrImageTextForCurrentlyDisplayedImage];
  v21 = [v19 stringWithFormat:@"HDR Decoded Image? %@", v20];
  v33[0] = v21;
  v22 = MEMORY[0x1E696AEC0];
  v23 = MEMORY[0x1E696AD98];
  v24 = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [v24 potentialEDRHeadroom];
  v26 = v25;

  v27 = [v23 numberWithDouble:v26];
  v28 = [v22 stringWithFormat:@"Max EDR: %@", v27];
  v33[1] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  [v12 addObjectsFromArray:v29];

  v30 = [v12 componentsJoinedByString:@"\n"];

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (void)_updateInfoLabel
{
  v3 = MEMORY[0x1E696AEC0];
  v5 = [(PUPhotosAssetDebugOverlayView *)self _debugDescription];
  v4 = [v3 stringWithFormat:@"[INTERNAL ONLY]\n%@", v5];
  [(UILabel *)self->_infoLabel setText:v4];
}

- (void)_updateInfoOverlayAppearance
{
  v38[8] = *MEMORY[0x1E69E9840];
  if (!self->_infoOverlayView && !self->_infoLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    infoOverlayView = self->_infoOverlayView;
    self->_infoOverlayView = v3;

    v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v6 = [v5 colorWithAlphaComponent:0.8];
    [(UIView *)self->_infoOverlayView setBackgroundColor:v6];

    v7 = [(UIView *)self->_infoOverlayView layer];
    [v7 setCornerRadius:8.0];

    [(UIView *)self->_infoOverlayView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUPhotosAssetDebugOverlayView *)self addSubview:self->_infoOverlayView];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(UILabel *)v8 setNumberOfLines:0];
    [(UILabel *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    infoLabel = self->_infoLabel;
    self->_infoLabel = v8;

    [(UIView *)self->_infoOverlayView addSubview:self->_infoLabel];
    v27 = MEMORY[0x1E696ACD8];
    v37 = [(UIView *)self->_infoOverlayView topAnchor];
    v36 = [(PUPhotosAssetDebugOverlayView *)self topAnchor];
    v35 = [v37 constraintEqualToAnchor:v36 constant:10.0];
    v38[0] = v35;
    v34 = [(UIView *)self->_infoOverlayView leadingAnchor];
    v33 = [(PUPhotosAssetDebugOverlayView *)self leadingAnchor];
    v32 = [v34 constraintEqualToAnchor:v33 constant:10.0];
    v38[1] = v32;
    v30 = [(UIView *)self->_infoOverlayView trailingAnchor];
    v31 = [(PUPhotosAssetDebugOverlayView *)self buttonContainerView];
    v29 = [v31 leadingAnchor];
    v28 = [v30 constraintEqualToAnchor:v29 constant:-10.0];
    v38[2] = v28;
    v26 = [(UIView *)self->_infoOverlayView bottomAnchor];
    v25 = [(PUPhotosAssetDebugOverlayView *)self bottomAnchor];
    v24 = [v26 constraintLessThanOrEqualToAnchor:v25 constant:-10.0];
    v38[3] = v24;
    v23 = [(UILabel *)self->_infoLabel topAnchor];
    v22 = [(UIView *)self->_infoOverlayView topAnchor];
    v21 = [v23 constraintEqualToAnchor:v22 constant:10.0];
    v38[4] = v21;
    v20 = [(UILabel *)self->_infoLabel leadingAnchor];
    v19 = [(UIView *)self->_infoOverlayView leadingAnchor];
    v10 = [v20 constraintEqualToAnchor:v19 constant:10.0];
    v38[5] = v10;
    v11 = [(UILabel *)self->_infoLabel trailingAnchor];
    v12 = [(UIView *)self->_infoOverlayView trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:-10.0];
    v38[6] = v13;
    v14 = [(UILabel *)self->_infoLabel bottomAnchor];
    v15 = [(UIView *)self->_infoOverlayView bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:-10.0];
    v38[7] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:8];
    [v27 activateConstraints:v17];
  }

  [(PUPhotosAssetDebugOverlayView *)self _updateInfoLabel];
  [(UIView *)self->_infoOverlayView setHidden:[(PUPhotosAssetDebugOverlayView *)self showInfoOverlay]^ 1];
  v18 = *MEMORY[0x1E69E9840];
}

- (void)_updateOverlayButton
{
  v43 = *MEMORY[0x1E69E9840];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __53__PUPhotosAssetDebugOverlayView__updateOverlayButton__block_invoke;
  v36[3] = &unk_1E83F7340;
  v36[4] = self;
  v3 = [MEMORY[0x1E69DC628] actionWithTitle:@"Toggle Info Overlay" image:0 identifier:0 handler:v36];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __53__PUPhotosAssetDebugOverlayView__updateOverlayButton__block_invoke_2;
  v35[3] = &unk_1E83F7340;
  v35[4] = self;
  v4 = [MEMORY[0x1E69DC628] actionWithTitle:@"File Radar" image:0 identifier:0 handler:v35];
  v5 = MEMORY[0x1E695DF70];
  v41[0] = v3;
  v41[1] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v7 = [v5 arrayWithArray:v6];

  v8 = [(PUPhotosAssetDebugOverlayView *)self delegate];

  v9 = 0x1E69DC000;
  if (v8)
  {
    v27 = v7;
    v28 = v3;
    v10 = [MEMORY[0x1E695DF70] array];
    v11 = [(PUPhotosAssetDebugOverlayView *)self delegate];
    v12 = [v11 photosAssetDebugOverlayViewPreferredImageDynamicRange:self];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v30 = __53__PUPhotosAssetDebugOverlayView__updateOverlayButton__block_invoke_3;
    v31 = &unk_1E83F7390;
    v32 = self;
    v34 = v12;
    v13 = v10;
    v33 = v13;
    v14 = v29;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v15 = [&unk_1F4DABA68 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(&unk_1F4DABA68);
          }

          v19 = [*(*(&v37 + 1) + 8 * i) integerValue];
          v20 = @"Unspecified";
          if ((v19 - 1) <= 2)
          {
            v20 = off_1E83F73D8[v19 - 1];
          }

          v30(v14, v19, v20);
        }

        v16 = [&unk_1F4DABA68 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v16);
    }

    v9 = 0x1E69DC000uLL;
    v21 = [MEMORY[0x1E69DCC60] menuWithTitle:@"Adjust Dynamic Range" children:v13];
    v7 = v27;
    [v27 addObject:v21];

    v3 = v28;
  }

  v22 = [*(v9 + 3168) menuWithTitle:&stru_1F4DA4820 children:v7];
  v23 = [(PUPhotosAssetDebugOverlayView *)self overlayButton];
  [v23 setMenu:v22];

  v24 = [(PUPhotosAssetDebugOverlayView *)self overlayButton];
  [v24 setShowsMenuAsPrimaryAction:1];

  v25 = [(PUPhotosAssetDebugOverlayView *)self overlayButton];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = *MEMORY[0x1E69E9840];
}

void __53__PUPhotosAssetDebugOverlayView__updateOverlayButton__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PUPhotosAssetDebugOverlayView__updateOverlayButton__block_invoke_4;
  v6[3] = &unk_1E83F7368;
  v6[4] = *(a1 + 32);
  v6[5] = a2;
  v5 = [MEMORY[0x1E69DC628] actionWithTitle:a3 image:0 identifier:0 handler:v6];
  [v5 setState:*(a1 + 48) == a2];
  [*(a1 + 40) addObject:v5];
}

- (void)_configureButtonImageView
{
  v3 = [MEMORY[0x1E69DC888] systemGrayColor];
  v4 = [(PUPhotosAssetDebugOverlayView *)self buttonImageView];
  [v4 setTintColor:v3];

  v5 = [(PUPhotosAssetDebugOverlayView *)self buttonImageView];
  [v5 setClipsToBounds:1];

  v6 = [(PUPhotosAssetDebugOverlayView *)self buttonImageView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(PUPhotosAssetDebugOverlayView *)self update];
    v5 = obj;
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = PUPhotosAssetDebugOverlayView;
  v5 = [(PUPhotosAssetDebugOverlayView *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

- (void)update
{
  [(PUPhotosAssetDebugOverlayView *)self _updateInfoLabel];

  [(PUPhotosAssetDebugOverlayView *)self _updateOverlayButton];
}

- (void)_setupView
{
  v55[12] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [(PUPhotosAssetDebugOverlayView *)self setBackgroundColor:v3];

  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(UIView *)v4 setBackgroundColor:v5];

  v6 = [(UIView *)v4 layer];
  [v6 setCornerRadius:8.0];

  [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  buttonContainerView = self->_buttonContainerView;
  self->_buttonContainerView = v4;

  [(PUPhotosAssetDebugOverlayView *)self addSubview:self->_buttonContainerView];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ant.circle.fill"];
  v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
  v10 = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UIView *)v9 setTintColor:v10];

  [(UIView *)v9 setClipsToBounds:1];
  buttonImageView = self->_buttonImageView;
  self->_buttonImageView = v9;

  [(PUPhotosAssetDebugOverlayView *)self _configureButtonImageView];
  [(UIView *)self->_buttonContainerView addSubview:self->_buttonImageView];
  v12 = objc_alloc_init(MEMORY[0x1E69DC738]);
  overlayButton = self->_overlayButton;
  self->_overlayButton = v12;

  [(PUPhotosAssetDebugOverlayView *)self _updateOverlayButton];
  [(UIView *)self->_buttonContainerView addSubview:self->_overlayButton];
  v14 = [(UIView *)self->_buttonContainerView widthAnchor];
  v15 = [(PUPhotosAssetDebugOverlayView *)self widthAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 multiplier:0.1];

  LODWORD(v17) = 1132068864;
  v49 = v16;
  [v16 setPriority:v17];
  v41 = MEMORY[0x1E696ACD8];
  v54 = [(UIView *)self->_buttonContainerView topAnchor];
  v53 = [(PUPhotosAssetDebugOverlayView *)self topAnchor];
  v52 = [v54 constraintEqualToAnchor:v53 constant:10.0];
  v55[0] = v52;
  v51 = [(UIView *)self->_buttonContainerView trailingAnchor];
  v50 = [(PUPhotosAssetDebugOverlayView *)self trailingAnchor];
  v48 = [v51 constraintEqualToAnchor:v50 constant:-10.0];
  v55[1] = v48;
  v47 = [(UIView *)self->_buttonContainerView heightAnchor];
  v46 = [(UIView *)self->_buttonContainerView widthAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v55[2] = v45;
  v55[3] = v16;
  v44 = [(UIView *)self->_buttonImageView topAnchor];
  v43 = [(UIView *)self->_buttonContainerView topAnchor];
  v42 = [v44 constraintEqualToAnchor:v43 constant:10.0];
  v55[4] = v42;
  v40 = [(UIView *)self->_buttonImageView bottomAnchor];
  v39 = [(UIView *)self->_buttonContainerView bottomAnchor];
  v38 = [v40 constraintEqualToAnchor:v39 constant:-10.0];
  v55[5] = v38;
  v37 = [(UIView *)self->_buttonImageView leadingAnchor];
  v36 = [(UIView *)self->_buttonContainerView leadingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36 constant:10.0];
  v55[6] = v35;
  v34 = [(UIView *)self->_buttonImageView trailingAnchor];
  v33 = [(UIView *)self->_buttonContainerView trailingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33 constant:-10.0];
  v55[7] = v32;
  v31 = [(UIButton *)self->_overlayButton topAnchor];
  v30 = [(UIView *)self->_buttonContainerView topAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v55[8] = v29;
  v18 = [(UIButton *)self->_overlayButton bottomAnchor];
  v19 = [(UIView *)self->_buttonContainerView bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v55[9] = v20;
  v21 = [(UIButton *)self->_overlayButton leadingAnchor];
  v22 = [(UIView *)self->_buttonContainerView leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  v55[10] = v23;
  v24 = [(UIButton *)self->_overlayButton trailingAnchor];
  v25 = [(UIView *)self->_buttonContainerView trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  v55[11] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:12];
  [v41 activateConstraints:v27];

  v28 = *MEMORY[0x1E69E9840];
}

- (PUPhotosAssetDebugOverlayView)initWithClientIdentifier:(id)a3
{
  v5 = a3;
  if (PUPhotosAssetViewShowDebugOverlayView())
  {
    v10.receiver = self;
    v10.super_class = PUPhotosAssetDebugOverlayView;
    v6 = [(PUPhotosAssetDebugOverlayView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_clientIdentifier, a3);
      [(PUPhotosAssetDebugOverlayView *)v7 _setupView];
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
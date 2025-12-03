@interface MFComposeSendAccessoryButton
+ (id)buttonWithType:(int64_t)type;
- (id)_pointerShapeForTargetedPreview:(id)preview;
- (id)_preview;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MFComposeSendAccessoryButton

+ (id)buttonWithType:(int64_t)type
{
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___MFComposeSendAccessoryButton;
  v3 = objc_msgSendSuper2(&v13, sel_buttonWithType_, type);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.circle.fill"];
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v6 = [MEMORY[0x1E69DCAB8] mf_symbolConfigurationForView:15];
  [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v6];

  [plainButtonConfiguration setImage:v4];
  [plainButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  background = [plainButtonConfiguration background];
  [background setBackgroundColor:clearColor];

  [v3 setConfiguration:plainButtonConfiguration];
  [v3 setLargeContentImage:v4];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SEND" value:&stru_1F3CF3758 table:@"Main"];
  [v3 setLargeContentTitle:v10];

  [v3 setShowsLargeContentViewer:1];
  [v3 setScalesLargeContentImage:1];
  [v3 setAccessibilityIdentifier:*MEMORY[0x1E69ADB90]];
  v11 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v3];
  [v3 addInteraction:v11];

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = MFComposeSendAccessoryButton;
  [(MFComposeSendAccessoryButton *)&v10 traitCollectionDidChange:changeCopy];
  if (!changeCopy || (-[MFComposeSendAccessoryButton traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 userInterfaceStyle], v7 = objc_msgSend(changeCopy, "userInterfaceStyle"), v5, v6 != v7))
  {
    window = [(MFComposeSendAccessoryButton *)self window];
    tintColor = [window tintColor];
    [(MFComposeSendAccessoryButton *)self setTintColor:tintColor];
  }
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [(MFComposeSendAccessoryButton *)self _preview:interaction];
  v6 = [MEMORY[0x1E69DCDB8] effectWithPreview:v5];
  v7 = [(MFComposeSendAccessoryButton *)self _pointerShapeForTargetedPreview:v5];
  v8 = [MEMORY[0x1E69DCDD0] styleWithEffect:v6 shape:v7];

  return v8;
}

- (id)_preview
{
  window = [(MFComposeSendAccessoryButton *)self window];
  if (window)
  {
    [(MFComposeSendAccessoryButton *)self bounds];
    UIRectGetCenter();
    [(MFComposeSendAccessoryButton *)self convertPoint:window toView:?];
    v6 = [objc_alloc(MEMORY[0x1E69DCE38]) initWithContainer:window center:{v4, v5}];
    v7 = objc_alloc_init(MEMORY[0x1E69DCE28]);
    v8 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self parameters:v7 target:v6];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self];
  }

  return v8;
}

- (id)_pointerShapeForTargetedPreview:(id)preview
{
  previewCopy = preview;
  [(MFComposeSendAccessoryButton *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  target = [previewCopy target];
  container = [target container];
  [(MFComposeSendAccessoryButton *)self convertRect:container toView:v6, v8, v10, v12];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v28.origin.x = v16;
  v28.origin.y = v18;
  v28.size.width = v20;
  v28.size.height = v22;
  Width = CGRectGetWidth(v28);
  v29.origin.x = v16;
  v29.origin.y = v18;
  v29.size.width = v20;
  v29.size.height = v22;
  Height = CGRectGetHeight(v29);
  if (Width >= Height)
  {
    Height = Width;
  }

  v25 = [MEMORY[0x1E69DCDC8] shapeWithRoundedRect:v16 cornerRadius:{v18, v20, v22, Height * 0.5}];

  return v25;
}

@end
@interface AEMessagesShelfRoundButton
+ (CGSize)intrinsicContentSizeForStyle:(int64_t)style;
+ (CGSize)preferredTapRegionSizeForStyle:(int64_t)style;
+ (id)_imageForStyle:(int64_t)style;
+ (id)_materialButtonForStyle:(int64_t)style;
+ (id)roundButtonWithStyle:(int64_t)style;
+ (id)workaround_roundButtonWithStyle:(int64_t)style;
- (void)_commonAEMessagesRoundButtonInitializationWithStyle:(int64_t)style;
@end

@implementation AEMessagesShelfRoundButton

- (void)_commonAEMessagesRoundButtonInitializationWithStyle:(int64_t)style
{
  v10 = [objc_opt_class() _imageForStyle:style];
  [AEMessagesShelfRoundButton setImage:"setImage:forState:" forState:?];
  [objc_opt_class() intrinsicContentSizeForStyle:style];
  if ((style - 1) <= 1)
  {
    v6 = v5;
    imageView = [(AEMessagesShelfRoundButton *)self imageView];
    layer = [imageView layer];
    [layer setCornerRadius:v6 * 0.5];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [imageView setBackgroundColor:whiteColor];
  }
}

+ (CGSize)intrinsicContentSizeForStyle:(int64_t)style
{
  if ((style - 1) >= 2)
  {
    if (style)
    {
      v3 = *MEMORY[0x277CBF3A8];
      v4 = *(MEMORY[0x277CBF3A8] + 8);
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__AEMessagesShelfRoundButton_intrinsicContentSizeForStyle___block_invoke;
      block[3] = &__block_descriptor_48_e5_v8__0l;
      block[4] = self;
      block[5] = 0;
      if (intrinsicContentSizeForStyle__onceToken != -1)
      {
        dispatch_once(&intrinsicContentSizeForStyle__onceToken, block);
      }

      v3 = *&intrinsicContentSizeForStyle__imageSize_0;
      v4 = *&intrinsicContentSizeForStyle__imageSize_1;
    }
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __59__AEMessagesShelfRoundButton_intrinsicContentSizeForStyle___block_invoke_2;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = self;
    v5[5] = style;
    if (intrinsicContentSizeForStyle__onceToken_17 != -1)
    {
      dispatch_once(&intrinsicContentSizeForStyle__onceToken_17, v5);
    }

    v3 = *&intrinsicContentSizeForStyle__imageSize_16_0 + -2.0;
    v4 = *&intrinsicContentSizeForStyle__imageSize_16_1 + -2.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

void __59__AEMessagesShelfRoundButton_intrinsicContentSizeForStyle___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _materialButtonForStyle:*(a1 + 40)];
  [v3 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  intrinsicContentSizeForStyle__imageSize_0 = v1;
  intrinsicContentSizeForStyle__imageSize_1 = v2;
}

void __59__AEMessagesShelfRoundButton_intrinsicContentSizeForStyle___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) _imageForStyle:*(a1 + 40)];
  [v3 size];
  intrinsicContentSizeForStyle__imageSize_16_0 = v1;
  intrinsicContentSizeForStyle__imageSize_16_1 = v2;
}

+ (CGSize)preferredTapRegionSizeForStyle:(int64_t)style
{
  v3 = 20.0;
  v4 = 20.0;
  result.height = v4;
  result.width = v3;
  return result;
}

+ (id)_imageForStyle:(int64_t)style
{
  switch(style)
  {
    case 2:
      v8 = MEMORY[0x277D755B8];
      v3 = AssetExplorerBundle();
      v6 = [v8 imageNamed:@"share-iris-off" inBundle:v3];
      blackColor = [MEMORY[0x277D75348] blackColor];
      goto LABEL_7;
    case 1:
      v5 = MEMORY[0x277D755B8];
      v3 = AssetExplorerBundle();
      v6 = [v5 imageNamed:@"share-iris-on" inBundle:v3];
      blackColor = [MEMORY[0x277D75348] systemBlueColor];
LABEL_7:
      v9 = blackColor;
      v4 = [v6 _flatImageWithColor:blackColor];

      goto LABEL_8;
    case 0:
      v3 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:2 scale:10.0];
      v4 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark" withConfiguration:v3];
LABEL_8:

      goto LABEL_10;
  }

  v4 = 0;
LABEL_10:

  return v4;
}

+ (id)_materialButtonForStyle:(int64_t)style
{
  v11 = *MEMORY[0x277D85DE8];
  if (style)
  {
    v4 = PXAssertGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      styleCopy = style;
      _os_log_error_impl(&dword_2411DE000, v4, OS_LOG_TYPE_ERROR, "Attempted to create material button for unsupported style: %lu", &v9, 0xCu);
    }

    closeButton = 0;
  }

  else
  {
    closeButton = [MEMORY[0x277CF97D0] closeButton];
    [closeButton sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    [closeButton setCornerRadius:v6 * 0.5];
  }

  v7 = *MEMORY[0x277D85DE8];

  return closeButton;
}

+ (id)workaround_roundButtonWithStyle:(int64_t)style
{
  if (style == 2)
  {
    v4 = [AEMessagesShelfRoundButton buttonWithType:0];
    v3 = v4;
    v5 = 2;
    goto LABEL_7;
  }

  if (style == 1)
  {
    v4 = [AEMessagesShelfRoundButton buttonWithType:0];
    v3 = v4;
    v5 = 1;
LABEL_7:
    [v4 _commonAEMessagesRoundButtonInitializationWithStyle:v5];
    goto LABEL_9;
  }

  if (style)
  {
    v3 = 0;
  }

  else
  {
    v3 = [self _materialButtonForStyle:?];
  }

LABEL_9:

  return v3;
}

+ (id)roundButtonWithStyle:(int64_t)style
{
  if (style)
  {
    v3 = [self workaround_roundButtonWithStyle:?];
  }

  else
  {
    filledButtonConfiguration = [MEMORY[0x277D75230] filledButtonConfiguration];
    [filledButtonConfiguration setButtonSize:2];
    lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
    [filledButtonConfiguration setBaseBackgroundColor:lightGrayColor];

    v6 = MEMORY[0x277D755D0];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v8 = [v6 configurationWithHierarchicalColor:whiteColor];

    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle" withConfiguration:v8];
    [filledButtonConfiguration setImage:v9];
    v3 = [AEMessagesShelfRoundButton buttonWithConfiguration:filledButtonConfiguration primaryAction:0];
  }

  return v3;
}

@end
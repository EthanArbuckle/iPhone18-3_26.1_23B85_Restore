@interface AEMessagesShelfRoundButton
+ (CGSize)intrinsicContentSizeForStyle:(int64_t)a3;
+ (CGSize)preferredTapRegionSizeForStyle:(int64_t)a3;
+ (id)_imageForStyle:(int64_t)a3;
+ (id)_materialButtonForStyle:(int64_t)a3;
+ (id)roundButtonWithStyle:(int64_t)a3;
+ (id)workaround_roundButtonWithStyle:(int64_t)a3;
- (void)_commonAEMessagesRoundButtonInitializationWithStyle:(int64_t)a3;
@end

@implementation AEMessagesShelfRoundButton

- (void)_commonAEMessagesRoundButtonInitializationWithStyle:(int64_t)a3
{
  v10 = [objc_opt_class() _imageForStyle:a3];
  [AEMessagesShelfRoundButton setImage:"setImage:forState:" forState:?];
  [objc_opt_class() intrinsicContentSizeForStyle:a3];
  if ((a3 - 1) <= 1)
  {
    v6 = v5;
    v7 = [(AEMessagesShelfRoundButton *)self imageView];
    v8 = [v7 layer];
    [v8 setCornerRadius:v6 * 0.5];

    v9 = [MEMORY[0x277D75348] whiteColor];
    [v7 setBackgroundColor:v9];
  }
}

+ (CGSize)intrinsicContentSizeForStyle:(int64_t)a3
{
  if ((a3 - 1) >= 2)
  {
    if (a3)
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
      block[4] = a1;
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
    v5[4] = a1;
    v5[5] = a3;
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

+ (CGSize)preferredTapRegionSizeForStyle:(int64_t)a3
{
  v3 = 20.0;
  v4 = 20.0;
  result.height = v4;
  result.width = v3;
  return result;
}

+ (id)_imageForStyle:(int64_t)a3
{
  switch(a3)
  {
    case 2:
      v8 = MEMORY[0x277D755B8];
      v3 = AssetExplorerBundle();
      v6 = [v8 imageNamed:@"share-iris-off" inBundle:v3];
      v7 = [MEMORY[0x277D75348] blackColor];
      goto LABEL_7;
    case 1:
      v5 = MEMORY[0x277D755B8];
      v3 = AssetExplorerBundle();
      v6 = [v5 imageNamed:@"share-iris-on" inBundle:v3];
      v7 = [MEMORY[0x277D75348] systemBlueColor];
LABEL_7:
      v9 = v7;
      v4 = [v6 _flatImageWithColor:v7];

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

+ (id)_materialButtonForStyle:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = PXAssertGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      v10 = a3;
      _os_log_error_impl(&dword_2411DE000, v4, OS_LOG_TYPE_ERROR, "Attempted to create material button for unsupported style: %lu", &v9, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CF97D0] closeButton];
    [v5 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    [v5 setCornerRadius:v6 * 0.5];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)workaround_roundButtonWithStyle:(int64_t)a3
{
  if (a3 == 2)
  {
    v4 = [AEMessagesShelfRoundButton buttonWithType:0];
    v3 = v4;
    v5 = 2;
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v4 = [AEMessagesShelfRoundButton buttonWithType:0];
    v3 = v4;
    v5 = 1;
LABEL_7:
    [v4 _commonAEMessagesRoundButtonInitializationWithStyle:v5];
    goto LABEL_9;
  }

  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [a1 _materialButtonForStyle:?];
  }

LABEL_9:

  return v3;
}

+ (id)roundButtonWithStyle:(int64_t)a3
{
  if (a3)
  {
    v3 = [a1 workaround_roundButtonWithStyle:?];
  }

  else
  {
    v4 = [MEMORY[0x277D75230] filledButtonConfiguration];
    [v4 setButtonSize:2];
    v5 = [MEMORY[0x277D75348] lightGrayColor];
    [v4 setBaseBackgroundColor:v5];

    v6 = MEMORY[0x277D755D0];
    v7 = [MEMORY[0x277D75348] whiteColor];
    v8 = [v6 configurationWithHierarchicalColor:v7];

    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle" withConfiguration:v8];
    [v4 setImage:v9];
    v3 = [AEMessagesShelfRoundButton buttonWithConfiguration:v4 primaryAction:0];
  }

  return v3;
}

@end
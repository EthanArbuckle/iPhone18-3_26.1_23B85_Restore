@interface UIColor(MessageUI)
+ (id)mailQuoteColorLevelOne;
+ (id)mailQuoteColorLevelThree;
+ (id)mailQuoteColorLevelTwo;
+ (id)mailQuoteColorsForInterfaceStyle:()MessageUI;
+ (id)mf_colorNamed:()MessageUI;
+ (id)quoteColorsForSupportedInterfaceStyle;
+ (uint64_t)mailPopoverBackgroundCellColor;
+ (uint64_t)mailQuickComposeBackgroundColor;
+ (uint64_t)mailQuoteColorLevelOneCorona;
+ (uint64_t)mailQuoteColorLevelThreeCorona;
+ (uint64_t)mailQuoteColorLevelTwoCorona;
- (double)mf_contrastRatioTo:()MessageUI;
- (double)mf_luminance;
@end

@implementation UIColor(MessageUI)

+ (id)mf_colorNamed:()MessageUI
{
  v3 = a3;
  v4 = MEMORY[0x1E69DC888];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.messageui"];
  v6 = [v4 colorNamed:v3 inBundle:v5 compatibleWithTraitCollection:0];

  return v6;
}

+ (uint64_t)mailQuickComposeBackgroundColor
{
  v0 = objc_opt_class();

  return [v0 mf_colorNamed:@"mailQuickComposeBackgroundColor"];
}

+ (uint64_t)mailQuoteColorLevelOneCorona
{
  v0 = objc_opt_class();

  return [v0 mf_colorNamed:@"QuoteColorPurpleCorona"];
}

+ (uint64_t)mailQuoteColorLevelTwoCorona
{
  v0 = objc_opt_class();

  return [v0 mf_colorNamed:@"QuoteColorTealCorona"];
}

+ (uint64_t)mailQuoteColorLevelThreeCorona
{
  v0 = objc_opt_class();

  return [v0 mf_colorNamed:@"QuoteColorGreenCorona"];
}

+ (id)mailQuoteColorLevelOne
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__UIColor_MessageUI__mailQuoteColorLevelOne__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (mailQuoteColorLevelOne_onceToken != -1)
  {
    dispatch_once(&mailQuoteColorLevelOne_onceToken, block);
  }

  v1 = mailQuoteColorLevelOne_sInstance;

  return v1;
}

+ (id)mailQuoteColorLevelTwo
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__UIColor_MessageUI__mailQuoteColorLevelTwo__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (mailQuoteColorLevelTwo_onceToken != -1)
  {
    dispatch_once(&mailQuoteColorLevelTwo_onceToken, block);
  }

  v1 = mailQuoteColorLevelTwo_sInstance;

  return v1;
}

+ (id)mailQuoteColorLevelThree
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__UIColor_MessageUI__mailQuoteColorLevelThree__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (mailQuoteColorLevelThree_onceToken != -1)
  {
    dispatch_once(&mailQuoteColorLevelThree_onceToken, block);
  }

  v1 = mailQuoteColorLevelThree_sInstance;

  return v1;
}

+ (id)quoteColorsForSupportedInterfaceStyle
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F3D161D0;
  v0 = [MEMORY[0x1E69DC888] mailQuoteColorsForInterfaceStyle:1];
  v4[1] = &unk_1F3D161E8;
  v5[0] = v0;
  v1 = [MEMORY[0x1E69DC888] mailQuoteColorsForInterfaceStyle:2];
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

+ (id)mailQuoteColorsForInterfaceStyle:()MessageUI
{
  v10[3] = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    if (a3 != 2)
    {
      v7 = 0;
      goto LABEL_7;
    }

    mailQuoteColorLevelOneCorona = [MEMORY[0x1E69DC888] mailQuoteColorLevelOneCorona];
    v9[0] = mailQuoteColorLevelOneCorona;
    mailQuoteColorLevelTwoCorona = [MEMORY[0x1E69DC888] mailQuoteColorLevelTwoCorona];
    v9[1] = mailQuoteColorLevelTwoCorona;
    mailQuoteColorLevelThreeCorona = [MEMORY[0x1E69DC888] mailQuoteColorLevelThreeCorona];
    v9[2] = mailQuoteColorLevelThreeCorona;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  }

  else
  {
    mailQuoteColorLevelOneCorona = [MEMORY[0x1E69DC888] mailQuoteColorLevelOne];
    v10[0] = mailQuoteColorLevelOneCorona;
    mailQuoteColorLevelTwoCorona = [MEMORY[0x1E69DC888] mailQuoteColorLevelTwo];
    v10[1] = mailQuoteColorLevelTwoCorona;
    mailQuoteColorLevelThreeCorona = [MEMORY[0x1E69DC888] mailQuoteColorLevelThree];
    v10[2] = mailQuoteColorLevelThreeCorona;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  }

  v7 = v6;

LABEL_7:

  return v7;
}

+ (uint64_t)mailPopoverBackgroundCellColor
{
  v0 = objc_opt_class();

  return [v0 mf_colorNamed:@"mailPopoverBackgroundCellColor"];
}

- (double)mf_luminance
{
  v1 = [MEMORY[0x1E695F610] colorWithCGColor:{objc_msgSend(self, "CGColor")}];
  [v1 red];
  if (v2 >= 0.03928)
  {
    v3 = pow((v2 + 0.055) / 1.055, 2.4);
  }

  else
  {
    v3 = v2 / 12.92;
  }

  [v1 green];
  if (v4 >= 0.03928)
  {
    v5 = pow((v4 + 0.055) / 1.055, 2.4);
  }

  else
  {
    v5 = v4 / 12.92;
  }

  [v1 blue];
  if (v6 >= 0.03928)
  {
    v7 = pow((v6 + 0.055) / 1.055, 2.4);
  }

  else
  {
    v7 = v6 / 12.92;
  }

  v8 = v5 * 0.7152 + v3 * 0.2126 + v7 * 0.0722;

  return v8;
}

- (double)mf_contrastRatioTo:()MessageUI
{
  v4 = a3;
  [self mf_luminance];
  v6 = v5;
  [v4 mf_luminance];
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v6 >= v7)
  {
    v7 = v6;
  }

  v9 = (v7 + 0.05) / (v8 + 0.05);

  return v9;
}

@end
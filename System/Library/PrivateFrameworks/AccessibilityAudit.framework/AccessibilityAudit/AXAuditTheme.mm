@interface AXAuditTheme
+ (id)sharedTheme;
- (double)borderWidthForHighlightStyle:(unint64_t)style;
- (id)backgroundColorForHighlightStyle:(unint64_t)style;
- (id)borderColorForHighlightStyle:(unint64_t)style;
@end

@implementation AXAuditTheme

+ (id)sharedTheme
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__AXAuditTheme_sharedTheme__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedTheme_onceToken != -1)
  {
    dispatch_once(&sharedTheme_onceToken, block);
  }

  v2 = sharedTheme_instance;

  return v2;
}

uint64_t __27__AXAuditTheme_sharedTheme__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedTheme_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)backgroundColorForHighlightStyle:(unint64_t)style
{
  systemGreenColor2 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.75];
  if (style > 3)
  {
    switch(style)
    {
      case 4uLL:
        v7 = MEMORY[0x277D75348];
        v9 = 0.682352941;
        v11 = 0.7;
        v8 = 1.0;
        v10 = 0.0;
        break;
      case 5uLL:
        v7 = MEMORY[0x277D75348];
        v8 = 0.698039216;
        v10 = 0.498039216;
        v9 = 1.0;
        v11 = 0.5;
        break;
      case 6uLL:
        v7 = MEMORY[0x277D75348];
        v8 = 0.0;
        v9 = 0.0;
        v10 = 0.0;
        v11 = 0.0;
        break;
      default:
        goto LABEL_14;
    }

    v6 = [v7 colorWithRed:v8 green:v9 blue:v10 alpha:v11];
  }

  else if (style - 1 >= 2)
  {
    if (style != 3)
    {
      goto LABEL_14;
    }

    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
    v6 = [systemGreenColor colorWithAlphaComponent:0.2];

    systemGreenColor2 = systemGreenColor;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] colorWithRed:0.298039216 green:0.850980392 blue:0.392156863 alpha:0.25];

    systemGreenColor2 = [MEMORY[0x277D75348] systemGreenColor];
    v6 = [systemGreenColor2 colorWithAlphaComponent:0.1];
  }

  systemGreenColor2 = v6;
LABEL_14:

  return systemGreenColor2;
}

- (id)borderColorForHighlightStyle:(unint64_t)style
{
  v4 = [MEMORY[0x277D75348] colorWithRed:0.0 green:1.0 blue:0.0 alpha:0.75];
  if (style > 3)
  {
    switch(style)
    {
      case 4uLL:
        v7 = MEMORY[0x277D75348];
        v9 = 0.4;
        v8 = 0.0;
        v10 = 0.0;
        break;
      case 5uLL:
        v7 = MEMORY[0x277D75348];
        v8 = 0.0;
        v10 = 0.0;
        v9 = 0.0;
        break;
      case 6uLL:
        v7 = MEMORY[0x277D75348];
        v8 = 0.298039216;
        v9 = 0.4;
        v10 = 0.298039216;
        break;
      default:
        goto LABEL_12;
    }

    v6 = [v7 colorWithRed:v8 green:v10 blue:0.0 alpha:v9];
  }

  else
  {
    if (style - 1 >= 3)
    {
      goto LABEL_12;
    }

    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
    v6 = [systemGreenColor colorWithAlphaComponent:0.4];

    v4 = systemGreenColor;
  }

  v4 = v6;
LABEL_12:

  return v4;
}

- (double)borderWidthForHighlightStyle:(unint64_t)style
{
  result = 1.0;
  if (style - 3 <= 3)
  {
    return dbl_23D725CA8[style - 3];
  }

  return result;
}

@end
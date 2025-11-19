@interface ASCSemanticColor
+ (id)artworkBorder;
+ (id)artworkPlaceholder;
+ (id)artworkSymbolTint;
+ (id)loading;
+ (uint64_t)primaryLabel;
+ (uint64_t)secondaryLabel;
+ (uint64_t)tint;
@end

@implementation ASCSemanticColor

+ (uint64_t)tint
{
  objc_opt_self();
  v0 = MEMORY[0x277D75348];

  return [v0 systemBlueColor];
}

+ (uint64_t)primaryLabel
{
  objc_opt_self();
  v0 = MEMORY[0x277D75348];

  return [v0 labelColor];
}

+ (uint64_t)secondaryLabel
{
  objc_opt_self();
  v0 = MEMORY[0x277D75348];

  return [v0 secondaryLabelColor];
}

+ (id)artworkPlaceholder
{
  objc_opt_self();
  if (artworkPlaceholder_onceToken != -1)
  {
    +[ASCSemanticColor artworkPlaceholder];
  }

  v0 = artworkPlaceholder_defaultPlaceholderColor;

  return v0;
}

void __38__ASCSemanticColor_artworkPlaceholder__block_invoke()
{
  v0 = MEMORY[0x277D75348];
  v4 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  v1 = [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
  v2 = [v0 asc_colorWithLightColor:v4 darkColor:v1];
  v3 = artworkPlaceholder_defaultPlaceholderColor;
  artworkPlaceholder_defaultPlaceholderColor = v2;
}

+ (id)artworkBorder
{
  objc_opt_self();
  if (artworkBorder_onceToken != -1)
  {
    +[ASCSemanticColor artworkBorder];
  }

  v0 = artworkBorder_borderColor;

  return v0;
}

void __33__ASCSemanticColor_artworkBorder__block_invoke()
{
  v0 = MEMORY[0x277D75348];
  v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.08];
  v1 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.08];
  v2 = [v0 asc_colorWithLightColor:v4 darkColor:v1];
  v3 = artworkBorder_borderColor;
  artworkBorder_borderColor = v2;
}

+ (id)artworkSymbolTint
{
  objc_opt_self();
  if (artworkSymbolTint_onceToken != -1)
  {
    +[ASCSemanticColor artworkSymbolTint];
  }

  v0 = artworkSymbolTint_symbolTintColor;

  return v0;
}

void __37__ASCSemanticColor_artworkSymbolTint__block_invoke()
{
  v0 = MEMORY[0x277D75348];
  v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.32];
  v1 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.32];
  v2 = [v0 asc_colorWithLightColor:v4 darkColor:v1];
  v3 = artworkSymbolTint_symbolTintColor;
  artworkSymbolTint_symbolTintColor = v2;
}

+ (id)loading
{
  objc_opt_self();

  return +[ASCSemanticColor artworkPlaceholder];
}

@end
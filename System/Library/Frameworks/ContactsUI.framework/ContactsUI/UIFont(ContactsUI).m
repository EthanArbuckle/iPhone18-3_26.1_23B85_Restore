@interface UIFont(ContactsUI)
+ (id)caseSensitiveAttributes;
+ (id)cnui_bodyFont;
+ (id)cnui_bodyFontWithCaseSensitiveAttributes;
+ (id)cnui_footnoteFont;
- (id)withCaseSensitiveAttributes;
@end

@implementation UIFont(ContactsUI)

- (id)withCaseSensitiveAttributes
{
  v1 = [a1 fontDescriptor];
  v2 = [MEMORY[0x1E69DB878] caseSensitiveAttributes];
  v3 = [v1 fontDescriptorByAddingAttributes:v2];

  v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];

  return v4;
}

+ (id)caseSensitiveAttributes
{
  if (caseSensitiveAttributes_onceToken != -1)
  {
    dispatch_once(&caseSensitiveAttributes_onceToken, &__block_literal_global_3_37336);
  }

  v1 = caseSensitiveAttributes_attributes;

  return v1;
}

+ (id)cnui_bodyFontWithCaseSensitiveAttributes
{
  if (cnui_bodyFontWithCaseSensitiveAttributes_onceToken != -1)
  {
    dispatch_once(&cnui_bodyFontWithCaseSensitiveAttributes_onceToken, &__block_literal_global_37341);
  }

  v1 = cnui_bodyFontWithCaseSensitiveAttributes_caseSensitiveBodyFont;

  return v1;
}

+ (id)cnui_footnoteFont
{
  v0 = MEMORY[0x1E69DB878];
  v1 = [MEMORY[0x1E69DB880] cnui_footnoteFontDescriptor];
  v2 = [v0 fontWithDescriptor:v1 size:0.0];

  return v2;
}

+ (id)cnui_bodyFont
{
  v0 = MEMORY[0x1E69DB878];
  v1 = [MEMORY[0x1E69DB880] cnui_bodyFontDescriptor];
  v2 = [v0 fontWithDescriptor:v1 size:0.0];

  return v2;
}

@end
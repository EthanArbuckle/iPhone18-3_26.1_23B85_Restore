@interface UIFont
@end

@implementation UIFont

void __45__UIFont_ContactsUI__caseSensitiveAttributes__block_invoke()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69DB8B0];
  v0 = *MEMORY[0x1E69DB900];
  v5[0] = *MEMORY[0x1E69DB908];
  v5[1] = v0;
  v6[0] = &unk_1F0D4B5F8;
  v6[1] = &unk_1F0D4B610;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v7 = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = caseSensitiveAttributes_attributes;
  caseSensitiveAttributes_attributes = v3;
}

void __62__UIFont_ContactsUI__cnui_bodyFontWithCaseSensitiveAttributes__block_invoke()
{
  v2 = [MEMORY[0x1E69DB878] cnui_bodyFont];
  v0 = [v2 withCaseSensitiveAttributes];
  v1 = cnui_bodyFontWithCaseSensitiveAttributes_caseSensitiveBodyFont;
  cnui_bodyFontWithCaseSensitiveAttributes_caseSensitiveBodyFont = v0;
}

@end
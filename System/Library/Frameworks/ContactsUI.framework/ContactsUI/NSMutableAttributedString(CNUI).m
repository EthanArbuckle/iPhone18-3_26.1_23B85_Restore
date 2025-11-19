@interface NSMutableAttributedString(CNUI)
- (void)cnui_appendTaglineString:()CNUI;
- (void)cnui_appendTaglineString:()CNUI uppercased:;
- (void)cnui_appendTaglineString:()CNUI withFont:uppercased:;
@end

@implementation NSMutableAttributedString(CNUI)

- (void)cnui_appendTaglineString:()CNUI withFont:uppercased:
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v10 = [v8 localizedUppercaseString];
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  v12 = objc_alloc(MEMORY[0x1E696AAB0]);
  v24 = *MEMORY[0x1E69DB648];
  v13 = v24;
  v25[0] = v9;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v15 = [v12 initWithString:v11 attributes:v14];

  v16 = objc_alloc(MEMORY[0x1E696AAB0]);
  v17 = CNContactsUIBundle();
  v18 = [v17 localizedStringForKey:@"CARD_TAGLINE_SEPARATOR" value:&stru_1F0CE7398 table:@"Localized"];
  v22 = v13;
  v19 = +[CNUIFontRepository contactCardStaticHeaderDefaultTaglineFont];
  v23 = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v21 = [v16 initWithString:v18 attributes:v20];

  if ([a1 length])
  {
    [a1 appendAttributedString:v21];
  }

  [a1 appendAttributedString:v15];
}

- (void)cnui_appendTaglineString:()CNUI uppercased:
{
  v6 = a3;
  v7 = +[CNUIFontRepository contactCardStaticHeaderDefaultTaglineFont];
  [a1 cnui_appendTaglineString:v6 withFont:v7 uppercased:a4];
}

- (void)cnui_appendTaglineString:()CNUI
{
  v4 = a3;
  v5 = +[CNUIFontRepository contactCardStaticHeaderDefaultTaglineFont];
  [a1 cnui_appendTaglineString:v4 withFont:v5];
}

@end
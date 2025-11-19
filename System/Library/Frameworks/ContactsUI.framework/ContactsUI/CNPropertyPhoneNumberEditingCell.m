@interface CNPropertyPhoneNumberEditingCell
- ($2D5244856AF9E1E8B69CCC3B68B54C41)suggestionsForString:(id)a3 inputIndex:(unsigned int)a4;
- (CNPropertyPhoneNumberEditingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation CNPropertyPhoneNumberEditingCell

- ($2D5244856AF9E1E8B69CCC3B68B54C41)suggestionsForString:(id)a3 inputIndex:(unsigned int)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 hasPrefix:@"tel:"])
  {
    v6 = [v5 substringFromIndex:{objc_msgSend(@"tel:", "length")}];

    v5 = [v6 stringByRemovingPercentEncoding];
  }

  v7 = [MEMORY[0x1E69967B0] defaultCountryCode];
  v8 = [(NSArray *)self->_previousValue firstObject];
  v9 = _PNCopyFormattedNumberSuggestionForDigitsWithCountry();

  v10 = [v9 stringByReplacingOccurrencesOfString:@" " withString:@" "];
  v11 = v10;
  if (v10)
  {
    v16[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [(CNPropertyPhoneNumberEditingCell *)self setPreviousValue:v12];

    v13 = [(CNPropertyPhoneNumberEditingCell *)self previousValue];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = 0;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (CNPropertyPhoneNumberEditingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = CNPropertyPhoneNumberEditingCell;
  v4 = [(CNPropertyEditingCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = [(CNPropertySimpleEditingCell *)v4 textField];
  v6 = [v5 textInputTraits];
  [v6 setContentsIsSingleValue:1];

  v7 = [(CNPropertySimpleEditingCell *)v4 textField];
  [v7 setTextSuggestionDelegate:v4];

  return v4;
}

@end
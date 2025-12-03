@interface CNPropertyPhoneNumberEditingCell
- ($2D5244856AF9E1E8B69CCC3B68B54C41)suggestionsForString:(id)string inputIndex:(unsigned int)index;
- (CNPropertyPhoneNumberEditingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation CNPropertyPhoneNumberEditingCell

- ($2D5244856AF9E1E8B69CCC3B68B54C41)suggestionsForString:(id)string inputIndex:(unsigned int)index
{
  v16[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if ([stringCopy hasPrefix:@"tel:"])
  {
    v6 = [stringCopy substringFromIndex:{objc_msgSend(@"tel:", "length")}];

    stringCopy = [v6 stringByRemovingPercentEncoding];
  }

  defaultCountryCode = [MEMORY[0x1E69967B0] defaultCountryCode];
  firstObject = [(NSArray *)self->_previousValue firstObject];
  v9 = _PNCopyFormattedNumberSuggestionForDigitsWithCountry();

  v10 = [v9 stringByReplacingOccurrencesOfString:@" " withString:@" "];
  v11 = v10;
  if (v10)
  {
    v16[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [(CNPropertyPhoneNumberEditingCell *)self setPreviousValue:v12];

    previousValue = [(CNPropertyPhoneNumberEditingCell *)self previousValue];
  }

  else
  {
    previousValue = 0;
  }

  v14 = previousValue;
  v15 = 0;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (CNPropertyPhoneNumberEditingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = CNPropertyPhoneNumberEditingCell;
  v4 = [(CNPropertyEditingCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  textField = [(CNPropertySimpleEditingCell *)v4 textField];
  textInputTraits = [textField textInputTraits];
  [textInputTraits setContentsIsSingleValue:1];

  textField2 = [(CNPropertySimpleEditingCell *)v4 textField];
  [textField2 setTextSuggestionDelegate:v4];

  return v4;
}

@end
@interface SFSingleCreditCardData
- (SFSingleCreditCardData)initWithCoder:(id)coder;
- (SFSingleCreditCardData)initWithHeaderText:(id)text displayText:(id)displayText type:(int64_t)type value:(id)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSingleCreditCardData

- (SFSingleCreditCardData)initWithHeaderText:(id)text displayText:(id)displayText type:(int64_t)type value:(id)value
{
  textCopy = text;
  displayTextCopy = displayText;
  v17.receiver = self;
  v17.super_class = SFSingleCreditCardData;
  v13 = [(WBSSingleCreditCardData *)&v17 initWithValue:value type:type];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_headerText, text);
    objc_storeStrong(&v14->_displayText, displayText);
    v15 = v14;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFSingleCreditCardData;
  coderCopy = coder;
  [(WBSSingleCreditCardData *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_headerText forKey:{@"headerText", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_displayText forKey:@"displayText"];
}

- (SFSingleCreditCardData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SFSingleCreditCardData;
  v5 = [(WBSSingleCreditCardData *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"headerText"];
    headerText = v5->_headerText;
    v5->_headerText = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayText"];
    displayText = v5->_displayText;
    v5->_displayText = v8;

    v10 = v5;
  }

  return v5;
}

@end
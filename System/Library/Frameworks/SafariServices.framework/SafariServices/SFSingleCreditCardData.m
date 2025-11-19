@interface SFSingleCreditCardData
- (SFSingleCreditCardData)initWithCoder:(id)a3;
- (SFSingleCreditCardData)initWithHeaderText:(id)a3 displayText:(id)a4 type:(int64_t)a5 value:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSingleCreditCardData

- (SFSingleCreditCardData)initWithHeaderText:(id)a3 displayText:(id)a4 type:(int64_t)a5 value:(id)a6
{
  v11 = a3;
  v12 = a4;
  v17.receiver = self;
  v17.super_class = SFSingleCreditCardData;
  v13 = [(WBSSingleCreditCardData *)&v17 initWithValue:a6 type:a5];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_headerText, a3);
    objc_storeStrong(&v14->_displayText, a4);
    v15 = v14;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFSingleCreditCardData;
  v4 = a3;
  [(WBSSingleCreditCardData *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_headerText forKey:{@"headerText", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_displayText forKey:@"displayText"];
}

- (SFSingleCreditCardData)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFSingleCreditCardData;
  v5 = [(WBSSingleCreditCardData *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"headerText"];
    headerText = v5->_headerText;
    v5->_headerText = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayText"];
    displayText = v5->_displayText;
    v5->_displayText = v8;

    v10 = v5;
  }

  return v5;
}

@end
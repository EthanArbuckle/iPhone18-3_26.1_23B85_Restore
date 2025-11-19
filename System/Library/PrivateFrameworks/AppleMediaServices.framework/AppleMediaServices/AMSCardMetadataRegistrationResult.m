@interface AMSCardMetadataRegistrationResult
- (AMSCardMetadataRegistrationResult)init;
- (AMSCardMetadataRegistrationResult)initWithCardArtwork:(id)a3 cardType:(int64_t)a4 descriptionLong:(id)a5 descriptionShort:(id)a6 paymentNetwork:(int64_t)a7 serialNumber:(id)a8 suffix:(id)a9;
- (NSDictionary)dictionary;
@end

@implementation AMSCardMetadataRegistrationResult

- (AMSCardMetadataRegistrationResult)init
{
  v3.receiver = self;
  v3.super_class = AMSCardMetadataRegistrationResult;
  return [(AMSCardMetadataRegistrationResult *)&v3 init];
}

- (AMSCardMetadataRegistrationResult)initWithCardArtwork:(id)a3 cardType:(int64_t)a4 descriptionLong:(id)a5 descriptionShort:(id)a6 paymentNetwork:(int64_t)a7 serialNumber:(id)a8 suffix:(id)a9
{
  v23 = a3;
  v22 = a5;
  v15 = a6;
  v16 = a8;
  v17 = a9;
  v24.receiver = self;
  v24.super_class = AMSCardMetadataRegistrationResult;
  v18 = [(AMSCardMetadataRegistrationResult *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_cardArtwork, a3);
    v19->_cardType = a4;
    objc_storeStrong(&v19->_descriptionLong, a5);
    objc_storeStrong(&v19->_descriptionShort, a6);
    v19->_paymentNetwork = a7;
    objc_storeStrong(&v19->_serialNumber, a8);
    objc_storeStrong(&v19->_suffix, a9);
  }

  return v19;
}

- (NSDictionary)dictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(AMSCardMetadataRegistrationResult *)self cardArtwork];

  if (v4)
  {
    v5 = [(AMSCardMetadataRegistrationResult *)self cardArtwork];
    [v3 setObject:v5 forKeyedSubscript:@"cardArtwork"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSCardMetadataRegistrationResult cardType](self, "cardType")}];
  [v3 setObject:v6 forKeyedSubscript:@"cardType"];

  v7 = [(AMSCardMetadataRegistrationResult *)self descriptionLong];

  if (v7)
  {
    v8 = [(AMSCardMetadataRegistrationResult *)self descriptionLong];
    [v3 setObject:v8 forKeyedSubscript:@"descriptionLong"];
  }

  v9 = [(AMSCardMetadataRegistrationResult *)self descriptionShort];

  if (v9)
  {
    v10 = [(AMSCardMetadataRegistrationResult *)self descriptionShort];
    [v3 setObject:v10 forKeyedSubscript:@"descriptionShort"];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSCardMetadataRegistrationResult paymentNetwork](self, "paymentNetwork")}];
  [v3 setObject:v11 forKeyedSubscript:@"paymentNetwork"];

  v12 = [(AMSCardMetadataRegistrationResult *)self serialNumber];

  if (v12)
  {
    v13 = [(AMSCardMetadataRegistrationResult *)self serialNumber];
    [v3 setObject:v13 forKeyedSubscript:@"serialNumber"];
  }

  v14 = [(AMSCardMetadataRegistrationResult *)self suffix];

  if (v14)
  {
    v15 = [(AMSCardMetadataRegistrationResult *)self suffix];
    [v3 setObject:v15 forKeyedSubscript:@"suffix"];
  }

  v16 = [v3 copy];

  return v16;
}

@end
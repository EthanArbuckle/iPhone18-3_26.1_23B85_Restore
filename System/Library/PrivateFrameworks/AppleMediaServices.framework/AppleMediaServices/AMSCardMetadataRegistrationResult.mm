@interface AMSCardMetadataRegistrationResult
- (AMSCardMetadataRegistrationResult)init;
- (AMSCardMetadataRegistrationResult)initWithCardArtwork:(id)artwork cardType:(int64_t)type descriptionLong:(id)long descriptionShort:(id)short paymentNetwork:(int64_t)network serialNumber:(id)number suffix:(id)suffix;
- (NSDictionary)dictionary;
@end

@implementation AMSCardMetadataRegistrationResult

- (AMSCardMetadataRegistrationResult)init
{
  v3.receiver = self;
  v3.super_class = AMSCardMetadataRegistrationResult;
  return [(AMSCardMetadataRegistrationResult *)&v3 init];
}

- (AMSCardMetadataRegistrationResult)initWithCardArtwork:(id)artwork cardType:(int64_t)type descriptionLong:(id)long descriptionShort:(id)short paymentNetwork:(int64_t)network serialNumber:(id)number suffix:(id)suffix
{
  artworkCopy = artwork;
  longCopy = long;
  shortCopy = short;
  numberCopy = number;
  suffixCopy = suffix;
  v24.receiver = self;
  v24.super_class = AMSCardMetadataRegistrationResult;
  v18 = [(AMSCardMetadataRegistrationResult *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_cardArtwork, artwork);
    v19->_cardType = type;
    objc_storeStrong(&v19->_descriptionLong, long);
    objc_storeStrong(&v19->_descriptionShort, short);
    v19->_paymentNetwork = network;
    objc_storeStrong(&v19->_serialNumber, number);
    objc_storeStrong(&v19->_suffix, suffix);
  }

  return v19;
}

- (NSDictionary)dictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cardArtwork = [(AMSCardMetadataRegistrationResult *)self cardArtwork];

  if (cardArtwork)
  {
    cardArtwork2 = [(AMSCardMetadataRegistrationResult *)self cardArtwork];
    [v3 setObject:cardArtwork2 forKeyedSubscript:@"cardArtwork"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSCardMetadataRegistrationResult cardType](self, "cardType")}];
  [v3 setObject:v6 forKeyedSubscript:@"cardType"];

  descriptionLong = [(AMSCardMetadataRegistrationResult *)self descriptionLong];

  if (descriptionLong)
  {
    descriptionLong2 = [(AMSCardMetadataRegistrationResult *)self descriptionLong];
    [v3 setObject:descriptionLong2 forKeyedSubscript:@"descriptionLong"];
  }

  descriptionShort = [(AMSCardMetadataRegistrationResult *)self descriptionShort];

  if (descriptionShort)
  {
    descriptionShort2 = [(AMSCardMetadataRegistrationResult *)self descriptionShort];
    [v3 setObject:descriptionShort2 forKeyedSubscript:@"descriptionShort"];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSCardMetadataRegistrationResult paymentNetwork](self, "paymentNetwork")}];
  [v3 setObject:v11 forKeyedSubscript:@"paymentNetwork"];

  serialNumber = [(AMSCardMetadataRegistrationResult *)self serialNumber];

  if (serialNumber)
  {
    serialNumber2 = [(AMSCardMetadataRegistrationResult *)self serialNumber];
    [v3 setObject:serialNumber2 forKeyedSubscript:@"serialNumber"];
  }

  suffix = [(AMSCardMetadataRegistrationResult *)self suffix];

  if (suffix)
  {
    suffix2 = [(AMSCardMetadataRegistrationResult *)self suffix];
    [v3 setObject:suffix2 forKeyedSubscript:@"suffix"];
  }

  v16 = [v3 copy];

  return v16;
}

@end
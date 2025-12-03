@interface AMSMarketingItemAction
- (AMSBuyParams)buyParams;
- (AMSMarketingItemAction)initWithDictionary:(id)dictionary;
- (BOOL)isDefault;
- (BOOL)isFamily;
- (BOOL)isRecommended;
- (NSArray)serviceComponents;
- (NSNumber)price;
- (NSNumber)priceDiff;
- (NSString)callToActionLabel;
- (NSString)disclaimerText;
- (NSString)offerID;
- (NSString)priceDiffForDisplay;
- (NSString)priceForDisplay;
- (NSString)type;
- (NSString)valuePropDetail;
- (NSString)valuePropInfo;
- (NSURL)url;
- (id)_serviceComponentsFromMap:(id)map withNames:(id)names;
- (id)_serviceNames;
- (id)_servicesData;
@end

@implementation AMSMarketingItemAction

- (AMSMarketingItemAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = AMSMarketingItemAction;
  v6 = [(AMSMarketingItemAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawValues, dictionary);
  }

  return v7;
}

- (AMSBuyParams)buyParams
{
  rawValues = [(AMSMarketingItemAction *)self rawValues];
  v3 = [rawValues objectForKeyedSubscript:qword_1F0719CE8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [[AMSBuyParams alloc] initWithString:v4];

  return v5;
}

- (NSString)callToActionLabel
{
  rawValues = [(AMSMarketingItemAction *)self rawValues];
  v3 = [rawValues objectForKeyedSubscript:qword_1F0719CF0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)disclaimerText
{
  rawValues = [(AMSMarketingItemAction *)self rawValues];
  v3 = [rawValues objectForKeyedSubscript:qword_1F0719CF8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isDefault
{
  rawValues = [(AMSMarketingItemAction *)self rawValues];
  v3 = [rawValues objectForKeyedSubscript:qword_1F0719D00];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (BOOL)isFamily
{
  rawValues = [(AMSMarketingItemAction *)self rawValues];
  v3 = [rawValues objectForKeyedSubscript:qword_1F0719D08];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (BOOL)isRecommended
{
  rawValues = [(AMSMarketingItemAction *)self rawValues];
  v3 = [rawValues objectForKeyedSubscript:qword_1F0719D10];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (NSString)offerID
{
  rawValues = [(AMSMarketingItemAction *)self rawValues];
  v3 = [rawValues objectForKeyedSubscript:qword_1F0719D20];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSNumber)price
{
  rawValues = [(AMSMarketingItemAction *)self rawValues];
  v3 = [rawValues valueForKeyPath:qword_1F0719D28];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSNumber)priceDiff
{
  rawValues = [(AMSMarketingItemAction *)self rawValues];
  v3 = [rawValues valueForKeyPath:qword_1F0719D30];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)priceDiffForDisplay
{
  rawValues = [(AMSMarketingItemAction *)self rawValues];
  v3 = [rawValues valueForKeyPath:qword_1F0719D38];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)priceForDisplay
{
  rawValues = [(AMSMarketingItemAction *)self rawValues];
  v3 = [rawValues valueForKeyPath:qword_1F0719D40];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)serviceComponents
{
  _serviceNames = [(AMSMarketingItemAction *)self _serviceNames];
  _servicesData = [(AMSMarketingItemAction *)self _servicesData];
  v5 = _servicesData;
  v6 = 0;
  if (_serviceNames && _servicesData)
  {
    v6 = [(AMSMarketingItemAction *)self _serviceComponentsFromMap:_servicesData withNames:_serviceNames];
  }

  return v6;
}

- (NSString)type
{
  rawValues = [(AMSMarketingItemAction *)self rawValues];
  v3 = [rawValues objectForKeyedSubscript:qword_1F0719D18];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)url
{
  rawValues = [(AMSMarketingItemAction *)self rawValues];
  v3 = [rawValues objectForKeyedSubscript:qword_1F0719D50];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;

    if (v4)
    {
      v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
      goto LABEL_6;
    }
  }

  else
  {

    v4 = 0;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (NSString)valuePropDetail
{
  rawValues = [(AMSMarketingItemAction *)self rawValues];
  v3 = [rawValues valueForKeyPath:qword_1F0719D58];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)valuePropInfo
{
  rawValues = [(AMSMarketingItemAction *)self rawValues];
  v3 = [rawValues valueForKeyPath:qword_1F0719D60];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_servicesData
{
  rawValues = [(AMSMarketingItemAction *)self rawValues];
  v3 = [rawValues objectForKeyedSubscript:qword_1F0719C90];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_serviceNames
{
  rawValues = [(AMSMarketingItemAction *)self rawValues];
  v3 = [rawValues objectForKeyedSubscript:qword_1F0719D48];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_serviceComponentsFromMap:(id)map withNames:(id)names
{
  mapCopy = map;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__AMSMarketingItemAction__serviceComponentsFromMap_withNames___block_invoke;
  v9[3] = &unk_1E73B8C00;
  v10 = mapCopy;
  v6 = mapCopy;
  v7 = [names ams_mapWithTransformIgnoresNil:v9];

  return v7;
}

AMSMarketingItemActionComponent *__62__AMSMarketingItemAction__serviceComponentsFromMap_withNames___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v2)
  {
    v3 = [[AMSMarketingItemActionComponent alloc] initWithDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end
@interface AMSMarketingItemAction
- (AMSBuyParams)buyParams;
- (AMSMarketingItemAction)initWithDictionary:(id)a3;
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
- (id)_serviceComponentsFromMap:(id)a3 withNames:(id)a4;
- (id)_serviceNames;
- (id)_servicesData;
@end

@implementation AMSMarketingItemAction

- (AMSMarketingItemAction)initWithDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSMarketingItemAction;
  v6 = [(AMSMarketingItemAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawValues, a3);
  }

  return v7;
}

- (AMSBuyParams)buyParams
{
  v2 = [(AMSMarketingItemAction *)self rawValues];
  v3 = [v2 objectForKeyedSubscript:qword_1F0719CE8];

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
  v2 = [(AMSMarketingItemAction *)self rawValues];
  v3 = [v2 objectForKeyedSubscript:qword_1F0719CF0];

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
  v2 = [(AMSMarketingItemAction *)self rawValues];
  v3 = [v2 objectForKeyedSubscript:qword_1F0719CF8];

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
  v2 = [(AMSMarketingItemAction *)self rawValues];
  v3 = [v2 objectForKeyedSubscript:qword_1F0719D00];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 BOOLValue];
  return v5;
}

- (BOOL)isFamily
{
  v2 = [(AMSMarketingItemAction *)self rawValues];
  v3 = [v2 objectForKeyedSubscript:qword_1F0719D08];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 BOOLValue];
  return v5;
}

- (BOOL)isRecommended
{
  v2 = [(AMSMarketingItemAction *)self rawValues];
  v3 = [v2 objectForKeyedSubscript:qword_1F0719D10];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 BOOLValue];
  return v5;
}

- (NSString)offerID
{
  v2 = [(AMSMarketingItemAction *)self rawValues];
  v3 = [v2 objectForKeyedSubscript:qword_1F0719D20];

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
  v2 = [(AMSMarketingItemAction *)self rawValues];
  v3 = [v2 valueForKeyPath:qword_1F0719D28];

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
  v2 = [(AMSMarketingItemAction *)self rawValues];
  v3 = [v2 valueForKeyPath:qword_1F0719D30];

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
  v2 = [(AMSMarketingItemAction *)self rawValues];
  v3 = [v2 valueForKeyPath:qword_1F0719D38];

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
  v2 = [(AMSMarketingItemAction *)self rawValues];
  v3 = [v2 valueForKeyPath:qword_1F0719D40];

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
  v3 = [(AMSMarketingItemAction *)self _serviceNames];
  v4 = [(AMSMarketingItemAction *)self _servicesData];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v6 = [(AMSMarketingItemAction *)self _serviceComponentsFromMap:v4 withNames:v3];
  }

  return v6;
}

- (NSString)type
{
  v2 = [(AMSMarketingItemAction *)self rawValues];
  v3 = [v2 objectForKeyedSubscript:qword_1F0719D18];

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
  v2 = [(AMSMarketingItemAction *)self rawValues];
  v3 = [v2 objectForKeyedSubscript:qword_1F0719D50];

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
  v2 = [(AMSMarketingItemAction *)self rawValues];
  v3 = [v2 valueForKeyPath:qword_1F0719D58];

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
  v2 = [(AMSMarketingItemAction *)self rawValues];
  v3 = [v2 valueForKeyPath:qword_1F0719D60];

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
  v2 = [(AMSMarketingItemAction *)self rawValues];
  v3 = [v2 objectForKeyedSubscript:qword_1F0719C90];

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
  v2 = [(AMSMarketingItemAction *)self rawValues];
  v3 = [v2 objectForKeyedSubscript:qword_1F0719D48];

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

- (id)_serviceComponentsFromMap:(id)a3 withNames:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__AMSMarketingItemAction__serviceComponentsFromMap_withNames___block_invoke;
  v9[3] = &unk_1E73B8C00;
  v10 = v5;
  v6 = v5;
  v7 = [a4 ams_mapWithTransformIgnoresNil:v9];

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
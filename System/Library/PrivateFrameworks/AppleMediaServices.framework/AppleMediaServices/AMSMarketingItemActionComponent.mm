@interface AMSMarketingItemActionComponent
- (AMSMarketingItemActionComponent)initWithDictionary:(id)a3;
- (NSString)description;
- (NSURL)artworkURL;
@end

@implementation AMSMarketingItemActionComponent

- (AMSMarketingItemActionComponent)initWithDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSMarketingItemActionComponent;
  v6 = [(AMSMarketingItemActionComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawValues, a3);
  }

  return v7;
}

- (NSString)description
{
  v2 = [(AMSMarketingItemActionComponent *)self rawValues];
  v3 = [v2 objectForKeyedSubscript:qword_1F0719D88];

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

- (NSURL)artworkURL
{
  v2 = [(AMSMarketingItemActionComponent *)self rawValues];
  v3 = [v2 objectForKeyedSubscript:qword_1F0719D90];

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

@end
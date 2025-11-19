@interface HKFeatureIdentifierAndContext
- (BOOL)isEqual:(id)a3;
- (HKFeatureIdentifierAndContext)initWithFeatureIdentifier:(id)a3 context:(id)a4;
@end

@implementation HKFeatureIdentifierAndContext

- (HKFeatureIdentifierAndContext)initWithFeatureIdentifier:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKFeatureIdentifierAndContext;
  v9 = [(HKFeatureIdentifierAndContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureIdentifier, a3);
    objc_storeStrong(&v10->_context, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([(NSString *)self->_featureIdentifier isEqualToString:v5[1]])
    {
      v6 = [(NSString *)self->_context isEqualToString:v5[2]];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
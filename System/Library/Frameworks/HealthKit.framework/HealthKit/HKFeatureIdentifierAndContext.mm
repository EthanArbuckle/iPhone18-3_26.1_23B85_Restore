@interface HKFeatureIdentifierAndContext
- (BOOL)isEqual:(id)equal;
- (HKFeatureIdentifierAndContext)initWithFeatureIdentifier:(id)identifier context:(id)context;
@end

@implementation HKFeatureIdentifierAndContext

- (HKFeatureIdentifierAndContext)initWithFeatureIdentifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = HKFeatureIdentifierAndContext;
  v9 = [(HKFeatureIdentifierAndContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureIdentifier, identifier);
    objc_storeStrong(&v10->_context, context);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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
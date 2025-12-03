@interface HKFeatureAvailabilityContextConstraint
+ (id)allContexts;
+ (id)onlySomeContexts:(id)contexts;
- (HKFeatureAvailabilityContextConstraint)initWithAcceptsContext:(id)context;
@end

@implementation HKFeatureAvailabilityContextConstraint

- (HKFeatureAvailabilityContextConstraint)initWithAcceptsContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityContextConstraint;
  v5 = [(HKFeatureAvailabilityContextConstraint *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(contextCopy);
    acceptsContext = v5->_acceptsContext;
    v5->_acceptsContext = v6;
  }

  return v5;
}

+ (id)allContexts
{
  v2 = [[self alloc] initWithAcceptsContext:&__block_literal_global_11];

  return v2;
}

+ (id)onlySomeContexts:(id)contexts
{
  contextsCopy = contexts;
  v5 = [self alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__HKFeatureAvailabilityContextConstraint_onlySomeContexts___block_invoke;
  v9[3] = &unk_1E7379C80;
  v10 = contextsCopy;
  v6 = contextsCopy;
  v7 = [v5 initWithAcceptsContext:v9];

  return v7;
}

@end
@interface HKFeatureAvailabilityContextConstraint
+ (id)allContexts;
+ (id)onlySomeContexts:(id)a3;
- (HKFeatureAvailabilityContextConstraint)initWithAcceptsContext:(id)a3;
@end

@implementation HKFeatureAvailabilityContextConstraint

- (HKFeatureAvailabilityContextConstraint)initWithAcceptsContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityContextConstraint;
  v5 = [(HKFeatureAvailabilityContextConstraint *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    acceptsContext = v5->_acceptsContext;
    v5->_acceptsContext = v6;
  }

  return v5;
}

+ (id)allContexts
{
  v2 = [[a1 alloc] initWithAcceptsContext:&__block_literal_global_11];

  return v2;
}

+ (id)onlySomeContexts:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__HKFeatureAvailabilityContextConstraint_onlySomeContexts___block_invoke;
  v9[3] = &unk_1E7379C80;
  v10 = v4;
  v6 = v4;
  v7 = [v5 initWithAcceptsContext:v9];

  return v7;
}

@end
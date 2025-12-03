@interface IMTraitCollectionConfigurationPredicate
+ (id)predicateWithTraitCollection:(id)collection;
- (BOOL)evaluateWithContext:(id)context;
@end

@implementation IMTraitCollectionConfigurationPredicate

+ (id)predicateWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = objc_alloc_init(IMTraitCollectionConfigurationPredicate);
  [(IMTraitCollectionConfigurationPredicate *)v4 setTraitCollection:collectionCopy];

  return v4;
}

- (BOOL)evaluateWithContext:(id)context
{
  traitCollection = [context traitCollection];
  traitCollection2 = [(IMTraitCollectionConfigurationPredicate *)self traitCollection];
  v6 = [traitCollection containsTraitsInCollection:traitCollection2];

  return v6;
}

@end
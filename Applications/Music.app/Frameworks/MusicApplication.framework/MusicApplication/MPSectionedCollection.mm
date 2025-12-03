@interface MPSectionedCollection
+ (id)withModelObject:(id)object;
@end

@implementation MPSectionedCollection

+ (id)withModelObject:(id)object
{
  objectCopy = object;
  v4 = static MPSectionedCollection.withModelObject(_:)(objectCopy);

  return v4;
}

@end
@interface MTAppCoreSpotlightEntityAnnotator
- (MTAppCoreSpotlightEntityAnnotator)init;
- (id)annotateItem:(id)item withManagedObject:(id)object;
@end

@implementation MTAppCoreSpotlightEntityAnnotator

- (id)annotateItem:(id)item withManagedObject:(id)object
{
  itemCopy = item;
  objectCopy = object;
  selfCopy = self;
  sub_10000A890(objectCopy, &v10);
  if (v11)
  {
    sub_10000ABEC(&v10, v12);
    sub_10000AC04(v12, v12[3]);
    sub_10000AE98();

    sub_10000AC48(v12);
  }

  else
  {

    sub_10000AAD8(&v10);
  }

  return itemCopy;
}

- (MTAppCoreSpotlightEntityAnnotator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppCoreSpotlightEntityAnnotator();
  return [(MTAppCoreSpotlightEntityAnnotator *)&v3 init];
}

@end
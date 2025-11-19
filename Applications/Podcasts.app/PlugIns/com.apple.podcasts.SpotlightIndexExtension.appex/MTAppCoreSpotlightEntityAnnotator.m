@interface MTAppCoreSpotlightEntityAnnotator
- (MTAppCoreSpotlightEntityAnnotator)init;
- (id)annotateItem:(id)a3 withManagedObject:(id)a4;
@end

@implementation MTAppCoreSpotlightEntityAnnotator

- (id)annotateItem:(id)a3 withManagedObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10000A890(v7, &v10);
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

  return v6;
}

- (MTAppCoreSpotlightEntityAnnotator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppCoreSpotlightEntityAnnotator();
  return [(MTAppCoreSpotlightEntityAnnotator *)&v3 init];
}

@end
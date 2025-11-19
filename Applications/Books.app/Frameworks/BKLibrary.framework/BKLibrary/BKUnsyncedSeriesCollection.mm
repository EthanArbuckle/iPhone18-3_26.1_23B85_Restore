@interface BKUnsyncedSeriesCollection
+ (id)seriesCollectionWithSeriesID:(id)a3 name:(id)a4;
- (id)collectionID;
@end

@implementation BKUnsyncedSeriesCollection

+ (id)seriesCollectionWithSeriesID:(id)a3 name:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(BKUnsyncedSeriesCollection);
  [(BKDefaultCollection *)v7 setSeriesID:v6];

  [(BKDefaultCollection *)v7 setTitle:v5];

  return v7;
}

- (id)collectionID
{
  v3 = [(BKDefaultCollection *)self seriesID];

  if (v3)
  {
    v4 = [(BKDefaultCollection *)self seriesID];
    v5 = [BKCollection seriesCollectionIDForSeriesID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
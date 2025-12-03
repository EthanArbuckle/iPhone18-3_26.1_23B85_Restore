@interface BKUnsyncedSeriesCollection
+ (id)seriesCollectionWithSeriesID:(id)d name:(id)name;
- (id)collectionID;
@end

@implementation BKUnsyncedSeriesCollection

+ (id)seriesCollectionWithSeriesID:(id)d name:(id)name
{
  nameCopy = name;
  dCopy = d;
  v7 = objc_alloc_init(BKUnsyncedSeriesCollection);
  [(BKDefaultCollection *)v7 setSeriesID:dCopy];

  [(BKDefaultCollection *)v7 setTitle:nameCopy];

  return v7;
}

- (id)collectionID
{
  seriesID = [(BKDefaultCollection *)self seriesID];

  if (seriesID)
  {
    seriesID2 = [(BKDefaultCollection *)self seriesID];
    v5 = [BKCollection seriesCollectionIDForSeriesID:seriesID2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
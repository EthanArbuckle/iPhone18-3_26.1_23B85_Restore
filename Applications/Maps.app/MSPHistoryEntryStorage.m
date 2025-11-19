@interface MSPHistoryEntryStorage
+ (MSPHistoryEntryStorage)storageWithDisplayQuery:(id)a3 locationDisplayString:(id)a4 mapRegion:(id)a5 timestamp:(double)a6;
+ (MSPHistoryEntryStorage)storageWithQuerySearch:(id)a3 timestamp:(double)a4;
- (id)initWithHistoryItem:(id)a3;
@end

@implementation MSPHistoryEntryStorage

- (id)initWithHistoryItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 historyEntry];
    v9 = MSPHistoryEntryGetStorage();
    v10 = [v9 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (MSPHistoryEntryStorage)storageWithDisplayQuery:(id)a3 locationDisplayString:(id)a4 mapRegion:(id)a5 timestamp:(double)a6
{
  v7 = [MSPQuerySearch querySearchWithDisplayQuery:a3 locationDisplayString:a4 mapRegion:a5];
  v8 = [MSPHistoryEntryStorage storageWithQuerySearch:v7 timestamp:a6];

  return v8;
}

+ (MSPHistoryEntryStorage)storageWithQuerySearch:(id)a3 timestamp:(double)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MSPHistoryEntryStorage);
  [v6 setQuerySearch:v5];

  [v6 setTimestamp:a4];
  [v6 setSearchType:1];
  v7 = +[NSUUID UUID];
  v8 = [v7 UUIDString];
  [v6 setIdentifier:v8];

  return v6;
}

@end
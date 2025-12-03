@interface MSPHistoryEntryStorage
+ (MSPHistoryEntryStorage)storageWithDisplayQuery:(id)query locationDisplayString:(id)string mapRegion:(id)region timestamp:(double)timestamp;
+ (MSPHistoryEntryStorage)storageWithQuerySearch:(id)search timestamp:(double)timestamp;
- (id)initWithHistoryItem:(id)item;
@end

@implementation MSPHistoryEntryStorage

- (id)initWithHistoryItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v5 = itemCopy;
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
    historyEntry = [v7 historyEntry];
    v9 = MSPHistoryEntryGetStorage();
    v10 = [v9 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (MSPHistoryEntryStorage)storageWithDisplayQuery:(id)query locationDisplayString:(id)string mapRegion:(id)region timestamp:(double)timestamp
{
  v7 = [MSPQuerySearch querySearchWithDisplayQuery:query locationDisplayString:string mapRegion:region];
  v8 = [MSPHistoryEntryStorage storageWithQuerySearch:v7 timestamp:timestamp];

  return v8;
}

+ (MSPHistoryEntryStorage)storageWithQuerySearch:(id)search timestamp:(double)timestamp
{
  searchCopy = search;
  v6 = objc_alloc_init(MSPHistoryEntryStorage);
  [v6 setQuerySearch:searchCopy];

  [v6 setTimestamp:timestamp];
  [v6 setSearchType:1];
  v7 = +[NSUUID UUID];
  uUIDString = [v7 UUIDString];
  [v6 setIdentifier:uUIDString];

  return v6;
}

@end
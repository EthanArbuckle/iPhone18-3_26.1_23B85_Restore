@interface MSPQuerySearch
+ (id)querySearchWithDisplayQuery:(id)query locationDisplayString:(id)string mapRegion:(id)region;
@end

@implementation MSPQuerySearch

+ (id)querySearchWithDisplayQuery:(id)query locationDisplayString:(id)string mapRegion:(id)region
{
  regionCopy = region;
  stringCopy = string;
  queryCopy = query;
  v10 = objc_alloc_init(MSPQuerySearch);
  v11 = [queryCopy copy];

  [v10 setQuery:v11];
  v12 = [stringCopy copy];

  [v10 setLocationDisplayString:v12];
  v13 = [regionCopy copy];

  [v10 setMapRegion:v13];

  return v10;
}

@end
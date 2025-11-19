@interface MSPQuerySearch
+ (id)querySearchWithDisplayQuery:(id)a3 locationDisplayString:(id)a4 mapRegion:(id)a5;
@end

@implementation MSPQuerySearch

+ (id)querySearchWithDisplayQuery:(id)a3 locationDisplayString:(id)a4 mapRegion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(MSPQuerySearch);
  v11 = [v9 copy];

  [v10 setQuery:v11];
  v12 = [v8 copy];

  [v10 setLocationDisplayString:v12];
  v13 = [v7 copy];

  [v10 setMapRegion:v13];

  return v10;
}

@end
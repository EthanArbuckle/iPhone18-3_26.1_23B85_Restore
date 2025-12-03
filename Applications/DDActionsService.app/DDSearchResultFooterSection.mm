@interface DDSearchResultFooterSection
- (DDSearchResultFooterSection)initWithQuery:(id)query queryId:(unint64_t)id;
@end

@implementation DDSearchResultFooterSection

- (DDSearchResultFooterSection)initWithQuery:(id)query queryId:(unint64_t)id
{
  queryCopy = query;
  v16.receiver = self;
  v16.super_class = DDSearchResultFooterSection;
  v7 = [(DDSearchResultFooterSection *)&v16 init];
  v8 = v7;
  if (v7)
  {
    [(DDSearchResultFooterSection *)v7 setTitle:@" "];
    [(DDSearchResultFooterSection *)v8 setBundleIdentifier:@"com.apple.lookup.search-through"];
    v9 = +[NSMutableArray array];
    v10 = +[MCProfileConnection sharedConnection];
    v11 = [v10 effectiveBoolValueForSetting:MCFeatureSafariAllowed];

    if (v11 != 2)
    {
      v12 = [[DDSearchResultSearchWebResult alloc] initWithQuery:queryCopy queryId:id];
      [(NSArray *)v9 addObject:v12];
    }

    v13 = [[DDSearchResultManageDictionariesResult alloc] initWithQuery:queryCopy queryId:id];
    [(NSArray *)v9 addObject:v13];

    results = v8->_results;
    v8->_results = v9;
  }

  return v8;
}

@end
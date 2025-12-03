@interface DDSearchResultSearchWebResult
- (DDSearchResultSearchWebResult)initWithQuery:(id)query queryId:(unint64_t)id;
- (void)setMainIdentifier:(id)identifier;
@end

@implementation DDSearchResultSearchWebResult

- (void)setMainIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(DDSearchResultSearchWebResult *)self setIdentifier:identifierCopy];
  [(DDSearchResultSearchWebResult *)self setSectionBundleIdentifier:@"com.apple.lookup.search-through"];
  identifierCopy = [NSString stringWithFormat:@"com.apple.other:%@", identifierCopy];

  [(DDSearchResultSearchWebResult *)self setResultBundleId:identifierCopy];
}

- (DDSearchResultSearchWebResult)initWithQuery:(id)query queryId:(unint64_t)id
{
  queryCopy = query;
  v18.receiver = self;
  v18.super_class = DDSearchResultSearchWebResult;
  v7 = [(DDSearchResultSearchWebResult *)&v18 init];
  v8 = v7;
  if (v7)
  {
    [(DDSearchResultSearchWebResult *)v7 setType:2];
    [(DDSearchResultSearchWebResult *)v8 setMainIdentifier:@"search_web"];
    [(DDSearchResultSearchWebResult *)v8 setQueryId:id];
    v9 = objc_opt_new();
    [v9 setShouldUseCompactDisplay:1];
    v10 = objc_opt_new();
    [v10 setIconType:1];
    [v9 setThumbnail:v10];
    v11 = DDLocalizedString();
    v12 = [SFRichText textWithString:v11];
    [v9 setTitle:v12];

    v13 = objc_opt_new();
    [v13 setSearchString:queryCopy];
    [v9 setCommand:v13];
    v14 = objc_opt_new();
    [(DDSearchResultSearchWebResult *)v8 setInlineCard:v14];

    v19 = v9;
    v15 = [NSArray arrayWithObjects:&v19 count:1];
    inlineCard = [(DDSearchResultSearchWebResult *)v8 inlineCard];
    [inlineCard setCardSections:v15];
  }

  return v8;
}

@end
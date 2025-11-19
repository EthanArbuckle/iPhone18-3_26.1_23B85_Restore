@interface DDSearchResultSearchWebResult
- (DDSearchResultSearchWebResult)initWithQuery:(id)a3 queryId:(unint64_t)a4;
- (void)setMainIdentifier:(id)a3;
@end

@implementation DDSearchResultSearchWebResult

- (void)setMainIdentifier:(id)a3
{
  v4 = a3;
  [(DDSearchResultSearchWebResult *)self setIdentifier:v4];
  [(DDSearchResultSearchWebResult *)self setSectionBundleIdentifier:@"com.apple.lookup.search-through"];
  v5 = [NSString stringWithFormat:@"com.apple.other:%@", v4];

  [(DDSearchResultSearchWebResult *)self setResultBundleId:v5];
}

- (DDSearchResultSearchWebResult)initWithQuery:(id)a3 queryId:(unint64_t)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = DDSearchResultSearchWebResult;
  v7 = [(DDSearchResultSearchWebResult *)&v18 init];
  v8 = v7;
  if (v7)
  {
    [(DDSearchResultSearchWebResult *)v7 setType:2];
    [(DDSearchResultSearchWebResult *)v8 setMainIdentifier:@"search_web"];
    [(DDSearchResultSearchWebResult *)v8 setQueryId:a4];
    v9 = objc_opt_new();
    [v9 setShouldUseCompactDisplay:1];
    v10 = objc_opt_new();
    [v10 setIconType:1];
    [v9 setThumbnail:v10];
    v11 = DDLocalizedString();
    v12 = [SFRichText textWithString:v11];
    [v9 setTitle:v12];

    v13 = objc_opt_new();
    [v13 setSearchString:v6];
    [v9 setCommand:v13];
    v14 = objc_opt_new();
    [(DDSearchResultSearchWebResult *)v8 setInlineCard:v14];

    v19 = v9;
    v15 = [NSArray arrayWithObjects:&v19 count:1];
    v16 = [(DDSearchResultSearchWebResult *)v8 inlineCard];
    [v16 setCardSections:v15];
  }

  return v8;
}

@end
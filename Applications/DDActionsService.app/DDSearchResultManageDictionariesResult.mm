@interface DDSearchResultManageDictionariesResult
- (DDSearchResultManageDictionariesResult)initWithQuery:(id)query queryId:(unint64_t)id;
@end

@implementation DDSearchResultManageDictionariesResult

- (DDSearchResultManageDictionariesResult)initWithQuery:(id)query queryId:(unint64_t)id
{
  v17.receiver = self;
  v17.super_class = DDSearchResultManageDictionariesResult;
  v4 = [(DDSearchResultSearchWebResult *)&v17 initWithQuery:query queryId:id];
  v5 = v4;
  if (v4)
  {
    [(DDSearchResultSearchWebResult *)v4 setMainIdentifier:@"manage_dictionaries"];
    v6 = objc_opt_new();
    [v6 setShouldUseCompactDisplay:1];
    v7 = objc_opt_new();
    [v7 setBundleIdentifier:@"com.apple.Preferences"];
    [v6 setThumbnail:v7];
    v8 = DDLocalizedString();
    v9 = [SFRichText textWithString:v8];
    [v6 setTitle:v9];

    v10 = objc_opt_new();
    v11 = [NSURL URLWithString:@"prefs:root=General&path=DICTIONARY"];
    v12 = [SFPunchout punchoutWithURL:v11];
    [v10 setPunchout:v12];

    [v6 setCommand:v10];
    v13 = objc_opt_new();
    [(DDSearchResultManageDictionariesResult *)v5 setInlineCard:v13];

    v18 = v6;
    v14 = [NSArray arrayWithObjects:&v18 count:1];
    inlineCard = [(DDSearchResultManageDictionariesResult *)v5 inlineCard];
    [inlineCard setCardSections:v14];
  }

  return v5;
}

@end
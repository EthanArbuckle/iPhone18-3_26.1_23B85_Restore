@interface PPXFeedViewController
- (CGSize)_windowSize;
- (PPXFeedViewController)initWithOptions:(id)a3;
@end

@implementation PPXFeedViewController

- (PPXFeedViewController)initWithOptions:(id)a3
{
  if (a3)
  {
    v4 = [a3 mutableCopy];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  objc_opt_class();
  v6 = [v5 objectForKeyedSubscript:@"metadata"];
  v7 = BUDynamicCast();
  v8 = [JSAFeedMetadata metadataDictionary:v7 variationWithNavigationBarStyle:1];

  [v5 setObject:v8 forKeyedSubscript:@"metadata"];
  v11.receiver = self;
  v11.super_class = PPXFeedViewController;
  v9 = [(PPXFeedViewController *)&v11 initWithOptions:v5];

  return v9;
}

- (CGSize)_windowSize
{
  v2 = +[PPXJSAWindowProvider sharedProvider];
  v3 = [v2 window];

  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end
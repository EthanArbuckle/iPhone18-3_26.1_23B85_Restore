@interface ShowCollectionActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation ShowCollectionActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v9 = a3;
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v9 collectionStorage];
    v7 = [CollectionHandler collectionWithStorage:v6];

    v8 = [v5 appCoordinator];
    [v8 openCollection:v7];
  }
}

@end
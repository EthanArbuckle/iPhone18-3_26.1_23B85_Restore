@interface PlaceholderCollectionHandler
+ (id)sharedInstance;
- (PlaceholderCollectionHandler)init;
@end

@implementation PlaceholderCollectionHandler

- (PlaceholderCollectionHandler)init
{
  v5.receiver = self;
  v5.super_class = PlaceholderCollectionHandler;
  v2 = [(CollectionHandler *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CollectionHandler *)v2 loadDefaultImage];
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_10195EDD8 != -1)
  {
    dispatch_once(&qword_10195EDD8, &stru_10164F9C8);
  }

  v3 = qword_10195EDD0;

  return v3;
}

@end
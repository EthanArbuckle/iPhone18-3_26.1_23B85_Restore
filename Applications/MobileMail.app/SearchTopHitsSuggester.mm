@interface SearchTopHitsSuggester
+ (OS_os_log)log;
- (NSArray)categories;
- (SearchTopHitsSuggester)initWithMessageRepository:(id)repository bundleID:(id)d queryCompletionHandler:(id)handler;
- (id)generateSuggestionsUsingPhraseManager:(id)manager handler:(id)handler;
@end

@implementation SearchTopHitsSuggester

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002466E8;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD808 != -1)
  {
    dispatch_once(&qword_1006DD808, block);
  }

  v2 = qword_1006DD800;

  return v2;
}

- (SearchTopHitsSuggester)initWithMessageRepository:(id)repository bundleID:(id)d queryCompletionHandler:(id)handler
{
  repositoryCopy = repository;
  dCopy = d;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = SearchTopHitsSuggester;
  v12 = [(SearchTopHitsSuggester *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messageRepository, repository);
    v14 = [dCopy copy];
    bundleID = v13->_bundleID;
    v13->_bundleID = v14;

    v16 = [handlerCopy copy];
    queryCompletionHandler = v13->_queryCompletionHandler;
    v13->_queryCompletionHandler = v16;
  }

  return v13;
}

- (NSArray)categories
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = +[MUISearchSuggestionCategory topHitsCategory];
  v4 = +[MUISearchSuggestionCategory contactCategory];
  v9[1] = v4;
  v5 = +[MUISearchSuggestionCategory genericCategory];
  v9[2] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:3];
  [v2 addObjectsFromArray:v6];

  v7 = +[MUISearchSuggestionCategory instantAnswersCategory];
  [v2 addObject:v7];

  return v2;
}

- (id)generateSuggestionsUsingPhraseManager:(id)manager handler:(id)handler
{
  managerCopy = manager;
  handlerCopy = handler;
  v8 = sub_100246A84([_SearchTopHitsSuggesterQuery alloc], managerCopy, handlerCopy, self);
  v9 = v8;
  if (v8)
  {
    [v8[6] start];
  }

  return v9;
}

@end
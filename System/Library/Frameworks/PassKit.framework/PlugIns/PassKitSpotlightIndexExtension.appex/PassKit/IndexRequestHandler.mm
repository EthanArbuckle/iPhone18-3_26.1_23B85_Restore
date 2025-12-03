@interface IndexRequestHandler
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
@end

@implementation IndexRequestHandler

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  handlerCopy = handler;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v8 = +[PKPassLibrary sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100000B94;
  v10[3] = &unk_1000040A0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 spotlightReindexAllContentWithAcknowledgement:v10];
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412290;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v11 = +[PKPassLibrary sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100000D0C;
  v13[3] = &unk_1000040A0;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [v11 spotlightReindexContentWithIdentifiers:identifiersCopy acknowledgement:v13];
}

@end
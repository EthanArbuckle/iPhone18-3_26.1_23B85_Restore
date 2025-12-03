@interface PurchaseHistoryService
- (void)executeQuery:(id)query withReplyHandler:(id)handler;
- (void)setHidden:(BOOL)hidden forStoreItemID:(int64_t)d withReplyHandler:(id)handler;
- (void)showAllWithReplyHandler:(id)handler;
- (void)updateForAccountID:(int64_t)d withContext:(unint64_t)context withReplyHandler:(id)handler;
- (void)updateWithContext:(unint64_t)context withReplyHandler:(id)handler;
@end

@implementation PurchaseHistoryService

- (void)executeQuery:(id)query withReplyHandler:(id)handler
{
  handlerCopy = handler;
  queryCopy = query;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    if (self)
    {
      v11 = sub_100003B90();
      processInfo = [v11 processInfo];
      self = [processInfo bundleIdentifier];
    }

    v14 = 138543618;
    v15 = v9;
    v16 = 2114;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] executeQuery for client: %{public}@", &v14, 0x16u);
  }

  v13 = sub_10021CA38();
  sub_10021D168(v13, queryCopy, handlerCopy);
}

- (void)setHidden:(BOOL)hidden forStoreItemID:(int64_t)d withReplyHandler:(id)handler
{
  handlerCopy = handler;
  v9 = sub_10021CA38();
  v8 = sub_100003B90();
  sub_10021D64C(v9, hidden, d, v8, handlerCopy);
}

- (void)showAllWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_10021CA38();
  v4 = sub_100003B90();
  sub_10021DBF8(v5, v4, handlerCopy);
}

- (void)updateForAccountID:(int64_t)d withContext:(unint64_t)context withReplyHandler:(id)handler
{
  handlerCopy = handler;
  v9 = sub_10021CA38();
  v8 = sub_100003B90();
  sub_10021E440(v9, d, context, v8, handlerCopy);
}

- (void)updateWithContext:(unint64_t)context withReplyHandler:(id)handler
{
  handlerCopy = handler;
  v7 = sub_10021CA38();
  v6 = sub_100003B90();
  sub_10021DB24(v7, context, v6, handlerCopy);
}

@end
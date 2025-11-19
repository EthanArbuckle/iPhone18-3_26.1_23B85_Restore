@interface PurchaseHistoryService
- (void)executeQuery:(id)a3 withReplyHandler:(id)a4;
- (void)setHidden:(BOOL)a3 forStoreItemID:(int64_t)a4 withReplyHandler:(id)a5;
- (void)showAllWithReplyHandler:(id)a3;
- (void)updateForAccountID:(int64_t)a3 withContext:(unint64_t)a4 withReplyHandler:(id)a5;
- (void)updateWithContext:(unint64_t)a3 withReplyHandler:(id)a4;
@end

@implementation PurchaseHistoryService

- (void)executeQuery:(id)a3 withReplyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    if (self)
    {
      v11 = sub_100003B90();
      v12 = [v11 processInfo];
      self = [v12 bundleIdentifier];
    }

    v14 = 138543618;
    v15 = v9;
    v16 = 2114;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] executeQuery for client: %{public}@", &v14, 0x16u);
  }

  v13 = sub_10021CA38();
  sub_10021D168(v13, v7, v6);
}

- (void)setHidden:(BOOL)a3 forStoreItemID:(int64_t)a4 withReplyHandler:(id)a5
{
  v7 = a5;
  v9 = sub_10021CA38();
  v8 = sub_100003B90();
  sub_10021D64C(v9, a3, a4, v8, v7);
}

- (void)showAllWithReplyHandler:(id)a3
{
  v3 = a3;
  v5 = sub_10021CA38();
  v4 = sub_100003B90();
  sub_10021DBF8(v5, v4, v3);
}

- (void)updateForAccountID:(int64_t)a3 withContext:(unint64_t)a4 withReplyHandler:(id)a5
{
  v7 = a5;
  v9 = sub_10021CA38();
  v8 = sub_100003B90();
  sub_10021E440(v9, a3, a4, v8, v7);
}

- (void)updateWithContext:(unint64_t)a3 withReplyHandler:(id)a4
{
  v5 = a4;
  v7 = sub_10021CA38();
  v6 = sub_100003B90();
  sub_10021DB24(v7, a3, v6, v5);
}

@end
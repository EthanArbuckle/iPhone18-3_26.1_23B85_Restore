@interface FRSubscribedTagRanker
- (FRSubscribedTagRanker)init;
- (FRSubscribedTagRanker)initWithTagRanker:(id)a3;
- (id)rankTagIDsDescending:(id)a3;
- (id)scoresForTagIDs:(id)a3;
- (void)prepareForUseWithCompletionHandler:(id)a3;
@end

@implementation FRSubscribedTagRanker

- (FRSubscribedTagRanker)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRSubscribedTagRanker init]";
    v8 = 2080;
    v9 = "FRSubscribedTagRanker.m";
    v10 = 1024;
    v11 = 21;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRSubscribedTagRanker init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRSubscribedTagRanker)initWithTagRanker:(id)a3
{
  v5 = a3;
  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006DCBC();
  }

  v9.receiver = self;
  v9.super_class = FRSubscribedTagRanker;
  v6 = [(FRSubscribedTagRanker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tagRanker, a3);
  }

  return v7;
}

- (id)rankTagIDsDescending:(id)a3
{
  v4 = a3;
  v5 = [(FRSubscribedTagRanker *)self tagRanker];
  v6 = [v5 rankTagIDsDescending:v4];

  return v6;
}

- (id)scoresForTagIDs:(id)a3
{
  v4 = a3;
  v5 = [(FRSubscribedTagRanker *)self tagRanker];
  v6 = [v5 scoresForTagIDs:v4];

  return v6;
}

- (void)prepareForUseWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(FRSubscribedTagRanker *)self tagRanker];
  [v5 prepareForUseWithCompletionHandler:v4];
}

@end
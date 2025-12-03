@interface FRSubscribedTagRanker
- (FRSubscribedTagRanker)init;
- (FRSubscribedTagRanker)initWithTagRanker:(id)ranker;
- (id)rankTagIDsDescending:(id)descending;
- (id)scoresForTagIDs:(id)ds;
- (void)prepareForUseWithCompletionHandler:(id)handler;
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

- (FRSubscribedTagRanker)initWithTagRanker:(id)ranker
{
  rankerCopy = ranker;
  if (!rankerCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006DCBC();
  }

  v9.receiver = self;
  v9.super_class = FRSubscribedTagRanker;
  v6 = [(FRSubscribedTagRanker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tagRanker, ranker);
  }

  return v7;
}

- (id)rankTagIDsDescending:(id)descending
{
  descendingCopy = descending;
  tagRanker = [(FRSubscribedTagRanker *)self tagRanker];
  v6 = [tagRanker rankTagIDsDescending:descendingCopy];

  return v6;
}

- (id)scoresForTagIDs:(id)ds
{
  dsCopy = ds;
  tagRanker = [(FRSubscribedTagRanker *)self tagRanker];
  v6 = [tagRanker scoresForTagIDs:dsCopy];

  return v6;
}

- (void)prepareForUseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  tagRanker = [(FRSubscribedTagRanker *)self tagRanker];
  [tagRanker prepareForUseWithCompletionHandler:handlerCopy];
}

@end
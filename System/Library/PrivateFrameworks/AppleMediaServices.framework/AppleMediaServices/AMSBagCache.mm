@interface AMSBagCache
- (id)bagWithIdentifier:(id)identifier accountProviderIdentity:(id)identity accountMediaType:(id)type orCreateUsingBlock:(id)block;
- (void)removeAll;
@end

@implementation AMSBagCache

- (id)bagWithIdentifier:(id)identifier accountProviderIdentity:(id)identity accountMediaType:(id)type orCreateUsingBlock:(id)block
{
  v8 = _Block_copy(block);
  v9 = sub_192F967CC();
  v11 = v10;
  v12 = sub_192F967CC();
  v14 = v13;
  _Block_copy(v8);
  typeCopy = type;
  selfCopy = self;
  v17 = sub_192878FE0(v9, v11, v12, v14, type, selfCopy, v8);
  _Block_release(v8);

  return v17;
}

- (void)removeAll
{
  selfCopy = self;
  BagCache.removeAll()();
}

@end
@interface AMSBagCache
- (id)bagWithIdentifier:(id)a3 accountProviderIdentity:(id)a4 accountMediaType:(id)a5 orCreateUsingBlock:(id)a6;
- (void)removeAll;
@end

@implementation AMSBagCache

- (id)bagWithIdentifier:(id)a3 accountProviderIdentity:(id)a4 accountMediaType:(id)a5 orCreateUsingBlock:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_192F967CC();
  v11 = v10;
  v12 = sub_192F967CC();
  v14 = v13;
  _Block_copy(v8);
  v15 = a5;
  v16 = self;
  v17 = sub_192878FE0(v9, v11, v12, v14, a5, v16, v8);
  _Block_release(v8);

  return v17;
}

- (void)removeAll
{
  v2 = self;
  BagCache.removeAll()();
}

@end
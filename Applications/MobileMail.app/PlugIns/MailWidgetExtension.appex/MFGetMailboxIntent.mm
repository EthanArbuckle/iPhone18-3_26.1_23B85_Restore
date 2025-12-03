@interface MFGetMailboxIntent
- (MFGetMailboxIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (MFGetMailboxIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation MFGetMailboxIntent

- (MFGetMailboxIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  _objc_retain(identifier);
  _objc_retain(store);
  if (identifier)
  {
    v6 = sub_10007D868();
    v7 = v4;
    _objc_release(identifier);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return MFGetMailboxIntent.init(identifier:backingStore:)(v8, v9, store);
}

- (MFGetMailboxIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  _objc_retain(domain);
  _objc_retain(verb);
  _objc_retain(name);
  v13 = sub_10007D868();
  v14 = v5;
  v16 = sub_10007D868();
  v17 = v6;
  if (name)
  {
    v9 = sub_10007D7D8();
    _objc_release(name);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v8 = MFGetMailboxIntent.init(domain:verb:parametersByName:)(v13, v14, v16, v17, v10);
  _objc_release(verb);
  _objc_release(domain);
  return v8;
}

@end
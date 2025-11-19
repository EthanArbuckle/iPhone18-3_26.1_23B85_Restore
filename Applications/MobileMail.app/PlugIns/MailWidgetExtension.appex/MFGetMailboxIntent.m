@interface MFGetMailboxIntent
- (MFGetMailboxIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (MFGetMailboxIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation MFGetMailboxIntent

- (MFGetMailboxIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  if (a3)
  {
    v6 = sub_10007D868();
    v7 = v4;
    _objc_release(a3);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return MFGetMailboxIntent.init(identifier:backingStore:)(v8, v9, a4);
}

- (MFGetMailboxIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(a5);
  v13 = sub_10007D868();
  v14 = v5;
  v16 = sub_10007D868();
  v17 = v6;
  if (a5)
  {
    v9 = sub_10007D7D8();
    _objc_release(a5);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v8 = MFGetMailboxIntent.init(domain:verb:parametersByName:)(v13, v14, v16, v17, v10);
  _objc_release(a4);
  _objc_release(a3);
  return v8;
}

@end
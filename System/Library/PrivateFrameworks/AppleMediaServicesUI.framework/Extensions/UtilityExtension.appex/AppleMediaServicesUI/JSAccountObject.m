@interface JSAccountObject
- (JSValue)current;
- (JSValue)currentLocal;
- (JSValue)iCloud;
- (JSValue)iTunesStore;
- (JSValue)iTunesStoreLocal;
- (id)bookStore;
- (id)bookStoreLocal;
- (id)privacyAcknowledgementState:(id)a3 :(id)a4;
@end

@implementation JSAccountObject

- (JSValue)current
{
  v2 = self;
  v3 = sub_10000F67C();

  return v3;
}

- (JSValue)currentLocal
{
  v2 = self;
  v3 = sub_10000F700();

  return v3;
}

- (id)bookStore
{
  v1 = a1;
  v2 = sub_10000F7EC();

  return v2;
}

- (JSValue)iTunesStore
{
  v2 = self;
  v3 = sub_10000F83C();

  return v3;
}

- (JSValue)iCloud
{
  v2 = self;
  v3 = sub_10000F8C0();

  return v3;
}

- (id)bookStoreLocal
{
  v1 = a1;
  v2 = sub_10000F910();

  return v2;
}

- (JSValue)iTunesStoreLocal
{
  v2 = self;
  v3 = sub_10000F9D0();

  return v3;
}

- (id)privacyAcknowledgementState:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10000FA70();

  return v9;
}

@end
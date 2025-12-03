@interface JSAccountObject
- (JSValue)current;
- (JSValue)currentLocal;
- (JSValue)iCloud;
- (JSValue)iTunesStore;
- (JSValue)iTunesStoreLocal;
- (id)bookStore;
- (id)bookStoreLocal;
- (id)privacyAcknowledgementState:(id)state :(id)a4;
@end

@implementation JSAccountObject

- (JSValue)current
{
  selfCopy = self;
  v3 = sub_10000F67C();

  return v3;
}

- (JSValue)currentLocal
{
  selfCopy = self;
  v3 = sub_10000F700();

  return v3;
}

- (id)bookStore
{
  selfCopy = self;
  v2 = sub_10000F7EC();

  return v2;
}

- (JSValue)iTunesStore
{
  selfCopy = self;
  v3 = sub_10000F83C();

  return v3;
}

- (JSValue)iCloud
{
  selfCopy = self;
  v3 = sub_10000F8C0();

  return v3;
}

- (id)bookStoreLocal
{
  selfCopy = self;
  v2 = sub_10000F910();

  return v2;
}

- (JSValue)iTunesStoreLocal
{
  selfCopy = self;
  v3 = sub_10000F9D0();

  return v3;
}

- (id)privacyAcknowledgementState:(id)state :(id)a4
{
  stateCopy = state;
  v7 = a4;
  selfCopy = self;
  v9 = sub_10000FA70();

  return v9;
}

@end
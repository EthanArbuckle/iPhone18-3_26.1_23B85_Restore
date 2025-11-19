@interface JSStorageObject
- (id)retrieveString:(id)a3;
- (void)storeString:(id)a3 :(id)a4;
@end

@implementation JSStorageObject

- (void)storeString:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1E1A6DED0();
}

- (id)retrieveString:(id)a3
{
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v5 = a3;
  v6 = self;
  v7 = sub_1E1AF6D4C();
  v8 = sub_1E1AF6D5C();

  return v8;
}

@end
@interface JSStorageObject
- (id)retrieveString:(id)string;
- (void)storeString:(id)string :(id)a4;
@end

@implementation JSStorageObject

- (void)storeString:(id)string :(id)a4
{
  stringCopy = string;
  v7 = a4;
  selfCopy = self;
  sub_1E1A6DED0();
}

- (id)retrieveString:(id)string
{
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  stringCopy = string;
  selfCopy = self;
  v7 = sub_1E1AF6D4C();
  v8 = sub_1E1AF6D5C();

  return v8;
}

@end
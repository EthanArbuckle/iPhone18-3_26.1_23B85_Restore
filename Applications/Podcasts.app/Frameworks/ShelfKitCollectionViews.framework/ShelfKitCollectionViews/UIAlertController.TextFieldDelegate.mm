@interface UIAlertController.TextFieldDelegate
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtCE23ShelfKitCollectionViewsCSo17UIAlertControllerP33_006C8966AE5A6C51837270F17692605817TextFieldDelegate)init;
@end

@implementation UIAlertController.TextFieldDelegate

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  sub_30C0D8();
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = sub_113D0(fieldCopy, location, length);

  return length & 1;
}

- (_TtCE23ShelfKitCollectionViewsCSo17UIAlertControllerP33_006C8966AE5A6C51837270F17692605817TextFieldDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
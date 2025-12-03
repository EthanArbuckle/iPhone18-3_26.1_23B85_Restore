@interface SocialProfileEditorCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (void)layoutSubviews;
@end

@implementation SocialProfileEditorCell

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v10 = sub_AB92A0();
  v12 = v11;
  fieldCopy = field;
  stringCopy = string;
  selfCopy = self;
  LOBYTE(length) = sub_4E8590(fieldCopy, location, length, v10, v12);

  return length & 1;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_4E8C24();
}

@end
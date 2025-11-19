@interface SocialProfileEditorCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (void)layoutSubviews;
@end

@implementation SocialProfileEditorCell

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v10 = sub_AB92A0();
  v12 = v11;
  v13 = a3;
  v14 = a5;
  v15 = self;
  LOBYTE(length) = sub_4E8590(v13, location, length, v10, v12);

  return length & 1;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_4E8C24();
}

@end
@interface TextViewLabel
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)accessibilityStringValue;
- (void)layoutManager:(id)a3 didCompleteLayoutForTextContainer:(id)a4 atEnd:(BOOL)a5;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation TextViewLabel

- (CGSize)intrinsicContentSize
{
  v2 = self;
  sub_2361D8();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_236300();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (NSString)accessibilityStringValue
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView);
  v3 = self;
  v4 = [v2 textStorage];
  v5 = [v4 string];
  sub_AB92A0();

  v6 = sub_AB9260();

  return v6;
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  if (sub_AB92A0() == 10 && v5 == 0xE100000000000000)
  {

    v6 = 0;
  }

  else
  {
    v7 = sub_ABB3C0();

    v6 = v7 ^ 1;
  }

  return v6 & 1;
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_236FA4(v4);
}

- (void)textViewDidEndEditing:(id)a3
{
  v3 = *&self->textColor[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_delegate];
  if (v3)
  {
    v4 = self;
    sub_307CC(v3);
    v3(v4);
    sub_17654(v3);
  }
}

- (void)layoutManager:(id)a3 didCompleteLayoutForTextContainer:(id)a4 atEnd:(BOOL)a5
{
  if (a5)
  {
    v5 = *&self->maximumNumberOfLines[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_delegate];
    if (v5)
    {
      v6 = self;
      sub_307CC(v5);
      v5(v6);
      sub_17654(v5);
    }
  }
}

@end
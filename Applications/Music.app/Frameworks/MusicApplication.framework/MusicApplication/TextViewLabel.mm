@interface TextViewLabel
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityStringValue;
- (void)layoutManager:(id)manager didCompleteLayoutForTextContainer:(id)container atEnd:(BOOL)end;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation TextViewLabel

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_2361D8();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
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
  selfCopy = self;
  textStorage = [v2 textStorage];
  string = [textStorage string];
  sub_AB92A0();

  v6 = sub_AB9260();

  return v6;
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
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

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_236FA4(changeCopy);
}

- (void)textViewDidEndEditing:(id)editing
{
  v3 = *&self->textColor[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_delegate];
  if (v3)
  {
    selfCopy = self;
    sub_307CC(v3);
    v3(selfCopy);
    sub_17654(v3);
  }
}

- (void)layoutManager:(id)manager didCompleteLayoutForTextContainer:(id)container atEnd:(BOOL)end
{
  if (end)
  {
    v5 = *&self->maximumNumberOfLines[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_delegate];
    if (v5)
    {
      selfCopy = self;
      sub_307CC(v5);
      v5(selfCopy);
      sub_17654(v5);
    }
  }
}

@end
@interface Search.Bar
- (NSArray)scopeButtonTitles;
- (NSString)placeholder;
- (NSString)text;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)setPlaceholder:(id)placeholder;
- (void)setShowsScopeBar:(BOOL)bar animated:(BOOL)animated;
- (void)setText:(id)text;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidChange:(id)change;
- (void)textFieldDidEndEditing:(id)editing;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation Search.Bar

- (void)layoutSubviews
{
  selfCopy = self;
  sub_293974();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_293AD4(change);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_293C64(event, x, y);

  return v10;
}

- (void)setShowsScopeBar:(BOOL)bar animated:(BOOL)animated
{
  selfCopy = self;
  sub_293E4C(bar, animated);
}

- (NSArray)scopeButtonTitles
{
  v2.super.isa = sub_AB9740().super.isa;

  return v2.super.isa;
}

- (NSString)text
{
  v2 = self + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_barText;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_AB9260();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setText:(id)text
{
  if (text)
  {
    v4 = sub_AB92A0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_barText);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
  selfCopy = self;

  sub_294A9C();
}

- (NSString)placeholder
{
  selfCopy = self;
  sub_2946A8();
  v4 = v3;

  if (v4)
  {
    v5 = sub_AB9260();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPlaceholder:(id)placeholder
{
  if (placeholder)
  {
    v4 = sub_AB92A0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_barText;
  swift_beginAccess();
  *(v7 + 4) = v4;
  *(v7 + 5) = v6;
  selfCopy = self;

  sub_294A9C();
}

- (void)textFieldDidEndEditing:(id)editing
{
  selfCopy = self;
  sub_294A9C();
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_296F10();
}

- (void)textFieldDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2948B8(changeCopy);
}

@end
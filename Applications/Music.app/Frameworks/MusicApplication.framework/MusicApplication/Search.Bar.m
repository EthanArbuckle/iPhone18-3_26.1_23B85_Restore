@interface Search.Bar
- (NSArray)scopeButtonTitles;
- (NSString)placeholder;
- (NSString)text;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setPlaceholder:(id)a3;
- (void)setShowsScopeBar:(BOOL)a3 animated:(BOOL)a4;
- (void)setText:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidChange:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation Search.Bar

- (void)layoutSubviews
{
  v2 = self;
  sub_293974();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_293AD4(a3);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_293C64(a4, x, y);

  return v10;
}

- (void)setShowsScopeBar:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_293E4C(a3, a4);
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

- (void)setText:(id)a3
{
  if (a3)
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
  v8 = self;

  sub_294A9C();
}

- (NSString)placeholder
{
  v2 = self;
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

- (void)setPlaceholder:(id)a3
{
  if (a3)
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
  v8 = self;

  sub_294A9C();
}

- (void)textFieldDidEndEditing:(id)a3
{
  v3 = self;
  sub_294A9C();
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_296F10();
}

- (void)textFieldDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2948B8(v4);
}

@end
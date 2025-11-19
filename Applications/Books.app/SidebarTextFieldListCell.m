@interface SidebarTextFieldListCell
- (UICellConfigurationState)_bridgedConfigurationState;
- (_TtC5Books24SidebarTextFieldListCell)initWithCoder:(id)a3;
- (_TtC5Books24SidebarTextFieldListCell)initWithFrame:(CGRect)a3;
@end

@implementation SidebarTextFieldListCell

- (UICellConfigurationState)_bridgedConfigurationState
{
  v3 = sub_10079B264();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  sub_1006DF5C0();

  v8.super.super.isa = sub_10079B234().super.super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.super.isa;
}

- (_TtC5Books24SidebarTextFieldListCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Books24SidebarTextFieldListCell_shouldBeginEditing) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SidebarTextFieldListCell();
  return [(SidebarTextFieldListCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5Books24SidebarTextFieldListCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Books24SidebarTextFieldListCell_shouldBeginEditing) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SidebarTextFieldListCell();
  v4 = a3;
  v5 = [(SidebarTextFieldListCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
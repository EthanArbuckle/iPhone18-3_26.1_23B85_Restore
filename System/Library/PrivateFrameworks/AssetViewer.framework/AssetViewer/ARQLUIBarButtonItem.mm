@interface ARQLUIBarButtonItem
- (_TtC11AssetViewer19ARQLUIBarButtonItem)init;
- (_TtC11AssetViewer19ARQLUIBarButtonItem)initWithCoder:(id)coder;
- (void)buttonPressed;
@end

@implementation ARQLUIBarButtonItem

- (void)buttonPressed
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer19ARQLUIBarButtonItem_onPressed);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_24124AD38(v2);
    v2(v4);

    sub_2412186FC(v2);
  }
}

- (_TtC11AssetViewer19ARQLUIBarButtonItem)init
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer19ARQLUIBarButtonItem_onPressed);
  v4 = type metadata accessor for ARQLUIBarButtonItem();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(ARQLUIBarButtonItem *)&v6 init];
}

- (_TtC11AssetViewer19ARQLUIBarButtonItem)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer19ARQLUIBarButtonItem_onPressed);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ARQLUIBarButtonItem();
  coderCopy = coder;
  v6 = [(ARQLUIBarButtonItem *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end
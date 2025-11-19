@interface FMContentUnavailableView
- (_TtC6FindMy24FMContentUnavailableView)initWithCoder:(id)a3;
- (_TtC6FindMy24FMContentUnavailableView)initWithFrame:(CGRect)a3;
- (_TtC6FindMy24FMContentUnavailableView)initWithFrame:(CGRect)a3 title:(id)a4 style:(unint64_t)a5;
- (_TtC6FindMy24FMContentUnavailableView)initWithFrame:(CGRect)a3 title:(id)a4 style:(unint64_t)a5 includeBackdrop:(BOOL)a6;
- (id)_buttonFont;
- (id)_titleFont;
- (void)_updateViewHierarchy;
@end

@implementation FMContentUnavailableView

- (id)_titleFont
{
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle2];
  v3 = sub_100039388(0x8000);

  v4 = sub_100039388(2);

  return v4;
}

- (id)_buttonFont
{
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v3 = sub_100039388(0x8000);

  return v3;
}

- (void)_updateViewHierarchy
{
  v2 = self;
  sub_100141530();
}

- (_TtC6FindMy24FMContentUnavailableView)initWithFrame:(CGRect)a3 title:(id)a4 style:(unint64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for FMContentUnavailableView();
  v12 = [(FMContentUnavailableView *)&v14 initWithFrame:v11 title:a5 style:x, y, width, height];

  if (v12)
  {
  }

  return v12;
}

- (_TtC6FindMy24FMContentUnavailableView)initWithFrame:(CGRect)a3 title:(id)a4 style:(unint64_t)a5 includeBackdrop:(BOOL)a6
{
  v6 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = self;
  v16.super_class = type metadata accessor for FMContentUnavailableView();
  v14 = [(FMContentUnavailableView *)&v16 initWithFrame:v13 title:a5 style:v6 includeBackdrop:x, y, width, height];

  if (v14)
  {
  }

  return v14;
}

- (_TtC6FindMy24FMContentUnavailableView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMContentUnavailableView();
  return [(FMContentUnavailableView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC6FindMy24FMContentUnavailableView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMContentUnavailableView();
  v4 = a3;
  v5 = [(FMContentUnavailableView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
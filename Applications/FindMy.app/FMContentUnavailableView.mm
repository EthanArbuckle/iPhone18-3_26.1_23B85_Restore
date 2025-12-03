@interface FMContentUnavailableView
- (_TtC6FindMy24FMContentUnavailableView)initWithCoder:(id)coder;
- (_TtC6FindMy24FMContentUnavailableView)initWithFrame:(CGRect)frame;
- (_TtC6FindMy24FMContentUnavailableView)initWithFrame:(CGRect)frame title:(id)title style:(unint64_t)style;
- (_TtC6FindMy24FMContentUnavailableView)initWithFrame:(CGRect)frame title:(id)title style:(unint64_t)style includeBackdrop:(BOOL)backdrop;
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
  selfCopy = self;
  sub_100141530();
}

- (_TtC6FindMy24FMContentUnavailableView)initWithFrame:(CGRect)frame title:(id)title style:(unint64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (title)
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
  height = [(FMContentUnavailableView *)&v14 initWithFrame:v11 title:style style:x, y, width, height];

  if (height)
  {
  }

  return height;
}

- (_TtC6FindMy24FMContentUnavailableView)initWithFrame:(CGRect)frame title:(id)title style:(unint64_t)style includeBackdrop:(BOOL)backdrop
{
  backdropCopy = backdrop;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (title)
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
  height = [(FMContentUnavailableView *)&v16 initWithFrame:v13 title:style style:backdropCopy includeBackdrop:x, y, width, height];

  if (height)
  {
  }

  return height;
}

- (_TtC6FindMy24FMContentUnavailableView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMContentUnavailableView();
  return [(FMContentUnavailableView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC6FindMy24FMContentUnavailableView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMContentUnavailableView();
  coderCopy = coder;
  v5 = [(FMContentUnavailableView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
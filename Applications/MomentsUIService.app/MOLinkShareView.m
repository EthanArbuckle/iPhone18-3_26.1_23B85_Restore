@interface MOLinkShareView
- (CGSize)intrinsicContentSize;
- (_TtC16MomentsUIService15MOLinkShareView)initWithFrame:(CGRect)a3;
- (_TtC16MomentsUIService15MOLinkShareView)initWithPresentationProperties:(id)a3 URL:(id)a4;
@end

@implementation MOLinkShareView

- (CGSize)intrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MOLinkShareView();
  [(MOLinkShareView *)&v4 intrinsicContentSize];
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (_TtC16MomentsUIService15MOLinkShareView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MOLinkShareView();
  return [(MOLinkShareView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC16MomentsUIService15MOLinkShareView)initWithPresentationProperties:(id)a3 URL:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  if (a4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  outlined init with copy of URL?(v12, v10);
  type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v10, 1, v13);
  swift_unknownObjectRetain();
  v17 = 0;
  if (v15 != 1)
  {
    URL._bridgeToObjectiveC()(v16);
    v17 = v18;
    (*(v14 + 8))(v10, v13);
  }

  v19 = type metadata accessor for MOLinkShareView();
  v22.receiver = self;
  v22.super_class = v19;
  v20 = [(MOLinkShareView *)&v22 initWithPresentationProperties:a3 URL:v17];
  swift_unknownObjectRelease();

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v12, &_s10Foundation3URLVSgMd);
  return v20;
}

@end
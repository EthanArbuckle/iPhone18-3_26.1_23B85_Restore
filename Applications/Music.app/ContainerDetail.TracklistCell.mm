@interface ContainerDetail.TracklistCell
- (UICellConfigurationState)_bridgedConfigurationState;
- (_TtCV5Music15ContainerDetail13TracklistCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation ContainerDetail.TracklistCell

- (UICellConfigurationState)_bridgedConfigurationState
{
  v3 = type metadata accessor for UICellConfigurationState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  sub_100676CF4();

  v8.super.super.isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.super.isa;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100676DD0(v7);

  (*(v5 + 8))(v7, v4);
}

- (_TtCV5Music15ContainerDetail13TracklistCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data) = xmmword_100EDB9A0;
  v7 = self + OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_metrics;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0x20000;
  *(v7 + 4) = 0;
  *(v7 + 5) = 0;
  *(v7 + 6) = 0;
  v7[56] = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent) = 0;
  v9.receiver = self;
  v9.super_class = _s13TracklistCellCMa();
  return [(ContainerDetail.TracklistCell *)&v9 initWithFrame:x, y, width, height];
}

@end
@interface ScenePresentationTypeObserver
- (_TtC12TirePressure29ScenePresentationTypeObserver)init;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation ScenePresentationTypeObserver

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100015834(v6);
}

- (_TtC12TirePressure29ScenePresentationTypeObserver)init
{
  v3 = sub_100002410(&qword_100026098, &unk_100018910);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC12TirePressure29ScenePresentationTypeObserver__presentationType;
  v13 = 0;
  type metadata accessor for CRSUIHostedAltScreenPresentationType(0);
  Published.init(initialValue:)();
  (*(v4 + 32))(self + v8, v7, v3);
  v9 = type metadata accessor for ScenePresentationTypeObserver();
  v12.receiver = self;
  v12.super_class = v9;
  return [(ScenePresentationTypeObserver *)&v12 init];
}

@end
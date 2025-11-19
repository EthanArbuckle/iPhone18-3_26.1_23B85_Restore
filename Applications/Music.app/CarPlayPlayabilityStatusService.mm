@interface CarPlayPlayabilityStatusService
+ (BOOL)isModelObjectPlayable:(id)a3;
- (_TtC5Music31CarPlayPlayabilityStatusService)init;
@end

@implementation CarPlayPlayabilityStatusService

+ (BOOL)isModelObjectPlayable:(id)a3
{
  v4 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  if (a3)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      LOBYTE(a3) = 1;
    }

    else
    {
      v11 = a3;
      sub_100537EF0(v11, v10);
      (*(v5 + 104))(v7, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v4);
      LOBYTE(a3) = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();

      v12 = *(v5 + 8);
      v12(v7, v4);
      v12(v10, v4);
    }
  }

  return a3 & 1;
}

- (_TtC5Music31CarPlayPlayabilityStatusService)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CarPlayPlayabilityStatusService();
  return [(CarPlayPlayabilityStatusService *)&v3 init];
}

@end
@interface JSLiveRadioCaseModelResponse
- (BOOL)hasVideoArtwork;
- (BOOL)hasVideoArtworkAt:(id)a3;
- (_TtC16MusicApplication28JSLiveRadioCaseModelResponse)initWithRequest:(id)a3;
- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)a3 responseHandler:(id)a4;
- (void)getChangeDetailsFromPreviousResponse:(id)a3 completion:(id)a4;
@end

@implementation JSLiveRadioCaseModelResponse

- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)a3 responseHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *&self->MPModelResponse_opaque[OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_personalizationResponse];
  v13[4] = sub_AACD4;
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_151E0;
  v13[3] = &block_descriptor_27_2;
  v9 = _Block_copy(v13);
  v10 = self;

  v11 = [v8 newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:a3 responseHandler:v9];
  _Block_release(v9);

  return v11;
}

- (void)getChangeDetailsFromPreviousResponse:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_B5A4C;
  }

  v7 = a3;
  v8 = self;
  sub_220F6C(a3, v6);
  sub_17654(v6);
}

- (_TtC16MusicApplication28JSLiveRadioCaseModelResponse)initWithRequest:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)hasVideoArtwork
{
  v2 = self;
  v3 = sub_38D778();

  return v3 & 1;
}

- (BOOL)hasVideoArtworkAt:(id)a3
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v9 = a3;
  v10 = self;
  v11 = sub_38D9BC();

  (*(v6 + 8))(v8, v5);
  return v11 & 1;
}

@end
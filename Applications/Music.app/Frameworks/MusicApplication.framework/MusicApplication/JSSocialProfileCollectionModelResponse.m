@interface JSSocialProfileCollectionModelResponse
- (_TtC16MusicApplication38JSSocialProfileCollectionModelResponse)initWithRequest:(id)a3;
- (void)getChangeDetailsFromPreviousResponse:(id)a3 completion:(id)a4;
@end

@implementation JSSocialProfileCollectionModelResponse

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
  sub_EF090(a3, v6);
  sub_17654(v6);
}

- (_TtC16MusicApplication38JSSocialProfileCollectionModelResponse)initWithRequest:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
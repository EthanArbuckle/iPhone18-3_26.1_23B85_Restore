@interface EditingModelResponse
- (_TtC16MusicApplication20EditingModelResponse)initWithRequest:(id)a3;
- (void)getChangeDetailsFromPreviousResponse:(id)a3 completion:(id)a4;
@end

@implementation EditingModelResponse

- (_TtC16MusicApplication20EditingModelResponse)initWithRequest:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EditingModelResponse();
  v4 = a3;
  result = [(EditingModelResponse *)&v7 initWithRequest:v4];
  if (result)
  {
    v6 = result;

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)getChangeDetailsFromPreviousResponse:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_B5A4C;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_D4CC8(a3, v6, v7);
  sub_17654(v6);
}

@end
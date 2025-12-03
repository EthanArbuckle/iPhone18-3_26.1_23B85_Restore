@interface EditingModelResponse
- (_TtC16MusicApplication20EditingModelResponse)initWithRequest:(id)request;
- (void)getChangeDetailsFromPreviousResponse:(id)response completion:(id)completion;
@end

@implementation EditingModelResponse

- (_TtC16MusicApplication20EditingModelResponse)initWithRequest:(id)request
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EditingModelResponse();
  requestCopy = request;
  result = [(EditingModelResponse *)&v7 initWithRequest:requestCopy];
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

- (void)getChangeDetailsFromPreviousResponse:(id)response completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  responseCopy = response;
  selfCopy = self;
  sub_D4CC8(response, v6, v7);
  sub_17654(v6);
}

@end
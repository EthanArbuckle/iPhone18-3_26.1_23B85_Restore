@interface AngelSceneProviderFrontBoard
- (_TtC28LocalAuthenticationUIService28AngelSceneProviderFrontBoard)init;
- (id)makeSceneForRequest:(id)request;
@end

@implementation AngelSceneProviderFrontBoard

- (id)makeSceneForRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  v6 = specialized AngelSceneProviderFrontBoard.makeFrontBoardScene(for:)(requestCopy);

  return v6;
}

- (_TtC28LocalAuthenticationUIService28AngelSceneProviderFrontBoard)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AngelSceneProviderFrontBoard();
  return [(AngelSceneProviderFrontBoard *)&v3 init];
}

@end
@interface AngelSceneProviderFrontBoard
- (_TtC28LocalAuthenticationUIService28AngelSceneProviderFrontBoard)init;
- (id)makeSceneForRequest:(id)a3;
@end

@implementation AngelSceneProviderFrontBoard

- (id)makeSceneForRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = specialized AngelSceneProviderFrontBoard.makeFrontBoardScene(for:)(v4);

  return v6;
}

- (_TtC28LocalAuthenticationUIService28AngelSceneProviderFrontBoard)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AngelSceneProviderFrontBoard();
  return [(AngelSceneProviderFrontBoard *)&v3 init];
}

@end
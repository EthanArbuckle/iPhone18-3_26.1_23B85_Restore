@interface MusicAngel.Client.AngelToClientAction
- (_TtCCC17_MusicKit_SwiftUI10MusicAngel6ClientP33_CB4001CD55C9538CED542E9C0234080819AngelToClientAction)initWithInfo:(id)a3 responder:(id)a4;
- (_TtCCC17_MusicKit_SwiftUI10MusicAngel6ClientP33_CB4001CD55C9538CED542E9C0234080819AngelToClientAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
- (void)performActionForSceneController:(id)a3;
@end

@implementation MusicAngel.Client.AngelToClientAction

- (void)performActionForSceneController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2166522BC(v4);
}

- (_TtCCC17_MusicKit_SwiftUI10MusicAngel6ClientP33_CB4001CD55C9538CED542E9C0234080819AngelToClientAction)initWithInfo:(id)a3 responder:(id)a4
{
  v6 = a3;
  v7 = a4;
  return sub_216652778(a3, a4);
}

- (_TtCCC17_MusicKit_SwiftUI10MusicAngel6ClientP33_CB4001CD55C9538CED542E9C0234080819AngelToClientAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
{
  v9 = _Block_copy(a6);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_216652D8C;
  }

  else
  {
    v10 = 0;
  }

  v11 = a3;
  v12 = a5;
  return sub_2166529BC(a3, a5, v9, v10, a4);
}

@end
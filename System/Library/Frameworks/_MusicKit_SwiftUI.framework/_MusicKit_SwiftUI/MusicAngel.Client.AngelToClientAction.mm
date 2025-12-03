@interface MusicAngel.Client.AngelToClientAction
- (_TtCCC17_MusicKit_SwiftUI10MusicAngel6ClientP33_CB4001CD55C9538CED542E9C0234080819AngelToClientAction)initWithInfo:(id)info responder:(id)responder;
- (_TtCCC17_MusicKit_SwiftUI10MusicAngel6ClientP33_CB4001CD55C9538CED542E9C0234080819AngelToClientAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (void)performActionForSceneController:(id)controller;
@end

@implementation MusicAngel.Client.AngelToClientAction

- (void)performActionForSceneController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_2166522BC(controllerCopy);
}

- (_TtCCC17_MusicKit_SwiftUI10MusicAngel6ClientP33_CB4001CD55C9538CED542E9C0234080819AngelToClientAction)initWithInfo:(id)info responder:(id)responder
{
  infoCopy = info;
  responderCopy = responder;
  return sub_216652778(info, responder);
}

- (_TtCCC17_MusicKit_SwiftUI10MusicAngel6ClientP33_CB4001CD55C9538CED542E9C0234080819AngelToClientAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
{
  v9 = _Block_copy(handler);
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

  infoCopy = info;
  queueCopy = queue;
  return sub_2166529BC(info, queue, v9, v10, timeout);
}

@end
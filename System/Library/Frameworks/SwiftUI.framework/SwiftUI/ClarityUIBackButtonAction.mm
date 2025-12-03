@interface ClarityUIBackButtonAction
- (_TtC7SwiftUI25ClarityUIBackButtonAction)initWithCoder:(id)coder;
- (_TtC7SwiftUI25ClarityUIBackButtonAction)initWithInfo:(id)info responder:(id)responder;
- (_TtC7SwiftUI25ClarityUIBackButtonAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (_TtC7SwiftUI25ClarityUIBackButtonAction)initWithXPCDictionary:(id)dictionary;
@end

@implementation ClarityUIBackButtonAction

- (_TtC7SwiftUI25ClarityUIBackButtonAction)initWithInfo:(id)info responder:(id)responder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClarityUIBackButtonAction();
  return [(ClarityUIBackButtonAction *)&v7 initWithInfo:info responder:responder];
}

- (_TtC7SwiftUI25ClarityUIBackButtonAction)initWithXPCDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ClarityUIBackButtonAction();
  swift_unknownObjectRetain();
  v4 = [(ClarityUIBackButtonAction *)&v6 initWithXPCDictionary:dictionary];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (_TtC7SwiftUI25ClarityUIBackButtonAction)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClarityUIBackButtonAction();
  coderCopy = coder;
  v5 = [(ClarityUIBackButtonAction *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC7SwiftUI25ClarityUIBackButtonAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
{
  v9 = _Block_copy(handler);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned BSActionResponse) -> ();
  }

  else
  {
    v10 = 0;
  }

  infoCopy = info;
  queueCopy = queue;
  return ClarityUIBackButtonAction.init(info:timeout:forResponseOn:withHandler:)(info, queue, v9, v10, timeout);
}

@end
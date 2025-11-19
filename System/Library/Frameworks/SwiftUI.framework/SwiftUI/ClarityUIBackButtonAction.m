@interface ClarityUIBackButtonAction
- (_TtC7SwiftUI25ClarityUIBackButtonAction)initWithCoder:(id)a3;
- (_TtC7SwiftUI25ClarityUIBackButtonAction)initWithInfo:(id)a3 responder:(id)a4;
- (_TtC7SwiftUI25ClarityUIBackButtonAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
- (_TtC7SwiftUI25ClarityUIBackButtonAction)initWithXPCDictionary:(id)a3;
@end

@implementation ClarityUIBackButtonAction

- (_TtC7SwiftUI25ClarityUIBackButtonAction)initWithInfo:(id)a3 responder:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClarityUIBackButtonAction();
  return [(ClarityUIBackButtonAction *)&v7 initWithInfo:a3 responder:a4];
}

- (_TtC7SwiftUI25ClarityUIBackButtonAction)initWithXPCDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ClarityUIBackButtonAction();
  swift_unknownObjectRetain();
  v4 = [(ClarityUIBackButtonAction *)&v6 initWithXPCDictionary:a3];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (_TtC7SwiftUI25ClarityUIBackButtonAction)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClarityUIBackButtonAction();
  v4 = a3;
  v5 = [(ClarityUIBackButtonAction *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC7SwiftUI25ClarityUIBackButtonAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
{
  v9 = _Block_copy(a6);
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

  v11 = a3;
  v12 = a5;
  return ClarityUIBackButtonAction.init(info:timeout:forResponseOn:withHandler:)(a3, a5, v9, v10, a4);
}

@end
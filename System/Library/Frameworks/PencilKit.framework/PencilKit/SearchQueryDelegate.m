@interface SearchQueryDelegate
- (_TtC9PencilKitP33_0537958B5BACCEE51E097AACDDA82C0419SearchQueryDelegate)init;
- (void)queryDidUpdateResult:(id)a3;
@end

@implementation SearchQueryDelegate

- (void)queryDidUpdateResult:(id)a3
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = *(&self->super.isa + OBJC_IVAR____TtC9PencilKitP33_0537958B5BACCEE51E097AACDDA82C0419SearchQueryDelegate_searchResultsBlock);
    if (v6)
    {
      v7 = v5;
      v11 = a3;
      v8 = self;
      outlined copy of (@escaping @callee_guaranteed @async (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(v6);
      v9 = [v7 foundItems];
      type metadata accessor for CHSearchQueryItem();
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v6(v10, v8);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(v6);
    }
  }
}

- (_TtC9PencilKitP33_0537958B5BACCEE51E097AACDDA82C0419SearchQueryDelegate)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC9PencilKitP33_0537958B5BACCEE51E097AACDDA82C0419SearchQueryDelegate_searchResultsBlock);
  Delegate = type metadata accessor for SearchQueryDelegate();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = Delegate;
  return [(SearchQueryDelegate *)&v6 init];
}

@end
@interface FullScreenPreferenceTipController
- (void)hideTipAnimated:(BOOL)a3 completion:(id)a4;
- (void)showTipFrom:(id)a3 sourceItem:(id)a4 passthroughViews:(id)a5 permittedArrowDirections:(unint64_t)a6 shouldHideArrow:(BOOL)a7 tintColor:(id)a8 animated:(BOOL)a9;
@end

@implementation FullScreenPreferenceTipController

- (void)showTipFrom:(id)a3 sourceItem:(id)a4 passthroughViews:(id)a5 permittedArrowDirections:(unint64_t)a6 shouldHideArrow:(BOOL)a7 tintColor:(id)a8 animated:(BOOL)a9
{
  v10 = a7;
  v12 = a5;
  if (a5)
  {
    sub_100068320();
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v16 = a3;
  swift_unknownObjectRetain();
  v17 = a8;
  v18 = self;
  sub_1000668FC(v16, a4, v12, a6, v10, a8, a9);

  swift_unknownObjectRelease();
}

- (void)hideTipAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100068310;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_100065428(v4, v6, v7);
  sub_1000682C8(v6);
}

@end
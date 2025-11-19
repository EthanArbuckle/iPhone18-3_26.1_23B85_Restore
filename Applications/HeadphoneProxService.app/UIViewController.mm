@interface UIViewController
- (void)perormTapActionWithRecognizer:(id)a3 targetString:(id)a4 inLabel:(id)a5 action:(id)a6;
@end

@implementation UIViewController

- (void)perormTapActionWithRecognizer:(id)a3 targetString:(id)a4 inLabel:(id)a5 action:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v9);
  v13 = a3;
  v14 = a5;
  v15 = self;
  sub_1000A3BA0(v13, v10, v12, v14, v9);
  _Block_release(v9);
  _Block_release(v9);
}

@end
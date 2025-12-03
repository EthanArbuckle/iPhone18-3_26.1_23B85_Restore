@interface UIViewController
- (void)perormTapActionWithRecognizer:(id)recognizer targetString:(id)string inLabel:(id)label action:(id)action;
@end

@implementation UIViewController

- (void)perormTapActionWithRecognizer:(id)recognizer targetString:(id)string inLabel:(id)label action:(id)action
{
  v9 = _Block_copy(action);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v9);
  recognizerCopy = recognizer;
  labelCopy = label;
  selfCopy = self;
  sub_1000A3BA0(recognizerCopy, v10, v12, labelCopy, v9);
  _Block_release(v9);
  _Block_release(v9);
}

@end
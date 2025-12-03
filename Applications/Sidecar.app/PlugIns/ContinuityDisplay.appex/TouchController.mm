@interface TouchController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
@end

@implementation TouchController

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_10003C42C(selfCopy, touchCopy);

  return v9 & 1;
}

@end
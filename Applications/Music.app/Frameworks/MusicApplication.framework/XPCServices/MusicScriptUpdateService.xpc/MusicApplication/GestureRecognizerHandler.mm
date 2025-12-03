@interface GestureRecognizerHandler
- (void)handleActionFromGestureRecognizer:(id)recognizer;
@end

@implementation GestureRecognizerHandler

- (void)handleActionFromGestureRecognizer:(id)recognizer
{
  v3 = *self->handler;
  recognizerCopy = recognizer;

  v3(recognizerCopy);
}

@end
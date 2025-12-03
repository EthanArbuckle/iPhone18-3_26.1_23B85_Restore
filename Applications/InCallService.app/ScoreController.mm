@interface ScoreController
- (ScoreControllerDelegate)delegate;
- (void)setDelegate:(id)delegate;
@end

@implementation ScoreController

- (ScoreControllerDelegate)delegate
{
  v2 = ScoreController.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  ScoreController.delegate.setter();
}

@end
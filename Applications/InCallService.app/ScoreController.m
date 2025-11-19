@interface ScoreController
- (ScoreControllerDelegate)delegate;
- (void)setDelegate:(id)a3;
@end

@implementation ScoreController

- (ScoreControllerDelegate)delegate
{
  v2 = ScoreController.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  ScoreController.delegate.setter();
}

@end
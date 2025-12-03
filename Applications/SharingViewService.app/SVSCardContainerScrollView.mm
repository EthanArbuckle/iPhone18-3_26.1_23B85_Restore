@interface SVSCardContainerScrollView
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (SVSCardContainerScrollView)initWithGestureRecognizerEvaluator:(id)evaluator;
@end

@implementation SVSCardContainerScrollView

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  panGestureRecognizer = [(SVSCardContainerScrollView *)self panGestureRecognizer];

  if (panGestureRecognizer == beginCopy)
  {
    recognizerEvaluator = [(SVSCardContainerScrollView *)self recognizerEvaluator];
    v6 = (recognizerEvaluator)[2](recognizerEvaluator, beginCopy);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SVSCardContainerScrollView;
    v6 = [(SVSCardContainerScrollView *)&v9 gestureRecognizerShouldBegin:beginCopy];
  }

  return v6;
}

- (SVSCardContainerScrollView)initWithGestureRecognizerEvaluator:(id)evaluator
{
  evaluatorCopy = evaluator;
  v9.receiver = self;
  v9.super_class = SVSCardContainerScrollView;
  v5 = [(SVSCardContainerScrollView *)&v9 init];
  if (v5)
  {
    v6 = objc_retainBlock(evaluatorCopy);
    recognizerEvaluator = v5->_recognizerEvaluator;
    v5->_recognizerEvaluator = v6;
  }

  return v5;
}

@end
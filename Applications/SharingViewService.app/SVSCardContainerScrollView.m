@interface SVSCardContainerScrollView
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (SVSCardContainerScrollView)initWithGestureRecognizerEvaluator:(id)a3;
@end

@implementation SVSCardContainerScrollView

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(SVSCardContainerScrollView *)self panGestureRecognizer];

  if (v5 == v4)
  {
    v7 = [(SVSCardContainerScrollView *)self recognizerEvaluator];
    v6 = (v7)[2](v7, v4);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SVSCardContainerScrollView;
    v6 = [(SVSCardContainerScrollView *)&v9 gestureRecognizerShouldBegin:v4];
  }

  return v6;
}

- (SVSCardContainerScrollView)initWithGestureRecognizerEvaluator:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SVSCardContainerScrollView;
  v5 = [(SVSCardContainerScrollView *)&v9 init];
  if (v5)
  {
    v6 = objc_retainBlock(v4);
    recognizerEvaluator = v5->_recognizerEvaluator;
    v5->_recognizerEvaluator = v6;
  }

  return v5;
}

@end
@interface ASVGestureFeedbackGenerator
- (ASVGestureFeedbackGenerator)initWithSnapToGenerator:(id)a3 snapAwayFromGenerator:(id)a4;
- (void)prepare;
@end

@implementation ASVGestureFeedbackGenerator

- (ASVGestureFeedbackGenerator)initWithSnapToGenerator:(id)a3 snapAwayFromGenerator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ASVGestureFeedbackGenerator;
  v9 = [(ASVGestureFeedbackGenerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_snapToScaleFeedbackGenerator, a3);
    objc_storeStrong(&v10->_snapAwayFromScaleFeedbackGenerator, a4);
  }

  return v10;
}

- (void)prepare
{
  v3 = [(ASVGestureFeedbackGenerator *)self snapToScaleFeedbackGenerator];
  [v3 prepare];

  v4 = [(ASVGestureFeedbackGenerator *)self snapAwayFromScaleFeedbackGenerator];
  [v4 prepare];
}

@end
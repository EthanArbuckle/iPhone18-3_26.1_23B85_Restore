@interface ASVGestureFeedbackGenerator
- (ASVGestureFeedbackGenerator)initWithSnapToGenerator:(id)generator snapAwayFromGenerator:(id)fromGenerator;
- (void)prepare;
@end

@implementation ASVGestureFeedbackGenerator

- (ASVGestureFeedbackGenerator)initWithSnapToGenerator:(id)generator snapAwayFromGenerator:(id)fromGenerator
{
  generatorCopy = generator;
  fromGeneratorCopy = fromGenerator;
  v12.receiver = self;
  v12.super_class = ASVGestureFeedbackGenerator;
  v9 = [(ASVGestureFeedbackGenerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_snapToScaleFeedbackGenerator, generator);
    objc_storeStrong(&v10->_snapAwayFromScaleFeedbackGenerator, fromGenerator);
  }

  return v10;
}

- (void)prepare
{
  snapToScaleFeedbackGenerator = [(ASVGestureFeedbackGenerator *)self snapToScaleFeedbackGenerator];
  [snapToScaleFeedbackGenerator prepare];

  snapAwayFromScaleFeedbackGenerator = [(ASVGestureFeedbackGenerator *)self snapAwayFromScaleFeedbackGenerator];
  [snapAwayFromScaleFeedbackGenerator prepare];
}

@end
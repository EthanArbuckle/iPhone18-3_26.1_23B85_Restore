@interface SFAnalyzerTranscriptionSegment
- (SFAnalyzerTranscriptionSegment)initWithText:(id)a3 alternatives:(id)a4 confidence:(double)a5;
@end

@implementation SFAnalyzerTranscriptionSegment

- (SFAnalyzerTranscriptionSegment)initWithText:(id)a3 alternatives:(id)a4 confidence:(double)a5
{
  v15.receiver = self;
  v15.super_class = SFAnalyzerTranscriptionSegment;
  v7 = a4;
  v8 = a3;
  v9 = [(SFAnalyzerTranscriptionSegment *)&v15 init];
  v10 = [v8 copy];

  text = v9->_text;
  v9->_text = v10;

  v12 = [v7 copy];
  alternatives = v9->_alternatives;
  v9->_alternatives = v12;

  v9->_confidence = a5;
  return v9;
}

@end
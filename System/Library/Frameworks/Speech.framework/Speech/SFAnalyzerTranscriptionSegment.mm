@interface SFAnalyzerTranscriptionSegment
- (SFAnalyzerTranscriptionSegment)initWithText:(id)text alternatives:(id)alternatives confidence:(double)confidence;
@end

@implementation SFAnalyzerTranscriptionSegment

- (SFAnalyzerTranscriptionSegment)initWithText:(id)text alternatives:(id)alternatives confidence:(double)confidence
{
  v15.receiver = self;
  v15.super_class = SFAnalyzerTranscriptionSegment;
  alternativesCopy = alternatives;
  textCopy = text;
  v9 = [(SFAnalyzerTranscriptionSegment *)&v15 init];
  v10 = [textCopy copy];

  text = v9->_text;
  v9->_text = v10;

  v12 = [alternativesCopy copy];
  alternatives = v9->_alternatives;
  v9->_alternatives = v12;

  v9->_confidence = confidence;
  return v9;
}

@end
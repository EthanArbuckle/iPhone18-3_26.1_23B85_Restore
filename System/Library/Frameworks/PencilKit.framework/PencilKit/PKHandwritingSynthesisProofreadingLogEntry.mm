@interface PKHandwritingSynthesisProofreadingLogEntry
- (PKHandwritingSynthesisProofreadingLogEntry)initWithSynthesizedStrokes:(id)strokes originalStrokes:(id)originalStrokes debugInfo:(id)info;
@end

@implementation PKHandwritingSynthesisProofreadingLogEntry

- (PKHandwritingSynthesisProofreadingLogEntry)initWithSynthesizedStrokes:(id)strokes originalStrokes:(id)originalStrokes debugInfo:(id)info
{
  strokesCopy = strokes;
  originalStrokesCopy = originalStrokes;
  v15.receiver = self;
  v15.super_class = PKHandwritingSynthesisProofreadingLogEntry;
  v11 = [(PKHandwritingSynthesisLogEntry *)&v15 initWithDebugInfo:info];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_generatedStrokes, strokes);
    objc_storeStrong(&v12->_replacedStrokes, originalStrokes);
  }

  debugInfo = [(PKHandwritingSynthesisLogEntry *)v12 debugInfo];
  [debugInfo setObject:@"proofreading" forKeyedSubscript:@"type"];

  return v12;
}

@end
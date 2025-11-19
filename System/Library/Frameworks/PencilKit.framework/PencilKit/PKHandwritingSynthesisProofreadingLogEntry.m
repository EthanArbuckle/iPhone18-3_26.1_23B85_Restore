@interface PKHandwritingSynthesisProofreadingLogEntry
- (PKHandwritingSynthesisProofreadingLogEntry)initWithSynthesizedStrokes:(id)a3 originalStrokes:(id)a4 debugInfo:(id)a5;
@end

@implementation PKHandwritingSynthesisProofreadingLogEntry

- (PKHandwritingSynthesisProofreadingLogEntry)initWithSynthesizedStrokes:(id)a3 originalStrokes:(id)a4 debugInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = PKHandwritingSynthesisProofreadingLogEntry;
  v11 = [(PKHandwritingSynthesisLogEntry *)&v15 initWithDebugInfo:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_generatedStrokes, a3);
    objc_storeStrong(&v12->_replacedStrokes, a4);
  }

  v13 = [(PKHandwritingSynthesisLogEntry *)v12 debugInfo];
  [v13 setObject:@"proofreading" forKeyedSubscript:@"type"];

  return v12;
}

@end
@interface PKHandwritingSynthesisMathResultLogEntry
- (PKHandwritingSynthesisMathResultLogEntry)initWithSynthesizedStrokeGroups:(id)a3 debugInfo:(id)a4;
@end

@implementation PKHandwritingSynthesisMathResultLogEntry

- (PKHandwritingSynthesisMathResultLogEntry)initWithSynthesizedStrokeGroups:(id)a3 debugInfo:(id)a4
{
  v7.receiver = self;
  v7.super_class = PKHandwritingSynthesisMathResultLogEntry;
  v4 = [(PKHandwritingSynthesisGenerationLogEntry *)&v7 initWithSynthesizedStrokeGroups:a3 debugInfo:a4];
  v5 = [(PKHandwritingSynthesisLogEntry *)v4 debugInfo];
  [v5 setObject:@"mathResult" forKeyedSubscript:@"type"];

  return v4;
}

@end
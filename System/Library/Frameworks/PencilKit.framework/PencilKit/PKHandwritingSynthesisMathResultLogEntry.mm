@interface PKHandwritingSynthesisMathResultLogEntry
- (PKHandwritingSynthesisMathResultLogEntry)initWithSynthesizedStrokeGroups:(id)groups debugInfo:(id)info;
@end

@implementation PKHandwritingSynthesisMathResultLogEntry

- (PKHandwritingSynthesisMathResultLogEntry)initWithSynthesizedStrokeGroups:(id)groups debugInfo:(id)info
{
  v7.receiver = self;
  v7.super_class = PKHandwritingSynthesisMathResultLogEntry;
  v4 = [(PKHandwritingSynthesisGenerationLogEntry *)&v7 initWithSynthesizedStrokeGroups:groups debugInfo:info];
  debugInfo = [(PKHandwritingSynthesisLogEntry *)v4 debugInfo];
  [debugInfo setObject:@"mathResult" forKeyedSubscript:@"type"];

  return v4;
}

@end
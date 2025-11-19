@interface ATXMLInferenceResult
- (ATXMLInferenceResult)initWithScore:(double)a3 inputs:(id)a4 intermediateValues:(id)a5;
@end

@implementation ATXMLInferenceResult

- (ATXMLInferenceResult)initWithScore:(double)a3 inputs:(id)a4 intermediateValues:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = ATXMLInferenceResult;
  v10 = [(ATXMLInferenceResult *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_score = a3;
    v12 = [v8 copy];
    inputs = v11->_inputs;
    v11->_inputs = v12;

    v14 = [v9 copy];
    intermediateValues = v11->_intermediateValues;
    v11->_intermediateValues = v14;
  }

  return v11;
}

@end
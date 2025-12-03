@interface ATXMLInferenceResult
- (ATXMLInferenceResult)initWithScore:(double)score inputs:(id)inputs intermediateValues:(id)values;
@end

@implementation ATXMLInferenceResult

- (ATXMLInferenceResult)initWithScore:(double)score inputs:(id)inputs intermediateValues:(id)values
{
  inputsCopy = inputs;
  valuesCopy = values;
  v17.receiver = self;
  v17.super_class = ATXMLInferenceResult;
  v10 = [(ATXMLInferenceResult *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_score = score;
    v12 = [inputsCopy copy];
    inputs = v11->_inputs;
    v11->_inputs = v12;

    v14 = [valuesCopy copy];
    intermediateValues = v11->_intermediateValues;
    v11->_intermediateValues = v14;
  }

  return v11;
}

@end
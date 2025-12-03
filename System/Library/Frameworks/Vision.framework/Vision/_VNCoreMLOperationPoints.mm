@interface _VNCoreMLOperationPoints
- (BOOL)getClassificationMetrics:(id *)metrics forClassificationIdentifier:(id)identifier error:(id *)error;
- (_VNCoreMLOperationPoints)initWithClassLabels:(id)labels precisionRecallCurves:(id)curves;
@end

@implementation _VNCoreMLOperationPoints

- (BOOL)getClassificationMetrics:(id *)metrics forClassificationIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v9 = [(NSArray *)self->_classLabels indexOfObject:identifierCopy];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [objc_opt_class() errorForUnknownClassificationIdentifier:identifierCopy];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = [(NSArray *)self->_precisionRecallCurves objectAtIndex:v9];
    v12 = MEMORY[0x1E69DF9C0];
    precisionValues = [v11 precisionValues];
    precisionConfidenceThresholds = [v11 precisionConfidenceThresholds];
    v15 = [v12 curveWithValuesArray:precisionValues confidencesArray:precisionConfidenceThresholds error:error];

    if (v15)
    {
      v16 = MEMORY[0x1E69DF9C0];
      recallValues = [v11 recallValues];
      recallConfidenceThresholds = [v11 recallConfidenceThresholds];
      v19 = [v16 curveWithValuesArray:recallValues confidencesArray:recallConfidenceThresholds error:error];

      v10 = v19 != 0;
      if (v19)
      {
        v20 = [objc_alloc(MEMORY[0x1E69DF8D0]) initWithPrecisionCurve:v15 recallCurve:v19];
        *metrics = v20;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (_VNCoreMLOperationPoints)initWithClassLabels:(id)labels precisionRecallCurves:(id)curves
{
  labelsCopy = labels;
  curvesCopy = curves;
  v14.receiver = self;
  v14.super_class = _VNCoreMLOperationPoints;
  v8 = [(_VNCoreMLOperationPoints *)&v14 init];
  if (v8)
  {
    v9 = [labelsCopy copy];
    classLabels = v8->_classLabels;
    v8->_classLabels = v9;

    v11 = [curvesCopy copy];
    precisionRecallCurves = v8->_precisionRecallCurves;
    v8->_precisionRecallCurves = v11;
  }

  return v8;
}

@end
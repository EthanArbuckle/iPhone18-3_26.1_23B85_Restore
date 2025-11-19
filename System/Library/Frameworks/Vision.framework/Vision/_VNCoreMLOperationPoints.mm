@interface _VNCoreMLOperationPoints
- (BOOL)getClassificationMetrics:(id *)a3 forClassificationIdentifier:(id)a4 error:(id *)a5;
- (_VNCoreMLOperationPoints)initWithClassLabels:(id)a3 precisionRecallCurves:(id)a4;
@end

@implementation _VNCoreMLOperationPoints

- (BOOL)getClassificationMetrics:(id *)a3 forClassificationIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(NSArray *)self->_classLabels indexOfObject:v8];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a5)
    {
      [objc_opt_class() errorForUnknownClassificationIdentifier:v8];
      *a5 = v10 = 0;
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
    v13 = [v11 precisionValues];
    v14 = [v11 precisionConfidenceThresholds];
    v15 = [v12 curveWithValuesArray:v13 confidencesArray:v14 error:a5];

    if (v15)
    {
      v16 = MEMORY[0x1E69DF9C0];
      v17 = [v11 recallValues];
      v18 = [v11 recallConfidenceThresholds];
      v19 = [v16 curveWithValuesArray:v17 confidencesArray:v18 error:a5];

      v10 = v19 != 0;
      if (v19)
      {
        v20 = [objc_alloc(MEMORY[0x1E69DF8D0]) initWithPrecisionCurve:v15 recallCurve:v19];
        *a3 = v20;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (_VNCoreMLOperationPoints)initWithClassLabels:(id)a3 precisionRecallCurves:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _VNCoreMLOperationPoints;
  v8 = [(_VNCoreMLOperationPoints *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    classLabels = v8->_classLabels;
    v8->_classLabels = v9;

    v11 = [v7 copy];
    precisionRecallCurves = v8->_precisionRecallCurves;
    v8->_precisionRecallCurves = v11;
  }

  return v8;
}

@end
@interface VNOperationPoints
+ (id)errorForUnimplementedMethod:(SEL)a3;
+ (id)errorForUnknownClassificationIdentifier:(id)a3;
+ (id)loadFromURL:(id)a3 error:(id *)a4;
+ (id)operationPointsForMLModel:(id)a3 error:(id *)p_isa;
+ (id)unspecifiedOperationPoints;
- (BOOL)getClassificationMetrics:(id *)a3 forClassificationIdentifier:(id)a4 error:(id *)a5;
- (BOOL)getConfidence:(float *)a3 forClassificationIdentifier:(id)a4 withPrecision:(float)a5 error:(id *)a6;
- (BOOL)getConfidence:(float *)a3 forClassificationIdentifier:(id)a4 withRecall:(float)a5 error:(id *)a6;
- (BOOL)getDefaultConfidence:(float *)a3 forClassificationIdentifier:(id)a4 error:(id *)a5;
- (BOOL)getPrecision:(float *)a3 forClassificationIdentifier:(id)a4 confidence:(float)a5 error:(id *)a6;
- (BOOL)getRecall:(float *)a3 forClassificationIdentifier:(id)a4 confidence:(float)a5 error:(id *)a6;
- (VNOperationPoints)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNOperationPoints

- (VNOperationPoints)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [objc_opt_class() errorForUnimplementedMethod:a2];
  [v5 failWithError:v6];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() errorForUnimplementedMethod:a2];
  [v4 failWithError:v5];
}

- (BOOL)getRecall:(float *)a3 forClassificationIdentifier:(id)a4 confidence:(float)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = [objc_opt_class() errorForUnimplementedMethod:a2];
  }

  return 0;
}

- (BOOL)getConfidence:(float *)a3 forClassificationIdentifier:(id)a4 withRecall:(float)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = [objc_opt_class() errorForUnimplementedMethod:a2];
  }

  return 0;
}

- (BOOL)getPrecision:(float *)a3 forClassificationIdentifier:(id)a4 confidence:(float)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = [objc_opt_class() errorForUnimplementedMethod:a2];
  }

  return 0;
}

- (BOOL)getConfidence:(float *)a3 forClassificationIdentifier:(id)a4 withPrecision:(float)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = [objc_opt_class() errorForUnimplementedMethod:a2];
  }

  return 0;
}

- (BOOL)getDefaultConfidence:(float *)a3 forClassificationIdentifier:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [objc_opt_class() errorForUnimplementedMethod:a2];
  }

  return 0;
}

- (BOOL)getClassificationMetrics:(id *)a3 forClassificationIdentifier:(id)a4 error:(id *)a5
{
  if (a5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no operating points for identifier %@", a4];
    *a5 = [VNError errorForDataUnavailableWithLocalizedDescription:v6];
  }

  return 0;
}

+ (id)loadFromURL:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [a1 errorForUnimplementedMethod:a2];
  }

  return 0;
}

+ (id)unspecifiedOperationPoints
{
  v2 = objc_alloc_init(_VNUnspecifiedOperationPoints);

  return v2;
}

+ (id)errorForUnknownClassificationIdentifier:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown classification identifier %@", a3];
  v4 = [VNError errorForInvalidArgumentWithLocalizedDescription:v3];

  return v4;
}

+ (id)errorForUnimplementedMethod:(SEL)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromClass(a1);
  v6 = NSStringFromSelector(a3);
  v7 = [v4 stringWithFormat:@"%@ must implement %@", v5, v6];

  v8 = [VNError errorForUnimplementedFunctionWithLocalizedDescription:v7];

  return v8;
}

+ (id)operationPointsForMLModel:(id)a3 error:(id *)p_isa
{
  v5 = a3;
  v6 = [v5 modelDescription];
  v7 = [v6 classLabels];
  if (!v7)
  {
    p_isa = +[VNOperationPoints unspecifiedOperationPoints];
    goto LABEL_11;
  }

  v8 = [MEMORY[0x1E695FEF8] precisionRecallCurves];
  v9 = [v5 parameterValueForKey:v8 error:0];

  if (v9)
  {
    v10 = [v7 count];
    if (v10 != [v9 count])
    {
      if (p_isa)
      {
        v12 = objc_alloc(MEMORY[0x1E696AEC0]);
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
        v15 = [v12 initWithFormat:@"%@ has a mismatch of %@ class labels and %@ precision/recall curve entries", v5, v13, v14];

        *p_isa = [VNError errorForInvalidModelWithLocalizedDescription:v15];

        p_isa = 0;
      }

      goto LABEL_10;
    }

    v11 = [[_VNCoreMLOperationPoints alloc] initWithClassLabels:v7 precisionRecallCurves:v9];
  }

  else
  {
    v11 = +[VNOperationPoints unspecifiedOperationPoints];
  }

  p_isa = &v11->super.super.isa;
LABEL_10:

LABEL_11:

  return p_isa;
}

@end
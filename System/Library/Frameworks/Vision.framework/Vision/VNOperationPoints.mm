@interface VNOperationPoints
+ (id)errorForUnimplementedMethod:(SEL)method;
+ (id)errorForUnknownClassificationIdentifier:(id)identifier;
+ (id)loadFromURL:(id)l error:(id *)error;
+ (id)operationPointsForMLModel:(id)model error:(id *)p_isa;
+ (id)unspecifiedOperationPoints;
- (BOOL)getClassificationMetrics:(id *)metrics forClassificationIdentifier:(id)identifier error:(id *)error;
- (BOOL)getConfidence:(float *)confidence forClassificationIdentifier:(id)identifier withPrecision:(float)precision error:(id *)error;
- (BOOL)getConfidence:(float *)confidence forClassificationIdentifier:(id)identifier withRecall:(float)recall error:(id *)error;
- (BOOL)getDefaultConfidence:(float *)confidence forClassificationIdentifier:(id)identifier error:(id *)error;
- (BOOL)getPrecision:(float *)precision forClassificationIdentifier:(id)identifier confidence:(float)confidence error:(id *)error;
- (BOOL)getRecall:(float *)recall forClassificationIdentifier:(id)identifier confidence:(float)confidence error:(id *)error;
- (VNOperationPoints)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNOperationPoints

- (VNOperationPoints)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [objc_opt_class() errorForUnimplementedMethod:a2];
  [coderCopy failWithError:v6];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [objc_opt_class() errorForUnimplementedMethod:a2];
  [coderCopy failWithError:v5];
}

- (BOOL)getRecall:(float *)recall forClassificationIdentifier:(id)identifier confidence:(float)confidence error:(id *)error
{
  if (error)
  {
    *error = [objc_opt_class() errorForUnimplementedMethod:a2];
  }

  return 0;
}

- (BOOL)getConfidence:(float *)confidence forClassificationIdentifier:(id)identifier withRecall:(float)recall error:(id *)error
{
  if (error)
  {
    *error = [objc_opt_class() errorForUnimplementedMethod:a2];
  }

  return 0;
}

- (BOOL)getPrecision:(float *)precision forClassificationIdentifier:(id)identifier confidence:(float)confidence error:(id *)error
{
  if (error)
  {
    *error = [objc_opt_class() errorForUnimplementedMethod:a2];
  }

  return 0;
}

- (BOOL)getConfidence:(float *)confidence forClassificationIdentifier:(id)identifier withPrecision:(float)precision error:(id *)error
{
  if (error)
  {
    *error = [objc_opt_class() errorForUnimplementedMethod:a2];
  }

  return 0;
}

- (BOOL)getDefaultConfidence:(float *)confidence forClassificationIdentifier:(id)identifier error:(id *)error
{
  if (error)
  {
    *error = [objc_opt_class() errorForUnimplementedMethod:a2];
  }

  return 0;
}

- (BOOL)getClassificationMetrics:(id *)metrics forClassificationIdentifier:(id)identifier error:(id *)error
{
  if (error)
  {
    identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"no operating points for identifier %@", identifier];
    *error = [VNError errorForDataUnavailableWithLocalizedDescription:identifier];
  }

  return 0;
}

+ (id)loadFromURL:(id)l error:(id *)error
{
  if (error)
  {
    *error = [self errorForUnimplementedMethod:a2];
  }

  return 0;
}

+ (id)unspecifiedOperationPoints
{
  v2 = objc_alloc_init(_VNUnspecifiedOperationPoints);

  return v2;
}

+ (id)errorForUnknownClassificationIdentifier:(id)identifier
{
  identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown classification identifier %@", identifier];
  v4 = [VNError errorForInvalidArgumentWithLocalizedDescription:identifier];

  return v4;
}

+ (id)errorForUnimplementedMethod:(SEL)method
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromClass(self);
  v6 = NSStringFromSelector(method);
  v7 = [v4 stringWithFormat:@"%@ must implement %@", v5, v6];

  v8 = [VNError errorForUnimplementedFunctionWithLocalizedDescription:v7];

  return v8;
}

+ (id)operationPointsForMLModel:(id)model error:(id *)p_isa
{
  modelCopy = model;
  modelDescription = [modelCopy modelDescription];
  classLabels = [modelDescription classLabels];
  if (!classLabels)
  {
    p_isa = +[VNOperationPoints unspecifiedOperationPoints];
    goto LABEL_11;
  }

  precisionRecallCurves = [MEMORY[0x1E695FEF8] precisionRecallCurves];
  v9 = [modelCopy parameterValueForKey:precisionRecallCurves error:0];

  if (v9)
  {
    v10 = [classLabels count];
    if (v10 != [v9 count])
    {
      if (p_isa)
      {
        v12 = objc_alloc(MEMORY[0x1E696AEC0]);
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(classLabels, "count")}];
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
        v15 = [v12 initWithFormat:@"%@ has a mismatch of %@ class labels and %@ precision/recall curve entries", modelCopy, v13, v14];

        *p_isa = [VNError errorForInvalidModelWithLocalizedDescription:v15];

        p_isa = 0;
      }

      goto LABEL_10;
    }

    v11 = [[_VNCoreMLOperationPoints alloc] initWithClassLabels:classLabels precisionRecallCurves:v9];
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
@interface _VNUnspecifiedOperationPoints
- (BOOL)getConfidence:(float *)a3 forClassificationIdentifier:(id)a4 withPrecision:(float)a5 error:(id *)a6;
- (BOOL)getConfidence:(float *)a3 forClassificationIdentifier:(id)a4 withRecall:(float)a5 error:(id *)a6;
- (BOOL)getDefaultConfidence:(float *)a3 forClassificationIdentifier:(id)a4 error:(id *)a5;
- (BOOL)getPrecision:(float *)a3 forClassificationIdentifier:(id)a4 confidence:(float)a5 error:(id *)a6;
- (BOOL)getRecall:(float *)a3 forClassificationIdentifier:(id)a4 confidence:(float)a5 error:(id *)a6;
- (BOOL)isEqual:(id)a3;
@end

@implementation _VNUnspecifiedOperationPoints

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    isKindOfClass = 1;
  }

  else
  {
    v3 = a3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)getRecall:(float *)a3 forClassificationIdentifier:(id)a4 confidence:(float)a5 error:(id *)a6
{
  if (a6)
  {
    v7 = a4;
    v8 = [objc_opt_class() errorForUnknownClassificationIdentifier:v7];

    v9 = v8;
    *a6 = v8;
  }

  return 0;
}

- (BOOL)getConfidence:(float *)a3 forClassificationIdentifier:(id)a4 withRecall:(float)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = _dataUnvailableError(a4);
  }

  return 0;
}

- (BOOL)getPrecision:(float *)a3 forClassificationIdentifier:(id)a4 confidence:(float)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = _dataUnvailableError(a4);
  }

  return 0;
}

- (BOOL)getConfidence:(float *)a3 forClassificationIdentifier:(id)a4 withPrecision:(float)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = _dataUnvailableError(a4);
  }

  return 0;
}

- (BOOL)getDefaultConfidence:(float *)a3 forClassificationIdentifier:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = _dataUnvailableError(a4);
  }

  return 0;
}

@end
@interface _VNUnspecifiedOperationPoints
- (BOOL)getConfidence:(float *)confidence forClassificationIdentifier:(id)identifier withPrecision:(float)precision error:(id *)error;
- (BOOL)getConfidence:(float *)confidence forClassificationIdentifier:(id)identifier withRecall:(float)recall error:(id *)error;
- (BOOL)getDefaultConfidence:(float *)confidence forClassificationIdentifier:(id)identifier error:(id *)error;
- (BOOL)getPrecision:(float *)precision forClassificationIdentifier:(id)identifier confidence:(float)confidence error:(id *)error;
- (BOOL)getRecall:(float *)recall forClassificationIdentifier:(id)identifier confidence:(float)confidence error:(id *)error;
- (BOOL)isEqual:(id)equal;
@end

@implementation _VNUnspecifiedOperationPoints

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    isKindOfClass = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)getRecall:(float *)recall forClassificationIdentifier:(id)identifier confidence:(float)confidence error:(id *)error
{
  if (error)
  {
    identifierCopy = identifier;
    v8 = [objc_opt_class() errorForUnknownClassificationIdentifier:identifierCopy];

    v9 = v8;
    *error = v8;
  }

  return 0;
}

- (BOOL)getConfidence:(float *)confidence forClassificationIdentifier:(id)identifier withRecall:(float)recall error:(id *)error
{
  if (error)
  {
    *error = _dataUnvailableError(identifier);
  }

  return 0;
}

- (BOOL)getPrecision:(float *)precision forClassificationIdentifier:(id)identifier confidence:(float)confidence error:(id *)error
{
  if (error)
  {
    *error = _dataUnvailableError(identifier);
  }

  return 0;
}

- (BOOL)getConfidence:(float *)confidence forClassificationIdentifier:(id)identifier withPrecision:(float)precision error:(id *)error
{
  if (error)
  {
    *error = _dataUnvailableError(identifier);
  }

  return 0;
}

- (BOOL)getDefaultConfidence:(float *)confidence forClassificationIdentifier:(id)identifier error:(id *)error
{
  if (error)
  {
    *error = _dataUnvailableError(identifier);
  }

  return 0;
}

@end
@interface VNClassificationObservation
- (BOOL)hasMinimumPrecision:(float)minimumPrecision forRecall:(float)recall;
- (BOOL)hasMinimumRecall:(float)minimumRecall forPrecision:(float)precision;
- (BOOL)isEqual:(id)equal;
- (VNClassificationObservation)initWithCoder:(id)coder;
- (VNClassificationObservation)initWithOriginatingRequestSpecifier:(id)specifier identifier:(id)identifier confidence:(float)confidence classificationMetrics:(id)metrics;
- (VNClassificationObservation)initWithRequestRevision:(unint64_t)revision identifier:(id)identifier confidence:(float)confidence classificationMetrics:(id)metrics;
- (id)description;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNClassificationObservation

- (BOOL)hasMinimumPrecision:(float)minimumPrecision forRecall:(float)recall
{
  classificationMetrics = self->_classificationMetrics;
  if (!classificationMetrics)
  {
    historicallyEncodedOperationPointsProvider = self->_historicallyEncodedOperationPointsProvider;
    if (!historicallyEncodedOperationPointsProvider)
    {
      return 0;
    }

    v15 = [(VNOperationPointsProvider *)historicallyEncodedOperationPointsProvider operationPointsAndReturnError:0];
    v8 = v15;
    if (v15)
    {
      v16 = v15;
      [(VNObservation *)self confidence];
      v18 = v17;
      if (v17 <= 0.0)
      {
        v13 = 0;
      }

      else
      {
        identifier = [(VNClassificationObservation *)self identifier];
        v24 = 0.0;
        *&v20 = recall;
        if (([(VisionCoreClassificationMetrics *)v16 getConfidence:&v24 forClassificationIdentifier:identifier withRecall:0 error:v20]& 1) != 0 && v18 >= v24)
        {
          if (minimumPrecision <= 0.0)
          {
            v13 = 1;
          }

          else
          {
            v23 = 0.0;
            v22 = [(VisionCoreClassificationMetrics *)v16 getPrecision:&v23 forClassificationIdentifier:identifier confidence:0 error:?];
            if (v23 >= minimumPrecision)
            {
              v13 = v22;
            }

            else
            {
              v13 = 0;
            }
          }
        }

        else
        {
          v13 = 0;
        }
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v8 = classificationMetrics;
  [(VNObservation *)self confidence];
  v10 = *&v9;
  if (*&v9 <= 0.0 || (*&v9 = recall, [(VisionCoreClassificationMetrics *)v8 confidenceThresholdForRecall:v9], v10 < v11) || minimumPrecision > 0.0 && ([(VisionCoreClassificationMetrics *)v8 precisionOfConfidence:?], v12 < minimumPrecision))
  {
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v13 = 1;
LABEL_15:

  return v13;
}

- (BOOL)hasMinimumRecall:(float)minimumRecall forPrecision:(float)precision
{
  classificationMetrics = self->_classificationMetrics;
  if (!classificationMetrics)
  {
    historicallyEncodedOperationPointsProvider = self->_historicallyEncodedOperationPointsProvider;
    if (!historicallyEncodedOperationPointsProvider)
    {
      return 0;
    }

    v15 = [(VNOperationPointsProvider *)historicallyEncodedOperationPointsProvider operationPointsAndReturnError:0];
    v8 = v15;
    if (v15)
    {
      v16 = v15;
      [(VNObservation *)self confidence];
      v18 = v17;
      if (v17 <= 0.0)
      {
        v13 = 0;
      }

      else
      {
        identifier = [(VNClassificationObservation *)self identifier];
        v24 = 0.0;
        *&v20 = precision;
        if (([(VisionCoreClassificationMetrics *)v16 getConfidence:&v24 forClassificationIdentifier:identifier withPrecision:0 error:v20]& 1) != 0 && v18 >= v24)
        {
          if (minimumRecall <= 0.0)
          {
            v13 = 1;
          }

          else
          {
            v23 = 0.0;
            v22 = [(VisionCoreClassificationMetrics *)v16 getRecall:&v23 forClassificationIdentifier:identifier confidence:0 error:?];
            if (v23 >= minimumRecall)
            {
              v13 = v22;
            }

            else
            {
              v13 = 0;
            }
          }
        }

        else
        {
          v13 = 0;
        }
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v8 = classificationMetrics;
  [(VNObservation *)self confidence];
  v10 = *&v9;
  if (*&v9 <= 0.0 || (*&v9 = precision, [(VisionCoreClassificationMetrics *)v8 confidenceThresholdForPrecision:v9], v10 < v11) || minimumRecall > 0.0 && ([(VisionCoreClassificationMetrics *)v8 recallOfConfidence:?], v12 < minimumRecall))
  {
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v13 = 1;
LABEL_15:

  return v13;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v8.receiver = self;
  v8.super_class = VNClassificationObservation;
  v4 = [(VNObservation *)&v8 description];
  [v3 appendString:v4];

  identifier = [(VNClassificationObservation *)self identifier];
  v6 = identifier;
  if (identifier)
  {
    [v3 appendFormat:@" %@", identifier];
  }

  if ([(VNClassificationObservation *)self hasPrecisionRecallCurve])
  {
    [v3 appendString:@" (P/R)"];
  }

  return v3;
}

- (id)vn_cloneObject
{
  v9.receiver = self;
  v9.super_class = VNClassificationObservation;
  vn_cloneObject = [(VNObservation *)&v9 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(NSString *)self->_identifier copy];
    v5 = *(vn_cloneObject + 96);
    *(vn_cloneObject + 96) = v4;

    v6 = [(VisionCoreClassificationMetrics *)self->_classificationMetrics copy];
    v7 = *(vn_cloneObject + 104);
    *(vn_cloneObject + 104) = v6;

    objc_storeStrong((vn_cloneObject + 112), self->_historicallyEncodedOperationPointsProvider);
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = VNClassificationObservation;
  [(VNObservation *)&v10 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  classificationMetrics = self->_classificationMetrics;
  if (classificationMetrics)
  {
    [coderCopy encodeObject:classificationMetrics forKey:@"P/R"];
  }

  else
  {
    historicallyEncodedOperationPointsProvider = self->_historicallyEncodedOperationPointsProvider;
    if (historicallyEncodedOperationPointsProvider)
    {
      v9 = 0;
      v7 = [(VNOperationPointsProvider *)historicallyEncodedOperationPointsProvider operationPointsAndReturnError:&v9];
      v8 = v9;
      if (v7)
      {
        [coderCopy encodeObject:v7 forKey:@"operationPoints"];
      }

      else
      {
        [coderCopy failWithError:v8];
      }
    }
  }
}

- (VNClassificationObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = VNClassificationObservation;
  v5 = [(VNObservation *)&v15 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [v6 copy];
  identifier = v5->_identifier;
  v5->_identifier = v7;

  if (![coderCopy containsValueForKey:@"P/R"])
  {
    if ([coderCopy containsValueForKey:@"operationPoints"])
    {
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"operationPoints"];
      if (!v11)
      {
        goto LABEL_9;
      }

      v12 = [[VNOperationPointsProvider alloc] initWithOperationPoints:v11];
      historicallyEncodedOperationPointsProvider = v5->_historicallyEncodedOperationPointsProvider;
      v5->_historicallyEncodedOperationPointsProvider = v12;
    }

LABEL_8:
    v11 = v5;
    goto LABEL_9;
  }

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"P/R"];
  classificationMetrics = v5->_classificationMetrics;
  v5->_classificationMetrics = v9;

  if (v5->_classificationMetrics)
  {
    goto LABEL_8;
  }

LABEL_4:
  v11 = 0;
LABEL_9:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = VNClassificationObservation;
    if ([(VNObservation *)&v14 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      identifier = [(VNClassificationObservation *)self identifier];
      identifier2 = [(VNClassificationObservation *)v5 identifier];
      v8 = [identifier isEqualToString:identifier2];

      if ((v8 & 1) != 0 && (v9 = self->_classificationMetrics, v10 = VisionCoreEqualOrNilObjects(), v9, v10))
      {
        v11 = self->_historicallyEncodedOperationPointsProvider;
        v12 = VisionCoreEqualOrNilObjects();
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = VNClassificationObservation;
  v3 = [(VNObservation *)&v7 hash];
  identifier = [(VNClassificationObservation *)self identifier];
  v5 = [identifier hash] ^ __ROR8__(v3, 51);

  return v5;
}

- (VNClassificationObservation)initWithOriginatingRequestSpecifier:(id)specifier identifier:(id)identifier confidence:(float)confidence classificationMetrics:(id)metrics
{
  specifierCopy = specifier;
  identifierCopy = identifier;
  metricsCopy = metrics;
  v20.receiver = self;
  v20.super_class = VNClassificationObservation;
  v13 = [(VNObservation *)&v20 initWithOriginatingRequestSpecifier:specifierCopy];
  if (v13)
  {
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [metricsCopy copy];
    classificationMetrics = v13->_classificationMetrics;
    v13->_classificationMetrics = v16;

    *&v18 = confidence;
    [(VNObservation *)v13 setConfidence:v18];
  }

  return v13;
}

- (VNClassificationObservation)initWithRequestRevision:(unint64_t)revision identifier:(id)identifier confidence:(float)confidence classificationMetrics:(id)metrics
{
  identifierCopy = identifier;
  metricsCopy = metrics;
  v19.receiver = self;
  v19.super_class = VNClassificationObservation;
  v12 = [(VNObservation *)&v19 initWithRequestRevision:revision];
  if (v12)
  {
    v13 = [identifierCopy copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v15 = [metricsCopy copy];
    classificationMetrics = v12->_classificationMetrics;
    v12->_classificationMetrics = v15;

    *&v17 = confidence;
    [(VNObservation *)v12 setConfidence:v17];
  }

  return v12;
}

@end
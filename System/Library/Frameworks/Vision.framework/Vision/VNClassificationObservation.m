@interface VNClassificationObservation
- (BOOL)hasMinimumPrecision:(float)minimumPrecision forRecall:(float)recall;
- (BOOL)hasMinimumRecall:(float)minimumRecall forPrecision:(float)precision;
- (BOOL)isEqual:(id)a3;
- (VNClassificationObservation)initWithCoder:(id)a3;
- (VNClassificationObservation)initWithOriginatingRequestSpecifier:(id)a3 identifier:(id)a4 confidence:(float)a5 classificationMetrics:(id)a6;
- (VNClassificationObservation)initWithRequestRevision:(unint64_t)a3 identifier:(id)a4 confidence:(float)a5 classificationMetrics:(id)a6;
- (id)description;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
        v19 = [(VNClassificationObservation *)self identifier];
        v24 = 0.0;
        *&v20 = recall;
        if (([(VisionCoreClassificationMetrics *)v16 getConfidence:&v24 forClassificationIdentifier:v19 withRecall:0 error:v20]& 1) != 0 && v18 >= v24)
        {
          if (minimumPrecision <= 0.0)
          {
            v13 = 1;
          }

          else
          {
            v23 = 0.0;
            v22 = [(VisionCoreClassificationMetrics *)v16 getPrecision:&v23 forClassificationIdentifier:v19 confidence:0 error:?];
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
        v19 = [(VNClassificationObservation *)self identifier];
        v24 = 0.0;
        *&v20 = precision;
        if (([(VisionCoreClassificationMetrics *)v16 getConfidence:&v24 forClassificationIdentifier:v19 withPrecision:0 error:v20]& 1) != 0 && v18 >= v24)
        {
          if (minimumRecall <= 0.0)
          {
            v13 = 1;
          }

          else
          {
            v23 = 0.0;
            v22 = [(VisionCoreClassificationMetrics *)v16 getRecall:&v23 forClassificationIdentifier:v19 confidence:0 error:?];
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

  v5 = [(VNClassificationObservation *)self identifier];
  v6 = v5;
  if (v5)
  {
    [v3 appendFormat:@" %@", v5];
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
  v3 = [(VNObservation *)&v9 vn_cloneObject];
  if (v3)
  {
    v4 = [(NSString *)self->_identifier copy];
    v5 = *(v3 + 96);
    *(v3 + 96) = v4;

    v6 = [(VisionCoreClassificationMetrics *)self->_classificationMetrics copy];
    v7 = *(v3 + 104);
    *(v3 + 104) = v6;

    objc_storeStrong((v3 + 112), self->_historicallyEncodedOperationPointsProvider);
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = VNClassificationObservation;
  [(VNObservation *)&v10 encodeWithCoder:v4];
  [v4 encodeObject:self->_identifier forKey:@"identifier"];
  classificationMetrics = self->_classificationMetrics;
  if (classificationMetrics)
  {
    [v4 encodeObject:classificationMetrics forKey:@"P/R"];
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
        [v4 encodeObject:v7 forKey:@"operationPoints"];
      }

      else
      {
        [v4 failWithError:v8];
      }
    }
  }
}

- (VNClassificationObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VNClassificationObservation;
  v5 = [(VNObservation *)&v15 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [v6 copy];
  identifier = v5->_identifier;
  v5->_identifier = v7;

  if (![v4 containsValueForKey:@"P/R"])
  {
    if ([v4 containsValueForKey:@"operationPoints"])
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operationPoints"];
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

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"P/R"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = VNClassificationObservation;
    if ([(VNObservation *)&v14 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v6 = [(VNClassificationObservation *)self identifier];
      v7 = [(VNClassificationObservation *)v5 identifier];
      v8 = [v6 isEqualToString:v7];

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
  v4 = [(VNClassificationObservation *)self identifier];
  v5 = [v4 hash] ^ __ROR8__(v3, 51);

  return v5;
}

- (VNClassificationObservation)initWithOriginatingRequestSpecifier:(id)a3 identifier:(id)a4 confidence:(float)a5 classificationMetrics:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = VNClassificationObservation;
  v13 = [(VNObservation *)&v20 initWithOriginatingRequestSpecifier:v10];
  if (v13)
  {
    v14 = [v11 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [v12 copy];
    classificationMetrics = v13->_classificationMetrics;
    v13->_classificationMetrics = v16;

    *&v18 = a5;
    [(VNObservation *)v13 setConfidence:v18];
  }

  return v13;
}

- (VNClassificationObservation)initWithRequestRevision:(unint64_t)a3 identifier:(id)a4 confidence:(float)a5 classificationMetrics:(id)a6
{
  v10 = a4;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = VNClassificationObservation;
  v12 = [(VNObservation *)&v19 initWithRequestRevision:a3];
  if (v12)
  {
    v13 = [v10 copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v15 = [v11 copy];
    classificationMetrics = v12->_classificationMetrics;
    v12->_classificationMetrics = v15;

    *&v17 = a5;
    [(VNObservation *)v12 setConfidence:v17];
  }

  return v12;
}

@end
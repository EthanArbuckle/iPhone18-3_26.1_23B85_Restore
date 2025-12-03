@interface VNSceneTaxonomyOperationPoints
+ (id)URLForIdentifier:(id)identifier error:(id *)error;
+ (id)loadFromIdentifier:(id)identifier error:(id *)error;
+ (id)loadFromPropertyList:(id)list error:(id *)error;
+ (id)loadFromURL:(id)l error:(id *)error;
- (BOOL)getClassificationMetrics:(id *)metrics forClassificationIdentifier:(id)identifier error:(id *)error;
- (BOOL)getConfidence:(float *)confidence forClassificationIdentifier:(id)identifier withPrecision:(float)precision error:(id *)error;
- (BOOL)getConfidence:(float *)confidence forClassificationIdentifier:(id)identifier withRecall:(float)recall error:(id *)error;
- (BOOL)getDefaultConfidence:(float *)confidence forClassificationIdentifier:(id)identifier error:(id *)error;
- (BOOL)getPrecision:(float *)precision forClassificationIdentifier:(id)identifier confidence:(float)confidence error:(id *)error;
- (BOOL)getRecall:(float *)recall forClassificationIdentifier:(id)identifier confidence:(float)confidence error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (VNSceneTaxonomyOperationPoints)initWithCoder:(id)coder;
- (VNSceneTaxonomyOperationPoints)initWithLabelToOperationPointsDataIndexMap:(id)map operationPointsDataArray:(id *)array;
- (const)_operationPointsDataForClassificationIdentifier:(id)identifier error:(id *)error;
- (id)_propertyListRepresentation;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNSceneTaxonomyOperationPoints

- (VNSceneTaxonomyOperationPoints)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"Identifier"])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    v20 = 0;
    v6 = [objc_opt_class() loadFromIdentifier:v5 error:&v20];
    v7 = v20;
LABEL_5:
    v8 = v7;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      [coderCopy failWithError:v8];
    }

    goto LABEL_9;
  }

  if ([coderCopy containsValueForKey:@"URL"])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    v19 = 0;
    v6 = [objc_opt_class() loadFromURL:v5 error:&v19];
    v7 = v19;
    goto LABEL_5;
  }

  if (![coderCopy containsValueForKey:@"plist"])
  {
    v17 = [VNError errorForInvalidModelWithLocalizedDescription:@"no data source available"];
    [coderCopy failWithError:v17];

    v6 = 0;
    goto LABEL_10;
  }

  v11 = objc_alloc(MEMORY[0x1E695DFD8]);
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v5 = [v11 initWithObjects:{v12, v13, v14, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v5 forKey:@"plist"];
  v18 = 0;
  v6 = [objc_opt_class() loadFromPropertyList:v8 error:&v18];
  v15 = v18;
  if (v6)
  {
    v16 = v6;
  }

  else
  {
    [coderCopy failWithError:v15];
  }

LABEL_9:
LABEL_10:

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = coderCopy;
  if (*&self->_frameworkOperationPointsIdentifier == 0)
  {
    _propertyListRepresentation = [(VNSceneTaxonomyOperationPoints *)self _propertyListRepresentation];
    [v6 encodeObject:_propertyListRepresentation forKey:@"plist"];
  }

  else
  {
    [coderCopy encodeObject:? forKey:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  v33 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v19) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = objc_autoreleasePoolPush();
      v7 = objc_alloc(MEMORY[0x1E695DFD8]);
      _allClassificationIdentifiers = [(VNSceneTaxonomyOperationPoints *)self _allClassificationIdentifiers];
      v9 = [v7 initWithArray:_allClassificationIdentifiers];

      v10 = objc_alloc(MEMORY[0x1E695DFD8]);
      _allClassificationIdentifiers2 = [(VNSceneTaxonomyOperationPoints *)v5 _allClassificationIdentifiers];
      v12 = [v10 initWithArray:_allClassificationIdentifiers2];

      if ([v9 isEqualToSet:v12])
      {
        v27 = v6;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v13 = v9;
        v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v29;
          v26 = *v29;
LABEL_6:
          v17 = 0;
          while (1)
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v28 + 1) + 8 * v17);
            v19 = [(VNSceneTaxonomyOperationPoints *)self _operationPointsDataForClassificationIdentifier:v18 error:0, v26];
            if (!v19)
            {
              break;
            }

            v20 = [(VNSceneTaxonomyOperationPoints *)v5 _operationPointsDataForClassificationIdentifier:v18 error:0];
            if (!v20)
            {
              goto LABEL_26;
            }

            if (v19 != v20)
            {
              if (v19->var0 == *v20 && v19->var1 == v20[1])
              {
                v21 = v20 + 21;
                p_var1 = &v19->var3[0].var1;
                v23 = 9;
                while (*(p_var1 - 18) == *(v21 - 18) && *(p_var1 - 19) == *(v21 - 19) && *p_var1 == *v21 && *(p_var1 - 1) == *(v21 - 1))
                {
                  v21 += 2;
                  p_var1 += 2;
                  if (!--v23)
                  {
                    goto LABEL_20;
                  }
                }
              }

LABEL_26:
              LOBYTE(v19) = 0;
              break;
            }

LABEL_20:
            ++v17;
            v16 = v26;
            if (v17 == v15)
            {
              v24 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
              v16 = v26;
              v15 = v24;
              LOBYTE(v19) = 1;
              if (v24)
              {
                goto LABEL_6;
              }

              break;
            }
          }
        }

        else
        {
          LOBYTE(v19) = 1;
        }

        v6 = v27;
      }

      else
      {
        LOBYTE(v19) = 0;
      }

      objc_autoreleasePoolPop(v6);
    }

    else
    {
      LOBYTE(v19) = 0;
    }
  }

  return v19;
}

- (unint64_t)hash
{
  v37 = *MEMORY[0x1E69E9840];
  cachedHashValue = self->_cachedHashValue;
  if (!cachedHashValue)
  {
    v4 = objc_autoreleasePoolPush();
    _allClassificationIdentifiers = [(VNSceneTaxonomyOperationPoints *)self _allClassificationIdentifiers];
    v6 = [_allClassificationIdentifiers sortedArrayUsingSelector:sel_compare_];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      cachedHashValue = 0;
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          v13 = [(VNSceneTaxonomyOperationPoints *)self _operationPointsDataForClassificationIdentifier:v12 error:0, v32];
          if (v13)
          {
            p_var0 = &v13->var0;
            v15 = [v12 hash];
            v16 = p_var0[1];
            v17 = *p_var0 << 13;
            if (*p_var0 == 0.0)
            {
              v17 = 0;
            }

            v18 = LODWORD(v16);
            if (v16 == 0.0)
            {
              v18 = 0;
            }

            v19 = v18 ^ v17;
            v20 = p_var0 + 21;
            v21 = 9;
            do
            {
              v23 = *(v20 - 19);
              v22 = *(v20 - 18);
              v24 = LODWORD(v22);
              if (v22 == 0.0)
              {
                v24 = 0;
              }

              v25 = LODWORD(v23);
              if (v23 == 0.0)
              {
                v25 = 0;
              }

              v26 = *(v20 - 1);
              v27 = v25 ^ __ROR8__(v24 ^ __ROR8__(v19, 51), 51);
              if (*v20 == 0.0)
              {
                v28 = 0;
              }

              else
              {
                v28 = *v20;
              }

              v29 = v28 ^ __ROR8__(v27, 51);
              v30 = LODWORD(v26);
              if (v26 == 0.0)
              {
                v30 = 0;
              }

              v19 = v30 ^ __ROR8__(v29, 51);
              v20 += 2;
              --v21;
            }

            while (v21);
            cachedHashValue = v19 ^ __ROR8__(v15 ^ __ROR8__(cachedHashValue, 51), 51);
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v9);
    }

    else
    {
      cachedHashValue = 0;
    }

    objc_autoreleasePoolPop(v4);
    self->_cachedHashValue = cachedHashValue;
  }

  return cachedHashValue;
}

- (BOOL)getClassificationMetrics:(id *)metrics forClassificationIdentifier:(id)identifier error:(id *)error
{
  v7 = [(VNSceneTaxonomyOperationPoints *)self _operationPointsDataForClassificationIdentifier:identifier error:0];
  if (!v7)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v8 = v7;
  v20 = 0;
  valid = _createValueConfidenceCurveForValidPairData(v7->var2, &v20, error);
  v10 = v20;
  v11 = v10;
  v12 = 0;
  if (valid)
  {
    if (v10)
    {
      v19 = 0;
      v13 = _createValueConfidenceCurveForValidPairData(v8->var3, &v19, error);
      v14 = v19;
      v15 = v14;
      v12 = 0;
      if (v13 && v14)
      {
        v12 = [objc_alloc(MEMORY[0x1E69DF8D0]) initWithPrecisionCurve:v11 recallCurve:v14];
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_12:
    v17 = v12;
    *metrics = v12;
    v16 = 1;
    goto LABEL_13;
  }

LABEL_8:

  v16 = 0;
LABEL_13:

  return v16;
}

- (BOOL)getRecall:(float *)recall forClassificationIdentifier:(id)identifier confidence:(float)confidence error:(id *)error
{
  v9 = [(VNSceneTaxonomyOperationPoints *)self _operationPointsDataForClassificationIdentifier:identifier error:error];
  if (v9)
  {
    v11 = 0;
    LODWORD(v9) = _getValueForConfidence(@"recall", v9->var3, 0, &v11, error, confidence);
    if (recall)
    {
      if (v9)
      {
        *recall = v11;
      }
    }
  }

  return v9;
}

- (BOOL)getConfidence:(float *)confidence forClassificationIdentifier:(id)identifier withRecall:(float)recall error:(id *)error
{
  v9 = [(VNSceneTaxonomyOperationPoints *)self _operationPointsDataForClassificationIdentifier:identifier error:error];
  if (v9)
  {
    v11 = 0;
    LODWORD(v9) = _getConfidenceForValue(@"recall", v9->var3, 0, &v11, error, recall);
    if (confidence)
    {
      if (v9)
      {
        *confidence = v11;
      }
    }
  }

  return v9;
}

- (BOOL)getPrecision:(float *)precision forClassificationIdentifier:(id)identifier confidence:(float)confidence error:(id *)error
{
  v9 = [(VNSceneTaxonomyOperationPoints *)self _operationPointsDataForClassificationIdentifier:identifier error:error];
  if (v9)
  {
    v11 = 0;
    LODWORD(v9) = _getValueForConfidence(@"precision", v9->var2, 1, &v11, error, confidence);
    if (precision)
    {
      if (v9)
      {
        *precision = v11;
      }
    }
  }

  return v9;
}

- (BOOL)getConfidence:(float *)confidence forClassificationIdentifier:(id)identifier withPrecision:(float)precision error:(id *)error
{
  v9 = [(VNSceneTaxonomyOperationPoints *)self _operationPointsDataForClassificationIdentifier:identifier error:error];
  if (v9)
  {
    v11 = 0;
    LODWORD(v9) = _getConfidenceForValue(@"precision", v9->var2, 1, &v11, error, precision);
    if (confidence)
    {
      if (v9)
      {
        *confidence = v11;
      }
    }
  }

  return v9;
}

- (BOOL)getDefaultConfidence:(float *)confidence forClassificationIdentifier:(id)identifier error:(id *)error
{
  v7 = [(VNSceneTaxonomyOperationPoints *)self _operationPointsDataForClassificationIdentifier:identifier error:error];
  if (v7)
  {
    v9 = 0;
    LODWORD(v7) = _getConfidenceForValue(@"precision", v7->var2, 1, &v9, error, v7->var0);
    if (confidence)
    {
      if (v7)
      {
        *confidence = v9;
      }
    }
  }

  return v7;
}

- (id)_propertyListRepresentation
{
  v36[4] = *MEMORY[0x1E69E9840];
  _allClassificationIdentifiers = [(VNSceneTaxonomyOperationPoints *)self _allClassificationIdentifiers];
  v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(_allClassificationIdentifiers, "count")}];
  context = objc_autoreleasePoolPush();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = _allClassificationIdentifiers;
  v3 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v28 = *v31;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * i);
        v7 = [(VNSceneTaxonomyOperationPoints *)self _operationPointsDataForClassificationIdentifier:v6 error:0];
        if (v7)
        {
          p_var0 = &v7->var0;
          v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:18];
          v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:18];
          v12 = 0x3FFFFFFFFFFFFFEELL;
          do
          {
            LODWORD(v11) = p_var0[v12 + 20];
            v13 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
            [v9 addObject:v13];

            LODWORD(v14) = p_var0[v12 + 21];
            v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
            [v9 addObject:v15];

            LODWORD(v16) = p_var0[v12 + 38];
            v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
            [v10 addObject:v17];

            LODWORD(v18) = p_var0[v12 + 39];
            v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
            [v10 addObject:v19];

            v12 += 2;
          }

          while (v12 * 4);
          v35[0] = @"threshold";
          LODWORD(v11) = *p_var0;
          v20 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
          v36[0] = v20;
          v35[1] = @"F2";
          LODWORD(v21) = p_var0[1];
          v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
          v36[1] = v22;
          v36[2] = v9;
          v35[2] = @"precision";
          v35[3] = @"recall";
          v36[3] = v10;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:4];

          [v27 setObject:v23 forKey:v6];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v4);
  }

  objc_autoreleasePoolPop(context);

  return v27;
}

- (const)_operationPointsDataForClassificationIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  value = -1;
  if (!NSMapMember(self->_labelToOperationPointsDataIndexMap, identifierCopy, 0, &value))
  {
    if (error)
    {
      [objc_opt_class() errorForUnknownClassificationIdentifier:identifierCopy];
      *error = v8 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v7 = value - 1;
  if (value < 1 || v7 >= NSCountMapTable(self->_labelToOperationPointsDataIndexMap))
  {
    if (error)
    {
      identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"operation point map data for %@ is corrupt", identifierCopy];
      *error = [VNError errorForInternalErrorWithLocalizedDescription:identifierCopy];
    }

    goto LABEL_9;
  }

  v8 = &self->_operationPointsDataArray[v7];
LABEL_10:

  return v8;
}

- (void)dealloc
{
  free(self->_operationPointsDataArray);
  v3.receiver = self;
  v3.super_class = VNSceneTaxonomyOperationPoints;
  [(VNSceneTaxonomyOperationPoints *)&v3 dealloc];
}

- (VNSceneTaxonomyOperationPoints)initWithLabelToOperationPointsDataIndexMap:(id)map operationPointsDataArray:(id *)array
{
  mapCopy = map;
  v11.receiver = self;
  v11.super_class = VNSceneTaxonomyOperationPoints;
  v8 = [(VNSceneTaxonomyOperationPoints *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_labelToOperationPointsDataIndexMap, map);
    v9->_operationPointsDataArray = array;
  }

  return v9;
}

+ (id)loadFromURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [MEMORY[0x1E695DF48] inputStreamWithURL:lCopy];
  v8 = v7;
  if (v7)
  {
    [v7 open];
    lCopy = [MEMORY[0x1E696AE40] propertyListWithStream:v8 options:0 format:0 error:error];
    [v8 close];
    if (lCopy)
    {
      v10 = [self loadFromPropertyList:lCopy error:error];
      v11 = v10;
      if (v10)
      {
        v12 = *(v10 + 8);
        *(v10 + 8) = 0;

        v13 = [lCopy copy];
        v14 = v11[2];
        v11[2] = v13;

        v15 = v11;
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_9;
  }

  if (error)
  {
    lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to open %@", lCopy];
    [VNError errorForInternalErrorWithLocalizedDescription:lCopy];
    *error = v11 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

+ (id)loadFromPropertyList:(id)list error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v5 = [listCopy count];
  v36 = malloc_type_calloc(v5, 0x98uLL, 0x10000401CC6BE04uLL);
  if (!v36)
  {
    if (error)
    {
      +[VNError errorForMemoryAllocationFailure];
      *error = v26 = 0;
    }

    else
    {
LABEL_39:
      v26 = 0;
    }

    goto LABEL_40;
  }

  errorCopy = error;
  v6 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:1282 capacity:v5];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  keyEnumerator = [listCopy keyEnumerator];
  v8 = [keyEnumerator countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = 0;
  v10 = v36 + 80;
  v37 = *v41;
  obj = keyEnumerator;
  table = v6;
  while (2)
  {
    v11 = 0;
    v12 = &v10[152 * v9];
    do
    {
      v13 = v8;
      if (*v41 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v40 + 1) + 8 * v11);
      NSMapInsertKnownAbsent(table, v14, ++v9);
      v15 = [listCopy objectForKey:v14];
      v16 = [v15 objectForKey:@"threshold"];
      v17 = v16;
      if (!v16)
      {
        if (!errorCopy)
        {
LABEL_38:

          free(v36);
          goto LABEL_39;
        }

        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing threshold for %@", v14];
        *errorCopy = [VNError errorForInvalidModelWithLocalizedDescription:v17];
        goto LABEL_37;
      }

      [v16 floatValue];
      *(v12 - 80) = v18;
      v19 = [v15 objectForKey:@"F2"];
      v20 = v19;
      if (!v19)
      {
        if (errorCopy)
        {
          v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing F2 for %@", v14];
          *errorCopy = [VNError errorForInvalidModelWithLocalizedDescription:v27];
        }

        goto LABEL_37;
      }

      [v19 floatValue];
      *(v12 - 76) = v21;
      v22 = [v15 objectForKey:@"precision"];
      v23 = v22;
      if (!v22)
      {
        if (errorCopy)
        {
          v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing precision table for %@", v14];
          v29 = [VNError errorForInvalidModelWithLocalizedDescription:v28];
          v23 = 0;
          goto LABEL_27;
        }

        v23 = 0;
LABEL_34:

        goto LABEL_37;
      }

      if ((_parseValueConfidenceArrayWithIncreasingConfidences(v22, v12 - 72, 1) & 1) == 0)
      {
        if (errorCopy)
        {
          v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid precision table for %@", v14];
          v29 = [VNError errorForInvalidModelWithLocalizedDescription:v28];
LABEL_27:
          *errorCopy = v29;
        }

        goto LABEL_34;
      }

      v24 = [v15 objectForKey:@"recall"];
      v25 = v24;
      if (!v24)
      {
        if (errorCopy)
        {
          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing recall table for %@", v14];
          v31 = [VNError errorForInvalidModelWithLocalizedDescription:v30];
          v25 = 0;
          goto LABEL_32;
        }

        v25 = 0;
LABEL_36:

LABEL_37:
        goto LABEL_38;
      }

      if ((_parseValueConfidenceArrayWithIncreasingConfidences(v24, v12, 0) & 1) == 0)
      {
        if (errorCopy)
        {
          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid recall table for %@", v14];
          v31 = [VNError errorForInvalidModelWithLocalizedDescription:v30];
LABEL_32:
          *errorCopy = v31;
        }

        goto LABEL_36;
      }

      v6 = table;
      ++v11;
      v12 += 152;
      v8 = v13;
    }

    while (v13 != v11);
    keyEnumerator = obj;
    v8 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    v10 = v36 + 80;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_15:

  v26 = [[self alloc] initWithLabelToOperationPointsDataIndexMap:v6 operationPointsDataArray:v36];
  if (!v26)
  {
    free(v36);
  }

LABEL_40:

  return v26;
}

+ (id)URLForIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"VNImageAnalyzerMultiDetectorSceneNetV3R8"])
  {
    v6 = [MEMORY[0x1E69DF978] sceneNetV3AndReturnError:error];
    if (v6)
    {
      v7 = v6;
      sceneOperatingPointsFileURL = [v6 sceneOperatingPointsFileURL];

      if (sceneOperatingPointsFileURL)
      {
        goto LABEL_10;
      }

      if (error)
      {
        identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"operation points not available for identifier %@", identifierCopy];
        v10 = [VNError errorForDataUnavailableWithLocalizedDescription:identifierCopy];
LABEL_8:
        *error = v10;
      }
    }
  }

  else if (error)
  {
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown operation points identifier %@", identifierCopy];
    v10 = [VNError errorForInvalidArgumentWithLocalizedDescription:identifierCopy];
    goto LABEL_8;
  }

  sceneOperatingPointsFileURL = 0;
LABEL_10:

  return sceneOperatingPointsFileURL;
}

+ (id)loadFromIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [self URLForIdentifier:identifierCopy error:error];
  if (v7)
  {
    v8 = [self loadFromURL:v7 error:error];
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 16);
      *(v8 + 16) = 0;

      v11 = [identifierCopy copy];
      v12 = v9[1];
      v9[1] = v11;

      v13 = v9;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
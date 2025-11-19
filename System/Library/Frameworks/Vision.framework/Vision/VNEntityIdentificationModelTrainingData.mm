@interface VNEntityIdentificationModelTrainingData
- (BOOL)addObservations:(id)a3 toEntityWithUniqueIdentifier:(id)a4 error:(id *)a5;
- (BOOL)removeAllObservationsFromEntityWithUniqueIdentifier:(id)a3 error:(id *)a4;
- (BOOL)removeEntityWithUniqueIdentifier:(id)a3 error:(id *)a4;
- (BOOL)removeObservations:(id)a3 fromEntityWithUniqueIdentifier:(id)a4 error:(id *)a5;
- (BOOL)validateWithCanceller:(id)a3 error:(id *)a4;
- (VNEntityIdentificationModelTrainingData)initWithModelConfiguration:(id)a3;
- (VNEntityIdentificationModelTrainingDataDelegate)delegate;
- (id)_serialNumberForEntityWithUniqueIdentifier:(id *)a1 error:(void *)a2;
- (id)_uniqueObservationsForObservations:(void *)a3 forEntityWithUniqueIdentifier:(int)a4 inRegisteredState:(void *)a5 compatibleWithOriginatingRequestSpecifier:(uint64_t)a6 error:;
- (id)observationAtIndex:(unint64_t)a3 forEntityAtIndex:(unint64_t)a4;
- (unint64_t)observationCountForEntityAtIndex:(unint64_t)a3;
- (void)_handleDataModification;
@end

@implementation VNEntityIdentificationModelTrainingData

- (VNEntityIdentificationModelTrainingDataDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)validateWithCanceller:(id)a3 error:(id *)a4
{
  v6 = [(NSMutableArray *)self->_entityUniqueIdentifiers count];
  if (v6 == [(NSMutableDictionary *)self->_serialNumberForEntityUniqueIdentifier count]&& v6 == [(NSMutableDictionary *)self->_observationsForSerialNumber count])
  {
    return 1;
  }

  if (!a4)
  {
    return 0;
  }

  v8 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, @"entity and observation data counts are out-of-sync", 0);
  v9 = v8;
  result = 0;
  *a4 = v8;
  return result;
}

- (BOOL)removeEntityWithUniqueIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [VNEntityIdentificationModelTrainingData _serialNumberForEntityWithUniqueIdentifier:v5 error:?];
  if (v6)
  {
    [(NSMutableDictionary *)self->_observationsForSerialNumber removeObjectForKey:v6];
    [(NSMutableDictionary *)self->_serialNumberForEntityUniqueIdentifier removeObjectForKey:v5];
    [(NSMutableArray *)self->_entityUniqueIdentifiers removeObject:v5];
    -[NSMutableIndexSet addIndex:](self->_availableSerialNumbers, "addIndex:", [v6 unsignedIntegerValue]);
    [(VNEntityIdentificationModelTrainingData *)self _handleDataModification];
  }

  return 1;
}

- (id)_serialNumberForEntityWithUniqueIdentifier:(id *)a1 error:(void *)a2
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1[5] objectForKeyedSubscript:v3];
    a1 = v4;
    if (v4)
    {
      v5 = v4;
    }
  }

  return a1;
}

- (void)_handleDataModification
{
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v3 = a1[8];
    a1[8] = v2;

    ++a1[9];
    v4 = [a1 delegate];
    [v4 entityIdentificationModelTrainingDataWasModified:a1];
  }
}

- (BOOL)removeAllObservationsFromEntityWithUniqueIdentifier:(id)a3 error:(id *)a4
{
  v5 = [VNEntityIdentificationModelTrainingData _serialNumberForEntityWithUniqueIdentifier:a3 error:?];
  if (v5 && self)
  {
    v6 = [(NSMutableDictionary *)self->_observationsForSerialNumber objectForKeyedSubscript:v5];
    v7 = v6;
    if (v6 && [v6 count])
    {
      [v7 removeAllObjects];
      [(VNEntityIdentificationModelTrainingData *)self _handleDataModification];
    }
  }

  return 1;
}

- (BOOL)removeObservations:(id)a3 fromEntityWithUniqueIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [VNEntityIdentificationModelTrainingData _serialNumberForEntityWithUniqueIdentifier:v9 error:?];
  if (v10)
  {
    v11 = [(VNEntityIdentificationModelTrainingData *)self entityPrintOriginatingRequestSpecifier];
    v12 = [(VNEntityIdentificationModelTrainingData *)&self->super.isa _uniqueObservationsForObservations:v8 forEntityWithUniqueIdentifier:v9 inRegisteredState:1 compatibleWithOriginatingRequestSpecifier:v11 error:a5];

    v13 = v12 != 0;
    if (v12)
    {
      v14 = v12;
      v15 = v10;
      if (self && [v14 count])
      {
        v16 = [(NSMutableDictionary *)self->_observationsForSerialNumber objectForKeyedSubscript:v15];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 count];
          [v17 removeObjectsInArray:v14];
          if ([v17 count] != v18)
          {
            [(VNEntityIdentificationModelTrainingData *)self _handleDataModification];
          }
        }
      }
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (id)_uniqueObservationsForObservations:(void *)a3 forEntityWithUniqueIdentifier:(int)a4 inRegisteredState:(void *)a5 compatibleWithOriginatingRequestSpecifier:(uint64_t)a6 error:
{
  v47 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  if (a1)
  {
    v14 = [v11 count];
    if (v14)
    {
      v33 = v13;
      v34 = v12;
      v15 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:v14];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v35 = v11;
      v16 = v11;
      v17 = [v16 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v42;
        obj = v16;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v42 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v41 + 1) + 8 * i);
            v22 = [a1 entityPrintOriginatingRequestSpecifier];
            v23 = [VNEntityIdentificationModel validateAceptableObservation:v21 forEntityPrintOriginatingRequestSpecifier:v22 error:a6];

            if (!v23)
            {
              v26 = 0;
              v12 = v34;
              v11 = v35;
              v13 = v33;
              goto LABEL_26;
            }

            [v15 addObject:v21];
          }

          v16 = obj;
          v18 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v12 = v34;
      v24 = [VNEntityIdentificationModelTrainingData _serialNumberForEntityWithUniqueIdentifier:a1 error:v34];
      obj = v24;
      if (v24)
      {
        v25 = [a1[6] objectForKeyedSubscript:v24];
      }

      else
      {
        v25 = MEMORY[0x1E695E0F0];
      }

      v11 = v35;
      v13 = v33;
      if (a4)
      {
        v27 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v25];
        [v15 intersectSet:v27];
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v27 = v25;
        v28 = [v27 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v38;
          do
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v38 != v30)
              {
                objc_enumerationMutation(v27);
              }

              [v15 removeObject:*(*(&v37 + 1) + 8 * j)];
            }

            v29 = [v27 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v29);
        }
      }

      v26 = [v15 array];

LABEL_26:
    }

    else
    {
      v26 = v11;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (BOOL)addObservations:(id)a3 toEntityWithUniqueIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(VNEntityIdentificationModelTrainingData *)self entityPrintOriginatingRequestSpecifier];
  v11 = [(VNEntityIdentificationModelTrainingData *)&self->super.isa _uniqueObservationsForObservations:v9 forEntityWithUniqueIdentifier:v8 inRegisteredState:0 compatibleWithOriginatingRequestSpecifier:v10 error:a5];

  if (!v11)
  {
    LOBYTE(self) = 0;
    goto LABEL_11;
  }

  v12 = v11;
  v13 = v8;
  if (self)
  {
    v14 = [v12 count];
    if (!v14)
    {
LABEL_8:
      LOBYTE(self) = 1;
      goto LABEL_9;
    }

    v15 = v14;
    v16 = [VNEntityIdentificationModelTrainingData _serialNumberForEntityWithUniqueIdentifier:v13 error:?];
    if (v16)
    {
LABEL_5:
      v17 = [(NSMutableDictionary *)self->_observationsForSerialNumber objectForKeyedSubscript:v16];
      if (!v17)
      {
        v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v15];
        [(NSMutableDictionary *)self->_observationsForSerialNumber setObject:v17 forKeyedSubscript:v16];
      }

      [v17 addObjectsFromArray:v12];
      [(VNEntityIdentificationModelTrainingData *)self _handleDataModification];

      goto LABEL_8;
    }

    if ([(NSMutableDictionary *)self->_serialNumberForEntityUniqueIdentifier count]>= self->_maximumEntities)
    {
      if (a5)
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The model has reached the maximum entity limit of %lu", self->_maximumEntities];
        *a5 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(9, v20, 0);
      }
    }

    else
    {
      v19 = [(NSMutableIndexSet *)self->_availableSerialNumbers firstIndex];
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (a5)
        {
          VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(9, @"entity serial numbers have been exhausted", 0);
          *a5 = LOBYTE(self) = 0;
          goto LABEL_9;
        }
      }

      else
      {
        v21 = v19;
        [(NSMutableIndexSet *)self->_availableSerialNumbers removeIndex:v19];
        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
        if (v22)
        {
          v16 = v22;
          [(NSMutableDictionary *)self->_serialNumberForEntityUniqueIdentifier setObject:v22 forKeyedSubscript:v13];
          [(NSMutableArray *)self->_entityUniqueIdentifiers addObject:v13];
          goto LABEL_5;
        }
      }
    }

    LOBYTE(self) = 0;
  }

LABEL_9:

LABEL_11:
  return self;
}

- (id)observationAtIndex:(unint64_t)a3 forEntityAtIndex:(unint64_t)a4
{
  v6 = [(NSMutableArray *)self->_entityUniqueIdentifiers objectAtIndex:a4];
  v7 = [(NSMutableDictionary *)self->_serialNumberForEntityUniqueIdentifier objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_observationsForSerialNumber objectForKeyedSubscript:v7];
    v9 = [v8 objectAtIndex:a3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)observationCountForEntityAtIndex:(unint64_t)a3
{
  v4 = [(NSMutableArray *)self->_entityUniqueIdentifiers objectAtIndex:a3];
  v5 = [(NSMutableDictionary *)self->_serialNumberForEntityUniqueIdentifier objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_observationsForSerialNumber objectForKeyedSubscript:v5];
    v7 = [v6 count];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (VNEntityIdentificationModelTrainingData)initWithModelConfiguration:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = VNEntityIdentificationModelTrainingData;
  v5 = [(VNEntityIdentificationModelTrainingData *)&v20 init];
  if (v5)
  {
    v5->_maximumEntities = [v4 maximumEntities];
    v6 = [v4 entityPrintOriginatingRequestSpecifier];
    v7 = [v6 copy];
    entityPrintOriginatingRequestSpecifier = v5->_entityPrintOriginatingRequestSpecifier;
    v5->_entityPrintOriginatingRequestSpecifier = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    entityUniqueIdentifiers = v5->_entityUniqueIdentifiers;
    v5->_entityUniqueIdentifiers = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    serialNumberForEntityUniqueIdentifier = v5->_serialNumberForEntityUniqueIdentifier;
    v5->_serialNumberForEntityUniqueIdentifier = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observationsForSerialNumber = v5->_observationsForSerialNumber;
    v5->_observationsForSerialNumber = v13;

    v15 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{1, v5->_maximumEntities}];
    availableSerialNumbers = v5->_availableSerialNumbers;
    v5->_availableSerialNumbers = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF00]);
    lastModificationDate = v5->_lastModificationDate;
    v5->_lastModificationDate = v17;
  }

  return v5;
}

@end
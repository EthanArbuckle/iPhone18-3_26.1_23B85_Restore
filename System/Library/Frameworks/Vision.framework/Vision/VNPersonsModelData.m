@interface VNPersonsModelData
- (BOOL)_addUniqueFaceObservations:(id)a3 toPersonWithUniqueIdentifier:(id)a4 error:(id *)a5;
- (BOOL)addFaceObservations:(id)a3 toPersonWithUniqueIdentifier:(id)a4 error:(id *)a5;
- (BOOL)removeAllFaceObservationsFromPersonWithUniqueIdentifier:(id)a3 error:(id *)a4;
- (BOOL)removeFaceObservations:(id)a3 fromPersonWithUniqueIdentifier:(id)a4 error:(id *)a5;
- (VNPersonsModelData)initWithConfiguration:(id)a3;
- (VNPersonsModelDataDelegate)delegate;
- (id)_accessToMutableFaceObservationsForPersonAtIndex:(unint64_t)a3;
- (id)_requestNewIdentitySerialNumberAndReturnError:(id *)a3;
- (id)_uniqueFaceObservationsWithRegistrationState:(BOOL)a3 forFaceObservations:(id)a4 withExpectedFaceprintRequestRevision:(unint64_t)a5 ofPersonWithUniqueIdentifier:(id)a6 error:(id *)a7;
- (id)faceModelFaceObservationAtIndex:(unint64_t)a3 forPersonAtIndex:(unint64_t)a4;
- (id)personsModel:(id)a3 faceObservationAtIndex:(unint64_t)a4 forPersonAtIndex:(unint64_t)a5;
- (id)personsModel:(id)a3 uniqueIdentifierOfPersonAtIndex:(unint64_t)a4;
- (unint64_t)faceModelNumberOfFaceObservationsForPersonAtIndex:(unint64_t)a3;
- (unint64_t)personsModel:(id)a3 numberOfFaceObservationsForPersonAtIndex:(unint64_t)a4;
- (void)_modelWasModified;
- (void)_removeAllFaceObservationsFromIdentityWithSerialNumber:(id)a3;
- (void)_removeExistingFaceObservations:(id)a3 fromIdentityWithSerialNumber:(id)a4;
- (void)_removeExistingFaceObservations:(id)a3 fromPersonWithUniqueIdentifier:(id)a4;
- (void)_removePersonWithUniqueIdentifier:(id)a3;
@end

@implementation VNPersonsModelData

- (VNPersonsModelDataDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)faceModelFaceObservationAtIndex:(unint64_t)a3 forPersonAtIndex:(unint64_t)a4
{
  v5 = [(VNPersonsModelData *)self _accessToMutableFaceObservationsForPersonAtIndex:a4];
  v6 = [v5 objectAtIndex:a3];

  return v6;
}

- (unint64_t)faceModelNumberOfFaceObservationsForPersonAtIndex:(unint64_t)a3
{
  v3 = [(VNPersonsModelData *)self _accessToMutableFaceObservationsForPersonAtIndex:a3];
  v4 = [v3 count];

  return v4;
}

- (id)personsModel:(id)a3 faceObservationAtIndex:(unint64_t)a4 forPersonAtIndex:(unint64_t)a5
{
  v6 = [(VNPersonsModelData *)self _accessToMutableFaceObservationsForPersonAtIndex:a5];
  v7 = [v6 objectAtIndex:a4];

  return v7;
}

- (unint64_t)personsModel:(id)a3 numberOfFaceObservationsForPersonAtIndex:(unint64_t)a4
{
  v4 = [(VNPersonsModelData *)self _accessToMutableFaceObservationsForPersonAtIndex:a4];
  v5 = [v4 count];

  return v5;
}

- (id)personsModel:(id)a3 uniqueIdentifierOfPersonAtIndex:(unint64_t)a4
{
  v4 = [(NSMutableArray *)self->_personUniqueIdentifiers objectAtIndex:a4];

  return v4;
}

- (BOOL)removeAllFaceObservationsFromPersonWithUniqueIdentifier:(id)a3 error:(id *)a4
{
  v5 = [(NSMutableDictionary *)self->_personUniqueIdentifierToSerialNumberMapping objectForKeyedSubscript:a3, a4];
  if (v5)
  {
    [(VNPersonsModelData *)self _removeAllFaceObservationsFromIdentityWithSerialNumber:v5];
  }

  return 1;
}

- (BOOL)removeFaceObservations:(id)a3 fromPersonWithUniqueIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(VNPersonsModelData *)self _uniqueFaceObservationsWithRegistrationState:1 forFaceObservations:a3 withExpectedFaceprintRequestRevision:0 ofPersonWithUniqueIdentifier:v8 error:a5];
  if (v9)
  {
    [(VNPersonsModelData *)self _removeExistingFaceObservations:v9 fromPersonWithUniqueIdentifier:v8];
  }

  return v9 != 0;
}

- (BOOL)addFaceObservations:(id)a3 toPersonWithUniqueIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  faceprintRequestRevision = self->_faceprintRequestRevision;
  if (!faceprintRequestRevision)
  {
    if (![v8 count])
    {
      v12 = 1;
      goto LABEL_9;
    }

    v13 = [v8 firstObject];
    v14 = [v13 VNPersonsModelFaceprintWithRequestRevision:0 error:a5];

    if (!v14)
    {
      v12 = 0;
      goto LABEL_9;
    }

    faceprintRequestRevision = [v14 requestRevision];
  }

  v11 = [(VNPersonsModelData *)self _uniqueFaceObservationsWithRegistrationState:0 forFaceObservations:v8 withExpectedFaceprintRequestRevision:faceprintRequestRevision ofPersonWithUniqueIdentifier:v9 error:a5];
  if (v11)
  {
    self->_faceprintRequestRevision = faceprintRequestRevision;
    v12 = [(VNPersonsModelData *)self _addUniqueFaceObservations:v11 toPersonWithUniqueIdentifier:v9 error:a5];
  }

  else
  {
    v12 = 0;
  }

LABEL_9:
  return v12;
}

- (id)_accessToMutableFaceObservationsForPersonAtIndex:(unint64_t)a3
{
  v4 = [(NSMutableArray *)self->_personUniqueIdentifiers objectAtIndex:a3];
  v5 = [(NSMutableDictionary *)self->_personUniqueIdentifierToSerialNumberMapping objectForKeyedSubscript:v4];
  v6 = [(NSMutableDictionary *)self->_serialNumberToFaceObservationsMapping objectForKeyedSubscript:v5];

  return v6;
}

- (void)_removeExistingFaceObservations:(id)a3 fromPersonWithUniqueIdentifier:(id)a4
{
  v7 = a3;
  v6 = [(NSMutableDictionary *)self->_personUniqueIdentifierToSerialNumberMapping objectForKeyedSubscript:a4];
  if (v6)
  {
    [(VNPersonsModelData *)self _removeExistingFaceObservations:v7 fromIdentityWithSerialNumber:v6];
  }
}

- (void)_removeExistingFaceObservations:(id)a3 fromIdentityWithSerialNumber:(id)a4
{
  v9 = a3;
  v6 = [(NSMutableDictionary *)self->_serialNumberToFaceObservationsMapping objectForKeyedSubscript:a4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 count];
    [v7 removeObjectsInArray:v9];
    if ([v7 count] < v8)
    {
      [(VNPersonsModelData *)self _modelWasModified];
    }
  }
}

- (void)_removePersonWithUniqueIdentifier:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableDictionary *)self->_personUniqueIdentifierToSerialNumberMapping objectForKeyedSubscript:?];
  if (v4)
  {
    [(VNPersonsModelData *)self _removeAllFaceObservationsFromIdentityWithSerialNumber:v4];
    [(NSMutableDictionary *)self->_serialNumberToFaceObservationsMapping removeObjectForKey:v4];
    [(NSMutableDictionary *)self->_personUniqueIdentifierToSerialNumberMapping removeObjectForKey:v6];
    [(NSMutableArray *)self->_personUniqueIdentifiers removeObject:v6];
    v5 = [v4 unsignedIntegerValue];
    [VNError VNAssert:[(NSMutableIndexSet *)self->_availablePersonSerialNumbers containsIndex:v5]^ 1 log:@"available person serial numbers is corrupt"];
    [(NSMutableIndexSet *)self->_availablePersonSerialNumbers addIndex:v5];
    [(VNPersonsModelData *)self _modelWasModified];
  }
}

- (void)_removeAllFaceObservationsFromIdentityWithSerialNumber:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_serialNumberToFaceObservationsMapping objectForKeyedSubscript:a3];
  if (v4 && [v4 count])
  {
    [v4 removeAllObjects];
    [(VNPersonsModelData *)self _modelWasModified];
  }
}

- (BOOL)_addUniqueFaceObservations:(id)a3 toPersonWithUniqueIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 count];
  if (v10)
  {
    v11 = [(NSMutableDictionary *)self->_personUniqueIdentifierToSerialNumberMapping objectForKeyedSubscript:v9];
    if (!v11)
    {
      v11 = [(VNPersonsModelData *)self _requestNewIdentitySerialNumberAndReturnError:a5];
      if (!v11)
      {
        v13 = 0;
        goto LABEL_9;
      }

      [(NSMutableDictionary *)self->_personUniqueIdentifierToSerialNumberMapping setObject:v11 forKeyedSubscript:v9];
      [(NSMutableArray *)self->_personUniqueIdentifiers addObject:v9];
    }

    v12 = [(NSMutableDictionary *)self->_serialNumberToFaceObservationsMapping objectForKeyedSubscript:v11];
    if (!v12)
    {
      v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    [v12 addObjectsFromArray:v8];
    [(VNPersonsModelData *)self _modelWasModified];
  }

  v13 = 1;
LABEL_9:

  return v13;
}

- (id)_uniqueFaceObservationsWithRegistrationState:(BOOL)a3 forFaceObservations:(id)a4 withExpectedFaceprintRequestRevision:(unint64_t)a5 ofPersonWithUniqueIdentifier:(id)a6 error:(id *)a7
{
  v10 = a3;
  v42 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v30 = a6;
  v31 = v12;
  v13 = [v12 count];
  if (v13)
  {
    v29 = v10;
    v14 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:v13];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v16)
    {
      v17 = *v37;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v36 + 1) + 8 * i);
          v20 = [v19 VNPersonsModelFaceprintWithRequestRevision:a5 error:a7];
          if (!v20)
          {
            v24 = 0;
            goto LABEL_22;
          }

          [v14 addObject:v19];
        }

        v16 = [v15 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v15 = [(NSMutableDictionary *)self->_personUniqueIdentifierToSerialNumberMapping objectForKeyedSubscript:v30];
    v21 = [(NSMutableDictionary *)self->_serialNumberToFaceObservationsMapping objectForKeyedSubscript:v15];
    v22 = v21;
    if (v29)
    {
      v23 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v21];
      [v14 intersectSet:v23];
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v23 = v21;
      v25 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v25)
      {
        v26 = *v33;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v33 != v26)
            {
              objc_enumerationMutation(v23);
            }

            [v14 removeObject:*(*(&v32 + 1) + 8 * j)];
          }

          v25 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v25);
      }
    }

    v24 = [v14 array];

LABEL_22:
  }

  else
  {
    v24 = MEMORY[0x1E695E0F0];
  }

  return v24;
}

- (id)_requestNewIdentitySerialNumberAndReturnError:(id *)a3
{
  if ([(NSMutableDictionary *)self->_personUniqueIdentifierToSerialNumberMapping count]>= self->_maximumIdentities)
  {
    if (a3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The model has reached the maximum identity limit of %lu", self->_maximumIdentities];
      *a3 = VNPersonsModelErrorWithLocalizedDescription(5, v9);
    }

LABEL_7:
    v8 = 0;
    goto LABEL_9;
  }

  v5 = [(NSMutableIndexSet *)self->_availablePersonSerialNumbers firstIndex];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3)
    {
      v6 = [VNError errorForInternalErrorWithLocalizedDescription:@"identity serial numbers have been exhausted"];
      v7 = v6;
      v8 = 0;
      *a3 = v6;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v10 = v5;
  [(NSMutableIndexSet *)self->_availablePersonSerialNumbers removeIndex:v5];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
LABEL_9:

  return v8;
}

- (void)_modelWasModified
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF00]);
  lastModificationDate = self->_lastModificationDate;
  self->_lastModificationDate = v3;

  v5 = [(VNPersonsModelData *)self delegate];
  if (v5)
  {
    [v5 personsModelDataWasModified:self];
  }
}

- (VNPersonsModelData)initWithConfiguration:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = VNPersonsModelData;
  v5 = [(VNPersonsModelData *)&v17 init];
  if (v5)
  {
    v5->_maximumIdentities = [v4 maximumIdentities];
    v5->_faceprintRequestRevision = [v4 faceprintRequestRevision];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    personUniqueIdentifiers = v5->_personUniqueIdentifiers;
    v5->_personUniqueIdentifiers = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    personUniqueIdentifierToSerialNumberMapping = v5->_personUniqueIdentifierToSerialNumberMapping;
    v5->_personUniqueIdentifierToSerialNumberMapping = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    serialNumberToFaceObservationsMapping = v5->_serialNumberToFaceObservationsMapping;
    v5->_serialNumberToFaceObservationsMapping = v10;

    v12 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{1, v5->_maximumIdentities}];
    availablePersonSerialNumbers = v5->_availablePersonSerialNumbers;
    v5->_availablePersonSerialNumbers = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF00]);
    lastModificationDate = v5->_lastModificationDate;
    v5->_lastModificationDate = v14;
  }

  return v5;
}

@end
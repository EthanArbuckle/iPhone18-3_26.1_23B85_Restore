@interface VNPersonsModelData
- (BOOL)_addUniqueFaceObservations:(id)observations toPersonWithUniqueIdentifier:(id)identifier error:(id *)error;
- (BOOL)addFaceObservations:(id)observations toPersonWithUniqueIdentifier:(id)identifier error:(id *)error;
- (BOOL)removeAllFaceObservationsFromPersonWithUniqueIdentifier:(id)identifier error:(id *)error;
- (BOOL)removeFaceObservations:(id)observations fromPersonWithUniqueIdentifier:(id)identifier error:(id *)error;
- (VNPersonsModelData)initWithConfiguration:(id)configuration;
- (VNPersonsModelDataDelegate)delegate;
- (id)_accessToMutableFaceObservationsForPersonAtIndex:(unint64_t)index;
- (id)_requestNewIdentitySerialNumberAndReturnError:(id *)error;
- (id)_uniqueFaceObservationsWithRegistrationState:(BOOL)state forFaceObservations:(id)observations withExpectedFaceprintRequestRevision:(unint64_t)revision ofPersonWithUniqueIdentifier:(id)identifier error:(id *)error;
- (id)faceModelFaceObservationAtIndex:(unint64_t)index forPersonAtIndex:(unint64_t)atIndex;
- (id)personsModel:(id)model faceObservationAtIndex:(unint64_t)index forPersonAtIndex:(unint64_t)atIndex;
- (id)personsModel:(id)model uniqueIdentifierOfPersonAtIndex:(unint64_t)index;
- (unint64_t)faceModelNumberOfFaceObservationsForPersonAtIndex:(unint64_t)index;
- (unint64_t)personsModel:(id)model numberOfFaceObservationsForPersonAtIndex:(unint64_t)index;
- (void)_modelWasModified;
- (void)_removeAllFaceObservationsFromIdentityWithSerialNumber:(id)number;
- (void)_removeExistingFaceObservations:(id)observations fromIdentityWithSerialNumber:(id)number;
- (void)_removeExistingFaceObservations:(id)observations fromPersonWithUniqueIdentifier:(id)identifier;
- (void)_removePersonWithUniqueIdentifier:(id)identifier;
@end

@implementation VNPersonsModelData

- (VNPersonsModelDataDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)faceModelFaceObservationAtIndex:(unint64_t)index forPersonAtIndex:(unint64_t)atIndex
{
  v5 = [(VNPersonsModelData *)self _accessToMutableFaceObservationsForPersonAtIndex:atIndex];
  v6 = [v5 objectAtIndex:index];

  return v6;
}

- (unint64_t)faceModelNumberOfFaceObservationsForPersonAtIndex:(unint64_t)index
{
  v3 = [(VNPersonsModelData *)self _accessToMutableFaceObservationsForPersonAtIndex:index];
  v4 = [v3 count];

  return v4;
}

- (id)personsModel:(id)model faceObservationAtIndex:(unint64_t)index forPersonAtIndex:(unint64_t)atIndex
{
  v6 = [(VNPersonsModelData *)self _accessToMutableFaceObservationsForPersonAtIndex:atIndex];
  v7 = [v6 objectAtIndex:index];

  return v7;
}

- (unint64_t)personsModel:(id)model numberOfFaceObservationsForPersonAtIndex:(unint64_t)index
{
  v4 = [(VNPersonsModelData *)self _accessToMutableFaceObservationsForPersonAtIndex:index];
  v5 = [v4 count];

  return v5;
}

- (id)personsModel:(id)model uniqueIdentifierOfPersonAtIndex:(unint64_t)index
{
  v4 = [(NSMutableArray *)self->_personUniqueIdentifiers objectAtIndex:index];

  return v4;
}

- (BOOL)removeAllFaceObservationsFromPersonWithUniqueIdentifier:(id)identifier error:(id *)error
{
  error = [(NSMutableDictionary *)self->_personUniqueIdentifierToSerialNumberMapping objectForKeyedSubscript:identifier, error];
  if (error)
  {
    [(VNPersonsModelData *)self _removeAllFaceObservationsFromIdentityWithSerialNumber:error];
  }

  return 1;
}

- (BOOL)removeFaceObservations:(id)observations fromPersonWithUniqueIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v9 = [(VNPersonsModelData *)self _uniqueFaceObservationsWithRegistrationState:1 forFaceObservations:observations withExpectedFaceprintRequestRevision:0 ofPersonWithUniqueIdentifier:identifierCopy error:error];
  if (v9)
  {
    [(VNPersonsModelData *)self _removeExistingFaceObservations:v9 fromPersonWithUniqueIdentifier:identifierCopy];
  }

  return v9 != 0;
}

- (BOOL)addFaceObservations:(id)observations toPersonWithUniqueIdentifier:(id)identifier error:(id *)error
{
  observationsCopy = observations;
  identifierCopy = identifier;
  faceprintRequestRevision = self->_faceprintRequestRevision;
  if (!faceprintRequestRevision)
  {
    if (![observationsCopy count])
    {
      v12 = 1;
      goto LABEL_9;
    }

    firstObject = [observationsCopy firstObject];
    v14 = [firstObject VNPersonsModelFaceprintWithRequestRevision:0 error:error];

    if (!v14)
    {
      v12 = 0;
      goto LABEL_9;
    }

    faceprintRequestRevision = [v14 requestRevision];
  }

  v11 = [(VNPersonsModelData *)self _uniqueFaceObservationsWithRegistrationState:0 forFaceObservations:observationsCopy withExpectedFaceprintRequestRevision:faceprintRequestRevision ofPersonWithUniqueIdentifier:identifierCopy error:error];
  if (v11)
  {
    self->_faceprintRequestRevision = faceprintRequestRevision;
    v12 = [(VNPersonsModelData *)self _addUniqueFaceObservations:v11 toPersonWithUniqueIdentifier:identifierCopy error:error];
  }

  else
  {
    v12 = 0;
  }

LABEL_9:
  return v12;
}

- (id)_accessToMutableFaceObservationsForPersonAtIndex:(unint64_t)index
{
  v4 = [(NSMutableArray *)self->_personUniqueIdentifiers objectAtIndex:index];
  v5 = [(NSMutableDictionary *)self->_personUniqueIdentifierToSerialNumberMapping objectForKeyedSubscript:v4];
  v6 = [(NSMutableDictionary *)self->_serialNumberToFaceObservationsMapping objectForKeyedSubscript:v5];

  return v6;
}

- (void)_removeExistingFaceObservations:(id)observations fromPersonWithUniqueIdentifier:(id)identifier
{
  observationsCopy = observations;
  v6 = [(NSMutableDictionary *)self->_personUniqueIdentifierToSerialNumberMapping objectForKeyedSubscript:identifier];
  if (v6)
  {
    [(VNPersonsModelData *)self _removeExistingFaceObservations:observationsCopy fromIdentityWithSerialNumber:v6];
  }
}

- (void)_removeExistingFaceObservations:(id)observations fromIdentityWithSerialNumber:(id)number
{
  observationsCopy = observations;
  v6 = [(NSMutableDictionary *)self->_serialNumberToFaceObservationsMapping objectForKeyedSubscript:number];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 count];
    [v7 removeObjectsInArray:observationsCopy];
    if ([v7 count] < v8)
    {
      [(VNPersonsModelData *)self _modelWasModified];
    }
  }
}

- (void)_removePersonWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(NSMutableDictionary *)self->_personUniqueIdentifierToSerialNumberMapping objectForKeyedSubscript:?];
  if (v4)
  {
    [(VNPersonsModelData *)self _removeAllFaceObservationsFromIdentityWithSerialNumber:v4];
    [(NSMutableDictionary *)self->_serialNumberToFaceObservationsMapping removeObjectForKey:v4];
    [(NSMutableDictionary *)self->_personUniqueIdentifierToSerialNumberMapping removeObjectForKey:identifierCopy];
    [(NSMutableArray *)self->_personUniqueIdentifiers removeObject:identifierCopy];
    unsignedIntegerValue = [v4 unsignedIntegerValue];
    [VNError VNAssert:[(NSMutableIndexSet *)self->_availablePersonSerialNumbers containsIndex:unsignedIntegerValue]^ 1 log:@"available person serial numbers is corrupt"];
    [(NSMutableIndexSet *)self->_availablePersonSerialNumbers addIndex:unsignedIntegerValue];
    [(VNPersonsModelData *)self _modelWasModified];
  }
}

- (void)_removeAllFaceObservationsFromIdentityWithSerialNumber:(id)number
{
  v4 = [(NSMutableDictionary *)self->_serialNumberToFaceObservationsMapping objectForKeyedSubscript:number];
  if (v4 && [v4 count])
  {
    [v4 removeAllObjects];
    [(VNPersonsModelData *)self _modelWasModified];
  }
}

- (BOOL)_addUniqueFaceObservations:(id)observations toPersonWithUniqueIdentifier:(id)identifier error:(id *)error
{
  observationsCopy = observations;
  identifierCopy = identifier;
  v10 = [observationsCopy count];
  if (v10)
  {
    v11 = [(NSMutableDictionary *)self->_personUniqueIdentifierToSerialNumberMapping objectForKeyedSubscript:identifierCopy];
    if (!v11)
    {
      v11 = [(VNPersonsModelData *)self _requestNewIdentitySerialNumberAndReturnError:error];
      if (!v11)
      {
        v13 = 0;
        goto LABEL_9;
      }

      [(NSMutableDictionary *)self->_personUniqueIdentifierToSerialNumberMapping setObject:v11 forKeyedSubscript:identifierCopy];
      [(NSMutableArray *)self->_personUniqueIdentifiers addObject:identifierCopy];
    }

    v12 = [(NSMutableDictionary *)self->_serialNumberToFaceObservationsMapping objectForKeyedSubscript:v11];
    if (!v12)
    {
      v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    [v12 addObjectsFromArray:observationsCopy];
    [(VNPersonsModelData *)self _modelWasModified];
  }

  v13 = 1;
LABEL_9:

  return v13;
}

- (id)_uniqueFaceObservationsWithRegistrationState:(BOOL)state forFaceObservations:(id)observations withExpectedFaceprintRequestRevision:(unint64_t)revision ofPersonWithUniqueIdentifier:(id)identifier error:(id *)error
{
  stateCopy = state;
  v42 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  identifierCopy = identifier;
  v31 = observationsCopy;
  v13 = [observationsCopy count];
  if (v13)
  {
    v29 = stateCopy;
    v14 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:v13];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v15 = observationsCopy;
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
          v20 = [v19 VNPersonsModelFaceprintWithRequestRevision:revision error:error];
          if (!v20)
          {
            array = 0;
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

    v15 = [(NSMutableDictionary *)self->_personUniqueIdentifierToSerialNumberMapping objectForKeyedSubscript:identifierCopy];
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

    array = [v14 array];

LABEL_22:
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

- (id)_requestNewIdentitySerialNumberAndReturnError:(id *)error
{
  if ([(NSMutableDictionary *)self->_personUniqueIdentifierToSerialNumberMapping count]>= self->_maximumIdentities)
  {
    if (error)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The model has reached the maximum identity limit of %lu", self->_maximumIdentities];
      *error = VNPersonsModelErrorWithLocalizedDescription(5, v9);
    }

LABEL_7:
    v8 = 0;
    goto LABEL_9;
  }

  firstIndex = [(NSMutableIndexSet *)self->_availablePersonSerialNumbers firstIndex];
  if (firstIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      v6 = [VNError errorForInternalErrorWithLocalizedDescription:@"identity serial numbers have been exhausted"];
      v7 = v6;
      v8 = 0;
      *error = v6;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v10 = firstIndex;
  [(NSMutableIndexSet *)self->_availablePersonSerialNumbers removeIndex:firstIndex];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
LABEL_9:

  return v8;
}

- (void)_modelWasModified
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF00]);
  lastModificationDate = self->_lastModificationDate;
  self->_lastModificationDate = v3;

  delegate = [(VNPersonsModelData *)self delegate];
  if (delegate)
  {
    [delegate personsModelDataWasModified:self];
  }
}

- (VNPersonsModelData)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = VNPersonsModelData;
  v5 = [(VNPersonsModelData *)&v17 init];
  if (v5)
  {
    v5->_maximumIdentities = [configurationCopy maximumIdentities];
    v5->_faceprintRequestRevision = [configurationCopy faceprintRequestRevision];
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
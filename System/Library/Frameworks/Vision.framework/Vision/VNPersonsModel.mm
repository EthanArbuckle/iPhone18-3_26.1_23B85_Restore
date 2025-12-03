@interface VNPersonsModel
+ (BOOL)readObjectForModelVersion:(unint64_t)version tag:(unsigned int)tag fromInputStream:(id)stream intoObjectDictionary:(id)dictionary md5Context:(CC_MD5state_st *)context error:(id *)error;
+ (VNPersonsModelInformation)_modelInformationFromUnopenedStream:(void *)stream error:;
+ (id)_modelFromStream:(void *)stream options:(void *)options error:;
+ (id)_modelFromUnopenedStream:(void *)stream options:(void *)options error:;
+ (id)_readModelObjectsFromStream:(void *)stream options:(void *)options actionBlock:(void *)block progressBlock:(void *)progressBlock modelClass:(void *)class version:(void *)version error:;
+ (id)configurationFromLoadedObjects:(id)objects error:(id *)error;
+ (id)informationForModelWithData:(id)data error:(id *)error;
+ (id)informationForModelWithURL:(id)l error:(id *)error;
+ (id)modelFromData:(id)data options:(id)options error:(id *)error;
+ (id)modelFromStream:(id)stream options:(id)options error:(id *)error;
+ (id)modelFromURL:(id)l options:(id)options error:(id *)error;
+ (id)newModelFromVersion:(unint64_t)version objects:(id)objects error:(id *)error;
+ (id)supportedReadVersions;
+ (id)versionNumbersEncodedInClass:(Class)class withMethodNamePrefix:(id)prefix suffix:(id)suffix;
- (BOOL)convertToAlgorithm:(id)algorithm error:(id *)error;
- (BOOL)dropCurrentFaceModelAndReturnError:(id *)error;
- (BOOL)updateInternalConfigurationWithModelFaceprintRequestRevision:(unint64_t)revision error:(id *)error;
- (VNPersonsModel)initWithConfiguration:(id)configuration dataSource:(id)source;
- (VNPersonsModelAlgorithm)algorithm;
- (VNPersonsModelConfiguration)configuration;
- (id)_dataSourceAndReturnError:(uint64_t)error;
- (id)description;
- (id)faceCountsForAllPersons;
- (id)faceCountsForPersonsWithUniqueIdentifiers:(id)identifiers;
- (id)faceObservationsForPersonWithUniqueIdentifier:(id)identifier error:(id *)error;
- (id)personUniqueIdentifiers;
- (id)predictPersonFromFaceObservation:(id)observation limit:(unint64_t)limit canceller:(id)canceller error:(id *)error;
- (id)trainingFaceObservationsForPersonWithUniqueIdentifier:(id)identifier canceller:(id)canceller error:(id *)error;
- (id)trainingFaceprintsForPersonWithUniqueIdentifier:(id)identifier canceller:(id)canceller error:(id *)error;
- (id)upToDateFaceModelWithCanceller:(id)canceller error:(id *)error;
- (unint64_t)faceCountForPersonWithUniqueIdentifier:(id)identifier;
- (unint64_t)personCount;
@end

@implementation VNPersonsModel

- (id)faceCountsForAllPersons
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained numberOfPersonsInPersonsModel:self];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v4];
    for (i = 0; i != v4; ++i)
    {
      v7 = [WeakRetained personsModel:self uniqueIdentifierOfPersonAtIndex:i];
      v8 = [WeakRetained personsModel:self numberOfFaceObservationsForPersonAtIndex:i];
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
      [v5 setObject:v9 forKeyedSubscript:v7];
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  return v5;
}

- (id)faceCountsForPersonsWithUniqueIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [WeakRetained personsModel:self indexOfPersonWithUniqueIdentifier:v10];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [WeakRetained personsModel:self numberOfFaceObservationsForPersonAtIndex:v11];
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
          [v5 setObject:v13 forKeyedSubscript:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)trainingFaceprintsForPersonWithUniqueIdentifier:(id)identifier canceller:(id)canceller error:(id *)error
{
  identifierCopy = identifier;
  v9 = [(VNPersonsModel *)self upToDateFaceModelWithCanceller:canceller error:error];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 trainingFaceprintsForPersonWithUniqueIdentifier:identifierCopy error:error];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)trainingFaceObservationsForPersonWithUniqueIdentifier:(id)identifier canceller:(id)canceller error:(id *)error
{
  identifierCopy = identifier;
  cancellerCopy = canceller;
  v10 = [(VNPersonsModel *)self faceObservationsForPersonWithUniqueIdentifier:identifierCopy error:error];
  v11 = v10;
  if (v10)
  {
    if ([v10 count])
    {
      v12 = [(VNPersonsModel *)self upToDateFaceModelWithCanceller:cancellerCopy error:error];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 trainingFaceprintsForPersonWithUniqueIdentifier:identifierCopy error:error];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 count];
          if (v16)
          {
            faceprintRequestRevision = [v13 faceprintRequestRevision];
            v18 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, v16}];
            v23 = MEMORY[0x1E69E9820];
            v24 = 3221225472;
            v25 = __88__VNPersonsModel_trainingFaceObservationsForPersonWithUniqueIdentifier_canceller_error___block_invoke;
            v26 = &unk_1E77B32E8;
            v30 = faceprintRequestRevision;
            selfCopy = self;
            v28 = v15;
            v19 = v18;
            v29 = v19;
            v20 = [v11 indexesOfObjectsPassingTest:&v23];
            v21 = [v11 objectsAtIndexes:{v20, v23, v24, v25, v26, selfCopy}];
          }

          else
          {
            v21 = MEMORY[0x1E695E0F0];
          }
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = v11;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t __88__VNPersonsModel_trainingFaceObservationsForPersonWithUniqueIdentifier_canceller_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 VNPersonsModelFaceprintWithRequestRevision:*(a1 + 56) error:0];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v6;
  if (v7)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__VNPersonsModel__indexOfFaceprints_equivalentToFaceprint___block_invoke;
    v14[3] = &unk_1E77B3298;
    v10 = v9;
    v15 = v10;
    v11 = [v8 indexOfObjectPassingTest:v14];

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_4:
      v12 = 0;
      goto LABEL_8;
    }
  }

  else
  {

    v11 = 0;
  }

  [*(a1 + 48) removeIndex:v11];
  v12 = 1;
  if (![*(a1 + 48) count])
  {
    *a4 = 1;
  }

LABEL_8:

  return v12;
}

- (id)faceObservationsForPersonWithUniqueIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(VNPersonsModel *)self _dataSourceAndReturnError:error];
  v8 = v7;
  if (!v7)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_13;
  }

  v9 = [v7 personsModel:self indexOfPersonWithUniqueIdentifier:identifierCopy];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      VNPersonsModelErrorForUnknownPersonUniqueIdentifier(identifierCopy);
      *error = v10 = 0;
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  v11 = [v8 personsModel:self numberOfFaceObservationsForPersonAtIndex:v9];
  if (v11)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v11];
    for (i = 0; i != v11; ++i)
    {
      v13 = [v8 personsModel:self faceObservationAtIndex:i forPersonAtIndex:v9];
      if (v13)
      {
        [v10 addObject:v13];
      }
    }
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

LABEL_13:

  return v10;
}

- (id)_dataSourceAndReturnError:(uint64_t)error
{
  if (error)
  {
    WeakRetained = objc_loadWeakRetained((error + 24));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v5 = WeakRetained;
    }

    else if (a2)
    {
      *a2 = VNPersonsModelErrorForInvalidModelData(@"the data source is no longer available");
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)faceCountForPersonWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained personsModel:self indexOfPersonWithUniqueIdentifier:identifierCopy];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [WeakRetained personsModel:self numberOfFaceObservationsForPersonAtIndex:v6];
  }

  return v7;
}

- (id)personUniqueIdentifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained numberOfPersonsInPersonsModel:self];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
    for (i = 0; i != v4; ++i)
    {
      v7 = [WeakRetained personsModel:self uniqueIdentifierOfPersonAtIndex:i];
      [v5 addObject:v7];
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (unint64_t)personCount
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained numberOfPersonsInPersonsModel:self];

  return v4;
}

- (id)predictPersonFromFaceObservation:(id)observation limit:(unint64_t)limit canceller:(id)canceller error:(id *)error
{
  observationCopy = observation;
  cancellerCopy = canceller;
  if (observationCopy)
  {
    v11 = [(VNPersonsModel *)self upToDateFaceModelWithCanceller:cancellerCopy error:error];
    v12 = v11;
    if (v11)
    {
      v13 = [observationCopy VNPersonsModelFaceprintWithRequestRevision:objc_msgSend(v11 error:{"faceprintRequestRevision"), error}];
      if (v13)
      {
        [v13 descriptorData];
        objc_claimAutoreleasedReturnValue();
        std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>();
      }
    }
  }

  else if (error)
  {
    *error = [VNError errorForInvalidArgumentWithLocalizedDescription:@"the face observation must not be nil"];
  }

  return 0;
}

- (VNPersonsModelConfiguration)configuration
{
  v2 = [(VNPersonsModelConfiguration *)self->_configuration copy];

  return v2;
}

- (BOOL)convertToAlgorithm:(id)algorithm error:(id *)error
{
  algorithmCopy = algorithm;
  algorithm = [(VNPersonsModelConfiguration *)self->_configuration algorithm];
  v8 = [algorithm isEqual:algorithmCopy];

  if ((v8 & 1) == 0)
  {
    if (![(VNPersonsModel *)self dropCurrentFaceModelAndReturnError:error])
    {
      v9 = 0;
      goto LABEL_6;
    }

    [(VNPersonsModelConfiguration *)self->_configuration setAlgorithm:algorithmCopy];
  }

  v9 = 1;
LABEL_6:

  return v9;
}

- (VNPersonsModelAlgorithm)algorithm
{
  v2 = [(VNPersonsModelConfiguration *)self->_configuration resolvedAlgorithmAndReturnError:0];
  v3 = [v2 copy];

  return v3;
}

- (id)upToDateFaceModelWithCanceller:(id)canceller error:(id *)error
{
  cancellerCopy = canceller;
  v7 = [(VNPersonsModel *)self _dataSourceAndReturnError:error];
  if (!v7)
  {
    goto LABEL_12;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 lastDataChangeSequenceNumberForPersonsModel:self];
    if (v8 != self->_lastDataChangeSequenceNumber && ![(VNPersonsModel *)self dropCurrentFaceModelAndReturnError:error])
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
  }

  faceModel_DO_NOT_ACCESS_DIRECTLY = self->_faceModel_DO_NOT_ACCESS_DIRECTLY;
  if (faceModel_DO_NOT_ACCESS_DIRECTLY)
  {
LABEL_10:
    v13 = faceModel_DO_NOT_ACCESS_DIRECTLY;
    goto LABEL_13;
  }

  v10 = [[_VNPersonsModelDataSourceBasedDataProvider alloc] initWithPersonsModel:self dataSource:v7];
  v11 = [VNPersonsModelFaceModel modelBuiltFromConfiguration:self->_configuration dataProvider:v10 canceller:cancellerCopy error:error];
  v12 = self->_faceModel_DO_NOT_ACCESS_DIRECTLY;
  self->_faceModel_DO_NOT_ACCESS_DIRECTLY = v11;

  if (self->_faceModel_DO_NOT_ACCESS_DIRECTLY)
  {
    self->_lastDataChangeSequenceNumber = v8;

    faceModel_DO_NOT_ACCESS_DIRECTLY = self->_faceModel_DO_NOT_ACCESS_DIRECTLY;
    goto LABEL_10;
  }

LABEL_12:
  v13 = 0;
LABEL_13:

  return v13;
}

- (BOOL)dropCurrentFaceModelAndReturnError:(id *)error
{
  faceModel_DO_NOT_ACCESS_DIRECTLY = self->_faceModel_DO_NOT_ACCESS_DIRECTLY;
  self->_faceModel_DO_NOT_ACCESS_DIRECTLY = 0;

  return 1;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:64];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@: %p> %lu identities", v5, self, -[VNPersonsModel personCount](self, "personCount")];

  return v3;
}

- (BOOL)updateInternalConfigurationWithModelFaceprintRequestRevision:(unint64_t)revision error:(id *)error
{
  if (!revision)
  {
    return 1;
  }

  faceprintRequestRevision = [(VNPersonsModelConfiguration *)self->_configuration faceprintRequestRevision];
  if (faceprintRequestRevision == revision)
  {
    return 1;
  }

  v8 = faceprintRequestRevision;
  if (!faceprintRequestRevision)
  {
    [(VNPersonsModelConfiguration *)self->_configuration setFaceprintRequestRevision:revision];
    return 1;
  }

  if (error)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = VNRequestRevisionString(v10, v8);
    v12 = objc_opt_class();
    v13 = VNRequestRevisionString(v12, revision);
    v14 = [v9 stringWithFormat:@"configuration has already been resolved to %@ and cannot be set to %@", v11, v13];

    *error = [VNError errorForInternalErrorWithLocalizedDescription:v14];
  }

  return 0;
}

- (VNPersonsModel)initWithConfiguration:(id)configuration dataSource:(id)source
{
  configurationCopy = configuration;
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = VNPersonsModel;
  v8 = [(VNPersonsModel *)&v14 init];
  if (v8)
  {
    v9 = [configurationCopy copy];
    configuration = v8->_configuration;
    v8->_configuration = v9;

    v11 = v8->_configuration;
    v12 = [(VNPersonsModelConfiguration *)v11 resolvedAlgorithmAndReturnError:0];
    [(VNPersonsModelConfiguration *)v11 setAlgorithm:v12];

    objc_storeWeak(&v8->_dataSource, sourceCopy);
  }

  return v8;
}

+ (BOOL)readObjectForModelVersion:(unint64_t)version tag:(unsigned int)tag fromInputStream:(id)stream intoObjectDictionary:(id)dictionary md5Context:(CC_MD5state_st *)context error:(id *)error
{
  v11 = *&tag;
  streamCopy = stream;
  dictionaryCopy = dictionary;
  if (v11 <= 1833250632)
  {
    if (v11 == 1227572778)
    {
      v14 = streamCopy;
      v18 = dictionaryCopy;
      strongToStrongObjectsMapTable = [v18 objectForKeyedSubscript:&unk_1F19C1378];
      if (!strongToStrongObjectsMapTable)
      {
        strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        [v18 setObject:strongToStrongObjectsMapTable forKeyedSubscript:&unk_1F19C1378];
      }

      v20 = VNPersonsModelIOReadNSDataFromInputStream(v14, context, error);
      v21 = v20;
      if (v20)
      {
        v55 = strongToStrongObjectsMapTable;
        bytes = [v20 bytes];
        v23 = *bytes;
        v24 = [v21 VNPersonsModelSubdataWithRange:4 rangeDescription:v23 error:{@"person identifier data", error}];
        v54 = v24;
        if (v24)
        {
          v53 = v18;
          v25 = MEMORY[0x1E696ACD0];
          v26 = VNEntityUniqueIdentifierClasses();
          v27 = [v25 unarchivedObjectOfClasses:v26 fromData:v24 error:error];

          v58 = v27;
          if (v27)
          {
            v63 = *(bytes + v23 + 4);
            v28 = [v55 objectForKey:v27];
            if (!v28)
            {
              v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v63];
              [v55 setObject:v28 forKey:v27];
            }

            v56 = v28;
            if (v63)
            {
              v59 = bytes;
              v52 = v14;
              v60 = dictionaryCopy;
              v62 = streamCopy;
              v29 = 0;
              v30 = 0;
              v57 = 0;
              v31 = v23 + 8;
              do
              {
                v32 = objc_autoreleasePoolPush();
                v33 = *(v59 + v31);
                v31 += 4;
                aBlock = MEMORY[0x1E69E9820];
                v66 = 3221225472;
                v67 = ___ZL43_readVersion1PersonAndFaceObservationsChunkP13NSInputStreamP19NSMutableDictionaryP14CC_MD5state_stPU15__autoreleasingP7NSError_block_invoke;
                v68 = &unk_1E77B3338;
                v70 = v29;
                v71 = v63;
                v69 = v27;
                v73 = v30;
                v34 = [v21 VNPersonsModelSubdataWithRange:v31 rangeDescriptionProvidingBlock:v33 error:{&aBlock, &v73}];
                v35 = v73;

                if (v34)
                {
                  v36 = MEMORY[0x1E696ACD0];
                  v37 = objc_opt_class();
                  v64 = v35;
                  v38 = [v36 unarchivedObjectOfClass:v37 fromData:v34 error:&v64];
                  v30 = v64;

                  v39 = v38 == 0;
                  if (v38)
                  {
                    [v56 addObject:v38];
                  }

                  else
                  {
                    v57 = 1;
                  }

                  v31 += v33;

                  v27 = v58;
                }

                else
                {
                  v57 = 1;
                  v30 = v35;
                  v39 = 1;
                }

                objc_autoreleasePoolPop(v32);
                v40 = v63 - 1 == v29;
                v29 = (v29 + 1);
                v41 = v40 || v39;
              }

              while ((v41 & 1) == 0);
              v17 = v57 ^ 1;
              strongToStrongObjectsMapTable = v55;
              if (((error != 0) & v57) != 0)
              {
                v42 = v30;
                *error = v30;
              }

              dictionaryCopy = v60;
              streamCopy = v62;
              v14 = v52;
            }

            else
            {
              v30 = 0;
              v17 = 1;
              strongToStrongObjectsMapTable = v55;
            }

            v18 = v53;
          }

          else
          {
            v17 = 0;
            v18 = v53;
            strongToStrongObjectsMapTable = v55;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_57;
    }

    if (v11 != 1634494319 && v11 != 1819111268)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  if (v11 > 1919895090)
  {
    if (v11 != 1919895091 && v11 != 1919895117)
    {
      goto LABEL_38;
    }

LABEL_39:
    v43 = objc_opt_class();
    v14 = streamCopy;
    v44 = dictionaryCopy;
    v45 = VNPersonsModelIOReadNSDataFromInputStream(v14, context, error);
    v46 = v45;
    if (v45)
    {
      v61 = dictionaryCopy;
      v73 = 0;
      v74 = &v73;
      v75 = 0x3032000000;
      v76 = __Block_byref_object_copy__9010;
      v77 = __Block_byref_object_dispose__9011;
      v78 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v66 = 3221225472;
      v67 = ___ZL24_readTaggedObjectOfClassP13NSInputStreamjP10objc_classP19NSMutableDictionaryP14CC_MD5state_stPU15__autoreleasingP7NSError_block_invoke;
      v68 = &unk_1E77B3310;
      v72 = v11;
      v70 = &v73;
      v71 = v43;
      v69 = v45;
      v47 = _Block_copy(&aBlock);
      v17 = VNExecuteBlock(v47, error);
      if (v17)
      {
        v48 = v74[5];
        v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
        [v44 setObject:v48 forKeyedSubscript:v49];
      }

      _Block_object_dispose(&v73, 8);
      dictionaryCopy = v61;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_57;
  }

  if (v11 != 1833250633 && v11 != 1835104329)
  {
LABEL_38:
    v17 = VNPersonsModelIOReadPastUnknownTagData(streamCopy, context, error);
    goto LABEL_58;
  }

  LODWORD(v73) = 0;
  v14 = streamCopy;
  LODWORD(aBlock) = 0;
  if (!VNPersonsModelIOReadTagFromInputStream(v14, &aBlock, context, error))
  {
LABEL_47:
    v17 = 0;
    goto LABEL_57;
  }

  if (aBlock != 4)
  {
    if (error)
    {
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"encountered unexpected length of %u, instead of %u", aBlock, 4];
      *error = VNPersonsModelErrorForIOError(v50);
    }

    goto LABEL_47;
  }

  v15 = VNPersonsModelIOReadBufferFromInputStream(v14, 4u, &v73, context, error);

  if (v15)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:v73];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
    [dictionaryCopy setObject:v14 forKeyedSubscript:v16];

    v17 = 1;
LABEL_57:

    goto LABEL_58;
  }

  v17 = 0;
LABEL_58:

  return v17 & 1;
}

+ (id)newModelFromVersion:(unint64_t)version objects:(id)objects error:(id *)error
{
  if (error)
  {
    version = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot create model with version %u", objects, version];
    *error = VNPersonsModelErrorForInvalidModelData(version);
  }

  return 0;
}

+ (id)informationForModelWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [objc_alloc(MEMORY[0x1E695DF48]) initWithURL:lCopy];
  v8 = [(VNPersonsModel *)self _modelInformationFromUnopenedStream:v7 error:error];

  return v8;
}

+ (VNPersonsModelInformation)_modelInformationFromUnopenedStream:(void *)stream error:
{
  v4 = a2;
  v5 = objc_opt_self();
  [v4 open];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.vis.VNPersonsModelLoader" code:1 userInfo:0];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__9010;
  v30 = __Block_byref_object_dispose__9011;
  v31 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__VNPersonsModel__modelInformationFromUnopenedStream_error___block_invoke_154;
  aBlock[3] = &unk_1E77B32C0;
  v25 = &v26;
  v7 = v6;
  v24 = v7;
  v8 = _Block_copy(aBlock);
  v9 = objc_alloc_init(VNPersonsModelReadOptions);
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v10 = [(VNPersonsModel *)v5 _readModelObjectsFromStream:v4 options:v9 actionBlock:&__block_literal_global_150 progressBlock:v8 modelClass:&v22 version:&v21 error:&v20];
  v11 = v20;
  v12 = v11;
  if (v10 || ([v11 isEqual:v7] & 1) != 0)
  {
    if (!v27[5])
    {
      distantPast = [MEMORY[0x1E695DF00] distantPast];
      v14 = v27[5];
      v27[5] = distantPast;
    }

    v15 = [v10 objectForKeyedSubscript:&unk_1F19C1360];
    v16 = [VNPersonsModelInformation alloc];
    v17 = -[VNPersonsModelInformation initWithVersion:lastModificationDate:algorithm:readOnly:](v16, "initWithVersion:lastModificationDate:algorithm:readOnly:", v21, v27[5], v15, [v22 isReadOnly]);
  }

  else if (stream)
  {
    v19 = v12;
    v17 = 0;
    *stream = v12;
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v26, 8);
  [v4 close];

  return v17;
}

BOOL __60__VNPersonsModel__modelInformationFromUnopenedStream_error___block_invoke_154(uint64_t a1, int a2, void *a3, void *a4)
{
  v8 = a3;
  if (a2 == 1819111268)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
      if (a4)
      {
        *a4 = *(a1 + 32);
      }
    }

    else if (a4)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = VNPersonsModelIOStringForTag(1819111268);
      v11 = [v9 stringWithFormat:@"%@ read as %@", v10, v8];
      *a4 = VNPersonsModelErrorForInvalidModelData(v11);
    }
  }

  return a2 != 1819111268;
}

+ (id)_readModelObjectsFromStream:(void *)stream options:(void *)options actionBlock:(void *)block progressBlock:(void *)progressBlock modelClass:(void *)class version:(void *)version error:
{
  v58 = *MEMORY[0x1E69E9840];
  v14 = a2;
  streamCopy = stream;
  optionsCopy = options;
  blockCopy = block;
  objc_opt_self();
  CC_MD5_Init(&c);
  v53 = 0;
  if (!VNPersonsModelIOReadTagFromInputStream(v14, &v53, &c, version))
  {
    goto LABEL_31;
  }

  v16 = v53;
  objc_opt_self();
  if (v16 != 1886217324 && v16 != 1886220911)
  {
    if (version)
    {
      v31 = MEMORY[0x1E696AEC0];
      v32 = VNPersonsModelIOStringForTag(v16);
      v33 = [v31 stringWithFormat:@"unknown model kind '%@'", v32];
      *version = VNPersonsModelErrorForInvalidModelData(v33);
    }

    v34 = 0;
    goto LABEL_31;
  }

  v17 = objc_opt_class();
  if (!v17)
  {
    goto LABEL_31;
  }

  if (progressBlock)
  {
    *progressBlock = v17;
  }

  v52 = 0;
  if (!VNPersonsModelIOReadTagFromInputStream(v14, &v52, &c, version))
  {
LABEL_31:
    v35 = 0;
    goto LABEL_32;
  }

  v18 = v52;
  if (class)
  {
    *class = v52;
  }

  acceptableVersions = [streamCopy acceptableVersions];
  if (acceptableVersions && ([acceptableVersions containsIndex:v18] & 1) == 0)
  {
    if (version)
    {
      VNPersonsModelErrorForUnacceptableModelVersion(v18);
      *version = v35 = 0;
    }

    else
    {
      v35 = 0;
    }

    goto LABEL_52;
  }

  v44 = v18;
  v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0;
  v20 = 1;
  do
  {
    v21 = objc_autoreleasePoolPush();
    *md = 0;
    v51 = v19;
    v22 = VNPersonsModelIOReadTagFromInputStream(v14, md, &c, &v51);
    v23 = v51;

    v19 = v23;
    if (!v22)
    {
LABEL_21:
      v20 = 0;
LABEL_22:
      v25 = 1;
      goto LABEL_23;
    }

    if (*md == v53)
    {
      goto LABEL_22;
    }

    if (optionsCopy && optionsCopy[2](optionsCopy, *md) == 1)
    {
      v50 = v23;
      v20 = VNPersonsModelIOReadPastUnknownTagData(v14, &c, &v50);
      v24 = v50;

      v25 = v20 ^ 1;
      v19 = v24;
      goto LABEL_23;
    }

    v49 = v23;
    v26 = [v17 readObjectForModelVersion:v44 tag:? fromInputStream:? intoObjectDictionary:? md5Context:? error:?];
    v27 = v49;

    if (v26)
    {
      if (blockCopy)
      {
        v28 = *md;
        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*md];
        v30 = [v45 objectForKeyedSubscript:v29];
        v48 = v27;
        LOBYTE(v28) = blockCopy[2](blockCopy, v28, v30, &v48);
        v19 = v48;

        if ((v28 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v19 = v27;
      }

      v25 = 0;
      v20 = 1;
    }

    else
    {
      v20 = 0;
      v25 = 1;
      v19 = v27;
    }

LABEL_23:
    objc_autoreleasePoolPop(v21);
  }

  while ((v25 & 1) == 0);
  if ((v20 & 1) == 0)
  {
    if (version)
    {
      v40 = v19;
      v35 = 0;
      *version = v19;
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  CC_MD5_Final(md, &c);
  v37 = v14;
  v38 = [v37 read:v55 maxLength:16];
  if (v38 != 16 && version)
  {
    streamError = [v37 streamError];
    *version = VNPersonsModelErrorWithLocalizedDescriptionAndUnderlyingError(1, @"unexpected end of data stream", streamError);

    goto LABEL_50;
  }

  v41 = v38 == 16;

  if (!v41)
  {
    goto LABEL_50;
  }

  if (v55[0] == *md && v55[1] == v57)
  {
    v35 = v45;
  }

  else
  {
    if (version)
    {
      VNPersonsModelErrorWithLocalizedDescription(2, @"model data cannot be verified due to mismatched checksums");
      *version = v35 = 0;
      goto LABEL_51;
    }

LABEL_50:
    v35 = 0;
  }

LABEL_51:

LABEL_52:
LABEL_32:

  return v35;
}

+ (id)informationForModelWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x1E695DF48]) initWithData:dataCopy];
  v8 = [(VNPersonsModel *)self _modelInformationFromUnopenedStream:v7 error:error];

  return v8;
}

+ (id)modelFromURL:(id)l options:(id)options error:(id *)error
{
  lCopy = l;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x1E695DF48]) initWithURL:lCopy];
  v11 = [(VNPersonsModel *)self _modelFromUnopenedStream:v10 options:optionsCopy error:error];

  return v11;
}

+ (id)_modelFromUnopenedStream:(void *)stream options:(void *)options error:
{
  v6 = a2;
  streamCopy = stream;
  v8 = objc_opt_self();
  [v6 open];
  v9 = [(VNPersonsModel *)v8 _modelFromStream:v6 options:streamCopy error:options];
  [v6 close];

  return v9;
}

+ (id)_modelFromStream:(void *)stream options:(void *)options error:
{
  v6 = a2;
  streamCopy = stream;
  v8 = objc_opt_self();
  v14 = 0;
  v15 = 0;
  v9 = [(VNPersonsModel *)v8 _readModelObjectsFromStream:v6 options:streamCopy actionBlock:0 progressBlock:0 modelClass:&v15 version:&v14 error:options];
  if (v9)
  {
    v10 = [v15 newModelFromVersion:v14 objects:v9 error:options];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)modelFromData:(id)data options:(id)options error:(id *)error
{
  dataCopy = data;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x1E695DF48]) initWithData:dataCopy];
  v11 = [(VNPersonsModel *)self _modelFromUnopenedStream:v10 options:optionsCopy error:error];

  return v11;
}

+ (id)modelFromStream:(id)stream options:(id)options error:(id *)error
{
  v5 = [(VNPersonsModel *)self _modelFromStream:stream options:options error:error];

  return v5;
}

+ (id)supportedReadVersions
{
  if (+[VNPersonsModel supportedReadVersions]::onceToken != -1)
  {
    dispatch_once(&+[VNPersonsModel supportedReadVersions]::onceToken, &__block_literal_global_9066);
  }

  v3 = +[VNPersonsModel supportedReadVersions]::ourSupportedReadVersions;

  return v3;
}

uint64_t __39__VNPersonsModel_supportedReadVersions__block_invoke()
{
  +[VNPersonsModel supportedReadVersions]::ourSupportedReadVersions = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:1];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)versionNumbersEncodedInClass:(Class)class withMethodNamePrefix:(id)prefix suffix:(id)suffix
{
  prefixCopy = prefix;
  suffixCopy = suffix;
  v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v10 = [prefixCopy length];
  outCount = 0;
  v11 = class_copyMethodList(class, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Name = method_getName(v11[i]);
      v14 = NSStringFromSelector(Name);
      if ([v14 hasPrefix:prefixCopy] && objc_msgSend(v14, "hasSuffix:", suffixCopy))
      {
        v15 = [v14 substringWithRange:{v10, objc_msgSend(v14, "length") - (v10 + objc_msgSend(suffixCopy, "length"))}];
        integerValue = [v15 integerValue];
        if (integerValue >= 1)
        {
          [v9 addIndex:integerValue];
        }
      }
    }
  }

  free(v11);

  return v9;
}

+ (id)configurationFromLoadedObjects:(id)objects error:(id *)error
{
  objectsCopy = objects;
  v5 = objc_alloc_init(VNPersonsModelConfiguration);
  [(VNPersonsModelConfiguration *)v5 setFaceprintRequestRevision:0];
  v6 = [objectsCopy objectForKeyedSubscript:&unk_1F19C1330];
  v7 = v6;
  if (v6)
  {
    -[VNPersonsModelConfiguration setMaximumIdentities:](v5, "setMaximumIdentities:", [v6 unsignedIntegerValue]);
  }

  v8 = [objectsCopy objectForKeyedSubscript:&unk_1F19C1348];
  v9 = v8;
  if (v8)
  {
    -[VNPersonsModelConfiguration setMaximumTrainingFaceprintsPerIdentity:](v5, "setMaximumTrainingFaceprintsPerIdentity:", [v8 unsignedIntegerValue]);
  }

  v10 = [objectsCopy objectForKeyedSubscript:&unk_1F19C1360];
  if (v10)
  {
    [(VNPersonsModelConfiguration *)v5 setAlgorithm:v10];
  }

  return v5;
}

@end
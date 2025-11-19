@interface VNPersonsModel
+ (BOOL)readObjectForModelVersion:(unint64_t)a3 tag:(unsigned int)a4 fromInputStream:(id)a5 intoObjectDictionary:(id)a6 md5Context:(CC_MD5state_st *)a7 error:(id *)a8;
+ (VNPersonsModelInformation)_modelInformationFromUnopenedStream:(void *)a3 error:;
+ (id)_modelFromStream:(void *)a3 options:(void *)a4 error:;
+ (id)_modelFromUnopenedStream:(void *)a3 options:(void *)a4 error:;
+ (id)_readModelObjectsFromStream:(void *)a3 options:(void *)a4 actionBlock:(void *)a5 progressBlock:(void *)a6 modelClass:(void *)a7 version:(void *)a8 error:;
+ (id)configurationFromLoadedObjects:(id)a3 error:(id *)a4;
+ (id)informationForModelWithData:(id)a3 error:(id *)a4;
+ (id)informationForModelWithURL:(id)a3 error:(id *)a4;
+ (id)modelFromData:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)modelFromStream:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)modelFromURL:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)newModelFromVersion:(unint64_t)a3 objects:(id)a4 error:(id *)a5;
+ (id)supportedReadVersions;
+ (id)versionNumbersEncodedInClass:(Class)a3 withMethodNamePrefix:(id)a4 suffix:(id)a5;
- (BOOL)convertToAlgorithm:(id)a3 error:(id *)a4;
- (BOOL)dropCurrentFaceModelAndReturnError:(id *)a3;
- (BOOL)updateInternalConfigurationWithModelFaceprintRequestRevision:(unint64_t)a3 error:(id *)a4;
- (VNPersonsModel)initWithConfiguration:(id)a3 dataSource:(id)a4;
- (VNPersonsModelAlgorithm)algorithm;
- (VNPersonsModelConfiguration)configuration;
- (id)_dataSourceAndReturnError:(uint64_t)a1;
- (id)description;
- (id)faceCountsForAllPersons;
- (id)faceCountsForPersonsWithUniqueIdentifiers:(id)a3;
- (id)faceObservationsForPersonWithUniqueIdentifier:(id)a3 error:(id *)a4;
- (id)personUniqueIdentifiers;
- (id)predictPersonFromFaceObservation:(id)a3 limit:(unint64_t)a4 canceller:(id)a5 error:(id *)a6;
- (id)trainingFaceObservationsForPersonWithUniqueIdentifier:(id)a3 canceller:(id)a4 error:(id *)a5;
- (id)trainingFaceprintsForPersonWithUniqueIdentifier:(id)a3 canceller:(id)a4 error:(id *)a5;
- (id)upToDateFaceModelWithCanceller:(id)a3 error:(id *)a4;
- (unint64_t)faceCountForPersonWithUniqueIdentifier:(id)a3;
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

- (id)faceCountsForPersonsWithUniqueIdentifiers:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v15;
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

- (id)trainingFaceprintsForPersonWithUniqueIdentifier:(id)a3 canceller:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(VNPersonsModel *)self upToDateFaceModelWithCanceller:a4 error:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 trainingFaceprintsForPersonWithUniqueIdentifier:v8 error:a5];
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

- (id)trainingFaceObservationsForPersonWithUniqueIdentifier:(id)a3 canceller:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(VNPersonsModel *)self faceObservationsForPersonWithUniqueIdentifier:v8 error:a5];
  v11 = v10;
  if (v10)
  {
    if ([v10 count])
    {
      v12 = [(VNPersonsModel *)self upToDateFaceModelWithCanceller:v9 error:a5];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 trainingFaceprintsForPersonWithUniqueIdentifier:v8 error:a5];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 count];
          if (v16)
          {
            v17 = [v13 faceprintRequestRevision];
            v18 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, v16}];
            v23 = MEMORY[0x1E69E9820];
            v24 = 3221225472;
            v25 = __88__VNPersonsModel_trainingFaceObservationsForPersonWithUniqueIdentifier_canceller_error___block_invoke;
            v26 = &unk_1E77B32E8;
            v30 = v17;
            v27 = self;
            v28 = v15;
            v19 = v18;
            v29 = v19;
            v20 = [v11 indexesOfObjectsPassingTest:&v23];
            v21 = [v11 objectsAtIndexes:{v20, v23, v24, v25, v26, v27}];
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

- (id)faceObservationsForPersonWithUniqueIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VNPersonsModel *)self _dataSourceAndReturnError:a4];
  v8 = v7;
  if (!v7)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_13;
  }

  v9 = [v7 personsModel:self indexOfPersonWithUniqueIdentifier:v6];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      VNPersonsModelErrorForUnknownPersonUniqueIdentifier(v6);
      *a4 = v10 = 0;
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

- (id)_dataSourceAndReturnError:(uint64_t)a1
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
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

- (unint64_t)faceCountForPersonWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained personsModel:self indexOfPersonWithUniqueIdentifier:v4];
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

- (id)predictPersonFromFaceObservation:(id)a3 limit:(unint64_t)a4 canceller:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  if (v9)
  {
    v11 = [(VNPersonsModel *)self upToDateFaceModelWithCanceller:v10 error:a6];
    v12 = v11;
    if (v11)
    {
      v13 = [v9 VNPersonsModelFaceprintWithRequestRevision:objc_msgSend(v11 error:{"faceprintRequestRevision"), a6}];
      if (v13)
      {
        [v13 descriptorData];
        objc_claimAutoreleasedReturnValue();
        std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>();
      }
    }
  }

  else if (a6)
  {
    *a6 = [VNError errorForInvalidArgumentWithLocalizedDescription:@"the face observation must not be nil"];
  }

  return 0;
}

- (VNPersonsModelConfiguration)configuration
{
  v2 = [(VNPersonsModelConfiguration *)self->_configuration copy];

  return v2;
}

- (BOOL)convertToAlgorithm:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VNPersonsModelConfiguration *)self->_configuration algorithm];
  v8 = [v7 isEqual:v6];

  if ((v8 & 1) == 0)
  {
    if (![(VNPersonsModel *)self dropCurrentFaceModelAndReturnError:a4])
    {
      v9 = 0;
      goto LABEL_6;
    }

    [(VNPersonsModelConfiguration *)self->_configuration setAlgorithm:v6];
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

- (id)upToDateFaceModelWithCanceller:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VNPersonsModel *)self _dataSourceAndReturnError:a4];
  if (!v7)
  {
    goto LABEL_12;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 lastDataChangeSequenceNumberForPersonsModel:self];
    if (v8 != self->_lastDataChangeSequenceNumber && ![(VNPersonsModel *)self dropCurrentFaceModelAndReturnError:a4])
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
  v11 = [VNPersonsModelFaceModel modelBuiltFromConfiguration:self->_configuration dataProvider:v10 canceller:v6 error:a4];
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

- (BOOL)dropCurrentFaceModelAndReturnError:(id *)a3
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

- (BOOL)updateInternalConfigurationWithModelFaceprintRequestRevision:(unint64_t)a3 error:(id *)a4
{
  if (!a3)
  {
    return 1;
  }

  v7 = [(VNPersonsModelConfiguration *)self->_configuration faceprintRequestRevision];
  if (v7 == a3)
  {
    return 1;
  }

  v8 = v7;
  if (!v7)
  {
    [(VNPersonsModelConfiguration *)self->_configuration setFaceprintRequestRevision:a3];
    return 1;
  }

  if (a4)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = VNRequestRevisionString(v10, v8);
    v12 = objc_opt_class();
    v13 = VNRequestRevisionString(v12, a3);
    v14 = [v9 stringWithFormat:@"configuration has already been resolved to %@ and cannot be set to %@", v11, v13];

    *a4 = [VNError errorForInternalErrorWithLocalizedDescription:v14];
  }

  return 0;
}

- (VNPersonsModel)initWithConfiguration:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = VNPersonsModel;
  v8 = [(VNPersonsModel *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    configuration = v8->_configuration;
    v8->_configuration = v9;

    v11 = v8->_configuration;
    v12 = [(VNPersonsModelConfiguration *)v11 resolvedAlgorithmAndReturnError:0];
    [(VNPersonsModelConfiguration *)v11 setAlgorithm:v12];

    objc_storeWeak(&v8->_dataSource, v7);
  }

  return v8;
}

+ (BOOL)readObjectForModelVersion:(unint64_t)a3 tag:(unsigned int)a4 fromInputStream:(id)a5 intoObjectDictionary:(id)a6 md5Context:(CC_MD5state_st *)a7 error:(id *)a8
{
  v11 = *&a4;
  v12 = a5;
  v13 = a6;
  if (v11 <= 1833250632)
  {
    if (v11 == 1227572778)
    {
      v14 = v12;
      v18 = v13;
      v19 = [v18 objectForKeyedSubscript:&unk_1F19C1378];
      if (!v19)
      {
        v19 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        [v18 setObject:v19 forKeyedSubscript:&unk_1F19C1378];
      }

      v20 = VNPersonsModelIOReadNSDataFromInputStream(v14, a7, a8);
      v21 = v20;
      if (v20)
      {
        v55 = v19;
        v22 = [v20 bytes];
        v23 = *v22;
        v24 = [v21 VNPersonsModelSubdataWithRange:4 rangeDescription:v23 error:{@"person identifier data", a8}];
        v54 = v24;
        if (v24)
        {
          v53 = v18;
          v25 = MEMORY[0x1E696ACD0];
          v26 = VNEntityUniqueIdentifierClasses();
          v27 = [v25 unarchivedObjectOfClasses:v26 fromData:v24 error:a8];

          v58 = v27;
          if (v27)
          {
            v63 = *(v22 + v23 + 4);
            v28 = [v55 objectForKey:v27];
            if (!v28)
            {
              v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v63];
              [v55 setObject:v28 forKey:v27];
            }

            v56 = v28;
            if (v63)
            {
              v59 = v22;
              v52 = v14;
              v60 = v13;
              v62 = v12;
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
              v19 = v55;
              if (((a8 != 0) & v57) != 0)
              {
                v42 = v30;
                *a8 = v30;
              }

              v13 = v60;
              v12 = v62;
              v14 = v52;
            }

            else
            {
              v30 = 0;
              v17 = 1;
              v19 = v55;
            }

            v18 = v53;
          }

          else
          {
            v17 = 0;
            v18 = v53;
            v19 = v55;
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
    v14 = v12;
    v44 = v13;
    v45 = VNPersonsModelIOReadNSDataFromInputStream(v14, a7, a8);
    v46 = v45;
    if (v45)
    {
      v61 = v13;
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
      v17 = VNExecuteBlock(v47, a8);
      if (v17)
      {
        v48 = v74[5];
        v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
        [v44 setObject:v48 forKeyedSubscript:v49];
      }

      _Block_object_dispose(&v73, 8);
      v13 = v61;
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
    v17 = VNPersonsModelIOReadPastUnknownTagData(v12, a7, a8);
    goto LABEL_58;
  }

  LODWORD(v73) = 0;
  v14 = v12;
  LODWORD(aBlock) = 0;
  if (!VNPersonsModelIOReadTagFromInputStream(v14, &aBlock, a7, a8))
  {
LABEL_47:
    v17 = 0;
    goto LABEL_57;
  }

  if (aBlock != 4)
  {
    if (a8)
    {
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"encountered unexpected length of %u, instead of %u", aBlock, 4];
      *a8 = VNPersonsModelErrorForIOError(v50);
    }

    goto LABEL_47;
  }

  v15 = VNPersonsModelIOReadBufferFromInputStream(v14, 4u, &v73, a7, a8);

  if (v15)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:v73];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
    [v13 setObject:v14 forKeyedSubscript:v16];

    v17 = 1;
LABEL_57:

    goto LABEL_58;
  }

  v17 = 0;
LABEL_58:

  return v17 & 1;
}

+ (id)newModelFromVersion:(unint64_t)a3 objects:(id)a4 error:(id *)a5
{
  if (a5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot create model with version %u", a4, a3];
    *a5 = VNPersonsModelErrorForInvalidModelData(v6);
  }

  return 0;
}

+ (id)informationForModelWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DF48]) initWithURL:v6];
  v8 = [(VNPersonsModel *)a1 _modelInformationFromUnopenedStream:v7 error:a4];

  return v8;
}

+ (VNPersonsModelInformation)_modelInformationFromUnopenedStream:(void *)a3 error:
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
      v13 = [MEMORY[0x1E695DF00] distantPast];
      v14 = v27[5];
      v27[5] = v13;
    }

    v15 = [v10 objectForKeyedSubscript:&unk_1F19C1360];
    v16 = [VNPersonsModelInformation alloc];
    v17 = -[VNPersonsModelInformation initWithVersion:lastModificationDate:algorithm:readOnly:](v16, "initWithVersion:lastModificationDate:algorithm:readOnly:", v21, v27[5], v15, [v22 isReadOnly]);
  }

  else if (a3)
  {
    v19 = v12;
    v17 = 0;
    *a3 = v12;
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

+ (id)_readModelObjectsFromStream:(void *)a3 options:(void *)a4 actionBlock:(void *)a5 progressBlock:(void *)a6 modelClass:(void *)a7 version:(void *)a8 error:
{
  v58 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v46 = a3;
  v15 = a4;
  v47 = a5;
  objc_opt_self();
  CC_MD5_Init(&c);
  v53 = 0;
  if (!VNPersonsModelIOReadTagFromInputStream(v14, &v53, &c, a8))
  {
    goto LABEL_31;
  }

  v16 = v53;
  objc_opt_self();
  if (v16 != 1886217324 && v16 != 1886220911)
  {
    if (a8)
    {
      v31 = MEMORY[0x1E696AEC0];
      v32 = VNPersonsModelIOStringForTag(v16);
      v33 = [v31 stringWithFormat:@"unknown model kind '%@'", v32];
      *a8 = VNPersonsModelErrorForInvalidModelData(v33);
    }

    v34 = 0;
    goto LABEL_31;
  }

  v17 = objc_opt_class();
  if (!v17)
  {
    goto LABEL_31;
  }

  if (a6)
  {
    *a6 = v17;
  }

  v52 = 0;
  if (!VNPersonsModelIOReadTagFromInputStream(v14, &v52, &c, a8))
  {
LABEL_31:
    v35 = 0;
    goto LABEL_32;
  }

  v18 = v52;
  if (a7)
  {
    *a7 = v52;
  }

  v43 = [v46 acceptableVersions];
  if (v43 && ([v43 containsIndex:v18] & 1) == 0)
  {
    if (a8)
    {
      VNPersonsModelErrorForUnacceptableModelVersion(v18);
      *a8 = v35 = 0;
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

    if (v15 && v15[2](v15, *md) == 1)
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
      if (v47)
      {
        v28 = *md;
        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*md];
        v30 = [v45 objectForKeyedSubscript:v29];
        v48 = v27;
        LOBYTE(v28) = v47[2](v47, v28, v30, &v48);
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
    if (a8)
    {
      v40 = v19;
      v35 = 0;
      *a8 = v19;
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  CC_MD5_Final(md, &c);
  v37 = v14;
  v38 = [v37 read:v55 maxLength:16];
  if (v38 != 16 && a8)
  {
    v39 = [v37 streamError];
    *a8 = VNPersonsModelErrorWithLocalizedDescriptionAndUnderlyingError(1, @"unexpected end of data stream", v39);

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
    if (a8)
    {
      VNPersonsModelErrorWithLocalizedDescription(2, @"model data cannot be verified due to mismatched checksums");
      *a8 = v35 = 0;
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

+ (id)informationForModelWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DF48]) initWithData:v6];
  v8 = [(VNPersonsModel *)a1 _modelInformationFromUnopenedStream:v7 error:a4];

  return v8;
}

+ (id)modelFromURL:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x1E695DF48]) initWithURL:v8];
  v11 = [(VNPersonsModel *)a1 _modelFromUnopenedStream:v10 options:v9 error:a5];

  return v11;
}

+ (id)_modelFromUnopenedStream:(void *)a3 options:(void *)a4 error:
{
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  [v6 open];
  v9 = [(VNPersonsModel *)v8 _modelFromStream:v6 options:v7 error:a4];
  [v6 close];

  return v9;
}

+ (id)_modelFromStream:(void *)a3 options:(void *)a4 error:
{
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  v14 = 0;
  v15 = 0;
  v9 = [(VNPersonsModel *)v8 _readModelObjectsFromStream:v6 options:v7 actionBlock:0 progressBlock:0 modelClass:&v15 version:&v14 error:a4];
  if (v9)
  {
    v10 = [v15 newModelFromVersion:v14 objects:v9 error:a4];
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

+ (id)modelFromData:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x1E695DF48]) initWithData:v8];
  v11 = [(VNPersonsModel *)a1 _modelFromUnopenedStream:v10 options:v9 error:a5];

  return v11;
}

+ (id)modelFromStream:(id)a3 options:(id)a4 error:(id *)a5
{
  v5 = [(VNPersonsModel *)a1 _modelFromStream:a3 options:a4 error:a5];

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

+ (id)versionNumbersEncodedInClass:(Class)a3 withMethodNamePrefix:(id)a4 suffix:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v10 = [v7 length];
  outCount = 0;
  v11 = class_copyMethodList(a3, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Name = method_getName(v11[i]);
      v14 = NSStringFromSelector(Name);
      if ([v14 hasPrefix:v7] && objc_msgSend(v14, "hasSuffix:", v8))
      {
        v15 = [v14 substringWithRange:{v10, objc_msgSend(v14, "length") - (v10 + objc_msgSend(v8, "length"))}];
        v16 = [v15 integerValue];
        if (v16 >= 1)
        {
          [v9 addIndex:v16];
        }
      }
    }
  }

  free(v11);

  return v9;
}

+ (id)configurationFromLoadedObjects:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_alloc_init(VNPersonsModelConfiguration);
  [(VNPersonsModelConfiguration *)v5 setFaceprintRequestRevision:0];
  v6 = [v4 objectForKeyedSubscript:&unk_1F19C1330];
  v7 = v6;
  if (v6)
  {
    -[VNPersonsModelConfiguration setMaximumIdentities:](v5, "setMaximumIdentities:", [v6 unsignedIntegerValue]);
  }

  v8 = [v4 objectForKeyedSubscript:&unk_1F19C1348];
  v9 = v8;
  if (v8)
  {
    -[VNPersonsModelConfiguration setMaximumTrainingFaceprintsPerIdentity:](v5, "setMaximumTrainingFaceprintsPerIdentity:", [v8 unsignedIntegerValue]);
  }

  v10 = [v4 objectForKeyedSubscript:&unk_1F19C1360];
  if (v10)
  {
    [(VNPersonsModelConfiguration *)v5 setAlgorithm:v10];
  }

  return v5;
}

@end
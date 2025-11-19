@interface VNEntityIdentificationModel
+ (BOOL)canCreateModelOfClass:(Class)a3 withObjects:(id)a4 error:(id *)a5;
+ (BOOL)readObjectForVersion1Tag:(unsigned int)a3 fromInputStream:(id)a4 intoObjectDictionary:(id)a5 md5Context:(CC_MD5state_st *)a6 error:(id *)a7;
+ (BOOL)validateAceptableObservation:(id)a3 forEntityPrintOriginatingRequestSpecifier:(id)a4 error:(id *)a5;
+ (BOOL)validateConfiguration:(id)a3 error:(id *)a4;
+ (VNEntityIdentificationModelInformation)_modelInformationFromUnopenedStream:(void *)a3 error:;
+ (id)_modelFromInputStream:(void *)a3 options:(void *)a4 error:;
+ (id)_modelFromUnopenedStream:(void *)a3 options:(void *)a4 error:;
+ (id)_readModelObjectsFromStream:(uint64_t)a1 options:(void *)a2 actionBlock:(void *)a3 progressBlock:(void *)a4 modelClass:(void *)a5 version:(void *)a6 error:(void *)a7;
+ (id)informationForModelWithData:(id)a3 error:(id *)a4;
+ (id)informationForModelWithURL:(id)a3 error:(id *)a4;
+ (id)modelConfigurationForVersion:(unint64_t)a3 modelObjects:(id)a4 error:(id *)a5;
+ (id)modelFromData:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)modelFromStream:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)modelFromURL:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)modelWithConfiguration:(id)a3 dataSource:(id)a4 error:(id *)a5;
+ (id)newModelForVersion:(unint64_t)a3 modelObjects:(id)a4 error:(id *)a5;
+ (id)supportedReadVersions;
+ (id)supportedRequestSpecifiers;
+ (id)supportedWriteVersions;
- (BOOL)_writeToOutputStream:(void *)a3 options:(void *)a4 error:;
- (BOOL)_writeToUnopenedOutputStream:(void *)a3 options:(void *)a4 error:;
- (BOOL)convertToAlgorithm:(id)a3 error:(id *)a4;
- (BOOL)dropTrainedModelAndReturnError:(id *)a3;
- (BOOL)validateWithCanceller:(id)a3 error:(id *)a4;
- (BOOL)writeReadOnlyVersion1ToOutputStream:(id)a3 options:(id)a4 md5Context:(CC_MD5state_st *)a5 error:(id *)a6;
- (BOOL)writeToStream:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)writeToURL:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)writeVersion1ToOutputStream:(id)a3 options:(id)a4 md5Context:(CC_MD5state_st *)a5 error:(id *)a6;
- (VNEntityIdentificationModel)initWithConfiguration:(id)a3 dataSource:(id)a4;
- (VNEntityIdentificationModelAlgorithm)algorithm;
- (VNEntityIdentificationModelConfiguration)configuration;
- (VNEntityIdentificationModelDelegate)delegate;
- (VNEntityIdentificationModelInformation)information;
- (id)_dataSourceAndReturnError:(uint64_t)a1;
- (id)dataWithOptions:(id)a3 error:(id *)a4;
- (id)entityPredictionsForObservation:(id)a3 limit:(unint64_t)a4 canceller:(id)a5 error:(id *)a6;
- (id)entityUniqueIdentifiers;
- (id)observationCountsForAllEntities;
- (id)observationCountsForEntitiesWithUniqueIdentifiers:(id)a3;
- (id)observationsForEntityWithUniqueIdentifier:(id)a3 error:(id *)a4;
- (id)trainedModelWithCanceller:(id)a3 error:(id *)a4;
- (id)trainingObservationsForEntityWithUniqueIdentifier:(id)a3 canceller:(id)a4 error:(id *)a5;
- (id)trainingPrintsForEntityWithUniqueIdentifier:(id)a3 canceller:(id)a4 error:(id *)a5;
- (id)uniqueIdentifierForEntityAtIndex:(unint64_t)a3;
- (uint64_t)_writePreambleAndCommonTagsForModelKind:(id *)a1 version:(int)a2 toOutputStream:(void *)a3 md5Context:(CC_MD5_CTX *)a4 error:(void *)a5;
- (uint64_t)_writeVersion1ConfigurationToOutputStream:(void *)a1 options:(void *)a2 md5Context:(CC_MD5_CTX *)a3 error:(void *)a4;
- (unint64_t)entityCount;
- (unint64_t)observationCountForEntityWithUniqueIdentifier:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation VNEntityIdentificationModel

- (id)entityPredictionsForObservation:(id)a3 limit:(unint64_t)a4 canceller:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [(VNEntityIdentificationModel *)self trainedModelWithCanceller:v11 error:a6];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 predictionsForObservation:v10 limit:a4 canceller:v11 error:a6];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)convertToAlgorithm:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VNEntityIdentificationModelConfiguration *)self->_configuration algorithm];
  v8 = [v7 isEqual:v6];

  if ((v8 & 1) == 0)
  {
    if (![(VNEntityIdentificationModel *)self dropTrainedModelAndReturnError:a4])
    {
      v9 = 0;
      goto LABEL_6;
    }

    [(VNEntityIdentificationModelConfiguration *)self->_configuration setAlgorithm:v6];
  }

  v9 = 1;
LABEL_6:

  return v9;
}

- (VNEntityIdentificationModelAlgorithm)algorithm
{
  v2 = [(VNEntityIdentificationModelConfiguration *)self->_configuration resolvedAlgorithmAndReturnError:0];
  v3 = [v2 copy];

  return v3;
}

- (id)trainingPrintsForEntityWithUniqueIdentifier:(id)a3 canceller:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(VNEntityIdentificationModel *)self trainedModelWithCanceller:a4 error:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 trainingEntityPrintsForEntityWithUniqueIdentifier:v8 error:a5];
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

- (id)trainingObservationsForEntityWithUniqueIdentifier:(id)a3 canceller:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(VNEntityIdentificationModel *)self observationsForEntityWithUniqueIdentifier:v8 error:a5];
  v11 = v10;
  if (v10)
  {
    if ([v10 count])
    {
      v12 = [(VNEntityIdentificationModel *)self trainedModelWithCanceller:v9 error:a5];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 trainingEntityPrintsForEntityWithUniqueIdentifier:v8 error:a5];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 count];
          if (v16)
          {
            v17 = v16;
            v18 = [(VNEntityIdentificationModel *)self configuration];
            v19 = [v18 entityPrintOriginatingRequestSpecifier];

            v20 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, v17}];
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __97__VNEntityIdentificationModel_trainingObservationsForEntityWithUniqueIdentifier_canceller_error___block_invoke;
            v26[3] = &unk_1E77B6038;
            v27 = v19;
            v28 = v15;
            v29 = v20;
            v21 = v20;
            v22 = v19;
            v23 = [v11 indexesOfObjectsPassingTest:v26];
            v24 = [v11 objectsAtIndexes:v23];
          }

          else
          {
            v24 = MEMORY[0x1E695E0F0];
          }
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = v11;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

BOOL __97__VNEntityIdentificationModel_trainingObservationsForEntityWithUniqueIdentifier_canceller_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:*(a1 + 32) error:0];
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __97__VNEntityIdentificationModel_trainingObservationsForEntityWithUniqueIdentifier_canceller_error___block_invoke_2;
    v12[3] = &unk_1E77B6010;
    v13 = v6;
    v9 = [v8 indexOfObjectPassingTest:v12];
    v10 = v9 != 0x7FFFFFFFFFFFFFFFLL;
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 48) removeIndex:v9];
      if (![*(a1 + 48) count])
      {
        *a4 = 1;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)observationCountsForAllEntities
{
  v3 = [(VNEntityIdentificationModel *)self _dataSourceAndReturnError:?];
  v4 = [v3 numberOfEntitiesInEntityIdentificationModel:self];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v4];
    for (i = 0; i != v5; ++i)
    {
      v8 = [v3 entityIdentificationModel:self uniqueIdentifierOfEntityAtIndex:i];
      v9 = [v3 entityIdentificationModel:self numberOfObservationsForEntityAtIndex:i];
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
      [v6 setObject:v10 forKey:v8];
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  return v6;
}

- (id)_dataSourceAndReturnError:(uint64_t)a1
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v5 = WeakRetained;
    }

    else if (a2)
    {
      *a2 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, @"the data source is no longer available", 0);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)observationCountsForEntitiesWithUniqueIdentifiers:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VNEntityIdentificationModel *)self _dataSourceAndReturnError:?];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v4;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v5 entityIdentificationModel:self indexOfEntityWithUniqueIdentifier:v12];
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v14 = [v5 entityIdentificationModel:self numberOfObservationsForEntityAtIndex:v13];
            v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
            [v6 setObject:v15 forKey:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v4 = v17;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  return v6;
}

- (id)observationsForEntityWithUniqueIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VNEntityIdentificationModel *)self _dataSourceAndReturnError:a4];
  v8 = v7;
  if (!v7)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_9;
  }

  v9 = [v7 entityIdentificationModel:self indexOfEntityWithUniqueIdentifier:v6];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      VNEntityIdentificationModelErrorForUnknownEntityUniqueIdentifier(v6);
      *a4 = v10 = 0;
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  v11 = v9;
  v12 = [v8 entityIdentificationModel:self numberOfObservationsForEntityAtIndex:v9];
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v12];
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v14 = [v8 entityIdentificationModel:self observationAtIndex:i forEntityAtIndex:v11];
      [v10 addObject:v14];
    }
  }

LABEL_9:

  return v10;
}

- (unint64_t)observationCountForEntityWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(VNEntityIdentificationModel *)self _dataSourceAndReturnError:?];
  v6 = v5;
  if (v5 && (v7 = [v5 entityIdentificationModel:self indexOfEntityWithUniqueIdentifier:v4], v7 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = [v6 entityIdentificationModel:self numberOfObservationsForEntityAtIndex:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)uniqueIdentifierForEntityAtIndex:(unint64_t)a3
{
  v5 = [(VNEntityIdentificationModel *)self _dataSourceAndReturnError:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 entityIdentificationModel:self uniqueIdentifierOfEntityAtIndex:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)entityUniqueIdentifiers
{
  v3 = [(VNEntityIdentificationModel *)self _dataSourceAndReturnError:?];
  v4 = [v3 numberOfEntitiesInEntityIdentificationModel:self];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
    for (i = 0; i != v5; ++i)
    {
      v8 = [v3 entityIdentificationModel:self uniqueIdentifierOfEntityAtIndex:i];
      [v6 addObject:v8];
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (unint64_t)entityCount
{
  v3 = [(VNEntityIdentificationModel *)self _dataSourceAndReturnError:?];
  v4 = [v3 numberOfEntitiesInEntityIdentificationModel:self];

  return v4;
}

- (BOOL)validateWithCanceller:(id)a3 error:(id *)a4
{
  v4 = [(VNEntityIdentificationModel *)self trainedModelWithCanceller:a3 error:a4];
  v5 = v4 != 0;

  return v5;
}

- (VNEntityIdentificationModelInformation)information
{
  v3 = [(VNEntityIdentificationModelConfiguration *)self->_configuration resolvedAlgorithmAndReturnError:0];
  v4 = [(VNEntityIdentificationModel *)self _dataSourceAndReturnError:?];
  v5 = 0;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 lastModificationDateForEntityIdentificationModel:self];
  }

  v6 = -[VNEntityIdentificationModelInformation initWithVersion:algorithm:lastModificationDate:readOnly:]([VNEntityIdentificationModelInformation alloc], "initWithVersion:algorithm:lastModificationDate:readOnly:", 1, v3, v5, [objc_opt_class() isReadOnly]);

  return v6;
}

- (VNEntityIdentificationModelConfiguration)configuration
{
  v2 = [(VNEntityIdentificationModelConfiguration *)self->_configuration copy];

  return v2;
}

- (BOOL)writeToURL:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = [objc_alloc(MEMORY[0x1E695DFC0]) initWithURL:v8 append:0];
  v16 = 0;
  v12 = [(VNEntityIdentificationModel *)self _writeToUnopenedOutputStream:v11 options:v9 error:&v16];
  v13 = v16;

  objc_autoreleasePoolPop(v10);
  if (a5 && !v12)
  {
    v14 = v13;
    *a5 = v13;
  }

  return v12;
}

- (BOOL)_writeToUnopenedOutputStream:(void *)a3 options:(void *)a4 error:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    [v7 open];
    LOBYTE(a1) = [(VNEntityIdentificationModel *)a1 _writeToOutputStream:v7 options:v8 error:a4];
    [v7 close];
  }

  return a1;
}

- (BOOL)_writeToOutputStream:(void *)a3 options:(void *)a4 error:
{
  v34 = *MEMORY[0x1E69E9840];
  v26 = a2;
  v7 = a3;
  v8 = v7;
  if (a1)
  {
    v28 = 0;
    v29 = 0;
    v9 = v7;
    v10 = [v9 version];
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v10];
    }

    else
    {
      v11 = [objc_opt_class() supportedWriteVersions];
    }

    v12 = v11;
    if ([v9 readOnly])
    {
      v13 = 1;
    }

    else
    {
      v14 = [a1 information];
      v13 = [v14 isReadOnly];
    }

    *md = 0;
    v31 = md;
    v32 = 0x2020000000;
    v33 = 0;
    *&c.A = MEMORY[0x1E69E9820];
    *&c.C = 3221225472;
    *&c.Nl = __96__VNEntityIdentificationModel__getModelWritingImplementation_selector_version_forOptions_error___block_invoke;
    *c.data = &unk_1E77B5FC8;
    *&c.data[6] = &v29;
    *&c.data[8] = &v28;
    LOBYTE(c.data[10]) = v13;
    *&c.data[2] = a1;
    *&c.data[4] = md;
    [v12 enumerateIndexesWithOptions:2 usingBlock:&c];
    v15 = *(v31 + 3);
    if (!v15 && a4)
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
      v20 = [v16 stringWithFormat:@"%@ does not support writing version %@", v18, v19];

      *a4 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(5, v20, 0);
    }

    _Block_object_dispose(md, 8);

    if (v15 && (memset(&c, 0, sizeof(c)), CC_MD5_Init(&c), v29(a1, v28, v26, v9, &c, a4)))
    {
      CC_MD5_Final(md, &c);
      v21 = v26;
      v22 = [v21 write:md maxLength:16];
      a1 = v22 == 16;
      if (v22 != 16 && a4 != 0)
      {
        v24 = [v21 streamError];
        *a4 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(1, @"failed to write to data stream", v24);
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void __96__VNEntityIdentificationModel__getModelWritingImplementation_selector_version_forOptions_error___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a1 + 32))
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *v7 = 0;
    *v8 = 0;
    if (v6)
    {
      v9 = @"writeReadOnlyVersion";
    }

    else
    {
      v9 = @"writeVersion";
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%lu%@", v9, a2, @"ToOutputStream:options:md5Context:error:"];
    v10 = NSSelectorFromString(v14);
    *v8 = v10;
    if ((objc_opt_respondsToSelector() & 1) != 0 && (v11 = objc_opt_class(), (InstanceMethod = class_getInstanceMethod(v11, v10)) != 0) && (Implementation = method_getImplementation(InstanceMethod)) != 0)
    {
      *v7 = Implementation;

      *(*(*(a1 + 40) + 8) + 24) = a2;
      *a3 = 1;
    }

    else
    {
    }
  }
}

- (id)dataWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x1E695DFC0]) initToMemory];
  v16 = 0;
  v9 = [(VNEntityIdentificationModel *)self _writeToUnopenedOutputStream:v8 options:v6 error:&v16];
  v10 = v16;
  if (v9)
  {
    v11 = [v8 propertyForKey:*MEMORY[0x1E695DA30]];
    if (v11)
    {
      v12 = v11;

      objc_autoreleasePoolPop(v7);
      goto LABEL_8;
    }

    v13 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(1, @"failed to obtain the data", 0);

    v10 = v13;
  }

  objc_autoreleasePoolPop(v7);
  if (a4)
  {
    v14 = v10;
    v12 = 0;
    *a4 = v10;
  }

  else
  {
    v12 = 0;
  }

LABEL_8:

  return v12;
}

- (BOOL)writeToStream:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v15 = 0;
  v11 = [(VNEntityIdentificationModel *)self _writeToOutputStream:v8 options:v9 error:&v15];
  v12 = v15;
  objc_autoreleasePoolPop(v10);
  if (a5 && !v11)
  {
    v13 = v12;
    *a5 = v12;
  }

  return v11;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate_DO_NOT_ACCESS_DIRECTLY, v4);
  *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_delegateFlags = *&self->_delegateFlags & 0xFD | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *&self->_delegateFlags = *&self->_delegateFlags & 0xFB | v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  *&self->_delegateFlags = *&self->_delegateFlags & 0xF7 | v7;
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = 16;
  }

  else
  {
    v9 = 0;
  }

  *&self->_delegateFlags = *&self->_delegateFlags & 0xEF | v9;
}

- (VNEntityIdentificationModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate_DO_NOT_ACCESS_DIRECTLY);

  return WeakRetained;
}

- (BOOL)dropTrainedModelAndReturnError:(id *)a3
{
  if (self->_trainedModel_DO_NOT_ACCESS_DIRECTLY)
  {
    v4 = [(VNEntityIdentificationModel *)self delegate];
    v5 = v4;
    if ((*&self->_delegateFlags & 8) != 0)
    {
      [v4 entityIdentificationModelWillDropTrainingData:self];
    }

    trainedModel_DO_NOT_ACCESS_DIRECTLY = self->_trainedModel_DO_NOT_ACCESS_DIRECTLY;
    self->_trainedModel_DO_NOT_ACCESS_DIRECTLY = 0;

    if ((*&self->_delegateFlags & 0x10) != 0)
    {
      [v5 entityIdentificationModelDidDropTrainingData:self];
    }
  }

  return 1;
}

- (id)trainedModelWithCanceller:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VNEntityIdentificationModel *)self _dataSourceAndReturnError:a4];
  if (!v7)
  {
    goto LABEL_22;
  }

  if (!self->_trainedModel_DO_NOT_ACCESS_DIRECTLY)
  {
    v8 = 0;
LABEL_10:
    v10 = [(VNEntityIdentificationModel *)self delegate];
    v11 = v10;
    if (*&self->_delegateFlags)
    {
      [v10 willTrainEntityIdentificationModel:self withCanceller:v6];
    }

    v12 = [[_VNEntityIdentificationModelDataSourceBasedTrainedModelDataProvider alloc] initWithEntityIdentificationModel:self dataSource:v7];
    v13 = [(VNEntityIdentificationModel *)self configuration];
    v20 = 0;
    v14 = [VNEntityIdentificationModelTrainedModel trainedModelBuiltFromConfiguration:v13 dataProvider:v12 canceller:v6 error:&v20];
    v15 = v20;
    trainedModel_DO_NOT_ACCESS_DIRECTLY = self->_trainedModel_DO_NOT_ACCESS_DIRECTLY;
    self->_trainedModel_DO_NOT_ACCESS_DIRECTLY = v14;

    if (!self->_trainedModel_DO_NOT_ACCESS_DIRECTLY)
    {
      if ((*&self->_delegateFlags & 4) != 0)
      {
        [v11 entityIdentificationModel:self trainingFailedWithError:v15];
      }

      if (a4)
      {
        v18 = v15;
        *a4 = v15;
      }

      goto LABEL_22;
    }

    self->_lastDataChangeSequenceNumber = v8;
    if ((*&self->_delegateFlags & 2) != 0)
    {
      [v11 didTrainEntityIdentificationModel:self];
    }

    v9 = self->_trainedModel_DO_NOT_ACCESS_DIRECTLY;
LABEL_16:
    v17 = v9;
    goto LABEL_23;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v8 = [v7 lastDataChangeSequenceNumberForEntityIdentificationModel:self];
  if (v8 == self->_lastDataChangeSequenceNumber || [(VNEntityIdentificationModel *)self dropTrainedModelAndReturnError:a4])
  {
LABEL_9:
    v9 = self->_trainedModel_DO_NOT_ACCESS_DIRECTLY;
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

LABEL_22:
  v17 = 0;
LABEL_23:

  return v17;
}

- (VNEntityIdentificationModel)initWithConfiguration:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = VNEntityIdentificationModel;
  v8 = [(VNEntityIdentificationModel *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    configuration = v8->_configuration;
    v8->_configuration = v9;

    v11 = v8->_configuration;
    v12 = [(VNEntityIdentificationModelConfiguration *)v11 resolvedAlgorithmAndReturnError:0];
    [(VNEntityIdentificationModelConfiguration *)v11 setAlgorithm:v12];

    objc_storeWeak(&v8->_dataSource_DO_NOT_ACCESS_DIRECTLY, v7);
  }

  return v8;
}

- (BOOL)writeReadOnlyVersion1ToOutputStream:(id)a3 options:(id)a4 md5Context:(CC_MD5state_st *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(VNEntityIdentificationModel *)self trainedModelWithCanceller:0 error:a6];
  v13 = v12 && (v15 = 0, [objc_opt_class() getStoredRepresentationTag:&v15 forModelVersion:1 error:a6]) && -[VNEntityIdentificationModel _writePreambleAndCommonTagsForModelKind:version:toOutputStream:md5Context:error:](&self->super.isa, 1701409391, v10, a5, a6) && -[VNEntityIdentificationModel _writeVersion1ConfigurationToOutputStream:options:md5Context:error:](self, v10, a5, a6) && (v16 = 1497715488, VNEntityIdentificationModelIOWriteTaggedBufferToOutputStream(1378832160, &v16, 4u, v10, a5, a6)) && VNEntityIdentificationModelIOWriteTaggedNSObjectToOutputStream(v15, v12, v10, a5, a6) && VNEntityIdentificationModelIOWriteUInt32ToOutputStream(1701409391, v10, a5, a6);

  return v13;
}

- (uint64_t)_writePreambleAndCommonTagsForModelKind:(id *)a1 version:(int)a2 toOutputStream:(void *)a3 md5Context:(CC_MD5_CTX *)a4 error:(void *)a5
{
  v9 = a3;
  if (a1 && VNEntityIdentificationModelIOWriteUInt32ToOutputStream(a2, v9, a4, a5) && VNEntityIdentificationModelIOWriteUInt32ToOutputStream(1, v9, a4, a5))
  {
    v10 = [a1 information];
    v11 = [v10 lastModificationDate];
    v12 = VNEntityIdentificationModelIOWriteTaggedNSObjectToOutputStream(1819111268, v11, v9, a4, a5);

    if (v12)
    {
      v13 = [a1[3] resolvedAlgorithmAndReturnError:a5];
      if (v13)
      {
        v14 = VNEntityIdentificationModelIOWriteTaggedNSObjectToOutputStream(1634494319, v13, v9, a4, a5);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (uint64_t)_writeVersion1ConfigurationToOutputStream:(void *)a1 options:(void *)a2 md5Context:(CC_MD5_CTX *)a3 error:(void *)a4
{
  v7 = a2;
  if (a1)
  {
    v8 = [a1 configuration];
    v9 = [v8 entityPrintOriginatingRequestSpecifier];
    if ((!v9 || (v10 = v9, v11 = v7, v12 = v10, v16 = [v12 requestClassCode], v13 = objc_msgSend(v12, "requestRevision"), v12, v17 = v13, LODWORD(v13) = VNEntityIdentificationModelIOWriteTaggedBufferToOutputStream(1701995889, &v16, 0xCu, v11, a3, a4), v11, v12, v13)) && VNEntityIdentificationModelIOWriteTaggedUInt32ToOutputStream(1835104325, objc_msgSend(v8, "maximumEntities"), v7, a3, a4))
    {
      v14 = VNEntityIdentificationModelIOWriteTaggedUInt32ToOutputStream(1833971525, [v8 maximumTrainingPrintsPerEntity], v7, a3, a4);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)writeVersion1ToOutputStream:(id)a3 options:(id)a4 md5Context:(CC_MD5state_st *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if (![VNEntityIdentificationModel _writePreambleAndCommonTagsForModelKind:1701405805 version:v10 toOutputStream:a5 md5Context:a6 error:?]|| ![VNEntityIdentificationModel _writeVersion1ConfigurationToOutputStream:v10 options:a5 md5Context:a6 error:?])
  {
    goto LABEL_23;
  }

  v12 = v10;
  v13 = v11;
  v14 = v13;
  if (!self)
  {

LABEL_23:
    v35 = 0;
    goto LABEL_24;
  }

  v44 = [(VNEntityIdentificationModel *)self entityCount];
  if (v44)
  {
    v39 = v14;
    v40 = a6;
    v37 = v11;
    v38 = v10;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v41 = self;
    v42 = v12;
    while (1)
    {
      v43 = v15;
      v18 = objc_autoreleasePoolPush();
      v19 = [(VNEntityIdentificationModel *)self uniqueIdentifierForEntityAtIndex:v16];
      v46 = v17;
      v20 = [(VNEntityIdentificationModel *)self observationsForEntityWithUniqueIdentifier:v19 error:&v46];
      v21 = v46;

      if (!v20)
      {

        objc_autoreleasePoolPop(v18);
        v17 = v21;
        goto LABEL_15;
      }

      context = v18;
      v22 = v19;
      v23 = v20;
      v24 = v12;
      v60 = 0;
      v61 = &v60;
      v62 = 0x2020000000;
      v63 = 1;
      v54 = 0;
      v55 = &v54;
      v56 = 0x3032000000;
      v57 = __Block_byref_object_copy__33748;
      v58 = __Block_byref_object_dispose__33749;
      v59 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___writeVersion1EntityAndObservations_block_invoke;
      aBlock[3] = &unk_1E77B6088;
      v25 = v22;
      v49 = v25;
      v26 = v24;
      v50 = v26;
      v51 = &v54;
      v27 = a5;
      v52 = &v60;
      v53 = a5;
      v28 = _Block_copy(aBlock);
      v29 = objc_autoreleasePoolPush();
      [v23 vn_enumerateObjectsAsSubarraysOfCount:20 usingBlock:v28];
      objc_autoreleasePoolPop(v29);
      v30 = *(v61 + 24);
      v31 = v21;
      if ((v30 & 1) == 0)
      {
        v31 = v55[5];
        v32 = v31;
      }

      _Block_object_dispose(&v54, 8);
      _Block_object_dispose(&v60, 8);

      v17 = v31;
      objc_autoreleasePoolPop(context);
      if ((v30 & 1) == 0)
      {
        break;
      }

      v15 = ++v16 >= v44;
      a5 = v27;
      self = v41;
      v12 = v42;
      if (v44 == v16)
      {
        goto LABEL_16;
      }
    }

    a5 = v27;
    v12 = v42;
LABEL_15:
    v15 = v43;
LABEL_16:
    v14 = v39;
    a6 = v40;
    if (v40)
    {
      v11 = v37;
      v10 = v38;
      if (!v15)
      {
        v33 = v17;
        v15 = 0;
        *v40 = v17;
      }
    }

    else
    {
      v11 = v37;
      v10 = v38;
    }
  }

  else
  {
    v17 = 0;
    v15 = 1;
  }

  v47 = v15;

  v34 = v47;
  if (!v34)
  {
    goto LABEL_23;
  }

  v35 = VNEntityIdentificationModelIOWriteUInt32ToOutputStream(1701405805, v12, a5, a6);
LABEL_24:

  return v35;
}

+ (id)supportedWriteVersions
{
  v2 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:1];

  return v2;
}

+ (id)informationForModelWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x1E695DF48]) initWithURL:v6];
  v14 = 0;
  v9 = [(VNEntityIdentificationModel *)a1 _modelInformationFromUnopenedStream:v8 error:&v14];
  v10 = v14;

  objc_autoreleasePoolPop(v7);
  if (v9)
  {
    v11 = v9;
  }

  else if (a4)
  {
    v12 = v10;
    *a4 = v10;
  }

  return v9;
}

+ (VNEntityIdentificationModelInformation)_modelInformationFromUnopenedStream:(void *)a3 error:
{
  v4 = a2;
  objc_opt_self();
  [v4 open];
  v5 = v4;
  v6 = objc_opt_self();
  v7 = objc_alloc_init(VNEntityIdentificationModelReadOptions);
  v15 = 0;
  v16 = 0;
  v8 = [VNEntityIdentificationModel _readModelObjectsFromStream:v6 options:v5 actionBlock:v7 progressBlock:&__block_literal_global_33784 modelClass:&v16 version:&v15 error:a3];

  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:&unk_1F19C1B10];
    if (!v9)
    {
      v9 = [MEMORY[0x1E695DF00] distantPast];
    }

    v10 = [VNEntityIdentificationModelInformation alloc];
    v11 = v15;
    v12 = [v8 objectForKeyedSubscript:&unk_1F19C1B28];
    v13 = -[VNEntityIdentificationModelInformation initWithVersion:algorithm:lastModificationDate:readOnly:](v10, "initWithVersion:algorithm:lastModificationDate:readOnly:", v11, v12, v9, [v16 isReadOnly]);
  }

  else
  {
    v13 = 0;
  }

  [v4 close];

  return v13;
}

+ (id)_readModelObjectsFromStream:(uint64_t)a1 options:(void *)a2 actionBlock:(void *)a3 progressBlock:(void *)a4 modelClass:(void *)a5 version:(void *)a6 error:(void *)a7
{
  v55 = *MEMORY[0x1E69E9840];
  v12 = a2;
  v13 = a3;
  v14 = a4;
  objc_opt_self();
  memset(&c, 0, sizeof(c));
  CC_MD5_Init(&c);
  v50 = 0;
  if (!VNEntityIdentificationModelIOReadUInt32FromInputStream(v12, &v50, &c, a7))
  {
    goto LABEL_25;
  }

  v15 = v50;
  objc_opt_self();
  if (v15 != 1701405805 && v15 != 1701409391)
  {
    if (a7)
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = VNPersonsModelIOStringForTag(v15);
      v30 = [v28 stringWithFormat:@"unknown model kind %@", v29];
      *a7 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, v30, 0);
    }

    v31 = 0;
    goto LABEL_25;
  }

  v16 = objc_opt_class();
  if (!v16)
  {
    goto LABEL_25;
  }

  if (a5)
  {
    *a5 = v16;
  }

  v49 = 0;
  if (!VNEntityIdentificationModelIOReadUInt32FromInputStream(v12, &v49, &c, a7))
  {
LABEL_25:
    v32 = 0;
    goto LABEL_26;
  }

  if (a6)
  {
    *a6 = v49;
  }

  v17 = [v13 acceptableVersions];
  v18 = v17;
  if (v17 && ([v17 containsIndex:v49] & 1) == 0)
  {
    if (a7)
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot accept model version %lu", v49];
      v35 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, v34, 0);

      v36 = v35;
      v32 = 0;
      *a7 = v35;
    }

    else
    {
      v32 = 0;
    }

    goto LABEL_55;
  }

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"readObjectForVersion%uTag:fromInputStream:intoObjectDictionary:md5Context:error:", v49];
  v20 = NSSelectorFromString(v19);
  ClassMethod = class_getClassMethod(v16, v20);
  if (!ClassMethod)
  {
    if (a7)
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot read model version %u", v49];
      VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, v46, 0);
      *a7 = v32 = 0;
    }

    else
    {
      v32 = 0;
    }

    goto LABEL_54;
  }

  v42 = v19;
  v43 = v18;
  Implementation = method_getImplementation(ClassMethod);
  v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = 0;
  while (1)
  {
    v23 = objc_autoreleasePoolPush();
    *md = 0;
    v48 = v22;
    v24 = VNEntityIdentificationModelIOReadUInt32FromInputStream(v12, md, &c, &v48);
    v25 = v48;

    if (!v24)
    {
      v22 = v25;
LABEL_34:
      objc_autoreleasePoolPop(v23);
LABEL_35:
      if (a7)
      {
        v37 = v22;
        v32 = 0;
        *a7 = v22;
      }

      else
      {
        v32 = 0;
      }

      v25 = v22;
LABEL_52:
      v19 = v42;
      goto LABEL_53;
    }

    if (*md == v50)
    {
      break;
    }

    if (v14 && v14[2](v14, *md) == 1)
    {
      v47 = v25;
      v26 = VNEntityIdentificationModelIOReadPastUnknownTagData(v12, &c, &v47);
      v22 = v47;

      objc_autoreleasePoolPop(v23);
      if ((v26 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v27 = (Implementation)(v16, v20);
      v22 = v25;

      if ((v27 & 1) == 0)
      {
        goto LABEL_34;
      }

      objc_autoreleasePoolPop(v23);
    }
  }

  objc_autoreleasePoolPop(v23);
  CC_MD5_Final(md, &c);
  v38 = v12;
  v39 = [v38 read:v52 maxLength:16];
  if (v39 != 16 && a7)
  {
    v40 = [v38 streamError];
    *a7 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(1, @"unexpected end of data stream", v40);

    goto LABEL_51;
  }

  if (v39 != 16)
  {
LABEL_51:
    v32 = 0;
    goto LABEL_52;
  }

  v41 = v52[0] == *md && v52[1] == v54;
  v19 = v42;
  if (v41)
  {
    v32 = v45;
  }

  else if (a7)
  {
    VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, @"model data fails checksum validation", 0);
    *a7 = v32 = 0;
  }

  else
  {
    v32 = 0;
  }

LABEL_53:

  v18 = v43;
LABEL_54:

LABEL_55:
LABEL_26:

  return v32;
}

+ (id)informationForModelWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x1E695DF48]) initWithData:v6];
  v14 = 0;
  v9 = [(VNEntityIdentificationModel *)a1 _modelInformationFromUnopenedStream:v8 error:&v14];
  v10 = v14;

  objc_autoreleasePoolPop(v7);
  if (v9)
  {
    v11 = v9;
  }

  else if (a4)
  {
    v12 = v10;
    *a4 = v10;
  }

  return v9;
}

+ (id)modelFromURL:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = [objc_alloc(MEMORY[0x1E695DF48]) initWithURL:v8];
  v17 = 0;
  v12 = [(VNEntityIdentificationModel *)a1 _modelFromUnopenedStream:v11 options:v9 error:&v17];
  v13 = v17;

  objc_autoreleasePoolPop(v10);
  if (v12)
  {
    v14 = v12;
  }

  else if (a5)
  {
    v15 = v13;
    *a5 = v13;
  }

  return v12;
}

+ (id)_modelFromUnopenedStream:(void *)a3 options:(void *)a4 error:
{
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  [v6 open];
  v9 = [(VNEntityIdentificationModel *)v8 _modelFromInputStream:v6 options:v7 error:a4];
  [v6 close];

  return v9;
}

+ (id)_modelFromInputStream:(void *)a3 options:(void *)a4 error:
{
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_self();
  v12 = 0;
  v13 = 0;
  v9 = [VNEntityIdentificationModel _readModelObjectsFromStream:v8 options:v7 actionBlock:v6 progressBlock:0 modelClass:&v13 version:&v12 error:a4];

  if (v9 && [v8 canCreateModelOfClass:v13 withObjects:v9 error:a4])
  {
    v10 = [v13 newModelForVersion:v12 modelObjects:v9 error:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)modelFromData:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = [objc_alloc(MEMORY[0x1E695DF48]) initWithData:v8];
  v17 = 0;
  v12 = [(VNEntityIdentificationModel *)a1 _modelFromUnopenedStream:v11 options:v9 error:&v17];
  v13 = v17;

  objc_autoreleasePoolPop(v10);
  if (v12)
  {
    v14 = v12;
  }

  else if (a5)
  {
    v15 = v13;
    *a5 = v13;
  }

  return v12;
}

+ (id)modelFromStream:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v16 = 0;
  v11 = [(VNEntityIdentificationModel *)a1 _modelFromInputStream:v8 options:v9 error:&v16];
  v12 = v16;
  objc_autoreleasePoolPop(v10);
  if (v11)
  {
    v13 = v11;
  }

  else if (a5)
  {
    v14 = v12;
    *a5 = v12;
  }

  return v11;
}

+ (id)supportedReadVersions
{
  v2 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:1];

  return v2;
}

+ (id)modelWithConfiguration:(id)a3 dataSource:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([a1 validateConfiguration:v8 error:a5])
  {
    v10 = [[a1 alloc] initWithConfiguration:v8 dataSource:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)supportedRequestSpecifiers
{
  v2 = VNEntityUniqueIdentifierSupportedRequestSpecifiers();
  v3 = [v2 allObjects];

  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_201];

  return v4;
}

uint64_t __57__VNEntityIdentificationModel_supportedRequestSpecifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 requestClassName];
  v7 = [v5 requestClassName];
  v8 = [v6 compare:v7];
  if (!v8)
  {
    v9 = [v4 requestRevision];
    v10 = [v5 requestRevision];
    if (v9 < v10)
    {
      v8 = -1;
    }

    else
    {
      v8 = v9 > v10;
    }
  }

  return v8;
}

+ (BOOL)validateAceptableObservation:(id)a3 forEntityPrintOriginatingRequestSpecifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v13 = 0;
  v9 = [v7 VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:v8 error:&v13];
  v10 = v13;
  if (a5 && !v9)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is generated by %@ instead of %@", v7, v8, v8];
    *a5 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(8, v11, v10);
  }

  return v9 != 0;
}

+ (id)newModelForVersion:(unint64_t)a3 modelObjects:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [VNError errorForUnimplementedMethod:a2 ofObject:a1];
  }

  return 0;
}

+ (BOOL)canCreateModelOfClass:(Class)a3 withObjects:(id)a4 error:(id *)a5
{
  v8 = [(objc_class *)a3 isSubclassOfClass:a1, a4];
  v9 = v8;
  if (a5 && (v8 & 1) == 0)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = NSStringFromClass(a1);
    v12 = NSStringFromClass(a3);
    v13 = [v10 stringWithFormat:@"%@ cannot be created from a %@", v11, v12];

    *a5 = VNEntityIdentificationModelErrorForReadOnlyModelWithLocalizedDescription(v13);
  }

  return v9;
}

+ (BOOL)validateConfiguration:(id)a3 error:(id *)a4
{
  v5 = [a3 entityPrintOriginatingRequestSpecifier];

  if (a4 && !v5)
  {
    *a4 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(2, @"an entity print originating request specifier must be configured", 0);
  }

  return v5 != 0;
}

+ (id)modelConfigurationForVersion:(unint64_t)a3 modelObjects:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:&unk_1F19C1B40];
  if (v7)
  {
    v8 = [[VNEntityIdentificationModelConfiguration alloc] initWithEntityPrintOriginatingRequestSpecifier:v7];
    v9 = objc_opt_class();
    if (VNEntityIdentificationModelApplyTagValue(v6, 1835104325, v9, v8, @"maximumEntities", a5) && (v10 = objc_opt_class(), VNEntityIdentificationModelApplyTagValue(v6, 1833971525, v10, v8, @"maximumTrainingPrintsPerEntity", a5)))
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }
  }

  else if (a5)
  {
    VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, @"no entity print originating request specifier is defined", 0);
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)readObjectForVersion1Tag:(unsigned int)a3 fromInputStream:(id)a4 intoObjectDictionary:(id)a5 md5Context:(CC_MD5state_st *)a6 error:(id *)a7
{
  v10 = *&a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v10 <= 1701995888)
  {
    if (v10 > 1447645234)
    {
      if (v10 == 1447645235)
      {
        v14 = objc_opt_class();
        v15 = v11;
        v16 = 1447645235;
        goto LABEL_27;
      }

      if (v10 == 1634494319)
      {
        v14 = objc_opt_class();
        v15 = v11;
        v16 = 1634494319;
        goto LABEL_27;
      }

LABEL_32:
      TaggedObjectOfClass = VNEntityIdentificationModelIOReadPastUnknownTagData(v11, a6, a7);
      goto LABEL_28;
    }

    if (v10 != 1160466208)
    {
      if (v10 != 1378832160)
      {
        goto LABEL_32;
      }

      LODWORD(v52[0]) = 0;
      if (VNEntityIdentificationModelIOReadBufferOfExpectedLengthFromInputStream(v11, 4, v52, a6, a7))
      {
        if (LODWORD(v52[0]) == 1497715488)
        {
          v17 = 1;
          goto LABEL_51;
        }

        if (LODWORD(v52[0]) == 1313808416)
        {
          v17 = 0;
LABEL_51:
          v44 = [MEMORY[0x1E696AD98] numberWithBool:v17];
          v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1378832160];
          [v13 setObject:v44 forKeyedSubscript:v45];

          LOBYTE(v18) = 1;
          goto LABEL_70;
        }

        if (a7)
        {
          v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"corrupted BOOLean value: %02X", LODWORD(v52[0])];
          *a7 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, v46, 0);
        }
      }

      LOBYTE(v18) = 0;
      goto LABEL_70;
    }

    v21 = v12;
    v22 = v11;
    LODWORD(v52[0]) = 0;
    if (!VNEntityIdentificationModelIOReadUInt32FromInputStream(v22, v52, a6, a7))
    {

      v26 = 0;
      goto LABEL_47;
    }

    v23 = objc_alloc(MEMORY[0x1E695DF88]);
    v24 = [v23 initWithLength:LODWORD(v52[0])];
    v25 = [v24 mutableBytes];
    if (v25)
    {
      if (VNEntityIdentificationModelIOReadBufferFromInputStream(v22, v52[0], v25, a6, a7))
      {
        v26 = v24;
        goto LABEL_38;
      }
    }

    else if (a7)
    {
      +[VNError errorForMemoryAllocationFailure];
      *a7 = v26 = 0;
      goto LABEL_38;
    }

    v26 = 0;
LABEL_38:

    if (v26)
    {
      v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1160466208];
      v31 = [v21 objectForKeyedSubscript:v30];

      if (!v31)
      {
        v31 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1160466208];
        [v21 setObject:v31 forKeyedSubscript:v32];
      }

      v33 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v26 error:a7];
      v34 = v33;
      if (!v33)
      {
        LOBYTE(v18) = 0;
LABEL_68:

        goto LABEL_69;
      }

      v35 = [v33 vn_decodeEntityUniqueIdentifierForKey:@"E"];
      v36 = v35;
      if (!v35)
      {
        if (!a7)
        {
          LOBYTE(v18) = 0;
          goto LABEL_67;
        }

        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to decode entity unique identifier for tag %@", VisionCoreFourCharCodeToString()];
        v40 = [v34 error];
        v51 = v18;
        VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, v18, v40);
        *a7 = LOBYTE(v18) = 0;
LABEL_66:

LABEL_67:
        goto LABEL_68;
      }

      v50 = v35;
      v37 = MEMORY[0x1E695DFD8];
      v38 = objc_opt_class();
      v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
      v40 = [v34 decodeObjectOfClasses:v39 forKey:@"O"];
      v51 = v39;
      if (v40)
      {
        [v34 finishDecoding];
        v41 = [v34 error];
        if (!v41)
        {
          v48 = [v31 objectForKey:v50];
          if (!v48)
          {
            v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v31 setObject:v48 forKey:v50];
          }

          [v48 addObjectsFromArray:v40];

          v42 = 0;
          LOBYTE(v18) = 1;
          goto LABEL_64;
        }

        v42 = v41;
        if (a7)
        {
          v43 = v41;
          LOBYTE(v18) = 0;
          *a7 = v42;
LABEL_64:

LABEL_65:
          v36 = v50;
          goto LABEL_66;
        }
      }

      else
      {
        if (!a7)
        {
          v40 = 0;
          LOBYTE(v18) = 0;
          goto LABEL_65;
        }

        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to decode observations for tag %@", VisionCoreFourCharCodeToString()];
        v47 = [v34 error];
        *a7 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, v42, v47);
      }

      LOBYTE(v18) = 0;
      goto LABEL_64;
    }

LABEL_47:
    LOBYTE(v18) = 0;
LABEL_69:

    goto LABEL_70;
  }

  if (v10 <= 1833971524)
  {
    if (v10 != 1701995889)
    {
      if (v10 == 1819111268)
      {
        v14 = objc_opt_class();
        v15 = v11;
        v16 = 1819111268;
        goto LABEL_27;
      }

      goto LABEL_32;
    }

    v28 = v11;
    memset(v52, 0, 12);
    if (VNEntityIdentificationModelIOReadBufferOfExpectedLengthFromInputStream(v28, 12, v52, a6, a7))
    {
      v19 = [VNRequestSpecifier specifierForRequestClassCode:LODWORD(v52[0]) revision:*(v52 + 4) error:a7];

      if (v19)
      {
        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1701995889];
        [v13 setObject:v19 forKeyedSubscript:v29];

        LOBYTE(v18) = 1;
      }

      else
      {
        LOBYTE(v18) = 0;
      }
    }

    else
    {

      LOBYTE(v18) = 0;
      v19 = 0;
    }

LABEL_49:

    goto LABEL_70;
  }

  if (v10 != 1833971525 && v10 != 1835104325)
  {
    if (v10 == 1953326188)
    {
      v14 = objc_opt_class();
      v15 = v11;
      v16 = 1953326188;
LABEL_27:
      TaggedObjectOfClass = _readTaggedObjectOfClass(v15, v16, v14, v13, a6, a7);
LABEL_28:
      LOBYTE(v18) = TaggedObjectOfClass;
      goto LABEL_70;
    }

    goto LABEL_32;
  }

  LODWORD(v52[0]) = 0;
  LODWORD(v18) = VNEntityIdentificationModelIOReadBufferOfExpectedLengthFromInputStream(v11, 4, v52, a6, a7);
  if (v18)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:LODWORD(v52[0])];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
    [v13 setObject:v19 forKeyedSubscript:v20];

    goto LABEL_49;
  }

LABEL_70:

  return v18;
}

@end
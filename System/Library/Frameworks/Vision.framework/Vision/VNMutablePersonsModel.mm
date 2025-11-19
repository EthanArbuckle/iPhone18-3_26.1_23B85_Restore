@interface VNMutablePersonsModel
+ (id)_version1ModelWithObjects:(id)a3 error:(id *)a4;
+ (id)newModelFromVersion:(unint64_t)a3 objects:(id)a4 error:(id *)a5;
+ (id)supportedWriteVersions;
- (BOOL)_getModelWritingImplementation:(void *)a3 selector:(SEL *)a4 version:(unint64_t *)a5 forOptions:(id)a6;
- (BOOL)writeReadOnlyVersion1ToOutputStream:(id)a3 options:(id)a4 md5Context:(CC_MD5state_st *)a5 error:(id *)a6;
- (BOOL)writeToStream:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)writeToURL:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)writeVersion1ToOutputStream:(id)a3 options:(id)a4 md5Context:(CC_MD5state_st *)a5 error:(id *)a6;
- (NSString)description;
- (VNMutablePersonsModel)initWithConfiguration:(id)a3;
- (id)dataWithOptions:(id)a3 error:(id *)a4;
- (id)upToDateFaceModelWithCanceller:(id)a3 error:(id *)a4;
- (uint64_t)_writeToUnopenedStream:(void *)a3 options:(uint64_t)a4 error:;
- (void)_writeVersion1ConfigurationToOutputStream:(CC_MD5_CTX *)a3 md5Context:(void *)a4 error:;
- (void)_writeVersion1InformationToOutputStream:(CC_MD5_CTX *)a3 md5Context:(void *)a4 error:;
- (void)personsModelDataWasModified:(id)a3;
@end

@implementation VNMutablePersonsModel

- (void)personsModelDataWasModified:(id)a3
{
  v5 = a3;
  -[VNPersonsModel updateInternalConfigurationWithModelFaceprintRequestRevision:error:](self, "updateInternalConfigurationWithModelFaceprintRequestRevision:error:", [v5 faceprintRequestRevision], 0);
  if (self)
  {
    faceModel_DO_NOT_ACCESS_DIRECTLY = self->super._faceModel_DO_NOT_ACCESS_DIRECTLY;
    self->super._faceModel_DO_NOT_ACCESS_DIRECTLY = 0;
  }
}

- (BOOL)writeToURL:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x1E695DFC0]) initWithURL:v8 append:0];
  LOBYTE(a5) = [(VNMutablePersonsModel *)self _writeToUnopenedStream:v10 options:v9 error:a5];

  return a5;
}

- (uint64_t)_writeToUnopenedStream:(void *)a3 options:(uint64_t)a4 error:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    [v7 open];
    LOBYTE(a1) = [a1 writeToStream:v7 options:v8 error:a4];
    [v7 close];
  }

  return a1 & 1;
}

- (id)dataWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DFC0]) initToMemory];
  if (([(VNMutablePersonsModel *)self _writeToUnopenedStream:v7 options:v6 error:a4]& 1) != 0)
  {
    v8 = [v7 propertyForKey:*MEMORY[0x1E695DA30]];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else if (a4)
    {
      *a4 = [VNError errorForInternalErrorWithLocalizedDescription:@"failed to obtain the data"];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)writeToStream:(id)a3 options:(id)a4 error:(id *)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  if (![(VNMutablePersonsModel *)self _getModelWritingImplementation:&v18 selector:&v17 version:&v16 forOptions:v9])
  {
    if (a5)
    {
      VNPersonsModelErrorForUnacceptableModelVersion(v16);
      *a5 = v12 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  CC_MD5_Init(&c);
  if ((v18(self, v17, v8, v9, &c, a5) & 1) == 0)
  {
    goto LABEL_9;
  }

  CC_MD5_Final(md, &c);
  v10 = v8;
  v11 = [v10 write:md maxLength:16];
  v12 = v11 == 16;
  if (v11 != 16 && a5)
  {
    v13 = [v10 streamError];
    *a5 = VNPersonsModelErrorWithLocalizedDescriptionAndUnderlyingError(1, @"failed to write to data stream", v13);
  }

LABEL_10:
  return v12;
}

- (BOOL)_getModelWritingImplementation:(void *)a3 selector:(SEL *)a4 version:(unint64_t *)a5 forOptions:(id)a6
{
  v10 = a6;
  v11 = [v10 version];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v11];
  }

  else
  {
    v12 = [objc_opt_class() supportedWriteVersions];
  }

  v13 = v12;
  v14 = [v10 readOnly];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__VNMutablePersonsModel__getModelWritingImplementation_selector_version_forOptions___block_invoke;
  v18[3] = &unk_1E77B5FC8;
  v18[6] = a3;
  v18[7] = a4;
  v19 = v14;
  v18[4] = self;
  v18[5] = &v20;
  [v13 enumerateIndexesWithOptions:2 usingBlock:v18];
  v15 = v21[3];
  if (v15)
  {
    *a5 = v15;
  }

  v16 = v15 != 0;
  _Block_object_dispose(&v20, 8);

  return v16;
}

void __84__VNMutablePersonsModel__getModelWritingImplementation_selector_version_forOptions___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a1 + 32))
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    *v6 = 0;
    *v7 = 0;
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = @"writeVersion";
    if (v8)
    {
      v10 = @"writeReadOnlyVersion";
    }

    v15 = [v9 initWithFormat:@"%@%lu%@", v10, a2, @"ToOutputStream:options:md5Context:error:"];
    v11 = NSSelectorFromString(v15);
    *v7 = v11;
    if ((objc_opt_respondsToSelector() & 1) != 0 && (v12 = objc_opt_class(), (InstanceMethod = class_getInstanceMethod(v12, v11)) != 0) && (Implementation = method_getImplementation(InstanceMethod)) != 0)
    {
      *v6 = Implementation;

      *(*(*(a1 + 40) + 8) + 24) = a2;
      *a3 = 1;
    }

    else
    {
    }
  }
}

- (BOOL)writeReadOnlyVersion1ToOutputStream:(id)a3 options:(id)a4 md5Context:(CC_MD5state_st *)a5 error:(id *)a6
{
  v9 = a3;
  if (self)
  {
    v10 = [(VNMutablePersonsModel *)self upToDateFaceModelWithCanceller:0 error:a6];
    v11 = v10 && (v13 = 0, ([objc_opt_class() getStoredRepresentationTag:&v13 forModelVersion:1 error:a6] & 1) != 0) && VNPersonsModelIOWriteTagToOutputStream(1886220911, v9, a5, a6) && VNPersonsModelIOWriteTagToOutputStream(1, v9, a5, a6) && -[VNMutablePersonsModel _writeVersion1InformationToOutputStream:md5Context:error:](self, v9, a5, a6) && -[VNMutablePersonsModel _writeVersion1ConfigurationToOutputStream:md5Context:error:](self, v9, a5, a6) && VNPersonsModelIOWriteTaggedObjectToOutputStream(v13, v10, v9, a5, a6) && VNPersonsModelIOWriteTagToOutputStream(1886220911, v9, a5, a6);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_writeVersion1InformationToOutputStream:(CC_MD5_CTX *)a3 md5Context:(void *)a4 error:
{
  v7 = a2;
  if (a1)
  {
    v8 = [*(a1 + 40) lastModificationDate];
    v9 = VNPersonsModelIOWriteTaggedObjectToOutputStream(1819111268, v8, v7, a3, a4);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_writeVersion1ConfigurationToOutputStream:(CC_MD5_CTX *)a3 md5Context:(void *)a4 error:
{
  v7 = a2;
  if (a1)
  {
    v8 = [a1 configuration];
    v12 = [v8 maximumIdentities];
    if ((VNPersonsModelIOWriteTaggedBufferToOutputStream(1835104329, &v12, 4u, v7, a3, a4) & 1) != 0 && (v13 = [v8 maximumTrainingFaceprintsPerIdentity], VNPersonsModelIOWriteTaggedBufferToOutputStream(1833250633, &v13, 4u, v7, a3, a4)))
    {
      v9 = [v8 resolvedAlgorithmAndReturnError:a4];
      if (v9)
      {
        v10 = VNPersonsModelIOWriteTaggedObjectToOutputStream(1634494319, v9, v7, a3, a4);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)writeVersion1ToOutputStream:(id)a3 options:(id)a4 md5Context:(CC_MD5state_st *)a5 error:(id *)a6
{
  v9 = a3;
  v47 = a5;
  if (VNPersonsModelIOWriteTagToOutputStream(1886217324, v9, a5, a6) && VNPersonsModelIOWriteTagToOutputStream(1, v9, a5, a6) && [(VNMutablePersonsModel *)self _writeVersion1ConfigurationToOutputStream:v9 md5Context:a5 error:a6]&& [(VNMutablePersonsModel *)self _writeVersion1InformationToOutputStream:v9 md5Context:a5 error:a6])
  {
    v10 = [(VNPersonsModelData *)self->_modelData faceModelPersonsCount];
    v37 = a6;
    if (v10)
    {
      v11 = 0;
      v12 = 0;
      v39 = self;
      v38 = v10;
      v40 = v9;
      while (1)
      {
        v13 = objc_autoreleasePoolPush();
        v43 = v12;
        v14 = [(VNPersonsModelData *)self->_modelData faceModelNumberOfFaceObservationsForPersonAtIndex:v11];
        v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
        if (v14)
        {
          for (i = 0; i != v14; ++i)
          {
            v17 = [(VNPersonsModelData *)self->_modelData faceModelFaceObservationAtIndex:i forPersonAtIndex:v11, v37];
            [v15 addObject:v17];
          }
        }

        context = v13;
        v18 = [(VNPersonsModelData *)self->_modelData faceModelUniqueIdentifierOfPersonAtIndex:v11, v37];
        v48 = v12;
        v19 = v18;
        v20 = v15;
        v46 = v9;
        v21 = objc_autoreleasePoolPush();
        v65[0] = 0;
        v42 = v19;
        v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v19 requiringSecureCoding:1 error:v65];
        v45 = v65[0];
        objc_autoreleasePoolPop(v21);
        if (v22)
        {
          v44 = v22;
          v23 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:0x4000];
          v64 = [v44 length];
          [v23 appendBytes:&v64 length:4];
          [v23 appendData:v44];
          v24 = [v23 length];
          v25 = [v20 count];
          if (v25)
          {
            v26 = 0;
            v27 = 20;
            while (1)
            {
              [v23 setLength:v24];
              if (v27 + v26 > v25)
              {
                v27 = v25 - v26;
              }

              v63 = v27;
              [v23 appendBytes:&v63 length:4];
              v28 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{v26, v27}];
              v57 = 0;
              v58 = &v57;
              v59 = 0x3032000000;
              v60 = __Block_byref_object_copy__5466;
              v61 = __Block_byref_object_dispose__5467;
              v62 = 0;
              v53 = 0;
              v54 = &v53;
              v55 = 0x2020000000;
              v56 = 1;
              v49[0] = MEMORY[0x1E69E9820];
              v49[1] = 3221225472;
              v49[2] = ___ZL39_writeVersion1PersonAndFaceObservationsPU44objcproto9NSCopying8NSObject14NSSecureCoding11objc_objectP7NSArrayIP17VNFaceObservationEP14NSOutputStreamP14CC_MD5state_stPU15__autoreleasingP7NSError_block_invoke;
              v49[3] = &unk_1E77B2C88;
              v51 = &v57;
              v52 = &v53;
              v29 = v23;
              v50 = v29;
              [v20 enumerateObjectsAtIndexes:v28 options:0 usingBlock:v49];
              if ((v54[3] & 1) == 0)
              {
                break;
              }

              v30 = VNPersonsModelIOWriteTaggedDataToOutputStream(1227572778, v29, v46, v47, &v48);

              _Block_object_dispose(&v53, 8);
              _Block_object_dispose(&v57, 8);

              v26 += v27;
              if (v26 < v25)
              {
                v31 = v30;
              }

              else
              {
                v31 = 0;
              }

              if ((v31 & 1) == 0)
              {
                goto LABEL_24;
              }
            }

            v48 = v58[5];

            _Block_object_dispose(&v53, 8);
            _Block_object_dispose(&v57, 8);

            v30 = 0;
          }

          else
          {
            v30 = 1;
          }

LABEL_24:

          v22 = v44;
          v32 = v45;
        }

        else
        {
          v32 = v45;
          v30 = 0;
          v48 = v32;
        }

        v33 = v48;
        objc_autoreleasePoolPop(context);
        if ((v30 & 1) == 0)
        {
          break;
        }

        ++v11;
        v12 = v33;
        self = v39;
        v9 = v40;
        if (v11 == v38)
        {
          goto LABEL_31;
        }
      }

      if (v37)
      {
        v36 = v33;
        v34 = 0;
        *v37 = v33;
      }

      else
      {
        v34 = 0;
      }

      v9 = v40;
    }

    else
    {
      v33 = 0;
LABEL_31:
      v34 = VNPersonsModelIOWriteTagToOutputStream(1886217324, v9, v47, v37);
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)upToDateFaceModelWithCanceller:(id)a3 error:(id *)a4
{
  v6 = a3;
  faceModel_DO_NOT_ACCESS_DIRECTLY = self->super._faceModel_DO_NOT_ACCESS_DIRECTLY;
  if (!faceModel_DO_NOT_ACCESS_DIRECTLY)
  {
    v8 = [(VNPersonsModel *)self configuration];
    v9 = [VNPersonsModelFaceModelDataSummarization summarizationOfDataFromProvider:self->_modelData];
    v10 = [v9 description];
    v11 = [v10 UTF8String];
    v12 = [v8 description];
    [v12 UTF8String];
    VNValidatedLog(1, @"Vision building %s with configuration %s", v13, v14, v15, v16, v17, v18, v11);

    v19 = [VNPersonsModelFaceModel modelBuiltFromConfiguration:v8 dataProvider:self->_modelData canceller:v6 error:a4];
    v20 = self->super._faceModel_DO_NOT_ACCESS_DIRECTLY;
    self->super._faceModel_DO_NOT_ACCESS_DIRECTLY = v19;

    faceModel_DO_NOT_ACCESS_DIRECTLY = self->super._faceModel_DO_NOT_ACCESS_DIRECTLY;
  }

  v21 = faceModel_DO_NOT_ACCESS_DIRECTLY;

  return faceModel_DO_NOT_ACCESS_DIRECTLY;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = VNMutablePersonsModel;
  v3 = [(VNPersonsModel *)&v10 description];
  v4 = MEMORY[0x1E696AB78];
  if (self)
  {
    v5 = [(VNPersonsModelData *)self->_modelData lastModificationDate];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 localizedStringFromDate:v5 dateStyle:1 timeStyle:1];

  v7 = [v3 stringByAppendingFormat:@" modified on %@", v6];

  if (!self->super._faceModel_DO_NOT_ACCESS_DIRECTLY)
  {
    v8 = [v7 stringByAppendingString:@" <dirty>"];

    v7 = v8;
  }

  return v7;
}

- (VNMutablePersonsModel)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[VNPersonsModelData alloc] initWithConfiguration:v4];
  v9.receiver = self;
  v9.super_class = VNMutablePersonsModel;
  v6 = [(VNPersonsModel *)&v9 initWithConfiguration:v4 dataSource:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modelData, v5);
    [(VNPersonsModelData *)v5 setDelegate:v7];
  }

  return v7;
}

+ (id)newModelFromVersion:(unint64_t)a3 objects:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (a3 == 1)
  {
    v9 = [a1 _version1ModelWithObjects:v8 error:a5];
  }

  else
  {
    v12.receiver = a1;
    v12.super_class = &OBJC_METACLASS___VNMutablePersonsModel;
    v9 = objc_msgSendSuper2(&v12, sel_newModelFromVersion_objects_error_, a3, v8, a5);
  }

  v10 = v9;

  return v10;
}

+ (id)supportedWriteVersions
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__VNMutablePersonsModel_supportedWriteVersions__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNMutablePersonsModel supportedWriteVersions]::onceToken != -1)
  {
    dispatch_once(&+[VNMutablePersonsModel supportedWriteVersions]::onceToken, block);
  }

  v2 = +[VNMutablePersonsModel supportedWriteVersions]::ourSupportedWriteVersions;

  return v2;
}

void __47__VNMutablePersonsModel_supportedWriteVersions__block_invoke(uint64_t a1)
{
  v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v2 = [*(a1 + 32) versionNumbersEncodedInClass:objc_opt_class() withMethodNamePrefix:@"writeVersion" suffix:@"ToOutputStream:options:md5Context:error:"];
  [v6 addIndexes:v2];

  v3 = [*(a1 + 32) versionNumbersEncodedInClass:objc_opt_class() withMethodNamePrefix:@"writeVersion" suffix:@"ToOutputStream:options:md5Context:error:"];
  [v6 addIndexes:v3];

  v4 = [v6 copy];
  v5 = +[VNMutablePersonsModel supportedWriteVersions]::ourSupportedWriteVersions;
  +[VNMutablePersonsModel supportedWriteVersions]::ourSupportedWriteVersions = v4;
}

+ (id)_version1ModelWithObjects:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18 = v6;
  v7 = [a1 configurationFromLoadedObjects:v6 error:a4];
  if (v7)
  {
    v8 = [[a1 alloc] initWithConfiguration:v7];
    if (v8)
    {
      v9 = [v6 objectForKeyedSubscript:&unk_1F19C1198];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = [v9 keyEnumerator];
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = *v20;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            v15 = [v9 objectForKey:v14];
            LODWORD(v14) = [v8 addFaceObservations:v15 toPersonWithUniqueIdentifier:v14 error:a4];

            if (!v14)
            {

              v16 = 0;
              goto LABEL_14;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v16 = v8;
LABEL_14:
    }

    else if (a4)
    {
      +[VNError errorForMemoryAllocationFailure];
      *a4 = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end
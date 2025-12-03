@interface VNMutablePersonsModel
+ (id)_version1ModelWithObjects:(id)objects error:(id *)error;
+ (id)newModelFromVersion:(unint64_t)version objects:(id)objects error:(id *)error;
+ (id)supportedWriteVersions;
- (BOOL)_getModelWritingImplementation:(void *)implementation selector:(SEL *)selector version:(unint64_t *)version forOptions:(id)options;
- (BOOL)writeReadOnlyVersion1ToOutputStream:(id)stream options:(id)options md5Context:(CC_MD5state_st *)context error:(id *)error;
- (BOOL)writeToStream:(id)stream options:(id)options error:(id *)error;
- (BOOL)writeToURL:(id)l options:(id)options error:(id *)error;
- (BOOL)writeVersion1ToOutputStream:(id)stream options:(id)options md5Context:(CC_MD5state_st *)context error:(id *)error;
- (NSString)description;
- (VNMutablePersonsModel)initWithConfiguration:(id)configuration;
- (id)dataWithOptions:(id)options error:(id *)error;
- (id)upToDateFaceModelWithCanceller:(id)canceller error:(id *)error;
- (uint64_t)_writeToUnopenedStream:(void *)stream options:(uint64_t)options error:;
- (void)_writeVersion1ConfigurationToOutputStream:(CC_MD5_CTX *)stream md5Context:(void *)context error:;
- (void)_writeVersion1InformationToOutputStream:(CC_MD5_CTX *)stream md5Context:(void *)context error:;
- (void)personsModelDataWasModified:(id)modified;
@end

@implementation VNMutablePersonsModel

- (void)personsModelDataWasModified:(id)modified
{
  modifiedCopy = modified;
  -[VNPersonsModel updateInternalConfigurationWithModelFaceprintRequestRevision:error:](self, "updateInternalConfigurationWithModelFaceprintRequestRevision:error:", [modifiedCopy faceprintRequestRevision], 0);
  if (self)
  {
    faceModel_DO_NOT_ACCESS_DIRECTLY = self->super._faceModel_DO_NOT_ACCESS_DIRECTLY;
    self->super._faceModel_DO_NOT_ACCESS_DIRECTLY = 0;
  }
}

- (BOOL)writeToURL:(id)l options:(id)options error:(id *)error
{
  lCopy = l;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x1E695DFC0]) initWithURL:lCopy append:0];
  LOBYTE(error) = [(VNMutablePersonsModel *)self _writeToUnopenedStream:v10 options:optionsCopy error:error];

  return error;
}

- (uint64_t)_writeToUnopenedStream:(void *)stream options:(uint64_t)options error:
{
  v7 = a2;
  streamCopy = stream;
  if (self)
  {
    [v7 open];
    LOBYTE(self) = [self writeToStream:v7 options:streamCopy error:options];
    [v7 close];
  }

  return self & 1;
}

- (id)dataWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  initToMemory = [objc_alloc(MEMORY[0x1E695DFC0]) initToMemory];
  if (([(VNMutablePersonsModel *)self _writeToUnopenedStream:initToMemory options:optionsCopy error:error]& 1) != 0)
  {
    v8 = [initToMemory propertyForKey:*MEMORY[0x1E695DA30]];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else if (error)
    {
      *error = [VNError errorForInternalErrorWithLocalizedDescription:@"failed to obtain the data"];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)writeToStream:(id)stream options:(id)options error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  optionsCopy = options;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  if (![(VNMutablePersonsModel *)self _getModelWritingImplementation:&v18 selector:&v17 version:&v16 forOptions:optionsCopy])
  {
    if (error)
    {
      VNPersonsModelErrorForUnacceptableModelVersion(v16);
      *error = v12 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  CC_MD5_Init(&c);
  if ((v18(self, v17, streamCopy, optionsCopy, &c, error) & 1) == 0)
  {
    goto LABEL_9;
  }

  CC_MD5_Final(md, &c);
  v10 = streamCopy;
  v11 = [v10 write:md maxLength:16];
  v12 = v11 == 16;
  if (v11 != 16 && error)
  {
    streamError = [v10 streamError];
    *error = VNPersonsModelErrorWithLocalizedDescriptionAndUnderlyingError(1, @"failed to write to data stream", streamError);
  }

LABEL_10:
  return v12;
}

- (BOOL)_getModelWritingImplementation:(void *)implementation selector:(SEL *)selector version:(unint64_t *)version forOptions:(id)options
{
  optionsCopy = options;
  version = [optionsCopy version];
  if (version)
  {
    supportedWriteVersions = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:version];
  }

  else
  {
    supportedWriteVersions = [objc_opt_class() supportedWriteVersions];
  }

  v13 = supportedWriteVersions;
  readOnly = [optionsCopy readOnly];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__VNMutablePersonsModel__getModelWritingImplementation_selector_version_forOptions___block_invoke;
  v18[3] = &unk_1E77B5FC8;
  v18[6] = implementation;
  v18[7] = selector;
  v19 = readOnly;
  v18[4] = self;
  v18[5] = &v20;
  [v13 enumerateIndexesWithOptions:2 usingBlock:v18];
  v15 = v21[3];
  if (v15)
  {
    *version = v15;
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

- (BOOL)writeReadOnlyVersion1ToOutputStream:(id)stream options:(id)options md5Context:(CC_MD5state_st *)context error:(id *)error
{
  streamCopy = stream;
  if (self)
  {
    v10 = [(VNMutablePersonsModel *)self upToDateFaceModelWithCanceller:0 error:error];
    v11 = v10 && (v13 = 0, ([objc_opt_class() getStoredRepresentationTag:&v13 forModelVersion:1 error:error] & 1) != 0) && VNPersonsModelIOWriteTagToOutputStream(1886220911, streamCopy, context, error) && VNPersonsModelIOWriteTagToOutputStream(1, streamCopy, context, error) && -[VNMutablePersonsModel _writeVersion1InformationToOutputStream:md5Context:error:](self, streamCopy, context, error) && -[VNMutablePersonsModel _writeVersion1ConfigurationToOutputStream:md5Context:error:](self, streamCopy, context, error) && VNPersonsModelIOWriteTaggedObjectToOutputStream(v13, v10, streamCopy, context, error) && VNPersonsModelIOWriteTagToOutputStream(1886220911, streamCopy, context, error);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_writeVersion1InformationToOutputStream:(CC_MD5_CTX *)stream md5Context:(void *)context error:
{
  v7 = a2;
  if (self)
  {
    lastModificationDate = [*(self + 40) lastModificationDate];
    v9 = VNPersonsModelIOWriteTaggedObjectToOutputStream(1819111268, lastModificationDate, v7, stream, context);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_writeVersion1ConfigurationToOutputStream:(CC_MD5_CTX *)stream md5Context:(void *)context error:
{
  v7 = a2;
  if (self)
  {
    configuration = [self configuration];
    maximumIdentities = [configuration maximumIdentities];
    if ((VNPersonsModelIOWriteTaggedBufferToOutputStream(1835104329, &maximumIdentities, 4u, v7, stream, context) & 1) != 0 && (v13 = [configuration maximumTrainingFaceprintsPerIdentity], VNPersonsModelIOWriteTaggedBufferToOutputStream(1833250633, &v13, 4u, v7, stream, context)))
    {
      v9 = [configuration resolvedAlgorithmAndReturnError:context];
      if (v9)
      {
        v10 = VNPersonsModelIOWriteTaggedObjectToOutputStream(1634494319, v9, v7, stream, context);
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

- (BOOL)writeVersion1ToOutputStream:(id)stream options:(id)options md5Context:(CC_MD5state_st *)context error:(id *)error
{
  streamCopy = stream;
  contextCopy = context;
  if (VNPersonsModelIOWriteTagToOutputStream(1886217324, streamCopy, context, error) && VNPersonsModelIOWriteTagToOutputStream(1, streamCopy, context, error) && [(VNMutablePersonsModel *)self _writeVersion1ConfigurationToOutputStream:streamCopy md5Context:context error:error]&& [(VNMutablePersonsModel *)self _writeVersion1InformationToOutputStream:streamCopy md5Context:context error:error])
  {
    faceModelPersonsCount = [(VNPersonsModelData *)self->_modelData faceModelPersonsCount];
    errorCopy = error;
    if (faceModelPersonsCount)
    {
      v11 = 0;
      v12 = 0;
      selfCopy = self;
      v38 = faceModelPersonsCount;
      v40 = streamCopy;
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
            errorCopy = [(VNPersonsModelData *)self->_modelData faceModelFaceObservationAtIndex:i forPersonAtIndex:v11, errorCopy];
            [v15 addObject:errorCopy];
          }
        }

        context = v13;
        errorCopy2 = [(VNPersonsModelData *)self->_modelData faceModelUniqueIdentifierOfPersonAtIndex:v11, errorCopy];
        v48 = v12;
        v19 = errorCopy2;
        v20 = v15;
        v46 = streamCopy;
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

              v30 = VNPersonsModelIOWriteTaggedDataToOutputStream(1227572778, v29, v46, contextCopy, &v48);

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
        self = selfCopy;
        streamCopy = v40;
        if (v11 == v38)
        {
          goto LABEL_31;
        }
      }

      if (errorCopy)
      {
        v36 = v33;
        v34 = 0;
        *errorCopy = v33;
      }

      else
      {
        v34 = 0;
      }

      streamCopy = v40;
    }

    else
    {
      v33 = 0;
LABEL_31:
      v34 = VNPersonsModelIOWriteTagToOutputStream(1886217324, streamCopy, contextCopy, errorCopy);
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)upToDateFaceModelWithCanceller:(id)canceller error:(id *)error
{
  cancellerCopy = canceller;
  faceModel_DO_NOT_ACCESS_DIRECTLY = self->super._faceModel_DO_NOT_ACCESS_DIRECTLY;
  if (!faceModel_DO_NOT_ACCESS_DIRECTLY)
  {
    configuration = [(VNPersonsModel *)self configuration];
    v9 = [VNPersonsModelFaceModelDataSummarization summarizationOfDataFromProvider:self->_modelData];
    v10 = [v9 description];
    uTF8String = [v10 UTF8String];
    v12 = [configuration description];
    [v12 UTF8String];
    VNValidatedLog(1, @"Vision building %s with configuration %s", v13, v14, v15, v16, v17, v18, uTF8String);

    v19 = [VNPersonsModelFaceModel modelBuiltFromConfiguration:configuration dataProvider:self->_modelData canceller:cancellerCopy error:error];
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
    lastModificationDate = [(VNPersonsModelData *)self->_modelData lastModificationDate];
  }

  else
  {
    lastModificationDate = 0;
  }

  v6 = [v4 localizedStringFromDate:lastModificationDate dateStyle:1 timeStyle:1];

  v7 = [v3 stringByAppendingFormat:@" modified on %@", v6];

  if (!self->super._faceModel_DO_NOT_ACCESS_DIRECTLY)
  {
    v8 = [v7 stringByAppendingString:@" <dirty>"];

    v7 = v8;
  }

  return v7;
}

- (VNMutablePersonsModel)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [[VNPersonsModelData alloc] initWithConfiguration:configurationCopy];
  v9.receiver = self;
  v9.super_class = VNMutablePersonsModel;
  v6 = [(VNPersonsModel *)&v9 initWithConfiguration:configurationCopy dataSource:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modelData, v5);
    [(VNPersonsModelData *)v5 setDelegate:v7];
  }

  return v7;
}

+ (id)newModelFromVersion:(unint64_t)version objects:(id)objects error:(id *)error
{
  objectsCopy = objects;
  if (version == 1)
  {
    v9 = [self _version1ModelWithObjects:objectsCopy error:error];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = &OBJC_METACLASS___VNMutablePersonsModel;
    v9 = objc_msgSendSuper2(&v12, sel_newModelFromVersion_objects_error_, version, objectsCopy, error);
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
  block[4] = self;
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

+ (id)_version1ModelWithObjects:(id)objects error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v18 = objectsCopy;
  v7 = [self configurationFromLoadedObjects:objectsCopy error:error];
  if (v7)
  {
    v8 = [[self alloc] initWithConfiguration:v7];
    if (v8)
    {
      v9 = [objectsCopy objectForKeyedSubscript:&unk_1F19C1198];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      keyEnumerator = [v9 keyEnumerator];
      v11 = [keyEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = *v20;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(keyEnumerator);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            v15 = [v9 objectForKey:v14];
            LODWORD(v14) = [v8 addFaceObservations:v15 toPersonWithUniqueIdentifier:v14 error:error];

            if (!v14)
            {

              v16 = 0;
              goto LABEL_14;
            }
          }

          v11 = [keyEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
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

    else if (error)
    {
      +[VNError errorForMemoryAllocationFailure];
      *error = v16 = 0;
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
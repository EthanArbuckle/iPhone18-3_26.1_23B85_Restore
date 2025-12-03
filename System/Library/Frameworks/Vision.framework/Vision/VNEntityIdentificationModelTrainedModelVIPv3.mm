@interface VNEntityIdentificationModelTrainedModelVIPv3
+ (id)trainedModelBuiltFromConfiguration:(id)configuration dataProvider:(id)provider canceller:(id)canceller error:(id *)error;
- (VNEntityIdentificationModelTrainedModelVIPv3)initWithCoder:(id)coder;
- (VNEntityIdentificationModelTrainedModelVIPv3)initWithFaceIDModel:(shared_ptr<vision:(id)model :(id)a5 mod:(id)mod :FaceID3Model>)a3 entityPrintOriginatingRequestSpecifier:entityUniqueIdentifiers:entityPrintCounts:;
- (id).cxx_construct;
- (id)predictionsForObservation:(id)observation limit:(unint64_t)limit canceller:(id)canceller error:(id *)error;
- (id)printCountsForAllEntities;
- (id)printCountsForEntitiesWithUniqueIdentifiers:(id)identifiers;
- (id)trainingEntityPrintsForEntityWithUniqueIdentifier:(id)identifier error:(id *)error;
- (unint64_t)printCountForEntityWithUniqueIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNEntityIdentificationModelTrainedModelVIPv3

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy vn_encodeEntityUniqueIdentifierArray:self->_entityUniqueIdentifiers forKey:@"entityUniqueIdentifiers"];
  [coderCopy encodeObject:self->_entityPrintCounts forKey:@"entityPrintCounts"];
  [coderCopy encodeObject:self->_entityPrintOriginatingRequestSpecifier forKey:@"entityPrintOriginatingRequestSpecifier"];
  v5 = objc_autoreleasePoolPush();
  VNNSMutableDataStreambuf::VNNSMutableDataStreambuf(&__sb);
  v8.__loc_ = 0;
  v8.__vftable = (MEMORY[0x1E69E5520] + 64);
  std::ios_base::init(&v8, &__sb);
  v9 = 0;
  v10 = -1;
  v6 = vision::mod::FaceID3Model::serialize(self->_faceIDModel.__ptr_);
  if (v6 == 128)
  {
    std::ostream::flush();
    v7 = v13;
    [coderCopy encodeObject:v7 forKey:@"faceIDModel"];
  }

  else
  {
    v7 = VNErrorForCVMLStatus(v6);
    [coderCopy failWithError:v7];
  }

  std::ostream::~ostream();
  __sb = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v12);
  objc_autoreleasePoolPop(v5);
}

- (VNEntityIdentificationModelTrainedModelVIPv3)initWithCoder:(id)coder
{
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = VNEntityIdentificationModelTrainedModelVIPv3;
  v5 = [(VNEntityIdentificationModelTrainedModelVIPv3 *)&v37 init];
  v6 = v5;
  if (v5)
  {
    v7 = [coderCopy vn_decodeEntityUniqueIdentifierArrayForKey:@"entityUniqueIdentifiers"];
    entityUniqueIdentifiers = v5->_entityUniqueIdentifiers;
    v5->_entityUniqueIdentifiers = v7;

    v9 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"entityPrintCounts"];
    entityPrintCounts = v5->_entityPrintCounts;
    v5->_entityPrintCounts = v9;

    v11 = [(NSArray *)v5->_entityUniqueIdentifiers count];
    if (v11 == [(NSArray *)v5->_entityPrintCounts count])
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityPrintOriginatingRequestSpecifier"];
      entityPrintOriginatingRequestSpecifier = v5->_entityPrintOriginatingRequestSpecifier;
      v5->_entityPrintOriginatingRequestSpecifier = v12;

      v14 = objc_autoreleasePoolPush();
      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"faceIDModel"];
      if (!v15)
      {
        goto LABEL_10;
      }

      VNNSDataStreambuf::VNNSDataStreambuf(&__sb, v15);
      v32.__loc_ = 0;
      v31[0] = MEMORY[0x1E69E5518] + 24;
      v31[1] = 0;
      v32.__vftable = (MEMORY[0x1E69E5518] + 64);
      std::ios_base::init(&v32, &__sb);
      v33 = 0;
      v34 = -1;
      v29 = 0;
      v30 = 11125;
      vision::mod::FaceID3Model::deserialize(&v28, v31, &v30);
      v16 = v28;
      v29 = v28;
      if (v28)
      {
        std::shared_ptr<vision::mod::FaceID3Model>::operator=[abi:ne200100]<vision::mod::FaceID3Model,std::default_delete<vision::mod::FaceID3Model>,0>(&v5->_faceIDModel, &v29);
        if (v29)
        {
          vision::mod::FaceID3Model::~FaceID3Model(v29);
          MEMORY[0x1AC556B00]();
        }
      }

      else
      {
        v19 = MEMORY[0x1E696AEC0];
        v20 = v30;
        v21 = [MEMORY[0x1E696AD98] numberWithLongLong:v30];
        v22 = [v19 stringWithFormat:@"Face ID model data deserialization failed with code %@", v21];

        v23 = VNErrorForCVMLStatus(v20);
        v24 = [VNError errorForInternalErrorWithLocalizedDescription:v22 underlyingError:v23];
        [coderCopy failWithError:v24];
      }

      std::istream::~istream();

      __sb = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v36);
      if (!v16)
      {
        v25 = 0;
      }

      else
      {
LABEL_10:
        v25 = 1;
      }

      objc_autoreleasePoolPop(v14);
      if (v25)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"entity unique identifier counts (%lu) do not agree with the print counts (%lu)", -[NSArray count](v5->_entityUniqueIdentifiers, "count"), -[NSArray count](v5->_entityPrintCounts, "count")];
      v18 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, v17, 0);
      [coderCopy failWithError:v18];
    }

    v26 = 0;
    goto LABEL_15;
  }

LABEL_13:
  v26 = v6;
LABEL_15:

  return v26;
}

- (id)printCountsForAllEntities
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](self->_entityUniqueIdentifiers, "count")}];
  entityUniqueIdentifiers = self->_entityUniqueIdentifiers;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__VNEntityIdentificationModelTrainedModelVIPv3_printCountsForAllEntities__block_invoke;
  v8[3] = &unk_1E77B5488;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  [(NSArray *)entityUniqueIdentifiers enumerateObjectsUsingBlock:v8];
  v6 = v5;

  return v5;
}

void __73__VNEntityIdentificationModelTrainedModelVIPv3_printCountsForAllEntities__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(*(a1 + 40) + 40) objectAtIndex:a3];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

- (id)printCountsForEntitiesWithUniqueIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:identifiersCopy];
  entityUniqueIdentifiers = self->_entityUniqueIdentifiers;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __92__VNEntityIdentificationModelTrainedModelVIPv3_printCountsForEntitiesWithUniqueIdentifiers___block_invoke;
  v12[3] = &unk_1E77B5460;
  v13 = v6;
  v8 = v5;
  v14 = v8;
  selfCopy = self;
  v9 = v6;
  [(NSArray *)entityUniqueIdentifiers enumerateObjectsUsingBlock:v12];
  v10 = v8;

  return v8;
}

void __92__VNEntityIdentificationModelTrainedModelVIPv3_printCountsForEntitiesWithUniqueIdentifiers___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    v7 = [*(*(a1 + 48) + 40) objectAtIndex:a3];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];

    [*(a1 + 32) removeObject:v8];
    if (![*(a1 + 32) count])
    {
      *a4 = 1;
    }
  }
}

- (unint64_t)printCountForEntityWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSArray *)self->_entityUniqueIdentifiers indexOfObject:identifierCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    unsignedIntegerValue = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_entityPrintCounts objectAtIndex:v5];
    unsignedIntegerValue = [v7 unsignedIntegerValue];
  }

  return unsignedIntegerValue;
}

- (id)predictionsForObservation:(id)observation limit:(unint64_t)limit canceller:(id)canceller error:(id *)error
{
  observationCopy = observation;
  cancellerCopy = canceller;
  entityPrintOriginatingRequestSpecifier = [(VNEntityIdentificationModelTrainedModelVIPv3 *)self entityPrintOriginatingRequestSpecifier];
  if (entityPrintOriginatingRequestSpecifier)
  {
    if ([VNEntityIdentificationModel validateAceptableObservation:observationCopy forEntityPrintOriginatingRequestSpecifier:entityPrintOriginatingRequestSpecifier error:error])
    {
      v12 = [observationCopy VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:entityPrintOriginatingRequestSpecifier error:error];
      if (v12)
      {
        [v12 VNEntityIdentificationModelPrintData];
        objc_claimAutoreleasedReturnValue();
        std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>();
      }

      v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

void __96__VNEntityIdentificationModelTrainedModelVIPv3_predictionsForObservation_limit_canceller_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 192);
  v4 = *(*(a1 + 64) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  v34 = *(a1 + 40);
  if (v2)
  {
    if ([*(v2 + 32) count])
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v8 = vision::mod::FaceID3Model::predict(*(v2 + 8), a1 + 72, &v35);
      if (v8 == 128)
      {
        v31 = v3;
        v9 = objc_alloc(MEMORY[0x1E695DF70]);
        v33 = [v9 initWithCapacity:0xAAAAAAAAAAAAAAABLL * (v36 - v35)];
        v11 = v35;
        v10 = v36;
        for (i = v36; ; v10 = i)
        {
          if (v11 == v10)
          {
            v24 = v33;
            [v33 sortUsingComparator:&__block_literal_global_17610];
            if (v31)
            {
              v25 = [v33 count];
              if (v25 > v31)
              {
                [v33 removeObjectsInRange:{v31, v25 - v31}];
              }
            }

            v22 = v33;
            goto LABEL_27;
          }

          v12 = *v11;
          if (*v11 != (v11 + 1))
          {
            break;
          }

LABEL_17:
          v11 += 3;
        }

        while (1)
        {
          v13 = *(v12 + 8);
          if (v13 < 1 || v13 - 1 >= [*(v2 + 32) count])
          {
            v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No entity for identity serial number %d", v13];
            v24 = v33;
            v6 = [VNError errorForInternalErrorWithLocalizedDescription:v26];
            v27 = v6;

            v22 = 0;
            goto LABEL_27;
          }

          v14 = [*(v2 + 32) objectAtIndex:?];
          if (!v14)
          {
            break;
          }

          v15 = v12[5];
          v16 = [VNEntityIdentificationModelPrediction alloc];
          *&v17 = v15;
          v18 = [(VNEntityIdentificationModelPrediction *)v16 initWithObservation:v34 entityUniqueIdentifier:v14 confidence:v17];
          if (!v18)
          {
            v6 = +[VNError errorForMemoryAllocationFailure];
            v28 = v6;

            break;
          }

          [v33 addObject:v18];

          v19 = *(v12 + 1);
          if (v19)
          {
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              v20 = *(v12 + 2);
              v21 = *v20 == v12;
              v12 = v20;
            }

            while (!v21);
          }

          v12 = v20;
          if (v20 == v11 + 1)
          {
            goto LABEL_17;
          }
        }

        v22 = 0;
        v24 = v33;
LABEL_27:
      }

      else
      {
        v6 = VNErrorForCVMLStatus(v8);
        v23 = v6;
        v22 = 0;
      }

      v38 = &v35;
      std::vector<std::map<int,double>>::__destroy_vector::operator()[abi:ne200100](&v38);
    }

    else
    {
      v22 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v22 = 0;
  }

  objc_storeStrong(v5, v6);
  v29 = *(*(a1 + 48) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v22;
}

uint64_t __129__VNEntityIdentificationModelTrainedModelVIPv3__predictionsForObservation_withEntityPrintDescriptor_limit_faceIDCanceller_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 confidence];
  v7 = v6;
  [v5 confidence];
  if (v7 <= v8)
  {
    if (v7 < v8)
    {
      v9 = 1;
    }

    else
    {
      v10 = [v4 entityUniqueIdentifier];
      v11 = [v10 description];

      v12 = [v5 entityUniqueIdentifier];
      v13 = [v12 description];

      v9 = [v11 compare:v13];
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (id)trainingEntityPrintsForEntityWithUniqueIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if (!self)
  {
LABEL_5:

    v9 = 0;
    goto LABEL_22;
  }

  v7 = [(NSArray *)self->_entityUniqueIdentifiers indexOfObject:identifierCopy];
  v8 = v7;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      *error = VNEntityIdentificationModelErrorForUnknownEntityUniqueIdentifier(identifierCopy);
    }

    goto LABEL_5;
  }

  v23 = -38;
  v21 = identifierCopy;
  vision::mod::FaceID3Model::getIdentityTrainingData(&v22, self->_faceIDModel.__ptr_, (v8 + 1), &v23);
  v10 = v22;
  if (v22)
  {
    v11 = *(v22 + 9);
    if (v11)
    {
      entityPrintOriginatingRequestSpecifier = [(VNEntityIdentificationModelTrainedModelVIPv3 *)self entityPrintOriginatingRequestSpecifier];
      v12 = [entityPrintOriginatingRequestSpecifier requestClassAndReturnError:error];
      if (v12)
      {
        requestRevision = [entityPrintOriginatingRequestSpecifier requestRevision];
        v14 = *(v10 + 8);
        v15 = *(v10 + 12);
        v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v11];
        v17 = 0;
        while (1)
        {
          v18 = [v12 createVNEntityIdentificationModelEntryPrintForRevision:requestRevision fromDescriptorData:vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(v10 length:v17) elementCount:v14 error:{v15, error}];
          if (!v18)
          {
            break;
          }

          [v16 addObject:v18];

          if (v11 == ++v17)
          {
            v9 = v16;
            goto LABEL_19;
          }
        }

        v9 = 0;
LABEL_19:

        if (!v10)
        {
          goto LABEL_21;
        }
      }

      else
      {

        v9 = 0;
      }
    }

    else
    {
      v9 = MEMORY[0x1E695E0F0];
    }

    (*(*v10 + 8))(v10);
  }

  else if (error)
  {
    VNErrorForCVMLStatus(v23);
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_21:
  identifierCopy = v21;
LABEL_22:

  return v9;
}

- (VNEntityIdentificationModelTrainedModelVIPv3)initWithFaceIDModel:(shared_ptr<vision:(id)model :(id)a5 mod:(id)mod :FaceID3Model>)a3 entityPrintOriginatingRequestSpecifier:entityUniqueIdentifiers:entityPrintCounts:
{
  ptr = a3.__ptr_;
  v10 = a3.__cntrl_;
  modelCopy = model;
  v12 = a5;
  +[VNError VNAssert:log:](VNError, "VNAssert:log:", [modelCopy count] == objc_msgSend(v12, "count"), @"entity unique identifier / print count mismatch");
  v26.receiver = self;
  v26.super_class = VNEntityIdentificationModelTrainedModelVIPv3;
  v13 = [(VNEntityIdentificationModelTrainedModelVIPv3 *)&v26 init];
  v14 = v13;
  if (v13)
  {
    p_faceIDModel = &v13->_faceIDModel;
    v17 = *ptr;
    v16 = *(ptr + 1);
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v13->_faceIDModel.__cntrl_;
    p_faceIDModel->__ptr_ = v17;
    p_faceIDModel->__cntrl_ = v16;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    v19 = [(__shared_weak_count *)v10 copy];
    entityPrintOriginatingRequestSpecifier = v14->_entityPrintOriginatingRequestSpecifier;
    v14->_entityPrintOriginatingRequestSpecifier = v19;

    v21 = [modelCopy copy];
    entityUniqueIdentifiers = v14->_entityUniqueIdentifiers;
    v14->_entityUniqueIdentifiers = v21;

    v23 = [v12 copy];
    entityPrintCounts = v14->_entityPrintCounts;
    v14->_entityPrintCounts = v23;
  }

  return v14;
}

+ (id)trainedModelBuiltFromConfiguration:(id)configuration dataProvider:(id)provider canceller:(id)canceller error:(id *)error
{
  v59 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  providerCopy = provider;
  cancellerCopy = canceller;
  if (!cancellerCopy)
  {
    cancellerCopy = objc_alloc_init(VNCanceller);
  }

  entityPrintOriginatingRequestSpecifier = [configurationCopy entityPrintOriginatingRequestSpecifier];
  trainedModelEntityCount = [providerCopy trainedModelEntityCount];
  v36 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:trainedModelEntityCount];
  v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:trainedModelEntityCount];
  if (trainedModelEntityCount)
  {
    v31 = trainedModelEntityCount;
    v40 = 0;
    while (1)
    {
      if ([(VNCanceller *)cancellerCopy wasSignalled])
      {
        if (error)
        {
          VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(4, @"operation was cancelled", 0);
          *error = v27 = 0;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_39;
      }

      v33 = [providerCopy trainedModelUniqueIdentifierOfEntityAtIndex:v40];
      [v36 addObject:?];
      v9 = [providerCopy trainedModelNumberOfObservationsForEntityAtIndex:v40];
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
      [v35 addObject:v10];

      v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
      if (v9)
      {
        break;
      }

LABEL_12:
      context = objc_autoreleasePoolPush();
      v43 = v42;
      objc_opt_self();
      if ([v43 count])
      {
        [v43 firstObject];
        vNEntityIdentificationModelPrintByteLength = [objc_claimAutoreleasedReturnValue() VNEntityIdentificationModelPrintByteLength];
        aBlock[0] = 1;
        p_p = 0;
        v49 = 0;
        __p = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>();
      }

      objc_autoreleasePoolPop(context);
      if (++v40 == v31)
      {
        goto LABEL_18;
      }
    }

    v11 = 0;
    while (1)
    {
      v12 = [providerCopy trainedModelObservationAtIndex:v11 forEntityAtIndex:v40];
      v13 = v12;
      if (!v12 || (VNEntityIdentificationModelObservationConformingObject(v12) & 1) == 0)
      {
        break;
      }

      v46 = 0;
      v14 = [v13 VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:entityPrintOriginatingRequestSpecifier error:&v46];
      v15 = v46;
      if (!v14)
      {
        if (error)
        {
          v24 = MEMORY[0x1E696AEC0];
          originatingRequestSpecifier = [v13 originatingRequestSpecifier];
          v26 = [v24 stringWithFormat:@"entity index %lu, observation index %lu was generated by %@, which is not compatible with the model requirement of %@", v40, v11, originatingRequestSpecifier, entityPrintOriginatingRequestSpecifier];

          *error = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, v26, v15);
        }

        goto LABEL_28;
      }

      [v42 addObject:v14];

      if (v9 == ++v11)
      {
        goto LABEL_12;
      }
    }

    if (!error)
    {
      goto LABEL_29;
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid observation at index %lu for entity at index %lu", v11, v40];
    *error = [VNError errorForInvalidModelWithLocalizedDescription:v15];
LABEL_28:

LABEL_29:
    v27 = 0;
  }

  else
  {
LABEL_18:
    v16 = configurationCopy;
    faceID3ModelMaximumIDs = [v16 faceID3ModelMaximumIDs];
    faceID3ModelMaximumElementsPerID = [v16 faceID3ModelMaximumElementsPerID];
    faceID3ModelSeed = [v16 faceID3ModelSeed];
    faceID3IndexMode = [v16 faceID3IndexMode];
    __p = 0;
    p_p = &__p;
    v49 = 0x4012000000;
    v50 = __Block_byref_object_copy__121;
    v51 = __Block_byref_object_dispose__122;
    v52 = "";
    v53 = 0;
    v54 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL15_newFaceIDModelP40VNEntityIdentificationModelConfigurationPU15__autoreleasingP7NSError_block_invoke;
    aBlock[3] = &unk_1E77B63E0;
    aBlock[4] = &__p;
    aBlock[5] = __PAIR64__(faceID3ModelMaximumIDs, faceID3ModelMaximumElementsPerID);
    v57 = faceID3ModelSeed;
    v58 = faceID3IndexMode;
    v21 = _Block_copy(aBlock);
    if (VNExecuteBlock(v21, error))
    {
      v23 = p_p[6];
      v22 = p_p[7];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    _Block_object_dispose(&__p, 8);
    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }

    if (v23)
    {
      v28 = [self alloc];
      v44 = v23;
      v45 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = [v28 initWithFaceIDModel:&v44 entityPrintOriginatingRequestSpecifier:entityPrintOriginatingRequestSpecifier entityUniqueIdentifiers:v36 entityPrintCounts:v35];
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }
    }

    else
    {
      v27 = 0;
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }

LABEL_39:

  return v27;
}

void *__112__VNEntityIdentificationModelTrainedModelVIPv3_trainedModelBuiltFromConfiguration_dataProvider_canceller_error___block_invoke(uint64_t a1)
{
  result = vision::mod::FaceID3Model::buildModel(*(a1 + 48), *(a1 + 64), (a1 + 80), *(*(a1 + 32) + 8) + 48);
  if (result != 128)
  {
    *(*(*(a1 + 40) + 8) + 40) = VNErrorForCVMLStatus(result);

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

@end
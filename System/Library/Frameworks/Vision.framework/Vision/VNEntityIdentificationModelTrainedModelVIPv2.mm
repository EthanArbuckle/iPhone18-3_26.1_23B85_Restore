@interface VNEntityIdentificationModelTrainedModelVIPv2
+ (id)trainedModelBuiltFromConfiguration:(id)a3 dataProvider:(id)a4 canceller:(id)a5 error:(id *)a6;
- (VNEntityIdentificationModelTrainedModelVIPv2)initWithCoder:(id)a3;
- (VNEntityIdentificationModelTrainedModelVIPv2)initWithFaceIDModel:(shared_ptr<vision:(id)a4 :(unint64_t)a5 mod:(id)a6 :(id)a7 FaceIDModel>)a3 entityPrintOriginatingRequestSpecifier:maximumElementsPerID:entityUniqueIdentifiers:entityPrintCounts:;
- (id).cxx_construct;
- (id)predictionsForObservation:(id)a3 limit:(unint64_t)a4 canceller:(id)a5 error:(id *)a6;
- (id)printCountsForAllEntities;
- (id)printCountsForEntitiesWithUniqueIdentifiers:(id)a3;
- (id)trainingEntityPrintsForEntityWithUniqueIdentifier:(id)a3 error:(id *)a4;
- (unint64_t)printCountForEntityWithUniqueIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNEntityIdentificationModelTrainedModelVIPv2

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 vn_encodeEntityUniqueIdentifierArray:self->_entityUniqueIdentifiers forKey:@"entityUniqueIdentifiers"];
  [v4 encodeObject:self->_entityPrintCounts forKey:@"entityPrintCounts"];
  [v4 encodeObject:self->_entityPrintOriginatingRequestSpecifier forKey:@"entityPrintOriginatingRequestSpecifier"];
  [v4 encodeInt:self->_maximumElementsPerID forKey:@"maximumElementsPerID"];
  v5 = objc_autoreleasePoolPush();
  VNNSMutableDataStreambuf::VNNSMutableDataStreambuf(&__sb);
  v8.__loc_ = 0;
  v8.__vftable = (MEMORY[0x1E69E5520] + 64);
  std::ios_base::init(&v8, &__sb);
  v9 = 0;
  v10 = -1;
  v6 = vision::mod::FaceIDModel::serialize(self->_faceIDModel.__ptr_);
  if (v6 == 128)
  {
    std::ostream::flush();
    v7 = v13;
    [v4 encodeObject:v7 forKey:@"faceIDModel"];
  }

  else
  {
    v7 = VNErrorForCVMLStatus(v6);
    [v4 failWithError:v7];
  }

  std::ostream::~ostream();
  __sb = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v12);
  objc_autoreleasePoolPop(v5);
}

- (VNEntityIdentificationModelTrainedModelVIPv2)initWithCoder:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = VNEntityIdentificationModelTrainedModelVIPv2;
  v5 = [(VNEntityIdentificationModelTrainedModelVIPv2 *)&v38 init];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = [v4 vn_decodeEntityUniqueIdentifierArrayForKey:@"entityUniqueIdentifiers"];
  v7 = *(v5 + 5);
  *(v5 + 5) = v6;

  v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"entityPrintCounts"];
  v9 = *(v5 + 6);
  *(v5 + 6) = v8;

  v10 = [*(v5 + 5) count];
  if (v10 != [*(v5 + 6) count])
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"entity unique identifier counts (%lu) do not agree with the print counts (%lu)", objc_msgSend(*(v5 + 5), "count"), objc_msgSend(*(v5 + 6), "count")];
    v22 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, v14, 0);
    [v4 failWithError:v22];

LABEL_12:
    goto LABEL_13;
  }

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entityPrintOriginatingRequestSpecifier"];
  v12 = *(v5 + 3);
  *(v5 + 3) = v11;

  v13 = [v4 decodeIntForKey:@"maximumElementsPerID"];
  *(v5 + 8) = v13;
  v37 = 0;
  _newFaceIDModel(&v30, v13, &v37);
  v14 = v37;
  v15 = (v5 + 8);
  v16 = *(v5 + 2);
  v17 = v30;
  *(v5 + 8) = v30;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    if (*v15)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (!v17)
  {
LABEL_11:
    [v4 failWithError:v14];
    goto LABEL_12;
  }

LABEL_5:
  v18 = objc_autoreleasePoolPush();
  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"faceIDModel"];
  if (!v19)
  {
LABEL_8:
    v21 = 1;
    goto LABEL_15;
  }

  VNNSDataStreambuf::VNNSDataStreambuf(&__sb, v19);
  v31.__loc_ = 0;
  v30 = (MEMORY[0x1E69E5518] + 24);
  v31.__vftable = (MEMORY[0x1E69E5518] + 64);
  std::ios_base::init(&v31, &__sb);
  v32 = 0;
  v33 = -1;
  v20 = vision::mod::FaceIDModel::deserialize(*v15);
  if (v20 == 128)
  {
    std::istream::~istream();

    __sb = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v35);
    goto LABEL_8;
  }

  v24 = MEMORY[0x1E696AEC0];
  v25 = [MEMORY[0x1E696AD98] numberWithLongLong:v20];
  v26 = [v24 stringWithFormat:@"Face ID model data deserialization failed with code %@", v25];

  v27 = VNErrorForCVMLStatus(v20);
  v28 = [VNError errorForInternalErrorWithLocalizedDescription:v26 underlyingError:v27];
  [v4 failWithError:v28];

  std::istream::~istream();
  __sb = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v35);
  v21 = 0;
LABEL_15:

  objc_autoreleasePoolPop(v18);
  if (v21)
  {
LABEL_16:
    v23 = v5;
    goto LABEL_17;
  }

LABEL_13:
  v23 = 0;
LABEL_17:

  return v23;
}

- (id)printCountsForAllEntities
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](self->_entityUniqueIdentifiers, "count")}];
  entityUniqueIdentifiers = self->_entityUniqueIdentifiers;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__VNEntityIdentificationModelTrainedModelVIPv2_printCountsForAllEntities__block_invoke;
  v8[3] = &unk_1E77B5488;
  v5 = v3;
  v9 = v5;
  v10 = self;
  [(NSArray *)entityUniqueIdentifiers enumerateObjectsUsingBlock:v8];
  v6 = v5;

  return v5;
}

void __73__VNEntityIdentificationModelTrainedModelVIPv2_printCountsForAllEntities__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(*(a1 + 40) + 48) objectAtIndex:a3];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

- (id)printCountsForEntitiesWithUniqueIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v4];
  entityUniqueIdentifiers = self->_entityUniqueIdentifiers;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __92__VNEntityIdentificationModelTrainedModelVIPv2_printCountsForEntitiesWithUniqueIdentifiers___block_invoke;
  v12[3] = &unk_1E77B5460;
  v13 = v6;
  v8 = v5;
  v14 = v8;
  v15 = self;
  v9 = v6;
  [(NSArray *)entityUniqueIdentifiers enumerateObjectsUsingBlock:v12];
  v10 = v8;

  return v8;
}

void __92__VNEntityIdentificationModelTrainedModelVIPv2_printCountsForEntitiesWithUniqueIdentifiers___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    v7 = [*(*(a1 + 48) + 48) objectAtIndex:a3];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];

    [*(a1 + 32) removeObject:v8];
    if (![*(a1 + 32) count])
    {
      *a4 = 1;
    }
  }
}

- (unint64_t)printCountForEntityWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_entityUniqueIdentifiers indexOfObject:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_entityPrintCounts objectAtIndex:v5];
    v6 = [v7 unsignedIntegerValue];
  }

  return v6;
}

- (id)predictionsForObservation:(id)a3 limit:(unint64_t)a4 canceller:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = [(VNEntityIdentificationModelTrainedModelVIPv2 *)self entityPrintOriginatingRequestSpecifier];
  if (v11)
  {
    if ([VNEntityIdentificationModel validateAceptableObservation:v9 forEntityPrintOriginatingRequestSpecifier:v11 error:a6])
    {
      v12 = [v9 VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:v11 error:a6];
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

void __96__VNEntityIdentificationModelTrainedModelVIPv2_predictionsForObservation_limit_canceller_error___block_invoke(uint64_t a1)
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
    if ([*(v2 + 40) count])
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v8 = vision::mod::FaceIDModel::predict(*(v2 + 8), (a1 + 72), &v35);
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
            [v33 sortUsingComparator:&__block_literal_global_28843];
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
          if (v13 < 1 || v13 - 1 >= [*(v2 + 40) count])
          {
            v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No entity for identity serial number %d", v13];
            v24 = v33;
            v6 = [VNError errorForInternalErrorWithLocalizedDescription:v26];
            v27 = v6;

            v22 = 0;
            goto LABEL_27;
          }

          v14 = [*(v2 + 40) objectAtIndex:?];
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

uint64_t __129__VNEntityIdentificationModelTrainedModelVIPv2__predictionsForObservation_withEntityPrintDescriptor_limit_faceIDCanceller_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)trainingEntityPrintsForEntityWithUniqueIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!self)
  {
LABEL_5:

    v9 = 0;
    goto LABEL_21;
  }

  v7 = [(NSArray *)self->_entityUniqueIdentifiers indexOfObject:v6];
  v8 = v7;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      *a4 = VNEntityIdentificationModelErrorForUnknownEntityUniqueIdentifier(v6);
    }

    goto LABEL_5;
  }

  IdentityTrainingData = vision::mod::FaceIDModel::getIdentityTrainingData(self->_faceIDModel.__ptr_, v8 + 1);
  if (IdentityTrainingData == 128)
  {
    v11 = MEMORY[0x48];
    if (MEMORY[0x48])
    {
      v20 = [(VNEntityIdentificationModelTrainedModelVIPv2 *)self entityPrintOriginatingRequestSpecifier];
      v12 = [v20 requestClassAndReturnError:a4];
      if (v12)
      {
        v13 = [v20 requestRevision];
        v14 = MEMORY[0x40];
        v15 = MEMORY[0x60];
        v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v11];
        v17 = 0;
        while (1)
        {
          v18 = [v12 createVNEntityIdentificationModelEntryPrintForRevision:v13 fromDescriptorData:vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(0 length:v17) elementCount:v14 error:{v15, a4}];
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
  }

  else if (a4)
  {
    VNErrorForCVMLStatus(IdentityTrainingData);
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_21:

  return v9;
}

- (VNEntityIdentificationModelTrainedModelVIPv2)initWithFaceIDModel:(shared_ptr<vision:(id)a4 :(unint64_t)a5 mod:(id)a6 :(id)a7 FaceIDModel>)a3 entityPrintOriginatingRequestSpecifier:maximumElementsPerID:entityUniqueIdentifiers:entityPrintCounts:
{
  ptr = a3.__ptr_;
  v12 = a3.__cntrl_;
  v13 = a5;
  v14 = a6;
  +[VNError VNAssert:log:](VNError, "VNAssert:log:", [v13 count] == objc_msgSend(v14, "count"), @"entity unique identifier / print count mismatch");
  v29.receiver = self;
  v29.super_class = VNEntityIdentificationModelTrainedModelVIPv2;
  v15 = [(VNEntityIdentificationModelTrainedModelVIPv2 *)&v29 init];
  v16 = v15;
  if (v15)
  {
    p_faceIDModel = &v15->_faceIDModel;
    v19 = *ptr;
    v18 = *(ptr + 1);
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v15->_faceIDModel.__cntrl_;
    p_faceIDModel->__ptr_ = v19;
    p_faceIDModel->__cntrl_ = v18;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    v21 = [(__shared_weak_count *)v12 copy];
    entityPrintOriginatingRequestSpecifier = v16->_entityPrintOriginatingRequestSpecifier;
    v16->_entityPrintOriginatingRequestSpecifier = v21;

    v23 = 0x7FFFFFFF;
    if (a4 < 0x7FFFFFFF)
    {
      v23 = a4;
    }

    v16->_maximumElementsPerID = v23;
    v24 = [v13 copy];
    entityUniqueIdentifiers = v16->_entityUniqueIdentifiers;
    v16->_entityUniqueIdentifiers = v24;

    v26 = [v14 copy];
    entityPrintCounts = v16->_entityPrintCounts;
    v16->_entityPrintCounts = v26;
  }

  return v16;
}

+ (id)trainedModelBuiltFromConfiguration:(id)a3 dataProvider:(id)a4 canceller:(id)a5 error:(id *)a6
{
  v46[9] = *MEMORY[0x1E69E9840];
  v34 = a3;
  v38 = a4;
  v35 = a5;
  if (!v35)
  {
    v35 = objc_alloc_init(VNCanceller);
  }

  v36 = [v34 entityPrintOriginatingRequestSpecifier];
  v8 = [v38 trainedModelEntityCount];
  v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
  v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
  if (v8)
  {
    v28 = v8;
    v37 = 0;
    while (1)
    {
      if ([(VNCanceller *)v35 wasSignalled])
      {
        if (a6)
        {
          VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(4, @"operation was cancelled", 0);
          *a6 = v23 = 0;
        }

        else
        {
          v23 = 0;
        }

        goto LABEL_33;
      }

      v30 = [v38 trainedModelUniqueIdentifierOfEntityAtIndex:v37];
      [v33 addObject:v30];
      v9 = [v38 trainedModelNumberOfObservationsForEntityAtIndex:v37];
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
      [v32 addObject:v10];

      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
      if (v9)
      {
        break;
      }

LABEL_12:
      context = objc_autoreleasePoolPush();
      v17 = v11;
      objc_opt_self();
      if ([v17 count])
      {
        [v17 firstObject];
        v44 = [objc_claimAutoreleasedReturnValue() VNEntityIdentificationModelPrintByteLength];
        v46[3] = 1;
        v42 = 0;
        v43 = 0;
        v41 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>();
      }

      objc_autoreleasePoolPop(context);
      if (++v37 == v28)
      {
        goto LABEL_18;
      }
    }

    v12 = 0;
    while (1)
    {
      v13 = [v38 trainedModelObservationAtIndex:v12 forEntityAtIndex:v37];
      v14 = v13;
      if (!v13 || (VNEntityIdentificationModelObservationConformingObject(v13) & 1) == 0)
      {
        break;
      }

      v46[0] = 0;
      v15 = [v14 VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:v36 error:v46];
      v16 = v46[0];
      if (!v15)
      {
        if (a6)
        {
          v20 = MEMORY[0x1E696AEC0];
          v21 = [v14 originatingRequestSpecifier];
          v22 = [v20 stringWithFormat:@"entity index %lu, observation index %lu was generated by %@, which is not compatible with the model requirement of %@", v37, v12, v21, v36];

          *a6 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, v22, v16);
        }

        goto LABEL_22;
      }

      [v11 addObject:v15];

      if (v9 == ++v12)
      {
        goto LABEL_12;
      }
    }

    if (!a6)
    {
      goto LABEL_23;
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid observation at index %lu for entity at index %lu", v12, v37];
    *a6 = [VNError errorForInvalidModelWithLocalizedDescription:v16];
LABEL_22:

LABEL_23:
    v23 = 0;
  }

  else
  {
LABEL_18:
    v18 = [v34 faceIDModelMaximumElementsPerID];
    _newFaceIDModel(&v44, v18, a6);
    v19 = v44;
    if (v44)
    {
      v25 = [a1 alloc];
      v24 = v45;
      v39 = v19;
      v40 = v45;
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v23 = [v25 initWithFaceIDModel:&v39 entityPrintOriginatingRequestSpecifier:v36 maximumElementsPerID:v18 entityUniqueIdentifiers:v33 entityPrintCounts:v32];
      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }
    }

    else
    {
      v23 = 0;
      v24 = v45;
    }

    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }
  }

LABEL_33:

  return v23;
}

void *__112__VNEntityIdentificationModelTrainedModelVIPv2_trainedModelBuiltFromConfiguration_dataProvider_canceller_error___block_invoke(uint64_t a1)
{
  result = vision::mod::FaceIDModel::buildModel(*(a1 + 48), *(a1 + 64), (a1 + 80), *(*(a1 + 32) + 8) + 48);
  if (result != 128)
  {
    *(*(*(a1 + 40) + 8) + 40) = VNErrorForCVMLStatus(result);

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

@end
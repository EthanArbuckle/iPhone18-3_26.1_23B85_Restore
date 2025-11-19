@interface VNPersonsModelFaceModelVIPv2
+ (id)modelBuiltFromConfiguration:(id)a3 dataProvider:(id)a4 canceller:(id)a5 error:(id *)a6;
+ (shared_ptr<vision::mod::ImageDescriptorBufferFloat32>)_concatenateFaceprintImageDescriptorBuffer:(shared_ptr<vision:(id)a4 :(int)a5 mod:(void *)a6 :(id *)a7 ImageDescriptorBufferFloat32>)a3 withFaceprints:forIdentityWithSerialNumber:faceprintLabels:error:;
- (BOOL)_getSerialNumber:(int *)a3 forPersonUniqueIdentifier:(id)a4 error:(id *)a5;
- (VNPersonsModelFaceModelVIPv2)initWithCoder:(id)a3;
- (VNPersonsModelFaceModelVIPv2)initWithFaceIDModel:(shared_ptr<vision:(unint64_t)a4 :(unint64_t)a5 mod:(id)a6 :FaceIDModel>)a3 faceprintRequestRevision:maximumElementsPerID:personUniqueIdentifierToSerialNumberMapping:;
- (id).cxx_construct;
- (id)_personPredictionsForFace:(id)a3 withDescriptor:(const void *)a4 limit:(unint64_t)a5 faceIDCanceller:(CVMLCanceller *)a6 error:(id *)a7;
- (id)faceCountsForAllPersons;
- (id)faceCountsForPersonsWithUniqueIdentifiers:(id)a3;
- (id)personPredictionsForFace:(id)a3 withDescriptor:(const void *)a4 limit:(unint64_t)a5 canceller:(id)a6 error:(id *)a7;
- (id)personUniqueIdentifiers;
- (id)trainingFaceprintsForPersonWithUniqueIdentifier:(id)a3 error:(id *)a4;
- (unint64_t)faceCountForPersonWithUniqueIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNPersonsModelFaceModelVIPv2

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:self->_maximumElementsPerID forKey:@"maximumElementsPerID"];
  [v4 encodeInteger:self->_faceprintRequestRevision forKey:@"faceprintRequestRevision"];
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSMapTable *)self->_serialNumberToPersonUniqueIdentifierMapTable dictionaryRepresentation];
  [v4 encodeObject:v6 forKey:@"serialNumberToIdentifier"];

  objc_autoreleasePoolPop(v5);
  v7 = objc_autoreleasePoolPush();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__VNPersonsModelFaceModelVIPv2_encodeWithCoder___block_invoke;
  aBlock[3] = &unk_1E77B6430;
  aBlock[4] = self;
  v8 = v4;
  v14 = v8;
  v9 = _Block_copy(aBlock);
  v12 = 0;
  v10 = VNExecuteBlock(v9, &v12);
  v11 = v12;
  if ((v10 & 1) == 0)
  {
    [v8 failWithError:v11];
  }

  objc_autoreleasePoolPop(v7);
}

BOOL __48__VNPersonsModelFaceModelVIPv2_encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  VNNSMutableDataStreambuf::VNNSMutableDataStreambuf(&__sb);
  v11.__loc_ = 0;
  v10 = MEMORY[0x1E69E5520] + 24;
  v11.__vftable = (MEMORY[0x1E69E5520] + 64);
  std::ios_base::init(&v11, &__sb);
  v12 = 0;
  v13 = -1;
  v4 = vision::mod::FaceIDModel::serialize(*(*(a1 + 32) + 24));
  if (v4 == 128)
  {
    std::ostream::flush();
    v5 = v16;
    [*(a1 + 40) encodeObject:v5 forKey:@"faceIDModel"];
LABEL_5:

    goto LABEL_6;
  }

  if (a2)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
    v5 = [v6 stringWithFormat:@"Face ID model data serialization failed with code %@", v7, v10];

    v8 = VNErrorForCVMLStatus(v4);
    *a2 = [VNError errorForInternalErrorWithLocalizedDescription:v5 underlyingError:v8];

    goto LABEL_5;
  }

LABEL_6:
  std::ostream::~ostream();

  __sb = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v15);
  return v4 == 128;
}

- (VNPersonsModelFaceModelVIPv2)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = VNPersonsModelFaceModelVIPv2;
  v5 = [(VNPersonsModelFaceModelVIPv2 *)&v32 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    if (_serialNumberToPersonUniqueIdentifierDictionaryClasses(void)::onceToken != -1)
    {
      dispatch_once(&_serialNumberToPersonUniqueIdentifierDictionaryClasses(void)::onceToken, &__block_literal_global_106_8097);
    }

    v8 = [v4 decodeObjectOfClasses:_serialNumberToPersonUniqueIdentifierDictionaryClasses(void)::classes forKey:@"serialNumberToIdentifier"];
    if (v8)
    {
      v9 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      serialNumberToPersonUniqueIdentifierMapTable = v5->_serialNumberToPersonUniqueIdentifierMapTable;
      v5->_serialNumberToPersonUniqueIdentifierMapTable = v9;

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __46__VNPersonsModelFaceModelVIPv2_initWithCoder___block_invoke;
      v30[3] = &unk_1E77B63B8;
      v31 = v5;
      [v8 enumerateKeysAndObjectsUsingBlock:v30];
    }

    objc_autoreleasePoolPop(v7);
    if (!v8)
    {
      goto LABEL_18;
    }

    v5->_maximumElementsPerID = [v4 decodeIntForKey:@"maximumElementsPerID"];
    v5->_faceprintRequestRevision = [v4 decodeIntegerForKey:@"faceprintRequestRevision"];
    maximumElementsPerID = v5->_maximumElementsPerID;
    v28 = 0;
    _newFaceIDModel(&v29, maximumElementsPerID, &v28);
    v12 = v28;
    p_faceIDModel = &v5->_faceIDModel;
    cntrl = p_faceIDModel->__cntrl_;
    ptr = v29.__ptr_;
    *p_faceIDModel = v29;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
      if (p_faceIDModel->__ptr_)
      {
        goto LABEL_9;
      }
    }

    else if (ptr)
    {
LABEL_9:
      v16 = objc_autoreleasePoolPush();
      v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"faceIDModel"];
      v18 = v17;
      if (v17)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __46__VNPersonsModelFaceModelVIPv2_initWithCoder___block_invoke_2;
        aBlock[3] = &unk_1E77B6430;
        v26 = v17;
        v27 = v6;
        v19 = _Block_copy(aBlock);
        v24 = 0;
        v20 = VNExecuteBlock(v19, &v24);
        v21 = v24;
        if ((v20 & 1) == 0)
        {
          [v4 failWithError:v21];
        }
      }

      else
      {
        v20 = 1;
      }

      objc_autoreleasePoolPop(v16);
      if (v20)
      {
        goto LABEL_17;
      }

LABEL_18:
      v22 = 0;
      goto LABEL_19;
    }

    [v4 failWithError:v12];

    goto LABEL_18;
  }

LABEL_17:
  v22 = v6;
LABEL_19:

  return v22;
}

BOOL __46__VNPersonsModelFaceModelVIPv2_initWithCoder___block_invoke_2(uint64_t a1, void *a2)
{
  VNNSDataStreambuf::VNNSDataStreambuf(&__sb, *(a1 + 32));
  v11.__loc_ = 0;
  v11.__vftable = (MEMORY[0x1E69E5518] + 64);
  std::ios_base::init(&v11, &__sb);
  v12 = 0;
  v13 = -1;
  v4 = vision::mod::FaceIDModel::deserialize(*(*(a1 + 40) + 24));
  v5 = v4;
  if (a2 && v4 != 128)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
    v8 = [v6 stringWithFormat:@"Face ID model data deserialization failed with code %@", v7];

    v9 = VNErrorForCVMLStatus(v4);
    *a2 = [VNError errorForInternalErrorWithLocalizedDescription:v8 underlyingError:v9];
  }

  std::istream::~istream();

  __sb = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  return v5 == 128;
}

- (id)trainingFaceprintsForPersonWithUniqueIdentifier:(id)a3 error:(id *)a4
{
  v18 = 0;
  if ([(VNPersonsModelFaceModelVIPv2 *)self _getSerialNumber:&v18 forPersonUniqueIdentifier:a3 error:a4])
  {
    IdentityTrainingData = vision::mod::FaceIDModel::getIdentityTrainingData(self->_faceIDModel.__ptr_, v18);
    if (IdentityTrainingData == 128)
    {
      v7 = MEMORY[0x48];
      if (MEMORY[0x48])
      {
        v8 = MEMORY[0x40];
        v9 = MEMORY[0x60];
        v10 = [(VNPersonsModelFaceModelVIPv2 *)self faceprintRequestRevision];
        v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
        v12 = 0;
        do
        {
          DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(0, v12);
          v14 = [VNFaceprint alloc];
          LODWORD(v15) = 1.0;
          v16 = [(VNFaceprint *)v14 initWithData:DataForKthDescriptor elementCount:v9 elementType:1 lengthInBytes:v8 confidence:v10 requestRevision:v15];
          [v11 addObject:v16];

          ++v12;
        }

        while (v7 != v12);
      }

      else
      {
        v11 = MEMORY[0x1E695E0F0];
      }
    }

    else if (a4)
    {
      VNErrorForCVMLStatus(IdentityTrainingData);
      *a4 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)faceCountsForAllPersons
{
  cachedPersonUniqueIdentifierToFaceprintCountMapping = self->_cachedPersonUniqueIdentifierToFaceprintCountMapping;
  if (!cachedPersonUniqueIdentifierToFaceprintCountMapping)
  {
    v4 = objc_autoreleasePoolPush();
    ptr = self->_faceIDModel.__ptr_;
    v17 = 0u;
    v18 = 0u;
    v19 = 1065353216;
    for (i = *(ptr + 30); i; i = *i)
    {
      v20 = *(i + 4);
      v7 = *(i + 6);
      v21 = &v20;
      *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v17, v20) + 5) = v7;
    }

    v8 = objc_alloc(MEMORY[0x1E695DF90]);
    v9 = [v8 initWithCapacity:{*(&v18 + 1), v17}];
    for (j = v18; j; j = *j)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInt:*(j + 4)];
      v12 = [(NSMapTable *)self->_serialNumberToPersonUniqueIdentifierMapTable objectForKey:v11];
      if (v12)
      {
        v13 = [MEMORY[0x1E696AD98] numberWithInt:*(j + 5)];
        [v9 setObject:v13 forKeyedSubscript:v12];
      }
    }

    v14 = [v9 copy];
    v15 = self->_cachedPersonUniqueIdentifierToFaceprintCountMapping;
    self->_cachedPersonUniqueIdentifierToFaceprintCountMapping = v14;

    std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&v17);
    objc_autoreleasePoolPop(v4);
    cachedPersonUniqueIdentifierToFaceprintCountMapping = self->_cachedPersonUniqueIdentifierToFaceprintCountMapping;
  }

  return cachedPersonUniqueIdentifierToFaceprintCountMapping;
}

- (id)faceCountsForPersonsWithUniqueIdentifiers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [(VNPersonsModelFaceModelVIPv2 *)self faceCountsForAllPersons];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:{v11, v14}];
        if (v12)
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (unint64_t)faceCountForPersonWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(VNPersonsModelFaceModelVIPv2 *)self faceCountsForAllPersons];
  v6 = [v5 objectForKey:v4];
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

- (id)personUniqueIdentifiers
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMapTable count](self->_serialNumberToPersonUniqueIdentifierMapTable, "count")}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSMapTable *)self->_serialNumberToPersonUniqueIdentifierMapTable objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v9 + 1) + 8 * i)];
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)personPredictionsForFace:(id)a3 withDescriptor:(const void *)a4 limit:(unint64_t)a5 canceller:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a6;
  if (!v13)
  {
    v13 = objc_alloc_init(VNCanceller);
  }

  v14 = v13;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__19;
  v41 = __Block_byref_object_dispose__20;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__19;
  v35 = __Block_byref_object_dispose__20;
  v36 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x4012000000;
  v28[3] = __Block_byref_object_copy__8115;
  v28[4] = __Block_byref_object_dispose__8116;
  v28[5] = "";
  v28[6] = &unk_1F1975C88;
  v30 = -1;
  v29 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __94__VNPersonsModelFaceModelVIPv2_personPredictionsForFace_withDescriptor_limit_canceller_error___block_invoke;
  v21[3] = &unk_1E77B6390;
  v23 = &v37;
  v21[4] = self;
  v15 = v12;
  v26 = a4;
  v27 = a5;
  v22 = v15;
  v24 = v28;
  v25 = &v31;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __94__VNPersonsModelFaceModelVIPv2_personPredictionsForFace_withDescriptor_limit_canceller_error___block_invoke_2;
  v20[3] = &unk_1E77B69F0;
  v20[4] = v28;
  if ([(VNCanceller *)v14 tryToPerformBlock:v21 usingSignallingBlock:v20])
  {
    v16 = v38[5];
    if (v16)
    {
      v17 = v16;
      goto LABEL_12;
    }

    if (a7)
    {
      v18 = v32[5];
      goto LABEL_10;
    }
  }

  else if (a7)
  {
    v18 = VNPersonsModelErrorCancelledOperation();
LABEL_10:
    v17 = 0;
    *a7 = v18;
    goto LABEL_12;
  }

  v17 = 0;
LABEL_12:

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);

  return v17;
}

void __94__VNPersonsModelFaceModelVIPv2_personPredictionsForFace_withDescriptor_limit_canceller_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[9];
  v5 = a1[10];
  v6 = *(a1[7] + 8);
  v7 = *(a1[8] + 8);
  obj = *(v7 + 40);
  v8 = [v2 _personPredictionsForFace:v3 withDescriptor:v4 limit:v5 faceIDCanceller:v6 + 48 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)_personPredictionsForFace:(id)a3 withDescriptor:(const void *)a4 limit:(unint64_t)a5 faceIDCanceller:(CVMLCanceller *)a6 error:(id *)a7
{
  v30 = a3;
  if ([(NSMapTable *)self->_serialNumberToPersonUniqueIdentifierMapTable count])
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v11 = vision::mod::FaceIDModel::predict(self->_faceIDModel.__ptr_, a4, &v33);
    if (v11 == 128)
    {
      v29 = a7;
      v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * (v34 - v33)];
      v13 = v33;
      v28 = v34;
      if (v33 == v34)
      {
LABEL_14:
        [v12 sortUsingComparator:&__block_literal_global_8120];
        if (a5)
        {
          v24 = [v12 count];
          if (v24 > a5)
          {
            [v12 removeObjectsInRange:{a5, v24 - a5}];
          }
        }

        v25 = v12;
      }

      else
      {
        while (1)
        {
          std::map<int,double>::map[abi:ne200100](&v31, v13);
          v14 = v31;
          if (v31 != v32)
          {
            break;
          }

LABEL_13:
          std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v32[0]);
          v13 += 3;
          if (v13 == v28)
          {
            goto LABEL_14;
          }
        }

        while (1)
        {
          v15 = [MEMORY[0x1E696AD98] numberWithInt:*(v14 + 8)];
          v16 = [(NSMapTable *)self->_serialNumberToPersonUniqueIdentifierMapTable objectForKey:v15];
          if (!v16)
          {
            if (!v29)
            {
              goto LABEL_28;
            }

            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"A prediction for an unknown identity with serial number %@ and confidence %f was provided", v15, v14[5]];
            v26 = [VNError errorForInternalErrorWithLocalizedDescription:v16];
            goto LABEL_26;
          }

          v17 = *(v14 + 5);
          v18 = [VNPersonsModelPrediction alloc];
          *&v19 = v17;
          v20 = [(VNPersonsModelPrediction *)v18 initWithFaceObservation:v30 predictedPersonUniqueIdentifier:v16 confidence:v19];
          if (!v20)
          {
            break;
          }

          [v12 addObject:v20];

          v21 = v14[1];
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = v14[2];
              v23 = *v22 == v14;
              v14 = v22;
            }

            while (!v23);
          }

          v14 = v22;
          if (v22 == v32)
          {
            goto LABEL_13;
          }
        }

        if (!v29)
        {
          goto LABEL_27;
        }

        v26 = +[VNError errorForMemoryAllocationFailure];
LABEL_26:
        *v29 = v26;
LABEL_27:

LABEL_28:
        std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v32[0]);
        v25 = 0;
      }
    }

    else if (a7)
    {
      VNErrorForCVMLStatus(v11);
      *a7 = v25 = 0;
    }

    else
    {
      v25 = 0;
    }

    v31 = &v33;
    std::vector<std::map<int,double>>::__destroy_vector::operator()[abi:ne200100](&v31);
  }

  else
  {
    v25 = MEMORY[0x1E695E0F0];
  }

  return v25;
}

uint64_t __101__VNPersonsModelFaceModelVIPv2__personPredictionsForFace_withDescriptor_limit_faceIDCanceller_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
      v10 = [v4 predictedPersonUniqueIdentifier];
      v11 = [v10 description];

      v12 = [v5 predictedPersonUniqueIdentifier];
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

- (BOOL)_getSerialNumber:(int *)a3 forPersonUniqueIdentifier:(id)a4 error:(id *)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(NSMapTable *)self->_serialNumberToPersonUniqueIdentifierMapTable keyEnumerator];
  v17 = a3;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [(NSMapTable *)self->_serialNumberToPersonUniqueIdentifierMapTable objectForKey:v12];
        v14 = [v13 isEqual:v7];

        if (v14)
        {
          *v17 = [v12 intValue];

          v15 = 1;
          goto LABEL_12;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (a5)
  {
    VNPersonsModelErrorForUnknownPersonUniqueIdentifier(v7);
    *a5 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_12:

  return v15;
}

- (VNPersonsModelFaceModelVIPv2)initWithFaceIDModel:(shared_ptr<vision:(unint64_t)a4 :(unint64_t)a5 mod:(id)a6 :FaceIDModel>)a3 faceprintRequestRevision:maximumElementsPerID:personUniqueIdentifierToSerialNumberMapping:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v10 = a5;
  [VNError VNAssert:a4 >> 31 == 0 log:@"maximumElementsPerID should be less or equal than INT32_MAX"];
  v23.receiver = self;
  v23.super_class = VNPersonsModelFaceModelVIPv2;
  v11 = [(VNPersonsModelFaceModelVIPv2 *)&v23 init];
  v12 = v11;
  if (v11)
  {
    p_faceIDModel = &v11->_faceIDModel;
    v15 = *ptr;
    v14 = *(ptr + 1);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = v11->_faceIDModel.__cntrl_;
    p_faceIDModel->__ptr_ = v15;
    p_faceIDModel->__cntrl_ = v14;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    v12->_faceprintRequestRevision = cntrl;
    v17 = 0x7FFFFFFF;
    if (a4 < 0x7FFFFFFF)
    {
      v17 = a4;
    }

    v12->_maximumElementsPerID = v17;
    v18 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    serialNumberToPersonUniqueIdentifierMapTable = v12->_serialNumberToPersonUniqueIdentifierMapTable;
    v12->_serialNumberToPersonUniqueIdentifierMapTable = v18;

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __142__VNPersonsModelFaceModelVIPv2_initWithFaceIDModel_faceprintRequestRevision_maximumElementsPerID_personUniqueIdentifierToSerialNumberMapping___block_invoke;
    v21[3] = &unk_1E77B6348;
    v22 = v12;
    [v10 enumerateKeysAndObjectsUsingBlock:v21];
  }

  return v12;
}

+ (id)modelBuiltFromConfiguration:(id)a3 dataProvider:(id)a4 canceller:(id)a5 error:(id *)a6
{
  v35 = a3;
  v39 = a4;
  v34 = a5;
  v8 = [v39 faceModelPersonsCount];
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v38 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v8];
  if (!v8)
  {
    v36 = 0;
    v22 = 0;
    v9 = 0;
LABEL_21:
    v23 = [v35 faceID2ModelMaximumElementsPerID];
    v24 = v34;
    _newFaceIDModel(&v65, v23, a6);
    v25 = v65;
    if (!v65)
    {
      goto LABEL_51;
    }

    if (v36)
    {
      if (!v34)
      {
        v24 = objc_alloc_init(VNCanceller);
      }

      v56 = 0;
      v57 = &v56;
      v58 = 0x4012000000;
      v59 = __Block_byref_object_copy__8115;
      v60 = __Block_byref_object_dispose__8116;
      v61 = "";
      v62 = &unk_1F1975C88;
      v64 = -1;
      v63 = 0;
      v50 = 0;
      v51 = &v50;
      v52 = 0x3032000000;
      v53 = __Block_byref_object_copy__19;
      v54 = __Block_byref_object_dispose__20;
      v55 = 0;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3321888768;
      v43[2] = __89__VNPersonsModelFaceModelVIPv2_modelBuiltFromConfiguration_dataProvider_canceller_error___block_invoke;
      v43[3] = &unk_1F1974BF0;
      v43[6] = v25;
      v44 = v66;
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v45 = v36;
      v46 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      __p = 0;
      v48 = 0;
      v49 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v70, v71, (v71 - v70) >> 2);
      v43[4] = &v56;
      v43[5] = &v50;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __89__VNPersonsModelFaceModelVIPv2_modelBuiltFromConfiguration_dataProvider_canceller_error___block_invoke_22;
      v42[3] = &unk_1E77B69F0;
      v42[4] = &v56;
      if (![(VNCanceller *)v24 tryToPerformBlock:v43 usingSignallingBlock:v42])
      {
        if (a6)
        {
          v27 = VNPersonsModelErrorCancelledOperation();
          goto LABEL_43;
        }

LABEL_44:
        if (__p)
        {
          v48 = __p;
          operator delete(__p);
        }

        if (v46)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v46);
        }

        if (v44)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v44);
        }

        _Block_object_dispose(&v50, 8);

        _Block_object_dispose(&v56, 8);
LABEL_51:
        v29 = 0;
LABEL_63:
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        goto LABEL_65;
      }

      v26 = v51[5];
      if (v26)
      {
        if (a6)
        {
          v27 = v26;
LABEL_43:
          *a6 = v27;
          goto LABEL_44;
        }

        goto LABEL_44;
      }

      if (__p)
      {
        v48 = __p;
        operator delete(__p);
      }

      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
      }

      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      _Block_object_dispose(&v50, 8);

      _Block_object_dispose(&v56, 8);
    }

    v30 = [a1 alloc];
    v40 = v25;
    v41 = v66;
    if (v66)
    {
      atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = [v30 initWithFaceIDModel:&v40 faceprintRequestRevision:v9 maximumElementsPerID:v23 personUniqueIdentifierToSerialNumberMapping:v38];
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    goto LABEL_63;
  }

  v32 = v8;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v36 = 0;
  while (1)
  {
    v12 = [v39 faceModelUniqueIdentifierOfPersonAtIndex:v10];
    v13 = [MEMORY[0x1E696AD98] numberWithInt:(v10 + 1)];
    [v38 setObject:v13 forKeyedSubscript:v12];

    v14 = [v39 faceModelNumberOfFaceObservationsForPersonAtIndex:v10];
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
    if (v14)
    {
      break;
    }

LABEL_8:
    if ([v15 count])
    {
      v21 = objc_autoreleasePoolPush();
      v67 = v36;
      v68 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [a1 _concatenateFaceprintImageDescriptorBuffer:&v67 withFaceprints:v15 forIdentityWithSerialNumber:(v10 + 1) faceprintLabels:&v70 error:a6];
      v22 = v57;
      v36 = v56;
      v56 = 0;
      v57 = 0;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
      }

      objc_autoreleasePoolPop(v21);
      if (!v36)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v22 = v11;
    }

    ++v10;
    v11 = v22;
    if (v10 == v32)
    {
      goto LABEL_21;
    }
  }

  v16 = 0;
  while (1)
  {
    v17 = [v39 faceModelFaceObservationAtIndex:v16 forPersonAtIndex:v10];
    v18 = v17;
    if (!v17)
    {
      break;
    }

    v69 = 0;
    v19 = [v17 VNPersonsModelFaceprintWithRequestRevision:v9 error:&v69];
    v20 = v69;
    if (!v19)
    {
      if (a6)
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mismatched faceprint request revision for observation at index %lu, person at index %lu", v16, v10];
        *a6 = [VNError errorForInvalidModelWithLocalizedDescription:v28 underlyingError:v20];
      }

      goto LABEL_38;
    }

    v9 = [v19 requestRevision];
    [v15 addObject:v19];

    if (v14 == ++v16)
    {
      goto LABEL_8;
    }
  }

  if (!a6)
  {
    goto LABEL_39;
  }

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid face observation at index %lu for person at index %lu", v16, v10];
  *a6 = [VNError errorForInvalidModelWithLocalizedDescription:v18];
LABEL_38:

LABEL_39:
  v22 = v11;
LABEL_40:

  v29 = 0;
  v24 = v34;
LABEL_65:

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  return v29;
}

void *__89__VNPersonsModelFaceModelVIPv2_modelBuiltFromConfiguration_dataProvider_canceller_error___block_invoke(uint64_t a1)
{
  result = vision::mod::FaceIDModel::buildModel(*(a1 + 48), *(a1 + 64), (a1 + 80), *(*(a1 + 32) + 8) + 48);
  if (result != 128)
  {
    *(*(*(a1 + 40) + 8) + 40) = VNErrorForCVMLStatus(result);

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (shared_ptr<vision::mod::ImageDescriptorBufferFloat32>)_concatenateFaceprintImageDescriptorBuffer:(shared_ptr<vision:(id)a4 :(int)a5 mod:(void *)a6 :(id *)a7 ImageDescriptorBufferFloat32>)a3 withFaceprints:forIdentityWithSerialNumber:faceprintLabels:error:
{
  v9 = *&a5;
  v43 = a4;
  var0 = a3.var0;
  v38 = v7;
  v11 = a3.var1;
  v39 = v11;
  v12 = [(__shared_weak_count *)v11 firstObject];
  v41 = v12;
  v13 = [v12 lengthInBytes];
  v14 = *var0;
  __n = v13;
  if (!*var0)
  {
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>();
  }

  v15 = *(v14 + 8);
  if (v15 == v13)
  {
    v16 = *(v14 + 18);
    v17 = [(__shared_weak_count *)v11 count];
    v18 = v17 + v16;
    vision::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(*var0, v18, v16 > 0);
    std::vector<long long>::resize((*var0 + 8), v18);
    v40 = v17;
    if (v17)
    {
      v19 = 0;
      v20 = v16;
      do
      {
        v21 = [(__shared_weak_count *)v11 objectAtIndexedSubscript:v19];
        v22 = [v21 descriptorData];
        DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(*var0, v20);
        v24 = v22;
        memcpy(DataForKthDescriptor, [v22 bytes], __n);
        vision::mod::ImageDescriptorBufferAbstract::setDescriptorIdForKthDescriptor(*var0, v20, v43);
        v26 = *(v9 + 8);
        v25 = *(v9 + 16);
        if (v26 >= v25)
        {
          v28 = *v9;
          v29 = v26 - *v9;
          v30 = v29 >> 2;
          v31 = (v29 >> 2) + 1;
          if (v31 >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v32 = v25 - v28;
          if (v32 >> 1 > v31)
          {
            v31 = v32 >> 1;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v33 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v33);
          }

          *(4 * v30) = v43;
          v27 = 4 * v30 + 4;
          memcpy(0, v28, v29);
          v34 = *v9;
          *v9 = 0;
          *(v9 + 8) = v27;
          *(v9 + 16) = 0;
          if (v34)
          {
            operator delete(v34);
          }

          v11 = v39;
        }

        else
        {
          *v26 = v43;
          v27 = (v26 + 1);
        }

        *(v9 + 8) = v27;

        v12 = v41;
        ++v20;
        ++v19;
      }

      while (v40 != v19);
    }

    *v38 = *var0;
    *var0 = 0;
    *(var0 + 1) = 0;
  }

  else
  {
    if (a6)
    {
      v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The model is expecting a faceprint size of %lu instead of %lu", v15, v13];
      *a6 = VNPersonsModelErrorForIncompatibleFaceprint(v35);
    }

    *v38 = 0;
    *(v38 + 8) = 0;
  }

  result.var1 = v37;
  result.var0 = v36;
  return result;
}

@end
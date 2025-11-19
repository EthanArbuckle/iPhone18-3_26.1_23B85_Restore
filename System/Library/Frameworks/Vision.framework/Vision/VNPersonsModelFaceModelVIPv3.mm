@interface VNPersonsModelFaceModelVIPv3
+ (id)modelBuiltFromConfiguration:(id)a3 dataProvider:(id)a4 canceller:(id)a5 error:(id *)a6;
+ (shared_ptr<vision::mod::ImageDescriptorBufferFloat32>)_concatenateFaceprintImageDescriptorBuffer:(shared_ptr<vision:(id)a4 :(int)a5 mod:(void *)a6 :ImageDescriptorBufferFloat32>)a3 withFaceprints:forIdentityWithSerialNumber:faceprintLabels:;
- (BOOL)_getSerialNumber:(int *)a3 forPersonUniqueIdentifier:(id)a4 error:(id *)a5;
- (VNPersonsModelFaceModelVIPv3)initWithCoder:(id)a3;
- (VNPersonsModelFaceModelVIPv3)initWithFaceIDModel:(shared_ptr<vision:(unint64_t)a4 :(id)a5 mod::FaceID3Model>)a3 faceprintRequestRevision:personUniqueIdentifierToSerialNumberMapping:;
- (id).cxx_construct;
- (id)_personPredictionsForFace:(id)a3 withDescriptor:(const void *)a4 limit:(unint64_t)a5 faceIDCanceller:(CVMLCanceller *)a6 error:(id *)a7;
- (id)personPredictionsForFace:(id)a3 withDescriptor:(const void *)a4 limit:(unint64_t)a5 canceller:(id)a6 error:(id *)a7;
- (id)personUniqueIdentifiers;
- (id)trainingFaceprintsForPersonWithUniqueIdentifier:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNPersonsModelFaceModelVIPv3

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_faceprintRequestRevision forKey:@"faceprintRequestRevision"];
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSMapTable *)self->_serialNumberToPersonUniqueIdentifierMapTable dictionaryRepresentation];
  [v4 encodeObject:v6 forKey:@"serialNumberToIdentifier"];

  objc_autoreleasePoolPop(v5);
  v7 = objc_autoreleasePoolPush();
  VNNSMutableDataStreambuf::VNNSMutableDataStreambuf(&__sb);
  v13.__loc_ = 0;
  v12 = MEMORY[0x1E69E5520] + 24;
  v13.__vftable = (MEMORY[0x1E69E5520] + 64);
  std::ios_base::init(&v13, &__sb);
  v14 = 0;
  v15 = -1;
  v8 = vision::mod::FaceID3Model::serialize(self->_faceIDModel.__ptr_);
  if (v8 != 128)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v8];
    [v9 raise:*MEMORY[0x1E695DA18] format:{@"unable to serialize the face ID model (status = %@)", v10, v12}];
  }

  std::ostream::flush();
  v11 = v18;
  [v4 encodeObject:v11 forKey:@"faceIDModel"];

  std::ostream::~ostream();
  __sb = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v17);
  objc_autoreleasePoolPop(v7);
}

- (VNPersonsModelFaceModelVIPv3)initWithCoder:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = VNPersonsModelFaceModelVIPv3;
  v5 = [(VNPersonsModelFaceModelVIPv3 *)&v34 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_16;
  }

  v7 = objc_autoreleasePoolPush();
  if (_serialNumberToPersonUniqueIdentifierDictionaryClasses(void)::onceToken != -1)
  {
    dispatch_once(&_serialNumberToPersonUniqueIdentifierDictionaryClasses(void)::onceToken, &__block_literal_global_98_35503);
  }

  v8 = [v4 decodeObjectOfClasses:_serialNumberToPersonUniqueIdentifierDictionaryClasses(void)::classes forKey:@"serialNumberToIdentifier"];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    serialNumberToPersonUniqueIdentifierMapTable = v5->_serialNumberToPersonUniqueIdentifierMapTable;
    v5->_serialNumberToPersonUniqueIdentifierMapTable = v9;

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __46__VNPersonsModelFaceModelVIPv3_initWithCoder___block_invoke;
    v32[3] = &unk_1E77B63B8;
    v33 = v5;
    [v8 enumerateKeysAndObjectsUsingBlock:v32];
  }

  objc_autoreleasePoolPop(v7);
  if (!v8)
  {
    goto LABEL_17;
  }

  v5->_faceprintRequestRevision = [v4 decodeIntegerForKey:@"faceprintRequestRevision"];
  v11 = objc_autoreleasePoolPush();
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"faceIDModel"];
  if (!v12)
  {
    goto LABEL_13;
  }

  VNNSDataStreambuf::VNNSDataStreambuf(&__sb, v12);
  v27.__loc_ = 0;
  v26[0] = MEMORY[0x1E69E5518] + 24;
  v26[1] = 0;
  v27.__vftable = (MEMORY[0x1E69E5518] + 64);
  std::ios_base::init(&v27, &__sb);
  v28 = 0;
  v29 = -1;
  v24 = 0;
  v25 = 11125;
  vision::mod::FaceID3Model::deserialize(&v23, v26, &v25);
  v13 = v23;
  v24 = v23;
  if (v23)
  {
    std::shared_ptr<vision::mod::FaceID3Model>::operator=[abi:ne200100]<vision::mod::FaceID3Model,std::default_delete<vision::mod::FaceID3Model>,0>(&v5->_faceIDModel, &v24);
    if (v24)
    {
      vision::mod::FaceID3Model::~FaceID3Model(v24);
      MEMORY[0x1AC556B00]();
    }
  }

  else
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = v25;
    v16 = [MEMORY[0x1E696AD98] numberWithLongLong:v25];
    v17 = [v14 stringWithFormat:@"Face ID model data deserialization failed with code %@", v16];

    v18 = VNErrorForCVMLStatus(v15);
    v19 = [VNError errorForInternalErrorWithLocalizedDescription:v17 underlyingError:v18];
    [v4 failWithError:v19];
  }

  std::istream::~istream();

  __sb = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v31);
  if (!v13)
  {
    v20 = 0;
  }

  else
  {
LABEL_13:
    v20 = 1;
  }

  objc_autoreleasePoolPop(v11);
  if (v20)
  {
LABEL_16:
    v21 = v6;
  }

  else
  {
LABEL_17:
    v21 = 0;
  }

  return v21;
}

- (id)trainingFaceprintsForPersonWithUniqueIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  LODWORD(v21) = 0;
  if (![(VNPersonsModelFaceModelVIPv3 *)self _getSerialNumber:&v21 forPersonUniqueIdentifier:v6 error:a4])
  {
LABEL_10:
    v12 = 0;
    goto LABEL_13;
  }

  v20 = -38;
  vision::mod::FaceID3Model::getIdentityTrainingData(&v19, self->_faceIDModel.__ptr_, v21, &v20);
  v7 = v19;
  if (!v19)
  {
    if (a4)
    {
      VNErrorForCVMLStatus(v20);
      *a4 = v12 = 0;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v8 = *(v19 + 9);
  if (!v8)
  {
    v12 = MEMORY[0x1E695E0F0];
LABEL_12:
    (*(*v7 + 8))(v7);
    goto LABEL_13;
  }

  v9 = *(v19 + 8);
  v10 = *(v19 + 12);
  v11 = [(VNPersonsModelFaceModelVIPv3 *)self faceprintRequestRevision];
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
  for (i = 0; i != v8; ++i)
  {
    DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(v7, i);
    v15 = [VNFaceprint alloc];
    LODWORD(v16) = 1.0;
    v17 = [(VNFaceprint *)v15 initWithData:DataForKthDescriptor elementCount:v10 elementType:1 lengthInBytes:v9 confidence:v11 requestRevision:v16];
    [v12 addObject:v17];
  }

  if (v7)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v12;
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
  v40 = __Block_byref_object_copy__17;
  v41 = __Block_byref_object_dispose__18;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__17;
  v35 = __Block_byref_object_dispose__18;
  v36 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x4012000000;
  v28[3] = __Block_byref_object_copy__35530;
  v28[4] = __Block_byref_object_dispose__35531;
  v28[5] = "";
  v28[6] = &unk_1F1975C88;
  v30 = -1;
  v29 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __94__VNPersonsModelFaceModelVIPv3_personPredictionsForFace_withDescriptor_limit_canceller_error___block_invoke;
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
  v20[2] = __94__VNPersonsModelFaceModelVIPv3_personPredictionsForFace_withDescriptor_limit_canceller_error___block_invoke_2;
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

void __94__VNPersonsModelFaceModelVIPv3_personPredictionsForFace_withDescriptor_limit_canceller_error___block_invoke(void *a1)
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
    v11 = vision::mod::FaceID3Model::predict(self->_faceIDModel.__ptr_, a4, &v33);
    if (v11 == 128)
    {
      v29 = a7;
      v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * (v34 - v33)];
      v13 = v33;
      v28 = v34;
      if (v33 == v34)
      {
LABEL_14:
        [v12 sortWithOptions:16 usingComparator:&__block_literal_global_35535];
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

uint64_t __101__VNPersonsModelFaceModelVIPv3__personPredictionsForFace_withDescriptor_limit_faceIDCanceller_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 confidence];
  v6 = v5;
  [v4 confidence];
  if (v6 > v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = v6 < v7;
  }

  return v8;
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

- (VNPersonsModelFaceModelVIPv3)initWithFaceIDModel:(shared_ptr<vision:(unint64_t)a4 :(id)a5 mod::FaceID3Model>)a3 faceprintRequestRevision:personUniqueIdentifierToSerialNumberMapping:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = VNPersonsModelFaceModelVIPv3;
  v9 = [(VNPersonsModelFaceModelVIPv3 *)&v20 init];
  v10 = v9;
  if (v9)
  {
    p_faceIDModel = &v9->_faceIDModel;
    v13 = *ptr;
    v12 = *(ptr + 1);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = v9->_faceIDModel.__cntrl_;
    p_faceIDModel->__ptr_ = v13;
    p_faceIDModel->__cntrl_ = v12;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    v10->_faceprintRequestRevision = cntrl;
    v15 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    serialNumberToPersonUniqueIdentifierMapTable = v10->_serialNumberToPersonUniqueIdentifierMapTable;
    v10->_serialNumberToPersonUniqueIdentifierMapTable = v15;

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __121__VNPersonsModelFaceModelVIPv3_initWithFaceIDModel_faceprintRequestRevision_personUniqueIdentifierToSerialNumberMapping___block_invoke;
    v18[3] = &unk_1E77B6348;
    v19 = v10;
    [v8 enumerateKeysAndObjectsUsingBlock:v18];
  }

  return v10;
}

+ (id)modelBuiltFromConfiguration:(id)a3 dataProvider:(id)a4 canceller:(id)a5 error:(id *)a6
{
  v41 = a3;
  v8 = a4;
  v40 = a5;
  v46 = v8;
  v9 = [v8 faceModelPersonsCount];
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v45 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v9];
  if (!v9)
  {
    v44 = 0;
    v22 = 0;
    v10 = 0;
LABEL_18:
    v23 = v41;
    v24 = [v23 faceID3ModelMaximumIDs];
    v25 = v40;
    v26 = [v23 faceID3ModelMaximumElementsPerID];
    v27 = [v23 faceID3ModelSeed];
    v28 = [v23 faceID3IndexMode];
    v71 = 0;
    v72 = &v71;
    v73 = 0x4012000000;
    v74 = __Block_byref_object_copy__90;
    v75 = __Block_byref_object_dispose__91;
    v76 = "";
    v77 = 0;
    v78 = 0;
    aBlock = MEMORY[0x1E69E9820];
    p_aBlock = 3221225472;
    v65 = ___ZL15_newFaceIDModelP27VNPersonsModelConfigurationPU15__autoreleasingP7NSError_block_invoke;
    v66 = &unk_1E77B63E0;
    v67 = &v71;
    v68 = __PAIR64__(v24, v26);
    v69 = v27;
    v70 = v28;
    v29 = _Block_copy(&aBlock);
    if (VNExecuteBlock(v29, a6))
    {
      v30 = v72[2].__vftable;
      shared_owners = v72[2].__shared_owners_;
      if (shared_owners)
      {
        atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v30 = 0;
      shared_owners = 0;
    }

    _Block_object_dispose(&v71, 8);
    if (v78)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v78);
    }

    if (!v30)
    {
      goto LABEL_53;
    }

    if (v44)
    {
      if (!v40)
      {
        v25 = objc_alloc_init(VNCanceller);
      }

      v71 = 0;
      v72 = &v71;
      v73 = 0x4012000000;
      v74 = __Block_byref_object_copy__35530;
      v75 = __Block_byref_object_dispose__35531;
      v76 = "";
      v77 = &unk_1F1975C88;
      HIDWORD(v78) = -1;
      LOBYTE(v78) = 0;
      aBlock = 0;
      p_aBlock = &aBlock;
      v65 = 0x3032000000;
      v66 = __Block_byref_object_copy__17;
      v67 = __Block_byref_object_dispose__18;
      v68 = 0;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3321888768;
      v50[2] = __89__VNPersonsModelFaceModelVIPv3_modelBuiltFromConfiguration_dataProvider_canceller_error___block_invoke;
      v50[3] = &unk_1F1975BD8;
      v50[6] = v30;
      v51 = shared_owners;
      if (shared_owners)
      {
        atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v52 = v44;
      v53 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      __p = 0;
      v55 = 0;
      v56 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v60, v61, (v61 - v60) >> 2);
      v50[4] = &v71;
      v50[5] = &aBlock;
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __89__VNPersonsModelFaceModelVIPv3_modelBuiltFromConfiguration_dataProvider_canceller_error___block_invoke_20;
      v49[3] = &unk_1E77B69F0;
      v49[4] = &v71;
      if (![(VNCanceller *)v25 tryToPerformBlock:v50 usingSignallingBlock:v49])
      {
        if (a6)
        {
          v36 = VNPersonsModelErrorCancelledOperation();
          goto LABEL_45;
        }

LABEL_46:
        if (__p)
        {
          v55 = __p;
          operator delete(__p);
        }

        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }

        if (v51)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v51);
        }

        _Block_object_dispose(&aBlock, 8);

        _Block_object_dispose(&v71, 8);
LABEL_53:
        v34 = 0;
LABEL_65:
        if (shared_owners)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
        }

        v12 = v22;
        goto LABEL_68;
      }

      v35 = *(p_aBlock + 40);
      if (v35)
      {
        if (a6)
        {
          v36 = v35;
LABEL_45:
          *a6 = v36;
          goto LABEL_46;
        }

        goto LABEL_46;
      }

      if (__p)
      {
        v55 = __p;
        operator delete(__p);
      }

      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }

      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }

      _Block_object_dispose(&aBlock, 8);

      _Block_object_dispose(&v71, 8);
    }

    v37 = [a1 alloc];
    v47 = v30;
    v48 = shared_owners;
    if (shared_owners)
    {
      atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v34 = [v37 initWithFaceIDModel:&v47 faceprintRequestRevision:v10 personUniqueIdentifierToSerialNumberMapping:v45];
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    goto LABEL_65;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v44 = 0;
  while (1)
  {
    v43 = [v46 faceModelUniqueIdentifierOfPersonAtIndex:v11];
    v13 = [MEMORY[0x1E696AD98] numberWithInt:(v11 + 1)];
    [v45 setObject:v13 forKeyedSubscript:v43];

    v14 = [v46 faceModelNumberOfFaceObservationsForPersonAtIndex:v11];
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
    if (v14)
    {
      break;
    }

LABEL_8:
    v21 = objc_autoreleasePoolPush();
    v57 = v44;
    v58 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [a1 _concatenateFaceprintImageDescriptorBuffer:&v57 withFaceprints:v15 forIdentityWithSerialNumber:(v11 + 1) faceprintLabels:&v60];
    v22 = v72;
    v44 = v71;
    v71 = 0;
    v72 = 0;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      if (v72)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v72);
      }
    }

    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }

    objc_autoreleasePoolPop(v21);

    ++v11;
    v12 = v22;
    if (v11 == v9)
    {
      goto LABEL_18;
    }
  }

  v16 = 0;
  while (1)
  {
    v17 = [v46 faceModelFaceObservationAtIndex:v16 forPersonAtIndex:v11];
    v18 = v17;
    if (!v17)
    {
      break;
    }

    v59 = 0;
    v19 = [v17 VNPersonsModelFaceprintWithRequestRevision:v10 error:&v59];
    v20 = v59;
    if (!v19)
    {
      if (a6)
      {
        v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mismatched faceprint request revision for observation at index %lu, person at index %lu", v16, v11];
        *a6 = [VNError errorForInvalidModelWithLocalizedDescription:v33 underlyingError:v20];
      }

      v32 = v43;
      goto LABEL_26;
    }

    v10 = [v19 requestRevision];
    [v15 addObject:v19];

    if (v14 == ++v16)
    {
      goto LABEL_8;
    }
  }

  v32 = v43;
  if (!a6)
  {
    goto LABEL_27;
  }

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid face observation at index %lu for person at index %lu", v16, v11];
  *a6 = [VNError errorForInvalidModelWithLocalizedDescription:v18];
LABEL_26:

LABEL_27:
  v34 = 0;
  v25 = v40;
LABEL_68:

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return v34;
}

void *__89__VNPersonsModelFaceModelVIPv3_modelBuiltFromConfiguration_dataProvider_canceller_error___block_invoke(uint64_t a1)
{
  result = vision::mod::FaceID3Model::buildModel(*(a1 + 48), *(a1 + 64), (a1 + 80), *(*(a1 + 32) + 8) + 48);
  if (result != 128)
  {
    *(*(*(a1 + 40) + 8) + 40) = VNErrorForCVMLStatus(result);

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (shared_ptr<vision::mod::ImageDescriptorBufferFloat32>)_concatenateFaceprintImageDescriptorBuffer:(shared_ptr<vision:(id)a4 :(int)a5 mod:(void *)a6 :ImageDescriptorBufferFloat32>)a3 withFaceprints:forIdentityWithSerialNumber:faceprintLabels:
{
  v7 = *&a5;
  v36 = a4;
  var0 = a3.var0;
  v9 = v6;
  v10 = a3.var1;
  v33 = v10;
  v11 = [(__shared_weak_count *)v10 count];
  if (v11)
  {
    v35 = [(__shared_weak_count *)v10 firstObject];
    v12 = [v35 lengthInBytes];
    v13 = *var0;
    v32 = v9;
    __n = v12;
    if (!*var0)
    {
      std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>();
    }

    LODWORD(v15) = *(v13 + 18);
    vision::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(v13, v11 + v15, v15 > 0);
    std::vector<long long>::resize((*var0 + 8), v11 + v15);
    v14 = 0;
    v15 = v15;
    do
    {
      v16 = [(__shared_weak_count *)v10 objectAtIndexedSubscript:v14, v32];
      v17 = [v16 descriptorData];
      DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(*var0, v15);
      v19 = v17;
      memcpy(DataForKthDescriptor, [v17 bytes], __n);
      vision::mod::ImageDescriptorBufferAbstract::setDescriptorIdForKthDescriptor(*var0, v15, v36);
      v21 = *(v7 + 8);
      v20 = *(v7 + 16);
      if (v21 >= v20)
      {
        v23 = *v7;
        v24 = v21 - *v7;
        v25 = v24 >> 2;
        v26 = (v24 >> 2) + 1;
        if (v26 >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v27 = v20 - v23;
        if (v27 >> 1 > v26)
        {
          v26 = v27 >> 1;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v28 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v28);
        }

        *(4 * v25) = v36;
        v22 = 4 * v25 + 4;
        memcpy(0, v23, v24);
        v29 = *v7;
        *v7 = 0;
        *(v7 + 8) = v22;
        *(v7 + 16) = 0;
        if (v29)
        {
          operator delete(v29);
        }

        v10 = v33;
      }

      else
      {
        *v21 = v36;
        v22 = (v21 + 1);
      }

      *(v7 + 8) = v22;

      ++v15;
      ++v14;
    }

    while (v11 != v14);
    *v32 = *var0;
    *var0 = 0;
    *(var0 + 1) = 0;
  }

  else
  {
    *v9 = *var0;
    *var0 = 0;
    *(var0 + 1) = 0;
  }

  result.var1 = v31;
  result.var0 = v30;
  return result;
}

@end
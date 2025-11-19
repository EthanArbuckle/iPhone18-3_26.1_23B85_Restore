@interface VNClassificationCustomHierarchy
+ (id)customHierarchyForRequest:(id)a3 error:(id *)a4;
- (BOOL)_addRelationships:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (Class)requestClassAndReturnError:(id *)a3;
- (NSString)requestClassName;
- (VNClassificationCustomHierarchy)customHierarchyWithAdditionalParent:(id)a3 children:(id)a4 error:(id *)a5;
- (VNClassificationCustomHierarchy)customHierarchyWithAdditionalRelationships:(id)a3 error:(id *)a4;
- (VNClassificationCustomHierarchy)initWithCoder:(id)a3;
- (VNClassificationCustomHierarchy)initWithOriginatingRequestSpecifier:(id)a3 detectionLevel:(unint64_t)a4;
- (id).cxx_construct;
- (id)description;
- (shared_ptr<vision::mod::ImageClassifier_HierarchicalModel>)hierarchicalModelAndReturnError:(id *)a3;
- (shared_ptr<vision::mod::ImageClassifier_HierarchicalModel>)newHierarchicalModelAndReturnError:(id *)a3;
- (unint64_t)hash;
- (unint64_t)requestRevision;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNClassificationCustomHierarchy

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (unint64_t)requestRevision
{
  v2 = [(VNClassificationCustomHierarchy *)self originatingRequestSpecifier];
  v3 = [v2 requestRevision];

  return v3;
}

- (Class)requestClassAndReturnError:(id *)a3
{
  v4 = [(VNClassificationCustomHierarchy *)self originatingRequestSpecifier];
  v5 = [v4 requestClassAndReturnError:a3];

  return v5;
}

- (NSString)requestClassName
{
  v2 = [(VNClassificationCustomHierarchy *)self originatingRequestSpecifier];
  v3 = [v2 requestClassName];

  return v3;
}

- (VNClassificationCustomHierarchy)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Req"];
  v6 = -[VNClassificationCustomHierarchy initWithOriginatingRequestSpecifier:detectionLevel:](self, "initWithOriginatingRequestSpecifier:detectionLevel:", v5, [v4 decodeIntegerForKey:@"SCRDL"]);
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 initWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"AR"];
    if (v11)
    {
      v17 = 0;
      v12 = [(VNClassificationCustomHierarchy *)v6 _addRelationships:v11 error:&v17];
      v13 = v17;
      if (v12)
      {
        v14 = v6;
      }

      else
      {
        [v4 failWithError:v13];
        v14 = 0;
      }
    }

    else
    {
      v15 = [VNError errorForInternalErrorWithLocalizedDescription:@"could not decode additional relationships"];
      [v4 failWithError:v15];

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_originatingRequestSpecifier forKey:@"Req"];
  [v4 encodeInteger:self->_originatingRequestDetectionLevel forKey:@"SCRDL"];
  [v4 encodeObject:self->_additionalRelationships forKey:@"AR"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(VNClassificationCustomHierarchy *)self originatingRequestSpecifier];
  v7 = [v3 stringWithFormat:@"%@: %@, %@", v5, v6, self->_additionalRelationships];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNClassificationCustomHierarchy *)self requestRevision];
      if (v6 == [(VNClassificationCustomHierarchy *)v5 requestRevision])
      {
        v7 = [(VNClassificationCustomHierarchy *)self relationships];
        v8 = [(VNClassificationCustomHierarchy *)v5 relationships];
        v9 = [v7 isEqualToDictionary:v8];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(VNClassificationCustomHierarchy *)self requestRevision];
  v4 = [(VNClassificationCustomHierarchy *)self relationships];
  v5 = [v4 hash] ^ __ROR8__(v3, 51);

  return v5;
}

- (VNClassificationCustomHierarchy)customHierarchyWithAdditionalRelationships:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![v6 count])
  {
    v11 = self;
    goto LABEL_10;
  }

  v7 = [(VNClassificationCustomHierarchy *)self requestDetectionLevel];
  v8 = objc_alloc(objc_opt_class());
  v9 = [(VNClassificationCustomHierarchy *)self originatingRequestSpecifier];
  v10 = [v8 initWithOriginatingRequestSpecifier:v9 detectionLevel:v7];

  if (!v10)
  {
    if (a4)
    {
      +[VNError errorForMemoryAllocationFailure];
      *a4 = v11 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  if (![v10 _addRelationships:v6 error:a4])
  {
    goto LABEL_8;
  }

  v11 = v10;
LABEL_9:

LABEL_10:

  return v11;
}

- (VNClassificationCustomHierarchy)customHierarchyWithAdditionalParent:(id)a3 children:(id)a4 error:(id *)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v9 count])
  {
    v13 = v8;
    v14[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [(VNClassificationCustomHierarchy *)self customHierarchyWithAdditionalRelationships:v10 error:a5];
  }

  else if (a5)
  {
    [VNError errorForInvalidOperationWithLocalizedDescription:@"additional relationships must have at least one child identifier"];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_addRelationships:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![v6 count])
  {
    v11 = 1;
    goto LABEL_11;
  }

  [(VNClassificationCustomHierarchy *)self hierarchicalModelAndReturnError:a4];
  if (v16)
  {
    if (_addRelationshipsToHierarchicalModel(v16, v6, a4))
    {
      v7 = [(NSDictionary *)self->_additionalRelationships mutableCopy];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __59__VNClassificationCustomHierarchy__addRelationships_error___block_invoke;
      v14[3] = &unk_1E77B5BB0;
      v8 = v7;
      v15 = v8;
      [v6 enumerateKeysAndObjectsUsingBlock:v14];
      v9 = [v8 copy];
      additionalRelationships = self->_additionalRelationships;
      self->_additionalRelationships = v9;

      v11 = 1;
      goto LABEL_9;
    }

    cntrl = self->_hierarchicalModel_DO_NOT_ACCESS_DIRECTLY.__cntrl_;
    self->_hierarchicalModel_DO_NOT_ACCESS_DIRECTLY.__ptr_ = 0;
    self->_hierarchicalModel_DO_NOT_ACCESS_DIRECTLY.__cntrl_ = 0;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  v11 = 0;
LABEL_9:
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

LABEL_11:

  return v11;
}

void __59__VNClassificationCustomHierarchy__addRelationships_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v5 copyItems:1];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

- (shared_ptr<vision::mod::ImageClassifier_HierarchicalModel>)newHierarchicalModelAndReturnError:(id *)a3
{
  v4 = v3;
  if (a3)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = [v7 stringWithFormat:@"%@ must provide an implementation for %@", v9, v10];

    *a3 = [VNError errorForUnimplementedFunctionWithLocalizedDescription:v11];
  }

  *v4 = 0;
  v4[1] = 0;
  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (shared_ptr<vision::mod::ImageClassifier_HierarchicalModel>)hierarchicalModelAndReturnError:(id *)a3
{
  v4 = self;
  v5 = v3;
  ptr = self->_hierarchicalModel_DO_NOT_ACCESS_DIRECTLY.__ptr_;
  if (ptr)
  {
LABEL_14:
    cntrl = v4->_hierarchicalModel_DO_NOT_ACCESS_DIRECTLY.__cntrl_;
    *v5 = ptr;
    v5[1] = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  [(VNClassificationCustomHierarchy *)self newHierarchicalModelAndReturnError:?];
  if (v11 && _addRelationshipsToHierarchicalModel(v11, v4->_additionalRelationships, a3))
  {
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = v4->_hierarchicalModel_DO_NOT_ACCESS_DIRECTLY.__cntrl_;
    v4->_hierarchicalModel_DO_NOT_ACCESS_DIRECTLY.__ptr_ = v11;
    v4->_hierarchicalModel_DO_NOT_ACCESS_DIRECTLY.__cntrl_ = v12;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
    *v5 = 0;
    v5[1] = 0;
  }

  self = v12;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v9)
  {
    ptr = v4->_hierarchicalModel_DO_NOT_ACCESS_DIRECTLY.__ptr_;
    goto LABEL_14;
  }

LABEL_16:
  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (VNClassificationCustomHierarchy)initWithOriginatingRequestSpecifier:(id)a3 detectionLevel:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = VNClassificationCustomHierarchy;
  v8 = [(VNClassificationCustomHierarchy *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_originatingRequestSpecifier, a3);
    v9->_originatingRequestDetectionLevel = a4;
    v10 = objc_alloc_init(MEMORY[0x1E695DF20]);
    additionalRelationships = v9->_additionalRelationships;
    v9->_additionalRelationships = v10;
  }

  return v9;
}

+ (id)customHierarchyForRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 specifier];
  if ([v6 specifiesRequestClass:objc_opt_class()])
  {
    v7 = v5;
    v8 = [v6 requestRevision];
    if (v8 > 3737841663)
    {
      if (v8 != 3737841664)
      {
        if (v8 != 3737841665)
        {
LABEL_5:
          if (a4)
          {
            v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unable to determine classification hierarchy for a given request revision: %lu", v8];
            *a4 = [VNError errorForInternalErrorWithLocalizedDescription:v9];
          }

          goto LABEL_16;
        }

        goto LABEL_11;
      }
    }

    else if (v8 != 1)
    {
      if (v8 != 2)
      {
        goto LABEL_5;
      }

LABEL_11:
      v10 = [objc_alloc(objc_opt_class()) initWithOriginatingRequestSpecifier:v6 detectionLevel:{objc_msgSend(v7, "detectionLevel")}];
      goto LABEL_17;
    }

    if (!a4)
    {
LABEL_16:
      v10 = 0;
      goto LABEL_17;
    }

    [VNError errorForUnsupportedRevision:v8 ofRequest:v7];
    *a4 = v10 = 0;
LABEL_17:

    goto LABEL_18;
  }

  if ([v6 specifiesRequestClass:objc_opt_class()])
  {
    v10 = -[VNClassificationCustomHierarchy initWithOriginatingRequestSpecifier:detectionLevel:]([_VNImageAnalyzerMultiDetectorClassificationCustomHierarchy alloc], "initWithOriginatingRequestSpecifier:detectionLevel:", v6, [v5 detectionLevel]);
  }

  else if (a4)
  {
    [VNError errorForUnsupportedConfigurationOfRequest:v5];
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_18:

  return v10;
}

@end
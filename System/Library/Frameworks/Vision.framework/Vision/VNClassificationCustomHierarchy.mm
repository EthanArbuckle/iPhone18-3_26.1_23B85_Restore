@interface VNClassificationCustomHierarchy
+ (id)customHierarchyForRequest:(id)request error:(id *)error;
- (BOOL)_addRelationships:(id)relationships error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (Class)requestClassAndReturnError:(id *)error;
- (NSString)requestClassName;
- (VNClassificationCustomHierarchy)customHierarchyWithAdditionalParent:(id)parent children:(id)children error:(id *)error;
- (VNClassificationCustomHierarchy)customHierarchyWithAdditionalRelationships:(id)relationships error:(id *)error;
- (VNClassificationCustomHierarchy)initWithCoder:(id)coder;
- (VNClassificationCustomHierarchy)initWithOriginatingRequestSpecifier:(id)specifier detectionLevel:(unint64_t)level;
- (id).cxx_construct;
- (id)description;
- (shared_ptr<vision::mod::ImageClassifier_HierarchicalModel>)hierarchicalModelAndReturnError:(id *)error;
- (shared_ptr<vision::mod::ImageClassifier_HierarchicalModel>)newHierarchicalModelAndReturnError:(id *)error;
- (unint64_t)hash;
- (unint64_t)requestRevision;
- (void)encodeWithCoder:(id)coder;
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
  originatingRequestSpecifier = [(VNClassificationCustomHierarchy *)self originatingRequestSpecifier];
  requestRevision = [originatingRequestSpecifier requestRevision];

  return requestRevision;
}

- (Class)requestClassAndReturnError:(id *)error
{
  originatingRequestSpecifier = [(VNClassificationCustomHierarchy *)self originatingRequestSpecifier];
  v5 = [originatingRequestSpecifier requestClassAndReturnError:error];

  return v5;
}

- (NSString)requestClassName
{
  originatingRequestSpecifier = [(VNClassificationCustomHierarchy *)self originatingRequestSpecifier];
  requestClassName = [originatingRequestSpecifier requestClassName];

  return requestClassName;
}

- (VNClassificationCustomHierarchy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Req"];
  v6 = -[VNClassificationCustomHierarchy initWithOriginatingRequestSpecifier:detectionLevel:](self, "initWithOriginatingRequestSpecifier:detectionLevel:", v5, [coderCopy decodeIntegerForKey:@"SCRDL"]);
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 initWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"AR"];
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
        [coderCopy failWithError:v13];
        v14 = 0;
      }
    }

    else
    {
      v15 = [VNError errorForInternalErrorWithLocalizedDescription:@"could not decode additional relationships"];
      [coderCopy failWithError:v15];

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_originatingRequestSpecifier forKey:@"Req"];
  [coderCopy encodeInteger:self->_originatingRequestDetectionLevel forKey:@"SCRDL"];
  [coderCopy encodeObject:self->_additionalRelationships forKey:@"AR"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  originatingRequestSpecifier = [(VNClassificationCustomHierarchy *)self originatingRequestSpecifier];
  v7 = [v3 stringWithFormat:@"%@: %@, %@", v5, originatingRequestSpecifier, self->_additionalRelationships];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      requestRevision = [(VNClassificationCustomHierarchy *)self requestRevision];
      if (requestRevision == [(VNClassificationCustomHierarchy *)v5 requestRevision])
      {
        relationships = [(VNClassificationCustomHierarchy *)self relationships];
        relationships2 = [(VNClassificationCustomHierarchy *)v5 relationships];
        v9 = [relationships isEqualToDictionary:relationships2];
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
  requestRevision = [(VNClassificationCustomHierarchy *)self requestRevision];
  relationships = [(VNClassificationCustomHierarchy *)self relationships];
  v5 = [relationships hash] ^ __ROR8__(requestRevision, 51);

  return v5;
}

- (VNClassificationCustomHierarchy)customHierarchyWithAdditionalRelationships:(id)relationships error:(id *)error
{
  relationshipsCopy = relationships;
  if (![relationshipsCopy count])
  {
    selfCopy = self;
    goto LABEL_10;
  }

  requestDetectionLevel = [(VNClassificationCustomHierarchy *)self requestDetectionLevel];
  v8 = objc_alloc(objc_opt_class());
  originatingRequestSpecifier = [(VNClassificationCustomHierarchy *)self originatingRequestSpecifier];
  v10 = [v8 initWithOriginatingRequestSpecifier:originatingRequestSpecifier detectionLevel:requestDetectionLevel];

  if (!v10)
  {
    if (error)
    {
      +[VNError errorForMemoryAllocationFailure];
      *error = selfCopy = 0;
      goto LABEL_9;
    }

LABEL_8:
    selfCopy = 0;
    goto LABEL_9;
  }

  if (![v10 _addRelationships:relationshipsCopy error:error])
  {
    goto LABEL_8;
  }

  selfCopy = v10;
LABEL_9:

LABEL_10:

  return selfCopy;
}

- (VNClassificationCustomHierarchy)customHierarchyWithAdditionalParent:(id)parent children:(id)children error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  parentCopy = parent;
  childrenCopy = children;
  if ([childrenCopy count])
  {
    v13 = parentCopy;
    v14[0] = childrenCopy;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [(VNClassificationCustomHierarchy *)self customHierarchyWithAdditionalRelationships:v10 error:error];
  }

  else if (error)
  {
    [VNError errorForInvalidOperationWithLocalizedDescription:@"additional relationships must have at least one child identifier"];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_addRelationships:(id)relationships error:(id *)error
{
  relationshipsCopy = relationships;
  if (![relationshipsCopy count])
  {
    v11 = 1;
    goto LABEL_11;
  }

  [(VNClassificationCustomHierarchy *)self hierarchicalModelAndReturnError:error];
  if (v16)
  {
    if (_addRelationshipsToHierarchicalModel(v16, relationshipsCopy, error))
    {
      v7 = [(NSDictionary *)self->_additionalRelationships mutableCopy];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __59__VNClassificationCustomHierarchy__addRelationships_error___block_invoke;
      v14[3] = &unk_1E77B5BB0;
      v8 = v7;
      v15 = v8;
      [relationshipsCopy enumerateKeysAndObjectsUsingBlock:v14];
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

- (shared_ptr<vision::mod::ImageClassifier_HierarchicalModel>)newHierarchicalModelAndReturnError:(id *)error
{
  v4 = v3;
  if (error)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = [v7 stringWithFormat:@"%@ must provide an implementation for %@", v9, v10];

    *error = [VNError errorForUnimplementedFunctionWithLocalizedDescription:v11];
  }

  *v4 = 0;
  v4[1] = 0;
  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (shared_ptr<vision::mod::ImageClassifier_HierarchicalModel>)hierarchicalModelAndReturnError:(id *)error
{
  selfCopy = self;
  v5 = v3;
  ptr = self->_hierarchicalModel_DO_NOT_ACCESS_DIRECTLY.__ptr_;
  if (ptr)
  {
LABEL_14:
    cntrl = selfCopy->_hierarchicalModel_DO_NOT_ACCESS_DIRECTLY.__cntrl_;
    *v5 = ptr;
    v5[1] = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  [(VNClassificationCustomHierarchy *)self newHierarchicalModelAndReturnError:?];
  if (v11 && _addRelationshipsToHierarchicalModel(v11, selfCopy->_additionalRelationships, error))
  {
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = selfCopy->_hierarchicalModel_DO_NOT_ACCESS_DIRECTLY.__cntrl_;
    selfCopy->_hierarchicalModel_DO_NOT_ACCESS_DIRECTLY.__ptr_ = v11;
    selfCopy->_hierarchicalModel_DO_NOT_ACCESS_DIRECTLY.__cntrl_ = v12;
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
    ptr = selfCopy->_hierarchicalModel_DO_NOT_ACCESS_DIRECTLY.__ptr_;
    goto LABEL_14;
  }

LABEL_16:
  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (VNClassificationCustomHierarchy)initWithOriginatingRequestSpecifier:(id)specifier detectionLevel:(unint64_t)level
{
  specifierCopy = specifier;
  v13.receiver = self;
  v13.super_class = VNClassificationCustomHierarchy;
  v8 = [(VNClassificationCustomHierarchy *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_originatingRequestSpecifier, specifier);
    v9->_originatingRequestDetectionLevel = level;
    v10 = objc_alloc_init(MEMORY[0x1E695DF20]);
    additionalRelationships = v9->_additionalRelationships;
    v9->_additionalRelationships = v10;
  }

  return v9;
}

+ (id)customHierarchyForRequest:(id)request error:(id *)error
{
  requestCopy = request;
  specifier = [requestCopy specifier];
  if ([specifier specifiesRequestClass:objc_opt_class()])
  {
    v7 = requestCopy;
    requestRevision = [specifier requestRevision];
    if (requestRevision > 3737841663)
    {
      if (requestRevision != 3737841664)
      {
        if (requestRevision != 3737841665)
        {
LABEL_5:
          if (error)
          {
            v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unable to determine classification hierarchy for a given request revision: %lu", requestRevision];
            *error = [VNError errorForInternalErrorWithLocalizedDescription:v9];
          }

          goto LABEL_16;
        }

        goto LABEL_11;
      }
    }

    else if (requestRevision != 1)
    {
      if (requestRevision != 2)
      {
        goto LABEL_5;
      }

LABEL_11:
      v10 = [objc_alloc(objc_opt_class()) initWithOriginatingRequestSpecifier:specifier detectionLevel:{objc_msgSend(v7, "detectionLevel")}];
      goto LABEL_17;
    }

    if (!error)
    {
LABEL_16:
      v10 = 0;
      goto LABEL_17;
    }

    [VNError errorForUnsupportedRevision:requestRevision ofRequest:v7];
    *error = v10 = 0;
LABEL_17:

    goto LABEL_18;
  }

  if ([specifier specifiesRequestClass:objc_opt_class()])
  {
    v10 = -[VNClassificationCustomHierarchy initWithOriginatingRequestSpecifier:detectionLevel:]([_VNImageAnalyzerMultiDetectorClassificationCustomHierarchy alloc], "initWithOriginatingRequestSpecifier:detectionLevel:", specifier, [requestCopy detectionLevel]);
  }

  else if (error)
  {
    [VNError errorForUnsupportedConfigurationOfRequest:requestCopy];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_18:

  return v10;
}

@end
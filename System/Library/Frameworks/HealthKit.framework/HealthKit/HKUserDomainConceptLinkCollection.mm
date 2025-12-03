@interface HKUserDomainConceptLinkCollection
+ (id)collectionByMergingCollection:(id)collection otherCollection:(id)otherCollection;
- (BOOL)isEqual:(id)equal;
- (HKUserDomainConceptLinkCollection)init;
- (HKUserDomainConceptLinkCollection)initWithCoder:(id)coder;
- (HKUserDomainConceptLinkCollection)initWithLinkSetWrapper:(id)wrapper epoch:(int64_t)epoch;
- (NSArray)links;
- (id)_copyWithLinkSetWrapper:(id)wrapper;
- (id)_initWithLinks:(id)links;
- (id)_orderedSetWithDecoder:(id)decoder error:(id *)error;
- (id)collectionByAppendingLink:(id)link;
- (id)collectionByAppendingLinks:(id)links;
- (id)collectionByInsertingLink:(id)link atIndex:(unint64_t)index;
- (id)collectionByMergingCollection:(id)collection;
- (id)collectionByMergingInLegacyArrayOfLinks:(id)links;
- (id)collectionByMovingLinkFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (id)collectionByRemovingAllLinks;
- (id)collectionByRemovingLinkAtIndex:(unint64_t)index;
- (id)collectionByRemovingLinksWithTargetUUID:(id)d;
- (id)collectionByReplacingLinkAtIndex:(unint64_t)index withLink:(id)link;
- (id)collectionByRetargetingLinksWithUUID:(id)d withNewUUID:(id)iD;
- (id)collectionBySwappingLinksAtIndex:(unint64_t)index otherIndex:(unint64_t)otherIndex;
- (id)description;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKUserDomainConceptLinkCollection

- (HKUserDomainConceptLinkCollection)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKUserDomainConceptLinkCollection)initWithLinkSetWrapper:(id)wrapper epoch:(int64_t)epoch
{
  wrapperCopy = wrapper;
  v11.receiver = self;
  v11.super_class = HKUserDomainConceptLinkCollection;
  v8 = [(HKUserDomainConceptLinkCollection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_orderedSet, wrapper);
    v9->_epoch = epoch;
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (id)_initWithLinks:(id)links
{
  linksCopy = links;
  v5 = [objc_opt_class() _wrappedUDCLinks:linksCopy];

  v6 = [[HKLinkSetWrapper alloc] initWithLinks:v5];
  v7 = [(HKUserDomainConceptLinkCollection *)self initWithLinkSetWrapper:v6 epoch:0];

  return v7;
}

- (id)_copyWithLinkSetWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v5 = [[HKUserDomainConceptLinkCollection alloc] initWithLinkSetWrapper:wrapperCopy epoch:self->_epoch];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  epoch = self->_epoch;
  links = [(HKUserDomainConceptLinkCollection *)self links];
  v7 = [v3 stringWithFormat:@"<%@ %ld %@>", v4, epoch, links];

  return v7;
}

- (NSArray)links
{
  os_unfair_lock_lock(&self->_lock);
  lock_arrayRepresentation = self->_lock_arrayRepresentation;
  if (!lock_arrayRepresentation)
  {
    elements = [(HKLinkSetWrapper *)self->_orderedSet elements];
    v5 = [elements hk_map:&__block_literal_global_52];
    v6 = self->_lock_arrayRepresentation;
    self->_lock_arrayRepresentation = v5;

    lock_arrayRepresentation = self->_lock_arrayRepresentation;
  }

  v7 = lock_arrayRepresentation;
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

HKUserDomainConceptLink *__42__HKUserDomainConceptLinkCollection_links__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HKUserDomainConceptLink alloc] initWithLinkStructWrapper:v2];

  return v3;
}

- (id)collectionByAppendingLink:(id)link
{
  orderedSet = self->_orderedSet;
  linkCopy = link;
  v6 = [[HKUserDomainConceptLinkStructWrapper alloc] initWithLink:linkCopy];

  v7 = [(HKLinkSetWrapper *)orderedSet appendingElement:v6];

  v8 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v7];

  return v8;
}

- (id)collectionByAppendingLinks:(id)links
{
  v4 = [links hk_map:&__block_literal_global_306];
  v5 = [(HKLinkSetWrapper *)self->_orderedSet appendingElements:v4];
  v6 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v5];

  return v6;
}

HKUserDomainConceptLinkStructWrapper *__64__HKUserDomainConceptLinkCollection_collectionByAppendingLinks___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HKUserDomainConceptLinkStructWrapper alloc] initWithLink:v2];

  return v3;
}

- (id)collectionByInsertingLink:(id)link atIndex:(unint64_t)index
{
  orderedSet = self->_orderedSet;
  linkCopy = link;
  if ([(HKLinkSetWrapper *)orderedSet count]< index)
  {
    [HKUserDomainConceptLinkCollection collectionByInsertingLink:atIndex:];
  }

  v8 = self->_orderedSet;
  v9 = [[HKUserDomainConceptLinkStructWrapper alloc] initWithLink:linkCopy];

  v10 = [(HKLinkSetWrapper *)v8 insertingElement:v9 index:index];

  v11 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v10];

  return v11;
}

- (id)collectionByMovingLinkFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  if ([(HKLinkSetWrapper *)self->_orderedSet count]<= index)
  {
    [HKUserDomainConceptLinkCollection collectionByMovingLinkFromIndex:toIndex:];
  }

  if ([(HKLinkSetWrapper *)self->_orderedSet count]<= toIndex)
  {
    [HKUserDomainConceptLinkCollection collectionByMovingLinkFromIndex:toIndex:];
  }

  if (index == toIndex)
  {
    selfCopy = self;
  }

  else
  {
    v8 = [(HKLinkSetWrapper *)self->_orderedSet movingElementFrom:index to:toIndex];
    selfCopy = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v8];
  }

  return selfCopy;
}

- (id)collectionByRemovingLinkAtIndex:(unint64_t)index
{
  if ([(HKLinkSetWrapper *)self->_orderedSet count]<= index)
  {
    [HKUserDomainConceptLinkCollection collectionByRemovingLinkAtIndex:];
  }

  v5 = [(HKLinkSetWrapper *)self->_orderedSet removingAtIndex:index];
  v6 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v5];

  return v6;
}

- (id)collectionByRemovingLinksWithTargetUUID:(id)d
{
  v4 = [(HKLinkSetWrapper *)self->_orderedSet removingLinksWithUUID:d];
  v5 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v4];

  return v5;
}

- (id)collectionByRemovingAllLinks
{
  removingAll = [(HKLinkSetWrapper *)self->_orderedSet removingAll];
  v4 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:removingAll];

  return v4;
}

- (id)collectionByReplacingLinkAtIndex:(unint64_t)index withLink:(id)link
{
  orderedSet = self->_orderedSet;
  linkCopy = link;
  if ([(HKLinkSetWrapper *)orderedSet count]<= index)
  {
    [HKUserDomainConceptLinkCollection collectionByReplacingLinkAtIndex:withLink:];
  }

  v8 = self->_orderedSet;
  v9 = [[HKUserDomainConceptLinkStructWrapper alloc] initWithLink:linkCopy];

  v10 = [(HKLinkSetWrapper *)v8 replacingElementAt:index withElement:v9];

  v11 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v10];

  return v11;
}

- (id)collectionByRetargetingLinksWithUUID:(id)d withNewUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if ([iDCopy isEqual:dCopy])
  {
    selfCopy = self;
  }

  else
  {
    v9 = [(HKLinkSetWrapper *)self->_orderedSet retargetingLinksWithUUID:dCopy newUUID:iDCopy];
    selfCopy = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v9];
  }

  return selfCopy;
}

- (id)collectionBySwappingLinksAtIndex:(unint64_t)index otherIndex:(unint64_t)otherIndex
{
  if ([(HKLinkSetWrapper *)self->_orderedSet count]<= index)
  {
    [HKUserDomainConceptLinkCollection collectionBySwappingLinksAtIndex:otherIndex:];
  }

  if ([(HKLinkSetWrapper *)self->_orderedSet count]<= otherIndex)
  {
    [HKUserDomainConceptLinkCollection collectionBySwappingLinksAtIndex:otherIndex:];
  }

  v7 = [(HKLinkSetWrapper *)self->_orderedSet swappingElementsAt:index andAt:otherIndex];
  v8 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v7];

  return v8;
}

+ (id)collectionByMergingCollection:(id)collection otherCollection:(id)otherCollection
{
  collectionCopy = collection;
  otherCollectionCopy = otherCollection;
  v7 = otherCollectionCopy;
  if (otherCollectionCopy)
  {
    if (collectionCopy)
    {
      v8 = [collectionCopy collectionByMergingCollection:otherCollectionCopy];
    }

    else
    {
      v8 = otherCollectionCopy;
    }
  }

  else
  {
    v8 = collectionCopy;
  }

  v9 = v8;

  return v9;
}

- (id)collectionByMergingCollection:(id)collection
{
  v24 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  epoch = self->_epoch;
  v6 = collectionCopy[4];
  if (epoch <= v6)
  {
    if (epoch >= v6)
    {
      v14 = [(HKLinkSetWrapper *)self->_orderedSet mergingLinkSet:collectionCopy[1]];
      v15 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v14];

      goto LABEL_11;
    }

    _HKInitializeLogging();
    v11 = HKLogHealthOntology();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = collectionCopy[4];
      v13 = self->_epoch;
      v18 = 138543874;
      selfCopy2 = self;
      v20 = 2048;
      v21 = v12;
      v22 = 2048;
      v23 = v13;
      _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: returning other because epoch %ld is higher than self epoch %ld", &v18, 0x20u);
    }

    selfCopy3 = collectionCopy;
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogHealthOntology();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_epoch;
      v9 = collectionCopy[4];
      v18 = 138543874;
      selfCopy2 = self;
      v20 = 2048;
      v21 = v8;
      v22 = 2048;
      v23 = v9;
      _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: returning self because epoch %ld is higher than other epoch %ld", &v18, 0x20u);
    }

    selfCopy3 = self;
  }

  v15 = selfCopy3;
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)collectionByMergingInLegacyArrayOfLinks:(id)links
{
  v4 = [links hk_map:&__block_literal_global_330];
  v5 = [(HKLinkSetWrapper *)self->_orderedSet mergingLegacyElementsArray:v4];
  if ([v5 isEqual:self->_orderedSet])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v5];
  }

  v7 = selfCopy;

  return v7;
}

HKUserDomainConceptLinkStructWrapper *__77__HKUserDomainConceptLinkCollection_collectionByMergingInLegacyArrayOfLinks___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HKUserDomainConceptLinkStructWrapper alloc] initWithLink:v2];

  return v3;
}

- (unint64_t)hash
{
  links = [(HKUserDomainConceptLinkCollection *)self links];
  v3 = [links hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HKLinkSetWrapper *)self->_orderedSet isEqual:equalCopy->_orderedSet];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v29 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  orderedSet = self->_orderedSet;
  v18 = 0;
  v7 = [(HKLinkSetWrapper *)orderedSet serializedDataWithError:&v18];
  v8 = v18;
  if (v7)
  {
    if ([v7 length] < 0x32000)
    {
      [coderCopy encodeObject:v7 forKey:@"links"];
      [coderCopy encodeInteger:self->_epoch forKey:@"epoch"];
      goto LABEL_10;
    }

    _HKInitializeLogging();
    v9 = HKLogHealthOntology();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v15 = objc_opt_class();
      v16 = [(HKLinkSetWrapper *)self->_orderedSet count];
      v17 = [v7 length];
      *buf = 138544386;
      v20 = v15;
      v21 = 2048;
      selfCopy = self;
      v23 = 2048;
      v24 = v16;
      v25 = 2048;
      v26 = v17;
      v27 = 2048;
      v28 = 204800;
      _os_log_fault_impl(&dword_19197B000, v9, OS_LOG_TYPE_FAULT, "<%{public}@:%p %ld>: Dropping history because serialized data length %ld > %ld", buf, 0x34u);
    }

    v10 = [HKLinkSetWrapper alloc];
    elements = [(HKLinkSetWrapper *)self->_orderedSet elements];
    v12 = [(HKLinkSetWrapper *)v10 initWithLinks:elements];

    v13 = [[HKUserDomainConceptLinkCollection alloc] initWithLinkSetWrapper:v12 epoch:self->_epoch + 1];
    [(HKUserDomainConceptLinkCollection *)v13 encodeWithCoder:coderCopy];
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogHealthOntology();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [HKUserDomainConceptLinkCollection encodeWithCoder:];
    }
  }

LABEL_10:
  objc_autoreleasePoolPop(v5);

  v14 = *MEMORY[0x1E69E9840];
}

- (HKUserDomainConceptLinkCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14 = 0;
  v5 = [(HKUserDomainConceptLinkCollection *)self _orderedSetWithDecoder:coderCopy error:&v14];
  v6 = v14;
  if (v5)
  {
    v7 = [coderCopy decodeIntegerForKey:@"epoch"];
    v13.receiver = self;
    v13.super_class = HKUserDomainConceptLinkCollection;
    v8 = [(HKUserDomainConceptLinkCollection *)&v13 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_orderedSet, v5);
      v9->_epoch = v7;
      v9->_lock._os_unfair_lock_opaque = 0;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogHealthOntology();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HKUserDomainConceptLinkCollection initWithCoder:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_orderedSetWithDecoder:(id)decoder error:(id *)error
{
  v22[4] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DFD8];
  decoderCopy = decoder;
  v9 = [v7 alloc];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v22[2] = objc_opt_class();
  v22[3] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  v11 = [v9 initWithArray:v10];

  v12 = [decoderCopy decodeObjectOfClasses:v11 forKey:@"links"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [[HKLinkSetWrapper alloc] initWithSerializedData:v12 error:error];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [HKLinkSetWrapper alloc];
      v15 = [objc_opt_class() _wrappedUDCLinks:v12];
      v13 = [(HKLinkSetWrapper *)v14 initWithLinks:v15];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        array = [v12 array];
        v17 = [HKLinkSetWrapper alloc];
        v18 = [objc_opt_class() _wrappedUDCLinks:array];
        v13 = [(HKLinkSetWrapper *)v17 initWithLinks:v18];
      }

      else
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"HKUserDomainConceptLinkCollection.m" lineNumber:356 description:@"Unreachable code has been executed"];

        v13 = 0;
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v13;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  links = [(HKUserDomainConceptLinkCollection *)self links];
  v9 = [links countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

HKUserDomainConceptLinkStructWrapper *__54__HKUserDomainConceptLinkCollection__wrappedUDCLinks___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HKUserDomainConceptLinkStructWrapper alloc] initWithLink:v2];

  return v3;
}

- (void)collectionByInsertingLink:atIndex:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"index <= _orderedSet.count" object:? file:? lineNumber:? description:?];
}

- (void)collectionByMovingLinkFromIndex:toIndex:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"index < _orderedSet.count" object:? file:? lineNumber:? description:?];
}

- (void)collectionByMovingLinkFromIndex:toIndex:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"destination < _orderedSet.count" object:? file:? lineNumber:? description:?];
}

- (void)collectionByRemovingLinkAtIndex:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"index < _orderedSet.count" object:? file:? lineNumber:? description:?];
}

- (void)collectionByReplacingLinkAtIndex:withLink:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"index < _orderedSet.count" object:? file:? lineNumber:? description:?];
}

- (void)collectionBySwappingLinksAtIndex:otherIndex:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"idx1 < _orderedSet.count" object:? file:? lineNumber:? description:?];
}

- (void)collectionBySwappingLinksAtIndex:otherIndex:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"idx2 < _orderedSet.count" object:? file:? lineNumber:? description:?];
}

- (void)encodeWithCoder:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_3_1(&dword_19197B000, v0, v1, "%{public}@: unable to encode %{public}@: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_3_1(&dword_19197B000, v0, v1, "%{public}@: unable to decode %{public}@: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end
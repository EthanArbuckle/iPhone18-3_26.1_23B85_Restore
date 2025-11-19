@interface HKUserDomainConceptLinkCollection
+ (id)collectionByMergingCollection:(id)a3 otherCollection:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HKUserDomainConceptLinkCollection)init;
- (HKUserDomainConceptLinkCollection)initWithCoder:(id)a3;
- (HKUserDomainConceptLinkCollection)initWithLinkSetWrapper:(id)a3 epoch:(int64_t)a4;
- (NSArray)links;
- (id)_copyWithLinkSetWrapper:(id)a3;
- (id)_initWithLinks:(id)a3;
- (id)_orderedSetWithDecoder:(id)a3 error:(id *)a4;
- (id)collectionByAppendingLink:(id)a3;
- (id)collectionByAppendingLinks:(id)a3;
- (id)collectionByInsertingLink:(id)a3 atIndex:(unint64_t)a4;
- (id)collectionByMergingCollection:(id)a3;
- (id)collectionByMergingInLegacyArrayOfLinks:(id)a3;
- (id)collectionByMovingLinkFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (id)collectionByRemovingAllLinks;
- (id)collectionByRemovingLinkAtIndex:(unint64_t)a3;
- (id)collectionByRemovingLinksWithTargetUUID:(id)a3;
- (id)collectionByReplacingLinkAtIndex:(unint64_t)a3 withLink:(id)a4;
- (id)collectionByRetargetingLinksWithUUID:(id)a3 withNewUUID:(id)a4;
- (id)collectionBySwappingLinksAtIndex:(unint64_t)a3 otherIndex:(unint64_t)a4;
- (id)description;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HKUserDomainConceptLinkCollection)initWithLinkSetWrapper:(id)a3 epoch:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HKUserDomainConceptLinkCollection;
  v8 = [(HKUserDomainConceptLinkCollection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_orderedSet, a3);
    v9->_epoch = a4;
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (id)_initWithLinks:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _wrappedUDCLinks:v4];

  v6 = [[HKLinkSetWrapper alloc] initWithLinks:v5];
  v7 = [(HKUserDomainConceptLinkCollection *)self initWithLinkSetWrapper:v6 epoch:0];

  return v7;
}

- (id)_copyWithLinkSetWrapper:(id)a3
{
  v4 = a3;
  v5 = [[HKUserDomainConceptLinkCollection alloc] initWithLinkSetWrapper:v4 epoch:self->_epoch];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  epoch = self->_epoch;
  v6 = [(HKUserDomainConceptLinkCollection *)self links];
  v7 = [v3 stringWithFormat:@"<%@ %ld %@>", v4, epoch, v6];

  return v7;
}

- (NSArray)links
{
  os_unfair_lock_lock(&self->_lock);
  lock_arrayRepresentation = self->_lock_arrayRepresentation;
  if (!lock_arrayRepresentation)
  {
    v4 = [(HKLinkSetWrapper *)self->_orderedSet elements];
    v5 = [v4 hk_map:&__block_literal_global_52];
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

- (id)collectionByAppendingLink:(id)a3
{
  orderedSet = self->_orderedSet;
  v5 = a3;
  v6 = [[HKUserDomainConceptLinkStructWrapper alloc] initWithLink:v5];

  v7 = [(HKLinkSetWrapper *)orderedSet appendingElement:v6];

  v8 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v7];

  return v8;
}

- (id)collectionByAppendingLinks:(id)a3
{
  v4 = [a3 hk_map:&__block_literal_global_306];
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

- (id)collectionByInsertingLink:(id)a3 atIndex:(unint64_t)a4
{
  orderedSet = self->_orderedSet;
  v7 = a3;
  if ([(HKLinkSetWrapper *)orderedSet count]< a4)
  {
    [HKUserDomainConceptLinkCollection collectionByInsertingLink:atIndex:];
  }

  v8 = self->_orderedSet;
  v9 = [[HKUserDomainConceptLinkStructWrapper alloc] initWithLink:v7];

  v10 = [(HKLinkSetWrapper *)v8 insertingElement:v9 index:a4];

  v11 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v10];

  return v11;
}

- (id)collectionByMovingLinkFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  if ([(HKLinkSetWrapper *)self->_orderedSet count]<= a3)
  {
    [HKUserDomainConceptLinkCollection collectionByMovingLinkFromIndex:toIndex:];
  }

  if ([(HKLinkSetWrapper *)self->_orderedSet count]<= a4)
  {
    [HKUserDomainConceptLinkCollection collectionByMovingLinkFromIndex:toIndex:];
  }

  if (a3 == a4)
  {
    v7 = self;
  }

  else
  {
    v8 = [(HKLinkSetWrapper *)self->_orderedSet movingElementFrom:a3 to:a4];
    v7 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v8];
  }

  return v7;
}

- (id)collectionByRemovingLinkAtIndex:(unint64_t)a3
{
  if ([(HKLinkSetWrapper *)self->_orderedSet count]<= a3)
  {
    [HKUserDomainConceptLinkCollection collectionByRemovingLinkAtIndex:];
  }

  v5 = [(HKLinkSetWrapper *)self->_orderedSet removingAtIndex:a3];
  v6 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v5];

  return v6;
}

- (id)collectionByRemovingLinksWithTargetUUID:(id)a3
{
  v4 = [(HKLinkSetWrapper *)self->_orderedSet removingLinksWithUUID:a3];
  v5 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v4];

  return v5;
}

- (id)collectionByRemovingAllLinks
{
  v3 = [(HKLinkSetWrapper *)self->_orderedSet removingAll];
  v4 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v3];

  return v4;
}

- (id)collectionByReplacingLinkAtIndex:(unint64_t)a3 withLink:(id)a4
{
  orderedSet = self->_orderedSet;
  v7 = a4;
  if ([(HKLinkSetWrapper *)orderedSet count]<= a3)
  {
    [HKUserDomainConceptLinkCollection collectionByReplacingLinkAtIndex:withLink:];
  }

  v8 = self->_orderedSet;
  v9 = [[HKUserDomainConceptLinkStructWrapper alloc] initWithLink:v7];

  v10 = [(HKLinkSetWrapper *)v8 replacingElementAt:a3 withElement:v9];

  v11 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v10];

  return v11;
}

- (id)collectionByRetargetingLinksWithUUID:(id)a3 withNewUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqual:v6])
  {
    v8 = self;
  }

  else
  {
    v9 = [(HKLinkSetWrapper *)self->_orderedSet retargetingLinksWithUUID:v6 newUUID:v7];
    v8 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v9];
  }

  return v8;
}

- (id)collectionBySwappingLinksAtIndex:(unint64_t)a3 otherIndex:(unint64_t)a4
{
  if ([(HKLinkSetWrapper *)self->_orderedSet count]<= a3)
  {
    [HKUserDomainConceptLinkCollection collectionBySwappingLinksAtIndex:otherIndex:];
  }

  if ([(HKLinkSetWrapper *)self->_orderedSet count]<= a4)
  {
    [HKUserDomainConceptLinkCollection collectionBySwappingLinksAtIndex:otherIndex:];
  }

  v7 = [(HKLinkSetWrapper *)self->_orderedSet swappingElementsAt:a3 andAt:a4];
  v8 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v7];

  return v8;
}

+ (id)collectionByMergingCollection:(id)a3 otherCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      v8 = [v5 collectionByMergingCollection:v6];
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

- (id)collectionByMergingCollection:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  epoch = self->_epoch;
  v6 = v4[4];
  if (epoch <= v6)
  {
    if (epoch >= v6)
    {
      v14 = [(HKLinkSetWrapper *)self->_orderedSet mergingLinkSet:v4[1]];
      v15 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v14];

      goto LABEL_11;
    }

    _HKInitializeLogging();
    v11 = HKLogHealthOntology();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v4[4];
      v13 = self->_epoch;
      v18 = 138543874;
      v19 = self;
      v20 = 2048;
      v21 = v12;
      v22 = 2048;
      v23 = v13;
      _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: returning other because epoch %ld is higher than self epoch %ld", &v18, 0x20u);
    }

    v10 = v4;
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogHealthOntology();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_epoch;
      v9 = v4[4];
      v18 = 138543874;
      v19 = self;
      v20 = 2048;
      v21 = v8;
      v22 = 2048;
      v23 = v9;
      _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: returning self because epoch %ld is higher than other epoch %ld", &v18, 0x20u);
    }

    v10 = self;
  }

  v15 = v10;
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)collectionByMergingInLegacyArrayOfLinks:(id)a3
{
  v4 = [a3 hk_map:&__block_literal_global_330];
  v5 = [(HKLinkSetWrapper *)self->_orderedSet mergingLegacyElementsArray:v4];
  if ([v5 isEqual:self->_orderedSet])
  {
    v6 = self;
  }

  else
  {
    v6 = [(HKUserDomainConceptLinkCollection *)self _copyWithLinkSetWrapper:v5];
  }

  v7 = v6;

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
  v2 = [(HKUserDomainConceptLinkCollection *)self links];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HKLinkSetWrapper *)self->_orderedSet isEqual:v4->_orderedSet];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  orderedSet = self->_orderedSet;
  v18 = 0;
  v7 = [(HKLinkSetWrapper *)orderedSet serializedDataWithError:&v18];
  v8 = v18;
  if (v7)
  {
    if ([v7 length] < 0x32000)
    {
      [v4 encodeObject:v7 forKey:@"links"];
      [v4 encodeInteger:self->_epoch forKey:@"epoch"];
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
      v22 = self;
      v23 = 2048;
      v24 = v16;
      v25 = 2048;
      v26 = v17;
      v27 = 2048;
      v28 = 204800;
      _os_log_fault_impl(&dword_19197B000, v9, OS_LOG_TYPE_FAULT, "<%{public}@:%p %ld>: Dropping history because serialized data length %ld > %ld", buf, 0x34u);
    }

    v10 = [HKLinkSetWrapper alloc];
    v11 = [(HKLinkSetWrapper *)self->_orderedSet elements];
    v12 = [(HKLinkSetWrapper *)v10 initWithLinks:v11];

    v13 = [[HKUserDomainConceptLinkCollection alloc] initWithLinkSetWrapper:v12 epoch:self->_epoch + 1];
    [(HKUserDomainConceptLinkCollection *)v13 encodeWithCoder:v4];
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

- (HKUserDomainConceptLinkCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v14 = 0;
  v5 = [(HKUserDomainConceptLinkCollection *)self _orderedSetWithDecoder:v4 error:&v14];
  v6 = v14;
  if (v5)
  {
    v7 = [v4 decodeIntegerForKey:@"epoch"];
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
    v10 = self;
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogHealthOntology();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HKUserDomainConceptLinkCollection initWithCoder:];
    }

    v10 = 0;
  }

  return v10;
}

- (id)_orderedSetWithDecoder:(id)a3 error:(id *)a4
{
  v22[4] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DFD8];
  v8 = a3;
  v9 = [v7 alloc];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v22[2] = objc_opt_class();
  v22[3] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  v11 = [v9 initWithArray:v10];

  v12 = [v8 decodeObjectOfClasses:v11 forKey:@"links"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [[HKLinkSetWrapper alloc] initWithSerializedData:v12 error:a4];
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
        v16 = [v12 array];
        v17 = [HKLinkSetWrapper alloc];
        v18 = [objc_opt_class() _wrappedUDCLinks:v16];
        v13 = [(HKLinkSetWrapper *)v17 initWithLinks:v18];
      }

      else
      {
        v19 = [MEMORY[0x1E696AAA8] currentHandler];
        [v19 handleFailureInMethod:a2 object:self file:@"HKUserDomainConceptLinkCollection.m" lineNumber:356 description:@"Unreachable code has been executed"];

        v13 = 0;
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v13;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(HKUserDomainConceptLinkCollection *)self links];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

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
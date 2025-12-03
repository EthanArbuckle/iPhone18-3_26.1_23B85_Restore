@interface VNWeakTypeWrapperCollection
- (BOOL)isEqual:(id)equal;
- (VNWeakTypeWrapperCollection)init;
- (id)allObjectsDroppingWeakZeroedObjects:(BOOL)objects;
- (id)description;
- (id)findObjectMeetingSearchCriteria:(id)criteria droppingWeakZeroedObjects:(BOOL)objects;
- (void)_enumerateObjectsDroppingWeakZeroedObjects:(BOOL)objects usingBlock:(id)block;
- (void)addObject:(id)object droppingWeakZeroedObjects:(BOOL)objects;
@end

@implementation VNWeakTypeWrapperCollection

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = VNWeakTypeWrapperCollection;
  v4 = [(VNWeakTypeWrapperCollection *)&v7 description];
  v5 = [v3 initWithFormat:@"%@: %@", v4, self->_weakObjectWrappers];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSMutableArray *)self->_weakObjectWrappers isEqualToArray:equalCopy->_weakObjectWrappers];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)allObjectsDroppingWeakZeroedObjects:(BOOL)objects
{
  objectsCopy = objects;
  [(NSRecursiveLock *)self->_weakObjectWrappersLock lock];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__VNWeakTypeWrapperCollection_allObjectsDroppingWeakZeroedObjects___block_invoke;
  v9[3] = &unk_1E77B27E0;
  v6 = v5;
  v10 = v6;
  [(VNWeakTypeWrapperCollection *)self _enumerateObjectsDroppingWeakZeroedObjects:objectsCopy usingBlock:v9];
  v7 = [v6 copy];

  [(NSRecursiveLock *)self->_weakObjectWrappersLock unlock];

  return v7;
}

- (id)findObjectMeetingSearchCriteria:(id)criteria droppingWeakZeroedObjects:(BOOL)objects
{
  objectsCopy = objects;
  criteriaCopy = criteria;
  [(NSRecursiveLock *)self->_weakObjectWrappersLock lock];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2174;
  v20 = __Block_byref_object_dispose__2175;
  v21 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __89__VNWeakTypeWrapperCollection_findObjectMeetingSearchCriteria_droppingWeakZeroedObjects___block_invoke;
  v13 = &unk_1E77B27B8;
  v7 = criteriaCopy;
  v14 = v7;
  v15 = &v16;
  [(VNWeakTypeWrapperCollection *)self _enumerateObjectsDroppingWeakZeroedObjects:objectsCopy usingBlock:&v10];
  v8 = v17[5];

  _Block_object_dispose(&v16, 8);
  [(NSRecursiveLock *)self->_weakObjectWrappersLock unlock:v10];

  return v8;
}

void __89__VNWeakTypeWrapperCollection_findObjectMeetingSearchCriteria_droppingWeakZeroedObjects___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)addObject:(id)object droppingWeakZeroedObjects:(BOOL)objects
{
  objectsCopy = objects;
  objectCopy = object;
  [(NSRecursiveLock *)self->_weakObjectWrappersLock lock];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __67__VNWeakTypeWrapperCollection_addObject_droppingWeakZeroedObjects___block_invoke;
  v13 = &unk_1E77B2790;
  v7 = objectCopy;
  v14 = v7;
  v15 = &v16;
  [(VNWeakTypeWrapperCollection *)self _enumerateObjectsDroppingWeakZeroedObjects:objectsCopy usingBlock:&v10];
  if ((v17[3] & 1) == 0)
  {
    v8 = [VNWeakTypeWrapper alloc];
    v9 = [(VNWeakTypeWrapper *)v8 initWithObject:v7, v10, v11, v12, v13];
    [(NSMutableArray *)self->_weakObjectWrappers addObject:v9];
  }

  _Block_object_dispose(&v16, 8);
  [(NSRecursiveLock *)self->_weakObjectWrappersLock unlock];
}

uint64_t __67__VNWeakTypeWrapperCollection_addObject_droppingWeakZeroedObjects___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) isEqual:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (void)_enumerateObjectsDroppingWeakZeroedObjects:(BOOL)objects usingBlock:(id)block
{
  objectsCopy = objects;
  blockCopy = block;
  v7 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  if (objectsCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
  }

  weakObjectWrappers = self->_weakObjectWrappers;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__VNWeakTypeWrapperCollection__enumerateObjectsDroppingWeakZeroedObjects_usingBlock___block_invoke;
  v11[3] = &unk_1E77B2768;
  v16 = objectsCopy;
  v9 = v7;
  v12 = v9;
  v14 = &v19;
  v15 = v17;
  v10 = blockCopy;
  v13 = v10;
  [(NSMutableArray *)weakObjectWrappers enumerateObjectsUsingBlock:v11];
  if (*(v20 + 24) == 1)
  {
    [(NSMutableArray *)self->_weakObjectWrappers removeObjectsAtIndexes:v9];
  }

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v19, 8);
}

void __85__VNWeakTypeWrapperCollection__enumerateObjectsDroppingWeakZeroedObjects_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectAndReturnError:0];
  if (v5 || *(a1 + 64) != 1)
  {
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    [*(a1 + 32) addIndex:a3];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (VNWeakTypeWrapperCollection)init
{
  v8.receiver = self;
  v8.super_class = VNWeakTypeWrapperCollection;
  v2 = [(VNWeakTypeWrapperCollection *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    weakObjectWrappers = v2->_weakObjectWrappers;
    v2->_weakObjectWrappers = v3;

    v5 = objc_alloc_init(MEMORY[0x1E696AE68]);
    weakObjectWrappersLock = v2->_weakObjectWrappersLock;
    v2->_weakObjectWrappersLock = v5;
  }

  return v2;
}

@end
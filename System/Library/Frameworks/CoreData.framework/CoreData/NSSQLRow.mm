@interface NSSQLRow
+ (void)allocForSQLEntity:(uint64_t)a1;
- (BOOL)hasUniqueConstraintDiffFrom:(const __CFBitVector *)a1;
- (CFBitVectorRef)newColumnMaskFrom:(unint64_t)a3 columnInclusionOptions:;
- (NSSQLRow)initWithSQLEntity:(id)a3 objectID:(id)a4;
- (NSSQLRow)initWithSQLEntity:(id)a3 ownedObjectID:(id)a4 andTimestamp:(double)a5;
- (const)knownKeyValuesPointer;
- (id)_snapshot_;
- (id)copy;
- (id)description;
- (id)newObjectIDForToOne:(id)a3;
- (id)valueForKey:(id)a3;
- (uint64_t)_validateToOnes;
- (unint64_t)attributeValueForSlot:(unint64_t *)result;
- (unint64_t)foreignKeyForSlot:(unint64_t *)result;
- (unint64_t)version;
- (void)setForeignKeySlot:(unsigned int)a3 int64:(int64_t)a4;
- (void)setObjectID:(id)a3;
@end

@implementation NSSQLRow

- (id)_snapshot_
{
  v3 = atomic_load(&self->super._invalidToOnes);
  if (v3)
  {
    [(NSSQLRow *)self _validateToOnes];
  }

  return atomic_load(&self->_snapshot);
}

- (const)knownKeyValuesPointer
{
  v2 = atomic_load(&self->super._invalidToOnes);
  if (v2)
  {
    [(NSSQLRow *)self _validateToOnes];
  }

  return 0;
}

- (uint64_t)_validateToOnes
{
  v20 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if ((*(result + 16) & 1) == 0)
    {
      v2 = atomic_load((result + 40));
      v3 = [*(v2 + 16) _storeInfo1];
      v4 = [v3 foreignKeyColumns];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      result = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (result)
      {
        v5 = result;
        v6 = *v16;
        do
        {
          v7 = 0;
          do
          {
            if (*v16 != v6)
            {
              objc_enumerationMutation(v4);
            }

            v8 = [*(*(&v15 + 1) + 8 * v7) toOneRelationship];
            v9 = v8;
            if (!v8 || (v8[88] & 1) == 0)
            {
              v10 = [v8 slot];
              if (v3)
              {
                v11 = v3[48];
              }

              else
              {
                v11 = 0;
              }

              v12 = [v1 newObjectIDForToOne:v9];
              v13 = atomic_load((v1 + 40));
              snapshot_set_object(v13, v11 + v10, v12);
            }

            ++v7;
          }

          while (v5 != v7);
          result = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
          v5 = result;
        }

        while (result);
      }

      atomic_store(0, (v1 + 20));
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copy
{
  if (!self || (*&self->super._externalRefFlags & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v3 = atomic_load(&self->_snapshot);
    v4 = [*(v3 + 16) _storeInfo1];
  }

  v5 = [+[NSSQLRow allocForSQLEntity:](NSSQLRow v4)];
  v6 = atomic_load((v5 + 40));
  v7 = atomic_load(&self->_snapshot);
  atomic_store([v7 mutableCopy], (v5 + 40));
  v8 = atomic_load((v5 + 40));
  *(v8 + 24) |= 1u;
  v9 = atomic_load((v5 + 40));
  if (v6 != v9)
  {
  }

  v10 = [-[NSSQLEntity virtualForeignKeyColumns](v4) count];
  v11 = [objc_msgSend(v4 "foreignEntityKeyColumns")];
  v12 = [objc_msgSend(v4 "foreignOrderKeyColumns")];
  if (v11 + v10 + v12)
  {
    memcpy((v5 + _NSSQLRowInstanceSize), self + _NSSQLRowInstanceSize, 2 * v11 + 8 * v10 + 4 * v12);
  }

  *(v5 + 16) = self->super._externalRefFlags;
  *(v5 + 32) = self->super._birth;
  [(NSPersistentCacheRow *)v5 copyRelationshipCachesFrom:?];
  return v5;
}

- (unint64_t)version
{
  if (self)
  {
    v2 = atomic_load((self + 40));
    return *(v2 + 12);
  }

  return self;
}

+ (void)allocForSQLEntity:(uint64_t)a1
{
  v3 = objc_opt_self();
  v4 = [-[NSSQLEntity virtualForeignKeyColumns](a2) count];
  v5 = [objc_msgSend(a2 "foreignEntityKeyColumns")];
  v6 = 2 * v5 + 8 * v4 + 4 * [objc_msgSend(a2 "foreignOrderKeyColumns")];

  return _PFAllocateObject(v3, v6);
}

- (NSSQLRow)initWithSQLEntity:(id)a3 objectID:(id)a4
{
  v6 = a4;
  Current = CFAbsoluteTimeGetCurrent();

  return [(NSSQLRow *)self initWithSQLEntity:a3 ownedObjectID:v6 andTimestamp:Current];
}

- (NSSQLRow)initWithSQLEntity:(id)a3 ownedObjectID:(id)a4 andTimestamp:(double)a5
{
  v12.receiver = self;
  v12.super_class = NSSQLRow;
  v7 = [(NSPersistentCacheRow *)&v12 initWithOptions:0 andTimestamp:a5];
  if (v7)
  {
    atomic_store(objc_alloc_init(_PFCDSnapshotClassForEntity([a3 entityDescription])), v7 + 5);
    v8 = atomic_load(v7 + 5);
    *(v8 + 16) = a4;
    v9 = atomic_load(v7 + 5);
    snapshot_set_transient_default_values(v9);
    v10 = atomic_load(v7 + 5);
    *(v10 + 24) |= 1u;
    atomic_store(0, v7 + 20);
    *(v7 + 4) = *(v7 + 4) & 0xFFFFFFFE | [a4 isTemporaryID];
    *(v7 + 4) = *(v7 + 4) & 0xFFFF8001 | (2 * ([-[NSSQLEntity virtualForeignKeyColumns](a3) count] & 0x3FFF));
    *(v7 + 4) = *(v7 + 4) & 0xE0007FFF | (([objc_msgSend(a3 "foreignOrderKeyColumns")] & 0x3FFF) << 15);
  }

  return v7;
}

- (id)newObjectIDForToOne:(id)a3
{
  v5 = atomic_load(&self->_snapshot);
  v6 = *(v5 + 16);
  result = -[NSSQLRow foreignKeyForSlot:](self, [*(a3 + 8) slot]);
  if (result)
  {
    v8 = result;
    v9 = [v6 persistentStore];
    v10 = *(a3 + 9);
    if (v10)
    {
      v11 = self + _NSSQLRowInstanceSize + ((4 * *&self->super._externalRefFlags) & 0x1FFF8) + ((self->super._externalRefFlags >> 13) & 0xFFFC);
      v12 = *&v11[2 * [v10 slot]];
      v13 = atomic_load(&self->_snapshot);
      _sqlEntityForEntityID(*([*(v13 + 16) _storeInfo1] + 16), v12);
    }

    else
    {
      v14 = *(a3 + 6);
    }

    return [NSSQLCore newForeignKeyID:v9 entity:v8];
  }

  return result;
}

- (unint64_t)foreignKeyForSlot:(unint64_t *)result
{
  if (result)
  {
    v3 = result;
    v4 = atomic_load(result + 5);
    v5 = *([*(v4 + 16) entity] + 112);
    v6 = *(v5 + 104);
    v7 = a2 >= v6;
    v8 = a2 - v6;
    if (v7)
    {
      return *(&v3[v8] + _NSSQLRowInstanceSize);
    }

    else
    {
      v9 = *(v5 + 96);
      v10 = atomic_load(v3 + 5);
      result = snapshot_get_object(v10, v9 + a2);
      if (result)
      {
        v11 = result;
        if ([result isNSNumber])
        {

          return [v11 longLongValue];
        }

        else
        {

          return [v11 _referenceData64];
        }
      }
    }
  }

  return result;
}

- (id)description
{
  context = objc_autoreleasePoolPush();
  if (!self || (*&self->super._externalRefFlags & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v3 = atomic_load(&self->_snapshot);
    v4 = [*(v3 + 16) _storeInfo1];
  }

  v5 = MEMORY[0x1E696AD60];
  v52.receiver = self;
  v52.super_class = NSSQLRow;
  v6 = [(NSSQLRow *)&v52 description];
  v7 = [v4 name];
  v51 = v4;
  if (self)
  {
    v8 = atomic_load(&self->_snapshot);
    v9 = [*(v8 + 16) _storeInfo1];
    if (v9)
    {
      v10 = *(v9 + 184);
    }

    else
    {
      v10 = 0;
    }

    v11 = atomic_load(&self->_snapshot);
    v12 = [*(v11 + 16) _referenceData64];
    v13 = atomic_load(&self->_snapshot);
    v14 = *(v13 + 12);
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v14 = 0;
  }

  v15 = [v5 stringWithFormat:@"%@{%@ %d-%qd-%qi", v6, v7, v10, v12, v14];
  v16 = [v51 attributeColumns];
  v17 = [v16 count];
  if (v17)
  {
    v18 = v17;
    for (i = 0; i != v18; ++i)
    {
      v20 = [v16 objectAtIndex:i];
      v21 = [v20 name];
      v22 = [v20 propertyDescription];
      if (v22 && [v22 superCompositeAttribute])
      {
        v21 = [objc_msgSend(v20 "propertyDescription")];
      }

      v23 = atomic_load(&self->_snapshot);
      v24 = [v23 valueForKeyPath:v21];
      if (v24)
      {
        v25 = v24;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v15 appendFormat:@" %@=<NSFileBackedFuture fileSize=%lu>", v21, objc_msgSend(v25, "fileSize")];
          }

          else
          {
            [v15 appendFormat:@" %@=<NSData len=%lu>", v21, objc_msgSend(v25, "length")];
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v15 appendFormat:@" %@=%@", v21, v25];
          }

          else
          {
            [v15 appendFormat:@" %@=%@", v21, objc_msgSend(v25, "description")];
          }
        }
      }

      else
      {
        [v15 appendFormat:@" %@=NULL", v21, v49];
      }
    }
  }

  v26 = [v51 foreignKeyColumns];
  v27 = [v26 count];
  if (v27)
  {
    v28 = v27;
    for (j = 0; j != v28; ++j)
    {
      v30 = [v26 objectAtIndex:j];
      [v15 appendFormat:@" %@=%qd", objc_msgSend(v30, "name"), -[NSSQLRow foreignKeyForSlot:](self, objc_msgSend(v30, "slot"))];
    }
  }

  v31 = [v51 foreignEntityKeyColumns];
  v32 = [v31 count];
  if (v32)
  {
    v33 = v32;
    for (k = 0; k != v33; ++k)
    {
      v35 = [v31 objectAtIndex:k];
      v36 = [v35 name];
      v37 = [v35 slot];
      if (self)
      {
        v38 = *(&self->super.super.isa + 2 * v37 + _NSSQLRowInstanceSize + ((4 * *&self->super._externalRefFlags) & 0x1FFF8) + ((self->super._externalRefFlags >> 13) & 0xFFFC));
      }

      else
      {
        v38 = 0;
      }

      [v15 appendFormat:@" %@=%u", v36, v38];
    }
  }

  v39 = [v51 foreignOrderKeyColumns];
  v40 = [v39 count];
  if (v40)
  {
    v41 = v40;
    for (m = 0; m != v41; ++m)
    {
      v43 = [v39 objectAtIndex:m];
      v44 = [v43 name];
      v45 = [v43 slot];
      if (self)
      {
        v46 = *(&self->super.super.isa + 4 * v45 + _NSSQLRowInstanceSize + ((4 * *&self->super._externalRefFlags) & 0x1FFF8));
      }

      else
      {
        v46 = 0;
      }

      [v15 appendFormat:@" %@=%u", v44, v46];
    }
  }

  [v15 appendFormat:@" and to-manys=%p}", self->super._toManyMap];
  v47 = v15;
  objc_autoreleasePoolPop(context);
  return v15;
}

- (void)setObjectID:(id)a3
{
  v5 = atomic_load(&self->_snapshot);
  snapshot_set_objectID(v5, a3);
  self->super._externalRefFlags = (*&self->super._externalRefFlags & 0xFFFFFFFE | [a3 isTemporaryID]);
}

- (void)setForeignKeySlot:(unsigned int)a3 int64:(int64_t)a4
{
  atomic_store(1u, &self->super._invalidToOnes);
  v7 = atomic_load(&self->_snapshot);
  v8 = *([v7[2] entity] + 112);
  v9 = *(v8 + 104);
  v10 = a3 >= v9;
  v11 = a3 - v9;
  if (v10)
  {
    *(&self->super.super.isa + 8 * v11 + _NSSQLRowInstanceSize) = a4;
  }

  else
  {
    v12 = *(v8 + 96);
    if (a4)
    {
      if (HIDWORD(a4))
      {
        v16 = a4;
        v13 = &v16;
        v14 = kCFNumberLongLongType;
      }

      else
      {
        v17 = a4;
        v13 = &v17;
        v14 = kCFNumberIntType;
      }

      v15 = CFNumberCreate(0, v14, v13);
    }

    else
    {
      v15 = 0;
    }

    snapshot_set_object(v7, v12 + a3, v15);
  }
}

- (id)valueForKey:(id)a3
{
  if (!self || (*&self->super._externalRefFlags & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v5 = atomic_load(&self->_snapshot);
    v6 = [*(v5 + 16) _storeInfo1];
    v7 = v6;
    if (v6)
    {
      v8 = [*(v6 + 40) objectForKey:a3];
      if (v8)
      {
        v9 = v8;
        v10 = v8[24];
        if (v10 != 7)
        {
          if (v10 == 1)
          {
            v11 = [v8 slot];

            return [(NSSQLRow *)self attributeValueForSlot:v11];
          }

          if ([v8 propertyType] != 3)
          {
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"unexpected key found for: %@", v9), 0}]);
          }
        }

        v17 = atomic_load(&self->super._invalidToOnes);
        if (v17)
        {
          [(NSSQLRow *)self _validateToOnes];
        }

        v15 = atomic_load(&self->_snapshot);
        v16 = [v9 slot] + v7[48];
        goto LABEL_23;
      }
    }
  }

  if (a3 != @"objectID" && ![@"objectID" isEqualToString:a3])
  {
    v13 = [objc_msgSend(objc_msgSend(v7 "entityDescription")];
    if ([v13 _propertyType] != 7)
    {
      v18.receiver = self;
      v18.super_class = NSSQLRow;
      return [(NSSQLRow *)&v18 valueForKey:a3];
    }

    v14 = [-[NSSQLEntity sqlAttributesForCompositeAttributeName:](v7 objc_msgSend(v13];
    v15 = atomic_load(&self->_snapshot);
    v16 = [v14 slot];
LABEL_23:

    return snapshot_get_object(v15, v16);
  }

  return [(NSSQLRow *)self objectID];
}

- (unint64_t)attributeValueForSlot:(unint64_t *)result
{
  if (result)
  {
    v3 = result;
    v4 = atomic_load(result + 5);
    if ((*(v4 + (a2 >> 3) + 28) >> (a2 & 7)))
    {
      return 0;
    }

    v5 = atomic_load(result + 5);
    type = snapshot_get_type(v5, a2);
    v22 = 0;
    at = 0.0;
    v21 = 0;
    v19 = 0;
    v7 = atomic_load(v3 + 5);
    if (type > 0x68u)
    {
      switch(type)
      {
        case 'i':
          Class = object_getClass(v7);
          v12 = *&v7[*(object_getIndexedIvars(Class) + a2 + 19)];
          break;
        case 'q':
          v18 = object_getClass(v7);
          v21 = *&v7[*(object_getIndexedIvars(v18) + a2 + 19)];
          p_at = &v21;
          v10 = kCFNumberLongLongType;
          goto LABEL_21;
        case 's':
          v11 = object_getClass(v7);
          v12 = *&v7[*(object_getIndexedIvars(v11) + a2 + 19)];
          break;
        default:
          return snapshot_get_object(v7, a2);
      }
    }

    else
    {
      if (type != 99)
      {
        if (type == 100)
        {
          v15 = object_getClass(v7);
          at = *&v7[*(object_getIndexedIvars(v15) + a2 + 19)];
          v16 = atomic_load(v3 + 5);
          if ([*(*(objc_msgSend(*(v16 + 16) "entity") + 96) + 24 + 8 * a2)] == 900)
          {
            v17 = CFDateCreate(0, at);
            return v17;
          }

          p_at = &at;
          v10 = kCFNumberDoubleType;
LABEL_21:
          v17 = CFNumberCreate(0, v10, p_at);
          return v17;
        }

        if (type == 102)
        {
          v8 = object_getClass(v7);
          v19 = *&v7[*(object_getIndexedIvars(v8) + a2 + 19)];
          p_at = &v19;
          v10 = kCFNumberFloatType;
          goto LABEL_21;
        }

        return snapshot_get_object(v7, a2);
      }

      v13 = object_getClass(v7);
      v12 = v7[*(object_getIndexedIvars(v13) + a2 + 19)];
    }

    v22 = v12;
    p_at = &v22;
    v10 = kCFNumberIntType;
    goto LABEL_21;
  }

  return result;
}

- (CFBitVectorRef)newColumnMaskFrom:(unint64_t)a3 columnInclusionOptions:
{
  v131 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    if (*(result + 16))
    {
      v7 = 0;
    }

    else
    {
      v6 = atomic_load(result + 5);
      v7 = [*(v6 + 16) _storeInfo1];
    }

    v8 = [v7 foreignKeyColumns];
    v9 = [v7 foreignEntityKeyColumns];
    v10 = [v7 foreignOrderKeyColumns];
    v108 = [v7 attributeColumns];
    v11 = [v108 count];
    v107 = v10;
    v12 = [v10 count];
    v106 = v9;
    v13 = [v9 count];
    v14 = [v8 count];
    v105 = &v101;
    v104 = v12 + v11 + v13 + v14;
    MEMORY[0x1EEE9AC00](v14);
    v16 = &v101 - v15;
    bzero(&v101 - v15, v17);
    v109 = a3;
    v110 = v5;
    if ((a3 & 0xA) == 0)
    {
      v20 = [v8 count];
      goto LABEL_23;
    }

    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v18 = [v8 countByEnumeratingWithState:&v123 objects:v130 count:16];
    if (!v18)
    {
      v20 = 0;
      if ((a3 & 2) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v19 = v18;
    v20 = 0;
    v21 = *v124;
LABEL_8:
    v22 = 0;
    while (1)
    {
      if (*v124 != v21)
      {
        objc_enumerationMutation(v8);
      }

      v23 = *(*(&v123 + 1) + 8 * v22);
      if ((a3 & 2) == 0)
      {
        break;
      }

      LODWORD(a3) = [v23 slot];
      v25 = [(NSSQLRow *)v110 foreignKeyForSlot:a3];
      v26 = a3;
      LOBYTE(a3) = v109;
      if (v25 != [(NSSQLRow *)a2 foreignKeyForSlot:v26])
      {
        goto LABEL_16;
      }

LABEL_17:
      ++v20;
      if (v19 == ++v22)
      {
        v19 = [v8 countByEnumeratingWithState:&v123 objects:v130 count:16];
        if (!v19)
        {
          if ((a3 & 2) != 0)
          {
LABEL_24:
            v121 = 0u;
            v122 = 0u;
            v119 = 0u;
            v120 = 0u;
            v28 = [v106 countByEnumeratingWithState:&v119 objects:v129 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v120;
              do
              {
                v31 = 0;
                do
                {
                  if (*v120 != v30)
                  {
                    objc_enumerationMutation(v106);
                  }

                  v32 = [*(*(&v119 + 1) + 8 * v31) slot];
                  if (a2)
                  {
                    v33 = *(a2 + _NSSQLRowInstanceSize + ((4 * *(a2 + 16)) & 0x1FFF8) + ((*(a2 + 16) >> 13) & 0xFFFC) + 2 * v32);
                  }

                  else
                  {
                    v33 = 0;
                  }

                  if (v33 != *(v110 + 2 * v32 + _NSSQLRowInstanceSize + ((4 * *(v110 + 4)) & 0x1FFF8) + ((*(v110 + 4) >> 13) & 0xFFFC)))
                  {
                    v16[v20 >> 3] |= 1 << (~v20 & 7);
                  }

                  ++v20;
                  ++v31;
                }

                while (v29 != v31);
                v34 = [v106 countByEnumeratingWithState:&v119 objects:v129 count:16];
                v29 = v34;
              }

              while (v34);
            }

            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v35 = [v107 countByEnumeratingWithState:&v115 objects:v128 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v116;
              do
              {
                v38 = 0;
                do
                {
                  if (*v116 != v37)
                  {
                    objc_enumerationMutation(v107);
                  }

                  v39 = [*(*(&v115 + 1) + 8 * v38) slot];
                  if (a2)
                  {
                    v40 = *(a2 + _NSSQLRowInstanceSize + ((4 * *(a2 + 16)) & 0x1FFF8) + 4 * v39);
                  }

                  else
                  {
                    v40 = 0;
                  }

                  if (*(v110 + 4 * v39 + _NSSQLRowInstanceSize + ((4 * *(v110 + 4)) & 0x1FFF8)) != v40)
                  {
                    v16[v20 >> 3] |= 1 << (~v20 & 7);
                  }

                  ++v20;
                  ++v38;
                }

                while (v36 != v38);
                v41 = [v107 countByEnumeratingWithState:&v115 objects:v128 count:16];
                v36 = v41;
              }

              while (v41);
            }

LABEL_50:
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v42 = [v108 countByEnumeratingWithState:&v111 objects:v127 count:16];
            v43 = v110;
            if (!v42)
            {
              goto LABEL_126;
            }

            v44 = v42;
            v107 = ((v109 >> 4) & 1);
            v45 = *v112;
            while (2)
            {
              v46 = 0;
LABEL_53:
              if (*v112 != v45)
              {
                objc_enumerationMutation(v108);
              }

              v47 = *(*(&v111 + 1) + 8 * v46);
              if (v47 && (v47[16] & 0x18) != 0)
              {
                goto LABEL_75;
              }

              v48 = [v47 isConstrained];
              if ((v109 & 8) != 0)
              {
                v49 = v48 ^ 1;
              }

              else
              {
                v49 = 1;
              }

              if ((v49 | v107) != 1)
              {
                goto LABEL_74;
              }

              v50 = v48;
              if ((v109 & 0x10) == 0)
              {
                LOBYTE(v49) = 1;
              }

              if ((v48 ^ 1) & (v109 >> 2) & 1) == 0 && (v49)
              {
                goto LABEL_75;
              }

              v51 = [v47 slot];
              if (a2)
              {
                v52 = 0;
              }

              else
              {
                v52 = v50;
              }

              if (v52)
              {
                v16[v20 >> 3] |= 1 << (~v20 & 7);
                goto LABEL_76;
              }

              v53 = atomic_load(v43 + 5);
              if (a2)
              {
                v54 = atomic_load((a2 + 40));
              }

              else
              {
                v54 = 0;
              }

              v55 = 1 << (v51 & 7);
              if (((v55 & v53[(v51 >> 3) + 28]) != 0) != ((v55 & *(v54 + (v51 >> 3) + 28)) != 0))
              {
LABEL_74:
                v16[v20 >> 3] |= 1 << (~v20 & 7);
                goto LABEL_75;
              }

              if ((v55 & v53[(v51 >> 3) + 28]) != 0)
              {
                goto LABEL_75;
              }

              v106 = v54;
              v56 = v51;
              type = snapshot_get_type(v53, v51);
              if (type > 0x68)
              {
                switch(type)
                {
                  case 'i':
                    Class = object_getClass(v53);
                    v75 = v56;
                    v66 = *&v53[*(object_getIndexedIvars(Class) + v56 + 19)];
                    v76 = v106;
                    v77 = object_getClass(v106);
                    v69 = *(v76 + *(object_getIndexedIvars(v77) + v75 + 19));
                    break;
                  case 'q':
                    v86 = object_getClass(v53);
                    v87 = v56;
                    v88 = *&v53[*(object_getIndexedIvars(v86) + v56 + 19)];
                    v89 = v106;
                    v90 = object_getClass(v106);
                    v63 = v88 == *(v89 + *(object_getIndexedIvars(v90) + v87 + 19));
                    goto LABEL_97;
                  case 's':
                    v64 = object_getClass(v53);
                    v65 = v56;
                    v66 = *&v53[*(object_getIndexedIvars(v64) + v56 + 19)];
                    v67 = v106;
                    v68 = object_getClass(v106);
                    v69 = *(v67 + *(object_getIndexedIvars(v68) + v65 + 19));
                    break;
                  default:
                    goto LABEL_91;
                }
              }

              else
              {
                if (type != 99)
                {
                  if (type == 100)
                  {
                    v81 = object_getClass(v53);
                    v82 = v56;
                    v83 = *&v53[*(object_getIndexedIvars(v81) + v56 + 19)];
                    v84 = v106;
                    v85 = object_getClass(v106);
                    v63 = v83 == *(v84 + *(object_getIndexedIvars(v85) + v82 + 19));
                    goto LABEL_97;
                  }

                  if (type == 102)
                  {
                    v58 = object_getClass(v53);
                    v59 = v56;
                    v60 = *&v53[*(object_getIndexedIvars(v58) + v56 + 19)];
                    v61 = v106;
                    v62 = object_getClass(v106);
                    v63 = v60 == *(v61 + *(object_getIndexedIvars(v62) + v59 + 19));
LABEL_97:
                    v43 = v110;
                    if (!v63)
                    {
                      goto LABEL_74;
                    }

LABEL_75:
                    ++v20;
LABEL_76:
                    if (v44 == ++v46)
                    {
                      v99 = [v108 countByEnumeratingWithState:&v111 objects:v127 count:16];
                      v44 = v99;
                      if (!v99)
                      {
LABEL_126:
                        result = CFBitVectorCreate(0, v16, v104);
                        goto LABEL_127;
                      }

                      continue;
                    }

                    goto LABEL_53;
                  }

LABEL_91:
                  object = snapshot_get_object(v53, v56);
                  v78 = snapshot_get_object(v106, v56);
                  v79 = [v47 sqlType];
                  v106 = v78;
                  if (v79 == 16)
                  {
                    v80 = object;
                    v63 = object == v78;
                    v43 = v110;
                    if (v63)
                    {
                      goto LABEL_75;
                    }

                    if (![v47 isFileBackedFuture])
                    {
                      goto LABEL_74;
                    }

LABEL_122:
                    v98 = v80;
                  }

                  else
                  {
                    v80 = object;
                    v91 = [v47 sqlType];
                    v43 = v110;
                    if (v91 != 15)
                    {
                      if (v80 == v106)
                      {
                        goto LABEL_75;
                      }

                      goto LABEL_122;
                    }

                    v92 = object_getClass(v80);
                    v94 = v92 == PFFaultingTransformedValue_Decoded_Dirty || v92 == PFFaultingTransformedValue_Encoded || v92 == PFFaultingTransformedValue_Decoded;
                    if (v94 && v80 && objc_opt_class() == PFFaultingTransformedValue_Decoded_Dirty)
                    {
                      goto LABEL_74;
                    }

                    v102 = [objc_msgSend(objc_msgSend(v43 "objectID")];
                    v95 = object_getClass(v80);
                    if (v95 == PFFaultingTransformedValue_Decoded || v95 == PFFaultingTransformedValue_Encoded || (v96 = v80, v95 == PFFaultingTransformedValue_Decoded_Dirty))
                    {
                      v96 = -[PFFaultingTransformedValue valueWithRegistry:](v80, [v102 codableAdapterRegistry]);
                    }

                    v97 = object_getClass(v106);
                    if (v97 == PFFaultingTransformedValue_Decoded || v97 == PFFaultingTransformedValue_Encoded || v97 == PFFaultingTransformedValue_Decoded_Dirty)
                    {
                      v106 = -[PFFaultingTransformedValue valueWithRegistry:](v80, [v102 codableAdapterRegistry]);
                    }

                    if (v96 == v106)
                    {
                      goto LABEL_75;
                    }

                    v98 = v96;
                  }

                  if (([v98 isEqual:v106] & 1) == 0)
                  {
                    goto LABEL_74;
                  }

                  goto LABEL_75;
                }

                v70 = object_getClass(v53);
                v71 = v56;
                v66 = v53[*(object_getIndexedIvars(v70) + v56 + 19)];
                v72 = v106;
                v73 = object_getClass(v106);
                v69 = *(v72 + *(object_getIndexedIvars(v73) + v71 + 19));
              }

              break;
            }

            v63 = v66 == v69;
            goto LABEL_97;
          }

LABEL_23:
          v27 = v20 + [v106 count];
          v20 = v27 + [v107 count];
          goto LABEL_50;
        }

        goto LABEL_8;
      }
    }

    v24 = [objc_msgSend(v23 "toOneRelationship")];
    if ((a3 & 8) == 0 || !v24)
    {
      goto LABEL_17;
    }

LABEL_16:
    v16[v20 >> 3] |= 1 << (~v20 & 7);
    goto LABEL_17;
  }

LABEL_127:
  v100 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)hasUniqueConstraintDiffFrom:(const __CFBitVector *)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = [(NSSQLRow *)a1 newColumnMaskFrom:a2 columnInclusionOptions:0x18uLL];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v6.length = CFBitVectorGetCount(v2);
  v6.location = 0;
  v4 = CFBitVectorContainsBit(v3, v6, 1u) != 0;
  CFRelease(v3);
  return v4;
}

@end
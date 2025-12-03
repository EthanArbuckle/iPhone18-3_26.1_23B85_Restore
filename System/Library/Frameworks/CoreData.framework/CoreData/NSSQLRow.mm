@interface NSSQLRow
+ (void)allocForSQLEntity:(uint64_t)entity;
- (BOOL)hasUniqueConstraintDiffFrom:(const __CFBitVector *)from;
- (CFBitVectorRef)newColumnMaskFrom:(unint64_t)from columnInclusionOptions:;
- (NSSQLRow)initWithSQLEntity:(id)entity objectID:(id)d;
- (NSSQLRow)initWithSQLEntity:(id)entity ownedObjectID:(id)d andTimestamp:(double)timestamp;
- (const)knownKeyValuesPointer;
- (id)_snapshot_;
- (id)copy;
- (id)description;
- (id)newObjectIDForToOne:(id)one;
- (id)valueForKey:(id)key;
- (uint64_t)_validateToOnes;
- (unint64_t)attributeValueForSlot:(unint64_t *)result;
- (unint64_t)foreignKeyForSlot:(unint64_t *)result;
- (unint64_t)version;
- (void)setForeignKeySlot:(unsigned int)slot int64:(int64_t)int64;
- (void)setObjectID:(id)d;
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
      _storeInfo1 = [*(v2 + 16) _storeInfo1];
      foreignKeyColumns = [_storeInfo1 foreignKeyColumns];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      result = [foreignKeyColumns countByEnumeratingWithState:&v15 objects:v19 count:16];
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
              objc_enumerationMutation(foreignKeyColumns);
            }

            toOneRelationship = [*(*(&v15 + 1) + 8 * v7) toOneRelationship];
            v9 = toOneRelationship;
            if (!toOneRelationship || (toOneRelationship[88] & 1) == 0)
            {
              slot = [toOneRelationship slot];
              if (_storeInfo1)
              {
                v11 = _storeInfo1[48];
              }

              else
              {
                v11 = 0;
              }

              v12 = [v1 newObjectIDForToOne:v9];
              v13 = atomic_load((v1 + 40));
              snapshot_set_object(v13, v11 + slot, v12);
            }

            ++v7;
          }

          while (v5 != v7);
          result = [foreignKeyColumns countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    _storeInfo1 = 0;
  }

  else
  {
    v3 = atomic_load(&self->_snapshot);
    _storeInfo1 = [*(v3 + 16) _storeInfo1];
  }

  v5 = [+[NSSQLRow allocForSQLEntity:](NSSQLRow _storeInfo1)];
  v6 = atomic_load((v5 + 40));
  v7 = atomic_load(&self->_snapshot);
  atomic_store([v7 mutableCopy], (v5 + 40));
  v8 = atomic_load((v5 + 40));
  *(v8 + 24) |= 1u;
  v9 = atomic_load((v5 + 40));
  if (v6 != v9)
  {
  }

  v10 = [-[NSSQLEntity virtualForeignKeyColumns](_storeInfo1) count];
  v11 = [objc_msgSend(_storeInfo1 "foreignEntityKeyColumns")];
  v12 = [objc_msgSend(_storeInfo1 "foreignOrderKeyColumns")];
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

+ (void)allocForSQLEntity:(uint64_t)entity
{
  v3 = objc_opt_self();
  v4 = [-[NSSQLEntity virtualForeignKeyColumns](a2) count];
  v5 = [objc_msgSend(a2 "foreignEntityKeyColumns")];
  v6 = 2 * v5 + 8 * v4 + 4 * [objc_msgSend(a2 "foreignOrderKeyColumns")];

  return _PFAllocateObject(v3, v6);
}

- (NSSQLRow)initWithSQLEntity:(id)entity objectID:(id)d
{
  dCopy = d;
  Current = CFAbsoluteTimeGetCurrent();

  return [(NSSQLRow *)self initWithSQLEntity:entity ownedObjectID:dCopy andTimestamp:Current];
}

- (NSSQLRow)initWithSQLEntity:(id)entity ownedObjectID:(id)d andTimestamp:(double)timestamp
{
  v12.receiver = self;
  v12.super_class = NSSQLRow;
  v7 = [(NSPersistentCacheRow *)&v12 initWithOptions:0 andTimestamp:timestamp];
  if (v7)
  {
    atomic_store(objc_alloc_init(_PFCDSnapshotClassForEntity([entity entityDescription])), v7 + 5);
    v8 = atomic_load(v7 + 5);
    *(v8 + 16) = d;
    v9 = atomic_load(v7 + 5);
    snapshot_set_transient_default_values(v9);
    v10 = atomic_load(v7 + 5);
    *(v10 + 24) |= 1u;
    atomic_store(0, v7 + 20);
    *(v7 + 4) = *(v7 + 4) & 0xFFFFFFFE | [d isTemporaryID];
    *(v7 + 4) = *(v7 + 4) & 0xFFFF8001 | (2 * ([-[NSSQLEntity virtualForeignKeyColumns](entity) count] & 0x3FFF));
    *(v7 + 4) = *(v7 + 4) & 0xE0007FFF | (([objc_msgSend(entity "foreignOrderKeyColumns")] & 0x3FFF) << 15);
  }

  return v7;
}

- (id)newObjectIDForToOne:(id)one
{
  v5 = atomic_load(&self->_snapshot);
  v6 = *(v5 + 16);
  result = -[NSSQLRow foreignKeyForSlot:](self, [*(one + 8) slot]);
  if (result)
  {
    v8 = result;
    persistentStore = [v6 persistentStore];
    v10 = *(one + 9);
    if (v10)
    {
      v11 = self + _NSSQLRowInstanceSize + ((4 * *&self->super._externalRefFlags) & 0x1FFF8) + ((self->super._externalRefFlags >> 13) & 0xFFFC);
      v12 = *&v11[2 * [v10 slot]];
      v13 = atomic_load(&self->_snapshot);
      _sqlEntityForEntityID(*([*(v13 + 16) _storeInfo1] + 16), v12);
    }

    else
    {
      v14 = *(one + 6);
    }

    return [NSSQLCore newForeignKeyID:persistentStore entity:v8];
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
    _storeInfo1 = 0;
  }

  else
  {
    v3 = atomic_load(&self->_snapshot);
    _storeInfo1 = [*(v3 + 16) _storeInfo1];
  }

  v5 = MEMORY[0x1E696AD60];
  v52.receiver = self;
  v52.super_class = NSSQLRow;
  v6 = [(NSSQLRow *)&v52 description];
  name = [_storeInfo1 name];
  v51 = _storeInfo1;
  if (self)
  {
    v8 = atomic_load(&self->_snapshot);
    _storeInfo12 = [*(v8 + 16) _storeInfo1];
    if (_storeInfo12)
    {
      v10 = *(_storeInfo12 + 184);
    }

    else
    {
      v10 = 0;
    }

    v11 = atomic_load(&self->_snapshot);
    _referenceData64 = [*(v11 + 16) _referenceData64];
    v13 = atomic_load(&self->_snapshot);
    v14 = *(v13 + 12);
  }

  else
  {
    v10 = 0;
    _referenceData64 = 0;
    v14 = 0;
  }

  v15 = [v5 stringWithFormat:@"%@{%@ %d-%qd-%qi", v6, name, v10, _referenceData64, v14];
  attributeColumns = [v51 attributeColumns];
  v17 = [attributeColumns count];
  if (v17)
  {
    v18 = v17;
    for (i = 0; i != v18; ++i)
    {
      v20 = [attributeColumns objectAtIndex:i];
      name2 = [v20 name];
      propertyDescription = [v20 propertyDescription];
      if (propertyDescription && [propertyDescription superCompositeAttribute])
      {
        name2 = [objc_msgSend(v20 "propertyDescription")];
      }

      v23 = atomic_load(&self->_snapshot);
      v24 = [v23 valueForKeyPath:name2];
      if (v24)
      {
        v25 = v24;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v15 appendFormat:@" %@=<NSFileBackedFuture fileSize=%lu>", name2, objc_msgSend(v25, "fileSize")];
          }

          else
          {
            [v15 appendFormat:@" %@=<NSData len=%lu>", name2, objc_msgSend(v25, "length")];
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v15 appendFormat:@" %@=%@", name2, v25];
          }

          else
          {
            [v15 appendFormat:@" %@=%@", name2, objc_msgSend(v25, "description")];
          }
        }
      }

      else
      {
        [v15 appendFormat:@" %@=NULL", name2, v49];
      }
    }
  }

  foreignKeyColumns = [v51 foreignKeyColumns];
  v27 = [foreignKeyColumns count];
  if (v27)
  {
    v28 = v27;
    for (j = 0; j != v28; ++j)
    {
      v30 = [foreignKeyColumns objectAtIndex:j];
      [v15 appendFormat:@" %@=%qd", objc_msgSend(v30, "name"), -[NSSQLRow foreignKeyForSlot:](self, objc_msgSend(v30, "slot"))];
    }
  }

  foreignEntityKeyColumns = [v51 foreignEntityKeyColumns];
  v32 = [foreignEntityKeyColumns count];
  if (v32)
  {
    v33 = v32;
    for (k = 0; k != v33; ++k)
    {
      v35 = [foreignEntityKeyColumns objectAtIndex:k];
      name3 = [v35 name];
      slot = [v35 slot];
      if (self)
      {
        v38 = *(&self->super.super.isa + 2 * slot + _NSSQLRowInstanceSize + ((4 * *&self->super._externalRefFlags) & 0x1FFF8) + ((self->super._externalRefFlags >> 13) & 0xFFFC));
      }

      else
      {
        v38 = 0;
      }

      [v15 appendFormat:@" %@=%u", name3, v38];
    }
  }

  foreignOrderKeyColumns = [v51 foreignOrderKeyColumns];
  v40 = [foreignOrderKeyColumns count];
  if (v40)
  {
    v41 = v40;
    for (m = 0; m != v41; ++m)
    {
      v43 = [foreignOrderKeyColumns objectAtIndex:m];
      name4 = [v43 name];
      slot2 = [v43 slot];
      if (self)
      {
        v46 = *(&self->super.super.isa + 4 * slot2 + _NSSQLRowInstanceSize + ((4 * *&self->super._externalRefFlags) & 0x1FFF8));
      }

      else
      {
        v46 = 0;
      }

      [v15 appendFormat:@" %@=%u", name4, v46];
    }
  }

  [v15 appendFormat:@" and to-manys=%p}", self->super._toManyMap];
  v47 = v15;
  objc_autoreleasePoolPop(context);
  return v15;
}

- (void)setObjectID:(id)d
{
  v5 = atomic_load(&self->_snapshot);
  snapshot_set_objectID(v5, d);
  self->super._externalRefFlags = (*&self->super._externalRefFlags & 0xFFFFFFFE | [d isTemporaryID]);
}

- (void)setForeignKeySlot:(unsigned int)slot int64:(int64_t)int64
{
  atomic_store(1u, &self->super._invalidToOnes);
  v7 = atomic_load(&self->_snapshot);
  v8 = *([v7[2] entity] + 112);
  v9 = *(v8 + 104);
  v10 = slot >= v9;
  v11 = slot - v9;
  if (v10)
  {
    *(&self->super.super.isa + 8 * v11 + _NSSQLRowInstanceSize) = int64;
  }

  else
  {
    v12 = *(v8 + 96);
    if (int64)
    {
      if (HIDWORD(int64))
      {
        int64Copy = int64;
        v13 = &int64Copy;
        v14 = kCFNumberLongLongType;
      }

      else
      {
        int64Copy2 = int64;
        v13 = &int64Copy2;
        v14 = kCFNumberIntType;
      }

      v15 = CFNumberCreate(0, v14, v13);
    }

    else
    {
      v15 = 0;
    }

    snapshot_set_object(v7, v12 + slot, v15);
  }
}

- (id)valueForKey:(id)key
{
  if (!self || (*&self->super._externalRefFlags & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v5 = atomic_load(&self->_snapshot);
    _storeInfo1 = [*(v5 + 16) _storeInfo1];
    v7 = _storeInfo1;
    if (_storeInfo1)
    {
      v8 = [*(_storeInfo1 + 40) objectForKey:key];
      if (v8)
      {
        v9 = v8;
        v10 = v8[24];
        if (v10 != 7)
        {
          if (v10 == 1)
          {
            slot = [v8 slot];

            return [(NSSQLRow *)self attributeValueForSlot:slot];
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
        slot2 = [v9 slot] + v7[48];
        goto LABEL_23;
      }
    }
  }

  if (key != @"objectID" && ![@"objectID" isEqualToString:key])
  {
    v13 = [objc_msgSend(objc_msgSend(v7 "entityDescription")];
    if ([v13 _propertyType] != 7)
    {
      v18.receiver = self;
      v18.super_class = NSSQLRow;
      return [(NSSQLRow *)&v18 valueForKey:key];
    }

    v14 = [-[NSSQLEntity sqlAttributesForCompositeAttributeName:](v7 objc_msgSend(v13];
    v15 = atomic_load(&self->_snapshot);
    slot2 = [v14 slot];
LABEL_23:

    return snapshot_get_object(v15, slot2);
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

- (CFBitVectorRef)newColumnMaskFrom:(unint64_t)from columnInclusionOptions:
{
  v131 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    if (*(result + 16))
    {
      _storeInfo1 = 0;
    }

    else
    {
      v6 = atomic_load(result + 5);
      _storeInfo1 = [*(v6 + 16) _storeInfo1];
    }

    foreignKeyColumns = [_storeInfo1 foreignKeyColumns];
    foreignEntityKeyColumns = [_storeInfo1 foreignEntityKeyColumns];
    foreignOrderKeyColumns = [_storeInfo1 foreignOrderKeyColumns];
    attributeColumns = [_storeInfo1 attributeColumns];
    v11 = [attributeColumns count];
    v107 = foreignOrderKeyColumns;
    v12 = [foreignOrderKeyColumns count];
    v106 = foreignEntityKeyColumns;
    v13 = [foreignEntityKeyColumns count];
    v14 = [foreignKeyColumns count];
    v105 = &v101;
    v104 = v12 + v11 + v13 + v14;
    MEMORY[0x1EEE9AC00](v14);
    v16 = &v101 - v15;
    bzero(&v101 - v15, v17);
    fromCopy = from;
    v110 = v5;
    if ((from & 0xA) == 0)
    {
      v20 = [foreignKeyColumns count];
      goto LABEL_23;
    }

    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v18 = [foreignKeyColumns countByEnumeratingWithState:&v123 objects:v130 count:16];
    if (!v18)
    {
      v20 = 0;
      if ((from & 2) != 0)
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
        objc_enumerationMutation(foreignKeyColumns);
      }

      v23 = *(*(&v123 + 1) + 8 * v22);
      if ((from & 2) == 0)
      {
        break;
      }

      LODWORD(from) = [v23 slot];
      v25 = [(NSSQLRow *)v110 foreignKeyForSlot:from];
      fromCopy2 = from;
      LOBYTE(from) = fromCopy;
      if (v25 != [(NSSQLRow *)a2 foreignKeyForSlot:fromCopy2])
      {
        goto LABEL_16;
      }

LABEL_17:
      ++v20;
      if (v19 == ++v22)
      {
        v19 = [foreignKeyColumns countByEnumeratingWithState:&v123 objects:v130 count:16];
        if (!v19)
        {
          if ((from & 2) != 0)
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

                  slot = [*(*(&v119 + 1) + 8 * v31) slot];
                  if (a2)
                  {
                    v33 = *(a2 + _NSSQLRowInstanceSize + ((4 * *(a2 + 16)) & 0x1FFF8) + ((*(a2 + 16) >> 13) & 0xFFFC) + 2 * slot);
                  }

                  else
                  {
                    v33 = 0;
                  }

                  if (v33 != *(v110 + 2 * slot + _NSSQLRowInstanceSize + ((4 * *(v110 + 4)) & 0x1FFF8) + ((*(v110 + 4) >> 13) & 0xFFFC)))
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

                  slot2 = [*(*(&v115 + 1) + 8 * v38) slot];
                  if (a2)
                  {
                    v40 = *(a2 + _NSSQLRowInstanceSize + ((4 * *(a2 + 16)) & 0x1FFF8) + 4 * slot2);
                  }

                  else
                  {
                    v40 = 0;
                  }

                  if (*(v110 + 4 * slot2 + _NSSQLRowInstanceSize + ((4 * *(v110 + 4)) & 0x1FFF8)) != v40)
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
            v42 = [attributeColumns countByEnumeratingWithState:&v111 objects:v127 count:16];
            v43 = v110;
            if (!v42)
            {
              goto LABEL_126;
            }

            v44 = v42;
            v107 = ((fromCopy >> 4) & 1);
            v45 = *v112;
            while (2)
            {
              v46 = 0;
LABEL_53:
              if (*v112 != v45)
              {
                objc_enumerationMutation(attributeColumns);
              }

              v47 = *(*(&v111 + 1) + 8 * v46);
              if (v47 && (v47[16] & 0x18) != 0)
              {
                goto LABEL_75;
              }

              isConstrained = [v47 isConstrained];
              if ((fromCopy & 8) != 0)
              {
                v49 = isConstrained ^ 1;
              }

              else
              {
                v49 = 1;
              }

              if ((v49 | v107) != 1)
              {
                goto LABEL_74;
              }

              v50 = isConstrained;
              if ((fromCopy & 0x10) == 0)
              {
                LOBYTE(v49) = 1;
              }

              if ((isConstrained ^ 1) & (fromCopy >> 2) & 1) == 0 && (v49)
              {
                goto LABEL_75;
              }

              slot3 = [v47 slot];
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

              v55 = 1 << (slot3 & 7);
              if (((v55 & v53[(slot3 >> 3) + 28]) != 0) != ((v55 & *(v54 + (slot3 >> 3) + 28)) != 0))
              {
LABEL_74:
                v16[v20 >> 3] |= 1 << (~v20 & 7);
                goto LABEL_75;
              }

              if ((v55 & v53[(slot3 >> 3) + 28]) != 0)
              {
                goto LABEL_75;
              }

              v106 = v54;
              v56 = slot3;
              type = snapshot_get_type(v53, slot3);
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
                      v99 = [attributeColumns countByEnumeratingWithState:&v111 objects:v127 count:16];
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
                  sqlType = [v47 sqlType];
                  v106 = v78;
                  if (sqlType == 16)
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
                    sqlType2 = [v47 sqlType];
                    v43 = v110;
                    if (sqlType2 != 15)
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
    if ((from & 8) == 0 || !v24)
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

- (BOOL)hasUniqueConstraintDiffFrom:(const __CFBitVector *)from
{
  if (!from)
  {
    return 0;
  }

  v2 = [(NSSQLRow *)from newColumnMaskFrom:a2 columnInclusionOptions:0x18uLL];
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
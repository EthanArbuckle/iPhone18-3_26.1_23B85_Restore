@interface _CDSnapshot
+ (Class)classForEntity:(id)entity;
+ (unsigned)newBatchAllocation:(id *)allocation count:(unsigned int)count withOwnedObjectIDs:(id *)ds;
+ (void)_entityDeallocated;
+ (void)_invalidateStaticCaches;
+ (void)initialize;
- (id)copy;
- (id)description;
- (id)mutableCopy;
- (id)valueForKey:(id)key;
- (unint64_t)hash;
- (void)dealloc;
- (void)initWithObjectID:(void *)d;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation _CDSnapshot

- (id)mutableCopy
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(_CDSnapshot *)v3 initWithObjectID:?];
  v4[3] = self->_cd_version;
  Class = object_getClass(self);
  IndexedIvars = object_getIndexedIvars(Class);
  memcpy(v4 + 7, &self->_cd_nullFlags_, IndexedIvars[17]);
  v7 = IndexedIvars[16];
  if (v7)
  {
    v8 = *(IndexedIvars + 7);
    v9 = IndexedIvars + 19;
    do
    {
      v11 = *v8++;
      v10 = v11;
      if (v11 == 8)
      {
        v12 = *v9;
        v15 = *(&self->super.isa + v12);
        if (v15)
        {
          v13 = [v15 copy];
          goto LABEL_8;
        }
      }

      else if (v10 == 7)
      {
        v12 = *v9;
        v13 = *(&self->super.isa + v12);
        v14 = v13;
LABEL_8:
        *(v4 + v12) = v13;
      }

      ++v9;
      --v7;
    }

    while (v7);
  }

  return v4;
}

- (void)dealloc
{
  Class = object_getClass(self);
  IndexedIvars = object_getIndexedIvars(Class);
  v5 = IndexedIvars[16];
  if (v5)
  {
    v6 = *(IndexedIvars + 7);
    v7 = IndexedIvars + 19;
    do
    {
      v8 = *v6++;
      if ((v8 - 7) <= 1)
      {
      }

      ++v7;
      --v5;
    }

    while (v5);
  }

  _PFDeallocateObject(self);
}

+ (void)_entityDeallocated
{
  v6 = *MEMORY[0x1E69E9840];
  IndexedIvars = object_getIndexedIvars(self);
  if (IndexedIvars)
  {
    v3 = IndexedIvars;
    os_unfair_lock_lock(&_MergedGlobals_85);

    v3[1] = 0;
    v3[2] = 0;
    v4 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock(&_MergedGlobals_85);
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
  }
}

+ (void)initialize
{
  if (objc_getClass("_CDSnapshot") == self)
  {
    objc_opt_self();
    object_getIndexedIvars(self);
    qword_1ED4BEB20 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  }

  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS____CDSnapshot;
  objc_msgSendSuper2(&v3, sel_initialize);
}

+ (void)_invalidateStaticCaches
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&_MergedGlobals_85);
  if (qword_1ED4BEB20)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    for (i = 0; i < CFArrayGetCount(qword_1ED4BEB20); ++i)
    {
      [(__CFArray *)Mutable addObject:CFArrayGetValueAtIndex(qword_1ED4BEB20, i)];
    }

    CFArrayRemoveAllValues(qword_1ED4BEB20);
  }

  else
  {
    Mutable = 0;
  }

  os_unfair_lock_unlock(&_MergedGlobals_85);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(__CFArray *)Mutable countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      for (j = 0; j != v4; ++j)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(Mutable);
        }

        [*(*(&v17 + 1) + 8 * j) _entityDeallocated];
      }

      v4 = [(__CFArray *)Mutable countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  os_unfair_lock_lock(&_MergedGlobals_85);
  if (Mutable)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(__CFArray *)Mutable countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (k = 0; k != v7; ++k)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(Mutable);
          }

          v10 = *(*(&v13 + 1) + 8 * k);
          IndexedIvars = object_getIndexedIvars(v10);
          if (IndexedIvars)
          {
            free(IndexedIvars[7]);
          }

          objc_disposeClassPair(v10);
        }

        v7 = [(__CFArray *)Mutable countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v7);
    }
  }

  os_unfair_lock_unlock(&_MergedGlobals_85);

  v12 = *MEMORY[0x1E69E9840];
}

+ (Class)classForEntity:(id)entity
{
  v123 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(entity "name")];
  if (!v5 || (v6 = v5, !*v5))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Entity name must not be nil." userInfo:0]);
  }

  selfCopy = self;
  Name = class_getName(self);
  v69 = v6;
  snprintf(__str, 0x200uLL, "%s_%s_", Name, v6);
  entityCopy = entity;
  v8 = *(*(entity + 14) + 8);
  v75 = *(entity + 12) + 24;
  v9 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  array5 = [MEMORY[0x1E695DF70] array];
  v15 = [MEMORY[0x1E695DF70] arrayWithObjects:{array, array2, array3, 0}];
  [v15 addObject:array4];
  obj = v15;
  [v15 addObject:array5];
  if (!v8)
  {
LABEL_22:
    v63 = v9;
    os_unfair_lock_lock(&_MergedGlobals_85);
    v21 = 4 * v8;
    if (v8 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v8;
    }

    size = v22;
    if (v8)
    {
      v23 = ((v8 - 1) >> 3) + 1;
    }

    else
    {
      v23 = 1;
    }

    v67 = v23;
    v66 = v23 - 1;
    v64 = 4 * v8;
    v65 = 4 * (v23 - 1);
    v72 = v8;
    v73 = 2;
    v25 = selfCopy;
    v24 = entityCopy;
    v26 = v69;
    while (1)
    {
      Class = objc_getClass(__str);
      v27 = Class;
      if (!Class)
      {
        break;
      }

LABEL_30:
      IndexedIvars = object_getIndexedIvars(v27);
      if (!Class)
      {
        goto LABEL_102;
      }

      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      *types = 0u;
      v89 = 0u;
      v29 = _PFStackAllocatorCreate(types, 1024);
      v30 = CFDataCreate(v29, IndexedIvars + 24, 32);
      v31 = [objc_msgSend(v24 "versionHash")];
      v32 = v31;
      if (*(&v89 + 1))
      {
        if (v30)
        {
          CFRelease(v30);
        }

        if (v32)
        {
          goto LABEL_97;
        }

LABEL_106:
        v61 = class_getName(v25);
        __snprintf_chk(__str, 0x200uLL, 0, 0x200uLL, "%s_%s_%x", v61, v26, v73++);
      }

      else
      {
        *&types[8] = *types;
        if (!v31)
        {
          goto LABEL_106;
        }

LABEL_97:
        if (v72 != *(IndexedIvars + 16) || *(IndexedIvars + 1) && ![objc_msgSend(v24 "name")] || *(IndexedIvars + 2) && (objc_msgSend(objc_msgSend(v24, "managedObjectClassName"), "isEqual:", *(IndexedIvars + 2)) & 1) == 0)
        {
          goto LABEL_106;
        }

LABEL_102:
        if (!*(IndexedIvars + 1))
        {
          *IndexedIvars = 0;
          *(IndexedIvars + 1) = v24[20];
          v59 = [objc_msgSend(v24 "name")];
          *(IndexedIvars + 1) = [v59 copy];

          v60 = [objc_msgSend(v24 "managedObjectClassName")];
          *(IndexedIvars + 2) = [v60 copy];
        }

        if (v27)
        {
          os_unfair_lock_unlock(&_MergedGlobals_85);
          [v63 drain];
          v62 = *MEMORY[0x1E69E9840];
          return v27;
        }
      }
    }

    ClassPair = objc_allocateClassPair(v25, __str, v21 + 80);
    v27 = ClassPair;
    if (!ClassPair)
    {
      goto LABEL_106;
    }

    v34 = object_getIndexedIvars(ClassPair);
    *(v34 + 7) = malloc_type_malloc(size, 0x100004077774924uLL);
    *(v34 + 16) = v72;
    if (v67 >= 2)
    {
      __snprintf_chk(__str, 0x200uLL, 0, 0x200uLL, "_cd_nullFlags2_");
      __snprintf_chk(types, 0xAuLL, 0, 0xAuLL, "[%dC]", v66);
      if (!class_addIvar(v27, __str, v65, 0, types))
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"class_addIvar failed" userInfo:0]);
      }
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v35 = [obj countByEnumeratingWithState:&v84 objects:v121 count:16];
    if (!v35)
    {
LABEL_92:
      objc_registerClassPair(v27);
      v25 = selfCopy;
      v24 = entityCopy;
      v26 = v69;
      v21 = v64;
      CFArrayAppendValue(qword_1ED4BEB20, v27);
      if (v72)
      {
        v53 = v34 + 76;
        v54 = v75;
        v55 = v72;
        do
        {
          InstanceVariable = class_getInstanceVariable(v27, [objc_msgSend(*v54 "name")]);
          *v53++ = ivar_getOffset(InstanceVariable);
          ++v54;
          --v55;
        }

        while (v55);
      }

      v57 = class_getInstanceVariable(v27, "_cd_nullFlags_");
      Offset = ivar_getOffset(v57);
      *(v34 + 17) = class_getInstanceSize(v27) - Offset;
      [objc_msgSend(entityCopy "versionHash")];
      goto LABEL_30;
    }

    v77 = *v85;
LABEL_41:
    v36 = 0;
    v78 = v35;
    while (1)
    {
      if (*v85 != v77)
      {
        objc_enumerationMutation(obj);
      }

      v37 = *(*(&v84 + 1) + 8 * v36);
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v38 = [v37 countByEnumeratingWithState:&v80 objects:v120 count:16];
      v79 = v36;
      if (v38)
      {
        break;
      }

LABEL_90:
      v36 = v79 + 1;
      if (v79 + 1 == v78)
      {
        v35 = [obj countByEnumeratingWithState:&v84 objects:v121 count:16];
        if (!v35)
        {
          goto LABEL_92;
        }

        goto LABEL_41;
      }
    }

    v39 = *v81;
LABEL_46:
    v40 = 0;
    while (1)
    {
      if (*v81 != v39)
      {
        objc_enumerationMutation(v37);
      }

      v41 = *(*(&v80 + 1) + 8 * v40);
      v42 = [objc_msgSend(v41 "name")];
      _entitysReferenceID = [v41 _entitysReferenceID];
      if ([v41 _propertyType] != 2 && objc_msgSend(v41, "_propertyType") != 6)
      {
        _propertyType = [v41 _propertyType];
        if (_propertyType == 7)
        {
          v46 = 7;
        }

        else
        {
          v46 = 0;
        }

        v48 = 8 * (_propertyType == 7);
        v45 = 3;
        goto LABEL_78;
      }

      attributeType = [v41 attributeType];
      if (attributeType <= 599)
      {
        if (attributeType > 299)
        {
          if (attributeType == 300)
          {
            v45 = 3;
            v46 = 4;
            goto LABEL_77;
          }

          if (attributeType == 500)
          {
LABEL_67:
            v45 = 3;
            v46 = 5;
            goto LABEL_77;
          }

LABEL_76:
          v45 = 3;
          v46 = 7;
          goto LABEL_77;
        }

        if (attributeType != 100)
        {
          if (attributeType != 200)
          {
            goto LABEL_76;
          }

          v45 = 2;
          v46 = 3;
          goto LABEL_75;
        }

        v45 = 1;
        v48 = 2;
      }

      else
      {
        if (attributeType > 899)
        {
          if (attributeType == 900)
          {
            goto LABEL_67;
          }

          if (attributeType == 1800 || attributeType == 2200)
          {
            v45 = 3;
            v46 = 8;
LABEL_77:
            v48 = 8;
            goto LABEL_78;
          }

          goto LABEL_76;
        }

        if (attributeType == 600)
        {
          v45 = 2;
          v46 = 6;
LABEL_75:
          v48 = 4;
          goto LABEL_78;
        }

        if (attributeType != 800)
        {
          goto LABEL_76;
        }

        v45 = 0;
        v48 = 1;
      }

      v46 = v48;
LABEL_78:
      if (v46)
      {
        v49 = v46;
      }

      else
      {
        v49 = 7;
      }

      if (v46)
      {
        v50 = v45;
      }

      else
      {
        v50 = 3;
      }

      if (v46)
      {
        v51 = v48;
      }

      else
      {
        v51 = 8;
      }

      *(*(v34 + 7) + _entitysReferenceID) = v49;
      v52 = _CDSnapshotDataTypeToObjCType(v49);
      if (!class_addIvar(v27, v42, v51, v50, v52))
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"class_addIvar failed" userInfo:0]);
      }

      if (v38 == ++v40)
      {
        v38 = [v37 countByEnumeratingWithState:&v80 objects:v120 count:16];
        if (!v38)
        {
          goto LABEL_90;
        }

        goto LABEL_46;
      }
    }
  }

  v16 = 0;
  while (1)
  {
    v17 = *(v75 + 8 * v16);
    result = [v17 _entitysReferenceID];
    if (v16 != result)
    {
      break;
    }

    if ([v17 _propertyType] == 2 || objc_msgSend(v17, "_propertyType") == 6)
    {
      attributeType2 = [v17 attributeType];
      if (attributeType2 <= 499)
      {
        v20 = array2;
        if (attributeType2 == 100)
        {
          goto LABEL_21;
        }

        v20 = array3;
        if (attributeType2 == 200)
        {
          goto LABEL_21;
        }

        v20 = array4;
        if (attributeType2 == 300)
        {
          goto LABEL_21;
        }
      }

      else if (attributeType2 > 799)
      {
        v20 = array;
        if (attributeType2 == 800)
        {
          goto LABEL_21;
        }

        v20 = array4;
        if (attributeType2 == 900)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v20 = array4;
        if (attributeType2 == 500)
        {
          goto LABEL_21;
        }

        v20 = array3;
        if (attributeType2 == 600)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      [v17 _propertyType];
    }

    v20 = array5;
LABEL_21:
    [v20 addObject:v17];
    v16 = (v16 + 1);
    if (v8 == v16)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

+ (unsigned)newBatchAllocation:(id *)allocation count:(unsigned int)count withOwnedObjectIDs:(id *)ds
{
  allocationCopy = allocation;
  result = _PFAllocateObjects(self, allocation, count, 0);
  if (result)
  {
    v8 = result;
    do
    {
      v10 = *allocationCopy++;
      v9 = v10;
      v11 = *ds++;
      *(v9 + 16) = v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

- (void)initWithObjectID:(void *)d
{
  if (!d)
  {
    return 0;
  }

  v5.receiver = d;
  v5.super_class = _CDSnapshot;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  if (v3)
  {
    v3[2] = a2;
  }

  return v3;
}

- (id)copy
{
  if (*&self->_cd_flags)
  {

    return self;
  }

  else
  {
    result = [(_CDSnapshot *)self mutableCopy];
    *&self->_cd_flags |= 1u;
  }

  return result;
}

- (unint64_t)hash
{
  v2 = (2 * (self >> 4)) & 0xAAAAAAAA | ((self >> 4) >> 1) & 0x55555555;
  v3 = (4 * v2) & 0xCCCCCCCC | (v2 >> 2) & 0x33333333;
  v4 = (16 * v3) & 0xF0F0F0F0 | (v3 >> 4) & 0xF0F0F0F;
  return (v4 << 8) & 0xFF0000 | (v4 << 24) | (v4 >> 8) & 0xFF00 | HIBYTE(v4);
}

- (id)description
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v42.receiver = self;
  v42.super_class = _CDSnapshot;
  v5 = [(_CDSnapshot *)&v42 description];
  if (!self)
  {
    name = [0 name];
    cd_objectID = 0;
    v11 = 0;
    goto LABEL_80;
  }

  name = [(NSEntityDescription *)[(NSManagedObjectID *)self->_cd_objectID entity] name];
  cd_objectID = self->_cd_objectID;
  properties = [(NSEntityDescription *)[(NSManagedObjectID *)cd_objectID entity] properties];
  v9 = [(NSArray *)properties count];
  v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v9];
  v11 = v10;
  if (v9)
  {
    v34 = cd_objectID;
    v35 = name;
    v36 = v5;
    v37 = v4;
    v38 = v3;
    v39 = v9;
    v12 = 0;
    v40 = properties;
    v41 = v10;
    while (1)
    {
      v13 = [(NSArray *)properties objectAtIndex:v12];
      name2 = [v13 name];
      v15 = [(_CDSnapshot *)self valueForKey:name2];
      if (v15)
      {
        v16 = v15;
        _propertyType = [v13 _propertyType];
        if (_propertyType > 5)
        {
          if ((_propertyType - 6) <= 1)
          {
LABEL_16:
            attributeType = [v13 attributeType];
            if (attributeType <= 799)
            {
              if (attributeType <= 399)
              {
                if (attributeType != 100 && attributeType != 200)
                {
                  v20 = @"(...not nil..)";
                  if (attributeType != 300)
                  {
                    goto LABEL_73;
                  }
                }
              }

              else if (attributeType > 599)
              {
                if (attributeType != 600)
                {
                  v20 = @"(...not nil..)";
                  if (attributeType != 700)
                  {
                    goto LABEL_73;
                  }

                  if ([(__CFString *)v16 isNSString])
                  {
                    if ([(__CFString *)v16 length]>= 0xC9)
                    {
                      objectID = [(__CFString *)v16 substringToIndex:200];
                      goto LABEL_72;
                    }

                    v20 = v16;
                    goto LABEL_73;
                  }
                }
              }

              else if (attributeType != 400)
              {
                v20 = @"(...not nil..)";
                if (attributeType != 500)
                {
                  goto LABEL_73;
                }
              }

LABEL_70:
              v29 = v16;
            }

            else
            {
              if (attributeType > 1199)
              {
                if (attributeType > 1999)
                {
                  if (attributeType != 2100)
                  {
                    v20 = @"(...not nil..)";
                    if (attributeType != 2000)
                    {
                      goto LABEL_73;
                    }
                  }
                }

                else if (attributeType != 1200)
                {
                  v20 = @"(...not nil..)";
                  if (attributeType != 1800)
                  {
                    goto LABEL_73;
                  }
                }

                goto LABEL_70;
              }

              if (attributeType <= 999)
              {
                if (attributeType != 800)
                {
                  v20 = @"(...not nil..)";
                  if (attributeType != 900)
                  {
                    goto LABEL_73;
                  }
                }

                goto LABEL_70;
              }

              if (attributeType != 1000)
              {
                v20 = @"(...not nil..)";
                if (attributeType != 1100)
                {
                  goto LABEL_73;
                }

                goto LABEL_70;
              }

              if ([v13 isFileBackedFuture])
              {
                goto LABEL_70;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 || ![(__CFString *)v16 isNSData]|| [(__CFString *)v16 length]< 0x33)
              {
                goto LABEL_70;
              }

              v29 = [(__CFString *)v16 subdataWithRange:0, 50];
            }

            objectID = [(__CFString *)v29 description];
            goto LABEL_72;
          }

LABEL_27:
          v19 = v11;
          v20 = @"(...not nil..)";
          goto LABEL_74;
        }

        if (_propertyType == 2)
        {
          goto LABEL_16;
        }

        if (_propertyType == 3)
        {
LABEL_10:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![(__CFString *)v16 isFault])
          {
            v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[__CFString count](v16, "count")}];
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v23 = [(__CFString *)v16 countByEnumeratingWithState:&v43 objects:v47 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = 0;
              v26 = *v44;
              while (2)
              {
                v27 = 0;
                if (v25 <= 0xA)
                {
                  v28 = 10 - v25;
                }

                else
                {
                  v28 = 0;
                }

                do
                {
                  if (*v44 != v26)
                  {
                    objc_enumerationMutation(v16);
                  }

                  if (v28 == v27)
                  {
                    [v22 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"(...and %ld more...)", -[__CFString count](v16, "count") - 10)}];
                    goto LABEL_48;
                  }

                  [v22 addObject:{objc_msgSend(*(*(&v43 + 1) + 8 * v27), "objectID")}];
                  ++v25;
                  ++v27;
                }

                while (v24 != v27);
                v24 = [(__CFString *)v16 countByEnumeratingWithState:&v43 objects:v47 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }

LABEL_48:
            v11 = v41;
            [v41 setObject:v22 forKey:name2];

            v9 = v39;
            properties = v40;
            goto LABEL_75;
          }

          objectID = [MEMORY[0x1E696AEC0] stringWithFormat:@"<relationship fault: %p '%@'>", v16, objc_msgSend(-[__CFString relationship](v16, "relationship"), "name")];
          goto LABEL_72;
        }

        if (_propertyType != 4)
        {
          goto LABEL_27;
        }

        if ([v13 isToMany])
        {
          goto LABEL_10;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v16 == _CD_ScalarNull)
          {
            v19 = v11;
            v20 = @"<deferred relationship fault>";
            goto LABEL_74;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objectID = [MEMORY[0x1E696AEC0] stringWithFormat:@"foreign key: %@", v16, v33];
          }

          else
          {
            objectID = [(__CFString *)v16 objectID];
          }

LABEL_72:
          v20 = objectID;
LABEL_73:
          v19 = v11;
          goto LABEL_74;
        }

        v19 = v11;
        v20 = v16;
      }

      else
      {
        v19 = v11;
        v20 = @"nil";
      }

LABEL_74:
      [v19 setObject:v20 forKey:name2];
LABEL_75:
      if (++v12 == v9)
      {
        v4 = v37;
        v3 = v38;
        name = v35;
        v5 = v36;
        cd_objectID = v34;
        break;
      }
    }
  }

LABEL_80:
  v30 = [v4 stringWithFormat:@"%@ (entity: %@; id: %@ ; data: %@)", v5, name, cd_objectID, v11];
  objc_autoreleasePoolPop(v3);
  result = v30;
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)valueForKey:(id)key
{
  entity = [(NSManagedObjectID *)self->_cd_objectID entity];
  v6 = entity;
  if (entity)
  {
    entity = entity->_propertyMapping;
  }

  v7 = [(NSEntityDescription *)entity indexForKey:key];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_4;
  }

  v9 = v7;
  if ((*(&self->_cd_nullFlags_ + (v7 >> 3)) >> (v7 & 7)))
  {
    return 0;
  }

  isa = v6->_properties[v7 + 3].super.super.isa;
  if (![(objc_class *)isa _isAttribute]|| [(objc_class *)isa attributeType]!= 900)
  {
LABEL_4:
    v14.receiver = self;
    v14.super_class = _CDSnapshot;
    return [(_CDSnapshot *)&v14 valueForKey:key];
  }

  v11 = MEMORY[0x1E695DF00];
  Class = object_getClass(self);
  v13 = *(&self->super.isa + *(object_getIndexedIvars(Class) + v9 + 19));

  return [v11 dateWithTimeIntervalSinceReferenceDate:v13];
}

- (void)setValue:(id)value forKey:(id)key
{
  if (*&self->_cd_flags)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"snapshot is marked read only" userInfo:0]);
  }

  entity = [(NSManagedObjectID *)self->_cd_objectID entity];
  v8 = entity;
  if (entity)
  {
    entity = entity->_propertyMapping;
  }

  v9 = [(NSEntityDescription *)entity indexForKey:key];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  v10 = v9;
  if (value)
  {
    isa = v8->_properties[v9 + 3].super.super.isa;
    if (([(objc_class *)isa _isRelationship]& 1) == 0 && [(objc_class *)isa attributeType]== 900)
    {
      if ([value isNSNumber])
      {
        [value doubleValue];
      }

      else
      {
        [value timeIntervalSinceReferenceDate];
      }

      v13 = v12;
      Class = object_getClass(self);
      IndexedIvars = object_getIndexedIvars(Class);
      *(&self->_cd_nullFlags_ + (v10 >> 3)) &= ~(1 << (v10 & 7));
      *(&self->super.isa + IndexedIvars[v10 + 19]) = v13;
      return;
    }

LABEL_10:
    v16.receiver = self;
    v16.super_class = _CDSnapshot;
    [(_CDSnapshot *)&v16 setValue:value forKey:key];
    return;
  }

  snapshot_set_null(self, v9);
}

@end
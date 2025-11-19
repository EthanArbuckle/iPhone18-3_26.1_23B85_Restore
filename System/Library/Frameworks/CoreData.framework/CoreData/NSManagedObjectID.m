@interface NSManagedObjectID
+ (id)_newArchiveForScalarObjectIDs:(uint64_t)a1;
+ (uint64_t)unarchivedScalarObjectIDsFromData:(void *)a3 withCoordinator:;
+ (void)initialize;
- (BOOL)_isPersistentStoreAlive;
- (BOOL)isTemporaryID;
- (NSEntityDescription)entity;
- (NSManagedObjectID)initWithObject:(id)a3;
- (NSManagedObjectID)initWithPK64:(int64_t)a3;
- (NSPersistentStore)persistentStore;
- (NSString)description;
- (NSURL)URIRepresentation;
- (id)_referenceData;
- (id)_retainedURIString;
- (id)_storeIdentifier;
- (id)entityName;
- (int64_t)_referenceData64;
- (int64_t)compare:(id)a3;
- (uint64_t)_compareArbitraryValue:(void *)a3 toValue:;
@end

@implementation NSManagedObjectID

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p <%@>", self, -[NSManagedObjectID URIRepresentation](self, "URIRepresentation")];
  objc_autoreleasePoolPop(v3);

  return v4;
}

+ (void)initialize
{
  objc_opt_self();
  objc_opt_self();

  objc_opt_class();
}

- (NSEntityDescription)entity
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSPersistentStore)persistentStore
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isTemporaryID
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSURL)URIRepresentation
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (uint64_t)_compareArbitraryValue:(void *)a3 toValue:
{
  v28 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_39;
  }

  if (([a2 isNSNumber] & 1) == 0 && (objc_msgSend(a2, "isNSString") & 1) == 0 && !objc_msgSend(a2, "isNSDate"))
  {
    if ([a2 isNSData])
    {
      v6 = [a2 length];
      v7 = [a3 length];
      if (v6 >= v7)
      {
        v6 = v7;
      }

      v8 = 8 * v6 + 8;
      if (v8 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 8 * v6 + 8;
      }

      if (v8 >= 0x201)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      v11 = &v23 - ((8 * v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = 8 * v9;
      if (v8 > 0x200)
      {
        v11 = NSAllocateScannedUncollectable();
        v13 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v23 - ((8 * v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v9);
        v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v13, v12);
      }

      [a2 getBytes:v11 length:v6];
      [a3 getBytes:v13 length:v6];
      v17 = memcmp(v11, v13, v6);
      if (v8 >= 0x201)
      {
        NSZoneFree(0, v11);
        NSZoneFree(0, v13);
      }

      v18 = 1;
      if (v17 >= 0)
      {
        v18 = -1;
      }

      if (v17)
      {
        result = v18;
      }

      else
      {
        result = 0;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_5;
      }

      v26 = 0;
      v27 = 0;
      v24 = 0;
      v25 = 0;
      [a2 getUUIDBytes:&v26];
      [a3 getUUIDBytes:&v24];
      v14 = bswap64(v26);
      v15 = bswap64(v24);
      if (v14 == v15 && (v14 = bswap64(v27), v15 = bswap64(v25), v14 == v15))
      {
        v16 = 0;
      }

      else if (v14 < v15)
      {
        v16 = -1;
      }

      else
      {
        v16 = 1;
      }

      v19 = v16 == 0;
      v20 = v16 < 0;
      v21 = 1;
      if (!v20)
      {
        v21 = -1;
      }

      if (v19)
      {
        result = 0;
      }

      else
      {
        result = v21;
      }
    }

LABEL_39:
    v22 = *MEMORY[0x1E69E9840];
    return result;
  }

LABEL_5:
  v5 = *MEMORY[0x1E69E9840];

  return [a2 compare:a3];
}

- (int64_t)compare:(id)a3
{
  v5 = [(NSManagedObjectID *)self isTemporaryID];
  v6 = [a3 isTemporaryID];
  if (v5 != v6)
  {
    if (v5)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  if ((v5 & v6) == 1)
  {
    v8 = [(NSManagedObjectID *)self _referenceData];
    v9 = [a3 _referenceData];
    if (v8 != v9)
    {
      result = [v8 compare:v9];
      if (result)
      {
        return result;
      }
    }

    v10 = [(NSManagedObjectID *)self _temporaryIDCounter];
    v11 = v10 <= [a3 _temporaryIDCounter];
    goto LABEL_33;
  }

  v12 = [(NSManagedObjectID *)self _storeIdentifier];
  v13 = [a3 _storeIdentifier];
  if (v12 != v13)
  {
    result = [v12 compare:v13];
    if (result)
    {
      return result;
    }
  }

  v14 = [(NSManagedObjectID *)self entity];
  if (v14)
  {
    if (atomic_load(&v14->_isImmutable))
    {
      rootentity = v14->_rootentity;
    }

    else
    {
      do
      {
        rootentity = v14;
        v14 = [(NSEntityDescription *)v14 superentity];
      }

      while (v14);
    }
  }

  else
  {
    rootentity = 0;
  }

  v17 = [a3 entity];
  if (!v17)
  {
    v20 = 0;
    if (rootentity)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (!atomic_load((v17 + 124)))
  {
    do
    {
      v20 = v17;
      v17 = [v17 superentity];
    }

    while (v17);
    if (rootentity)
    {
      goto LABEL_21;
    }

LABEL_22:
    if (rootentity)
    {
      v21 = [(NSEntityDescription *)rootentity name];
    }

    else
    {
      v21 = [(NSManagedObjectID *)self entityName];
    }

    v22 = v21;
    if (v20)
    {
      v23 = [(NSEntityDescription *)v20 name];
    }

    else
    {
      v23 = [a3 entityName];
    }

    v18 = v23;
    if (v22 != v23)
    {
      result = [(NSString *)v22 compare:v23];
      if (result)
      {
        return result;
      }
    }

    goto LABEL_30;
  }

  v20 = *(v17 + 72);
  if (!rootentity)
  {
    goto LABEL_22;
  }

LABEL_21:
  if (rootentity != v20)
  {
    goto LABEL_22;
  }

LABEL_30:
  v24 = [(NSManagedObjectID *)self _preferReferenceData64];
  v25 = [a3 _preferReferenceData64];
  if (v24 && v25)
  {
    v26 = [(NSManagedObjectID *)self _referenceData64];
    v11 = v26 <= [a3 _referenceData64];
LABEL_33:
    v27 = !v11;
    v28 = v11;
    return v27 - v28;
  }

  v29 = [(NSManagedObjectID *)self _referenceData];
  v30 = [a3 _referenceData];

  return [(NSManagedObjectID *)self _compareArbitraryValue:v29 toValue:v30];
}

- (NSManagedObjectID)initWithObject:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSManagedObjectID)initWithPK64:(int64_t)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)_referenceData
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (int64_t)_referenceData64
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)_storeIdentifier
{
  v2 = [(NSManagedObjectID *)self persistentStore];

  return [(NSPersistentStore *)v2 identifier];
}

- (id)entityName
{
  v2 = [(NSManagedObjectID *)self entity];

  return [(NSEntityDescription *)v2 name];
}

- (BOOL)_isPersistentStoreAlive
{
  v2 = [(NSManagedObjectID *)self persistentStore];

  return [(NSPersistentStore *)v2 _isPersistentStoreAlive];
}

- (id)_retainedURIString
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)_newArchiveForScalarObjectIDs:(uint64_t)a1
{
  v121[256] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if ([a2 count])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v4 = objc_autoreleasePoolPush();
    v94 = a2;
    v95 = objc_opt_class();
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v5 = [a2 countByEnumeratingWithState:&v112 objects:v120 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v113;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v113 != v7)
          {
            objc_enumerationMutation(v94);
          }

          v9 = [objc_msgSend(*(*(&v112 + 1) + 8 * i) "entity")];
          if (v9)
          {
            v10 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v94 countByEnumeratingWithState:&v112 objects:v120 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_12:
    v11 = [objc_msgSend(v10 "entitiesByName")];
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    if (v11 >= 0x201)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    v14 = &v82 - ((8 * v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = 8 * v12;
    v88 = v11;
    if (v11 > 0x200)
    {
      v93 = NSAllocateScannedUncollectable();
      v16 = NSAllocateScannedUncollectable();
    }

    else
    {
      v93 = v14;
      bzero(v14, 8 * v12);
      v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v16, v15);
    }

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v20 = [v10 countByEnumeratingWithState:&v108 objects:v119 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v109;
      do
      {
        v23 = 0;
        do
        {
          if (*v109 != v22)
          {
            objc_enumerationMutation(v10);
          }

          v24 = *(*(&v108 + 1) + 8 * v23);
          v25 = [v24 name];
          if (v24)
          {
            v26 = v24[20];
          }

          else
          {
            v26 = 0;
          }

          *&v16[8 * v26] = v25;
          ++v23;
        }

        while (v21 != v23);
        v27 = [v10 countByEnumeratingWithState:&v108 objects:v119 count:16];
        v21 = v27;
      }

      while (v27);
    }

    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v28 = [v94 countByEnumeratingWithState:&v104 objects:v118 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v105;
LABEL_37:
      v31 = 0;
      while (1)
      {
        if (*v105 != v30)
        {
          objc_enumerationMutation(v94);
        }

        v32 = [objc_msgSend(*(*(&v104 + 1) + 8 * v31) "persistentStore")];
        if (v32)
        {
          break;
        }

        if (v29 == ++v31)
        {
          v29 = [v94 countByEnumeratingWithState:&v104 objects:v118 count:16];
          if (v29)
          {
            goto LABEL_37;
          }

          goto LABEL_43;
        }
      }

      v90 = v32;
      v92 = [v32 persistentStores];
      v33 = [v92 count];
      if (v33 <= 1)
      {
        v34 = 1;
      }

      else
      {
        v34 = v33;
      }

      if (v33 >= 0x201)
      {
        v35 = 1;
      }

      else
      {
        v35 = v34;
      }

      v36 = &v82 - ((8 * v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      v86 = v4;
      v87 = v33;
      v85 = &v82;
      v91 = v10;
      if (v33 > 0x200)
      {
        v89 = NSAllocateScannedUncollectable();
      }

      else
      {
        v89 = v36;
        bzero(v36, 8 * v34);
      }

      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v37 = v94;
      v38 = [v94 countByEnumeratingWithState:&v100 objects:v117 count:16];
      if (v38)
      {
        v39 = v38;
        v83 = v16;
        v84 = v3;
        v40 = 0;
        v41 = 0;
        v42 = *v101;
        do
        {
          v43 = 0;
          do
          {
            if (*v101 != v42)
            {
              objc_enumerationMutation(v37);
            }

            v44 = *(*(&v100 + 1) + 8 * v43);
            if (objc_opt_isKindOfClass())
            {
              v45 = [v44 entity];
              if (v45 || (v45 = [objc_msgSend(v91 "entitiesByName")]) != 0)
              {
                v46 = *(v45 + 160);
                v47 = 1;
              }

              else
              {
                v47 = 0;
                v46 = 0;
              }

              v48 = [v44 persistentStore];
              if (!v48)
              {
                v49 = [v44 _storeIdentifier];
                v48 = [v90 persistentStoreForIdentifier:v49];
              }

              if (v48)
              {
                v50 = v47;
              }

              else
              {
                v50 = 0;
              }

              if (v50 == 1)
              {
                ++v41;
                v93[v46] = 1;
                if (v48 != v40)
                {
                  v51 = [v92 indexOfObjectIdenticalTo:v48];
                  v89[v51] = 1;
                  v40 = v48;
                }
              }

              v37 = v94;
            }

            ++v43;
          }

          while (v39 != v43);
          v52 = [v37 countByEnumeratingWithState:&v100 objects:v117 count:16];
          v39 = v52;
        }

        while (v52);
        v53 = v41;
        v54 = v41 < 1;
        v16 = v83;
        v3 = v84;
        if (!v54)
        {
          v55 = v87;
          if (v87 < 1)
          {
            v56 = 0;
            v58 = v88;
          }

          else
          {
            v56 = 0;
            v58 = v88;
            v57 = v89;
            v59 = v87;
            do
            {
              if (*v57)
              {
                *v57 = v56++ + 1;
              }

              ++v57;
              --v59;
            }

            while (v59);
          }

          if (v58 < 1)
          {
            v60 = 0;
          }

          else
          {
            v60 = 0;
            v61 = v93;
            v62 = v58;
            do
            {
              if (*v61)
              {
                *v61 = v60++ + 1;
              }

              ++v61;
              --v62;
            }

            while (v62);
          }

          _writeInt32IntoData(v3, v53);
          _writeInt16IntoData(v3, v56);
          _writeInt16IntoData(v3, v60);
          v63 = v89;
          if (v55 >= 1)
          {
            for (j = 0; j != v55; ++j)
            {
              if (v63[j])
              {
                _writeStringIntoData([objc_msgSend(v92 objectAtIndex:{j), "identifier"}], v3, v121);
              }
            }
          }

          if (v58 >= 1)
          {
            v65 = v93;
            v66 = v16;
            v67 = v58;
            do
            {
              if (*v65)
              {
                _writeStringIntoData(*v66, v3, v121);
              }

              ++v66;
              ++v65;
              --v67;
            }

            while (v67);
          }

          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v68 = [v37 countByEnumeratingWithState:&v96 objects:v116 count:16];
          if (v68)
          {
            v69 = v68;
            v70 = *v97;
            do
            {
              for (k = 0; k != v69; ++k)
              {
                if (*v97 != v70)
                {
                  objc_enumerationMutation(v37);
                }

                v72 = *(*(&v96 + 1) + 8 * k);
                if (objc_opt_isKindOfClass())
                {
                  v73 = [v72 entity];
                  if (!v73)
                  {
                    v73 = [objc_msgSend(v91 "entitiesByName")];
                  }

                  v74 = [v72 persistentStore];
                  if (!v74)
                  {
                    v75 = [v72 _storeIdentifier];
                    v74 = [v90 persistentStoreForIdentifier:v75];
                  }

                  if (v73)
                  {
                    v76 = v74 == 0;
                  }

                  else
                  {
                    v76 = 1;
                  }

                  if (!v76)
                  {
                    v77 = v93[*(v73 + 160)];
                    v78 = [v72 _referenceData64];
                    v79 = [v92 indexOfObjectIdenticalTo:v74];
                    _writeInt16IntoData(v3, v89[v79]);
                    v80 = v77;
                    v37 = v94;
                    _writeInt16IntoData(v3, v80);
                    _writeInt64IntoData(v3, v78);
                  }
                }
              }

              v69 = [v37 countByEnumeratingWithState:&v96 objects:v116 count:16];
            }

            while (v69);
          }
        }
      }

      if (v87 >= 0x201)
      {
        NSZoneFree(0, v89);
      }

      v4 = v86;
      if (v88 < 0x201)
      {
        goto LABEL_122;
      }
    }

    else
    {
LABEL_43:
      if (v88 < 0x201)
      {
        goto LABEL_122;
      }
    }

    NSZoneFree(0, v16);
    NSZoneFree(0, v93);
LABEL_122:
    objc_autoreleasePoolPop(v4);
    v81 = *MEMORY[0x1E69E9840];
    return v3;
  }

  v17 = MEMORY[0x1E695DEF0];
  v18 = *MEMORY[0x1E69E9840];

  return objc_alloc_init(v17);
}

+ (uint64_t)unarchivedScalarObjectIDsFromData:(void *)a3 withCoordinator:
{
  v61[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [a2 length];
  if (v5)
  {
    v6 = v5;
    v61[0] = 0;
    v57 = [MEMORY[0x1E695DF70] array];
    v59 = objc_autoreleasePoolPush();
    v7 = [a2 bytes];
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [objc_msgSend(a3 "managedObjectModel")];
    v10 = [v9 count];
    MEMORY[0x1EEE9AC00](v10);
    if (v10 > 0x200)
    {
      v58 = NSAllocateScannedUncollectable();
    }

    else
    {
      v58 = &v52[-v12];
      bzero(&v52[-v12], 8 * v11);
    }

    if (v6 >= 4)
    {
      v60 = bswap32(*v7);
      v16 = 4;
      v61[0] = 4;
    }

    else
    {
      v16 = 0;
      v60 = 0;
    }

    if ((v16 | 2uLL) <= v6)
    {
      v17 = bswap32(*(v7 + v16)) >> 16;
      v61[0] = v16 | 2;
      v18 = v16 + 4;
      v16 |= 2uLL;
    }

    else
    {
      LOWORD(v17) = 0;
      v18 = v16 | 2;
    }

    v56 = v52;
    if (v18 <= v6)
    {
      LODWORD(v19) = bswap32(*(v7 + v16)) >> 16;
      v61[0] = v18;
    }

    else
    {
      LODWORD(v19) = 0;
    }

    LODWORD(v54) = v17;
    if (v17 >= 1)
    {
      LOWORD(v20) = 0;
      do
      {
        StringFromBytes = _newReadStringFromBytes(v7, v61, v6);
        if ([StringFromBytes length])
        {
          [v8 addObject:StringFromBytes];
        }

        v20 = (v20 + 1);
      }

      while (v20 < v17);
    }

    v55 = v10;
    v53 = v19;
    v22 = 0;
    if (v19 >= 1)
    {
      v19 = v19;
      v23 = v58;
      do
      {
        v24 = _newReadStringFromBytes(v7, v61, v6);
        if ([v24 length])
        {
          v25 = [v9 objectForKey:v24];
          if (v25 || (!a3 ? (v26 = 0) : (v26 = a3[12]), (v25 = [(_PFModelMap *)v26 ancillaryEntityWithName:v24]) != 0))
          {
            *v23 = v25;
            ++v22;
          }
        }

        ++v23;
        --v19;
      }

      while (v19);
    }

    v27 = [v8 count];
    v28 = 0;
    if (v54 == v27)
    {
      v29 = v53;
      v30 = v59;
      if (v53 == v22)
      {
        v31 = v55;
        if (v57)
        {
          v32 = [v8 count];
          v33 = MEMORY[0x1EEE9AC00](v32);
          v36 = &v52[-v35];
          v54 = v37;
          if (v33 > 0x200)
          {
            v36 = NSAllocateScannedUncollectable();
          }

          else
          {
            bzero(&v52[-v35], 8 * v34);
          }

          if ([v8 count])
          {
            v38 = 0;
            do
            {
              *&v36[8 * v38] = [a3 persistentStoreForIdentifier:{objc_msgSend(v8, "objectAtIndex:", v38)}];
              ++v38;
            }

            while (v38 < [v8 count]);
          }

          if (v60 < 1)
          {
            v28 = v57;
          }

          else
          {
            v40 = v57;
            v39 = v58;
            while (v61[0] < v6)
            {
              v41 = (v61[0] + 1) & 0xFFFFFFFFFFFFFFFELL;
              v42 = v41 + 2;
              if (v41 + 2 <= v6)
              {
                v43 = bswap32(*(v7 + v41)) >> 16;
                v61[0] = v41 + 2;
                v41 = (v41 + 3) & 0xFFFFFFFFFFFFFFFELL;
                v44 = v41 + 2;
              }

              else
              {
                v43 = 0;
                v44 = v41 + 2;
                v42 = v61[0];
              }

              if (v44 <= v6)
              {
                v45 = bswap32(*(v7 + v41)) >> 16;
                v61[0] = v44;
                v42 = v44;
              }

              else
              {
                v45 = 0;
              }

              v46 = (v42 + 7) & 0xFFFFFFFFFFFFFFF8;
              v47 = v46 + 8;
              if (v46 + 8 > v6)
              {
                break;
              }

              v28 = 0;
              v48 = *(v7 + v46);
              v61[0] = v47;
              if (!v43 || !v45 || !v48)
              {
                goto LABEL_66;
              }

              v49 = (v43 - 1);
              v50 = v49 >= v17 ? 0 : *&v36[8 * v49];
              if ((v45 - 1) >= v29)
              {
                break;
              }

              v28 = 0;
              if (!v50)
              {
                goto LABEL_66;
              }

              if (!*&v39[8 * (v45 - 1)])
              {
                goto LABEL_66;
              }

              v28 = [objc_msgSend(objc_msgSend(v50 "objectIDFactoryForEntity:{"alloc"), "initWithPK64:", bswap64(v48)}")];
              if (!v28)
              {
                goto LABEL_66;
              }

              [v40 addObject:v28];

              if (!--v60)
              {
                v28 = v40;
                goto LABEL_66;
              }
            }

            v28 = 0;
          }

LABEL_66:
          if (v32 >= 0x201)
          {
            NSZoneFree(0, v36);
          }

          v30 = v59;
        }

        goto LABEL_71;
      }
    }

    else
    {
      v30 = v59;
    }

    v31 = v55;
LABEL_71:
    if (v31 >= 0x201)
    {
      NSZoneFree(0, v58);
    }

    objc_autoreleasePoolPop(v30);
    v51 = *MEMORY[0x1E69E9840];
    return v28;
  }

  v13 = MEMORY[0x1E695DEC8];
  v14 = *MEMORY[0x1E69E9840];

  return [v13 array];
}

@end
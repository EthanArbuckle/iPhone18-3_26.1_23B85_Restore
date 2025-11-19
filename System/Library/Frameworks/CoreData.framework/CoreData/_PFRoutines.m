@interface _PFRoutines
+ (BOOL)_isInMemoryStore:(uint64_t)a1;
+ (BOOL)createExternalReferenceLinkFromPath:(uint64_t)a3 toPath:(uint64_t)a4 protectionLevel:(void *)a5 error:;
+ (BOOL)isSanitizedVersionOf:(void *)a3 equalTo:;
+ (__CFDictionary)_createDictionaryPartitioningObjectIDs:(id)a3 intoHierarchies:(BOOL)a4;
+ (__CFDictionary)_createDictionaryPartitioningObjects:(id)a3 intoHierarchies:(BOOL)a4;
+ (__CFDictionary)createDictionaryPartitioningObjectsByEntity:(uint64_t)a1;
+ (__CFDictionary)createDictionaryPartitioningObjectsIDByRootEntity:(uint64_t)a1;
+ (__CFString)_getUUID;
+ (id)_coalescedPrefetchKeypaths:(uint64_t)a1;
+ (id)_frameworkHash;
+ (id)_newCollectionFromCollection:(uint64_t)a3 forParentContext:(objc_class *)a4 andClass:;
+ (id)_replaceBaseline:(void *)a3 inOrderedSet:(void *)a4 withOrderedSet:;
+ (id)newCollection:(void *)a3 fromCollection:(void *)a4 byAddingItems:;
+ (id)newMutableArrayFromCollection:(uint64_t)a3 forParentContext:;
+ (id)newMutableArrayFromCollection:(void *)a3 byRemovingItems:;
+ (id)newMutableOrderedSetFromCollection:(uint64_t)a3 forParentContext:;
+ (id)newMutableSetFromCollection:(uint64_t)a3 forParentContext:;
+ (id)newMutableSetFromCollection:(void *)a3 byIntersectingWithCollection:;
+ (id)newMutableSetFromCollection:(void *)a3 byRemovingItems:;
+ (id)newOrderedSetFromCollection:(void *)a3 byAddingItems:;
+ (id)newOrderedSetFromCollection:(void *)a3 byRemovingItems:;
+ (id)newSetFromCollection:(void *)a3 byAddingItems:;
+ (id)retainedDecodeValue:(void *)a3 forTransformableAttribute:;
+ (id)retainedEncodeObjectValue:(void *)a3 forTransformableAttribute:;
+ (id)transformDecodeValue:(id)a3 forTransformerNamed:(id)a4;
+ (id)valueForProcessArgument:(uint64_t)a1;
+ (uint64_t)BOOLValueForOverride:(uint64_t)a1;
+ (uint64_t)_doNameAndTypeCheck:(uint64_t)a1;
+ (uint64_t)_expressionIsCompoundIndexCompatible:(uint64_t)a1;
+ (uint64_t)_generateObjectIDMaptableForArray:(uint64_t *)a3 withMapping:(uint64_t *)a4 andEntries:;
+ (uint64_t)_getPFBundleVersionNumber;
+ (uint64_t)_groupObjectsByRootEntity:(uint64_t)a1;
+ (uint64_t)_isInMemoryStoreURL:(uint64_t)a1;
+ (uint64_t)_newObjectIDsArrayWithMapping:(void *)a3 andEntries:(void *)a4 andCoordinator:;
+ (uint64_t)_objectsInOrderedCollection:(void *)a3 formSubstringInOrderedCollection:;
+ (uint64_t)_rootEntityGroupsForObjects:(uint64_t)a3 passingBlock:;
+ (uint64_t)anyObjectFromCollection:(uint64_t)a1;
+ (uint64_t)attributeClassesForSecureCoding;
+ (uint64_t)convertCString:(unint64_t *)a3 toUnsignedInt64:(int)a4 withBase:;
+ (uint64_t)deleteFileForPFExternalReferenceData:(uint64_t)a1;
+ (uint64_t)fetchHeterogeneousCollectionByObjectIDs:(uint64_t)a3 intoContext:;
+ (uint64_t)historyChangesArrayClassesForSecureCoding;
+ (uint64_t)historyQueryGenDataClassesForSecureCoding;
+ (uint64_t)insecureBoolValueForOverride:(uint64_t)a1;
+ (uint64_t)integerValueForOverride:(uint64_t)a1;
+ (uint64_t)moveInterimFileToPermanentLocation:(uint64_t)a1;
+ (uint64_t)newArrayOfObjectIDsFromCollection:(uint64_t)a1;
+ (uint64_t)newMutableOrderedSetFromCollection:(uint64_t)a1;
+ (uint64_t)newOrderedSetFromCollection:(void *)a3 byInsertingItems:(uint64_t)a4 atIndex:;
+ (uint64_t)newSetOfObjectIDsFromCollection:(uint64_t)a1;
+ (uint64_t)plistClassesForSecureCoding;
+ (uint64_t)readBytesForExternalReferenceData:(void *)a3 intoBuffer:(off_t)a4 range:(size_t)a5;
+ (uint64_t)sanitize:(uint64_t)a1;
+ (uint64_t)sensitiveIntegerValueForOverride:(uint64_t)a1;
+ (uint64_t)unarchiveCylicGraphObjectOfClasses:(uint64_t)a3 fromData:(uint64_t)a4 error:;
+ (uint64_t)writePFExternalReferenceDataToInterimFile:(uint64_t)a1;
+ (uint64_t)xpcStoreArchiverObjectIDClassesForSecureCoding;
+ (void)_logDirectoryAccessDebugInformation:(__darwin_ino64_t)a3 checkSandboxAccess:;
+ (void)_logFileAccessDebugInformation:(uint64_t)a3 checkSandboxAccess:;
+ (void)efficientlyEnumerateManagedObjectsInFetchRequest:(void *)a3 usingManagedObjectContext:(uint64_t)a4 andApplyBlock:;
+ (void)getIndexes:(void *)a3 fromCollection:(void *)a4 forObjectsInCollection:;
+ (void)initialize;
+ (void)readExternalReferenceDataFromFile:(uint64_t)a1;
+ (void)stringValueForOverride:(uint64_t)a1;
+ (void)wrapBlockInGuardedAutoreleasePool:(id)a3;
@end

@implementation _PFRoutines

+ (void)initialize
{
  *&byte_1ED4BEECD = 257;
  byte_1ED4BEECF = 1;
  z9dsptsiQ80etb9782fsrs98bfdle88 = 0x101010101010101;
  *(&z9dsptsiQ80etb9782fsrs98bfdle88 + 7) = 0x101010101010101;
  dword_1ED4BEEC8 = 16843009;
  __pflogFaultLog = _PFLogGetErrorLog();
  _PF_USE_IOS_PLATFORM = 1;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    byte_1ED4BEECF = 0;
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      byte_1ED4BEECE = 0;
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        byte_1ED4BEECD = 0;
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
          HIBYTE(dword_1ED4BEEC8) = 0;
          if ((dyld_program_sdk_at_least() & 1) == 0)
          {
            BYTE1(dword_1ED4BEEC8) = 0;
            if ((dyld_program_sdk_at_least() & 1) == 0)
            {
              LOBYTE(dword_1ED4BEEC8) = 0;
              if ((dyld_program_sdk_at_least() & 1) == 0)
              {
                byte_1ED4BEEC6 = 0;
                if ((dyld_program_sdk_at_least() & 1) == 0)
                {
                  byte_1ED4BEEC5 = 0;
                  if ((dyld_program_sdk_at_least() & 1) == 0)
                  {
                    byte_1ED4BEEC4 = 0;
                    program_sdk_version = dyld_get_program_sdk_version();
                    if (_CFExecutableLinkedOnOrAfter() == 1)
                    {
                      v3 = vand_s8(vmovn_s32(vcgtq_u32(vdupq_n_s32(program_sdk_version), xmmword_18592E410)), 0x1000100010001);
                      dword_1ED4BEEC0 = vuzp1_s8(v3, v3).u32[0];
                    }

                    else
                    {
                      *(&dword_1ED4BEEC0 + 3) = 0;
                      *(&z9dsptsiQ80etb9782fsrs98bfdle88 + 7) = 0;
                      if (_CFExecutableLinkedOnOrAfter() != 1)
                      {
                        *(&z9dsptsiQ80etb9782fsrs98bfdle88 + 5) = 0;
                        if (_CFExecutableLinkedOnOrAfter() != 1)
                        {
                          BYTE4(z9dsptsiQ80etb9782fsrs98bfdle88) = 0;
                          if (_CFExecutableLinkedOnOrAfter() != 1)
                          {
                            WORD1(z9dsptsiQ80etb9782fsrs98bfdle88) = 0;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  BYTE2(dword_1ED4BEEC8) = BYTE1(dword_1ED4BEEC8);
  _PF_Private_Malloc_Zone = 0;
  _PF_INTERNAL_DATA_SIZE_THRESHOLD = 1;
  pthread_key_init_np();
  pthread_key_init_np();
  NSArray_EmptyArray = objc_alloc_init(MEMORY[0x1E695DEC8]);
  NSSet_EmptySet = objc_alloc_init(MEMORY[0x1E695DFD8]);
  NSOrderedSet_EmptyOrderedSet = objc_alloc_init(MEMORY[0x1E695DFB8]);
  NSDictionary_EmptyDictionary = objc_alloc_init(MEMORY[0x1E695DF20]);
  qword_1ED4BE8F0 = objc_alloc_init(MEMORY[0x1E696AC90]);
  NSKeyValueCoding_NullValue = [MEMORY[0x1E695DFB0] null];
  _SELF_Expression = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  if (os_variant_has_internal_content())
  {
    byte_1ED4BEEC7 = 1;
  }

  if (qword_1ED4BE958 != -1)
  {
    dispatch_once(&qword_1ED4BE958, &__block_literal_global_363);
  }

  if ((_MergedGlobals_67 & 1) == 0)
  {
    byte_1ED4BEECC = 1;
  }

  v4 = imp_implementationWithBlock(&__block_literal_global_60);
  imp_removeBlock(v4);
  objc_opt_self();

  objc_opt_self();
}

+ (uint64_t)attributeClassesForSecureCoding
{
  objc_opt_self();
  if (qword_1ED4BE910 != -1)
  {
    dispatch_once(&qword_1ED4BE910, &__block_literal_global_135);
  }

  return qword_1ED4BE908;
}

+ (uint64_t)plistClassesForSecureCoding
{
  objc_opt_self();
  if (qword_1ED4BE950 != -1)
  {
    dispatch_once(&qword_1ED4BE950, &__block_literal_global_150);
  }

  return qword_1ED4BE948;
}

+ (uint64_t)_getPFBundleVersionNumber
{
  objc_opt_self();
  if (!_PF_BundleVersion)
  {
    v0 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:1522];
    v1 = 0;
    atomic_compare_exchange_strong(&_PF_BundleVersion, &v1, v0);
    if (v1)
    {
    }
  }

  return _PF_BundleVersion;
}

+ (__CFString)_getUUID
{
  objc_opt_self();
  v0 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  v1 = CFUUIDCreateString(0, v0);
  CFRelease(v0);

  return v1;
}

+ (uint64_t)_generateObjectIDMaptableForArray:(uint64_t *)a3 withMapping:(uint64_t *)a4 andEntries:
{
  v125 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if ([a2 count])
  {
    v86 = a3;
    v87 = a4;
    v95 = objc_opt_class();
    v7 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    v9 = CFDictionaryCreateMutable(v7, 0, 0, 0);
    v10 = CFDictionaryCreateMutable(v7, 0, 0, 0);
    v99 = CFArrayCreateMutable(v7, 0, 0);
    v88 = v7;
    v98 = CFArrayCreateMutable(v7, 0, 0);
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v94 = [a2 countByEnumeratingWithState:&v116 objects:v124 count:16];
    v11 = 0;
    if (v94)
    {
      v12 = 0;
      v96 = 0;
      v13 = 0;
      v90 = 0;
      v91 = 0;
      v89 = 0;
      v14 = *v117;
      v92 = a2;
      v93 = v14;
      while (2)
      {
        for (i = 0; i != v94; ++i)
        {
          if (*v117 != v93)
          {
            objc_enumerationMutation(v92);
          }

          v16 = *(*(&v116 + 1) + 8 * i);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v32 = 0;
            goto LABEL_104;
          }

          v97 = v11;
          v17 = [v16 persistentStore];
          v18 = [v16 entity];
          if (v17 != v13 || v18 != v96)
          {
            v20 = v18;
            Value = CFDictionaryGetValue(Mutable, v17);
            if (Value)
            {
              v22 = Value;
            }

            else
            {
              v22 = v89 + 1;
              CFDictionarySetValue(Mutable, v17, ++v89);
            }

            v23 = CFDictionaryGetValue(v9, v20);
            if (v23)
            {
              v24 = v23;
            }

            else
            {
              v24 = v91 + 1;
              CFDictionarySetValue(v9, v20, ++v91);
            }

            v25 = (v24 | (v22 << 16));
            v26 = CFDictionaryGetValue(v10, v25);
            if (v26)
            {
              v12 = v26;
              v96 = v20;
              v13 = v17;
            }

            else
            {
              v12 = (v90 + 1);
              CFDictionarySetValue(v10, v25, (v90 + 1));
              v96 = v20;
              v13 = v17;
              ++v90;
            }
          }

          CFArrayAppendValue(v99, v12 - 1);
          v27 = [v16 _referenceData64];
          v11 = v97;
          if (v27 > v97)
          {
            v11 = v27;
          }

          CFArrayAppendValue(v98, v27);
        }

        v94 = [v92 countByEnumeratingWithState:&v116 objects:v124 count:16];
        if (v94)
        {
          continue;
        }

        break;
      }
    }

    Count = CFDictionaryGetCount(Mutable);
    if (Count <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = Count;
    }

    if (Count >= 0x201)
    {
      v30 = 1;
    }

    else
    {
      v30 = v29;
    }

    v31 = &v86 - ((8 * v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v96 = &v86;
    v97 = v11;
    v94 = Count;
    if (Count > 0x200)
    {
      v31 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v86 - ((8 * v30 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v29);
    }

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v33 = [(__CFDictionary *)Mutable countByEnumeratingWithState:&v112 objects:v123 count:16, v86];
    if (v33)
    {
      v34 = v33;
      v35 = *v113;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v113 != v35)
          {
            objc_enumerationMutation(Mutable);
          }

          v37 = *(*(&v112 + 1) + 8 * j);
          v38 = CFDictionaryGetValue(Mutable, v37);
          *&v31[8 * v38 - 8] = [v37 identifier];
        }

        v34 = [(__CFDictionary *)Mutable countByEnumeratingWithState:&v112 objects:v123 count:16];
      }

      while (v34);
    }

    v39 = v94;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:v94];
    if (v39 >= 0x201)
    {
      NSZoneFree(0, v31);
    }

    v41 = CFDictionaryGetCount(v9);
    if (v41 <= 1)
    {
      v42 = 1;
    }

    else
    {
      v42 = v41;
    }

    if (v41 >= 0x201)
    {
      v43 = 1;
    }

    else
    {
      v43 = v42;
    }

    v44 = &v86 - ((8 * v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    v95 = v40;
    v93 = v41;
    if (v41 > 0x200)
    {
      v44 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v86 - ((8 * v43 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v42);
    }

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v45 = [(__CFDictionary *)v9 countByEnumeratingWithState:&v108 objects:v122 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v109;
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v109 != v47)
          {
            objc_enumerationMutation(v9);
          }

          v49 = *(*(&v108 + 1) + 8 * k);
          v50 = CFDictionaryGetValue(v9, v49);
          *&v44[8 * v50 - 8] = [v49 name];
        }

        v46 = [(__CFDictionary *)v9 countByEnumeratingWithState:&v108 objects:v122 count:16];
      }

      while (v46);
    }

    v51 = v93;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:v93];
    if (v51 >= 0x201)
    {
      NSZoneFree(0, v44);
    }

    v53 = CFDictionaryGetCount(v10);
    v54 = v53;
    if (v53 <= 1)
    {
      v55 = 1;
    }

    else
    {
      v55 = v53;
    }

    if (v53 >= 0x201)
    {
      v56 = 1;
    }

    else
    {
      v56 = v55;
    }

    v57 = (&v86 - ((8 * v56 + 15) & 0xFFFFFFFFFFFFFFF0));
    v94 = v52;
    if (v53 > 0x200)
    {
      v57 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v86 - ((8 * v56 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v55);
    }

    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v58 = [(__CFDictionary *)v10 countByEnumeratingWithState:&v104 objects:v121 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v105;
      do
      {
        for (m = 0; m != v59; ++m)
        {
          if (*v105 != v60)
          {
            objc_enumerationMutation(v10);
          }

          v62 = *(*(&v104 + 1) + 8 * m);
          v57[CFDictionaryGetValue(v10, v62) - 1] = v62;
        }

        v59 = [(__CFDictionary *)v10 countByEnumeratingWithState:&v104 objects:v121 count:16];
      }

      while (v59);
    }

    v63 = CFArrayCreate(v88, v57, v54, 0);
    if (v54 >= 0x201)
    {
      NSZoneFree(0, v57);
    }

    v64 = MEMORY[0x1E695DEC8];
    v65 = v97;
    v66 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v97];
    v67 = [v64 arrayWithObjects:{v95, v94, v63, v66, 0}];
    *v86 = v67;
    CFRelease(v63);
    if ([(__CFArray *)v63 count]> 0xFE || v65 > 0xFFFFFF)
    {
      v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v99, v98, 0}];
      *v87 = v72;
    }

    else
    {
      v68 = CFArrayGetCount(v98);
      v97 = &v86;
      if (v68 <= 1)
      {
        v69 = 1;
      }

      else
      {
        v69 = v68;
      }

      if (v68 >= 0x201)
      {
        v70 = 1;
      }

      else
      {
        v70 = v69;
      }

      v71 = (&v86 - ((8 * v70 + 15) & 0xFFFFFFFFFFFFFFF0));
      v95 = v68;
      if (v68 > 0x200)
      {
        v71 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v86 - ((8 * v70 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v69);
      }

      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v73 = [(__CFArray *)v98 countByEnumeratingWithState:&v100 objects:v120 count:16];
      if (v73)
      {
        v74 = v73;
        v75 = 0;
        v76 = *v101;
        do
        {
          v77 = 0;
          v78 = v75;
          do
          {
            if (*v101 != v76)
            {
              objc_enumerationMutation(v98);
            }

            v79 = *(*(&v100 + 1) + 8 * v77);
            v80 = v79 & 0xFFFFFF | (CFArrayGetValueAtIndex(v99, v78) << 24);
            v75 = v78 + 1;
            v71[v78] = v80;
            ++v77;
            ++v78;
          }

          while (v74 != v77);
          v74 = [(__CFArray *)v98 countByEnumeratingWithState:&v100 objects:v120 count:16];
        }

        while (v74);
      }

      v81 = v95;
      v82 = CFArrayCreate(v88, v71, v95, 0);
      if (v81 >= 0x201)
      {
        NSZoneFree(0, v71);
      }

      v83 = [MEMORY[0x1E695DEC8] arrayWithObject:v82];
      *v87 = v83;
      CFRelease(v82);
    }

    v32 = 1;
LABEL_104:
    CFRelease(Mutable);
    CFRelease(v9);
    CFRelease(v10);
    CFRelease(v99);
    CFRelease(v98);
  }

  else
  {
    v32 = 0;
  }

  v84 = *MEMORY[0x1E69E9840];
  return v32;
}

+ (uint64_t)_newObjectIDsArrayWithMapping:(void *)a3 andEntries:(void *)a4 andCoordinator:
{
  v100 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = [a2 objectAtIndex:0];
  v77 = [a2 objectAtIndex:1];
  v8 = [a2 objectAtIndex:2];
  v69 = [objc_msgSend(a2 objectAtIndex:{3), "unsignedLongLongValue"}];
  v74 = [a3 objectAtIndex:0];
  v71 = v74;
  if ([a3 count] >= 2)
  {
    v71 = [a3 objectAtIndex:1];
  }

  v9 = [v7 count];
  v75 = [v77 count];
  v10 = [v8 count];
  if (v9 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  if (v9 >= 0x201)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v73 = v9;
  if (v9 > 0x200)
  {
    v79 = NSAllocateScannedUncollectable();
  }

  else
  {
    v79 = &v68 - ((8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v79, 8 * v11);
  }

  if (v75 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v75;
  }

  if (v75 >= 0x201)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  v15 = &v68 - ((8 * v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v75 > 0x200)
  {
    v15 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v68 - ((8 * v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v13);
  }

  if (v10 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  if (v10 >= 0x201)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  v18 = &v68 - ((8 * v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10 > 0x200)
  {
    v18 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v68 - ((8 * v17 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v16);
  }

  v19 = [(__CFArray *)v74 count];
  if (v19 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  if (v19 >= 0x201)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  v22 = &v68 - ((8 * v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v19;
  v78 = v15;
  v72 = v10;
  if (v19 > 0x200)
  {
    v76 = NSAllocateScannedUncollectable();
  }

  else
  {
    v76 = v22;
    bzero(v22, 8 * v20);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v23 = [v7 countByEnumeratingWithState:&v92 objects:v99 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v26 = *v93;
    while (2)
    {
      v27 = 0;
      v28 = v25;
      do
      {
        if (*v93 != v26)
        {
          objc_enumerationMutation(v7);
        }

        v29 = [a4 persistentStoreForIdentifier:*(*(&v92 + 1) + 8 * v27)];
        if (!v29)
        {
          v64 = 0;
          v56 = v72;
LABEL_90:
          v32 = v78;
LABEL_92:
          v65 = v70;
          goto LABEL_93;
        }

        v25 = v28 + 1;
        *&v79[8 * v28] = v29;
        ++v27;
        ++v28;
      }

      while (v24 != v27);
      v24 = [v7 countByEnumeratingWithState:&v92 objects:v99 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  v30 = [objc_msgSend(a4 "managedObjectModel")];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v31 = [v77 countByEnumeratingWithState:&v88 objects:v98 count:16];
  v32 = v78;
  if (v31)
  {
    v33 = v31;
    v34 = 0;
    v35 = *v89;
    while (2)
    {
      v36 = 0;
      v37 = v34;
      do
      {
        if (*v89 != v35)
        {
          objc_enumerationMutation(v77);
        }

        v38 = [v30 objectForKey:*(*(&v88 + 1) + 8 * v36)];
        if (!v38)
        {
          v64 = 0;
          v56 = v72;
          goto LABEL_92;
        }

        v34 = v37 + 1;
        v32[v37] = v38;
        ++v36;
        ++v37;
      }

      while (v33 != v36);
      v33 = [v77 countByEnumeratingWithState:&v88 objects:v98 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v39 = [v8 countByEnumeratingWithState:&v84 objects:v97 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = 0;
    v42 = *v85;
    do
    {
      v43 = 0;
      v44 = v41;
      do
      {
        if (*v85 != v42)
        {
          objc_enumerationMutation(v8);
        }

        v41 = v44 + 1;
        *&v18[8 * v44++] = *(*(&v84 + 1) + 8 * v43++);
      }

      while (v40 != v43);
      v40 = [v8 countByEnumeratingWithState:&v84 objects:v97 count:16];
    }

    while (v40);
  }

  v45 = [v8 count];
  v80 = 0u;
  v81 = 0u;
  v47 = v45 < 0xFF && v69 < 0x1000000;
  v82 = 0uLL;
  v83 = 0uLL;
  v48 = [(__CFArray *)v74 countByEnumeratingWithState:&v80 objects:v96 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = 0;
    v51 = 0;
    v77 = *v81;
    v52 = 0x7FFFFFFFLL;
    while (2)
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v81 != v77)
        {
          objc_enumerationMutation(v74);
        }

        v54 = *(*(&v80 + 1) + 8 * i);
        if (v47)
        {
          v55 = v54 >> 24;
        }

        else
        {
          v55 = *(*(&v80 + 1) + 8 * i);
        }

        if (v55 != v52)
        {
          v56 = v72;
          if (v55 >= v72 || ((v57 = WORD1(*&v18[8 * v55]) - 1, v58 = *&v18[8 * v55] - 1, v57 < v73) ? (v59 = v58 >= v75) : (v59 = 1), v59))
          {
            v64 = 0;
            goto LABEL_90;
          }

          v50 = [*&v79[8 * v57] objectIDFactoryForEntity:*&v78[8 * v58]];
          v52 = v55;
        }

        if (v47)
        {
          ValueAtIndex = v54 & 0xFFFFFF;
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v71, v51);
        }

        v32 = v78;
        v61 = [[v50 alloc] initWithPK64:ValueAtIndex];
        v76[v51++] = v61;
      }

      v49 = [(__CFArray *)v74 countByEnumeratingWithState:&v80 objects:v96 count:16];
      if (v49)
      {
        continue;
      }

      break;
    }
  }

  v62 = [_PFArray alloc];
  v63 = [(__CFArray *)v74 count];
  v64 = [(_PFArray *)v62 initWithObjects:v76 count:v63 andFlags:18];
  v65 = v70;
  v56 = v72;
LABEL_93:
  if (v65 >= 0x201)
  {
    NSZoneFree(0, v76);
  }

  if (v73 >= 0x201)
  {
    NSZoneFree(0, v79);
  }

  if (v75 >= 0x201)
  {
    NSZoneFree(0, v32);
  }

  if (v56 >= 0x201)
  {
    NSZoneFree(0, v18);
  }

  v66 = *MEMORY[0x1E69E9840];
  return v64;
}

+ (id)_frameworkHash
{
  if (qword_1ED4BE8F8 != -1)
  {
    dispatch_once(&qword_1ED4BE8F8, &__block_literal_global_68);
  }

  v3 = qword_1ED4BE900;

  return v3;
}

+ (uint64_t)_rootEntityGroupsForObjects:(uint64_t)a3 passingBlock:
{
  v25 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [a2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        if ((*(a3 + 16))(a3, v10))
        {
          v11 = [v10 entity];
          if (v11)
          {
            if (atomic_load((v11 + 124)))
            {
              v13 = *(v11 + 72);
            }

            else
            {
              do
              {
                v13 = v11;
                v11 = [v11 superentity];
              }

              while (v11);
            }
          }

          else
          {
            v13 = 0;
          }

          v14 = [v13 name];
          v15 = [v5 objectForKey:v14];
          if (!v15)
          {
            v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v5 setObject:v15 forKey:v14];
          }

          [v15 addObject:v10];
        }

        ++v9;
      }

      while (v9 != v7);
      v16 = [a2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v7 = v16;
    }

    while (v16);
  }

  v17 = [v5 allValues];

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (uint64_t)_groupObjectsByRootEntity:(uint64_t)a1
{
  objc_opt_self();

  return [_PFRoutines _rootEntityGroupsForObjects:a2 passingBlock:&__block_literal_global_82];
}

+ (id)_coalescedPrefetchKeypaths:(uint64_t)a1
{
  objc_opt_self();
  v3 = [a2 count];
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if ([a2 isNSSet])
  {
    a2 = [a2 allObjects];
  }

  if ([a2 isNSArray])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = v5;
    if (v3)
    {
      v16 = v4;
      v17 = v5;
      for (i = 0; i != v3; ++i)
      {
        v8 = [objc_msgSend(a2 objectAtIndex:{i, v16), "componentsSeparatedByString:", @"."}];
        v9 = [v8 count];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = v17;
          do
          {
            v13 = [v8 objectAtIndex:v11];
            if ([v13 length])
            {
              v14 = [v12 objectForKey:v13];
              if (!v14)
              {
                v14 = [MEMORY[0x1E695DF90] dictionary];
              }

              [v12 setObject:v14 forKey:v13];
              v12 = v14;
            }

            ++v11;
          }

          while (v10 != v11);
        }
      }

      v4 = v16;
      v6 = v17;
    }
  }

  else if ([a2 isNSDictionary])
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  [v4 drain];

  return v6;
}

+ (void)_logDirectoryAccessDebugInformation:(__darwin_ino64_t)a3 checkSandboxAccess:
{
  v123 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v4 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v5 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v7 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (!v7)
      {
        goto LABEL_6;
      }

      v122.st_dev = 138412290;
      *&v122.st_mode = a2;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_6;
      }

      v122.st_dev = 138412290;
      *&v122.st_mode = a2;
    }

    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Logging status information for directory path: %@\n", &v122, 0xCu);
  }

LABEL_6:
  v107 = a3;
  _NSCoreDataLog_console(1, "Logging status information for directory path: %@", a2);
  objc_autoreleasePoolPop(v4);
  obj = [a2 pathComponents];
  memset(&v122, 0, sizeof(v122));
  v8 = geteuid();
  v9 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v10 = _pflogging_catastrophic_mode;
    v11 = _PFLogGetLogStream(1);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v12)
      {
        *buf = 67109120;
        LODWORD(st_size) = v8;
LABEL_164:
        _os_log_error_impl(&dword_18565F000, v11, OS_LOG_TYPE_ERROR, "CoreData: error: Executing as effective user %u\n", buf, 8u);
      }
    }

    else if (v12)
    {
      *buf = 67109120;
      LODWORD(st_size) = v8;
      goto LABEL_164;
    }
  }

  _NSCoreDataLog_console(1, "Executing as effective user %u", v8);
  objc_autoreleasePoolPop(v9);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v13 = [obj countByEnumeratingWithState:&v111 objects:v121 count:16];
  if (!v13)
  {
    goto LABEL_138;
  }

  v14 = v13;
  v15 = &stru_1EF3F1768;
  v110 = *v112;
  do
  {
    v16 = 0;
    do
    {
      if (*v112 != v110)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v111 + 1) + 8 * v16);
      LOBYTE(v122.st_dev) = 0;
      v15 = [(__CFString *)v15 stringByAppendingPathComponent:v17];
      v18 = [(__CFString *)v15 fileSystemRepresentation];
      if (stat(v18, &v122))
      {
        v19 = *__error();
        v20 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v21 = _pflogging_catastrophic_mode;
          v22 = _PFLogGetLogStream(1);
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
          if (v21)
          {
            if (v23)
            {
LABEL_118:
              v89 = strerror(v19);
              *buf = 136315650;
              st_size = v18;
              v117 = 1024;
              v118 = v19;
              v119 = 2080;
              v120 = v89;
              _os_log_error_impl(&dword_18565F000, v22, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to stat path '%s', errno %d / %s.\n", buf, 0x1Cu);
            }
          }

          else if (v23)
          {
            goto LABEL_118;
          }
        }

        strerror(v19);
        _NSCoreDataLog_console(1, "Failed to stat path '%s', errno %d / %s.");
        goto LABEL_116;
      }

      v24 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v25 = _pflogging_catastrophic_mode;
        v26 = _PFLogGetLogStream(1);
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_28;
          }
        }

        else if (!v27)
        {
          goto LABEL_28;
        }

        *buf = 136315138;
        st_size = v18;
        _os_log_error_impl(&dword_18565F000, v26, OS_LOG_TYPE_ERROR, "CoreData: error: Information for %s\n", buf, 0xCu);
      }

LABEL_28:
      _NSCoreDataLog_console(1, "Information for %s", v18);
      objc_autoreleasePoolPop(v24);
      v28 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_33;
      }

      v29 = _pflogging_catastrophic_mode;
      v30 = _PFLogGetLogStream(1);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      if (v29)
      {
        if (!v31)
        {
          goto LABEL_33;
        }
      }

      else if (!v31)
      {
        goto LABEL_33;
      }

      *buf = 67109120;
      LODWORD(st_size) = v122.st_rdev;
      _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: error:   File Device ID: \t%d\n", buf, 8u);
LABEL_33:
      _NSCoreDataLog_console(1, "  File Device ID: \t%d", v122.st_rdev);
      objc_autoreleasePoolPop(v28);
      v32 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_38;
      }

      v33 = _pflogging_catastrophic_mode;
      v34 = _PFLogGetLogStream(1);
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
      if (v33)
      {
        if (!v35)
        {
          goto LABEL_38;
        }
      }

      else if (!v35)
      {
        goto LABEL_38;
      }

      *buf = 67109120;
      LODWORD(st_size) = v122.st_dev;
      _os_log_error_impl(&dword_18565F000, v34, OS_LOG_TYPE_ERROR, "CoreData: error:   Device ID: \t\t%d\n", buf, 8u);
LABEL_38:
      _NSCoreDataLog_console(1, "  Device ID: \t\t%d", v122.st_dev);
      objc_autoreleasePoolPop(v32);
      v36 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_43;
      }

      v37 = _pflogging_catastrophic_mode;
      v38 = _PFLogGetLogStream(1);
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
      if (v37)
      {
        if (!v39)
        {
          goto LABEL_43;
        }
      }

      else if (!v39)
      {
        goto LABEL_43;
      }

      *buf = 134217984;
      st_size = v122.st_size;
      _os_log_error_impl(&dword_18565F000, v38, OS_LOG_TYPE_ERROR, "CoreData: error:   File Size: \t\t%lld bytes\n", buf, 0xCu);
LABEL_43:
      _NSCoreDataLog_console(1, "  File Size: \t\t%lld bytes", v122.st_size);
      objc_autoreleasePoolPop(v36);
      v40 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_48;
      }

      v41 = _pflogging_catastrophic_mode;
      v42 = _PFLogGetLogStream(1);
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
      if (v41)
      {
        if (!v43)
        {
          goto LABEL_48;
        }
      }

      else if (!v43)
      {
        goto LABEL_48;
      }

      *buf = 134217984;
      st_size = v122.st_ino;
      _os_log_error_impl(&dword_18565F000, v42, OS_LOG_TYPE_ERROR, "CoreData: error:   File inode: \t\t%llu\n", buf, 0xCu);
LABEL_48:
      _NSCoreDataLog_console(1, "  File inode: \t\t%llu", v122.st_ino);
      objc_autoreleasePoolPop(v40);
      v44 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_53;
      }

      v45 = _pflogging_catastrophic_mode;
      v46 = _PFLogGetLogStream(1);
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
      if (v45)
      {
        if (!v47)
        {
          goto LABEL_53;
        }
      }

      else if (!v47)
      {
        goto LABEL_53;
      }

      *buf = 67109120;
      LODWORD(st_size) = v122.st_uid;
      _os_log_error_impl(&dword_18565F000, v46, OS_LOG_TYPE_ERROR, "CoreData: error:   File user ID: \t\t%u\n", buf, 8u);
LABEL_53:
      _NSCoreDataLog_console(1, "  File user ID: \t\t%u", v122.st_uid);
      objc_autoreleasePoolPop(v44);
      v48 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_58;
      }

      v49 = _pflogging_catastrophic_mode;
      v50 = _PFLogGetLogStream(1);
      v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
      if (v49)
      {
        if (!v51)
        {
          goto LABEL_58;
        }
      }

      else if (!v51)
      {
        goto LABEL_58;
      }

      *buf = 67109120;
      LODWORD(st_size) = v122.st_gid;
      _os_log_error_impl(&dword_18565F000, v50, OS_LOG_TYPE_ERROR, "CoreData: error:   File group ID: \t\t%u\n", buf, 8u);
LABEL_58:
      _NSCoreDataLog_console(1, "  File group ID: \t\t%u", v122.st_gid);
      objc_autoreleasePoolPop(v48);
      v52 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_63;
      }

      v53 = _pflogging_catastrophic_mode;
      v54 = _PFLogGetLogStream(1);
      v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
      if (v53)
      {
        if (!v55)
        {
          goto LABEL_63;
        }
      }

      else if (!v55)
      {
        goto LABEL_63;
      }

      *buf = 0;
      _os_log_error_impl(&dword_18565F000, v54, OS_LOG_TYPE_ERROR, "CoreData: error:   File Permissions: \t\n", buf, 2u);
LABEL_63:
      _NSCoreDataLog_console(1, "  File Permissions: \t");
      objc_autoreleasePoolPop(v52);
      v56 = v122.st_mode & 0xF000;
      v57 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (v56 == 0x4000)
      {
        if (_pflogging_enable_oslog >= 1)
        {
          v58 = _pflogging_catastrophic_mode;
          v59 = _PFLogGetLogStream(1);
          v60 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
          if (v58)
          {
            if (v60)
            {
              goto LABEL_133;
            }
          }

          else if (v60)
          {
LABEL_133:
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v59, OS_LOG_TYPE_ERROR, "CoreData: error: d\n", buf, 2u);
          }
        }

        _NSCoreDataLog_console(1, "d");
        goto LABEL_76;
      }

      if (_pflogging_enable_oslog >= 1)
      {
        v61 = _pflogging_catastrophic_mode;
        v62 = _PFLogGetLogStream(1);
        v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
        if (v61)
        {
          if (v63)
          {
            goto LABEL_134;
          }
        }

        else if (v63)
        {
LABEL_134:
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v62, OS_LOG_TYPE_ERROR, "CoreData: error: -\n", buf, 2u);
        }
      }

      _NSCoreDataLog_console(1, "-");
LABEL_76:
      objc_autoreleasePoolPop(v57);
      v64 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_81;
      }

      v65 = _pflogging_catastrophic_mode;
      v66 = _PFLogGetLogStream(1);
      v67 = os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
      if (v65)
      {
        if (!v67)
        {
          goto LABEL_81;
        }
      }

      else if (!v67)
      {
        goto LABEL_81;
      }

      *buf = 67109120;
      LODWORD(st_size) = v122.st_mode & 0x1FF;
      _os_log_error_impl(&dword_18565F000, v66, OS_LOG_TYPE_ERROR, "CoreData: error:   %3o\n", buf, 8u);
LABEL_81:
      _NSCoreDataLog_console(1, "  %3o", v122.st_mode & 0x1FF);
      objc_autoreleasePoolPop(v64);
      v68 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_88;
      }

      v69 = _pflogging_catastrophic_mode;
      v70 = _PFLogGetLogStream(1);
      v71 = os_log_type_enabled(v70, OS_LOG_TYPE_ERROR);
      if (v69)
      {
        if (!v71)
        {
          goto LABEL_88;
        }

        v72 = "is not";
        if ((v122.st_mode & 0xF000) == 0xA000)
        {
          v72 = "is";
        }
      }

      else
      {
        if (!v71)
        {
          goto LABEL_88;
        }

        v72 = "is not";
        if ((v122.st_mode & 0xF000) == 0xA000)
        {
          v72 = "is";
        }
      }

      *buf = 136315138;
      st_size = v72;
      _os_log_error_impl(&dword_18565F000, v70, OS_LOG_TYPE_ERROR, "CoreData: error:   component %s a symbolic link\n", buf, 0xCu);
LABEL_88:
      v73 = "is not";
      if ((v122.st_mode & 0xF000) == 0xA000)
      {
        v73 = "is";
      }

      _NSCoreDataLog_console(1, "  component %s a symbolic link", v73);
      objc_autoreleasePoolPop(v68);
      if (access(v18, 4))
      {
        v74 = *__error();
        v75 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v76 = _pflogging_catastrophic_mode;
          v77 = _PFLogGetLogStream(1);
          v78 = os_log_type_enabled(v77, OS_LOG_TYPE_ERROR);
          if (v76)
          {
            if (v78)
            {
LABEL_131:
              *buf = 67109120;
              LODWORD(st_size) = v74;
              _os_log_error_impl(&dword_18565F000, v77, OS_LOG_TYPE_ERROR, "CoreData: error:   component is not readable with errno %d\n", buf, 8u);
            }
          }

          else if (v78)
          {
            goto LABEL_131;
          }
        }

        _NSCoreDataLog_console(1, "  component is not readable with errno %d");
        goto LABEL_103;
      }

      v75 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v79 = _pflogging_catastrophic_mode;
        v80 = _PFLogGetLogStream(1);
        v81 = os_log_type_enabled(v80, OS_LOG_TYPE_ERROR);
        if (v79)
        {
          if (v81)
          {
            goto LABEL_135;
          }
        }

        else if (v81)
        {
LABEL_135:
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v80, OS_LOG_TYPE_ERROR, "CoreData: error:   component is readable\n", buf, 2u);
        }
      }

      _NSCoreDataLog_console(1, "  component is readable");
LABEL_103:
      objc_autoreleasePoolPop(v75);
      if (access(v18, 2))
      {
        v82 = *__error();
        v20 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v83 = _pflogging_catastrophic_mode;
          v84 = _PFLogGetLogStream(1);
          v85 = os_log_type_enabled(v84, OS_LOG_TYPE_ERROR);
          if (v83)
          {
            if (v85)
            {
              goto LABEL_132;
            }
          }

          else if (v85)
          {
LABEL_132:
            *buf = 67109120;
            LODWORD(st_size) = v82;
            _os_log_error_impl(&dword_18565F000, v84, OS_LOG_TYPE_ERROR, "CoreData: error:   component is not writeable with errno %d\n", buf, 8u);
          }
        }

        _NSCoreDataLog_console(1, "  component is not writeable with errno %d");
        goto LABEL_116;
      }

      v20 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v86 = _pflogging_catastrophic_mode;
        v87 = _PFLogGetLogStream(1);
        v88 = os_log_type_enabled(v87, OS_LOG_TYPE_ERROR);
        if (v86)
        {
          if (v88)
          {
            goto LABEL_136;
          }
        }

        else if (v88)
        {
LABEL_136:
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v87, OS_LOG_TYPE_ERROR, "CoreData: error:   component is writeable\n", buf, 2u);
        }
      }

      _NSCoreDataLog_console(1, "  component is writeable");
LABEL_116:
      objc_autoreleasePoolPop(v20);
      ++v16;
    }

    while (v14 != v16);
    v90 = [obj countByEnumeratingWithState:&v111 objects:v121 count:16];
    v14 = v90;
  }

  while (v90);
LABEL_138:
  if (!v107)
  {
    goto LABEL_160;
  }

  getpid();
  v91 = sandbox_check();
  if (v91 == 1)
  {
    v92 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v96 = _pflogging_catastrophic_mode;
      v97 = _PFLogGetLogStream(1);
      v98 = os_log_type_enabled(v97, OS_LOG_TYPE_ERROR);
      if (v96)
      {
        if (v98)
        {
          *buf = 136315138;
          st_size = v107;
LABEL_168:
          _os_log_error_impl(&dword_18565F000, v97, OS_LOG_TYPE_ERROR, "CoreData: error:   Sandbox access to %s denied\n", buf, 0xCu);
        }
      }

      else if (v98)
      {
        *buf = 136315138;
        st_size = v107;
        goto LABEL_168;
      }
    }

    _NSCoreDataLog_console(1, "  Sandbox access to %s denied");
    goto LABEL_159;
  }

  if (v91)
  {
    v99 = *__error();
    v92 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v100 = _pflogging_catastrophic_mode;
      v101 = _PFLogGetLogStream(1);
      v102 = os_log_type_enabled(v101, OS_LOG_TYPE_ERROR);
      if (v100)
      {
        if (v102)
        {
          goto LABEL_169;
        }
      }

      else if (v102)
      {
LABEL_169:
        v105 = __error();
        v106 = strerror(*v105);
        *buf = 136315650;
        st_size = v107;
        v117 = 1024;
        v118 = v99;
        v119 = 2080;
        v120 = v106;
        _os_log_error_impl(&dword_18565F000, v101, OS_LOG_TYPE_ERROR, "CoreData: error:   Unable to determine if sandbox access to %s is allowed: %d (%s)\n", buf, 0x1Cu);
      }
    }

    v103 = __error();
    strerror(*v103);
    _NSCoreDataLog_console(1, "  Unable to determine if sandbox access to %s is allowed: %d (%s)");
    goto LABEL_159;
  }

  v92 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v93 = _pflogging_catastrophic_mode;
    v94 = _PFLogGetLogStream(1);
    v95 = os_log_type_enabled(v94, OS_LOG_TYPE_ERROR);
    if (v93)
    {
      if (v95)
      {
        *buf = 136315138;
        st_size = v107;
        goto LABEL_166;
      }
    }

    else if (v95)
    {
      *buf = 136315138;
      st_size = v107;
LABEL_166:
      _os_log_error_impl(&dword_18565F000, v94, OS_LOG_TYPE_ERROR, "CoreData: error:   Sandbox access to %s allowed\n", buf, 0xCu);
    }
  }

  _NSCoreDataLog_console(1, "  Sandbox access to %s allowed");
LABEL_159:
  objc_autoreleasePoolPop(v92);
LABEL_160:
  v104 = *MEMORY[0x1E69E9840];
}

+ (void)_logFileAccessDebugInformation:(uint64_t)a3 checkSandboxAccess:
{
  v181 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (a2)
  {
    memset(&v175, 0, sizeof(v175));
    v5 = stat(a2, &v175);
    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = *__error();
    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v8 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v10 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (v10)
        {
          goto LABEL_235;
        }
      }

      else if (v10)
      {
LABEL_235:
        v170 = strerror(v6);
        v180.f_bsize = 136315650;
        *&v180.f_iosize = a2;
        WORD2(v180.f_blocks) = 1024;
        *(&v180.f_blocks + 6) = v6;
        WORD1(v180.f_bfree) = 2080;
        *(&v180.f_bfree + 4) = v170;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to stat path '%s', errno %d / %s.\n", &v180, 0x1Cu);
      }
    }

    v11 = strerror(v6);
    _NSCoreDataLog_console(1, "Failed to stat path '%s', errno %d / %s.", a2, v6, v11);
    objc_autoreleasePoolPop(v7);
LABEL_9:
    v12 = geteuid();
    v13 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_14;
    }

    v14 = _pflogging_catastrophic_mode;
    v15 = _PFLogGetLogStream(1);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      if (!v16)
      {
        goto LABEL_14;
      }

      v180.f_bsize = 67109120;
      v180.f_iosize = v12;
    }

    else
    {
      if (!v16)
      {
        goto LABEL_14;
      }

      v180.f_bsize = 67109120;
      v180.f_iosize = v12;
    }

    _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: error: Executing as effective user %u\n", &v180, 8u);
LABEL_14:
    _NSCoreDataLog_console(1, "Executing as effective user %u", v12);
    objc_autoreleasePoolPop(v13);
    if (v5)
    {
      goto LABEL_90;
    }

    v17 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v18 = _pflogging_catastrophic_mode;
      v19 = _PFLogGetLogStream(1);
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if (v18)
      {
        if (!v20)
        {
          goto LABEL_20;
        }

        v180.f_bsize = 136315138;
        *&v180.f_iosize = a2;
      }

      else
      {
        if (!v20)
        {
          goto LABEL_20;
        }

        v180.f_bsize = 136315138;
        *&v180.f_iosize = a2;
      }

      _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: error: Information for %s\n", &v180, 0xCu);
    }

LABEL_20:
    _NSCoreDataLog_console(1, "Information for %s", a2);
    objc_autoreleasePoolPop(v17);
    v21 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_25;
    }

    v22 = _pflogging_catastrophic_mode;
    v23 = _PFLogGetLogStream(1);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (!v24)
      {
        goto LABEL_25;
      }

      LOWORD(v180.f_bsize) = 0;
    }

    else
    {
      if (!v24)
      {
        goto LABEL_25;
      }

      LOWORD(v180.f_bsize) = 0;
    }

    _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error: ---------------------------\n", &v180, 2u);
LABEL_25:
    _NSCoreDataLog_console(1, "---------------------------");
    objc_autoreleasePoolPop(v21);
    v25 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_30;
    }

    v26 = _pflogging_catastrophic_mode;
    v27 = _PFLogGetLogStream(1);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (!v28)
      {
        goto LABEL_30;
      }

      v180.f_bsize = 67109120;
      v180.f_iosize = v175.st_rdev;
    }

    else
    {
      if (!v28)
      {
        goto LABEL_30;
      }

      v180.f_bsize = 67109120;
      v180.f_iosize = v175.st_rdev;
    }

    _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: error:   File Device ID: \t%d\n", &v180, 8u);
LABEL_30:
    _NSCoreDataLog_console(1, "  File Device ID: \t%d", v175.st_rdev);
    objc_autoreleasePoolPop(v25);
    v29 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_35;
    }

    v30 = _pflogging_catastrophic_mode;
    v31 = _PFLogGetLogStream(1);
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (!v32)
      {
        goto LABEL_35;
      }

      v180.f_bsize = 67109120;
      v180.f_iosize = v175.st_dev;
    }

    else
    {
      if (!v32)
      {
        goto LABEL_35;
      }

      v180.f_bsize = 67109120;
      v180.f_iosize = v175.st_dev;
    }

    _os_log_error_impl(&dword_18565F000, v31, OS_LOG_TYPE_ERROR, "CoreData: error:   Device ID: \t\t%d\n", &v180, 8u);
LABEL_35:
    _NSCoreDataLog_console(1, "  Device ID: \t\t%d", v175.st_dev);
    objc_autoreleasePoolPop(v29);
    v33 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_40;
    }

    v34 = _pflogging_catastrophic_mode;
    v35 = _PFLogGetLogStream(1);
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (v34)
    {
      if (!v36)
      {
        goto LABEL_40;
      }

      v180.f_bsize = 134217984;
      *&v180.f_iosize = v175.st_size;
    }

    else
    {
      if (!v36)
      {
        goto LABEL_40;
      }

      v180.f_bsize = 134217984;
      *&v180.f_iosize = v175.st_size;
    }

    _os_log_error_impl(&dword_18565F000, v35, OS_LOG_TYPE_ERROR, "CoreData: error:   File Size: \t\t%lld bytes\n", &v180, 0xCu);
LABEL_40:
    _NSCoreDataLog_console(1, "  File Size: \t\t%lld bytes", v175.st_size);
    objc_autoreleasePoolPop(v33);
    v37 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_45;
    }

    v38 = _pflogging_catastrophic_mode;
    v39 = _PFLogGetLogStream(1);
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (v38)
    {
      if (!v40)
      {
        goto LABEL_45;
      }

      v180.f_bsize = 134217984;
      *&v180.f_iosize = v175.st_ino;
    }

    else
    {
      if (!v40)
      {
        goto LABEL_45;
      }

      v180.f_bsize = 134217984;
      *&v180.f_iosize = v175.st_ino;
    }

    _os_log_error_impl(&dword_18565F000, v39, OS_LOG_TYPE_ERROR, "CoreData: error:   File inode: \t\t%llu\n", &v180, 0xCu);
LABEL_45:
    _NSCoreDataLog_console(1, "  File inode: \t\t%llu", v175.st_ino);
    objc_autoreleasePoolPop(v37);
    v41 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_50;
    }

    v42 = _pflogging_catastrophic_mode;
    v43 = _PFLogGetLogStream(1);
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
    if (v42)
    {
      if (!v44)
      {
        goto LABEL_50;
      }

      v180.f_bsize = 67109120;
      v180.f_iosize = v175.st_uid;
    }

    else
    {
      if (!v44)
      {
        goto LABEL_50;
      }

      v180.f_bsize = 67109120;
      v180.f_iosize = v175.st_uid;
    }

    _os_log_error_impl(&dword_18565F000, v43, OS_LOG_TYPE_ERROR, "CoreData: error:   File user ID: \t\t%u\n", &v180, 8u);
LABEL_50:
    _NSCoreDataLog_console(1, "  File user ID: \t\t%u", v175.st_uid);
    objc_autoreleasePoolPop(v41);
    v45 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_55;
    }

    v46 = _pflogging_catastrophic_mode;
    v47 = _PFLogGetLogStream(1);
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
    if (v46)
    {
      if (!v48)
      {
        goto LABEL_55;
      }

      v180.f_bsize = 67109120;
      v180.f_iosize = v175.st_gid;
    }

    else
    {
      if (!v48)
      {
        goto LABEL_55;
      }

      v180.f_bsize = 67109120;
      v180.f_iosize = v175.st_gid;
    }

    _os_log_error_impl(&dword_18565F000, v47, OS_LOG_TYPE_ERROR, "CoreData: error:   File group ID: \t\t%u\n", &v180, 8u);
LABEL_55:
    _NSCoreDataLog_console(1, "  File group ID: \t\t%u", v175.st_gid);
    objc_autoreleasePoolPop(v45);
    v49 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_60;
    }

    v50 = _pflogging_catastrophic_mode;
    v51 = _PFLogGetLogStream(1);
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
    if (v50)
    {
      if (!v52)
      {
        goto LABEL_60;
      }

      LOWORD(v180.f_bsize) = 0;
    }

    else
    {
      if (!v52)
      {
        goto LABEL_60;
      }

      LOWORD(v180.f_bsize) = 0;
    }

    _os_log_error_impl(&dword_18565F000, v51, OS_LOG_TYPE_ERROR, "CoreData: error:   File Permissions: \t\n", &v180, 2u);
LABEL_60:
    _NSCoreDataLog_console(1, "  File Permissions: \t");
    objc_autoreleasePoolPop(v49);
    v53 = v175.st_mode & 0xF000;
    v54 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (v53 == 0x4000)
    {
      if (_pflogging_enable_oslog >= 1)
      {
        v55 = _pflogging_catastrophic_mode;
        v56 = _PFLogGetLogStream(1);
        v57 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
        if (v55)
        {
          if (v57)
          {
            LOWORD(v180.f_bsize) = 0;
LABEL_290:
            _os_log_error_impl(&dword_18565F000, v56, OS_LOG_TYPE_ERROR, "CoreData: error: d\n", &v180, 2u);
          }
        }

        else if (v57)
        {
          LOWORD(v180.f_bsize) = 0;
          goto LABEL_290;
        }
      }

      _NSCoreDataLog_console(1, "d");
      goto LABEL_73;
    }

    if (_pflogging_enable_oslog >= 1)
    {
      v58 = _pflogging_catastrophic_mode;
      v59 = _PFLogGetLogStream(1);
      v60 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
      if (v58)
      {
        if (v60)
        {
          LOWORD(v180.f_bsize) = 0;
LABEL_292:
          _os_log_error_impl(&dword_18565F000, v59, OS_LOG_TYPE_ERROR, "CoreData: error: -\n", &v180, 2u);
        }
      }

      else if (v60)
      {
        LOWORD(v180.f_bsize) = 0;
        goto LABEL_292;
      }
    }

    _NSCoreDataLog_console(1, "-");
LABEL_73:
    objc_autoreleasePoolPop(v54);
    v61 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_78;
    }

    v62 = _pflogging_catastrophic_mode;
    v63 = _PFLogGetLogStream(1);
    v64 = os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
    if (v62)
    {
      if (!v64)
      {
        goto LABEL_78;
      }

      v180.f_bsize = 67109120;
      v180.f_iosize = v175.st_mode & 0x1FF;
    }

    else
    {
      if (!v64)
      {
        goto LABEL_78;
      }

      v180.f_bsize = 67109120;
      v180.f_iosize = v175.st_mode & 0x1FF;
    }

    _os_log_error_impl(&dword_18565F000, v63, OS_LOG_TYPE_ERROR, "CoreData: error:   %3o\n", &v180, 8u);
LABEL_78:
    _NSCoreDataLog_console(1, "  %3o", v175.st_mode & 0x1FF);
    objc_autoreleasePoolPop(v61);
    v65 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v66 = _pflogging_catastrophic_mode;
      v67 = _PFLogGetLogStream(1);
      v68 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);
      if (v66)
      {
        if (v68)
        {
          if ((v175.st_mode & 0xF000) == 0xA000)
          {
            v69 = "is";
          }

          else
          {
            v69 = "is not";
          }

          v180.f_bsize = 136315138;
          *&v180.f_iosize = v69;
LABEL_261:
          _os_log_error_impl(&dword_18565F000, v67, OS_LOG_TYPE_ERROR, "CoreData: error:   file %s a symbolic link\n", &v180, 0xCu);
        }
      }

      else if (v68)
      {
        if ((v175.st_mode & 0xF000) == 0xA000)
        {
          v172 = "is";
        }

        else
        {
          v172 = "is not";
        }

        v180.f_bsize = 136315138;
        *&v180.f_iosize = v172;
        goto LABEL_261;
      }
    }

    if ((v175.st_mode & 0xF000) == 0xA000)
    {
      v70 = "is";
    }

    else
    {
      v70 = "is not";
    }

    _NSCoreDataLog_console(1, "  file %s a symbolic link", v70);
    objc_autoreleasePoolPop(v65);
LABEL_90:
    memset(&v180, 0, 512);
    if (statfs(a2, &v180))
    {
      v71 = *__error();
      v72 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v73 = _pflogging_catastrophic_mode;
        v74 = _PFLogGetLogStream(1);
        v75 = os_log_type_enabled(v74, OS_LOG_TYPE_ERROR);
        if (v73)
        {
          if (v75)
          {
            goto LABEL_236;
          }
        }

        else if (v75)
        {
LABEL_236:
          v171 = strerror(v71);
          *buf = 67109378;
          *v177 = v71;
          *&v177[4] = 2080;
          *&v177[6] = v171;
          _os_log_error_impl(&dword_18565F000, v74, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to statfs file; errno %d / %s.\n", buf, 0x12u);
        }
      }

      strerror(v71);
      _NSCoreDataLog_console(1, "Failed to statfs file; errno %d / %s.");
LABEL_101:
      objc_autoreleasePoolPop(v72);
      goto LABEL_102;
    }

    v76 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v77 = _pflogging_catastrophic_mode;
      v78 = _PFLogGetLogStream(1);
      v79 = os_log_type_enabled(v78, OS_LOG_TYPE_ERROR);
      if (v77)
      {
        if (!v79)
        {
          goto LABEL_104;
        }

        *buf = 0;
      }

      else
      {
        if (!v79)
        {
          goto LABEL_104;
        }

        *buf = 0;
      }

      _os_log_error_impl(&dword_18565F000, v78, OS_LOG_TYPE_ERROR, "CoreData: error: Information for file system\n", buf, 2u);
    }

LABEL_104:
    _NSCoreDataLog_console(1, "Information for file system");
    objc_autoreleasePoolPop(v76);
    v81 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_109;
    }

    v82 = _pflogging_catastrophic_mode;
    v83 = _PFLogGetLogStream(1);
    v84 = os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);
    if (v82)
    {
      if (!v84)
      {
        goto LABEL_109;
      }

      *buf = 0;
    }

    else
    {
      if (!v84)
      {
        goto LABEL_109;
      }

      *buf = 0;
    }

    _os_log_error_impl(&dword_18565F000, v83, OS_LOG_TYPE_ERROR, "CoreData: error: ---------------------------\n", buf, 2u);
LABEL_109:
    _NSCoreDataLog_console(1, "---------------------------");
    objc_autoreleasePoolPop(v81);
    v85 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_114;
    }

    v86 = _pflogging_catastrophic_mode;
    v87 = _PFLogGetLogStream(1);
    v88 = os_log_type_enabled(v87, OS_LOG_TYPE_ERROR);
    if (v86)
    {
      if (!v88)
      {
        goto LABEL_114;
      }

      *buf = 134217984;
      *v177 = v180.f_type;
    }

    else
    {
      if (!v88)
      {
        goto LABEL_114;
      }

      *buf = 134217984;
      *v177 = v180.f_type;
    }

    _os_log_error_impl(&dword_18565F000, v87, OS_LOG_TYPE_ERROR, "CoreData: error:   File system type: \t\t%#lx\n", buf, 0xCu);
LABEL_114:
    _NSCoreDataLog_console(1, "  File system type: \t\t%#lx", v180.f_type);
    objc_autoreleasePoolPop(v85);
    v89 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_119;
    }

    v90 = _pflogging_catastrophic_mode;
    v91 = _PFLogGetLogStream(1);
    v92 = os_log_type_enabled(v91, OS_LOG_TYPE_ERROR);
    if (v90)
    {
      if (!v92)
      {
        goto LABEL_119;
      }

      *buf = 134217984;
      *v177 = v180.f_flags;
    }

    else
    {
      if (!v92)
      {
        goto LABEL_119;
      }

      *buf = 134217984;
      *v177 = v180.f_flags;
    }

    _os_log_error_impl(&dword_18565F000, v91, OS_LOG_TYPE_ERROR, "CoreData: error:   File system flags: \t\t%#lx\n", buf, 0xCu);
LABEL_119:
    _NSCoreDataLog_console(1, "  File system flags: \t\t%#lx", v180.f_flags);
    objc_autoreleasePoolPop(v89);
    f_flags = v180.f_flags;
    if ((v180.f_flags & 1) == 0)
    {
      if ((v180.f_flags & 0x2000) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_132;
    }

    v94 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v95 = _pflogging_catastrophic_mode;
      v96 = _PFLogGetLogStream(1);
      v97 = os_log_type_enabled(v96, OS_LOG_TYPE_ERROR);
      if (v95)
      {
        if (!v97)
        {
          goto LABEL_131;
        }

        *buf = 0;
      }

      else
      {
        if (!v97)
        {
          goto LABEL_131;
        }

        *buf = 0;
      }

      _os_log_error_impl(&dword_18565F000, v96, OS_LOG_TYPE_ERROR, "CoreData: error:   MNT_RDONLY\n", buf, 2u);
    }

LABEL_131:
    _NSCoreDataLog_console(1, "  MNT_RDONLY");
    objc_autoreleasePoolPop(v94);
    f_flags = v180.f_flags;
    if ((v180.f_flags & 0x2000) == 0)
    {
LABEL_121:
      if ((f_flags & 0x4000) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_138;
    }

LABEL_132:
    v98 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_137;
    }

    v99 = _pflogging_catastrophic_mode;
    v100 = _PFLogGetLogStream(1);
    v101 = os_log_type_enabled(v100, OS_LOG_TYPE_ERROR);
    if (v99)
    {
      if (!v101)
      {
        goto LABEL_137;
      }

      *buf = 0;
    }

    else
    {
      if (!v101)
      {
        goto LABEL_137;
      }

      *buf = 0;
    }

    _os_log_error_impl(&dword_18565F000, v100, OS_LOG_TYPE_ERROR, "CoreData: error:   MNT_QUOTA\n", buf, 2u);
LABEL_137:
    _NSCoreDataLog_console(1, "  MNT_QUOTA");
    objc_autoreleasePoolPop(v98);
    f_flags = v180.f_flags;
    if ((v180.f_flags & 0x4000) == 0)
    {
LABEL_122:
      if ((f_flags & 0x200000) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_144;
    }

LABEL_138:
    v102 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_143;
    }

    v103 = _pflogging_catastrophic_mode;
    v104 = _PFLogGetLogStream(1);
    v105 = os_log_type_enabled(v104, OS_LOG_TYPE_ERROR);
    if (v103)
    {
      if (!v105)
      {
        goto LABEL_143;
      }

      *buf = 0;
    }

    else
    {
      if (!v105)
      {
        goto LABEL_143;
      }

      *buf = 0;
    }

    _os_log_error_impl(&dword_18565F000, v104, OS_LOG_TYPE_ERROR, "CoreData: error:   MNT_ROOTFS\n", buf, 2u);
LABEL_143:
    _NSCoreDataLog_console(1, "  MNT_ROOTFS");
    objc_autoreleasePoolPop(v102);
    f_flags = v180.f_flags;
    if ((v180.f_flags & 0x200000) == 0)
    {
LABEL_123:
      if ((f_flags & 0x800000) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_150;
    }

LABEL_144:
    v106 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_149;
    }

    v107 = _pflogging_catastrophic_mode;
    v108 = _PFLogGetLogStream(1);
    v109 = os_log_type_enabled(v108, OS_LOG_TYPE_ERROR);
    if (v107)
    {
      if (!v109)
      {
        goto LABEL_149;
      }

      *buf = 0;
    }

    else
    {
      if (!v109)
      {
        goto LABEL_149;
      }

      *buf = 0;
    }

    _os_log_error_impl(&dword_18565F000, v108, OS_LOG_TYPE_ERROR, "CoreData: error:   MNT_UNKNOWNPERMISSIONS\n", buf, 2u);
LABEL_149:
    _NSCoreDataLog_console(1, "  MNT_UNKNOWNPERMISSIONS");
    objc_autoreleasePoolPop(v106);
    f_flags = v180.f_flags;
    if ((v180.f_flags & 0x800000) == 0)
    {
LABEL_124:
      if ((f_flags & 0x2000000) == 0)
      {
LABEL_162:
        v118 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog < 1)
        {
          goto LABEL_167;
        }

        v119 = _pflogging_catastrophic_mode;
        v120 = _PFLogGetLogStream(1);
        v121 = os_log_type_enabled(v120, OS_LOG_TYPE_ERROR);
        if (v119)
        {
          if (!v121)
          {
            goto LABEL_167;
          }

          *buf = 134217984;
          *v177 = v180.f_blocks;
        }

        else
        {
          if (!v121)
          {
            goto LABEL_167;
          }

          *buf = 134217984;
          *v177 = v180.f_blocks;
        }

        _os_log_error_impl(&dword_18565F000, v120, OS_LOG_TYPE_ERROR, "CoreData: error:   Total data blocks: \t\t%lu\n", buf, 0xCu);
LABEL_167:
        _NSCoreDataLog_console(1, "  Total data blocks: \t\t%lu", v180.f_blocks);
        objc_autoreleasePoolPop(v118);
        v122 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog < 1)
        {
          goto LABEL_172;
        }

        v123 = _pflogging_catastrophic_mode;
        v124 = _PFLogGetLogStream(1);
        v125 = os_log_type_enabled(v124, OS_LOG_TYPE_ERROR);
        if (v123)
        {
          if (!v125)
          {
            goto LABEL_172;
          }

          *buf = 134217984;
          *v177 = v180.f_bfree;
        }

        else
        {
          if (!v125)
          {
            goto LABEL_172;
          }

          *buf = 134217984;
          *v177 = v180.f_bfree;
        }

        _os_log_error_impl(&dword_18565F000, v124, OS_LOG_TYPE_ERROR, "CoreData: error:   Free data blocks: \t\t%lu\n", buf, 0xCu);
LABEL_172:
        _NSCoreDataLog_console(1, "  Free data blocks: \t\t%lu", v180.f_bfree);
        objc_autoreleasePoolPop(v122);
        v126 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog < 1)
        {
          goto LABEL_177;
        }

        v127 = _pflogging_catastrophic_mode;
        v128 = _PFLogGetLogStream(1);
        v129 = os_log_type_enabled(v128, OS_LOG_TYPE_ERROR);
        if (v127)
        {
          if (!v129)
          {
            goto LABEL_177;
          }

          *buf = 134217984;
          *v177 = v180.f_bavail;
        }

        else
        {
          if (!v129)
          {
            goto LABEL_177;
          }

          *buf = 134217984;
          *v177 = v180.f_bavail;
        }

        _os_log_error_impl(&dword_18565F000, v128, OS_LOG_TYPE_ERROR, "CoreData: error:   Free blocks for nonsuperuser:\t%lu\n", buf, 0xCu);
LABEL_177:
        _NSCoreDataLog_console(1, "  Free blocks for nonsuperuser:\t%lu", v180.f_bavail);
        objc_autoreleasePoolPop(v126);
        v130 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog < 1)
        {
          goto LABEL_182;
        }

        v131 = _pflogging_catastrophic_mode;
        v132 = _PFLogGetLogStream(1);
        v133 = os_log_type_enabled(v132, OS_LOG_TYPE_ERROR);
        if (v131)
        {
          if (!v133)
          {
            goto LABEL_182;
          }

          *buf = 134217984;
          *v177 = v180.f_files;
        }

        else
        {
          if (!v133)
          {
            goto LABEL_182;
          }

          *buf = 134217984;
          *v177 = v180.f_files;
        }

        _os_log_error_impl(&dword_18565F000, v132, OS_LOG_TYPE_ERROR, "CoreData: error:   Total i-nodes: \t\t\t%lu\n", buf, 0xCu);
LABEL_182:
        _NSCoreDataLog_console(1, "  Total i-nodes: \t\t\t%lu", v180.f_files);
        objc_autoreleasePoolPop(v130);
        v134 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog < 1)
        {
          goto LABEL_187;
        }

        v135 = _pflogging_catastrophic_mode;
        v136 = _PFLogGetLogStream(1);
        v137 = os_log_type_enabled(v136, OS_LOG_TYPE_ERROR);
        if (v135)
        {
          if (!v137)
          {
            goto LABEL_187;
          }
        }

        else if (!v137)
        {
          goto LABEL_187;
        }

        *buf = 67109376;
        *v177 = v180.f_fsid.val[0];
        *&v177[4] = 1024;
        *&v177[6] = v180.f_fsid.val[1];
        _os_log_error_impl(&dword_18565F000, v136, OS_LOG_TYPE_ERROR, "CoreData: error:   File system ID: \t\t%#x, %#x\n", buf, 0xEu);
LABEL_187:
        _NSCoreDataLog_console(1, "  File system ID: \t\t%#x, %#x", v180.f_fsid.val[0], v180.f_fsid.val[1]);
        objc_autoreleasePoolPop(v134);
        v138 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog < 1)
        {
          goto LABEL_192;
        }

        v139 = _pflogging_catastrophic_mode;
        v140 = _PFLogGetLogStream(1);
        v141 = os_log_type_enabled(v140, OS_LOG_TYPE_ERROR);
        if (v139)
        {
          if (!v141)
          {
            goto LABEL_192;
          }

          *buf = 134217984;
          *v177 = v180.f_ffree;
        }

        else
        {
          if (!v141)
          {
            goto LABEL_192;
          }

          *buf = 134217984;
          *v177 = v180.f_ffree;
        }

        _os_log_error_impl(&dword_18565F000, v140, OS_LOG_TYPE_ERROR, "CoreData: error:   Free i-nodes: \t\t\t%llu\n", buf, 0xCu);
LABEL_192:
        _NSCoreDataLog_console(1, "  Free i-nodes: \t\t\t%llu", v180.f_ffree);
        objc_autoreleasePoolPop(v138);
        v142 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog < 1)
        {
          goto LABEL_197;
        }

        v143 = _pflogging_catastrophic_mode;
        v144 = _PFLogGetLogStream(1);
        v145 = os_log_type_enabled(v144, OS_LOG_TYPE_ERROR);
        if (v143)
        {
          if (!v145)
          {
            goto LABEL_197;
          }

          *buf = 67109120;
          *v177 = v180.f_owner;
        }

        else
        {
          if (!v145)
          {
            goto LABEL_197;
          }

          *buf = 67109120;
          *v177 = v180.f_owner;
        }

        _os_log_error_impl(&dword_18565F000, v144, OS_LOG_TYPE_ERROR, "CoreData: error:   Owner UID: \t\t\t%u\n", buf, 8u);
LABEL_197:
        _NSCoreDataLog_console(1, "  Owner UID: \t\t\t%u", v180.f_owner);
        objc_autoreleasePoolPop(v142);
        v146 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog < 1)
        {
          goto LABEL_202;
        }

        v147 = _pflogging_catastrophic_mode;
        v148 = _PFLogGetLogStream(1);
        v149 = os_log_type_enabled(v148, OS_LOG_TYPE_ERROR);
        if (v147)
        {
          if (!v149)
          {
            goto LABEL_202;
          }

          *buf = 136315138;
          *v177 = v180.f_fstypename;
        }

        else
        {
          if (!v149)
          {
            goto LABEL_202;
          }

          *buf = 136315138;
          *v177 = v180.f_fstypename;
        }

        _os_log_error_impl(&dword_18565F000, v148, OS_LOG_TYPE_ERROR, "CoreData: error:   Filesystem type name: \t\t%s\n", buf, 0xCu);
LABEL_202:
        _NSCoreDataLog_console(1, "  Filesystem type name: \t\t%s", v180.f_fstypename);
        objc_autoreleasePoolPop(v146);
        v150 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog < 1)
        {
          goto LABEL_207;
        }

        v151 = _pflogging_catastrophic_mode;
        v152 = _PFLogGetLogStream(1);
        v153 = os_log_type_enabled(v152, OS_LOG_TYPE_ERROR);
        if (v151)
        {
          if (!v153)
          {
            goto LABEL_207;
          }

          *buf = 136315138;
          *v177 = v180.f_mntonname;
        }

        else
        {
          if (!v153)
          {
            goto LABEL_207;
          }

          *buf = 136315138;
          *v177 = v180.f_mntonname;
        }

        _os_log_error_impl(&dword_18565F000, v152, OS_LOG_TYPE_ERROR, "CoreData: error:   Mount on name: \t\t\t%s\n", buf, 0xCu);
LABEL_207:
        _NSCoreDataLog_console(1, "  Mount on name: \t\t\t%s", v180.f_mntonname);
        objc_autoreleasePoolPop(v150);
        v154 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog < 1)
        {
          goto LABEL_212;
        }

        v155 = _pflogging_catastrophic_mode;
        v156 = _PFLogGetLogStream(1);
        v157 = os_log_type_enabled(v156, OS_LOG_TYPE_ERROR);
        if (v155)
        {
          if (!v157)
          {
            goto LABEL_212;
          }

          *buf = 136315138;
          *v177 = v180.f_mntfromname;
        }

        else
        {
          if (!v157)
          {
            goto LABEL_212;
          }

          *buf = 136315138;
          *v177 = v180.f_mntfromname;
        }

        _os_log_error_impl(&dword_18565F000, v156, OS_LOG_TYPE_ERROR, "CoreData: error:   Mount from name: \t\t%s\n", buf, 0xCu);
LABEL_212:
        _NSCoreDataLog_console(1, "  Mount from name: \t\t%s", v180.f_mntfromname);
        objc_autoreleasePoolPop(v154);
        if (!a3)
        {
          goto LABEL_102;
        }

        getpid();
        v158 = sandbox_check();
        if (v158 != 1)
        {
          if (!v158)
          {
            v72 = objc_autoreleasePoolPush();
            _pflogInitialize(1);
            if (_pflogging_enable_oslog >= 1)
            {
              v159 = _pflogging_catastrophic_mode;
              v160 = _PFLogGetLogStream(1);
              v161 = os_log_type_enabled(v160, OS_LOG_TYPE_ERROR);
              if (v159)
              {
                if (v161)
                {
                  *buf = 136315138;
                  *v177 = a3;
LABEL_306:
                  _os_log_error_impl(&dword_18565F000, v160, OS_LOG_TYPE_ERROR, "CoreData: error:   Sandbox access to %s allowed\n", buf, 0xCu);
                }
              }

              else if (v161)
              {
                *buf = 136315138;
                *v177 = a3;
                goto LABEL_306;
              }
            }

            _NSCoreDataLog_console(1, "  Sandbox access to %s allowed");
            goto LABEL_101;
          }

          v165 = *__error();
          v72 = objc_autoreleasePoolPush();
          _pflogInitialize(1);
          if (_pflogging_enable_oslog >= 1)
          {
            v166 = _pflogging_catastrophic_mode;
            v167 = _PFLogGetLogStream(1);
            v168 = os_log_type_enabled(v167, OS_LOG_TYPE_ERROR);
            if (v166)
            {
              if (v168)
              {
                goto LABEL_309;
              }
            }

            else if (v168)
            {
LABEL_309:
              v173 = __error();
              v174 = strerror(*v173);
              *buf = 136315650;
              *v177 = a3;
              *&v177[8] = 1024;
              *&v177[10] = v165;
              v178 = 2080;
              v179 = v174;
              _os_log_error_impl(&dword_18565F000, v167, OS_LOG_TYPE_ERROR, "CoreData: error:   Unable to determine if sandbox access to %s is allowed: %d (%s)\n", buf, 0x1Cu);
            }
          }

          v169 = __error();
          strerror(*v169);
          _NSCoreDataLog_console(1, "  Unable to determine if sandbox access to %s is allowed: %d (%s)");
          goto LABEL_101;
        }

        v72 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v162 = _pflogging_catastrophic_mode;
          v163 = _PFLogGetLogStream(1);
          v164 = os_log_type_enabled(v163, OS_LOG_TYPE_ERROR);
          if (v162)
          {
            if (v164)
            {
              *buf = 136315138;
              *v177 = a3;
LABEL_308:
              _os_log_error_impl(&dword_18565F000, v163, OS_LOG_TYPE_ERROR, "CoreData: error:   Sandbox access to %s denied\n", buf, 0xCu);
            }
          }

          else if (v164)
          {
            *buf = 136315138;
            *v177 = a3;
            goto LABEL_308;
          }
        }

        _NSCoreDataLog_console(1, "  Sandbox access to %s denied");
        goto LABEL_101;
      }

LABEL_156:
      v114 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v115 = _pflogging_catastrophic_mode;
        v116 = _PFLogGetLogStream(1);
        v117 = os_log_type_enabled(v116, OS_LOG_TYPE_ERROR);
        if (v115)
        {
          if (v117)
          {
            *buf = 0;
LABEL_304:
            _os_log_error_impl(&dword_18565F000, v116, OS_LOG_TYPE_ERROR, "CoreData: error:   MNT_DEFWRITE\n", buf, 2u);
          }
        }

        else if (v117)
        {
          *buf = 0;
          goto LABEL_304;
        }
      }

      _NSCoreDataLog_console(1, "  MNT_DEFWRITE");
      objc_autoreleasePoolPop(v114);
      goto LABEL_162;
    }

LABEL_150:
    v110 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_155;
    }

    v111 = _pflogging_catastrophic_mode;
    v112 = _PFLogGetLogStream(1);
    v113 = os_log_type_enabled(v112, OS_LOG_TYPE_ERROR);
    if (v111)
    {
      if (!v113)
      {
        goto LABEL_155;
      }

      *buf = 0;
    }

    else
    {
      if (!v113)
      {
        goto LABEL_155;
      }

      *buf = 0;
    }

    _os_log_error_impl(&dword_18565F000, v112, OS_LOG_TYPE_ERROR, "CoreData: error:   MNT_JOURNALED\n", buf, 2u);
LABEL_155:
    _NSCoreDataLog_console(1, "  MNT_JOURNALED");
    objc_autoreleasePoolPop(v110);
    if ((v180.f_flags & 0x2000000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_156;
  }

LABEL_102:
  v80 = *MEMORY[0x1E69E9840];
}

+ (uint64_t)_doNameAndTypeCheck:(uint64_t)a1
{
  objc_opt_self();
  if (!a2)
  {
    return 1;
  }

  v3 = [a2 count];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = objc_opt_class();
  v6 = 0;
  v7 = 1;
  while (1)
  {
    result = [objc_msgSend(a2 objectAtIndex:{v6), "name"}];
    if (!result)
    {
      break;
    }

    if (v5 == objc_opt_class())
    {
      return 0;
    }

    v6 = v7;
    if (v4 <= v7++)
    {
      return 1;
    }
  }

  return result;
}

+ (uint64_t)convertCString:(unint64_t *)a3 toUnsignedInt64:(int)a4 withBase:
{
  objc_opt_self();
  __endptr = 0;
  v7 = strtouq(a2, &__endptr, a4);
  if (__endptr)
  {
    v8 = __endptr == a2;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || *__endptr)
  {
    v7 = 0;
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  *a3 = v7;
  return v9;
}

+ (uint64_t)xpcStoreArchiverObjectIDClassesForSecureCoding
{
  objc_opt_self();
  if (qword_1ED4BE920 != -1)
  {
    dispatch_once(&qword_1ED4BE920, &__block_literal_global_142);
  }

  return qword_1ED4BE918;
}

+ (uint64_t)historyChangesArrayClassesForSecureCoding
{
  objc_opt_self();
  if (qword_1ED4BE930 != -1)
  {
    dispatch_once(&qword_1ED4BE930, &__block_literal_global_145);
  }

  return qword_1ED4BE928;
}

+ (uint64_t)historyQueryGenDataClassesForSecureCoding
{
  objc_opt_self();
  if (qword_1ED4BE940 != -1)
  {
    dispatch_once(&qword_1ED4BE940, &__block_literal_global_148);
  }

  return qword_1ED4BE938;
}

+ (id)valueForProcessArgument:(uint64_t)a1
{
  v21 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (a2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-%@", a2];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v17;
LABEL_4:
      v10 = 0;
      v11 = v8;
      v8 += v7;
      while (1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v16 + 1) + 8 * v10) isEqualToString:v5])
        {
          break;
        }

        ++v11;
        if (v7 == ++v10)
        {
          v7 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      if (v11 >= [v4 count] - 1)
      {
        goto LABEL_13;
      }

      v12 = [v4 objectAtIndex:v11 + 1];
    }

    else
    {
LABEL_10:

LABEL_13:
      v12 = 0;
    }

    v13 = v12;
    objc_autoreleasePoolPop(v3);
    result = v12;
  }

  else
  {
    result = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)stringValueForOverride:(uint64_t)a1
{
  objc_opt_self();
  v3 = [_PFRoutines valueForProcessArgument:a2];
  v4 = v3;
  if (((byte_1ED4BEEC7 & 1) != 0 || (byte_1ED4BEECC & 1) == 0) && (!v3 || ![v3 length]))
  {
    v5 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (!v5 || (v4 = v5, ![v5 length]))
    {
      v4 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    }
  }

  if ([v4 length])
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

+ (uint64_t)integerValueForOverride:(uint64_t)a1
{
  objc_opt_self();
  v3 = [_PFRoutines valueForProcessArgument:a2];
  if ([v3 length])
  {
    goto LABEL_6;
  }

  if (byte_1ED4BEEC7 & 1) == 0 && (byte_1ED4BEECC)
  {
    return 0;
  }

  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  if ([v3 length])
  {
LABEL_6:

    return [v3 integerValue];
  }

  else
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];

    return [v5 integerForKey:a2];
  }
}

+ (uint64_t)sensitiveIntegerValueForOverride:(uint64_t)a1
{
  objc_opt_self();
  if (byte_1ED4BEEC7 & 1) == 0 && (byte_1ED4BEECC)
  {
    return 0;
  }

  v4 = [_PFRoutines valueForProcessArgument:a2];
  if ([v4 length] || (v4 = objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30], "processInfo"), "environment"), "objectForKey:", a2), objc_msgSend(v4, "length")))
  {

    return [v4 integerValue];
  }

  else
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];

    return [v5 integerForKey:a2];
  }
}

+ (uint64_t)BOOLValueForOverride:(uint64_t)a1
{
  objc_opt_self();
  v3 = [_PFRoutines valueForProcessArgument:a2];
  if ([v3 length])
  {
    goto LABEL_6;
  }

  if (byte_1ED4BEEC7 & 1) == 0 && (byte_1ED4BEECC)
  {
    return 0;
  }

  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  if ([v3 length])
  {
LABEL_6:

    return [v3 BOOLValue];
  }

  else
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];

    return [v5 BOOLForKey:a2];
  }
}

+ (uint64_t)insecureBoolValueForOverride:(uint64_t)a1
{
  objc_opt_self();
  v3 = [_PFRoutines valueForProcessArgument:a2];
  if ([v3 length] || (v3 = objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30], "processInfo"), "environment"), "objectForKey:", a2), objc_msgSend(v3, "length")))
  {

    return [v3 BOOLValue];
  }

  else
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];

    return [v5 BOOLForKey:a2];
  }
}

+ (uint64_t)writePFExternalReferenceDataToInterimFile:(uint64_t)a1
{
  v53 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (![a2 hasExternalReferenceContent])
  {
    v7 = 0;
    goto LABEL_43;
  }

  v3 = [a2 _externalReferenceLocation];
  v4 = strlen(v3);
  v5 = malloc_type_calloc(1uLL, v4 + 9, 0x375C96A5uLL);
  strcat(&strncat(v5, v3, v4)[v4 - 1], ".interim");
  v6 = [a2 _originalData];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    v15 = [v6 _safeguardLocation];
    if (!v15)
    {
      goto LABEL_23;
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
    v42 = 0;
    if (!+[_PFRoutines createExternalReferenceLinkFromPath:toPath:protectionLevel:error:](_PFRoutines, v10, v7, [a2 preferredProtectionLevel], &v42))
    {
      v11 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v17 = _pflogging_catastrophic_mode;
        LogStream = _PFLogGetLogStream(1);
        v18 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
        if (v17)
        {
          if (v18)
          {
            goto LABEL_21;
          }
        }

        else if (v18)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_22;
    }

LABEL_13:
    v16 = v5;
    goto LABEL_42;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    v10 = [-[_PFEvanescentData url](v6) path];
    if ([v10 UTF8String])
    {
      v42 = 0;
      if (!+[_PFRoutines createExternalReferenceLinkFromPath:toPath:protectionLevel:error:](_PFRoutines, v10, v7, [a2 preferredProtectionLevel], &v42))
      {
        v11 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v12 = _pflogging_catastrophic_mode;
          LogStream = _PFLogGetLogStream(1);
          v14 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
          if (v12)
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if (v14)
          {
LABEL_21:
            *buf = 138412802;
            v48 = v10;
            v49 = 2112;
            v50 = v7;
            v51 = 2112;
            v52 = v42;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to clone external data reference from %@ to %@ error: %@\n", buf, 0x20u);
          }
        }

LABEL_22:
        _NSCoreDataLog_console(1, "Failed to clone external data reference from %@ to %@ error: %@", v10, v7, v42);
        objc_autoreleasePoolPop(v11);
        goto LABEL_23;
      }

      goto LABEL_13;
    }
  }

LABEL_23:
  v41 = v3;
  v19 = open(v5, 2561, 420);
  if (v19 < 0)
  {
    free(v5);
    v35 = MEMORY[0x1E695DF30];
    v36 = *MEMORY[0x1E695D930];
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't open externalDataReference interim file : %d", *__error()];
    v45 = @"Problem Path";
    v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
    v38 = MEMORY[0x1E695DF20];
    v39 = &v46;
    v40 = &v45;
LABEL_46:
    objc_exception_throw([v35 exceptionWithName:v36 reason:v37 userInfo:{objc_msgSend(v38, "dictionaryWithObjects:forKeys:count:", v39, v40, 1)}]);
  }

  v20 = v19;
  v21 = [a2 _bytesLengthForExternalReference];
  v22 = malloc_type_malloc(0x40000uLL, 0x100004077774924uLL);
  v23 = 0;
  if (v21 >= 0x40000)
  {
    v24 = 0x40000;
  }

  else
  {
    v24 = v21;
  }

  do
  {
    [v6 getBytes:v22 range:{v23, v24}];
    if (pwrite(v20, v22, v24, v23) != v24)
    {
      v34 = *__error();
      close(v20);
      free(v5);
      free(v22);
      v35 = MEMORY[0x1E695DF30];
      v36 = *MEMORY[0x1E695D930];
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't create externalDataReference interim file : %d", v34];
      v43 = @"Problem Path";
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v41];
      v38 = MEMORY[0x1E695DF20];
      v39 = &v44;
      v40 = &v43;
      goto LABEL_46;
    }

    v21 -= v24;
    v23 += v24;
    if (v21 >= 0x40000)
    {
      v24 = 0x40000;
    }

    else
    {
      v24 = v21;
    }
  }

  while (v21 > 0);
  v25 = [a2 preferredProtectionLevel];
  fcntl(v20, 64, v25);
  close(v20);
  v26 = [a2 _safeguardLocation];
  if (!v26)
  {
    goto LABEL_41;
  }

  v42 = 0;
  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v26];
  if ([_PFRoutines createExternalReferenceLinkFromPath:v7 toPath:v27 protectionLevel:v25 error:&v42])
  {
    [a2 doCleanupOnDealloc];
    goto LABEL_41;
  }

  v28 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v29 = _pflogging_catastrophic_mode;
    v30 = _PFLogGetLogStream(1);
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
LABEL_44:
        *buf = 138412802;
        v48 = v7;
        v49 = 2112;
        v50 = v27;
        v51 = 2112;
        v52 = v42;
        _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to clone external data reference from %@ to %@ error: %@\n", buf, 0x20u);
      }
    }

    else if (v31)
    {
      goto LABEL_44;
    }
  }

  _NSCoreDataLog_console(1, "Failed to clone external data reference from %@ to %@ error: %@", v7, v27, v42);
  objc_autoreleasePoolPop(v28);
LABEL_41:
  free(v5);
  v16 = v22;
LABEL_42:
  free(v16);
LABEL_43:
  v32 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (BOOL)createExternalReferenceLinkFromPath:(uint64_t)a3 toPath:(uint64_t)a4 protectionLevel:(void *)a5 error:
{
  v32 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v25 = 0;
  if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
  {
    goto LABEL_2;
  }

  if ([v25 code] == 516)
  {
    v18 = [v25 domain];
    if ([v18 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v25 = 0;
LABEL_2:
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v30[0] = a2;
      v30[1] = a3;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = open([*(*(&v21 + 1) + 8 * i) UTF8String], 1, 420);
            if (v14 >= 1)
            {
              v15 = v14;
              fcntl(v14, 64, a4);
              close(v15);
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
        }

        while (v11);
      }

      result = 1;
      goto LABEL_12;
    }
  }

  if (v25)
  {
    if (a5)
    {
      result = 0;
      *a5 = v25;
      goto LABEL_12;
    }

LABEL_23:
    result = 0;
    goto LABEL_12;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v27 = "/Library/Caches/com.apple.xbs/Sources/Persistence/_PFRoutines.m";
    v28 = 1024;
    v29 = 2157;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v20 = _PFLogGetLogStream(17);
  result = os_log_type_enabled(v20, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *buf = 136315394;
    v27 = "/Library/Caches/com.apple.xbs/Sources/Persistence/_PFRoutines.m";
    v28 = 1024;
    v29 = 2157;
    _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_23;
  }

LABEL_12:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)moveInterimFileToPermanentLocation:(uint64_t)a1
{
  v15[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = [a2 _externalReferenceLocation];
  v4 = strlen(v3);
  v5 = malloc_type_calloc(1uLL, v4 + 9, 0x685324CAuLL);
  strcat(&strncat(v5, v3, v4)[v4 - 1], ".interim");
  rename(v5, v3, v6);
  if (v7)
  {
    v10 = *__error();
    free(v5);
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't copy interim file to permanent location : %d", v10];
    v14 = @"Problem object";
    v15[0] = a2;
    objc_exception_throw([v11 exceptionWithName:v12 reason:v13 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v15, &v14, 1)}]);
  }

  free(v5);
  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

+ (void)readExternalReferenceDataFromFile:(uint64_t)a1
{
  objc_opt_self();
  if (![a2 hasExternalReferenceContent])
  {
    return 0;
  }

  v3 = [a2 _safeguardLocation];
  if (v3)
  {
    v4 = v3;
    v5 = open(v3, 0);
    if (v5 < 0)
    {
      v4 = [a2 _externalReferenceLocation];
      v5 = open(v4, 0);
      if (v5 < 0)
      {
        v6 = __error();
        v7 = MEMORY[0x1E695DF30];
        v8 = *MEMORY[0x1E695D940];
        v9 = MEMORY[0x1E696AEC0];
        v25 = v4;
        v26 = *v6;
        v10 = @"Unable to open file with path: %s (%d)";
LABEL_17:
        v24 = v9;
LABEL_19:
        v20 = [v24 stringWithFormat:v10, v25, v26];
        v21 = v7;
        v22 = v8;
LABEL_20:
        objc_exception_throw([v21 exceptionWithName:v22 reason:v20 userInfo:0]);
      }
    }
  }

  else
  {
    v4 = [a2 _externalReferenceLocation];
    v5 = open(v4, 0);
    if (v5 < 0)
    {
      v23 = __error();
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D940];
      v9 = MEMORY[0x1E696AEC0];
      v25 = v4;
      v26 = *v23;
      v10 = @"Unable to open file with path %s (%d)";
      goto LABEL_17;
    }
  }

  v12 = v5;
  fcntl(v5, 48, 1);
  v13 = [a2 _bytesLengthForExternalReference];
  v14 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v14 = malloc_default_zone();
  }

  v11 = malloc_type_zone_calloc(v14, v13, 1uLL, 0x100004077774924uLL);
  v15 = read(v12, v11, v13);
  if (v15 < 0)
  {
    v16 = *__error();
    close(v12);
    if (v16 >= 1)
    {
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D930];
      v24 = MEMORY[0x1E696AEC0];
      v25 = v16;
      v26 = v4;
      v10 = @"Failed to read external reference file at path (error: %d): %s";
      goto LABEL_19;
    }
  }

  else
  {
    close(v12);
  }

  if (v15 != v13)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D930];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing bytes from file at path %s, expected %lu, got %lu", v4, v13, v15];
    v21 = v18;
    v22 = v19;
    goto LABEL_20;
  }

  return v11;
}

+ (uint64_t)readBytesForExternalReferenceData:(void *)a3 intoBuffer:(off_t)a4 range:(size_t)a5
{
  objc_opt_self();
  result = [a2 hasExternalReferenceContent];
  if (result)
  {
    v10 = [a2 _safeguardLocation];
    if ((!v10 || (v11 = v10, v12 = open(v10, 0), v12 < 0)) && (v11 = [a2 _externalReferenceLocation], v12 = open(v11, 0), v12 < 0))
    {
      v24 = __error();
      v16 = MEMORY[0x1E695DF30];
      v17 = *MEMORY[0x1E695D940];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to open file with path: %s (%d)", v11, *v24];
    }

    else
    {
      v13 = v12;
      fcntl(v12, 48, 1);
      v14 = pread(v13, a3, a5, a4);
      if ((v14 & 0x8000000000000000) == 0)
      {
        v15 = v14;
        result = close(v13);
        if (v15 == a5)
        {
          return result;
        }

        v19 = MEMORY[0x1E695DF30];
        v20 = *MEMORY[0x1E695D940];
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to read requested number of bytes from path: %s (got %lu)", v11, v15];
        v22 = v19;
        v23 = v20;
LABEL_12:
        objc_exception_throw([v22 exceptionWithName:v23 reason:v21 userInfo:0]);
      }

      close(v13);
      v16 = MEMORY[0x1E695DF30];
      v17 = *MEMORY[0x1E695D940];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to read content of file with path: %s (%d)", v11, *__error()];
    }

    v21 = v18;
    v22 = v16;
    v23 = v17;
    goto LABEL_12;
  }

  return result;
}

+ (uint64_t)deleteFileForPFExternalReferenceData:(uint64_t)a1
{
  objc_opt_self();
  result = [a2 hasExternalReferenceContent];
  if (result)
  {
    v4 = [a2 externalReferenceLocationString];
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    result = [v5 fileExistsAtPath:v4];
    if (result)
    {

      return [v5 removeItemAtPath:v4 error:0];
    }
  }

  return result;
}

+ (uint64_t)_isInMemoryStoreURL:(uint64_t)a1
{
  objc_opt_self();
  result = [a2 isFileURL];
  if (result)
  {
    v4 = [a2 path];

    return [v4 hasPrefix:@"/dev/null"];
  }

  return result;
}

+ (BOOL)_isInMemoryStore:(uint64_t)a1
{
  objc_opt_self();
  if ([a2 type] != @"SQLite")
  {
    return [a2 type] == @"InMemory";
  }

  if (a2)
  {
    return (a2[201] >> 6) & 1;
  }

  return 0;
}

+ (id)transformDecodeValue:(id)a3 forTransformerNamed:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a4 || (v6 = [MEMORY[0x1E696B0A0] valueTransformerForName:a4]) == 0)
  {
    v7 = [MEMORY[0x1E696B0A0] valueTransformerForName:*MEMORY[0x1E696A510]];
LABEL_9:
    result = [v7 transformedValue:a3];
    goto LABEL_10;
  }

  v7 = v6;
  objc_opt_self();
  if (objc_opt_isKindOfClass() & 1) != 0 || ([a4 isEqualToString:@"NSUnarchiveFromData"] & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"NSKeyedUnarchiveFromData") & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"NSSecureUnarchiveFromData"))
  {
    goto LABEL_9;
  }

  result = [v7 reverseTransformedValue:a3];
LABEL_10:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)unarchiveCylicGraphObjectOfClasses:(uint64_t)a3 fromData:(uint64_t)a4 error:
{
  objc_opt_self();
  v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:a3 error:a4];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  [v7 setRequiresSecureCoding:1];
  [v8 setDecodingFailurePolicy:1];
  [v8 _allowDecodingCyclesInSecureMode];
  v9 = [v8 decodeTopLevelObjectOfClasses:a2 forKey:*MEMORY[0x1E696A508] error:a4];

  return v9;
}

+ (id)retainedDecodeValue:(void *)a3 forTransformableAttribute:
{
  objc_opt_self();
  v5 = objc_autoreleasePoolPush();
  v6 = +[_PFRoutines transformDecodeValue:forTransformerNamed:](_PFRoutines, "transformDecodeValue:forTransformerNamed:", a2, [a3 valueTransformerName]);
  objc_autoreleasePoolPop(v5);
  return v6;
}

+ (id)retainedEncodeObjectValue:(void *)a3 forTransformableAttribute:
{
  objc_opt_self();
  v5 = objc_autoreleasePoolPush();
  v6 = [a3 valueTransformerName];
  objc_opt_self();
  if (!v6 || (v7 = [MEMORY[0x1E696B0A0] valueTransformerForName:v6]) == 0)
  {
    v8 = [MEMORY[0x1E696B0A0] valueTransformerForName:*MEMORY[0x1E696A510]];
LABEL_9:
    v9 = [v8 reverseTransformedValue:a2];
    goto LABEL_10;
  }

  v8 = v7;
  objc_opt_self();
  if (objc_opt_isKindOfClass() & 1) != 0 || ([v6 isEqualToString:@"NSUnarchiveFromData"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"NSKeyedUnarchiveFromData") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"NSSecureUnarchiveFromData"))
  {
    goto LABEL_9;
  }

  v9 = [v8 transformedValue:a2];
LABEL_10:
  v10 = v9;
  objc_autoreleasePoolPop(v5);
  return v10;
}

+ (void)getIndexes:(void *)a3 fromCollection:(void *)a4 forObjectsInCollection:
{
  v84 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if ([a4 count])
  {
    v83 = 0u;
    v82 = 0u;
    v81 = 0u;
    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v7 = [a3 count];
    v8 = MEMORY[0x1EEE9AC00](v7);
    v11 = (v34 - v10);
    v12 = 8 * v9;
    v35 = a4;
    v36 = v8;
    v34[1] = v13;
    if (v8 > 0x200)
    {
      v11 = NSAllocateScannedUncollectable();
      v15 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v34 - v10, 8 * v9);
      MEMORY[0x1EEE9AC00](v14);
      v15 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v15, v12);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v16 = [a3 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v46;
      do
      {
        v20 = 0;
        v21 = v18;
        do
        {
          if (*v46 != v19)
          {
            objc_enumerationMutation(a3);
          }

          v22 = *(*(&v45 + 1) + 8 * v20);
          v18 = v21 + 1;
          *&v15[8 * v21] = v21 + 1;
          v11[v21] = v22;
          ++v20;
          ++v21;
        }

        while (v17 != v20);
        v17 = [a3 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v17);
    }

    memset(v44, 0, sizeof(v44));
    v23 = v35;
    if ([v35 countByEnumeratingWithState:v44 objects:&v50 count:16])
    {
      v24 = *v44[1];
    }

    v25 = _PFStackAllocatorCreate(&v52, 1024);
    memset(v41, 0, sizeof(v41));
    v42 = *(MEMORY[0x1E695E9D8] + 24);
    v43 = *(MEMORY[0x1E695E9D8] + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0;
    }

    else
    {
      v26 = v41;
    }

    v27 = CFDictionaryCreate(v25, v11, v15, v36, v26, 0);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v28 = [v23 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = 0;
      v31 = *v38;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v38 != v31)
          {
            objc_enumerationMutation(v23);
          }

          *(a2 + 4 * v30++) = CFDictionaryGetValue(v27, *(*(&v37 + 1) + 8 * i)) - 1;
        }

        v29 = [v23 countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v29);
    }

    if (v36 >= 0x201)
    {
      NSZoneFree(0, v15);
      NSZoneFree(0, v11);
    }

    if (*(&v53 + 1))
    {
      if (v27)
      {
        CFRelease(v27);
      }
    }

    else
    {
      *(&v52 + 1) = v52;
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

+ (uint64_t)newMutableOrderedSetFromCollection:(uint64_t)a1
{
  v11[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = [a2 count];
  v4 = v3;
  if (v3 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  if (v3 >= 0x201)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = v11 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 > 0x200)
  {
    v7 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v11 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v5);
  }

  [a2 getObjects:v7];
  v8 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObjects:v7 count:v4];
  if (v4 >= 0x201)
  {
    NSZoneFree(0, v7);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (uint64_t)anyObjectFromCollection:(uint64_t)a1
{
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  memset(v5, 0, sizeof(v5));
  result = [a2 countByEnumeratingWithState:v5 objects:v6 count:16];
  if (result)
  {
    result = **(&v5[0] + 1);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)newArrayOfObjectIDsFromCollection:(uint64_t)a1
{
  v12[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = [a2 count];
  v4 = v3;
  if (v3 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  if (v3 >= 0x201)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = v12 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 >= 0x201)
  {
    v7 = NSAllocateScannedUncollectable();
    [a2 getObjects:v7];
  }

  else
  {
    bzero(v12 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v5);
    [a2 getObjects:v7];
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  v8 = 0;
  do
  {
    *&v7[8 * v8] = [*&v7[8 * v8] objectID];
    ++v8;
  }

  while (v4 != v8);
LABEL_13:
  v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v7 count:v4];
  if (v4 >= 0x201)
  {
    NSZoneFree(0, v7);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (uint64_t)newSetOfObjectIDsFromCollection:(uint64_t)a1
{
  v12[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = [a2 count];
  v4 = v3;
  if (v3 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  if (v3 >= 0x201)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = v12 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 >= 0x201)
  {
    v7 = NSAllocateScannedUncollectable();
    [a2 getObjects:v7];
  }

  else
  {
    bzero(v12 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v5);
    [a2 getObjects:v7];
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  v8 = 0;
  do
  {
    *&v7[8 * v8] = [*&v7[8 * v8] objectID];
    ++v8;
  }

  while (v4 != v8);
LABEL_13:
  v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v7 count:v4];
  if (v4 >= 0x201)
  {
    NSZoneFree(0, v7);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (uint64_t)_objectsInOrderedCollection:(void *)a3 formSubstringInOrderedCollection:
{
  objc_opt_self();
  v5 = [a2 count];
  if (v5 - 1 >= [a3 count])
  {
    return 0;
  }

  v6 = [a3 indexOfObject:{objc_msgSend(a2, "firstObject")}];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = v6;
  v8 = [a2 count] + v6;
  if (v8 > [a3 count])
  {
    return 0;
  }

  v10 = [a2 count];
  if (!v10)
  {
    return 1;
  }

  v11 = v10;
  for (i = 0; i != v11; ++i)
  {
    result = [objc_msgSend(a2 objectAtIndex:{i), "isEqual:", objc_msgSend(a3, "objectAtIndex:", v7)}];
    if (!result)
    {
      break;
    }

    ++v7;
  }

  return result;
}

+ (uint64_t)newOrderedSetFromCollection:(void *)a3 byInsertingItems:(uint64_t)a4 atIndex:
{
  v38 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if ([a3 count])
  {
    v7 = [a2 count];
    v8 = [a3 count];
    v9 = [a2 count];
    v10 = v9;
    if (v9 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9;
    }

    if (v9 >= 0x201)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = &v33 - ((8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v9 > 0x200)
    {
      v13 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v33 - ((8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v11);
    }

    v18 = v7 + v8 + 1;
    if (v18 > 1)
    {
      v19 = v7 + v8 + 1;
    }

    else
    {
      v19 = 1;
    }

    if (v18 >= 0x201)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    v21 = &v33 - ((8 * v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = v7 + v8 + 1;
    v37 = v7;
    if (v18 > 0x200)
    {
      v21 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v33 - ((8 * v20 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v19);
    }

    if (v8 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v8;
    }

    if (v8 >= 0x201)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    v24 = &v33 - ((8 * v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v8 > 0x200)
    {
      v24 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v33 - ((8 * v23 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v22);
    }

    [a2 getObjects:v13];
    [a3 getObjects:v24];
    memmove(v21, v13, 8 * a4);
    if (v8)
    {
      v34 = a4;
      v35 = &v33;
      v25 = 0;
      v26 = v24;
      v27 = v8;
      do
      {
        if (([a2 containsObject:*v26] & 1) == 0)
        {
          *&v21[8 * a4++] = *v26;
          ++v25;
        }

        v26 += 8;
        --v27;
      }

      while (v27);
      v28 = v25;
      a4 = v34;
    }

    else
    {
      v28 = 0;
    }

    if (v37 != a4)
    {
      memmove(&v21[8 * v28 + 8 * a4], &v13[8 * a4], 8 * (v37 - a4));
    }

    v29 = objc_alloc(MEMORY[0x1E695DFA0]);
    v30 = [v29 initWithObjects:v21 count:v28 + v37];
    if (v10 >= 0x201)
    {
      NSZoneFree(0, v13);
    }

    if (v36 >= 0x201)
    {
      NSZoneFree(0, v21);
    }

    if (v8 >= 0x201)
    {
      NSZoneFree(0, v24);
    }

    v31 = *MEMORY[0x1E69E9840];
    return v30;
  }

  else
  {
    v14 = [a2 isNSArray];
    v15 = objc_alloc(MEMORY[0x1E695DFA0]);
    if (v14)
    {
      v16 = *MEMORY[0x1E69E9840];

      return [v15 initWithArray:a2];
    }

    else
    {
      v32 = *MEMORY[0x1E69E9840];

      return [v15 initWithOrderedSet:a2];
    }
  }
}

+ (id)newCollection:(void *)a3 fromCollection:(void *)a4 byAddingItems:
{
  v93 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = [a3 count];
  v8 = [a4 count];
  v9 = v8 + v7;
  if (v8 + v7)
  {
    if (a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = NSSet_EmptySet;
    }

    MEMORY[0x1EEE9AC00](v8);
    v12 = &v40 - v11;
    if (v9 > 0x200)
    {
      v12 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v40 - v11, 8 * v9);
    }

    v15 = [a4 count];
    if (v15)
    {
      v42 = v9;
      v40 = &v40;
      v92 = 0u;
      v91 = 0u;
      v90 = 0u;
      v89 = 0u;
      v88 = 0u;
      v87 = 0u;
      v86 = 0u;
      v85 = 0u;
      v84 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0uLL;
      v63 = 0uLL;
      v61 = 0uLL;
      MEMORY[0x1EEE9AC00](v15);
      v18 = (&v40 - v17);
      if (v7 > 0x200)
      {
        v18 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v40 - v17, 8 * v16);
      }

      memset(v57, 0, sizeof(v57));
      v20 = [a4 countByEnumeratingWithState:v57 objects:&v60 count:{16, v40}];
      v45 = v7;
      if (v20)
      {
        v21 = *v57[1];
      }

      v41 = a4;
      v44 = a2;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v22 = [v10 countByEnumeratingWithState:&v53 objects:v59 count:16];
      v43 = &v40;
      if (v22)
      {
        v23 = v22;
        v19 = 0;
        v24 = *v54;
        do
        {
          v25 = 0;
          v26 = v19;
          do
          {
            if (*v54 != v24)
            {
              objc_enumerationMutation(v10);
            }

            v27 = *(*(&v53 + 1) + 8 * v25);
            *&v12[8 * v26] = v27;
            v19 = v26 + 1;
            v18[v26] = v27;
            ++v25;
            ++v26;
          }

          while (v23 != v25);
          v23 = [v10 countByEnumeratingWithState:&v53 objects:v59 count:16];
        }

        while (v23);
      }

      else
      {
        v19 = 0;
      }

      v28 = _PFStackAllocatorCreate(&v61, 1024);
      v29 = *MEMORY[0x1E695E9F8];
      v50[1] = 0;
      v50[2] = 0;
      v50[0] = v29;
      v51 = *(MEMORY[0x1E695E9F8] + 24);
      v52 = *(MEMORY[0x1E695E9F8] + 40);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = 0;
      }

      else
      {
        v30 = v50;
      }

      v31 = CFSetCreate(v28, v18, v45, v30);
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v32 = v41;
      v33 = [v41 countByEnumeratingWithState:&v46 objects:v58 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v47;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v47 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v46 + 1) + 8 * i);
            if (!CFSetGetValue(v31, v37))
            {
              *&v12[8 * v19++] = v37;
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v46 objects:v58 count:16];
        }

        while (v34);
      }

      if (v45 >= 0x201)
      {
        NSZoneFree(0, v18);
      }

      a2 = v44;
      if (*(&v62 + 1))
      {
        v9 = v42;
        if (v31)
        {
          CFRelease(v31);
        }
      }

      else
      {
        *(&v61 + 1) = v61;
        v9 = v42;
      }
    }

    else
    {
      [v10 getObjects:v12];
      v19 = v9;
    }

    v38 = [[a2 alloc] initWithObjects:v12 count:v19];
    if (v9 >= 0x201)
    {
      NSZoneFree(0, v12);
    }

    v39 = *MEMORY[0x1E69E9840];
    return v38;
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    return objc_alloc_init(a2);
  }
}

+ (id)newOrderedSetFromCollection:(void *)a3 byAddingItems:
{
  objc_opt_self();
  v5 = objc_opt_class();

  return [_PFRoutines newCollection:v5 fromCollection:a2 byAddingItems:a3];
}

+ (id)newSetFromCollection:(void *)a3 byAddingItems:
{
  objc_opt_self();
  v5 = objc_opt_class();

  return [_PFRoutines newCollection:v5 fromCollection:a2 byAddingItems:a3];
}

+ (id)newOrderedSetFromCollection:(void *)a3 byRemovingItems:
{
  v87 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [a3 count];
  v6 = [a2 count];
  if (v6)
  {
    v7 = v6;
    MEMORY[0x1EEE9AC00](v6);
    if (v7 > 0x200)
    {
      v9 = NSAllocateScannedUncollectable();
      v41 = v9;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v41 = v37 - v8;
      bzero(v37 - v8, 8 * v7);
      if (v5)
      {
LABEL_4:
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        MEMORY[0x1EEE9AC00](v9);
        v11 = (v37 - v10);
        v38 = v7;
        v39 = v37;
        v40 = v5;
        v37[1] = v12;
        if (v5 > 0x200)
        {
          v11 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v37 - v10, 8 * v5);
        }

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v18 = [a3 countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = 0;
          v21 = *v50;
          do
          {
            v22 = 0;
            v23 = v20;
            do
            {
              if (*v50 != v21)
              {
                objc_enumerationMutation(a3);
              }

              if (!v23)
              {
                v24 = *(*(&v49 + 1) + 8 * v22);
              }

              v20 = v23 + 1;
              v11[v23++] = *(*(&v49 + 1) + 8 * v22++);
            }

            while (v19 != v22);
            v19 = [a3 countByEnumeratingWithState:&v49 objects:v54 count:16];
          }

          while (v19);
        }

        v25 = _PFStackAllocatorCreate(&v55, 1024);
        v26 = *MEMORY[0x1E695E9F8];
        v46[1] = 0;
        v46[2] = 0;
        v46[0] = v26;
        v47 = *(MEMORY[0x1E695E9F8] + 24);
        v48 = *(MEMORY[0x1E695E9F8] + 40);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = 0;
        }

        else
        {
          v27 = v46;
        }

        v28 = CFSetCreate(v25, v11, v40, v27);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v29 = [a2 countByEnumeratingWithState:&v42 objects:v53 count:16];
        if (v29)
        {
          v30 = v29;
          v17 = 0;
          v31 = *v43;
          v32 = v41;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v43 != v31)
              {
                objc_enumerationMutation(a2);
              }

              v34 = *(*(&v42 + 1) + 8 * i);
              if (!CFSetGetValue(v28, v34))
              {
                *&v32[8 * v17++] = v34;
              }
            }

            v30 = [a2 countByEnumeratingWithState:&v42 objects:v53 count:16];
          }

          while (v30);
        }

        else
        {
          v17 = 0;
        }

        if (v40 >= 0x201)
        {
          NSZoneFree(0, v11);
        }

        v7 = v38;
        if (*(&v56 + 1))
        {
          if (v28)
          {
            CFRelease(v28);
          }
        }

        else
        {
          *(&v55 + 1) = v55;
        }

        v16 = v41;
        goto LABEL_42;
      }
    }

    v16 = v41;
    [a2 getObjects:v41];
    v17 = v7;
LABEL_42:
    v35 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObjects:v16 count:v17];
    if (v7 >= 0x201)
    {
      NSZoneFree(0, v16);
    }

    v36 = *MEMORY[0x1E69E9840];
    return v35;
  }

  v13 = MEMORY[0x1E695DFA0];
  v14 = *MEMORY[0x1E69E9840];

  return objc_alloc_init(v13);
}

+ (id)newMutableSetFromCollection:(void *)a3 byRemovingItems:
{
  v87 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [a3 count];
  v6 = [a2 count];
  if (v6)
  {
    v7 = v6;
    MEMORY[0x1EEE9AC00](v6);
    if (v7 > 0x200)
    {
      v9 = NSAllocateScannedUncollectable();
      v41 = v9;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v41 = v37 - v8;
      bzero(v37 - v8, 8 * v7);
      if (v5)
      {
LABEL_4:
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        MEMORY[0x1EEE9AC00](v9);
        v11 = (v37 - v10);
        v38 = v7;
        v39 = v37;
        v40 = v5;
        v37[1] = v12;
        if (v5 > 0x200)
        {
          v11 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v37 - v10, 8 * v5);
        }

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v18 = [a3 countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = 0;
          v21 = *v50;
          do
          {
            v22 = 0;
            v23 = v20;
            do
            {
              if (*v50 != v21)
              {
                objc_enumerationMutation(a3);
              }

              if (!v23)
              {
                v24 = *(*(&v49 + 1) + 8 * v22);
              }

              v20 = v23 + 1;
              v11[v23++] = *(*(&v49 + 1) + 8 * v22++);
            }

            while (v19 != v22);
            v19 = [a3 countByEnumeratingWithState:&v49 objects:v54 count:16];
          }

          while (v19);
        }

        v25 = _PFStackAllocatorCreate(&v55, 1024);
        v26 = *MEMORY[0x1E695E9F8];
        v46[1] = 0;
        v46[2] = 0;
        v46[0] = v26;
        v47 = *(MEMORY[0x1E695E9F8] + 24);
        v48 = *(MEMORY[0x1E695E9F8] + 40);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = 0;
        }

        else
        {
          v27 = v46;
        }

        v28 = CFSetCreate(v25, v11, v40, v27);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v29 = [a2 countByEnumeratingWithState:&v42 objects:v53 count:16];
        if (v29)
        {
          v30 = v29;
          v17 = 0;
          v31 = *v43;
          v32 = v41;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v43 != v31)
              {
                objc_enumerationMutation(a2);
              }

              v34 = *(*(&v42 + 1) + 8 * i);
              if (!CFSetGetValue(v28, v34))
              {
                *&v32[8 * v17++] = v34;
              }
            }

            v30 = [a2 countByEnumeratingWithState:&v42 objects:v53 count:16];
          }

          while (v30);
        }

        else
        {
          v17 = 0;
        }

        if (v40 >= 0x201)
        {
          NSZoneFree(0, v11);
        }

        v7 = v38;
        if (*(&v56 + 1))
        {
          if (v28)
          {
            CFRelease(v28);
          }
        }

        else
        {
          *(&v55 + 1) = v55;
        }

        v16 = v41;
        goto LABEL_42;
      }
    }

    v16 = v41;
    [a2 getObjects:v41];
    v17 = v7;
LABEL_42:
    v35 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:v16 count:v17];
    if (v7 >= 0x201)
    {
      NSZoneFree(0, v16);
    }

    v36 = *MEMORY[0x1E69E9840];
    return v35;
  }

  v13 = MEMORY[0x1E695DFA8];
  v14 = *MEMORY[0x1E69E9840];

  return objc_alloc_init(v13);
}

+ (id)newMutableSetFromCollection:(void *)a3 byIntersectingWithCollection:
{
  v86 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [a2 count];
  v6 = [a3 count];
  if (v5 && (v7 = v6) != 0)
  {
    v37 = &v37;
    MEMORY[0x1EEE9AC00](v6);
    v9 = &v37 - v8;
    v39 = v5;
    if (v5 > 0x200)
    {
      v10 = NSAllocateScannedUncollectable();
      v9 = v10;
    }

    else
    {
      bzero(&v37 - v8, 8 * v5);
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    MEMORY[0x1EEE9AC00](v10);
    v15 = (&v37 - v14);
    v40 = v7;
    if (v7 > 0x200)
    {
      v15 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v37 - v14, 8 * v7);
    }

    v38 = a2;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v16 = [a3 countByEnumeratingWithState:&v48 objects:v53 count:{16, v37}];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v49;
      do
      {
        v20 = 0;
        v21 = v18;
        do
        {
          if (*v49 != v19)
          {
            objc_enumerationMutation(a3);
          }

          if (!v21)
          {
            v22 = *(*(&v48 + 1) + 8 * v20);
          }

          v18 = v21 + 1;
          v15[v21++] = *(*(&v48 + 1) + 8 * v20++);
        }

        while (v17 != v20);
        v17 = [a3 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v17);
    }

    v23 = _PFStackAllocatorCreate(&v54, 1024);
    v24 = *MEMORY[0x1E695E9F8];
    v45[1] = 0;
    v45[2] = 0;
    v45[0] = v24;
    v46 = *(MEMORY[0x1E695E9F8] + 24);
    v47 = *(MEMORY[0x1E695E9F8] + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = 0;
    }

    else
    {
      v25 = v45;
    }

    v26 = CFSetCreate(v23, v15, v40, v25);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v27 = v38;
    v28 = [v38 countByEnumeratingWithState:&v41 objects:v52 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = 0;
      v31 = *v42;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v42 != v31)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v41 + 1) + 8 * i);
          if (CFSetGetValue(v26, v33))
          {
            *&v9[8 * v30++] = v33;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v41 objects:v52 count:16];
      }

      while (v29);
    }

    else
    {
      v30 = 0;
    }

    if (v40 >= 0x201)
    {
      NSZoneFree(0, v15);
    }

    if (*(&v55 + 1))
    {
      v34 = v39;
      if (v26)
      {
        CFRelease(v26);
      }
    }

    else
    {
      *(&v54 + 1) = v54;
      v34 = v39;
    }

    v35 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:v9 count:v30];
    if (v34 >= 0x201)
    {
      NSZoneFree(0, v9);
    }

    v36 = *MEMORY[0x1E69E9840];
    return v35;
  }

  else
  {
    v11 = MEMORY[0x1E695DFA8];
    v12 = *MEMORY[0x1E69E9840];

    return objc_alloc_init(v11);
  }
}

+ (id)newMutableArrayFromCollection:(void *)a3 byRemovingItems:
{
  v87 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [a3 count];
  v6 = [a2 count];
  if (v6)
  {
    v7 = v6;
    MEMORY[0x1EEE9AC00](v6);
    if (v7 > 0x200)
    {
      v9 = NSAllocateScannedUncollectable();
      v41 = v9;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v41 = v37 - v8;
      bzero(v37 - v8, 8 * v7);
      if (v5)
      {
LABEL_4:
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        MEMORY[0x1EEE9AC00](v9);
        v11 = (v37 - v10);
        v38 = v7;
        v39 = v37;
        v40 = v5;
        v37[1] = v12;
        if (v5 > 0x200)
        {
          v11 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v37 - v10, 8 * v5);
        }

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v18 = [a3 countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = 0;
          v21 = *v50;
          do
          {
            v22 = 0;
            v23 = v20;
            do
            {
              if (*v50 != v21)
              {
                objc_enumerationMutation(a3);
              }

              if (!v23)
              {
                v24 = *(*(&v49 + 1) + 8 * v22);
              }

              v20 = v23 + 1;
              v11[v23++] = *(*(&v49 + 1) + 8 * v22++);
            }

            while (v19 != v22);
            v19 = [a3 countByEnumeratingWithState:&v49 objects:v54 count:16];
          }

          while (v19);
        }

        v25 = _PFStackAllocatorCreate(&v55, 1024);
        v26 = *MEMORY[0x1E695E9F8];
        v46[1] = 0;
        v46[2] = 0;
        v46[0] = v26;
        v47 = *(MEMORY[0x1E695E9F8] + 24);
        v48 = *(MEMORY[0x1E695E9F8] + 40);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = 0;
        }

        else
        {
          v27 = v46;
        }

        v28 = CFSetCreate(v25, v11, v40, v27);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v29 = [a2 countByEnumeratingWithState:&v42 objects:v53 count:16];
        if (v29)
        {
          v30 = v29;
          v17 = 0;
          v31 = *v43;
          v32 = v41;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v43 != v31)
              {
                objc_enumerationMutation(a2);
              }

              v34 = *(*(&v42 + 1) + 8 * i);
              if (!CFSetGetValue(v28, v34))
              {
                *&v32[8 * v17++] = v34;
              }
            }

            v30 = [a2 countByEnumeratingWithState:&v42 objects:v53 count:16];
          }

          while (v30);
        }

        else
        {
          v17 = 0;
        }

        if (v40 >= 0x201)
        {
          NSZoneFree(0, v11);
        }

        v7 = v38;
        if (*(&v56 + 1))
        {
          if (v28)
          {
            CFRelease(v28);
          }
        }

        else
        {
          *(&v55 + 1) = v55;
        }

        v16 = v41;
        goto LABEL_42;
      }
    }

    v16 = v41;
    [a2 getObjects:v41];
    v17 = v7;
LABEL_42:
    v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:v16 count:v17];
    if (v7 >= 0x201)
    {
      NSZoneFree(0, v16);
    }

    v36 = *MEMORY[0x1E69E9840];
    return v35;
  }

  v13 = MEMORY[0x1E695DF70];
  v14 = *MEMORY[0x1E69E9840];

  return objc_alloc_init(v13);
}

+ (id)_newCollectionFromCollection:(uint64_t)a3 forParentContext:(objc_class *)a4 andClass:
{
  v29 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = [a2 count];
  if (v7)
  {
    v8 = v7;
    v23[1] = v23;
    if (v7 >= 0x201)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7;
    }

    v10 = (8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    v11 = v23 - v10;
    if (v7 > 0x200)
    {
      v11 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v23 - v10, 8 * v7);
    }

    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v24 = 0u;
    v14 = [a2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v25;
      do
      {
        v18 = 0;
        v19 = v16;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(a2);
          }

          v16 = v19 + 1;
          *&v11[8 * v19++] = _PFRetainedObjectForMappedChildObjectIDInParentContext([*(*(&v24 + 1) + 8 * v18++) objectID], a3);
        }

        while (v15 != v18);
        v15 = [a2 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    v20 = [[a4 alloc] initWithObjects:v11 count:v16];
    for (i = 0; i != v8; ++i)
    {
    }

    if (v8 >= 0x201)
    {
      NSZoneFree(0, v11);
    }

    v22 = *MEMORY[0x1E69E9840];
    return v20;
  }

  else
  {
    v12 = *MEMORY[0x1E69E9840];

    return objc_alloc_init(a4);
  }
}

+ (id)newMutableArrayFromCollection:(uint64_t)a3 forParentContext:
{
  objc_opt_self();
  v5 = objc_opt_class();

  return [_PFRoutines _newCollectionFromCollection:a2 forParentContext:a3 andClass:v5];
}

+ (id)newMutableSetFromCollection:(uint64_t)a3 forParentContext:
{
  objc_opt_self();
  v5 = objc_opt_class();

  return [_PFRoutines _newCollectionFromCollection:a2 forParentContext:a3 andClass:v5];
}

+ (id)newMutableOrderedSetFromCollection:(uint64_t)a3 forParentContext:
{
  objc_opt_self();
  v5 = objc_opt_class();

  return [_PFRoutines _newCollectionFromCollection:a2 forParentContext:a3 andClass:v5];
}

+ (id)_replaceBaseline:(void *)a3 inOrderedSet:(void *)a4 withOrderedSet:
{
  v49 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = [a3 count];
  v8 = [a2 count];
  if (v7)
  {
    v9 = v8;
    if ([a4 count])
    {
      if (v9)
      {
        v10 = [a3 indexOfObject:{objc_msgSend(a2, "firstObject")}];
        if (v10)
        {
          v11 = v10;
          if (v10 + v9 == v7)
          {
            v12 = v7 - v9;
            v13 = [a4 count];
            v14 = v13 + v12;
            MEMORY[0x1EEE9AC00](v13);
            v17 = &v44 - v16;
            if (v14 > 0x200)
            {
              v17 = NSAllocateScannedUncollectable();
            }

            else
            {
              bzero(&v44 - v16, 8 * v15);
            }

            [a3 getObjects:v17 range:{0, v12}];
            v30 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v17 count:v12];
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v31 = [a4 countByEnumeratingWithState:&v44 objects:v48 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v45;
              do
              {
                for (i = 0; i != v32; ++i)
                {
                  if (*v45 != v33)
                  {
                    objc_enumerationMutation(a4);
                  }

                  v35 = *(*(&v44 + 1) + 8 * i);
                  if (([v30 containsObject:v35] & 1) == 0)
                  {
                    *&v17[8 * v12++] = v35;
                  }
                }

                v32 = [a4 countByEnumeratingWithState:&v44 objects:v48 count:16];
              }

              while (v32);
            }

            v36 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObjects:v17 count:v12];
            if (v14 >= 0x201)
            {
              NSZoneFree(0, v17);
            }
          }

          else
          {
            MEMORY[0x1EEE9AC00](v10);
            v29 = &v44 - v28;
            if (v7 > 0x200)
            {
              v29 = NSAllocateScannedUncollectable();
            }

            else
            {
              bzero(&v44 - v28, 8 * v7);
            }

            [a3 getObjects:v29];
            v37 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:v29 count:v7];
            if (v7 >= 0x201)
            {
              NSZoneFree(0, v29);
            }

            v38 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v11, v9}];
            if (v9 == [a4 count])
            {
              if (([a4 isNSArray] & 1) == 0)
              {
                a4 = [a4 array];
              }

              [v37 replaceObjectsAtIndexes:v38 withObjects:a4];
            }

            else
            {
              [v37 removeObjectsAtIndexes:v38];
              v39 = [a4 count];
              v40 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v11, v39}];
              if ([a4 isNSArray])
              {
                v41 = v37;
                v42 = a4;
              }

              else
              {
                v42 = [a4 array];
                v41 = v37;
              }

              [v41 insertObjects:v42 atIndexes:v40];
            }

            v36 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:v37];
          }

          v43 = *MEMORY[0x1E69E9840];
          return v36;
        }

        v25 = [a3 objectsAtIndexes:{objc_msgSend(MEMORY[0x1E696AC90], "indexSetWithIndexesInRange:", v9, v7 - v9)}];
        v26 = *MEMORY[0x1E69E9840];
        v24 = a4;
      }

      else
      {
        v23 = *MEMORY[0x1E69E9840];
        v24 = a4;
        v25 = a3;
      }

      return [_PFRoutines newOrderedSetFromCollection:v24 byAddingItems:v25];
    }

    else if (v9)
    {
      v20 = *MEMORY[0x1E69E9840];

      return [_PFRoutines newOrderedSetFromCollection:a3 byRemovingItems:a2];
    }

    else
    {
      v27 = *MEMORY[0x1E69E9840];

      return [_PFRoutines newMutableOrderedSetFromCollection:a3];
    }
  }

  else if ([a4 isNSOrderedSet])
  {
    v18 = *MEMORY[0x1E69E9840];

    return [a4 mutableCopy];
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x1E695DFA0]);
    v22 = *MEMORY[0x1E69E9840];

    return [v21 initWithArray:a4];
  }
}

+ (uint64_t)_expressionIsCompoundIndexCompatible:(uint64_t)a1
{
  objc_opt_self();
  result = [a2 expressionType];
  if (result != 1)
  {
    if (result == 3)
    {
      v4 = [a2 keyPath];
      return [@"self" caseInsensitiveCompare:v4] || objc_msgSend(@"self", "caseInsensitiveCompare:", v4) != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (__CFDictionary)_createDictionaryPartitioningObjects:(id)a3 intoHierarchies:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x1E69E9840];
  memset(&callBacks, 0, sizeof(callBacks));
  callBacks.copyDescription = *(MEMORY[0x1E695E9F8] + 24);
  memset(&keyCallBacks, 0, 24);
  *&keyCallBacks.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
  keyCallBacks.hash = *(MEMORY[0x1E695E9D8] + 40);
  valueCallBacks.version = 0;
  *&valueCallBacks.retain = *(MEMORY[0x1E695E9E8] + 8);
  valueCallBacks.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
  valueCallBacks.equal = 0;
  v6 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, &valueCallBacks);
  v7 = [a3 count];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = [v12 entity];
        if (v4)
        {
          if (v13)
          {
            if (atomic_load((v13 + 124)))
            {
              v15 = *(v13 + 72);
            }

            else
            {
              do
              {
                v15 = v13;
                v13 = [v13 superentity];
              }

              while (v13);
            }
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = v13;
        }

        Value = CFDictionaryGetValue(v6, v15);
        if (!Value)
        {
          Value = CFSetCreateMutable(0, v7, &callBacks);
          CFDictionarySetValue(v6, v15, Value);
          CFRelease(Value);
        }

        CFSetAddValue(Value, v12);
        ++v11;
      }

      while (v11 != v9);
      v17 = [a3 countByEnumeratingWithState:&v20 objects:v27 count:16];
      v9 = v17;
    }

    while (v17);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (__CFDictionary)_createDictionaryPartitioningObjectIDs:(id)a3 intoHierarchies:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x1E69E9840];
  memset(&callBacks, 0, sizeof(callBacks));
  callBacks.copyDescription = *(MEMORY[0x1E695E9F8] + 24);
  memset(&keyCallBacks, 0, 24);
  *&keyCallBacks.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
  keyCallBacks.hash = *(MEMORY[0x1E695E9D8] + 40);
  valueCallBacks.version = 0;
  *&valueCallBacks.retain = *(MEMORY[0x1E695E9E8] + 8);
  valueCallBacks.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
  valueCallBacks.equal = 0;
  v6 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, &valueCallBacks);
  v7 = [a3 count];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = [v12 entity];
        if (v4)
        {
          if (v13)
          {
            if (atomic_load((v13 + 124)))
            {
              v15 = *(v13 + 72);
            }

            else
            {
              do
              {
                v15 = v13;
                v13 = [v13 superentity];
              }

              while (v13);
            }
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = v13;
        }

        Value = CFDictionaryGetValue(v6, v15);
        if (!Value)
        {
          Value = CFSetCreateMutable(0, v7, &callBacks);
          CFDictionarySetValue(v6, v15, Value);
          CFRelease(Value);
        }

        CFSetAddValue(Value, v12);
        ++v11;
      }

      while (v11 != v9);
      v17 = [a3 countByEnumeratingWithState:&v20 objects:v27 count:16];
      v9 = v17;
    }

    while (v17);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (uint64_t)fetchHeterogeneousCollectionByObjectIDs:(uint64_t)a3 intoContext:
{
  objc_opt_self();
  objc_opt_self();
  v5 = [_PFRoutines _createDictionaryPartitioningObjects:a2 intoHierarchies:1];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__9;
  v13 = __Block_byref_object_dispose__9;
  v14 = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67___PFRoutines_fetchHeterogeneousCollectionByObjectIDs_intoContext___block_invoke;
  v8[3] = &unk_1E6EC1CD8;
  v8[4] = a3;
  v8[5] = &v9;
  [(__CFDictionary *)v5 enumerateKeysAndObjectsUsingBlock:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

+ (__CFDictionary)createDictionaryPartitioningObjectsByEntity:(uint64_t)a1
{
  objc_opt_self();

  return [_PFRoutines _createDictionaryPartitioningObjects:a2 intoHierarchies:0];
}

+ (__CFDictionary)createDictionaryPartitioningObjectsIDByRootEntity:(uint64_t)a1
{
  objc_opt_self();

  return [_PFRoutines _createDictionaryPartitioningObjectIDs:a2 intoHierarchies:1];
}

+ (BOOL)isSanitizedVersionOf:(void *)a3 equalTo:
{
  objc_opt_self();
  v5 = [a2 UTF8String];
  v6 = [a3 UTF8String];
  v7 = strlen(v6);
  return strncmp(v5, v6, v7) == 0;
}

+ (uint64_t)sanitize:(uint64_t)a1
{
  objc_opt_self();
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a2 UTF8String];

  return [v3 stringWithUTF8String:v4];
}

+ (void)wrapBlockInGuardedAutoreleasePool:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  (*(a3 + 2))(a3);
}

+ (void)efficientlyEnumerateManagedObjectsInFetchRequest:(void *)a3 usingManagedObjectContext:(uint64_t)a4 andApplyBlock:
{
  v39[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v28 = a2;
  if (![a2 fetchBatchSize])
  {
    v25 = MEMORY[0x1E695DF30];
    v38 = @"offendingFetch";
    v39[0] = a2;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    objc_exception_throw([v25 exceptionWithName:*MEMORY[0x1E695D940] reason:@"This method can't be very efficient if you don't bother to set a batch size!" userInfo:v26]);
  }

  v31 = a3;
  if ([a3 hasChanges])
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to begin batch processing with pending changes. At best these changes may be saved unpredictably (depending on the batching algorithm used and downstream code) leading to inconsistent behavior across platforms / datasets. At worst they will be forgotten, and references to them invalidated when the context is reset between batches. Only call this method on clean contexts.\n", buf, 2u);
    }

    v7 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to begin batch processing with pending changes. At best these changes may be saved unpredictably (depending on the batching algorithm used and downstream code) leading to inconsistent behavior across platforms / datasets. At worst they will be forgotten, and references to them invalidated when the context is reset between batches. Only call this method on clean contexts.", buf, 2u);
    }
  }

  context = objc_autoreleasePoolPush();
  v33 = 0;
  v32 = 0;
  v8 = [a3 queryGenerationToken];
  if (v8 == +[NSQueryGenerationToken unpinnedQueryGenerationToken])
  {
    v9 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = a2;
      _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: fault: Efficient batching requires the use of query generations: %@\n", buf, 0xCu);
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v37 = a2;
      _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Efficient batching requires the use of query generations: %@", buf, 0xCu);
    }
  }

  buf[0] = 0;
  v30 = [a3 executeFetchRequest:a2 error:&v33];
  if (v30)
  {
    v11 = [a2 fetchBatchSize];
    v12 = [v30 count];
    v13 = v12;
    if (v12 / v11 * v11 == v12)
    {
      v14 = v12 / v11;
    }

    else
    {
      v14 = v12 / v11 + 1;
    }

    if (v14)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = v11;
      do
      {
        if (v13 >= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v13;
        }

        v20 = objc_autoreleasePoolPush();
        v21 = objc_autoreleasePoolPush();
        (*(a4 + 16))(a4, [v30 subarrayWithRange:{v16, v19 + v15}], 0, &v32, buf);
        objc_autoreleasePoolPop(v21);
        if ((v32 & 1) == 0 && [v31 hasChanges])
        {
          v23 = MEMORY[0x1E695DF30];
          v34 = @"offendingFetch";
          v35 = v28;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
          objc_exception_throw([v23 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Batch finished processing with pending changes in the moc. This prevents the context from being reset and purging rows / snapshots from memory. Please save at the end of each batch." userInfo:v24]);
        }

        [v31 reset];
        objc_autoreleasePoolPop(v20);
        ++v17;
        v16 += v11;
        v18 += v11;
        v15 -= v11;
      }

      while (v17 < v14);
    }
  }

  else
  {
    (*(a4 + 16))(a4, 0, v33, &v32, buf);
    v32 = 1;
  }

  [v31 reset];
  objc_autoreleasePoolPop(context);
  v22 = *MEMORY[0x1E69E9840];
}

@end
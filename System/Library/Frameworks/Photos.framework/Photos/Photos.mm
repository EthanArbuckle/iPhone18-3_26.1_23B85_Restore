id sub_19C8719BC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6Photos27PHDatabaseStatisticsTracker_lockedState;
  type metadata accessor for PHDatabaseStatisticsTracker.State();
  swift_allocObject();
  v3 = sub_19C871A7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB000078);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *&v1[v2] = v4;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PHDatabaseStatisticsTracker();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_19C871A7C()
{
  *(v0 + 16) = [objc_opt_self() weakObjectsHashTable];
  *(v0 + 24) = 0;
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  return v0;
}

void sub_19C871CF8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id newPhotoLibrary(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v13 = 0;
  v7 = [MEMORY[0x1E69BE670] newPhotoLibraryWithName:a1 loadedFromBundle:v5 options:0 error:&v13];
  v8 = v13;
  if (v7)
  {
    v9 = [v7 managedObjectContext];
    [v6 addManagedObjectContext:v9];
  }

  else
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v5 libraryURL];
      *buf = 136446722;
      v15 = a1;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "failed to load photo library %{public}s with url %@, %@", buf, 0x20u);
    }

    handleNilPhotoLibraryError(a1, v5, v8);
  }

  return v7;
}

__CFString *_fetchTypeForAssetCollectionTypeAndSubtype(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (a1 > 7)
  {
    if (a1 > 10)
    {
      switch(a1)
      {
        case 11:
          v5 = &PHFetchTypeAssetCollection;
          break;
        case 12:
          v5 = PHFetchTypeCollectionShare;
          break;
        case 13:
          v5 = PHFetchTypeConversation;
          break;
        default:
          goto LABEL_30;
      }
    }

    else if (a1 == 8)
    {
      v5 = &PHFetchTypeSuggestion;
    }

    else if (a1 == 9)
    {
      v5 = PHFetchTypeImportSession;
    }

    else
    {
      v5 = PHFetchTypeProject;
    }
  }

  else if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        v5 = PHFetchTypeMemory;
        break;
      case 6:
        v5 = PHFetchTypePhotosHighlight;
        break;
      case 7:
        v5 = &PHFetchTypeMomentShare;
        break;
      default:
        goto LABEL_30;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v5 = PHFetchTypeAlbum;
        if (a2 == 101)
        {
          v5 = PHFetchTypeCloudSharedAlbum;
        }

        break;
      case 2:
        v5 = PHFetchTypeSmartAlbum;
        break;
      case 3:
        v5 = PHFetchTypeMoment;
        break;
      default:
        goto LABEL_30;
    }
  }

  v4 = *v5;
LABEL_30:

  return v4;
}

uint64_t sub_19C873924(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC6Photos27PHDatabaseStatisticsTracker_lockedState];
  os_unfair_lock_lock((v4 + 24));
  sub_19C873B20((v4 + 16), aBlock);
  os_unfair_lock_unlock((v4 + 24));
  v5 = aBlock[0];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v5;
  *(v6 + 32) = v2;
  OUTLINED_FUNCTION_0_1();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_19C88ADE4;
  *(v7 + 24) = v6;
  aBlock[4] = sub_19C88ADF8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19C889B28;
  aBlock[3] = &block_descriptor_36;
  v8 = _Block_copy(aBlock);
  v9 = a1;
  v10 = v2;

  [v9 performBlockAndWait_];
  _Block_release(v8);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19C873ADC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_19C873B20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  result = [*(*a1 + 16) addObject_];
  *a2 = *(v5 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return MEMORY[0x1EEE6BE20](v1, a1, 0, 0, 0);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t PHFastHashForPredicate(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v2 = [v1 subpredicates];
    v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v17;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v5 += PHFastHashForPredicate(*(*(&v16 + 1) + 8 * i));
        }

        v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v1;
    v2 = [v8 leftExpression];
    v9 = [v8 rightExpression];
    v10 = [v2 expressionType];
    v11 = 100 * [v9 expressionType];
    v12 = [v8 comparisonPredicateModifier];
    v13 = [v8 predicateOperatorType];

    v14 = _FastValueHashForExpression(v2);
    v5 = v11 + 1000 * v10 + 10 * v12 + 10000 * v13 + v14 + _FastValueHashForExpression(v9) + 11110;

LABEL_14:
    goto LABEL_15;
  }

  v5 = [objc_opt_class() hash];
LABEL_15:

  return v5;
}

void sub_19C874940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _FastValueHashForExpression(void *a1)
{
  v1 = a1;
  if ([v1 expressionType])
  {
    v2 = 0;
  }

  else
  {
    v3 = [v1 constantValue];
    v2 = [v3 hash];

    v4 = [v1 constantValue];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [v1 constantValue];
      v7 = [v6 firstObject];
      v2 += [v7 hash];
    }

    v8 = [v1 constantValue];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [v1 constantValue];
      v11 = [v10 lastObject];
      v2 += [v11 hash];
    }
  }

  return v2;
}

uint64_t sub_19C8756F8()
{
  v0 = sub_19C875380();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void __sReadUserDefaults_block_invoke()
{
  if (PFOSVariantHasInternalDiagnostics())
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    sIsLoggingDisabled = [v0 BOOLForKey:@"com.apple.photos.performanceLogsDisabled"];
    sAreBacktracesEnabled = [v0 BOOLForKey:@"com.apple.photos.performanceLogsEnableBacktraces"];
  }
}

uint64_t PHMemoryValidatedMemoryCategory(uint64_t a1)
{
  v1 = 0;
  if (a1 > 200)
  {
    if ((a1 - 201) >= 0x15 && (a1 - 301) >= 2 && a1 != 401)
    {
      return v1;
    }

    return a1;
  }

  if (a1 <= 0x20 && a1 != 22 || (a1 - 100) < 3)
  {
    return a1;
  }

  return v1;
}

uint64_t PHMemoryValidatedMemorySubcategory(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 300)
  {
    if ((a1 - 201) >= 0x12 && (a1 - 101) >= 3 && a1)
    {
      return v1;
    }

    return a1;
  }

  if (a1 > 999)
  {
    if ((a1 - 1000) < 4 || a1 == 1100)
    {
      return a1;
    }
  }

  else if ((a1 - 401) < 4 || (a1 - 301) < 3)
  {
    return a1;
  }

  return v1;
}

void sub_19C8785AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ph_objc_getAssociatedObject(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = sSharedTable();
  v6 = [v5 associatedObjectOnObject:v4 forKey:v3];

  return v6;
}

id sSharedTable()
{
  pl_dispatch_once();
  v0 = sSharedTable_pl_once_object_17;

  return v0;
}

uint64_t __sSharedTable_block_invoke()
{
  sSharedTable_pl_once_object_17 = objc_alloc_init(PHAssociatedObjectsTable);

  return MEMORY[0x1EEE66BB8]();
}

id ph_objc_setAssociatedObjectIfNotSet(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = sSharedTable();
  v9 = [v8 setAssociatedObjectIfNotSet:v5 onObject:v7 forKey:v6];

  return v9;
}

id PHPredicateByCombiningPredicatesWithAnd_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4 && v5)
  {
    v7 = MEMORY[0x1E696AB28];
    v12[0] = v4;
    v12[1] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v9 = [v7 andPredicateWithSubpredicates:v8];
  }

  else
  {
    if (v4)
    {
      v10 = v4;
    }

    else
    {
      v10 = v5;
    }

    v9 = v10;
  }

  return v9;
}

id PHPredicateByCombiningPredicatesWithOr_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4 && v5)
  {
    v7 = MEMORY[0x1E696AB28];
    v12[0] = v4;
    v12[1] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v9 = [v7 orPredicateWithSubpredicates:v8];
  }

  else
  {
    if (v4)
    {
      v10 = v4;
    }

    else
    {
      v10 = v5;
    }

    v9 = v10;
  }

  return v9;
}

void ph_objc_removeAssociatedObjects(void *a1)
{
  v1 = a1;
  v2 = sSharedTable();
  [v2 removeAllAssociatedObjectsOnObject:v1];
}

double PHSanitizeNormalizedCropRect(char *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = *MEMORY[0x1E695F058];
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  if (CGRectEqualToRect(*MEMORY[0x1E695F058], v22) || (v11 = a2 + a4, a4 > 0.0) && a5 > 0.0 && a2 >= 0.0 && a3 >= 0.0 && (v11 <= 1.0 ? (v12 = a3 + a5 <= 1.0) : (v12 = 0), v12))
  {
    v13 = 0;
    v10 = a2;
  }

  else
  {
    v15 = -a4;
    if (a4 >= 0.0)
    {
      v15 = a4;
      v11 = a2;
    }

    v16 = -a5;
    if (a5 >= 0.0)
    {
      v17 = a3;
    }

    else
    {
      v17 = a3 + a5;
    }

    if (a5 >= 0.0)
    {
      v16 = a5;
    }

    if (v11 >= 0.0)
    {
      v18 = v11;
    }

    else
    {
      v15 = v15 + v11;
      v18 = 0.0;
    }

    if (v17 >= 0.0)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0.0;
    }

    if (v17 < 0.0)
    {
      v16 = v16 + v17;
    }

    if (v18 + v15 > 1.0)
    {
      v15 = 1.0 - v18;
    }

    if (v19 + v16 > 1.0)
    {
      v16 = 1.0 - v19;
    }

    if (v15 > 0.0 && (v16 > 0.0 ? (v20 = v18 + v15 <= 1.0) : (v20 = 0), v20 ? (v21 = v19 + v16 <= 1.0) : (v21 = 0), v21))
    {
      v13 = 1;
      v10 = v18;
    }

    else
    {
      v13 = 1;
    }
  }

  if (a1)
  {
    *a1 = v13;
  }

  return v10;
}

void __PHSignpostEventsEnabled_block_invoke()
{
  v0 = getenv("PH_ENABLE_IMAGE_MANAGER_EVENTS");
  if (v0)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v0];
    PHSignpostEventsEnabled_eventsEnabled = [v1 BOOLValue];
  }
}

uint64_t PHImageManagerRecordEnabled()
{
  if (PHImageManagerRecordEnabled_onceToken[0] != -1)
  {
    dispatch_once(PHImageManagerRecordEnabled_onceToken, &__block_literal_global_11);
  }

  return (s_tracingDisabled == 0) & PHImageManagerRecordEnabled_s_enabled;
}

void __PHImageManagerRecordEnabled_block_invoke()
{
  v0 = PLImageManagerGetLog();
  PHImageManagerRecordEnabled_s_enabled = os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

void PHChooserListMoveFirst(uint64_t a1)
{
  *(a1 + 112) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v1 = *(a1 + 32);
  *(a1 + 32) = 0;
  v3 = a1;

  [v3[13] removeAllObjects];
  v2 = v3[10];
  v3[10] = 0;

  v3[11] = 0x7FFFFFFFFFFFFFFFLL;
  *(v3 + 96) = 0;
}

id _buildCacheKey(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v11 = MEMORY[0x1E696AD60];
  v12 = [a1 uuid];
  v13 = [v11 stringWithString:v12];

  if (a2 > 0.0 && a3 > 0.0)
  {
    v14 = DCIM_NSStringFromCGSize();
    [v13 appendString:v14];
  }

  if (a6 > 0.0 && a7 > 0.0)
  {
    v15 = DCIM_NSStringFromCGRect();
    [v13 appendString:v15];
  }

  return v13;
}

void sub_19C87CFD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void PHChooserListSetSortDescriptor(void *a1, void *a2)
{
  v10 = a1;
  v3 = a2;
  if (([v10[8] isEqual:v3] & 1) == 0)
  {
    objc_storeStrong(v10 + 8, a2);
    v4 = v10[4];
    if (v4)
    {
      v5 = _sortedInfosFromChooserInfos(v4, v10);
      v6 = v10[4];
      v10[4] = v5;
    }

    v7 = v10[10];
    if (v7)
    {
      v8 = _sortedInfosFromChooserInfos(v7, v10);
      v9 = v10[10];
      v10[10] = v8;
    }
  }
}

void PHChooserListContinueEnumerating(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!a2)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHChooserListContinueEnumerating(PHResourceChooserList *__strong _Nonnull, PLResourceChooserListDataSource)"}];
    [v14 handleFailureInFunction:v15 file:@"PHResourceChooserList.m" lineNumber:665 description:@"PLResourceChooserListDataSourceNone is not allowed when choosing begins."];
  }

  if ((v3[7] & 1) != 0 || (_presentResourcesFromHintsUntilStop(v3, a2) & 1) == 0)
  {
    if ((a2 & 2) == 0)
    {
      (*(v3[3] + 16))();
      goto LABEL_27;
    }

    v19 = 0;
    if ((v3[12] & 1) == 0)
    {
      if (!v3[4])
      {
        _fetchNonHintResources(v3);
      }

      if (!v3[10])
      {
        v4 = v3[4];
        v5 = MEMORY[0x1E696AE18];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __PHChooserListContinueEnumerating_block_invoke;
        v17[3] = &unk_1E75A7F40;
        v18 = v3;
        v6 = [v5 predicateWithBlock:v17];
        v7 = [v4 filteredArrayUsingPredicate:v6];
        v8 = v3[10];
        v3[10] = v7;
      }

      while (1)
      {
        v9 = v3[11];
        v10 = v3[14];
        if (v9 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = v3[10];
          if (v10 == 1)
          {
            v12 = 0;
            goto LABEL_19;
          }

          v12 = [v11 count] - 1;
          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v12 = v10 + v9;
          if (v10 + v9 < 0)
          {
            goto LABEL_24;
          }
        }

        v11 = v3[10];
LABEL_19:
        if (v12 >= [v11 count])
        {
LABEL_24:
          *(v3 + 96) = 1;
          break;
        }

        v16 = 0;
        v3[11] = v12;
        v13 = _presentFullResourceAtIndex(v3, v12, &v16);
        if (v16 == 1)
        {
          v3[11] = v9;
        }

        if (v13)
        {
          goto LABEL_27;
        }
      }
    }

    (*(v3[3] + 16))();
    if (v19)
    {
      PHChooserListMoveFirst(v3);
      v3[14] = -1;
      *(v3 + 56) = 1;
      PHChooserListContinueEnumerating(v3, a2);
    }
  }

LABEL_27:
}

uint64_t _presentResourcesFromHintsUntilStop(void *a1, char a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  if ((a2 & 1) == 0 || v3[8])
  {
    v15 = PLImageManagerGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = [v4[1] uuid];
      *buf = 138543362;
      v35 = v16;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEBUG, "[RM]: PHResourceChooserList: use of hints not allowed, asset uuid: %{public}@...", buf, 0xCu);
    }
  }

  else
  {
    [v3[1] unorientedSize];
    v6 = v5;
    v8 = v7;
    v9 = MEMORY[0x1E69BE540];
    v10 = [v4[1] imageRequestHints];
    v11 = [v4[1] libraryID];
    v12 = v4[6];
    v13 = v4[1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = ___presentResourcesFromHintsUntilStop_block_invoke;
    v19[3] = &unk_1E75A7ED8;
    v21 = &v30;
    v14 = v4;
    v20 = v14;
    v22 = &v26;
    v23 = v24;
    [v9 enumerateImageRequestHintData:v10 assetWidth:v6 assetHeight:v8 libraryID:v11 startingOffset:v12 assetID:v13 block:v19];

    if ((v31[3] & 1) == 0)
    {
      *(v14 + 56) = 1;
    }
  }

  v17 = *(v27 + 24);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v17 & 1;
}

void sub_19C87D78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void ___presentResourcesFromHintsUntilStop_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, float a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, unsigned int a10, _BYTE *a11)
{
  v16 = a6;
  v17 = a7;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (v17)
  {
    [*(*(a1 + 32) + 104) addObject:v17];
  }

  v18 = *(a1 + 32);
  v19 = *(v18 + 48);
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(v18 + 56) = 1;
    *(*(a1 + 32) + 48) = 0;
  }

  else
  {
    *(v18 + 48) = a2;
  }

  v20 = [v17 resourceType];
  v21 = [v17 resourceVersion];
  v22 = [v17 isDerivative];
  if ([objc_opt_class() storeClassID] == 1)
  {
    *(*(a1 + 32) + 57) = 1;
  }

  LOWORD(v26) = 0;
  LOWORD(v25) = 256;
  v23 = [[PHResourceChooserListResourceInfo alloc] initWithResourceType:v20 recipeID:a10 resourceVersion:v21 resourceScale:0 qualitySort:v22 isDerivative:a3 isPrimaryFormat:a4 canDownload:v25 isHintBased:0 uti:v16 store:v17 key:v26 localAvailabilityTarget:?];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___presentResourcesFromHintsUntilStop_block_invoke_2;
  aBlock[3] = &unk_1E75A7EB0;
  v29 = a11;
  v28 = *(a1 + 32);
  v30 = v19;
  v24 = _Block_copy(aBlock);
  *(*(*(a1 + 48) + 8) + 24) = (*(*(*(a1 + 32) + 16) + 16))();
  if ((*a11 & 1) == 0)
  {
    *a11 = *(*(*(a1 + 48) + 8) + 24);
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    (*(*(*(a1 + 32) + 24) + 16))();
  }
}

uint64_t ___presentResourcesFromHintsUntilStop_block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  **(result + 40) = 1;
  *(*(result + 32) + 56) = 0;
  *(*(result + 32) + 48) = v1;
  return result;
}

void sub_19C87F2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PHDecodeImageFromStoreForRequest(void *a1, void *a2, int a3, void *a4, void *a5, double a6, double a7)
{
  v19 = a1;
  v13 = a2;
  v14 = a4;
  v15 = a5;
  if ([objc_opt_class() storeClassID] == 1)
  {
    v16 = [v19 newTableThumbImageForKey:v13];
    (*(v15 + 2))(v15, v16, 0, 0, 0);

    CGImageRelease(v16);
  }

  else
  {
    v17 = [v14 asset];
    v18 = [v13 fileURLForAssetID:v17];
    PHDecodeImageFromURLForRequest(v18, a3, v14, v15, a6, a7);
  }
}

void PHDecodeImageFromURLForRequest(void *a1, int a2, void *a3, void *a4, double a5, double a6)
{
  v87 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a3;
  v13 = a4;
  if ([v12 isCancelled])
  {
    (*(v13 + 2))(v13, 0, 0, 0, 0);
  }

  else
  {
    v14 = [v12 behaviorSpec];
    v15 = [v12 displaySpec];
    v16 = objc_alloc_init(PHImageDecoderOptions);
    [(PHImageDecoderOptions *)v16 setTargetSize:a5, a6];
    -[PHImageDecoderOptions setContentMode:](v16, "setContentMode:", [v15 contentMode]);
    [v15 normalizedCropRect];
    [(PHImageDecoderOptions *)v16 setNormalizedCropRect:?];
    -[PHImageDecoderOptions setHighPriority:](v16, "setHighPriority:", ([v14 loadingOptions] >> 4) & 1);
    -[PHImageDecoderOptions setOptimizeForDrawing:](v16, "setOptimizeForDrawing:", ([v14 loadingOptions] >> 3) & 1);
    -[PHImageDecoderOptions setWaitUntilComplete:](v16, "setWaitUntilComplete:", [v14 isSynchronous]);
    -[PHImageDecoderOptions setResizeMode:](v16, "setResizeMode:", [v14 resizeMode]);
    -[PHImageDecoderOptions setShouldLoadGainMap:](v16, "setShouldLoadGainMap:", [v14 includeHDRGainMap]);
    -[PHImageDecoderOptions setDecodeAsHDR:](v16, "setDecodeAsHDR:", [v14 decodeAsHDR]);
    [v14 targetHDRHeadroom];
    *&v17 = v17;
    [(PHImageDecoderOptions *)v16 setTargetHDRHeadroom:v17];
    v18 = [v12 asset];
    v19 = [v18 hdrGain];
    [v19 floatValue];
    [(PHImageDecoderOptions *)v16 setHdrGain:?];

    -[PHImageDecoderOptions setAllowFallbackDecoder:](v16, "setAllowFallbackDecoder:", ([v14 loadingOptions] & 0x20) == 0);
    if (([v14 loadingOptions] & 0x40) != 0)
    {
      v20 = MEMORY[0x1E69C08F0];
      v21 = [v11 pathExtension];
      v22 = [v20 typeWithFilenameExtension:v21];

      if ([v22 conformsToType:*MEMORY[0x1E6982E58]])
      {
        [(PHImageDecoderOptions *)v16 setPreferSWDecode:1];
      }
    }

    if (([v14 useLowMemoryMode] & 1) != 0 || (objc_msgSend(v14, "loadingOptions") & 0x80) != 0)
    {
      [(PHImageDecoderOptions *)v16 setUseLowMemoryMode:1];
    }

    v23 = off_1E75A1138;
    if (!a2)
    {
      v23 = off_1E75A1178;
    }

    v24 = [(__objc2_class *)*v23 sharedDecoder];
    if ([v14 decodeAsHDR])
    {
      url = v11;
      v25 = v12;
      v26 = PLImageManagerGetLog();
      v73 = v25;
      v27 = os_signpost_id_make_with_pointer(v26, v25);

      v28 = PLImageManagerGetLog();
      v29 = v28;
      spid = v27;
      v72 = v27 - 1;
      if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "com.apple.photos.backend.ImageManager.PHImageAtURLIsHDR", byte_19CB567AE, buf, 2u);
      }

      v30 = CGImageSourceCreateWithURL(url, 0);
      if (v30)
      {
        v31 = v30;
        v32 = CGImageSourceCopyProperties(v30, 0);
        CFRelease(v31);
        if (v32)
        {
          v68 = v15;
          v69 = v13;
          v70 = v32;
          v33 = [v32 objectForKeyedSubscript:*MEMORY[0x1E696DB58]];
          v34 = [v33 objectForKeyedSubscript:*MEMORY[0x1E696DDE8]];

          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v35 = v34;
          v36 = [v35 countByEnumeratingWithState:&v76 objects:v84 count:16];
          if (v36)
          {
            v37 = *v77;
            v66 = *MEMORY[0x1E696DE70];
            v65 = *MEMORY[0x1E696D410];
            v38 = *MEMORY[0x1E696D418];
            v39 = *MEMORY[0x1E696D280];
            v75 = *MEMORY[0x1E696D270];
            v67 = v24;
            v64 = v35;
            v61 = *v77;
            while (2)
            {
              v40 = 0;
              v60 = v36;
              do
              {
                if (*v77 != v37)
                {
                  objc_enumerationMutation(v35);
                }

                v62 = v40;
                v41 = *(*(&v76 + 1) + 8 * v40);
                v42 = [v41 objectForKeyedSubscript:v66];
                v43 = v42;
                if (v42 && (v44 = CGColorSpaceCreateWithName(v42)) != 0)
                {
                  v45 = v44;
                  if (CGColorSpaceUsesExtendedRange(v44))
                  {
                    CFRelease(v45);

LABEL_68:
                    v53 = 1;
LABEL_45:
                    v24 = v67;
                    goto LABEL_50;
                  }

                  v59 = CGColorSpaceUsesITUR_2100TF(v45);
                  CFRelease(v45);

                  if (v59)
                  {
                    goto LABEL_68;
                  }
                }

                else
                {
                }

                v46 = [v41 objectForKeyedSubscript:v65];
                v80 = 0u;
                v81 = 0u;
                v82 = 0u;
                v83 = 0u;
                v47 = v46;
                v48 = [v47 countByEnumeratingWithState:&v80 objects:buf count:16];
                if (v48)
                {
                  v49 = v48;
                  v50 = *v81;
                  v63 = v11;
                  while (2)
                  {
                    for (i = 0; i != v49; ++i)
                    {
                      if (*v81 != v50)
                      {
                        objc_enumerationMutation(v47);
                      }

                      v52 = [*(*(&v80 + 1) + 8 * i) objectForKeyedSubscript:v38];
                      if ([v52 isEqual:v39] & 1) != 0 || (objc_msgSend(v52, "isEqual:", v75))
                      {

                        v53 = 1;
                        v11 = v63;
                        v35 = v64;
                        goto LABEL_45;
                      }
                    }

                    v49 = [v47 countByEnumeratingWithState:&v80 objects:buf count:16];
                    v11 = v63;
                    if (v49)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v37 = v61;
                v40 = v62 + 1;
                v24 = v67;
                v32 = v70;
                v35 = v64;
              }

              while (v62 + 1 != v60);
              v36 = [v64 countByEnumeratingWithState:&v76 objects:v84 count:16];
              v37 = v61;
              v53 = 0;
              if (v36)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v53 = 0;
LABEL_50:
            v32 = v70;
          }

          v15 = v68;
          v13 = v69;
        }

        else
        {
          v35 = PLImageManagerGetLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v86 = url;
            _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_ERROR, "[HDR] Unable to get image source properties for URL %@", buf, 0xCu);
          }

          v53 = 0;
        }
      }

      else
      {
        v32 = PLImageManagerGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v86 = url;
          _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_ERROR, "[HDR] Unable to create image source for URL %@", buf, 0xCu);
        }

        v53 = 0;
      }

      v54 = PLImageManagerGetLog();
      v55 = v54;
      if (v72 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v55, OS_SIGNPOST_INTERVAL_END, spid, "com.apple.photos.backend.ImageManager.PHImageAtURLIsHDR", byte_19CB567AE, buf, 2u);
      }

      if (v53 && ([v14 disableImageIOForHDR] & 1) == 0)
      {
        v56 = PLImageManagerGetLog();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19C86F000, v56, OS_LOG_TYPE_INFO, "[HDR] Using ImageIO decoder for HDR", buf, 2u);
        }

        v57 = +[PHImageIODecoder sharedDecoder];

        v24 = v57;
      }
    }

    v58 = [v24 decodeImageFromData:0 orFileURL:v11 options:v16 completion:v13];
    if (([v14 isSynchronous] & 1) == 0)
    {
      os_unfair_lock_lock(v12 + 34);
      objc_storeStrong(v12 + 18, v58);
      if ([v12 isCancelled])
      {
        [v58 cancel];
      }

      os_unfair_lock_unlock(v12 + 34);
    }
  }
}

id _figDecodeOptionsFromContext(uint64_t a1, uint64_t a2, char a3)
{
  v101 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E6991AD0];
  if ((*(a1 + 16) & 1) == 0 && ([*(a1 + 48) shouldCrop] & 1) == 0 && *(a1 + 20) != 1)
  {
    v22 = *v6;
    v23 = MEMORY[0x1E695E118];
    if (*a1 < 1)
    {
      if (a3)
      {
        v93[0] = MEMORY[0x1E695E118];
        v60 = *MEMORY[0x1E6991AF8];
        v92[0] = v22;
        v92[1] = v60;
        v61 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
        v26 = v61;
        v62 = *MEMORY[0x1E6991AD8];
        if (*(a1 + 17))
        {
          v63 = v23;
        }

        else
        {
          v63 = MEMORY[0x1E695E110];
        }

        v93[1] = v61;
        v93[2] = v63;
        v64 = *MEMORY[0x1E6991AF0];
        v92[2] = v62;
        v92[3] = v64;
        if (*(a1 + 21))
        {
          v65 = v23;
        }

        else
        {
          v65 = MEMORY[0x1E695E110];
        }

        v92[4] = *MEMORY[0x1E6991B18];
        v93[3] = v65;
        v93[4] = v65;
        v31 = MEMORY[0x1E695DF20];
        v32 = v93;
        v33 = v92;
        goto LABEL_75;
      }

      v95[0] = MEMORY[0x1E695E118];
      v78 = *MEMORY[0x1E6991AF8];
      v94[0] = v22;
      v94[1] = v78;
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
      v95[1] = v26;
      v94[2] = *MEMORY[0x1E6991B10];
      if (*(a1 + 8) == 2)
      {
        v79 = 1;
      }

      else
      {
        v79 = 3;
      }

      v68 = [MEMORY[0x1E696AD98] numberWithInt:v79];
      v80 = *MEMORY[0x1E6991AC0];
      v95[2] = v68;
      v95[3] = v23;
      v81 = *MEMORY[0x1E6991AD8];
      v94[3] = v80;
      v94[4] = v81;
      v82 = MEMORY[0x1E695E110];
      if (*(a1 + 17))
      {
        v83 = v23;
      }

      else
      {
        v83 = MEMORY[0x1E695E110];
      }

      v84 = *MEMORY[0x1E6991AF0];
      if (*(a1 + 21))
      {
        v82 = v23;
      }

      v95[4] = v83;
      v95[5] = v82;
      v85 = *MEMORY[0x1E6991B18];
      v94[5] = v84;
      v94[6] = v85;
      v95[6] = v82;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v95 forKeys:v94 count:7];
    }

    else
    {
      if (a3)
      {
        v97[0] = MEMORY[0x1E695E118];
        v24 = *MEMORY[0x1E6991AF8];
        v96[0] = v22;
        v96[1] = v24;
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
        v26 = v25;
        v27 = *MEMORY[0x1E6991AD8];
        if (*(a1 + 17))
        {
          v28 = v23;
        }

        else
        {
          v28 = MEMORY[0x1E695E110];
        }

        v97[1] = v25;
        v97[2] = v28;
        v29 = *MEMORY[0x1E6991AF0];
        v96[2] = v27;
        v96[3] = v29;
        if (*(a1 + 21))
        {
          v30 = v23;
        }

        else
        {
          v30 = MEMORY[0x1E695E110];
        }

        v96[4] = *MEMORY[0x1E6991B18];
        v97[3] = v30;
        v97[4] = v30;
        v31 = MEMORY[0x1E695DF20];
        v32 = v97;
        v33 = v96;
LABEL_75:
        v8 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:5];
LABEL_96:

        goto LABEL_97;
      }

      v99[0] = MEMORY[0x1E695E118];
      v66 = *MEMORY[0x1E6991AF8];
      v98[0] = v22;
      v98[1] = v66;
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
      v99[1] = v26;
      v98[2] = *MEMORY[0x1E6991B10];
      if (*(a1 + 8) == 2)
      {
        v67 = 1;
      }

      else
      {
        v67 = 3;
      }

      v68 = [MEMORY[0x1E696AD98] numberWithInt:v67];
      v69 = *MEMORY[0x1E6991AC0];
      v99[2] = v68;
      v99[3] = v23;
      v70 = *MEMORY[0x1E6991AD8];
      v98[3] = v69;
      v98[4] = v70;
      v71 = MEMORY[0x1E695E110];
      if (*(a1 + 17))
      {
        v72 = v23;
      }

      else
      {
        v72 = MEMORY[0x1E695E110];
      }

      v99[4] = v72;
      v98[5] = *MEMORY[0x1E6991AE0];
      v73 = [MEMORY[0x1E696AD98] numberWithInteger:*a1];
      v74 = v73;
      v75 = *MEMORY[0x1E6991AF0];
      if (*(a1 + 21))
      {
        v76 = v23;
      }

      else
      {
        v76 = v71;
      }

      v99[5] = v73;
      v99[6] = v76;
      v77 = *MEMORY[0x1E6991B18];
      v98[6] = v75;
      v98[7] = v77;
      v99[7] = v76;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:v98 count:8];
    }

    goto LABEL_96;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
  v8 = v7;
  if (*(a1 + 20) == 1)
  {
    [v7 setObject:&unk_1F102DA48 forKeyedSubscript:*MEMORY[0x1E6991AA8]];
  }

  if (*(a1 + 21) == 1)
  {
    v9 = MEMORY[0x1E695E118];
    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991AF0]];
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6991B18]];
  }

  v10 = MEMORY[0x1E695E118];
  [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v6];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
  [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x1E6991AF8]];

  if ((a3 & 1) == 0)
  {
    if (*(a1 + 8) == 2)
    {
      v12 = 1;
    }

    else
    {
      v12 = 3;
    }

    v13 = [MEMORY[0x1E696AD98] numberWithInt:v12];
    [v8 setObject:v13 forKeyedSubscript:*MEMORY[0x1E6991B10]];

    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991AC0]];
    if (*a1 >= 1)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      [v8 setObject:v14 forKeyedSubscript:*MEMORY[0x1E6991AE0]];
    }

    if (*(a1 + 16) == 1)
    {
      [v8 setObject:&unk_1F102DA60 forKeyedSubscript:*MEMORY[0x1E6991AE8]];
    }
  }

  if (*(a1 + 17))
  {
    v15 = v10;
  }

  else
  {
    v15 = MEMORY[0x1E695E110];
  }

  [v8 setObject:v15 forKeyedSubscript:*MEMORY[0x1E6991AD8]];
  if ([*(a1 + 48) shouldCrop])
  {
    cf = 0;
    PFSharedFigDecodeSession();
    Container = CMPhotoDecompressionSessionCreateContainer();
    if (Container)
    {
      v17 = Container;
      v18 = PLImageManagerGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.a) = 134217984;
        *(&buf.a + 4) = v17;
        _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "[RM] PHFigDecoder - unable to generate crop rect, error opening container: %ld", &buf, 0xCu);
      }
    }

    else
    {
      v89 = 0;
      v90 = 0;
      v88 = 1;
      ImageGeometryForIndex = CMPhotoDecompressionContainerGetImageGeometryForIndex();
      if (ImageGeometryForIndex)
      {
        v20 = ImageGeometryForIndex;
        DictionaryRepresentation = PLImageManagerGetLog();
        if (os_log_type_enabled(DictionaryRepresentation, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.a) = 134217984;
          *(&buf.a + 4) = v20;
          _os_log_impl(&dword_19C86F000, DictionaryRepresentation, OS_LOG_TYPE_ERROR, "[RM] PHFigDecoder - unable to generate crop rect, error determining source image geometry: %ld", &buf, 0xCu);
        }
      }

      else
      {
        PLOrientationTransformImageSize();
        v35 = v34;
        v37 = v36;
        [*(a1 + 48) targetSize];
        v39 = v38;
        v41 = v40;
        [*(a1 + 48) normalizedCropRect];
        v46 = PHGenerateCropRectGivenNormalizedCropRect(v35, v37, [*(a1 + 48) contentMode], 0, v39, v41, v42, v43, v44, v45);
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v53 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6991AE8]];

        if (!v53)
        {
          v54 = ~v46 + v35 - (((~v46 + v35) & 0x80000001) == 1);
          v103.origin.x = v46;
          v103.origin.y = v48;
          v103.size.width = v50;
          v103.size.height = v52;
          if ((CGRectGetMinX(v103) & 0x80000001) == 1)
          {
            v46 = v46 + -1.0;
            if (v50 + 1.0 >= v54)
            {
              v50 = v54;
            }

            else
            {
              v50 = v50 + 1.0;
            }

            v55 = PLImageManagerGetLog();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(buf.a) = 0;
              _os_log_impl(&dword_19C86F000, v55, OS_LOG_TYPE_DEBUG, "[RM] PHFigDecoder - adjusting crop rect min x along even bounds...", &buf, 2u);
            }
          }

          v104.origin.x = v46;
          v104.origin.y = v48;
          v104.size.width = v50;
          v104.size.height = v52;
          if ((CGRectGetMaxX(v104) & 0x80000001) == 1)
          {
            if (v50 + 1.0 >= v54)
            {
              v50 = v54;
            }

            else
            {
              v50 = v50 + 1.0;
            }

            v56 = PLImageManagerGetLog();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(buf.a) = 0;
              _os_log_impl(&dword_19C86F000, v56, OS_LOG_TYPE_DEBUG, "[RM] PHFigDecoder - adjusting crop rect max x along even bounds...", &buf, 2u);
            }
          }

          v57 = ~v48 + v37 - (((~v48 + v37) & 0x80000001) == 1);
          v105.origin.x = v46;
          v105.origin.y = v48;
          v105.size.width = v50;
          v105.size.height = v52;
          if ((CGRectGetMinY(v105) & 0x80000001) == 1)
          {
            v48 = v48 + -1.0;
            if (v52 + 1.0 >= v57)
            {
              v52 = v57;
            }

            else
            {
              v52 = v52 + 1.0;
            }

            v58 = PLImageManagerGetLog();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(buf.a) = 0;
              _os_log_impl(&dword_19C86F000, v58, OS_LOG_TYPE_DEBUG, "[RM] PHFigDecoder - adjusting crop rect min y along even bounds...", &buf, 2u);
            }
          }

          v106.origin.x = v46;
          v106.origin.y = v48;
          v106.size.width = v50;
          v106.size.height = v52;
          if ((CGRectGetMaxY(v106) & 0x80000001) == 1)
          {
            if (v52 + 1.0 >= v57)
            {
              v52 = v57;
            }

            else
            {
              v52 = v52 + 1.0;
            }

            v59 = PLImageManagerGetLog();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(buf.a) = 0;
              _os_log_impl(&dword_19C86F000, v59, OS_LOG_TYPE_DEBUG, "[RM] PHFigDecoder - adjusting crop rect max y along even bounds...", &buf, 2u);
            }
          }
        }

        memset(&buf, 0, sizeof(buf));
        PLOrientationMakeTransformWithSize();
        v87 = buf;
        v107.origin.x = v46;
        v107.origin.y = v48;
        v107.size.width = v50;
        v107.size.height = v52;
        v108 = CGRectApplyAffineTransform(v107, &v87);
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v108);
        [v8 setObject:DictionaryRepresentation forKeyedSubscript:*MEMORY[0x1E6991B08]];
      }

      CFRelease(cf);
    }
  }

LABEL_97:

  return v8;
}

void _finishRequest(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = 0x1EAFFC000uLL;
  if (([v1[30] shouldLoadDataOrURL] & 1) == 0)
  {
    [v1[19] setExifOrientation:0];
    [v1[19] setUniformTypeIdentifier:0];
  }

  v3 = [v1[19] error];
  if ([v1 isCancelled])
  {
    goto LABEL_4;
  }

  if (v3)
  {
    v4 = [v3 domain];
    if ([v4 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v5 = [v3 code];

      if (v5 == 3072)
      {
LABEL_4:
        [v1[19] setCancelled:1];
        goto LABEL_26;
      }
    }

    else
    {
    }
  }

  if ([v1[19] imageRef])
  {
    goto LABEL_26;
  }

  v6 = [v1 behaviorSpec];
  if (([v6 allowPlaceholder] & 1) == 0)
  {
LABEL_25:

    goto LABEL_26;
  }

  v7 = [v1 behaviorSpec];
  v8 = [v7 shouldLoadImage];

  if (!v8)
  {
    goto LABEL_26;
  }

  v9 = [MEMORY[0x1E69BE6C0] sharedManager];
  v10 = [v9 newPlaceholderImageWithSize:{1.0, 1.0}];

  if (!v10)
  {
    v13 = [v1[19] error];

    if (v13)
    {
      goto LABEL_26;
    }

    v14 = PLImageManagerGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v1 identifierString];
      *buf = 138412290;
      v26 = v15;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_ERROR, "%@ failed to generate placeholder", buf, 0xCu);
    }

    if (PHImageManagerRecordEnabled())
    {
      v21 = [v1 requestID];
      v22 = [v1 identifierString];
      [PHImageManagerRequestTracer traceMessageForRequestID:v21 message:@"%@ failed to generate placeholder", v22];
    }

    v16 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24 = @"Error generating placeholder image";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v6 = [v16 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v17];

    [v1[19] setError:v6];
    goto LABEL_25;
  }

  v11 = PLImageManagerGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v1 identifierString];
    *buf = 138412290;
    v26 = v12;
    _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEBUG, "[RM]: %@ delivering placeholder", buf, 0xCu);
  }

  if (PHImageManagerRecordEnabled())
  {
    v19 = [v1 requestID];
    v20 = [v1 identifierString];
    [PHImageManagerRequestTracer traceMessageForRequestID:v19 message:@"[RM]: %@ delivering placeholder", v20];

    v2 = 0x1EAFFC000;
  }

  [*(v1 + *(v2 + 3728)) setImageRef:v10];
  CGImageRelease(v10);
  [*(v1 + *(v2 + 3728)) setIsPlaceholder:1];
LABEL_26:
  v18 = [v1 delegate];
  [v18 mediaRequest:v1 didFinishWithResult:*(v1 + *(v2 + 3728))];
}

void ___loadImageFromStoreAndKey_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = *(a1 + 32);
  if (a2)
  {
    [v10[19] setImageRef:a2];
    if (*(a1 + 56) == 1)
    {
      [*(*(a1 + 32) + 152) setIsDerivedFromDeferredPreview:1];
    }

    if (a3)
    {
      [*(*(a1 + 32) + 152) setHighDynamicRangeGainMap:a3 orientation:a4 averagePixelLuminance:v9];
    }

    if (*(a1 + 57) == 1)
    {
      [*(*(a1 + 32) + 152) setDegraded:1];
      if (PHSignpostEventsEnabled_onceToken != -1)
      {
        dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
      }

      if (PHSignpostEventsEnabled_eventsEnabled == 1)
      {
        v11 = [*(a1 + 32) signpostID];
        if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v12 = v11;
          v13 = PLImageManagerGetLog();
          v14 = [*(a1 + 32) managerID];
          v15 = [*(a1 + 32) requestID];
          v16 = [*(a1 + 32) requestIndex];
          if (os_signpost_enabled(v13))
          {
            v17 = 30;
            if (*(a1 + 58))
            {
              v17 = 31;
            }

            *buf = 134218752;
            v29 = v14;
            v30 = 2048;
            v31 = v15;
            v32 = 2048;
            v33 = v16;
            v34 = 2048;
            v35 = v17;
            goto LABEL_26;
          }

          goto LABEL_27;
        }
      }
    }

    else
    {
      if (PHSignpostEventsEnabled_onceToken != -1)
      {
        dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
      }

      if (PHSignpostEventsEnabled_eventsEnabled == 1)
      {
        v22 = [*(a1 + 32) signpostID];
        if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v12 = v22;
          v13 = PLImageManagerGetLog();
          v23 = [*(a1 + 32) managerID];
          v24 = [*(a1 + 32) requestID];
          v25 = [*(a1 + 32) requestIndex];
          if (os_signpost_enabled(v13))
          {
            *buf = 134218752;
            v29 = v23;
            v30 = 2048;
            v31 = v24;
            v32 = 2048;
            v33 = v25;
            v34 = 2048;
            v35 = 32;
LABEL_26:
            _os_signpost_emit_with_name_impl(&dword_19C86F000, v13, OS_SIGNPOST_EVENT, v12, "RequestEvent", "Change: [%lu-%lu-%lu], state: %lu", buf, 0x2Au);
          }

LABEL_27:
        }
      }
    }

    if (*(a1 + 59) == 1)
    {
      v21 = *(a1 + 40);
      v26 = [*(a1 + 32) asset];
      v27 = [v21 recipeIDForAssetID:v26];

      if (!v27)
      {
        [*(a1 + 32) recordMetricsWithMetricsHandler:&__block_literal_global_189];
      }

      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (([v10 isCancelled] & 1) == 0)
  {
    v18 = PLImageManagerGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [*(a1 + 32) identifierString];
      *buf = 138412290;
      v29 = v19;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "[RM]: %@ Failed to decode image", buf, 0xCu);
    }

    if (PHImageManagerRecordEnabled())
    {
      v20 = [*(a1 + 32) requestID];
      v21 = [*(a1 + 32) identifierString];
      [PHImageManagerRequestTracer traceMessageForRequestID:v20 message:@"[RM]: %@ Failed to decode image", v21];
LABEL_31:
    }
  }

LABEL_32:
  (*(*(a1 + 48) + 16))();
}

void _decodeCallback(uint64_t a1, uint64_t a2, int a3, uint64_t a4, CGImage *a5, uint64_t a6)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    if ([*(a6 + 80) figRequestID] == a2)
    {
      if (a3 == -17105)
      {
        goto LABEL_25;
      }

      if (!a3)
      {
        *(a6 + 88) = CGImageRetain(a5);
        goto LABEL_25;
      }

      v17 = PLImageManagerGetLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v18 = *(a6 + 56);
      *buf = 138412546;
      v32 = v18;
      v33 = 1024;
      v34 = a3;
      v19 = "[RM] PHFigDecoder - failed async decode of image at url: %@, status code: %d";
      goto LABEL_21;
    }

    if ([*(a6 + 80) figGainMapRequestID] == a2 && a3 != -17105)
    {
      if (a3)
      {
        *(a6 + 40) = 1;
        v17 = PLImageManagerGetLog();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
LABEL_22:

          goto LABEL_25;
        }

        v20 = *(a6 + 56);
        *buf = 138412546;
        v32 = v20;
        v33 = 1024;
        v34 = a3;
        v19 = "[RM] PHFigDecoder - failed async decode of gain map at url: %@, status code: %d";
LABEL_21:
        _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, v19, buf, 0x12u);
        goto LABEL_22;
      }

      v12 = PLImageManagerGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEBUG, "[RM] PHFigDecoder - returned gain map, loading orientation", buf, 2u);
      }

      v30 = 1;
      AuxiliaryImageGeometryForIndex = CMPhotoDecompressionContainerGetAuxiliaryImageGeometryForIndex();
      if (AuxiliaryImageGeometryForIndex)
      {
        v14 = AuxiliaryImageGeometryForIndex;
        v15 = PLImageManagerGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v32 = v14;
          _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "[RM] PHFigDecoder - failed to read aux image orientation, default to Up, %ld", buf, 0xCu);
        }

        v16 = 1;
      }

      else
      {
        v16 = v30;
      }

      v29 = 0;
      _figReadImageProperties(a1, &v29);
      v21 = v29;
      v22 = CFRetain(a5);
      *(a6 + 44) = v16;
      v23 = *(a6 + 104);
      *(a6 + 96) = v22;
      *(a6 + 104) = v21;
    }

LABEL_25:
    if (atomic_fetch_add((a6 + 36), 1u) + 1 != *(a6 + 32))
    {
      return;
    }

    if (a3 != -17105)
    {
      if (!a3 && *(a6 + 88) && (*(a6 + 40) & 1) == 0)
      {
        v24 = *(a6 + 72);
        if (v24)
        {
          v25 = *(v24 + 16);
LABEL_36:
          v25();
          goto LABEL_37;
        }

        goto LABEL_37;
      }

      if (*(a6 + 19))
      {
        v26 = +[PHImageIODecoder sharedDecoder];
        v27 = [v26 decodeImageFromData:*(a6 + 64) orFileURL:*(a6 + 56) options:*(a6 + 48) existingRequestHandle:*(a6 + 80) completion:*(a6 + 72)];

        goto LABEL_37;
      }
    }

    v28 = *(a6 + 72);
    if (v28)
    {
      v25 = *(v28 + 16);
      goto LABEL_36;
    }

LABEL_37:
    _cleanupContext(a6);
  }
}

void ___chooserDidPresentLocallyAvailableBag_block_invoke(id *a1, char a2)
{
  v118 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0 && ![a1[4] isCancelled])
  {
    if ([objc_opt_class() storeClassID] == 1)
    {
      *buf = 0;
      LODWORD(v94) = -1;
      v6 = a1[6];
      [v6 tableType:buf index:&v94];
      v7 = MEMORY[0x1E696ABC0];
      v100 = *MEMORY[0x1E696A278];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode table thumbnail with type: %ld, index: %ld", *buf, v94];
      v101 = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
      v10 = [v7 ph_errorWithDomain:@"PHPhotosErrorDomain" code:7003 userInfo:v9];
    }

    else
    {
      v11 = a1[6];
      v12 = [a1[4] asset];
      v6 = [v11 fileURLForAssetID:v12];

      v13 = [MEMORY[0x1E696AC08] defaultManager];
      v14 = [v6 path];
      v15 = [v13 fileExistsAtPath:v14];

      v16 = MEMORY[0x1E696ABC0];
      if (v15)
      {
        v10 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:7001 userInfo:0];
      }

      else
      {
        v98 = *MEMORY[0x1E696A278];
        v17 = MEMORY[0x1E696AEC0];
        v18 = [v6 path];
        v19 = [v17 stringWithFormat:@"Failed to decode because file does not exist at path: %@", v18];
        v99 = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
        v10 = [v16 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v20];
      }
    }

    v21 = PLImageManagerGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [a1[4] identifierString];
      v23 = [a1[4] asset];
      v24 = [v23 uuid];
      v25 = [v10 code];
      v26 = [v10 debugDescription];
      *buf = 138413058;
      v111 = v22;
      v112 = 2112;
      v113 = v24;
      v114 = 2048;
      v115 = v25;
      v116 = 2112;
      v117 = v26;
      _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_ERROR, "[RM]: %@ failed to decode for asset: %@, error code: %ld, description: %@", buf, 0x2Au);
    }

    if (PHImageManagerRecordEnabled())
    {
      v78 = [a1[4] requestID];
      v79 = [a1[4] identifierString];
      v80 = [a1[4] asset];
      v81 = [v80 uuid];
      v82 = [v10 code];
      v83 = [v10 debugDescription];
      [PHImageManagerRequestTracer traceMessageForRequestID:v78 message:@"[RM]: %@ failed to decode for asset: %@, error code: %ld, description: %@", v79, v81, v82, v83];
    }

    v27 = a1[4];
    v28 = a1[7];
    v29 = v27;
    v30 = v10;
    if (PHSignpostEventsEnabled_onceToken != -1)
    {
      dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
    }

    if (PHSignpostEventsEnabled_eventsEnabled == 1)
    {
      v31 = [v29 signpostID];
      if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v32 = v31;
        v33 = PLImageManagerGetLog();
        v34 = [v29 managerID];
        v35 = [v29 requestID];
        v36 = [v29 requestIndex];
        if (os_signpost_enabled(v33))
        {
          *buf = 134218752;
          v111 = v34;
          v112 = 2048;
          v113 = v35;
          v114 = 2048;
          v115 = v36;
          v116 = 2048;
          v117 = 36;
          _os_signpost_emit_with_name_impl(&dword_19C86F000, v33, OS_SIGNPOST_EVENT, v32, "RequestEvent", "Change: [%lu-%lu-%lu], state: %lu", buf, 0x2Au);
        }
      }
    }

    v37 = v29[20];
    v38 = [v29 behaviorSpec];
    v39 = [v38 choosingPolicy];
    v40 = [v30 domain];
    if (![v40 isEqualToString:@"PHPhotosErrorDomain"])
    {
      goto LABEL_28;
    }

    v41 = [v30 code];

    if (v41 != 3303)
    {
      v42 = 0;
LABEL_31:
      [v29[19] setErrorIfNone:v30];
      if (v39 == 3)
      {
        v43 = [v37 behaviorSpec];
        if (([v43 onlyUseFetchedAssetPropertiesDuringChoosing] | v42))
        {
          v44 = 0;
        }

        else
        {
          v44 = [v38 cannotReturnSmallerImage] ^ 1;
        }

        if ([v28 keyIsHintBased] && (v44 & 1) != 0)
        {
          goto LABEL_55;
        }

        if (MEMORY[0x19EAF1E50]())
        {
          if (!v44)
          {
            goto LABEL_75;
          }

          goto LABEL_55;
        }
      }

      else
      {
        if (MEMORY[0x19EAF1E50]([v28 keyIsHintBased]))
        {
          goto LABEL_75;
        }

        LOBYTE(v44) = 0;
      }

      v45 = [v28 dataStoreKey];
      v46 = [v28 assetID];
      v47 = [v45 validateForAssetID:v46 resourceIdentity:0];

      if ([v47 count])
      {
        v92 = v38;
        v93 = v28;
        v90 = v44;
        v91 = v37;
        v48 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v47, "count")}];
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v49 = v47;
        v50 = [v49 countByEnumeratingWithState:&v94 objects:buf count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v95;
          do
          {
            for (i = 0; i != v51; ++i)
            {
              if (*v95 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v54 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v94 + 1) + 8 * i), "code")}];
              [v48 addObject:v54];
            }

            v51 = [v49 countByEnumeratingWithState:&v94 objects:buf count:16];
          }

          while (v51);
        }

        v55 = [v29 asset];
        v56 = [v55 photoLibrary];
        v57 = [v29 asset];
        v58 = [v56 objectFetchingManagedObjectContextForObject:v57 propertySet:@"PHAssetPropertySetCore"];

        v59 = MEMORY[0x1E69BE738];
        v60 = [v93 dataStoreKey];
        v61 = [v93 dataStore];
        v62 = [v29 asset];
        v63 = [v62 objectID];
        v89 = v58;
        v64 = [v59 imageRequestResourceForDataStoreKey:v60 store:v61 assetObjectID:v63 context:v58];

        v65 = v64 != 0;
        if (v64)
        {
          v66 = [v29 delegate];
          v67 = [v66 mediaRequestCanRequestRepair:v29];

          if (v67)
          {
            *&v106 = MEMORY[0x1E69E9820];
            *(&v106 + 1) = 3221225472;
            v107 = ___handleKeyUsageFailureDuringChoosing_block_invoke;
            v108 = &unk_1E75A89F8;
            v109 = v29;
            v68 = [v109 sendResourceRepairRequestForResource:v64 errorCodes:v48 reply:&v106];
            v69 = v109;
            v70 = v90;
            v28 = v93;
LABEL_53:

            v37 = v91;
            v38 = v92;
            goto LABEL_62;
          }

          v65 = 0;
          v37 = v91;
          v38 = v92;
          v70 = v90;
          v28 = v93;
        }

        else
        {
          v73 = PLImageManagerGetLog();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            v74 = [v29 identifierString];
            LODWORD(v106) = 138412290;
            *(&v106 + 4) = v74;
            _os_log_impl(&dword_19C86F000, v73, OS_LOG_TYPE_ERROR, "[RM]: %@ Unable to build resource repair request.", &v106, 0xCu);
          }

          v38 = v92;
          v28 = v93;
          if (PHImageManagerRecordEnabled())
          {
            v88 = [v29 requestID];
            v69 = [v29 identifierString];
            [PHImageManagerRequestTracer traceMessageForRequestID:v88 message:@"[RM]: %@ Unable to build resource repair request.", v69];
            v70 = v90;
            goto LABEL_53;
          }

          v65 = 0;
          v37 = v91;
          v70 = v90;
        }

LABEL_62:

        if ((v70 & 1) == 0)
        {
          if (v65 && ![v29 isSynchronous])
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        }

LABEL_63:
        if ([v28 keyIsHintBased])
        {
          v75 = PLImageManagerGetLog();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
          {
            v76 = [v29 identifierString];
            LODWORD(v102) = 138412290;
            *(&v102 + 4) = v76;
            _os_log_impl(&dword_19C86F000, v75, OS_LOG_TYPE_DEBUG, "[RM]: %@ hint based key usage failed (hints may be stale), choosing without hints...", &v102, 0xCu);
          }

          if (PHImageManagerRecordEnabled())
          {
            v84 = v38;
            v85 = [v29 requestID];
            v86 = [v29 identifierString];
            v87 = v85;
            v38 = v84;
            [PHImageManagerRequestTracer traceMessageForRequestID:v87 message:@"[RM]: %@ hint based key usage failed (hints may be stale), choosing without hints...", v86];
          }

          [v37 setAllowHints:0];
        }

        else if (![v29 isSynchronous])
        {
          if (!v65)
          {
            v77 = [v29 imageDelegate];
            *&v102 = MEMORY[0x1E69E9820];
            *(&v102 + 1) = 3221225472;
            v103 = ___handleKeyUsageFailureDuringChoosing_block_invoke_208;
            v104 = &unk_1E75A3E58;
            v105 = v37;
            [v77 imageRequest:v29 isRequestingScheduledWorkBlock:&v102];
          }

          goto LABEL_76;
        }

        [v37 presentNextQualifyingResource];
LABEL_76:

        return;
      }

      if (v44)
      {
LABEL_55:
        LOBYTE(v65) = 0;
        goto LABEL_63;
      }

LABEL_75:
      _finishRequest(v29);
      goto LABEL_76;
    }

    v40 = [v28 dataStore];
    if (![objc_opt_class() storeClassID])
    {
      v71 = [v28 dataStoreKey];
      v72 = [v71 keyData];
      v42 = PLPrimaryDataStoreKeyStrategyFromData() == 4;
    }

    else
    {
LABEL_28:
      v42 = 0;
    }

    goto LABEL_31;
  }

  [*(a1[4] + 19) clearError];
  if ([a1[4] wantsProgress] && dyld_program_sdk_at_least())
  {
    v3 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
    [v3 setCompletedUnitCount:1];
    v4 = [a1[4] delegate];
    [v4 mediaRequest:a1[4] didReportProgress:v3];
  }

  v5 = a1[4];

  _finishRequest(v5);
}

uint64_t PHErrorIsMediaServerDisconnected()
{
  v0 = PLUnderlyingErrorThatHasDomainAndCode();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = PLUnderlyingErrorWithDomain();

  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x19EAF1C40](v2, &unk_1F102E5C8);

  return v3;
}

void _cleanupContext(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 72);
    *(a1 + 72) = 0;

    v3 = *(a1 + 56);
    *(a1 + 56) = 0;

    v4 = *(a1 + 64);
    *(a1 + 64) = 0;

    v5 = *(a1 + 80);
    *(a1 + 80) = 0;

    v6 = *(a1 + 48);
    *(a1 + 48) = 0;

    CGImageRelease(*(a1 + 88));
    *(a1 + 88) = 0;
    v7 = *(a1 + 96);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a1 + 104);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;

    free(a1);
  }
}

uint64_t PHIsExpressionMatchingTypeOrAggregateMatchingType(void *a1, char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 expressionType];
  if (!v4)
  {
    v9 = 0;
    v6 = 1;
    if (!a2)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v4 != 14)
  {
    v9 = 0;
    v6 = 0;
    if (!a2)
    {
      goto LABEL_16;
    }

LABEL_15:
    *a2 = v9;
    goto LABEL_16;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v3 collection];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * v8) expressionType])
        {
          v6 = 0;
          goto LABEL_18;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v6 = 1;
  }

LABEL_18:

  v9 = 1;
  if (a2)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v6;
}

void sub_19C884C20(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x19C884C10);
  }

  _Unwind_Resume(a1);
}

id _predicateForAssetsInPhotosHighlightWithOptions(void *a1, void *a2)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 objectID];
  v6 = [v4 highlightCurationType];
  if (v6 == 2)
  {
    v11 = [v3 kind];
    v8 = 1;
    if (v11 < 3)
    {
      v9 = @"highlightBeingExtendedAssets = %@";
      goto LABEL_17;
    }

    if (v11 == 3)
    {
      v8 = 0;
      v9 = @"dayGroupHighlightBeingExtendedAssets = %@";
      goto LABEL_17;
    }
  }

  else if (v6 == 1)
  {
    v10 = [v3 kind];
    v8 = 1;
    if (v10 < 3)
    {
      v9 = @"highlightBeingSummaryAssets = %@";
      goto LABEL_17;
    }

    if (v10 == 3)
    {
      v9 = @"dayGroupHighlightBeingSummaryAssets = %@";
      goto LABEL_17;
    }
  }

  else
  {
    if (v6)
    {
      v12 = 0;
      v8 = 1;
      goto LABEL_18;
    }

    v7 = [v3 kind];
    v8 = 1;
    if (v7 < 3)
    {
      v9 = @"highlightBeingAssets = %@";
LABEL_17:
      v12 = [MEMORY[0x1E696AE18] predicateWithFormat:v9, v5];
      goto LABEL_18;
    }

    if (v7 == 3)
    {
      v9 = @"dayGroupHighlightBeingAssets = %@";
      goto LABEL_17;
    }
  }

  v12 = 0;
LABEL_18:
  if ([v3 isSharingSuggestion])
  {
    v13 = [MEMORY[0x1E69BE540] predicateToIncludeSharedLibrarySharingSuggestionsAssets];
  }

  else
  {
    v14 = [v4 sharingFilter];
    if (v14 == 1)
    {
      v13 = [MEMORY[0x1E69BE540] predicateToIncludeSharedLibraryAssetsAllowingIndexingOnParticipationState:v8];
    }

    else
    {
      if (v14)
      {
        v15 = 0;
        goto LABEL_29;
      }

      v13 = [MEMORY[0x1E69BE540] predicateToIncludePrivateLibraryAssetsAllowingIndexingOnParticipationState:v8];
    }
  }

  v15 = v13;
  if (v13)
  {
    if (v12)
    {
      v16 = MEMORY[0x1E696AB28];
      v20[0] = v12;
      v20[1] = v13;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
      v18 = [v16 andPredicateWithSubpredicates:v17];

      v12 = v18;
    }

    else
    {
      v15 = v13;
      v12 = v15;
    }
  }

LABEL_29:

  return v12;
}

uint64_t sub_19C885310()
{
  type metadata accessor for _PHBackgroundResourceUploadExtensionConfiguration();

  return swift_getWitnessTable();
}

uint64_t sub_19C8853A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19C8853D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19C885414()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19C88544C()
{
  OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

Photos::PHBackgroundResourceUploadProcessingResult_optional __swiftcall PHBackgroundResourceUploadProcessingResult.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_19C8863A4(unsigned __int8 a1)
{
  sub_19CB01E5C();
  MEMORY[0x19EAF0F10](a1);
  return sub_19CB01E7C();
}

uint64_t sub_19C886424(uint64_t a1, unsigned __int8 a2)
{
  sub_19CB01E5C();
  MEMORY[0x19EAF0F10](a2);
  return sub_19CB01E7C();
}

uint64_t sub_19C886470@<X0>(uint64_t *a1@<X8>)
{
  result = PHBackgroundResourceUploadProcessingResult.rawValue.getter();
  *a1 = result;
  return result;
}

id PHBackgroundResourceUploadExtension.configuration.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _PHBackgroundResourceUploadExtensionConfiguration();
  (*(v5 + 16))(v7, v2, a1);
  result = sub_19C886594(v7);
  *a2 = result;
  return result;
}

unint64_t sub_19C8865CC()
{
  result = qword_1EAFFFDE0;
  if (!qword_1EAFFFDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFFFDE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PHBackgroundResourceUploadProcessingResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PHBackgroundResourceUploadProcessingResult(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_19C8867D4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_19CB01C6C();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_19C8868A4(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  v6 = sub_19CB01C6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((v5 & v3) + 0x50);
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v1[*((v5 & v3) + 0x60)], a1, v10);
  sub_19CB01CAC();
  sub_19CB01C5C();
  (*(v7 + 32))(&v1[*((*v4 & *v1) + 0x68)], v9, v6);
  v12 = type metadata accessor for _PHBackgroundResourceUploadExtensionConfiguration();
  v15.receiver = v1;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v11 + 8))(a1, v10);
  return v13;
}

uint64_t sub_19C886B0C(void *a1)
{
  [a1 setExportedObject_];
  v3 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v15 = sub_19C887BA0;
  v16 = v4;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_19C886CFC;
  v14 = &block_descriptor;
  v5 = _Block_copy(&v11);
  v6 = v1;

  [a1 setInterruptionHandler_];
  _Block_release(v5);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v15 = sub_19C887BC4;
  v16 = v7;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_19C886CFC;
  v14 = &block_descriptor_12;
  v8 = _Block_copy(&v11);
  v9 = v6;

  [a1 setInvalidationHandler_];
  _Block_release(v8);
  [a1 resume];
  return 1;
}

uint64_t sub_19C886CFC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_19C886D40(void *a1, const char *a2)
{
  v4 = *MEMORY[0x1E69E7D40] & *a1;
  v5 = *(v4 + 0x50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v21 - v7;
  v9 = a1;
  v10 = sub_19CB01C4C();
  v11 = sub_19CB01D1C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = a2;
    v15 = v14;
    v24 = v14;
    *v13 = 136315138;
    v16 = sub_19C887140();
    v18 = sub_19C887BE8(v16, v17, &v24);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_19C86F000, v10, v11, v22, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x19EAF3600](v15, -1, -1);
    v19 = v13;
    v4 = v23;
    MEMORY[0x19EAF3600](v19, -1, -1);
  }

  sub_19C886AA4(v8);
  (*(*(v4 + 88) + 24))(v5);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_19C886F74(uint64_t (*a1)(void))
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v10[-v7];
  sub_19C886AA4(&v10[-v7]);
  (*(*((v4 & v3) + 0x58) + 16))(&v11, v5);
  (*(v6 + 8))(v8, v5);
  return a1(qword_19CB29028[v11]);
}

uint64_t sub_19C8870B4(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v4;
  v5 = a1;
  sub_19C886F74(sub_19C88824C);
}

unint64_t sub_19C887140()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0xD000000000000012;
  }

  v2 = sub_19CB01CAC();

  return v2;
}

id sub_19C887248()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PHBackgroundResourceUploadExtensionConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19C8872B8(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);
  v3 = *((*v2 & *a1) + 0x68);
  v4 = sub_19CB01C6C();
  v5 = *(*(v4 - 8) + 8);

  return v5(&a1[v3], v4);
}

uint64_t sub_19C8873D8(uint64_t a1)
{
  v2 = sub_19C8878E8(&qword_1EAFFFEE0, type metadata accessor for PHPhotosError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_19C887444(uint64_t a1)
{
  v2 = sub_19C8878E8(&qword_1EAFFFEE0, type metadata accessor for PHPhotosError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_19C8874B4(uint64_t a1)
{
  v2 = sub_19C8878E8(&qword_1EAFFFF18, type metadata accessor for PHPhotosError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_19C887544(uint64_t a1)
{
  v2 = sub_19C8878E8(&qword_1EAFFFF18, type metadata accessor for PHPhotosError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_19C8875B0(uint64_t a1)
{
  v2 = sub_19C8878E8(&qword_1EAFFFF18, type metadata accessor for PHPhotosError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_19C88761C(void *a1, uint64_t a2)
{
  v4 = sub_19C8878E8(&qword_1EAFFFF18, type metadata accessor for PHPhotosError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_19C8876D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_19C8878E8(&qword_1EAFFFF18, type metadata accessor for PHPhotosError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_19C887754()
{
  sub_19CB01E5C();
  sub_19CB01C8C();
  return sub_19CB01E7C();
}

void sub_19C8877B4(uint64_t a1@<X8>)
{
  sub_19C8877E8();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_19C8877F0@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_19C88781C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19C8878E8(&qword_1EAFFFF18, type metadata accessor for PHPhotosError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_19C8878E8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19C887AB0()
{
  result = qword_1EAFFFF08;
  if (!qword_1EAFFFF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFFFF08);
  }

  return result;
}

unint64_t sub_19C887BE8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_19C887CAC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_19C8881A4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_19C887CAC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_19C887DAC(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_19CB01D8C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_19C887DAC(uint64_t a1, unint64_t a2)
{
  v3 = sub_19C887DF8(a1, a2);
  sub_19C887F10(&unk_1F0FC20C0);
  return v3;
}

uint64_t sub_19C887DF8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_19CB01CCC())
  {
    result = sub_19C887FF4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_19CB01D6C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_19CB01D8C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_19C887F10(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_19C888064(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_19C887FF4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFFFF20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_19C888064(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFFFF20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_19C8881A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_19C8882B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19C8882D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

id PHChange.changeDetails<A>(for:)(uint64_t a1)
{
  result = [v1 changeDetailsForObject_];
  if (result)
  {
    v3 = objc_opt_self();
    return OUTLINED_FUNCTION_0(v3);
  }

  return result;
}

id PHChange.changeDetails<A>(for:)()
{
  v1 = objc_opt_self();
  result = [v0 changeDetailsForFetchResult_];
  if (result)
  {
    v3 = objc_opt_self();
    return OUTLINED_FUNCTION_0(v3);
  }

  return result;
}

void PHPhotoLibrary.localIdentifierMappings(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  OUTLINED_FUNCTION_8();
  v18 = sub_19C888AF8(0, &qword_1EAFFFD78);
  v19 = sub_19CB01CFC();
  v20 = [v13 localIdentifierMappingsForCloudIdentifiers_];

  sub_19C888AF8(0, &qword_1EAFFFD60);
  sub_19C888B38();
  v21 = sub_19CB01C7C();

  if ((v21 & 0xC000000000000001) != 0)
  {
    sub_19C888CCC();
LABEL_3:

    OUTLINED_FUNCTION_7();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFFFFA8);
    sub_19CB01DDC();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0_0();
    v36 = v22;
    if (v15)
    {
      while (1)
      {
        OUTLINED_FUNCTION_2();
LABEL_11:
        v25 = v23 | (v17 << 6);
        v26 = *(*(v21 + 56) + 8 * v25);
        v37 = *(*(v21 + 48) + 8 * v25);
        v27 = v26;
        v28 = sub_19C889288(v27);
        v30 = v29;
        if (v29 || (v28 = [v27 error]) != 0)
        {
          v31 = v28;
        }

        else
        {
          type metadata accessor for PHPhotosError(0);
          sub_19C888968(MEMORY[0x1E69E7CC0]);
          sub_19C888AA0();
          sub_19CB01C3C();

          v31 = a13;
        }

        *(v36 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        *(v18[6] + 8 * v25) = v37;
        v32 = v18[7] + 24 * v25;
        *v32 = v31;
        *(v32 + 8) = v30;
        *(v32 + 16) = v30 == 0;
        v33 = v18[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          break;
        }

        v18[2] = v35;
        if (!v15)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v24 = v17;
      while (1)
      {
        v17 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v17 >= v14)
        {
          goto LABEL_3;
        }

        ++v24;
        if (*(v16 + 8 * v17))
        {
          OUTLINED_FUNCTION_4();
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

unint64_t sub_19C888968(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFFFFB0);
  v2 = sub_19CB01DFC();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_19C8892FC(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_19C888BA0(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_19C88936C(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_19C888AA0()
{
  result = qword_1EAFFFF18;
  if (!qword_1EAFFFF18)
  {
    type metadata accessor for PHPhotosError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFFFF18);
  }

  return result;
}

uint64_t sub_19C888AF8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_19C888B38()
{
  result = qword_1EAFFFD70;
  if (!qword_1EAFFFD70)
  {
    sub_19C888AF8(255, &qword_1EAFFFD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFFFD70);
  }

  return result;
}

unint64_t sub_19C888BA0(uint64_t a1, uint64_t a2)
{
  sub_19CB01E5C();
  sub_19CB01CBC();
  v4 = sub_19CB01E7C();

  return sub_19C888C18(a1, a2, v4);
}

unint64_t sub_19C888C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_19CB01E1C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_19C888CCC()
{
  if (sub_19CB01DAC())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFFFFA8);
    v0 = sub_19CB01DFC();
  }

  else
  {
    v0 = MEMORY[0x1E69E7CC8];
  }

  v22 = v0;
  sub_19CB01D9C();
  swift_unknownObjectRetain();
  while (1)
  {
    v1 = sub_19CB01DBC();
    if (!v1)
    {

      return v0;
    }

    v3 = v2;
    v20 = v1;
    sub_19C888AF8(0, &qword_1EAFFFD78);
    swift_dynamicCast();
    sub_19C888AF8(0, &qword_1EAFFFD60);
    swift_dynamicCast();
    v4 = sub_19C889288(v20);
    v6 = v5;
    if (v5 || (v4 = [v20 error]) != 0)
    {
      v7 = v4;
    }

    else
    {
      type metadata accessor for PHPhotosError(0);
      sub_19C888968(MEMORY[0x1E69E7CC0]);
      sub_19C888AA0();
      sub_19CB01C3C();
      v7 = v3;
    }

    v8 = *(v0 + 16);
    if (*(v0 + 24) <= v8)
    {
      sub_19C888F88(v8 + 1, 1);
    }

    v0 = v22;
    result = sub_19CB01D3C();
    v10 = v22 + 64;
    v11 = -1 << *(v22 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    if (((-1 << v12) & ~*(v22 + 64 + 8 * (v12 >> 6))) == 0)
    {
      break;
    }

    v14 = __clz(__rbit64((-1 << v12) & ~*(v22 + 64 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    *(*(v22 + 48) + 8 * v14) = v21;
    v19 = *(v22 + 56) + 24 * v14;
    *v19 = v7;
    *(v19 + 8) = v6;
    *(v19 + 16) = v6 == 0;
    ++*(v22 + 16);
  }

  v15 = 0;
  v16 = (63 - v11) >> 6;
  while (++v13 != v16 || (v15 & 1) == 0)
  {
    v17 = v13 == v16;
    if (v13 == v16)
    {
      v13 = 0;
    }

    v15 |= v17;
    v18 = *(v10 + 8 * v13);
    if (v18 != -1)
    {
      v14 = __clz(__rbit64(~v18)) + (v13 << 6);
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19C888F88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFFFFA8);
  v37 = a2;
  result = sub_19CB01DEC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v2;
  v36 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_19C889224(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(v5 + 56) + 24 * v18;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    if ((v37 & 1) == 0)
    {
      v24 = v19;
      sub_19C8892EC(v21, v22, v23);
    }

    result = sub_19CB01D3C();
    v25 = -1 << *(v7 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v7 + 48) + 8 * v28) = v19;
    v33 = *(v7 + 56) + 24 * v28;
    *v33 = v21;
    *(v33 + 8) = v22;
    *(v33 + 16) = v23;
    ++*(v7 + 16);
    v5 = v36;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v14 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_19C889224(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_19CB29040;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_19C889288(void *a1)
{
  v1 = [a1 localIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_19CB01CAC();

  return v3;
}

id sub_19C8892EC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_19C8892FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFFFFB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_19C88936C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(a10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
  v17 = (*(v14 + 48) + 16 * v12);
  *v17 = a12;
  v17[1] = v15;
  v18 = *(v14 + 56) + 16 * v12;
  *v18 = v13;
  *(v18 + 8) = v16 == 0;
}

uint64_t OUTLINED_FUNCTION_5()
{
}

uint64_t OUTLINED_FUNCTION_6()
{

  return sub_19CB01C3C();
}

uint64_t PHPersistentChangeFetchResult.Iterator.__allocating_init(fetchResult:)(void *a1)
{
  v2 = swift_allocObject();
  PHPersistentChangeFetchResult.Iterator.init(fetchResult:)(a1);
  return v2;
}

uint64_t PHPersistentChangeFetchResult.Iterator.init(fetchResult:)(void *a1)
{
  *(v1 + 24) = a1;
  *(v1 + 16) = [a1 iteratorForPersistentChangeEnumeration];
  return v1;
}

PHPersistentChange_optional __swiftcall PHPersistentChangeFetchResult.Iterator.next()()
{
  v1 = *(v0 + 16);
  if ([v1 hasMoreTransactions])
  {
    v5 = [*(v0 + 24) nextPersistentChangeWithIterator_];
  }

  else
  {
    v5 = 0;
  }

  result.value._changeToken = v3;
  result.value._change = v2;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

uint64_t PHPersistentChangeFetchResult.Iterator.__deallocating_deinit()
{
  PHPersistentChangeFetchResult.Iterator.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_19C8895C0@<X0>(unint64_t *a1@<X8>)
{
  result = PHPersistentChangeFetchResult.Iterator.next()();
  *a1 = result;
  return result;
}

uint64_t PHPersistentChangeFetchResult.makeIterator()()
{
  type metadata accessor for PHPersistentChangeFetchResult.Iterator();
  v1 = swift_allocObject();
  PHPersistentChangeFetchResult.Iterator.init(fetchResult:)(v0);
  return v1;
}

unint64_t sub_19C889654()
{
  result = qword_1EAFFFFC0;
  if (!qword_1EAFFFFC0)
  {
    type metadata accessor for PHPersistentChangeFetchResult.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFFFFC0);
  }

  return result;
}

void sub_19C8896A8(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = PHPersistentChangeFetchResult.makeIterator()();

  *a1 = v4;
}

uint64_t sub_19C889714()
{
  v1 = sub_19C889848(v0);

  return v1;
}

unint64_t sub_19C889804()
{
  result = qword_1EAFFFFC8;
  if (!qword_1EAFFFFC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAFFFFC8);
  }

  return result;
}

uint64_t sub_19C889848(void *a1)
{
  type metadata accessor for PHPersistentChangeFetchResult.Iterator();
  swift_initStackObject();
  PHPersistentChangeFetchResult.Iterator.init(fetchResult:)(a1);
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; ++i)
  {
    result = PHPersistentChangeFetchResult.Iterator.next()();
    if (!result)
    {

      v17 = v3[3];
      if (v17 >= 2)
      {
        v18 = v17 >> 1;
        v16 = __OFSUB__(v18, v2);
        v19 = v18 - v2;
        if (v16)
        {
          goto LABEL_25;
        }

        v3[2] = v19;
      }

      return v3;
    }

    v6 = result;
    if (!v2)
    {
      v7 = v3[3];
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_24;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFFFFD0);
      v10 = swift_allocObject();
      v11 = (_swift_stdlib_malloc_size(v10) - 32) / 8;
      v10[2] = v9;
      v10[3] = (2 * v11) | 1;
      v12 = (v10 + 4);
      v13 = v3[3];
      v14 = v13 >> 1;
      if (v3[2])
      {
        if (v10 != v3 || v12 >= &v3[v14 + 4])
        {
          memmove(v10 + 4, v3 + 4, 8 * v14);
        }

        v3[2] = 0;
      }

      i = (v12 + 8 * v14);
      v2 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - (v13 >> 1);

      v3 = v10;
    }

    v16 = __OFSUB__(v2--, 1);
    if (v16)
    {
      break;
    }

    *i = v6;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_19C8899B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for PHPersistentChangeFetchResult.Iterator();
  v8 = swift_allocObject();
  result = PHPersistentChangeFetchResult.Iterator.init(fetchResult:)(v4);
  v10 = 0;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        result = PHPersistentChangeFetchResult.Iterator.next()();
        if (!result)
        {
          goto LABEL_9;
        }

        *(a2 + 8 * v10++) = result;
        if (v11 == a3)
        {
          v10 = a3;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    *a1 = v8;
    return v10;
  }

  return result;
}

void sub_19C889A58(void *a1, char a2, uint64_t a3)
{
  [a1 setTrackSQLiteDatabaseStatistics_];
  if (a2)
  {
    v6 = [a1 _delegate];
    sub_19CB01D5C();
    swift_unknownObjectRelease();
    sub_19C888AF8(0, &qword_1EB000068);
    if (swift_dynamicCast())
    {
      [v7 setPhotoKitStatsTracker_];
    }
  }
}

void sub_19C889B84()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Photos27PHDatabaseStatisticsTracker_lockedState);
  os_unfair_lock_lock((v1 + 24));
  v2 = [*(*(v1 + 16) + 16) allObjects];
  sub_19C888AF8(0, &qword_1EB000060);
  v3 = sub_19CB01D0C();

  os_unfair_lock_unlock((v1 + 24));
  v4 = sub_19C88AACC(v3);
  v5 = 0;
  v6 = 0;
  while (1)
  {
    if (v4 == v5)
    {

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x19EAF0E20](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = sub_19C889CB4();

    ++v5;
    v10 = __OFADD__(v6, v9);
    v6 += v9;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_19C889CB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB000070);
  sub_19CB01D2C();
  if (v3)
  {
    v0 = [v3 pageSize];
    v1 = [v3 totalCachePages];

    result = v0 * v1;
    if ((v0 * v1) >> 64 == (v0 * v1) >> 63)
    {
      return result;
    }

    __break(1u);
  }

  return 0;
}

id sub_19C889D70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 databaseStatistics];
  *a2 = result;
  return result;
}

uint64_t sub_19C889DB0()
{
  v1 = *&v0[OBJC_IVAR____TtC6Photos27PHDatabaseStatisticsTracker_lockedState];
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  *(v2 + 24) = 1;
  v3 = [*(v2 + 16) allObjects];
  sub_19C888AF8(0, &qword_1EB000060);
  v4 = sub_19CB01D0C();

  os_unfair_lock_unlock((v1 + 24));
  result = sub_19C88AACC(v4);
  if (result)
  {
    v16 = result - 1;
    if (result >= 1)
    {
      v6 = 0;
      v7 = 0;
      if ((v4 & 0xC000000000000001) == 0)
      {
        goto LABEL_5;
      }

LABEL_4:
      for (i = MEMORY[0x19EAF0E20](v7, v4); ; i = *(v4 + 8 * v7 + 32))
      {
        v9 = i;
        OUTLINED_FUNCTION_0_1();
        v10 = swift_allocObject();
        *(v10 + 16) = v9;
        *(v10 + 24) = v0;
        v11 = v9;
        v12 = v0;
        sub_19C88AD88(v6);
        OUTLINED_FUNCTION_0_1();
        v13 = swift_allocObject();
        *(v13 + 16) = sub_19C88ADC0;
        *(v13 + 24) = v10;
        aBlock[4] = sub_19C88ADF8;
        aBlock[5] = v13;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_19C889B28;
        aBlock[3] = &block_descriptor_26;
        v14 = _Block_copy(aBlock);

        [v11 performBlockAndWait_];

        _Block_release(v14);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          break;
        }

        if (v16 == v7)
        {
        }

        ++v7;
        v6 = sub_19C88ADC0;
        if ((v4 & 0xC000000000000001) != 0)
        {
          goto LABEL_4;
        }

LABEL_5:
        ;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

void sub_19C88A05C(void *a1, uint64_t a2)
{
  v3 = [a1 _delegate];
  sub_19CB01D5C();
  swift_unknownObjectRelease();
  sub_19C888AF8(0, &qword_1EB000068);
  if (swift_dynamicCast())
  {
    [v4 setPhotoKitStatsTracker_];
  }
}

uint64_t sub_19C88A14C()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Photos27PHDatabaseStatisticsTracker_lockedState);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  *(v2 + 24) = 0;
  v3 = [*(v2 + 16) allObjects];
  sub_19C888AF8(0, &qword_1EB000060);
  v4 = sub_19CB01D0C();

  os_unfair_lock_unlock((v1 + 24));
  result = sub_19C88AACC(v4);
  if (result)
  {
    v6 = result - 1;
    if (result >= 1)
    {
      v7 = 0;
      v8 = 0;
      if ((v4 & 0xC000000000000001) == 0)
      {
        goto LABEL_5;
      }

LABEL_4:
      for (i = MEMORY[0x19EAF0E20](v8, v4); ; i = *(v4 + 8 * v8 + 32))
      {
        v10 = i;
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        v12 = v10;
        sub_19C88AD88(v7);
        OUTLINED_FUNCTION_0_1();
        v13 = swift_allocObject();
        *(v13 + 16) = sub_19C88AD80;
        *(v13 + 24) = v11;
        v15[4] = sub_19C88AD98;
        v15[5] = v13;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 1107296256;
        v15[2] = sub_19C889B28;
        v15[3] = &block_descriptor_0;
        v14 = _Block_copy(v15);

        [v12 performBlockAndWait_];

        _Block_release(v14);
        LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

        if (v14)
        {
          break;
        }

        if (v6 == v8)
        {
        }

        ++v8;
        v7 = sub_19C88AD80;
        if ((v4 & 0xC000000000000001) != 0)
        {
          goto LABEL_4;
        }

LABEL_5:
        ;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

void sub_19C88A3EC(void *a1)
{
  v1 = [a1 _delegate];
  sub_19CB01D5C();
  swift_unknownObjectRelease();
  sub_19C888AF8(0, &qword_1EB000068);
  if (swift_dynamicCast())
  {
    [v2 setPhotoKitStatsTracker_];
  }
}

uint64_t sub_19C88A538()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Photos27PHDatabaseStatisticsTracker_lockedState);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  swift_beginAccess();
  v3 = *(v2 + 32);

  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

void sub_19C88A5A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Photos27PHDatabaseStatisticsTracker_lockedState);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  swift_beginAccess();
  *(v2 + 32) = MEMORY[0x1E69E7CC0];

  os_unfair_lock_unlock((v1 + 24));
}

void sub_19C88A658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + OBJC_IVAR____TtC6Photos27PHDatabaseStatisticsTracker_lockedState);
  os_unfair_lock_lock((v7 + 24));
  v8 = (v7 + 16);
  v9 = *(*(v7 + 16) + 24);
  os_unfair_lock_unlock((v7 + 24));
  if (v9 == 1)
  {
    v10 = *(a5 + 16);
    if (v10)
    {
      v26 = MEMORY[0x1E69E7CC0];
      sub_19C88ABF8(0, v10, 0);
      v11 = v26;
      v12 = objc_opt_self();
      v13 = a5 + 32;
      do
      {
        sub_19C8881A4(v13, v25);
        __swift_project_boxed_opaque_existential_0(v25, v25[3]);
        v14 = [v12 stringFromBindVariable:sub_19CB01E0C() withTypePrefix:0];
        v15 = sub_19CB01CAC();
        v17 = v16;
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_0(v25);
        v26 = v11;
        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_19C88ABF8((v18 > 1), v19 + 1, 1);
          v11 = v26;
        }

        *(v11 + 16) = v19 + 1;
        v20 = v11 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
        v13 += 32;
        --v10;
      }

      while (v10);
      v8 = (v7 + 16);
    }

    v21 = objc_opt_self();
    v22 = sub_19CB01C9C();
    v23 = sub_19CB01CFC();

    v24 = [v21 bindSelectString:v22 bindValueStrings:v23];

    sub_19CB01CAC();
    MEMORY[0x1EEE9AC00]();
    os_unfair_lock_lock((v7 + 24));
    sub_19C88AC5C(v8);
    os_unfair_lock_unlock((v7 + 24));
  }
}

uint64_t sub_19C88A8B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();

  sub_19C88AA40();
  v6 = *(*(v5 + 32) + 16);
  sub_19C88AA8C(v6);
  v7 = *(v5 + 32);
  *(v7 + 16) = v6 + 1;
  v8 = v7 + 16 * v6;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v5 + 32) = v7;
  return swift_endAccess();
}

id sub_19C88AA0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PHDatabaseStatisticsTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_19C88AA40()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_19C88AAF0(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_19C88AA8C(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_19C88AAF0((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_19C88AACC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_19CB01DAC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

char *sub_19C88AAF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB000058);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19C88ABF8(char *a1, int64_t a2, char a3)
{
  result = sub_19C88AC78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *sub_19C88AC78(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB000058);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_19C88AD88(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void ph_objc_setAssociatedObject(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = sSharedTable();
  [v8 setAssociatedObject:v5 onObject:v7 forKey:v6];
}

void sub_19C88E74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C88F098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PHCloudFeedEntryFilterForPLCloudFeedEntryFilter(uint64_t result)
{
  if ((result - 1) >= 5)
  {
    return 0;
  }

  return result;
}

uint64_t PLCloudFeedEntryFilterForPHCloudFeedEntryFilter(uint64_t result)
{
  if ((result - 1) >= 5)
  {
    return 0;
  }

  return result;
}

uint64_t PHCloudFeedEntryTypeForPLCloudFeedEntryType(int a1)
{
  if ((a1 - 1) < 7)
  {
    return (a1 - 1) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t PLCloudFeedEntryTypeForPHCloudFeedEntryType(uint64_t a1)
{
  if ((a1 - 1) < 7)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__CFString *NSStringFromPHCloudFeedEntryFilter(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"None";
  }

  else
  {
    return off_1E75A34E8[a1 - 1];
  }
}

__CFString *PHSocialGroupVerifiedTypeDescription(__int16 a1)
{
  if ((a1 + 1) > 3u)
  {
    return @"unknown";
  }

  else
  {
    return off_1E75A3538[(a1 + 1)];
  }
}

void sub_19C89A4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C89A668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C89B140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__904(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C89BE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C89C1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C89CC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C89D014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose((v17 - 144), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PLStringForSearchEntityCategoryType(uint64_t a1)
{
  if ((a1 - 1) > 0x13)
  {
    return @"PHSearchEntityCategoryTypeUndefined";
  }

  else
  {
    return off_1E75A3850[a1 - 1];
  }
}

uint64_t PHSearchNaturalLanguageDateSuggestionsEnabled()
{
  if (PHSearchNaturalLanguageDateSuggestionsEnabled_once != -1)
  {
    dispatch_once(&PHSearchNaturalLanguageDateSuggestionsEnabled_once, &__block_literal_global_987);
  }

  return PHSearchNaturalLanguageDateSuggestionsEnabled_naturalLanguageDateSuggestionsEnabled;
}

void __PHSearchNaturalLanguageDateSuggestionsEnabled_block_invoke()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"PHSearchNaturalLanguageDateSuggestionsEnabledKey"];

  if (!v1)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v11 = @"PHSearchNaturalLanguageDateSuggestionsEnabledKey";
    v12[0] = MEMORY[0x1E695E118];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v2 registerDefaults:v3];

    v4 = PLSearchBackendPhotoKitAPIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = @"PHSearchNaturalLanguageDateSuggestionsEnabledKey";
      _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_DEFAULT, "User has not set a value for %@, setting the default value", &v9, 0xCu);
    }
  }

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"PHSearchNaturalLanguageDateSuggestionsEnabledKey"];

  if (v6)
  {
    PHSearchNaturalLanguageDateSuggestionsEnabled_naturalLanguageDateSuggestionsEnabled = 1;
    v7 = PLSearchBackendPhotoKitAPIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = @"PHSearchNaturalLanguageDateSuggestionsEnabledKey";
      v8 = "%@: YES";
LABEL_10:
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEFAULT, v8, &v9, 0xCu);
    }
  }

  else
  {
    v7 = PLSearchBackendPhotoKitAPIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = @"PHSearchNaturalLanguageDateSuggestionsEnabledKey";
      v8 = "%@: NO";
      goto LABEL_10;
    }
  }
}

__CFString *PLDebugStringForSearchSuggestionType(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"PHSearchSuggestionTypeUndefined";
  }

  else
  {
    return off_1E75A38F0[a1 - 1];
  }
}

__CFString *PLDebugStringForSearchEntityType(uint64_t a1)
{
  result = @"PHSearchEntityTypeUndefined";
  if (a1 <= 1519)
  {
    if (a1 > 1007)
    {
      if (a1 <= 1203)
      {
        if (a1 <= 1102)
        {
          v3 = @"PHSearchEntityTypeYear";
          v28 = @"PHSearchEntityTypeHoliday";
          if (a1 != 1102)
          {
            v28 = @"PHSearchEntityTypeUndefined";
          }

          if (a1 != 1101)
          {
            v3 = v28;
          }

          v6 = @"PHSearchEntityTypeSubcontinent";
          v29 = @"PHSearchEntityTypeMonth";
          if (a1 != 1100)
          {
            v29 = @"PHSearchEntityTypeUndefined";
          }

          if (a1 != 1008)
          {
            v6 = v29;
          }

          v10 = __OFSUB__(a1, 1100);
          v8 = a1 == 1100;
          v9 = a1 - 1100 < 0;
        }

        else
        {
          v3 = @"PHSearchEntityTypeTitle";
          v14 = @"PHSearchEntityTypeDescription";
          v15 = @"PHSearchEntityTypeOCRText";
          if (a1 != 1203)
          {
            v15 = @"PHSearchEntityTypeUndefined";
          }

          if (a1 != 1202)
          {
            v14 = v15;
          }

          if (a1 != 1201)
          {
            v3 = v14;
          }

          v6 = @"PHSearchEntityTypeSeason";
          v16 = @"PHSearchEntityTypeKeyword";
          if (a1 != 1200)
          {
            v16 = @"PHSearchEntityTypeUndefined";
          }

          if (a1 != 1103)
          {
            v6 = v16;
          }

          v10 = __OFSUB__(a1, 1200);
          v8 = a1 == 1200;
          v9 = a1 - 1200 < 0;
        }
      }

      else if (a1 > 1399)
      {
        v3 = @"PHSearchEntityTypeCollectionShareTitle";
        v25 = @"PHSearchEntityTypeScene";
        v26 = @"PHSearchEntityTypeParseRichLabelKGID";
        if (a1 != 1510)
        {
          v26 = @"PHSearchEntityTypeUndefined";
        }

        if (a1 != 1500)
        {
          v25 = v26;
        }

        if (a1 != 1402)
        {
          v3 = v25;
        }

        v6 = @"PHSearchEntityTypeAlbumTitle";
        v27 = @"PHSearchEntityTypeMemoryTitle";
        if (a1 != 1401)
        {
          v27 = @"PHSearchEntityTypeUndefined";
        }

        if (a1 != 1400)
        {
          v6 = v27;
        }

        v10 = __OFSUB__(a1, 1401);
        v8 = a1 == 1401;
        v9 = a1 - 1401 < 0;
      }

      else
      {
        v3 = @"PHSearchEntityTypeSocialGroup";
        v4 = @"PHSearchEntityTypeContributor";
        v5 = @"PHSearchEntityTypePet";
        if (a1 != 1330)
        {
          v5 = @"PHSearchEntityTypeUndefined";
        }

        if (a1 != 1320)
        {
          v4 = v5;
        }

        if (a1 != 1310)
        {
          v3 = v4;
        }

        v6 = @"PHSearchEntityTypeOCRTextFound";
        v7 = @"PHSearchEntityTypePerson";
        if (a1 != 1300)
        {
          v7 = @"PHSearchEntityTypeUndefined";
        }

        if (a1 != 1204)
        {
          v6 = v7;
        }

        v10 = __OFSUB__(a1, 1309);
        v8 = a1 == 1309;
        v9 = a1 - 1309 < 0;
      }
    }

    else
    {
      if (a1 <= 999)
      {
        switch(a1)
        {
          case 1:
            result = @"PHSearchEntityTypeAOI";
            break;
          case 2:
            result = @"PHSearchEntityTypeThoroughfare";
            break;
          case 3:
            result = @"PHSearchEntityTypeSubLocality";
            break;
          case 4:
            result = @"PHSearchEntityTypeLargeAOI";
            break;
          case 5:
            result = @"PHSearchEntityTypeLocality";
            break;
          case 6:
            result = @"PHSearchEntityTypeSuperLocality";
            break;
          case 7:
            result = @"PHSearchEntityTypeSubAdministrativeArea";
            break;
          case 8:
            result = @"PHSearchEntityTypeSubAdministrativeLocality";
            break;
          case 9:
            result = @"PHSearchEntityTypeSuperAOI";
            break;
          case 10:
            result = @"PHSearchEntityTypeAdministrativeArea";
            break;
          case 11:
            result = @"PHSearchEntityTypeAdministrativeAreaCode";
            break;
          case 12:
            result = @"PHSearchEntityTypeCountry";
            break;
          case 13:
            result = @"PHSearchEntityTypeCountryCode";
            break;
          case 14:
            result = @"PHSearchEntityTypeMegaAOI";
            break;
          default:
            return result;
        }

        return result;
      }

      v3 = @"PHSearchEntityTypePOI";
      v22 = @"PHSearchEntityTypeROI";
      v23 = @"PHSearchEntityTypeContinent";
      if (a1 != 1007)
      {
        v23 = @"PHSearchEntityTypeUndefined";
      }

      if (a1 != 1004)
      {
        v22 = v23;
      }

      if (a1 != 1003)
      {
        v3 = v22;
      }

      v6 = @"PHSearchEntityTypeHome";
      v24 = @"PHSearchEntityTypeWork";
      if (a1 != 1001)
      {
        v24 = @"PHSearchEntityTypeUndefined";
      }

      if (a1 != 1000)
      {
        v6 = v24;
      }

      v10 = __OFSUB__(a1, 1002);
      v8 = a1 == 1002;
      v9 = a1 - 1002 < 0;
    }

    goto LABEL_108;
  }

  if (a1 <= 1899)
  {
    if (a1 > 1699)
    {
      v3 = @"PHSearchEntityTypePublicEventName";
      v19 = @"PHSearchEntityTypePublicEventPerformer";
      v20 = @"PHSearchEntityTypePublicEventCategory";
      if (a1 != 1802)
      {
        v20 = @"PHSearchEntityTypeUndefined";
      }

      if (a1 != 1801)
      {
        v19 = v20;
      }

      if (a1 != 1800)
      {
        v3 = v19;
      }

      v6 = @"PHSearchEntityTypeBusinessName";
      v21 = @"PHSearchEntityTypeBusinessCategory";
      if (a1 != 1701)
      {
        v21 = @"PHSearchEntityTypeUndefined";
      }

      if (a1 != 1700)
      {
        v6 = v21;
      }

      v10 = __OFSUB__(a1, 1799);
      v8 = a1 == 1799;
      v9 = a1 - 1799 < 0;
    }

    else
    {
      v3 = @"PHSearchEntityTypePrivateEncryptedComputeAMP";
      v11 = @"PHSearchEntityTypeMeaning";
      v12 = @"PHSearchEntityTypeTrip";
      if (a1 != 1610)
      {
        v12 = @"PHSearchEntityTypeUndefined";
      }

      if (a1 != 1600)
      {
        v11 = v12;
      }

      if (a1 != 1540)
      {
        v3 = v11;
      }

      v6 = @"PHSearchEntityTypePrivateEncryptedComputeKGID";
      v13 = @"PHSearchEntityTypePrivateEncryptedComputeMUID";
      if (a1 != 1530)
      {
        v13 = @"PHSearchEntityTypeUndefined";
      }

      if (a1 != 1520)
      {
        v6 = v13;
      }

      v10 = __OFSUB__(a1, 1539);
      v8 = a1 == 1539;
      v9 = a1 - 1539 < 0;
    }

    goto LABEL_108;
  }

  if (a1 > 1999)
  {
    if (a1 > 2399)
    {
      v3 = @"PHSearchEntityTypeAudioClassification";
      v30 = @"PHSearchEntityTypeHumanAction";
      if (a1 != 2600)
      {
        v30 = @"PHSearchEntityTypeUndefined";
      }

      if (a1 != 2500)
      {
        v3 = v30;
      }

      v6 = @"PHSearchEntityTypeSharedLibrary";
      v31 = @"PHSearchEntityTypePersonalLibrary";
      if (a1 != 2401)
      {
        v31 = @"PHSearchEntityTypeUndefined";
      }

      if (a1 != 2400)
      {
        v6 = v31;
      }

      v10 = __OFSUB__(a1, 2499);
      v8 = a1 == 2499;
      v9 = a1 - 2499 < 0;
    }

    else
    {
      v3 = @"PHSearchEntityTypeImportedByAppName";
      v17 = @"PHSearchEntityTypeCameraMakeAndModel";
      if (a1 != 2300)
      {
        v17 = @"PHSearchEntityTypeUndefined";
      }

      if (a1 != 2200)
      {
        v3 = v17;
      }

      v6 = @"PHSearchEntityTypeFavorite";
      v18 = @"PHSearchEntityTypeFilename";
      if (a1 != 2100)
      {
        v18 = @"PHSearchEntityTypeUndefined";
      }

      if (a1 != 2000)
      {
        v6 = v18;
      }

      v10 = __OFSUB__(a1, 2199);
      v8 = a1 == 2199;
      v9 = a1 - 2199 < 0;
    }

LABEL_108:
    if (v9 ^ v10 | v8)
    {
      return v6;
    }

    else
    {
      return v3;
    }
  }

  switch(a1)
  {
    case 1900:
      result = @"PHSearchEntityTypeImage";
      break;
    case 1901:
      result = @"PHSearchEntityTypeVideo";
      break;
    case 1902:
      result = @"PHSearchEntityTypeRaw";
      break;
    case 1903:
      result = @"PHSearchEntityTypeCinematicVideo";
      break;
    case 1904:
      result = @"PHSearchEntityTypeProRes";
      break;
    case 1905:
      result = @"PHSearchEntityTypeSlomo";
      break;
    case 1906:
      result = @"PHSearchEntityTypeLivePhoto";
      break;
    case 1907:
      result = @"PHSearchEntityTypeScreenshot";
      break;
    case 1908:
      result = @"PHSearchEntityTypePanorama";
      break;
    case 1909:
      result = @"PHSearchEntityTypeTimelapse";
      break;
    case 1910:
      result = @"PHSearchEntityTypeScreenRecording";
      break;
    case 1911:
      result = @"PHSearchEntityTypeLongExposure";
      break;
    case 1912:
      result = @"PHSearchEntityTypeAnimated";
      break;
    case 1913:
      result = @"PHSearchEntityTypeBurst";
      break;
    case 1914:
      result = @"PHSearchEntityTypePortrait";
      break;
    case 1915:
      result = @"PHSearchEntityTypeSelfie";
      break;
    case 1916:
      result = @"PHSearchEntityTypeActionCam";
      break;
    case 1917:
      result = @"PHSearchEntityTypeLivePortrait";
      break;
    case 1918:
      result = @"PHSearchEntityTypeSpatial";
      break;
    case 1919:
      result = @"PHSearchEntityTypeFrontBackCapture";
      break;
    default:
      return result;
  }

  return result;
}

__CFString *PLDebugStringForSearchQuerySuggestionType(uint64_t a1)
{
  v1 = @"PHSearchQuerySuggestionTypeUndefined";
  if (a1 == 1)
  {
    v1 = @"PHSearchQuerySuggestionTypeInitial";
  }

  if (a1 == 2)
  {
    return @"PHSearchQuerySuggestionTypeRecent";
  }

  else
  {
    return v1;
  }
}

__CFString *PLDebugStringForAmbiguityType(uint64_t a1)
{
  v1 = @"PHSearchAmbiguityTypeNone";
  if (a1 == 1)
  {
    v1 = @"PHSearchAmbiguityTypePartiallyAmbiguous";
  }

  if (a1 == 2)
  {
    return @"PHSearchAmbiguityTypeFullyAmbiguous";
  }

  else
  {
    return v1;
  }
}

void sub_19C8A2D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1422(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C8A3FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1494(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C8A4174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C8A451C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C8A985C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  objc_sync_exit(v69);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose((v70 - 256), 8);
  _Block_object_dispose((v70 - 208), 8);
  _Block_object_dispose((v70 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1949(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C8AB478(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x368], 8);
  _Block_object_dispose(&STACK[0x3B0], 8);
  _Block_object_dispose(&STACK[0x3E0], 8);
  _Unwind_Resume(a1);
}

uint64_t __WriteStackshot(void *a1)
{
  v2 = a1;
  if (PFOSVariantHasInternalDiagnostics())
  {
    if (__WriteStackshot_onceToken != -1)
    {
      dispatch_once(&__WriteStackshot_onceToken, &__block_literal_global_400);
    }

    if (__WriteStackshot_PHWriteStackshotReport)
    {
      __WriteStackshot_PHWriteStackshotReport(v2, 3134986837);
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

void sub_19C8AF90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2350(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

NSObject *PHAssetExportRequestCopyFileURL(void *a1, void *a2, void *a3, int a4, NSObject **a5)
{
  v64 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSURL * _Nullable PHAssetExportRequestCopyFileURL(NSURL *__strong, NSURL *__strong, NSString *__strong, BOOL, NSError *__autoreleasing *)"}];
    [v44 handleFailureInFunction:v45 file:@"PHAssetExportRequest.m" lineNumber:363 description:{@"Invalid parameter not satisfying: %@", @"fileURL"}];

    if (v10)
    {
LABEL_3:
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_42:
      v48 = [MEMORY[0x1E696AAA8] currentHandler];
      v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSURL * _Nullable PHAssetExportRequestCopyFileURL(NSURL *__strong, NSURL *__strong, NSString *__strong, BOOL, NSError *__autoreleasing *)"}];
      [v48 handleFailureInFunction:v49 file:@"PHAssetExportRequest.m" lineNumber:365 description:{@"Invalid parameter not satisfying: %@", @"filename"}];

      if (a5)
      {
        goto LABEL_5;
      }

      goto LABEL_43;
    }
  }

  v46 = [MEMORY[0x1E696AAA8] currentHandler];
  v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSURL * _Nullable PHAssetExportRequestCopyFileURL(NSURL *__strong, NSURL *__strong, NSString *__strong, BOOL, NSError *__autoreleasing *)"}];
  [v46 handleFailureInFunction:v47 file:@"PHAssetExportRequest.m" lineNumber:364 description:{@"Invalid parameter not satisfying: %@", @"outputDirectory"}];

  if (!v11)
  {
    goto LABEL_42;
  }

LABEL_4:
  if (a5)
  {
    goto LABEL_5;
  }

LABEL_43:
  v50 = [MEMORY[0x1E696AAA8] currentHandler];
  v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSURL * _Nullable PHAssetExportRequestCopyFileURL(NSURL *__strong, NSURL *__strong, NSString *__strong, BOOL, NSError *__autoreleasing *)"}];
  [v50 handleFailureInFunction:v51 file:@"PHAssetExportRequest.m" lineNumber:366 description:{@"Invalid parameter not satisfying: %@", @"error"}];

LABEL_5:
  v59 = 0;
  v12 = PHAssetExportRequestCreateOutputDirectory(v10, &v59);
  v13 = v59;
  if (v12)
  {
    v14 = [v9 pathExtension];
    v15 = [v11 stringByAppendingPathExtension:v14];

    v54 = v15;
    v16 = [v10 URLByAppendingPathComponent:v15 isDirectory:0];
    v17 = [v9 path];
    v18 = [v16 path];
    LOBYTE(v15) = [v17 isEqualToString:v18];

    if (v15)
    {
      v19 = v9;
    }

    else
    {
      v20 = [MEMORY[0x1E696AC08] defaultManager];
      if (a4 && (-[NSObject path](v16, "path"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v20 fileExistsAtPath:v21], v21, v22))
      {
        v23 = PHAssetExportRequestCreateTemporaryOutputDirectoryURL();
        v58 = v13;
        v24 = [v20 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:&v58];
        v25 = v58;

        if (v24)
        {
          v26 = [v9 lastPathComponent];
          v27 = [v23 URLByAppendingPathComponent:v26];

          v57 = v25;
          v53 = v27;
          LODWORD(v26) = [v20 copyItemAtURL:v9 toURL:v27 error:&v57];
          v28 = v57;

          if (v26)
          {
            v56 = v28;
            v29 = [v20 replaceItemAtURL:v16 withItemAtURL:v9 backupItemName:0 options:0 resultingItemURL:0 error:&v56];
            v25 = v56;

            if (v29)
            {
              v30 = v16;
              v31 = v23;
              v19 = v30;
              v55[1] = 0;
              v32 = v31;
              v33 = [v20 removeItemAtURL:? error:?];
              v52 = 0;
              if ((v33 & 1) == 0)
              {
                v34 = PLPhotoKitGetLog();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v61 = v32;
                  v62 = 2112;
                  v63 = v52;
                  _os_log_impl(&dword_19C86F000, v34, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Could not delete temporary file location: %@ after replaceItemAtURL: %@", buf, 0x16u);
                }
              }

              v35 = v52;
              v36 = v53;
            }

            else
            {
              v32 = v23;
              v41 = PLPhotoKitGetLog();
              v36 = v53;
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v61 = v16;
                v62 = 2112;
                v63 = v25;
                _os_log_impl(&dword_19C86F000, v41, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Could not replace existing file at URL: %@. Error: %@", buf, 0x16u);
              }

              v35 = v41;
              v19 = 0;
            }
          }

          else
          {
            v32 = v23;
            v40 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v61 = v28;
              _os_log_impl(&dword_19C86F000, v40, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Failed to copy file to temporary location before calling replaceItemAtURL: %@", buf, 0xCu);
            }

            v35 = v40;
            v19 = 0;
            v25 = v28;
            v36 = v53;
          }
        }

        else
        {
          v32 = v23;
          v36 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v61 = v25;
            _os_log_impl(&dword_19C86F000, v36, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Couldn't create temporary file location before calling replaceItemAtURL: %@", buf, 0xCu);
          }

          v19 = 0;
        }
      }

      else
      {
        v37 = [MEMORY[0x1E696AC08] defaultManager];
        v55[0] = v13;
        v38 = [v37 copyItemAtURL:v9 toURL:v16 error:v55];
        v25 = v55[0];

        if (v38)
        {
          v19 = v16;
        }

        else
        {
          v39 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v61 = v25;
            _os_log_impl(&dword_19C86F000, v39, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Failed to copy file: %@", buf, 0xCu);
          }

          v19 = 0;
        }
      }

      v13 = v25;
    }
  }

  else
  {
    v19 = 0;
  }

  v42 = v13;
  *a5 = v13;

  return v19;
}

uint64_t PHAssetExportRequestCreateOutputDirectory(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PHAssetExportRequestCreateOutputDirectory(NSURL *__strong, NSError *__autoreleasing *)"}];
    [v10 handleFailureInFunction:v11 file:@"PHAssetExportRequest.m" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"outputDirectory"}];

    if (a2)
    {
      goto LABEL_3;
    }
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PHAssetExportRequestCreateOutputDirectory(NSURL *__strong, NSError *__autoreleasing *)"}];
  [v12 handleFailureInFunction:v13 file:@"PHAssetExportRequest.m" lineNumber:350 description:{@"Invalid parameter not satisfying: %@", @"error"}];

LABEL_3:
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = 0;
  v5 = [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v14];
  v6 = v14;

  if ((v5 & 1) == 0)
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Failed to create output directory: %@", buf, 0xCu);
    }

    v8 = v6;
    *a2 = v6;
  }

  return v5;
}

id PHAssetExportRequestCreateTemporaryOutputDirectoryURL()
{
  v0 = NSTemporaryDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"com.apple.mobileslideshow.export-request"];

  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];
  v4 = [v1 stringByAppendingPathComponent:v3];

  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];

  return v5;
}

id PHAssetExportRequestFilenameForAsset(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 customFilenameBase];
  v5 = [v4 length];
  [v3 fetchPropertySetsIfNeeded];
  if (v5)
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 originalMetadataProperties];
      v8 = [v7 originalFilename];
      v16 = 138478083;
      v17 = v8;
      v18 = 2114;
      v19 = v4;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Asset's original filename is '%{private}@', but using custom filename base (supplied in options): %{public}@", &v16, 0x16u);
    }

LABEL_4:

    v9 = v4;
    goto LABEL_6;
  }

  v10 = [v3 originalMetadataProperties];
  v11 = [v10 originalFilename];
  v9 = [v11 stringByDeletingPathExtension];

  if (![v9 length])
  {
    v13 = [v3 filename];
    v4 = [v13 stringByDeletingPathExtension];

    if ([v4 length])
    {
      v6 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v16 = 138543362;
        v17 = v4;
        _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Asset's original filename is nil/empty, so using the library filename as name: %{public}@", &v16, 0xCu);
      }
    }

    else
    {
      v14 = [MEMORY[0x1E696AFB0] UUID];
      v15 = [v14 UUIDString];

      v6 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v16 = 138543362;
        v17 = v15;
        _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Asset's original filename and filename are both nil/empty, so using a new UUID as name: %{public}@", &v16, 0xCu);
      }

      v4 = v15;
    }

    goto LABEL_4;
  }

LABEL_6:

  return v9;
}

uint64_t PHAssetExportRequestCanCreateLivePhotoBundleForAssetWithOptions(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 playbackStyle];
  if (![v5 isMediaSubtype:8] || v8 == 3)
  {
    if (v8 != 3)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_8;
    }
  }

  else if (([v7 shouldExportUnmodifiedOriginalResources] & 1) == 0)
  {
    goto LABEL_7;
  }

  if ([v7 treatLivePhotoAsStill])
  {
    goto LABEL_7;
  }

  v11 = [v6 objectForKeyedSubscript:@"PHAssetExportRequestVideoFileURLKey"];

  if (v11)
  {
    v9 = 1;
  }

  else
  {
    v9 = [v5 isIncompleteLivePhotoMissingVideoComplement] ^ 1;
  }

LABEL_8:

  return v9;
}

uint64_t PHAssetExportRequestLocationMetadataOperationForAssetWithOptions(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v8)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PHAssetExportRequestMetadataOperation PHAssetExportRequestLocationMetadataOperationForAssetWithOptions(PHAsset *__strong _Nonnull, PHAssetExportRequestOptions *__strong _Nonnull, PFMetadata * _Nullable __strong, CLLocation * _Nullable __autoreleasing * _Nullable)"}];
    [v17 handleFailureInFunction:v18 file:@"PHAssetExportRequest.m" lineNumber:603 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (PHAssetCanPerformAdditionalProcessingOnAsset(0, v8))
    {
      goto LABEL_4;
    }

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PHAssetExportRequestMetadataOperation PHAssetExportRequestLocationMetadataOperationForAssetWithOptions(PHAsset *__strong _Nonnull, PHAssetExportRequestOptions *__strong _Nonnull, PFMetadata * _Nullable __strong, CLLocation * _Nullable __autoreleasing * _Nullable)"}];
  [v15 handleFailureInFunction:v16 file:@"PHAssetExportRequest.m" lineNumber:602 description:{@"Invalid parameter not satisfying: %@", @"options"}];

  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((PHAssetCanPerformAdditionalProcessingOnAsset(v7, v8) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v10 = [v7 location];
  if ([v8 locationComparisonStrategy] == 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = PHAssetOriginalLocationForAsset(v7, v9);
  }

  v12 = v11;
  matched = _LocationsMatchUsingComparisonStrategy(v10, v11, [v8 locationComparisonStrategy]);
  v14 = PHAssetExportRequestMetadataOperationComparingLibraryAndOriginalValuesForAsset(@"location", v7, [v8 shouldStripLocation], objc_msgSend(v8, "forceLocationMetadataBaking"), v10, v12, matched, a4);

LABEL_11:
  return v14;
}

uint64_t PHAssetExportRequestCaptionMetadataOperationForAssetWithOptions(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v8)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PHAssetExportRequestMetadataOperation PHAssetExportRequestCaptionMetadataOperationForAssetWithOptions(PHAsset *__strong _Nonnull, PHAssetExportRequestOptions *__strong _Nonnull, PFMetadata *__strong _Nullable, NSString * _Nullable __autoreleasing * _Nullable)"}];
    [v17 handleFailureInFunction:v18 file:@"PHAssetExportRequest.m" lineNumber:628 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (PHAssetCanPerformAdditionalProcessingOnAsset(0, v8))
    {
      goto LABEL_4;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PHAssetExportRequestMetadataOperation PHAssetExportRequestCaptionMetadataOperationForAssetWithOptions(PHAsset *__strong _Nonnull, PHAssetExportRequestOptions *__strong _Nonnull, PFMetadata *__strong _Nullable, NSString * _Nullable __autoreleasing * _Nullable)"}];
  [v15 handleFailureInFunction:v16 file:@"PHAssetExportRequest.m" lineNumber:627 description:{@"Invalid parameter not satisfying: %@", @"options"}];

  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((PHAssetCanPerformAdditionalProcessingOnAsset(v7, v8) & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  v10 = [v7 descriptionProperties];
  v11 = [v10 assetDescription];

  v12 = PHAssetOriginalCaptionForAsset(v7, v9);
  if (PLObjectIsEqual())
  {
    v13 = 1;
  }

  else if ([v11 length])
  {
    v13 = 0;
  }

  else
  {
    v13 = [v12 length] == 0;
  }

  v14 = PHAssetExportRequestMetadataOperationComparingLibraryAndOriginalValuesForAsset(@"caption", v7, [v8 shouldStripCaption], objc_msgSend(v8, "forceCaptionMetadataBaking"), v11, v12, v13, a4);

LABEL_13:
  return v14;
}

uint64_t PHAssetExportRequestAccessibilityDescriptionMetadataOperationForAssetWithOptions(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v8)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PHAssetExportRequestMetadataOperation PHAssetExportRequestAccessibilityDescriptionMetadataOperationForAssetWithOptions(PHAsset *__strong _Nonnull, PHAssetExportRequestOptions *__strong _Nonnull, PFMetadata *__strong _Nullable, NSString * _Nullable __autoreleasing * _Nullable)"}];
    [v17 handleFailureInFunction:v18 file:@"PHAssetExportRequest.m" lineNumber:650 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (PHAssetCanPerformAdditionalProcessingOnAsset(0, v8))
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PHAssetExportRequestMetadataOperation PHAssetExportRequestAccessibilityDescriptionMetadataOperationForAssetWithOptions(PHAsset *__strong _Nonnull, PHAssetExportRequestOptions *__strong _Nonnull, PFMetadata *__strong _Nullable, NSString * _Nullable __autoreleasing * _Nullable)"}];
  [v15 handleFailureInFunction:v16 file:@"PHAssetExportRequest.m" lineNumber:649 description:{@"Invalid parameter not satisfying: %@", @"options"}];

  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((PHAssetCanPerformAdditionalProcessingOnAsset(v7, v8) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = [v7 descriptionProperties];
  v11 = [v10 accessibilityDescription];

  v12 = PHAssetOriginalAccessibilityDescriptionForAsset(v7, v9);
  IsEqual = PLObjectIsEqual();
  v14 = PHAssetExportRequestMetadataOperationComparingLibraryAndOriginalValuesForAsset(@"accessibility description", v7, [v8 shouldStripAccessibilityDescription], objc_msgSend(v8, "forceAccessibilityDescriptionMetadataBaking"), v11, v12, IsEqual, a4);

LABEL_8:
  return v14;
}

id PHAssetExportRequestCustomDateForAssetWithOptions(void *a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (([v5 isCloudSharedAsset] & 1) != 0 || !PHAssetCanPerformAdditionalProcessingOnAsset(v5, v6))
  {
    v13 = 0;
    goto LABEL_46;
  }

  [v5 fetchPropertySetsIfNeeded];
  v7 = [v5 originalMetadataProperties];
  v8 = [v7 timeZone];

  v9 = [v5 originalMetadataProperties];
  v10 = [v9 timeZone];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  }

  v14 = v12;

  v15 = [v5 creationDate];
  v47 = 0;
  v16 = [v5 originalCreationDateWithTimeZone:&v47];
  v46 = v47;
  v17 = PLPhotoKitGetLog();
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v19 = [v5 isVideo];
      v20 = @"image";
      *buf = 138543875;
      if (v19)
      {
        v20 = @"video";
      }

      v49 = v20;
      v50 = 2113;
      v51 = v16;
      v52 = 2113;
      v53 = v46;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEBUG, "[PHAssetExportRequest] Parsed original %{public}@ metadata creation date: %{private}@, with timezone: %{private}@", buf, 0x20u);
    }

    v21 = _CreationDatesInLibraryAndOriginalMetadataAreSame(v15, v16);
    v22 = v21;
    if (v8)
    {
      if (v21)
      {
        v23 = [v14 secondsFromGMTForDate:v15];
        v24 = [(__CFString *)v46 secondsFromGMTForDate:v16];
        v25 = [v14 isEqualToTimeZone:v46];
        if (v23 == v24)
        {
          v22 = 1;
        }

        else
        {
          v22 = v25;
        }
      }

LABEL_22:
      v28 = &stru_1F0FC60C8;
      goto LABEL_26;
    }
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v5 isVideo];
      v27 = @"image";
      if (v26)
      {
        v27 = @"video";
      }

      *buf = 138412546;
      v49 = v27;
      v50 = 2114;
      v51 = v5;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Couldn't extract creation date from %@ asset: %{public}@", buf, 0x16u);
    }

    v22 = 0;
    if (v8)
    {
      goto LABEL_22;
    }
  }

  v29 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v5 uuid];
    *buf = 138543362;
    v49 = v30;
    _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Library does not have explicit timezone saved for asset %{public}@, so skipping explicit time zone comparison", buf, 0xCu);
  }

  v28 = @"Not available, so using default: ";
LABEL_26:
  v31 = v14;
  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (TimeZone: %@%@)", v15, v14, v28];
  v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (TimeZone: %@)", v16, v46];
  v33 = [v6 forceDateTimeMetadataBaking];
  v34 = PLPhotoKitGetLog();
  v35 = v34;
  if (v33)
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v5 uuid];
      *buf = 138478083;
      v49 = v32;
      v50 = 2114;
      v51 = v36;
      v37 = "[PHAssetExportRequest] Based on internal debug settings, forcing creation date to be baked in, even though the library and original creation date (%{private}@) are the same for asset: %{public}@.";
      v38 = v35;
      v39 = 22;
LABEL_41:
      _os_log_impl(&dword_19C86F000, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);
    }
  }

  else
  {
    if (v22)
    {
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        if ([v5 isVideo])
        {
          v40 = @"video";
        }

        else
        {
          v40 = @"image";
        }

        v41 = [v5 uuid];
        *buf = 138543618;
        v49 = v40;
        v50 = 2114;
        v51 = v41;
        _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_DEBUG, "[PHAssetExportRequest] Creation date in library is same as original creation date for %{public}@ asset: %{public}@. No need for a custom date.", buf, 0x16u);
      }

      v13 = 0;
      goto LABEL_45;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      if ([v5 isVideo])
      {
        v42 = @"video";
      }

      else
      {
        v42 = @"image";
      }

      v36 = [v5 uuid];
      *buf = 138478851;
      v49 = v32;
      v50 = 2113;
      v51 = v45;
      v52 = 2114;
      v53 = v42;
      v54 = 2114;
      v55 = v36;
      v56 = 2113;
      v57 = v32;
      v37 = "[PHAssetExportRequest] Creation date in library (%{private}@) is different from original creation date (%{private}@) for %{public}@ asset: %{public}@. Setting custom creation date to: %{private}@";
      v38 = v35;
      v39 = 52;
      goto LABEL_41;
    }
  }

  if (a3)
  {
    v43 = v31;
    *a3 = v31;
  }

  v13 = v15;
LABEL_45:

LABEL_46:

  return v13;
}

void PHAssetExportRequestPerformMediaConversion(void *a1, uint64_t a2, int a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, char a17, void *a18, void *a19, void *a20)
{
  v86 = *MEMORY[0x1E69E9840];
  v24 = a1;
  v73 = a4;
  v72 = a6;
  v25 = a7;
  v67 = a8;
  v71 = a10;
  v70 = a12;
  v69 = a13;
  v26 = a14;
  v27 = a16;
  v28 = a18;
  v29 = a19;
  v30 = a20;
  v74 = v24;
  if (v24)
  {
    if (v26)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v54 = [MEMORY[0x1E696AAA8] currentHandler];
    v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHAssetExportRequestPerformMediaConversion(PHMediaFormatConversionSource *__strong, BOOL, BOOL, UTType * _Nullable __strong, PHAssetExportRequestMetadataOperation, CLLocation * _Nullable __strong, NSDate * _Nullable __strong, NSTimeZone * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, NSString * _Nullable __strong, NSProgress *__strong, int64_t, NSURL *__strong, BOOL, NSString *__strong, NSString * _Nullable __strong, void (^__strong)(NSURL * _Nullable __strong, NSError * _Nullable __strong))"}];
    [v54 handleFailureInFunction:v55 file:@"PHAssetExportRequest.m" lineNumber:944 description:{@"Invalid parameter not satisfying: %@", @"source"}];

    if (v26)
    {
LABEL_3:
      if (v27)
      {
        goto LABEL_4;
      }

      goto LABEL_46;
    }
  }

  v56 = [MEMORY[0x1E696AAA8] currentHandler];
  v57 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHAssetExportRequestPerformMediaConversion(PHMediaFormatConversionSource *__strong, BOOL, BOOL, UTType * _Nullable __strong, PHAssetExportRequestMetadataOperation, CLLocation * _Nullable __strong, NSDate * _Nullable __strong, NSTimeZone * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, NSString * _Nullable __strong, NSProgress *__strong, int64_t, NSURL *__strong, BOOL, NSString *__strong, NSString * _Nullable __strong, void (^__strong)(NSURL * _Nullable __strong, NSError * _Nullable __strong))"}];
  [v56 handleFailureInFunction:v57 file:@"PHAssetExportRequest.m" lineNumber:945 description:{@"Invalid parameter not satisfying: %@", @"progress"}];

  if (v27)
  {
LABEL_4:
    if (v28)
    {
      goto LABEL_5;
    }

LABEL_47:
    v60 = [MEMORY[0x1E696AAA8] currentHandler];
    v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHAssetExportRequestPerformMediaConversion(PHMediaFormatConversionSource *__strong, BOOL, BOOL, UTType * _Nullable __strong, PHAssetExportRequestMetadataOperation, CLLocation * _Nullable __strong, NSDate * _Nullable __strong, NSTimeZone * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, NSString * _Nullable __strong, NSProgress *__strong, int64_t, NSURL *__strong, BOOL, NSString *__strong, NSString * _Nullable __strong, void (^__strong)(NSURL * _Nullable __strong, NSError * _Nullable __strong))"}];
    [v60 handleFailureInFunction:v61 file:@"PHAssetExportRequest.m" lineNumber:947 description:{@"Invalid parameter not satisfying: %@", @"filename"}];

    if (v30)
    {
      goto LABEL_6;
    }

    goto LABEL_48;
  }

LABEL_46:
  v58 = [MEMORY[0x1E696AAA8] currentHandler];
  v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHAssetExportRequestPerformMediaConversion(PHMediaFormatConversionSource *__strong, BOOL, BOOL, UTType * _Nullable __strong, PHAssetExportRequestMetadataOperation, CLLocation * _Nullable __strong, NSDate * _Nullable __strong, NSTimeZone * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, NSString * _Nullable __strong, NSProgress *__strong, int64_t, NSURL *__strong, BOOL, NSString *__strong, NSString * _Nullable __strong, void (^__strong)(NSURL * _Nullable __strong, NSError * _Nullable __strong))"}];
  [v58 handleFailureInFunction:v59 file:@"PHAssetExportRequest.m" lineNumber:946 description:{@"Invalid parameter not satisfying: %@", @"outputDirectory"}];

  if (!v28)
  {
    goto LABEL_47;
  }

LABEL_5:
  if (v30)
  {
    goto LABEL_6;
  }

LABEL_48:
  v62 = [MEMORY[0x1E696AAA8] currentHandler];
  v63 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHAssetExportRequestPerformMediaConversion(PHMediaFormatConversionSource *__strong, BOOL, BOOL, UTType * _Nullable __strong, PHAssetExportRequestMetadataOperation, CLLocation * _Nullable __strong, NSDate * _Nullable __strong, NSTimeZone * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, NSString * _Nullable __strong, NSProgress *__strong, int64_t, NSURL *__strong, BOOL, NSString *__strong, NSString * _Nullable __strong, void (^__strong)(NSURL * _Nullable __strong, NSError * _Nullable __strong))"}];
  [v62 handleFailureInFunction:v63 file:@"PHAssetExportRequest.m" lineNumber:948 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_6:
  v31 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [v24 fileURL];
    v33 = [v32 pathExtension];
    v34 = [v24 isVideo];
    v35 = @"image";
    if (v34)
    {
      v35 = @"video";
    }

    *buf = 138543618;
    v83 = v33;
    v84 = 2114;
    v85 = v35;
    _os_log_impl(&dword_19C86F000, v31, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Requesting conversion of %{public}@ %{public}@ resource", buf, 0x16u);
  }

  if (a3)
  {
    [MEMORY[0x1E69C0700] legacyCapabilities];
  }

  else
  {
    [MEMORY[0x1E69C0700] capabilitiesForCurrentDevice];
  }
  v36 = ;
  v81 = 0;
  v37 = [MEMORY[0x1E69AE8A0] requestForSource:v24 destinationCapabilities:v36 error:&v81];
  v38 = v81;
  if (!v37)
  {
    v30[2](v30, 0, v38);
    goto LABEL_43;
  }

  v65 = v30;
  if (v29)
  {
    [v37 setLivePhotoPairingIdentifier:v29];
    [v37 setLivePhotoPairingIdentifierBehavior:3];
  }

  v39 = v27;
  if (a5 == 2 && v72)
  {
    v40 = v26;
    v41 = v37;
    v42 = 2;
    v43 = v72;
  }

  else
  {
    v40 = v26;
    if (a5 != 1)
    {
      goto LABEL_23;
    }

    v41 = v37;
    v42 = 1;
    v43 = 0;
  }

  [v41 setLocationMetadataBehavior:v42 withLocation:v43];
LABEL_23:
  if (v25)
  {
    [v37 setCreationDateMetadataBehavior:2 withCreationDate:v25 inTimeZone:v67];
  }

  v66 = v25;
  if (a9 == 2 && v71)
  {
    v44 = v37;
    v45 = 2;
    v46 = v71;
LABEL_30:
    [v44 setCaptionMetadataBehavior:v45 withCaption:v46];
    goto LABEL_31;
  }

  if (a9 == 1)
  {
    v44 = v37;
    v45 = 1;
    v46 = 0;
    goto LABEL_30;
  }

LABEL_31:
  if (a11 == 2 && v70)
  {
    v47 = v29;
    v48 = v37;
    v49 = 2;
    v50 = v70;
LABEL_36:
    [v48 setAccessibilityDescriptionMetadataBehavior:v49 withAccessibilityDescription:v50];
    goto LABEL_37;
  }

  v47 = v29;
  if (a11 == 1)
  {
    v48 = v37;
    v49 = 1;
    v50 = 0;
    goto LABEL_36;
  }

LABEL_37:
  if (v69)
  {
    [v37 setVideoExportPreset:?];
  }

  if (v73 && a3)
  {
    v51 = [v73 preferredFilenameExtension];
    [v37 setForcedOutputPathExtension:v51];
  }

  v52 = [v37 progress];
  [v40 addChild:v52 withPendingUnitCount:a15];

  v53 = PHAssetExportRequestMediaFormatConversionManager();
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __PHAssetExportRequestPerformMediaConversion_block_invoke;
  v75[3] = &unk_1E75A3B60;
  v76 = v37;
  v77 = v39;
  v78 = v28;
  v80 = a17;
  v79 = v65;
  [v53 enqueueConversionRequest:v76 completionHandler:v75];

  v26 = v40;
  v27 = v39;
  v30 = v65;

  v25 = v66;
  v29 = v47;
LABEL_43:
}

uint64_t PHAssetExportRequestNeedsSloMoFlatteningForAssetWithOptions(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PHAssetExportRequestNeedsSloMoFlatteningForAssetWithOptions(PHAsset *__strong, PHAssetExportRequestOptions *__strong)"}];
    [v12 handleFailureInFunction:v13 file:@"PHAssetExportRequest.m" lineNumber:824 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_9:
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PHAssetExportRequestNeedsSloMoFlatteningForAssetWithOptions(PHAsset *__strong, PHAssetExportRequestOptions *__strong)"}];
    [v14 handleFailureInFunction:v15 file:@"PHAssetExportRequest.m" lineNumber:825 description:{@"Invalid parameter not satisfying: %@", @"options"}];

    goto LABEL_3;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ([v5 flattenSlomoVideos] && objc_msgSend(v3, "isHighFrameRateVideo"))
  {
    [v3 fetchPropertySetsIfNeeded];
    v6 = [v3 adjustmentProperties];
    v7 = MEMORY[0x1E69C0910];
    v8 = [v6 formatIdentifier];
    v9 = [v6 formatVersion];
    v10 = [v7 isRecognizedSlowMotionFormatWithIdentifier:v8 version:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void PHAssetExportRequestPerformSlomoFlattening(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, char a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16)
{
  v95[1] = *MEMORY[0x1E69E9840];
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v84 = a5;
  v85 = a6;
  v25 = a7;
  v83 = a8;
  v80 = a11;
  v26 = a13;
  v27 = a15;
  v28 = a16;
  if (v22)
  {
    if (v23)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v53 = [MEMORY[0x1E696AAA8] currentHandler];
    [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHAssetExportRequestPerformSlomoFlattening(NSURL *__strong, NSURL *__strong, NSProgress *__strong, int64_t, NSURL *__strong, NSString *__strong, NSString *__strong, NSString *__strong, BOOL, PHAssetExportRequestMetadataOperation, CLLocation * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, void (^__strong)(NSURL * _Nullable __strong, NSError * _Nullable __strong))"}];
    v55 = v54 = v25;
    [v53 handleFailureInFunction:v55 file:@"PHAssetExportRequest.m" lineNumber:839 description:{@"Invalid parameter not satisfying: %@", @"videoURL"}];

    v25 = v54;
    if (v23)
    {
      goto LABEL_3;
    }
  }

  v56 = [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHAssetExportRequestPerformSlomoFlattening(NSURL *__strong, NSURL *__strong, NSProgress *__strong, int64_t, NSURL *__strong, NSString *__strong, NSString *__strong, NSString *__strong, BOOL, PHAssetExportRequestMetadataOperation, CLLocation * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, void (^__strong)(NSURL * _Nullable __strong, NSError * _Nullable __strong))"}];
  v58 = v57 = v25;
  [v56 handleFailureInFunction:v58 file:@"PHAssetExportRequest.m" lineNumber:840 description:{@"Invalid parameter not satisfying: %@", @"adjustmentsURL"}];

  v25 = v57;
LABEL_3:
  v29 = v84;
  if (!v24)
  {
    v59 = [MEMORY[0x1E696AAA8] currentHandler];
    [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHAssetExportRequestPerformSlomoFlattening(NSURL *__strong, NSURL *__strong, NSProgress *__strong, int64_t, NSURL *__strong, NSString *__strong, NSString *__strong, NSString *__strong, BOOL, PHAssetExportRequestMetadataOperation, CLLocation * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, void (^__strong)(NSURL * _Nullable __strong, NSError * _Nullable __strong))"}];
    v61 = v60 = v25;
    [v59 handleFailureInFunction:v61 file:@"PHAssetExportRequest.m" lineNumber:841 description:{@"Invalid parameter not satisfying: %@", @"progress"}];

    v25 = v60;
  }

  if (a4)
  {
    if (v84)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v62 = [MEMORY[0x1E696AAA8] currentHandler];
    [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHAssetExportRequestPerformSlomoFlattening(NSURL *__strong, NSURL *__strong, NSProgress *__strong, int64_t, NSURL *__strong, NSString *__strong, NSString *__strong, NSString *__strong, BOOL, PHAssetExportRequestMetadataOperation, CLLocation * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, void (^__strong)(NSURL * _Nullable __strong, NSError * _Nullable __strong))"}];
    v64 = v63 = v25;
    [v62 handleFailureInFunction:v64 file:@"PHAssetExportRequest.m" lineNumber:842 description:{@"Invalid parameter not satisfying: %@", @"unitCount"}];

    v25 = v63;
    if (v84)
    {
      goto LABEL_7;
    }
  }

  v65 = [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHAssetExportRequestPerformSlomoFlattening(NSURL *__strong, NSURL *__strong, NSProgress *__strong, int64_t, NSURL *__strong, NSString *__strong, NSString *__strong, NSString *__strong, BOOL, PHAssetExportRequestMetadataOperation, CLLocation * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, void (^__strong)(NSURL * _Nullable __strong, NSError * _Nullable __strong))"}];
  v67 = v66 = v25;
  [v65 handleFailureInFunction:v67 file:@"PHAssetExportRequest.m" lineNumber:843 description:{@"Invalid parameter not satisfying: %@", @"outputDirectory"}];

  v25 = v66;
LABEL_7:
  if (!v85)
  {
    v68 = [MEMORY[0x1E696AAA8] currentHandler];
    [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHAssetExportRequestPerformSlomoFlattening(NSURL *__strong, NSURL *__strong, NSProgress *__strong, int64_t, NSURL *__strong, NSString *__strong, NSString *__strong, NSString *__strong, BOOL, PHAssetExportRequestMetadataOperation, CLLocation * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, void (^__strong)(NSURL * _Nullable __strong, NSError * _Nullable __strong))"}];
    v70 = v69 = v25;
    [v68 handleFailureInFunction:v70 file:@"PHAssetExportRequest.m" lineNumber:844 description:{@"Invalid parameter not satisfying: %@", @"filename"}];

    v25 = v69;
  }

  v79 = v28;
  if (!v28)
  {
    v71 = [MEMORY[0x1E696AAA8] currentHandler];
    [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHAssetExportRequestPerformSlomoFlattening(NSURL *__strong, NSURL *__strong, NSProgress *__strong, int64_t, NSURL *__strong, NSString *__strong, NSString *__strong, NSString *__strong, BOOL, PHAssetExportRequestMetadataOperation, CLLocation * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, PHAssetExportRequestMetadataOperation, NSString * _Nullable __strong, void (^__strong)(NSURL * _Nullable __strong, NSError * _Nullable __strong))"}];
    v73 = v72 = v25;
    [v71 handleFailureInFunction:v73 file:@"PHAssetExportRequest.m" lineNumber:845 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    v25 = v72;
  }

  v94 = 0;
  v30 = PHAssetExportRequestCreateOutputDirectory(v84, &v94);
  v31 = v94;
  if (v30)
  {
    v75 = v31;
    v32 = v26;
    v78 = v24;
    v74 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:0x7FFFFFFFFFFFFFFFLL parent:? pendingUnitCount:?];
    v77 = v23;
    v33 = [objc_alloc(MEMORY[0x1E69C0910]) initWithURL:v23];
    v82 = v22;
    v34 = v22;
    v35 = v33;
    v36 = [MEMORY[0x1E69C0878] remakerOperationWithInputType:3 videoURL:v34 imageURL:0 adjustmentData:v33];
    v37 = objc_alloc_init(MEMORY[0x1E69C0880]);
    [v37 setOutputDirectoryURL:v84];
    [v37 setOutputFilename:v85];
    v76 = v25;
    if (v25)
    {
      [v37 setExportPreset:v25];
      v38 = v83;
      v39 = v80;
    }

    else
    {
      v39 = v80;
      if (a9)
      {
        v43 = MEMORY[0x1E69872E0];
      }

      else
      {
        v43 = MEMORY[0x1E6987338];
      }

      [v37 setExportPreset:*v43];
      v38 = v83;
    }

    [v37 setExportFileType:v38];
    [v37 setShouldStripLocation:a10 == 1];
    if ([v37 shouldStripLocation])
    {
      v44 = 0;
    }

    else
    {
      v44 = v39;
    }

    [v37 setCustomLocation:v44];
    [v37 setShouldStripCaption:a12 == 1];
    if ([v37 shouldStripCaption])
    {
      v45 = 0;
    }

    else
    {
      v45 = v32;
    }

    [v37 setCustomCaption:v45];
    [v37 setShouldStripAccessibilityDescription:a14 == 1];
    if ([v37 shouldStripAccessibilityDescription])
    {
      v46 = v27;
    }

    else
    {
      v46 = 0;
    }

    [v37 setCustomAccessibilityLabel:v46];
    v47 = MEMORY[0x1E69C0870];
    v95[0] = v36;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:1];
    v49 = [v47 remakerWithOperations:v48 options:v37];

    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __PHAssetExportRequestPerformSlomoFlattening_block_invoke;
    v92[3] = &unk_1E75AB270;
    v93 = v49;
    v50 = v49;
    [v74 setCancellationHandler:v92];
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __PHAssetExportRequestPerformSlomoFlattening_block_invoke_2;
    v90[3] = &unk_1E75A3B38;
    v91 = v74;
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __PHAssetExportRequestPerformSlomoFlattening_block_invoke_3;
    v86[3] = &unk_1E75A69B0;
    v40 = v79;
    v88 = v91;
    v89 = v79;
    v87 = v36;
    v51 = v91;
    v52 = v36;
    [v50 remakeWithProgressHandler:v90 completionHandler:v86];

    v22 = v82;
    v23 = v77;
    v24 = v78;
    v42 = v39;
    v29 = v84;
    v41 = v75;
    v25 = v76;
  }

  else
  {
    v40 = v79;
    v32 = v26;
    v41 = v31;
    (v79)[2](v79, 0, v31);
    v42 = v80;
  }
}

void PHAssetExportRequestPerformGifConversion(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHAssetExportRequestPerformGifConversion(NSURL *__strong, NSProgress *__strong, int64_t, NSURL *__strong, NSString *__strong, void (^__strong)(NSURL * _Nullable __strong, NSError * _Nullable __strong))"}];
    [v22 handleFailureInFunction:v23 file:@"PHAssetExportRequest.m" lineNumber:895 description:{@"Invalid parameter not satisfying: %@", @"videoURL"}];

    if (v12)
    {
LABEL_3:
      if (a3)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHAssetExportRequestPerformGifConversion(NSURL *__strong, NSProgress *__strong, int64_t, NSURL *__strong, NSString *__strong, void (^__strong)(NSURL * _Nullable __strong, NSError * _Nullable __strong))"}];
  [v24 handleFailureInFunction:v25 file:@"PHAssetExportRequest.m" lineNumber:896 description:{@"Invalid parameter not satisfying: %@", @"progress"}];

  if (a3)
  {
LABEL_4:
    if (v13)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHAssetExportRequestPerformGifConversion(NSURL *__strong, NSProgress *__strong, int64_t, NSURL *__strong, NSString *__strong, void (^__strong)(NSURL * _Nullable __strong, NSError * _Nullable __strong))"}];
  [v26 handleFailureInFunction:v27 file:@"PHAssetExportRequest.m" lineNumber:897 description:{@"Invalid parameter not satisfying: %@", @"unitCount"}];

  if (v13)
  {
LABEL_5:
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_15:
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHAssetExportRequestPerformGifConversion(NSURL *__strong, NSProgress *__strong, int64_t, NSURL *__strong, NSString *__strong, void (^__strong)(NSURL * _Nullable __strong, NSError * _Nullable __strong))"}];
    [v30 handleFailureInFunction:v31 file:@"PHAssetExportRequest.m" lineNumber:899 description:{@"Invalid parameter not satisfying: %@", @"filename"}];

    if (v15)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_14:
  v28 = [MEMORY[0x1E696AAA8] currentHandler];
  v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHAssetExportRequestPerformGifConversion(NSURL *__strong, NSProgress *__strong, int64_t, NSURL *__strong, NSString *__strong, void (^__strong)(NSURL * _Nullable __strong, NSError * _Nullable __strong))"}];
  [v28 handleFailureInFunction:v29 file:@"PHAssetExportRequest.m" lineNumber:898 description:{@"Invalid parameter not satisfying: %@", @"outputDirectory"}];

  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v15)
  {
    goto LABEL_7;
  }

LABEL_16:
  v32 = [MEMORY[0x1E696AAA8] currentHandler];
  v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PHAssetExportRequestPerformGifConversion(NSURL *__strong, NSProgress *__strong, int64_t, NSURL *__strong, NSString *__strong, void (^__strong)(NSURL * _Nullable __strong, NSError * _Nullable __strong))"}];
  [v32 handleFailureInFunction:v33 file:@"PHAssetExportRequest.m" lineNumber:900 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_7:
  v36 = 0;
  v16 = PHAssetExportRequestCreateOutputDirectory(v13, &v36);
  v17 = v36;
  if (v16)
  {
    v18 = [v14 stringByAppendingPathExtension:@"GIF"];
    v19 = [v13 URLByAppendingPathComponent:v18];
    v20 = MEMORY[0x1E6994D60];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __PHAssetExportRequestPerformGifConversion_block_invoke;
    v34[3] = &unk_1E75A92D0;
    v35 = v15;
    v21 = [v20 generateGIFForVideoAtURL:v11 destinationURL:v19 completionHandler:v34];
    [v12 addChild:v21 withPendingUnitCount:a3];
  }

  else
  {
    (*(v15 + 2))(v15, 0, v17);
  }
}

uint64_t __PHAssetExportRequestPerformSlomoFlattening_block_invoke_2(uint64_t result, double a2)
{
  if (a2 < 1.0)
  {
    return [*(result + 32) setCompletedUnitCount:{vcvtd_n_s64_f64(a2, 0x3FuLL)}];
  }

  return result;
}

uint64_t __PHAssetExportRequestPerformSlomoFlattening_block_invoke_3(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[6];
  v5 = a1[4];
  v6 = a3;
  v7 = [v5 videoOutputURL];
  (*(v4 + 16))(v4, v7, v6);

  v8 = a1[5];

  return [v8 setCompletedUnitCount:0x7FFFFFFFFFFFFFFFLL];
}

id PHAssetExportRequestError(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = *MEMORY[0x1E696AA08];
    v9[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHAssetExportRequestErrorDomain" code:a1 userInfo:v5];

  return v6;
}

id PHAssetExportRequestMediaFormatConversionManager()
{
  if (PHAssetExportRequestMediaFormatConversionManager_predicate != -1)
  {
    dispatch_once(&PHAssetExportRequestMediaFormatConversionManager_predicate, &__block_literal_global_417);
  }

  v1 = PHAssetExportRequestMediaFormatConversionManager__conversionManager;

  return v1;
}

void __PHAssetExportRequestPerformMediaConversion_block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) status] == 4)
  {
    v2 = [*(a1 + 32) destination];
    v3 = [v2 fileURL];

    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 64);
    v12 = 0;
    v7 = PHAssetExportRequestCopyFileURL(v3, v4, v5, v6, &v12);
    v8 = v12;
    (*(*(a1 + 56) + 16))();
    v10 = [*(a1 + 32) destination];

    [v10 removeTemporaryFiles];
  }

  else
  {
    v9 = *(a1 + 56);
    v11 = [*(a1 + 32) error];
    (*(v9 + 16))(v9, 0, v11);
  }
}

uint64_t __PHAssetExportRequestMediaFormatConversionManager_block_invoke()
{
  PHAssetExportRequestMediaFormatConversionManager__conversionManager = objc_alloc_init(MEMORY[0x1E69AE898]);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t PHAssetCanPerformAdditionalProcessingOnAsset(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v4 disableMetadataCorrections])
  {
    v5 = PLPhotoKitGetLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_38:
      v10 = 0;
      goto LABEL_39;
    }

    v6 = [v3 uuid];
    v25 = 138543362;
    v26 = v6;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Metadata corrections are disabled for this exporting asset %{public}@, so skipping processing operations like metadata corrections.", &v25, 0xCu);
LABEL_37:

    goto LABEL_38;
  }

  v5 = [v3 uniformTypeIdentifier];
  if ([v3 mediaType] == 1)
  {
    if (PHAssetCanPerformAdditionalProcessingOnAsset_onceToken != -1)
    {
      dispatch_once(&PHAssetCanPerformAdditionalProcessingOnAsset_onceToken, &__block_literal_global_2383);
    }

    if (([PHAssetCanPerformAdditionalProcessingOnAsset_supportedReadableImageFormats containsObject:v5] & 1) == 0)
    {
      v6 = PLPhotoKitGetLog();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v7 = [v3 uuid];
      v25 = 138543618;
      v26 = v7;
      v27 = 2114;
      v28 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Asset %{public}@ is not a supported readable format (%{public}@) for remaking, skipping processing operations like metadata corrections", &v25, 0x16u);
      goto LABEL_36;
    }

    v6 = [MEMORY[0x1E69C08F0] typeWithIdentifier:v5];
    if ([v6 conformsToType:*MEMORY[0x1E6982DE8]])
    {
      v7 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v3 uuid];
        v25 = 138543362;
        v26 = v8;
        v9 = "[PHAssetExportRequest] Asset %{public}@ is a GIF, so skipping processing operations like metadata corrections";
LABEL_11:
        _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEFAULT, v9, &v25, 0xCu);
LABEL_35:

        goto LABEL_36;
      }

      goto LABEL_36;
    }

    if ([v6 conformsToType:*MEMORY[0x1E6982F28]])
    {
      v11 = [v4 allowMetadataConversionsForPNG];
      v7 = PLPhotoKitGetLog();
      v12 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (!v11)
      {
        if (v12)
        {
          v8 = [v3 uuid];
          v25 = 138543362;
          v26 = v8;
          v9 = "[PHAssetExportRequest] Asset %{public}@ is a PNG, so skipping processing operations like metadata corrections";
          goto LABEL_11;
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v12)
      {
        v13 = [v3 uuid];
        v25 = 138543362;
        v26 = v13;
        _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Asset %{public}@ is a PNG, allowing metadata corrections", &v25, 0xCu);
      }
    }

    v14 = [v3 originalFilename];
    v15 = [v14 pathExtension];
    v7 = [v15 uppercaseString];

    v16 = [MEMORY[0x1E69C08F0] panasonicRAWImageType];
    if (v16)
    {
      v17 = v16;
      v18 = [MEMORY[0x1E69C08F0] panasonicRAWImageType];
      if (([v6 conformsToType:v18]& 1) != 0)
      {
        v19 = [v7 isEqualToString:@"RAW"];

        if (v19)
        {
          v8 = PLPhotoKitGetLog();
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_35;
          }

          v20 = [v3 uuid];
          v21 = [v3 originalFilename];
          v25 = 138543618;
          v26 = v20;
          v27 = 2114;
          v28 = v21;
          _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Asset %{public}@ (Filename: %{public}@) is a Panasonic RAW image, which is unsupported. Skipping metadata corrections.", &v25, 0x16u);

LABEL_34:
          goto LABEL_35;
        }
      }

      else
      {
      }
    }

    v22 = [MEMORY[0x1E69C08F0] heicSequenceType];
    v23 = [v6 conformsToType:v22];

    if (v23)
    {
      v8 = PLPhotoKitGetLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v20 = [v3 uuid];
      v25 = 138543362;
      v26 = v20;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Asset %{public}@ is a HEICS, so skipping processing operations like metadata corrections", &v25, 0xCu);
      goto LABEL_34;
    }

LABEL_41:
    v10 = 1;
    goto LABEL_39;
  }

  if ([v3 mediaType] != 2)
  {
    goto LABEL_41;
  }

  if (PHAssetCanPerformAdditionalProcessingOnAsset_onceToken_345 != -1)
  {
    dispatch_once(&PHAssetCanPerformAdditionalProcessingOnAsset_onceToken_345, &__block_literal_global_348);
  }

  v10 = [PHAssetCanPerformAdditionalProcessingOnAsset_supportedWriteableMovieFormats containsObject:v5];
LABEL_39:

  return v10;
}

BOOL _CreationDatesInLibraryAndOriginalMetadataAreSame(void *a1, void *a2)
{
  v3 = a2;
  [a1 timeIntervalSince1970];
  v5 = v4;
  [v3 timeIntervalSince1970];
  v7 = v6;

  v8 = v5 - v7;
  if (v5 - v7 < 0.0)
  {
    v8 = -(v5 - v7);
  }

  return v8 <= 5.0;
}

void __PHAssetCanPerformAdditionalProcessingOnAsset_block_invoke_346()
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = [MEMORY[0x1E6988048] composition];
  v13 = [MEMORY[0x1E6987E60] exportSessionWithAsset:? presetName:?];
  v0 = [v13 supportedFileTypes];
  v1 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = *MEMORY[0x1E6982EE8];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [MEMORY[0x1E6982C40] typeWithIdentifier:v8];
        v10 = [v9 conformsToType:v6];

        if (v10)
        {
          [v1 addObject:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v11 = [v1 copy];
  v12 = PHAssetCanPerformAdditionalProcessingOnAsset_supportedWriteableMovieFormats;
  PHAssetCanPerformAdditionalProcessingOnAsset_supportedWriteableMovieFormats = v11;
}

uint64_t __PHAssetCanPerformAdditionalProcessingOnAsset_block_invoke()
{
  PHAssetCanPerformAdditionalProcessingOnAsset_supportedReadableImageFormats = CGImageSourceCopyTypeIdentifiers();

  return MEMORY[0x1EEE66BB8]();
}

uint64_t PHAssetExportRequestMetadataOperationComparingLibraryAndOriginalValuesForAsset(void *a1, void *a2, int a3, int a4, void *a5, void *a6, _BOOL4 a7, void *a8)
{
  v38 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a2;
  v17 = a5;
  v18 = a6;
  if (!v16)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PHAssetExportRequestMetadataOperation PHAssetExportRequestMetadataOperationComparingLibraryAndOriginalValuesForAsset(NSString *__strong, PHAsset *__strong, BOOL, BOOL, NSObject<NSCopying> *__strong, NSObject<NSCopying> *__strong, BOOL, NSObject<NSCopying> * _Nullable __autoreleasing * _Nullable)"}];
    [v21 handleFailureInFunction:v22 file:@"PHAssetExportRequest.m" lineNumber:668 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (v17 && a4)
    {
      v23 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v16 uuid];
        *buf = 138543362;
        v29 = v24;
        _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Based on internal debug settings, forcing caption to be baked in, even if the library and original caption are the same for asset: %{public}@.", buf, 0xCu);
      }

      if (!a8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!v17 || a7)
      {
        goto LABEL_4;
      }

      if (!a8)
      {
LABEL_16:
        v20 = @"Bake in Library Value";
        v19 = 2;
        goto LABEL_17;
      }
    }

    *a8 = [v17 copy];
    goto LABEL_16;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_3:
  a7 = v18 == 0;
LABEL_4:
  if (a8)
  {
    *a8 = 0;
  }

  v19 = !a7;
  if (a7)
  {
    v20 = @"Do nothing";
  }

  else
  {
    v20 = @"Strip Metadata";
  }

LABEL_17:
  v25 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v16 uuid];
    *buf = 138544387;
    v29 = v15;
    v30 = 2114;
    v31 = v26;
    v32 = 2114;
    v33 = v20;
    v34 = 2113;
    v35 = v17;
    v36 = 2113;
    v37 = v18;
    _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Metadata behavior for %{public}@ for asset ID %{public}@ is to: [%{public}@]. Library value '%{private}@' Original value: '%{private}@'", buf, 0x34u);
  }

  return v19;
}

uint64_t _LocationsMatchUsingComparisonStrategy(void *a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (v5 == v6)
  {
    goto LABEL_7;
  }

  if (!a3)
  {
    [v5 coordinate];
    v9 = v8;
    v11 = v10;
    [v6 coordinate];
    v13 = v12;
    v15 = v14;
    if ((PHAssetLocationCoordinatesAreEqual(v9, v11, v12, v14) & 1) == 0)
    {
      v16 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 134284289;
        v19 = v9;
        v20 = 2049;
        v21 = v13;
        v22 = 2049;
        v23 = v11;
        v24 = 2049;
        v25 = v15;
        _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Mismatch in Latitude (library: %{private}.8f, original: %{private}.8f), or Longitude (library: %{private}.8f, original: %{private}.8f).", &v18, 0x2Au);
      }

      goto LABEL_11;
    }

LABEL_7:
    v7 = 1;
    goto LABEL_12;
  }

  if (a3 == 2)
  {
    goto LABEL_7;
  }

  if (a3 != 1)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v7 = [v5 isEqual:v6];
LABEL_12:

  return v7;
}

void sub_19C8B5BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t PHAssetExportRequestProcessingRequiredForAssetWithOptions(void *a1, void *a2, void *a3, void *a4)
{
  v80[2] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v56 = a4;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PHAssetExportRequestProcessingRequiredForAssetWithOptions(PHAsset *__strong _Nonnull, PHAssetExportRequestOptions *__strong _Nonnull, PFMetadata *__strong _Nullable, NSDictionary<PHAssetExportRequestFileURLKey, NSURL *> *__strong _Nullable)"}];
    [v38 handleFailureInFunction:v39 file:@"PHAssetExportRequest.m" lineNumber:426 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v40 = [MEMORY[0x1E696AAA8] currentHandler];
  v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PHAssetExportRequestProcessingRequiredForAssetWithOptions(PHAsset *__strong _Nonnull, PHAssetExportRequestOptions *__strong _Nonnull, PFMetadata *__strong _Nullable, NSDictionary<PHAssetExportRequestFileURLKey, NSURL *> *__strong _Nullable)"}];
  [v40 handleFailureInFunction:v41 file:@"PHAssetExportRequest.m" lineNumber:427 description:{@"Invalid parameter not satisfying: %@", @"options"}];

LABEL_3:
  v10 = MEMORY[0x1E69C08F0];
  v11 = [v7 uniformTypeIdentifier];
  v55 = [v10 typeWithIdentifier:v11];

  v12 = PHAssetExportRequestLocationMetadataOperationForAssetWithOptions(v7, v8, v9, 0);
  v13 = PHAssetExportRequestCaptionMetadataOperationForAssetWithOptions(v7, v8, v9, 0);
  v14 = PHAssetExportRequestAccessibilityDescriptionMetadataOperationForAssetWithOptions(v7, v8, v9, 0);
  v15 = PHAssetExportRequestCustomDateForAssetWithOptions(v7, v8, 0);
  v53 = v12;
  v50 = v14;
  v51 = v13;
  v16 = (v12 | v13 | v14 | v15) != 0;
  v54 = PHAssetExportRequestNeedsSloMoFlatteningForAssetWithOptions(v7, v8);
  v17 = [v8 videoExportPreset];

  v18 = [v56 objectForKeyedSubscript:@"PHAssetExportRequestPhotoFileURLKey"];
  v19 = [v56 objectForKeyedSubscript:@"PHAssetExportRequestVideoFileURLKey"];
  if ([v7 playbackStyle] == 3)
  {
    v20 = 0;
    if (v18 && v19)
    {
      v46 = v16;
      v21 = v19;
      v22 = objc_alloc_init(PHValidator);
      v48 = v18;
      v80[0] = v18;
      v80[1] = v21;
      v52 = v21;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:2];
      v57 = 0;
      v44 = v22;
      LOBYTE(v21) = [(PHValidator *)v22 validateURLs:v23 withOptions:64 videoComplementMetadata:0 error:&v57];
      v24 = v57;

      if (v21)
      {
        v25 = v24;
        v20 = 0;
      }

      else
      {
        v42 = v15;
        v25 = v24;
        v26 = [v24 userInfo];
        v27 = [v26 objectForKeyedSubscript:@"PHValidationFailureTypeErrorKey"];
        v28 = [v27 unsignedIntegerValue] - 12;

        if (v28 <= 4)
        {
          v29 = PLPhotoKitGetLog();
          v16 = v46;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = [v7 uuid];
            *buf = 138543618;
            v59 = v30;
            v60 = 2112;
            *v61 = v25;
            _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Asset %{public}@ live photo metadata is invald, processing required to fixup, error: %@", buf, 0x16u);
          }

          v20 = 1;
          v15 = v42;
          goto LABEL_15;
        }

        v20 = 0;
        v15 = v42;
      }

      v16 = v46;
LABEL_15:

      v18 = v48;
      v19 = v52;
    }
  }

  else
  {
    v20 = 0;
  }

  if ([v8 includeAllAssetResources] & 1) != 0 || (objc_msgSend(v8, "shouldExportUnmodifiedOriginalResources"))
  {
    v49 = 0;
    LOBYTE(v31) = 0;
  }

  else if ([v8 variant] == 2)
  {
    v49 = 1;
    LOBYTE(v31) = 1;
  }

  else
  {
    LODWORD(v31) = ([v8 variant] == 3) | v54 | (v17 != 0) | v16 | v20;
    v49 = 1;
  }

  v32 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    [v7 uuid];
    v34 = v33 = v8;
    v45 = v20;
    v35 = v9;
    v36 = v31 & 1;
    v43 = [v33 variant];
    [v33 videoExportPreset];
    v31 = v47 = v31;
    *buf = 138546179;
    v59 = v34;
    v60 = 1024;
    *v61 = v36;
    v9 = v35;
    *&v61[4] = 2048;
    *&v61[6] = v53;
    v62 = 2048;
    v63 = v51;
    v64 = 2048;
    v65 = v50;
    v66 = 2113;
    v67 = v15;
    v68 = 1024;
    v69 = v45;
    v70 = 1024;
    v71 = v49;
    v72 = 2048;
    v73 = v43;
    v74 = 1024;
    v75 = v54;
    v76 = 2114;
    v77 = v31;
    v78 = 2114;
    v79 = v55;
    _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Export request processing required for asset %{public}@: %{BOOL}d (metadataOperationLocation=%td, metadataOperationCaption=%td, metadataOperationCaptionAccessibilityDescription=%td, metadataChangeCustomDate=%{private}@, livePhotoMetadataFixup=%{BOOL}d producingNewFilesForExport=%{BOOL}d, options.variant=%td, requiresSloMoFlattening=%{BOOL}d, videoExportPreset=%{public}@, type = %{public}@)", buf, 0x6Au);

    LOBYTE(v31) = v47;
    v8 = v33;
  }

  return v31 & 1;
}

__CFString *PHAssetExportRequestStateDebugDescription(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_1E75A3C98[a1];
  }
}

__CFString *PHAssetExportRequestAssetAvailabilityDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E75A3CD0[a1];
  }
}

uint64_t PHAssetExportRequestPassthroughConversionIsSupportedByType(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (PHAssetExportRequestPassthroughConversionIsSupportedByType_predicate != -1)
  {
    dispatch_once(&PHAssetExportRequestPassthroughConversionIsSupportedByType_predicate, &__block_literal_global_425);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = PHAssetExportRequestPassthroughConversionIsSupportedByType_typesSupportingPassThroughConversion;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:{v1, v9}];
        LOBYTE(v6) = [v7 conformsToType:v6];

        if (v6)
        {
          v3 = 1;
          goto LABEL_13;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v3;
}

void __PHAssetExportRequestPassthroughConversionIsSupportedByType_block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6983138];
  v3[0] = *MEMORY[0x1E6982E58];
  v3[1] = v0;
  v3[2] = *MEMORY[0x1E6982F80];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v2 = PHAssetExportRequestPassthroughConversionIsSupportedByType_typesSupportingPassThroughConversion;
  PHAssetExportRequestPassthroughConversionIsSupportedByType_typesSupportingPassThroughConversion = v1;
}

uint64_t PHOptionalVALocationAnalysisVersion(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 vaLocationAnalysisVersion];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PHMediaAnalysisImageVersionUsingFallback(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 mediaAnalysisImageVersion];
  }

  else if (objc_opt_respondsToSelector())
  {
    v3 = [v1 mediaAnalysisVersion];
    v2 = v3;
    if (v3 >= 0x8000)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int16_t PHMediaAnalysisImageVersionUsingFallback(__strong id<PHMediaProcessingAlgorithmVersionProvider>)"];
      [v4 handleFailureInFunction:v5 file:@"PHPhotoLibrary+MediaProcessing.m" lineNumber:350 description:{@"Invalid parameter not satisfying: %@", @"mediaAnalysisVersion <= INT16_MAX"}];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PHOptionalCaptionGenerationVersion(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 captionGenerationVersion];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PHMediaProcessingDescriptionForTaskID(uint64_t a1)
{
  v4 = @"unknown";
  switch(a1)
  {
    case 0:
      goto LABEL_16;
    case 1:
      v4 = @"MediaAnalysisVideo";

      break;
    case 2:
      v4 = @"SceneAnalysis";

      break;
    case 3:
      v4 = @"FaceAnalysis";

      break;
    case 4:
      v4 = @"EffectsAnalysis";

      break;
    case 5:
      v4 = @"Sceneprint";

      break;
    case 6:
      v4 = @"VideoStabilization";

      break;
    case 7:
      v4 = @"MultiWorkerAnalysis";

      break;
    case 8:
      v4 = @"QuickFaceIdentification";

      break;
    case 9:
      v4 = @"EmbeddingAnalysis";

      break;
    case 10:
      v4 = @"OCRAnalysis";

      break;
    case 11:
      v4 = @"MovieHighlightProcessing";

      break;
    case 12:
      v4 = @"VisualSearchAnalysis";

      break;
    case 13:
      v4 = @"FilesystemAnalysis";

      break;
    case 14:
      v4 = @"FilesystemVideoAnalysis";

      break;
    case 15:
      v4 = @"VideoCaptionAnalysis";

      break;
    case 16:
      v4 = @"PECAnalysis";

      break;
    case 17:
      v4 = @"MediaAnalysisImage";

      break;
    case 18:
      v4 = @"PECLocationAnalysis";

      break;
    case 19:
      v4 = @"TUAnalysis";

      break;
    case 20:
      v4 = @"TUGating";

      break;
    default:
      if (a1 == 0x7FFFFFFF)
      {
        v4 = @"UnifiedAnalysis";
      }

      else
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown:%tu", a1];
LABEL_16:
      }

      break;
  }

  return v4;
}

uint64_t PLIsSavedAssetTypeAllowedForMediaAnalysis(void *a1)
{
  v1 = MEMORY[0x1E69BF328];
  v2 = a1;
  [v1 maskForAllowedForMediaAnalysis];
  [v2 savedAssetType];

  return PLValidatedSavedAssetTypeApplies();
}

void sub_19C8BBF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C8BC4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2842(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _loadURLIntoResult(int a1, int a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = v13;
  if ((a1 & 1) == 0 && (a2 & 1) == 0)
  {
    v15 = PLImageManagerGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v31 = "BOOL _loadURLIntoResult(BOOL, BOOL, NSURL *__strong, NSString *__strong, PLOrientation, PHImageRequest *__strong)";
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "%s called with no options to load, will no op", buf, 0xCu);
    }

    if (PHImageManagerRecordEnabled())
    {
      +[PHImageManagerRequestTracer traceMessageForRequestID:message:](PHImageManagerRequestTracer, "traceMessageForRequestID:message:", [v14 requestID], @"%s called with no options to load, will no op", "BOOL _loadURLIntoResult(BOOL, BOOL, NSURL *__strong, NSString *__strong, PLOrientation, PHImageRequest *__strong)");
    }

    v16 = 1;
    goto LABEL_35;
  }

  if (v11)
  {
    if (a1)
    {
      [v13[19] setImageURL:v11];
    }

    if (a2)
    {
      v17 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v11];
      [v14[19] setImageData:v17];
      if (!v17)
      {
        v16 = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    else
    {
      v17 = 0;
    }

    if (v12 && a5 != -1)
    {
      v19 = v14[19];
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
      [v19 setExifOrientation:v20];

      [v14[19] setUniformTypeIdentifier:v12];
LABEL_33:
      v16 = 1;
      goto LABEL_34;
    }

    v21 = [v14 behaviorSpec];
    v22 = [v21 onlyUseFetchedAssetPropertiesDuringChoosing];

    if (v22)
    {
      goto LABEL_33;
    }

    if (v17)
    {
      v23 = PLGetOrientationAndUntransformedSizeFromImageData();
      v24 = 0;
      if (v23)
      {
LABEL_26:
        v25 = v14[19];
        v26 = [MEMORY[0x1E696AD98] numberWithInteger:0];
        [v25 setExifOrientation:v26];

        [v14[19] setUniformTypeIdentifier:v24];
LABEL_32:

        goto LABEL_33;
      }
    }

    else
    {
      v27 = PLGetOrientationAndUntransformedSizeFromImageURL();
      v24 = 0;
      if (v27)
      {
        goto LABEL_26;
      }
    }

    v28 = PLImageManagerGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v11;
      _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_ERROR, "Reading image metadata failed for resource at URL: %@", buf, 0xCu);
    }

    if (PHImageManagerRecordEnabled())
    {
      +[PHImageManagerRequestTracer traceMessageForRequestID:message:](PHImageManagerRequestTracer, "traceMessageForRequestID:message:", [v14 requestID], @"Reading image metadata failed for resource at URL: %@", v11);
    }

    goto LABEL_32;
  }

  v18 = PLImageManagerGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v31 = "BOOL _loadURLIntoResult(BOOL, BOOL, NSURL *__strong, NSString *__strong, PLOrientation, PHImageRequest *__strong)";
    _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "%s called with nil URL", buf, 0xCu);
  }

  if (PHImageManagerRecordEnabled())
  {
    +[PHImageManagerRequestTracer traceMessageForRequestID:message:](PHImageManagerRequestTracer, "traceMessageForRequestID:message:", [v14 requestID], @"%s called with nil URL", "BOOL _loadURLIntoResult(BOOL, BOOL, NSURL *__strong, NSString *__strong, PLOrientation, PHImageRequest *__strong)");
  }

  v16 = 0;
LABEL_35:

  return v16;
}

void ___chooserDidPresentResourceIdentity_block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleAvailabilityChangeForResource:*(a1 + 32) url:v11 info:v10 error:v9];
}

void ___handleKeyUsageFailureDuringChoosing_block_invoke(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = PLImageManagerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 32) identifierString];
    v6 = v5;
    v7 = @"N";
    if (a2)
    {
      v7 = @"Y";
    }

    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_DEBUG, "[RM]: %@ Result of repair attempt: %@. Retrying request w/o hints...", buf, 0x16u);
  }

  if (PHImageManagerRecordEnabled())
  {
    v9 = [*(a1 + 32) requestID];
    v10 = [*(a1 + 32) identifierString];
    v11 = v10;
    v12 = @"N";
    if (a2)
    {
      v12 = @"Y";
    }

    [PHImageManagerRequestTracer traceMessageForRequestID:v9 message:@"[RM]: %@ Result of repair attempt: %@. Retrying request w/o hints...", v10, v12];
  }

  if (([*(a1 + 32) isSynchronous] & 1) == 0)
  {
    [*(a1 + 32) configureWithError:0];
    v8 = [*(a1 + 32) delegate];
    [v8 mediaRequest:*(a1 + 32) didRequestRetryWithHintsAllowed:0];
  }
}

void sub_19C8BF69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3360(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C8C4EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3951(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C8C67E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_19C8C7DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C8CA3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _AssetAvailabilityForAssetWithOptions(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_9:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PHAssetExportRequestAssetAvailability _AssetAvailabilityForAssetWithOptions(PHAsset *__strong, PHAssetExportRequestOptions *__strong, PHResourceLocalAvailabilityRequest *__strong, NSDictionary<PHResourceLocalAvailabilityRequestResourceInfoKey, id> * _Nullable __autoreleasing * _Nullable)"}];
    [v16 handleFailureInFunction:v17 file:@"PHInternalAssetExportRequest.m" lineNumber:301 description:{@"Invalid parameter not satisfying: %@", @"options"}];

    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PHAssetExportRequestAssetAvailability _AssetAvailabilityForAssetWithOptions(PHAsset *__strong, PHAssetExportRequestOptions *__strong, PHResourceLocalAvailabilityRequest *__strong, NSDictionary<PHResourceLocalAvailabilityRequestResourceInfoKey, id> * _Nullable __autoreleasing * _Nullable)"}];
  [v14 handleFailureInFunction:v15 file:@"PHInternalAssetExportRequest.m" lineNumber:300 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v9)
  {
    goto LABEL_4;
  }

LABEL_10:
  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PHAssetExportRequestAssetAvailability _AssetAvailabilityForAssetWithOptions(PHAsset *__strong, PHAssetExportRequestOptions *__strong, PHResourceLocalAvailabilityRequest *__strong, NSDictionary<PHResourceLocalAvailabilityRequestResourceInfoKey, id> * _Nullable __autoreleasing * _Nullable)"}];
  [v18 handleFailureInFunction:v19 file:@"PHInternalAssetExportRequest.m" lineNumber:302 description:{@"Invalid parameter not satisfying: %@", @"resourceRetrievalRequest"}];

LABEL_4:
  v10 = _PHResourceLocalAvailabilityRequestOptionsFromPHAssetExportRequestOptions(v8);
  v11 = [v9 resourceAvailabilityForOptions:v10 resourceInfo:a4];
  if (v11 == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11 == 1;
  }

  return v12;
}

PHResourceLocalAvailabilityRequestOptions *_PHResourceLocalAvailabilityRequestOptionsFromPHAssetExportRequestOptions(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PHResourceLocalAvailabilityRequestOptions);
  -[PHResourceLocalAvailabilityRequestOptions setTreatLivePhotoAsStill:](v2, "setTreatLivePhotoAsStill:", [v1 treatLivePhotoAsStill]);
  -[PHResourceLocalAvailabilityRequestOptions setDontAllowRAW:](v2, "setDontAllowRAW:", [v1 dontAllowRAW]);
  -[PHResourceLocalAvailabilityRequestOptions setIncludeAllAssetResources:](v2, "setIncludeAllAssetResources:", [v1 includeAllAssetResources]);
  -[PHResourceLocalAvailabilityRequestOptions setIncludeOriginalResourcesOnly:](v2, "setIncludeOriginalResourcesOnly:", [v1 shouldExportUnmodifiedOriginalResources]);
  v3 = [v1 resultHandlerQueue];

  [(PHResourceLocalAvailabilityRequestOptions *)v2 setResultHandlerQueue:v3];
  [(PHResourceLocalAvailabilityRequestOptions *)v2 setAllowMissingVideoComplement:1];

  return v2;
}

id _ResourceInfoToFileURLs(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<PHAssetExportRequestFileURLKey, NSURL *> *_ResourceInfoToFileURLs(NSDictionary<PHResourceLocalAvailabilityRequestResourceInfoKey, NSURL *> *__strong)"}];
    [v12 handleFailureInFunction:v13 file:@"PHInternalAssetExportRequest.m" lineNumber:312 description:{@"Invalid parameter not satisfying: %@", @"resourceInfo"}];
  }

  if (_ResourceInfoToFileURLs_onceToken != -1)
  {
    dispatch_once(&_ResourceInfoToFileURLs_onceToken, &__block_literal_global_4325);
  }

  v2 = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [_ResourceInfoToFileURLs_fileURLKeysFromResourceInfoKeys objectForKeyedSubscript:v8];
        if (v9)
        {
          v10 = [v3 objectForKeyedSubscript:v8];
          [v2 setObject:v10 forKeyedSubscript:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return v2;
}

uint64_t _PreflightMediaConversion(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _PreflightMediaConversion(PHMediaFormatConversionSource *__strong, NSString * _Nullable __autoreleasing * _Nonnull, NSError * _Nullable __autoreleasing * _Nullable)"}];
    [v16 handleFailureInFunction:v17 file:@"PHInternalAssetExportRequest.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"compatibleUTI"}];
  }

  v6 = [MEMORY[0x1E69C0700] legacyCapabilities];
  v18 = 0;
  v7 = [MEMORY[0x1E69AE8A0] requestForSource:v5 destinationCapabilities:v6 error:&v18];
  v8 = v18;
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = PHAssetExportRequestMediaFormatConversionManager();
  [v9 preflightConversionRequest:v7];

  if ([v7 status] == 5)
  {
    v10 = [v7 error];

    v8 = v10;
LABEL_6:
    *a2 = 0;
    if (a3)
    {
      v11 = v8;
      v12 = 0;
      v13 = 0;
      *a3 = v8;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    goto LABEL_13;
  }

  if ([v7 backwardsCompatibilityStatus] == 2)
  {
    v13 = [v7 outputFileType];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  *a2 = v13;
  v12 = 1;
LABEL_13:

  return v12;
}

void sub_19C8CD810(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

uint64_t PHImportConcurrencyLimit()
{
  if (PHImportConcurrencyLimit_onceToken != -1)
  {
    dispatch_once(&PHImportConcurrencyLimit_onceToken, &__block_literal_global_4847);
  }

  return PHImportConcurrencyLimit_concurrencyLimit;
}

double __PHImportConcurrencyLimit_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  PHImportConcurrencyLimit_concurrencyLimit = [v0 integerForKey:@"DebugImportConcurrency"];

  if (!PHImportConcurrencyLimit_concurrencyLimit)
  {
    v3 = 8;
    v4 = 0;
    if (!sysctlbyname("hw.physicalcpu_max", &v4, &v3, 0, 0))
    {
      v2 = v4;
      if (!v4)
      {
        v2 = 2;
      }

      result = vcvtd_n_f64_u64(v2, 1uLL) + v2;
      PHImportConcurrencyLimit_concurrencyLimit = result;
    }
  }

  return result;
}

void PHImportDumpCGImageToURL(CGImage *a1, void *a2)
{
  v3 = *MEMORY[0x1E6982E58];
  v4 = a2;
  v5 = [v3 identifier];
  v6 = CGImageDestinationCreateWithURL(v4, v5, 1uLL, 0);

  if (v6)
  {
    CGImageDestinationAddImage(v6, a1, 0);
    CGImageDestinationFinalize(v6);

    CFRelease(v6);
  }
}

void PHImportDispatchApply(unint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1 < 2 || (v9 = a2 - 1, a2 <= 1))
  {
    if (a1)
    {
      v15 = 0;
      do
      {
        if (v7 && (v7[8] & 1) != 0)
        {
          break;
        }

        v8[2](v8, v15++);
      }

      while (a1 != v15);
    }
  }

  else
  {
    v10 = dispatch_group_create();
    v21 = 0;
    v11 = qos_class_self();
    v12 = dispatch_get_global_queue(v11, 0);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __PHImportDispatchApply_block_invoke;
    aBlock[3] = &unk_1E75A4248;
    v19 = &v21;
    v20 = a1;
    v18 = v8;
    v13 = v7;
    v17 = v13;
    v14 = _Block_copy(aBlock);
    do
    {
      if (v13 && (v13[8] & 1) != 0)
      {
        break;
      }

      dispatch_group_async(v10, v12, v14);
      --v9;
    }

    while (v9);
    v14[2](v14);
    dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  }
}

uint64_t __PHImportDispatchApply_block_invoke(uint64_t result)
{
  v1 = result;
  do
  {
    add_explicit = atomic_fetch_add_explicit(*(v1 + 48), 1uLL, memory_order_relaxed);
    if (add_explicit < *(v1 + 56))
    {
      result = (*(*(v1 + 40) + 16))();
    }

    v3 = *(v1 + 32);
  }

  while ((!v3 || (*(v3 + 8) & 1) == 0) && add_explicit < *(v1 + 56));
  return result;
}

__CFString *stringForTrashedMask(uint64_t a1)
{
  if (a1 > 255)
  {
    v3 = @"AdjustmentBasePairedVideoTrashed";
    v4 = @"DiagnosticFileTrashed";
    v5 = @"AdjutmentSecondaryDataTrashed";
    if (a1 != 0x10000)
    {
      v5 = 0;
    }

    if (a1 != 0x8000)
    {
      v4 = v5;
    }

    if (a1 != 0x4000)
    {
      v3 = v4;
    }

    v6 = @"PairedVideoTrashed";
    v7 = @"XMPTrashed";
    if (a1 != 0x2000)
    {
      v7 = 0;
    }

    if (a1 != 4096)
    {
      v6 = v7;
    }

    if (a1 < 0x4000)
    {
      v3 = v6;
    }

    v8 = @"AdjustedPairedVideoTrashed";
    v9 = @"AlternateImageTrashed";
    if (a1 != 2048)
    {
      v9 = 0;
    }

    if (a1 != 1024)
    {
      v8 = v9;
    }

    v10 = @"AdjustmentBaseVideoTrashed";
    v11 = @"AudioTrashed";
    if (a1 != 512)
    {
      v11 = 0;
    }

    if (a1 != 256)
    {
      v10 = v11;
    }

    if (a1 <= 1023)
    {
      v8 = v10;
    }

    v14 = __OFSUB__(a1, 4095);
    v12 = a1 == 4095;
    v13 = a1 - 4095 < 0;
    goto LABEL_42;
  }

  if (a1 <= 7)
  {
    v3 = @"AdjutmentDataTrashed";
    v15 = @"AdjustedImageTrashed";
    if (a1 != 4)
    {
      v15 = 0;
    }

    if (a1 != 2)
    {
      v3 = v15;
    }

    v8 = @"Untrashed";
    v16 = @"OriginalTrashed";
    if (a1 != 1)
    {
      v16 = 0;
    }

    if (a1)
    {
      v8 = v16;
    }

    v14 = __OFSUB__(a1, 1);
    v12 = a1 == 1;
    v13 = a1 - 1 < 0;
LABEL_42:
    if (v13 ^ v14 | v12)
    {
      return v8;
    }

    else
    {
      return v3;
    }
  }

  if (a1 <= 31)
  {
    if (a1 == 8)
    {
      return @"AdjustedVideoTrashed";
    }

    if (a1 != 16)
    {
      return 0;
    }

    return &stru_1F0FC60C8;
  }

  if (a1 == 32)
  {
    return &stru_1F0FC60C8;
  }

  v1 = @"AdjustmentBasePhotoTrashed";
  if (a1 != 128)
  {
    v1 = 0;
  }

  if (a1 == 64)
  {
    return @"OriginalAdjustmentDataTrashed";
  }

  else
  {
    return v1;
  }
}

__CFString *PHHumanReadableStringForSearchResultType(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E75A4318[a1];
  }
}

__CFString *PHDebugStringForSearchResultType(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"PHSearchResultTypeUndefined";
  }

  else
  {
    return off_1E75A42D8[a1 - 1];
  }
}

__CFString *PHDebugStringForSearchResultRetrievalType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"PHSearchResultRetrievalTypeUndefined";
  }

  else
  {
    return off_1E75A4300[a1 - 1];
  }
}

__CFString *PHHumanReadableStringForSearchResultMatchType(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E75A4368[a1];
  }
}

__CFString *PHHumanReadableStringForSearchResultRetrievalType(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E75A4348[a1];
  }
}

uint64_t __Block_byref_object_copy__5518(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C8D4F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Unwind_Resume(a1);
}

void sub_19C8D607C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __createObjectChangeRequestsFromXPCObject_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [PHChangeRequestHelper changeRequestWithXPCDict:a3 request:a1[4] clientAuthorization:a1[5]];

  if (v4)
  {
    ++*(*(a1[6] + 8) + 24);
  }

  return 1;
}

void sub_19C8D6F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void addObjectChangeRequests(void *a1, void *a2, const char *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if ([v5 count])
  {
    v7 = xpc_array_create(0, 0);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          v14 = xpc_dictionary_create(0, 0, 0);
          [v13 encodeToXPCDict:{v14, v15}];
          xpc_array_append_value(v7, v14);

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    xpc_dictionary_set_value(v6, a3, v7);
  }
}
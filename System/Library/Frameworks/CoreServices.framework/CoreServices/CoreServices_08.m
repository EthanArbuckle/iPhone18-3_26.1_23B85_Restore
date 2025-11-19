void ___ZN13LSHandlerPref4LoadEP11_LSDatabasePK9__CFArray_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v2 addObject:?];
}

uint64_t LSHandlerPref::Save(LSHandlerPref *this, _LSDatabase *a2)
{
  v2 = this;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3812000000;
  v18[3] = __Block_byref_object_copy__42;
  v18[4] = __Block_byref_object_dispose__43;
  v18[5] = &unk_1818533FF;
  v19 = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"static OSStatus LSHandlerPref::Save(__strong LSDatabaseRef)"];
    [v4 handleFailureInFunction:v5 file:@"LSPrefs.mm" lineNumber:1111 description:@"Failed to create empty CFArray."];
  }

  [(_LSDatabase *)v2 store];
  v6 = *([(_LSDatabase *)v2 schema]+ 1576);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3321888768;
  v13 = ___ZN13LSHandlerPref4SaveEP11_LSDatabase_block_invoke;
  v14 = &unk_1EEF63D10;
  v7 = v2;
  v15 = v7;
  v16 = v18;
  v17 = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  _CSStoreEnumerateUnits();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = ___ZN13LSHandlerPref4SaveEP11_LSDatabase_block_invoke_59;
  v9[3] = &__block_descriptor_40_ea8_32c29_ZTS10CFReleaserIP9__CFArrayE_e25_v16__0____CFDictionary__8l;
  cf = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  _LSWithMutableSecurePreferences(v9);
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v17)
  {
    CFRelease(v17);
  }

  v17 = 0;

  _Block_object_dispose(v18, 8);
  if (v19)
  {
    CFRelease(v19);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

void sub_18176934C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CFTypeRef a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, CFTypeRef a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, CFTypeRef cf)
{
  _Block_object_dispose(&a22, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

CFTypeRef __Block_byref_object_copy__42(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void ___ZN13LSHandlerPref4SaveEP11_LSDatabase_block_invoke(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a3[9])
  {
    v12 = 8;
    while (!a3[v12])
    {
      if (--v12 == 3)
      {
        goto LABEL_35;
      }
    }
  }

  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    BindingMapIndex = _LSDatabaseFindBindingMapIndex(*(a1 + 32), a3[3]);
    v9 = a3[2];
    [(_LSDatabase *)*(a1 + 32) store];
    v10 = _CSStringCopyCFString();
    if (!v10)
    {
LABEL_34:
      CFRelease(v7);
      goto LABEL_35;
    }

    value = v10;
    if (BindingMapIndex == 5)
    {
      v11 = @"LSHandlerURLScheme";
    }

    else
    {
      if (BindingMapIndex)
      {
        v13 = a3[3];
        [(_LSDatabase *)*(a1 + 32) store];
        v14 = _CSStringCopyCFString();
        if (!v14)
        {
LABEL_33:
          CFRelease(value);
          goto LABEL_34;
        }

        v15 = v14;
        CFDictionarySetValue(v7, @"LSHandlerContentTag", value);
        CFDictionarySetValue(v7, @"LSHandlerContentTagClass", v15);
        CFRelease(v15);
LABEL_15:
        v16 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v17 = *(*(a1 + 40) + 8);
        v18 = *(v17 + 48);
        if (v18 != v16)
        {
          *(v17 + 48) = v16;
          v16 = v18;
        }

        if (v16)
        {
          CFRelease(v16);
        }

        v19 = 0;
        v20 = kLSHandlerRoleKeys;
        do
        {
          if (a3[v19 / 4 + 4])
          {
            [(_LSDatabase *)*(a1 + 32) store];
            v21 = _CSStringCopyCFString();
            if (!v21)
            {
              goto LABEL_33;
            }

            v22 = &a3[2 * v19];
            v23 = *(v22 + 14);
            valuePtr[0] = *(v22 + 10);
            valuePtr[1] = v23;
            v24 = _LSVersionNumberCopyStringRepresentation(valuePtr);
            v25 = *(*(*(a1 + 40) + 8) + 48);
            v26 = *v20;
            if (v24)
            {
              CFDictionarySetValue(v25, *v20, v24);
            }

            else
            {
              CFDictionarySetValue(v25, *v20, @"-");
            }

            CFDictionarySetValue(v7, v26, v21);
            CFRelease(v21);
            if (v24)
            {
              CFRelease(v24);
            }
          }

          ++v20;
          v19 += 4;
        }

        while (v19 != 24);
        if (CFDictionaryGetCount(*(*(*(a1 + 40) + 8) + 48)) >= 1)
        {
          CFDictionarySetValue(v7, @"LSHandlerPreferredVersions", *(*(*(a1 + 40) + 8) + 48));
        }

        *&valuePtr[0] = a3[58];
        v27 = CFNumberCreate(v5, kCFNumberLongLongType, valuePtr);
        CFDictionarySetValue(v7, @"LSHandlerModificationDate", v27);
        if (v27)
        {
          CFRelease(v27);
        }

        CFArrayAppendValue(*(a1 + 48), v7);
        goto LABEL_33;
      }

      v11 = @"LSHandlerContentType";
    }

    CFDictionarySetValue(v7, v11, v10);
    goto LABEL_15;
  }

LABEL_35:
  v28 = *MEMORY[0x1E69E9840];
}

void sub_181769734(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef __copy_helper_block_ea8_48c29_ZTS10CFReleaserIP9__CFArrayE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_ea8_48c29_ZTS10CFReleaserIP9__CFArrayE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 48) = 0;
}

void ___ZN13LSHandlerPref4SaveEP11_LSDatabase_block_invoke_59(uint64_t a1, CFMutableDictionaryRef theDict)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFDictionarySetValue(theDict, @"LSHandlers", v2);
  }

  else
  {
    CFDictionaryRemoveValue(theDict, @"LSHandlers");
  }
}

CFTypeRef __copy_helper_block_ea8_32c29_ZTS10CFReleaserIP9__CFArrayE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_ea8_32c29_ZTS10CFReleaserIP9__CFArrayE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 32) = 0;
}

void _LSHandlerPrefRemoveAllWithBundleID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = os_transaction_create();
  if (([__LSDefaultsGetSharedInstance() isServer] & 1) != 0 || (objc_msgSend(__LSDefaultsGetSharedInstance(), "hasServer") & 1) == 0)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = ___LSHandlerPrefRemoveAllWithBundleID_block_invoke;
    v26[3] = &unk_1E6A1D958;
    v27 = v3;
    v29 = v4;
    v28 = v5;
    v9 = MEMORY[0x1865D71B0](v26);
    v10 = &v27;
    v11 = &v29;
    v12 = &v28;
    if (![__LSDefaultsGetSharedInstance() isServer])
    {
      v9[2](v9);
      goto LABEL_8;
    }

    v14 = +[LSDBExecutionContext sharedServerInstance];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = ___LSHandlerPrefRemoveAllWithBundleID_block_invoke_66;
    v24[3] = &unk_1E6A1A660;
    v15 = v9;
    v25 = v15;
    [(LSDBExecutionContext *)v14 performAsyncWrite:v24];
    v13 = &v25;
    v9 = v15;
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___LSHandlerPrefRemoveAllWithBundleID_block_invoke_2;
    v20[3] = &unk_1E6A1D980;
    v6 = v3;
    v21 = v6;
    v7 = v4;
    v23 = v7;
    v8 = v5;
    v22 = v8;
    v9 = [(_LSDService *)_LSDModifyService XPCProxyWithErrorHandler:v20];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___LSHandlerPrefRemoveAllWithBundleID_block_invoke_70;
    v16[3] = &unk_1E6A1D9A8;
    v17 = v6;
    v19 = v7;
    v18 = v8;
    [v9 removeAllHandlerPrefsForBundleID:v17 completionHandler:v16];
    v10 = &v21;
    v11 = &v23;
    v12 = &v22;
    v13 = &v17;

    v14 = v19;
  }

LABEL_8:
}

LaunchServices::PrefsStorage *LaunchServices::PrefsStorage::PrefsStorage(LaunchServices::PrefsStorage *this)
{
  *this = 0xFFFFFFFF00000000;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = [MEMORY[0x1E695DF90] dictionary];
  v2 = [__LSDefaultsGetSharedInstance() preferencesUpdateNotificationName];
  LaunchServices::notifyd::NotifyToken::RegisterCheck(v2, &v7);
  LaunchServices::notifyd::NotifyToken::operator=(this + 1, &v7);
  LaunchServices::notifyd::NotifyToken::~NotifyToken(&v7);

  State = LaunchServices::notifyd::NotifyToken::getState((this + 4));
  if (v4)
  {
    v5 = State;
    os_unfair_lock_lock(this);
    *(this + 1) = v5;
    os_unfair_lock_unlock(this);
  }

  LaunchServices::PrefsStorage::_update(this);
  return this;
}

void LaunchServices::PrefsStorage::_update(os_unfair_lock_s *this)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__76;
  v11 = __Block_byref_object_dispose__77;
  v12 = 0;
  if (([__LSDefaultsGetSharedInstance() isServer] & 1) != 0 || (objc_msgSend(__LSDefaultsGetSharedInstance(), "hasServer") & 1) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___ZN14LaunchServices12PrefsStorage7_updateEv_block_invoke;
    v6[3] = &unk_1E6A1D8E0;
    v6[4] = &v7;
    _LSWithInsecurePreferences(v6);
  }

  else
  {
    v2 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = ___ZN14LaunchServices12PrefsStorage7_updateEv_block_invoke_79;
    v5[3] = &unk_1E6A1D9D0;
    v5[4] = &v7;
    [v2 getPreferencesWithCompletionHandler:v5];
  }

  if (v8[5])
  {
    os_unfair_lock_lock(this + 4);
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v8[5], 1uLL);
    v4 = *&this[6]._os_unfair_lock_opaque;
    *&this[6]._os_unfair_lock_opaque = DeepCopy;

    os_unfair_lock_unlock(this + 4);
  }

  _Block_object_dispose(&v7, 8);
}

void sub_18176A2B0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 64), 8);

  _Unwind_Resume(a1);
}

BOOL LaunchServices::PrefsStorage::_needsUpdate(LaunchServices::PrefsStorage *this)
{
  State = LaunchServices::notifyd::NotifyToken::getState((this + 4));
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = State;
  os_unfair_lock_lock(this);
  v6 = *(this + 1);
  v7 = v6 != v4;
  if (v6 != v4)
  {
    v8 = LaunchServices::PrefsStorage::_GetLog(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LaunchServices::PrefsStorage::_needsUpdate(this + 1);
    }

    *(this + 1) = v4;
  }

  os_unfair_lock_unlock(this);
  return v7;
}

id LaunchServices::PrefsStorage::_GetLog(LaunchServices::PrefsStorage *this)
{
  if (LaunchServices::PrefsStorage::_GetLog(void)::once != -1)
  {
    LaunchServices::PrefsStorage::_GetLog();
  }

  v2 = LaunchServices::PrefsStorage::_GetLog(void)::result;

  return v2;
}

uint64_t __Block_byref_object_copy__76(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN14LaunchServices12PrefsStorage7_updateEv_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = LaunchServices::PrefsStorage::_GetLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    ___ZN14LaunchServices12PrefsStorage7_updateEv_block_invoke_2_cold_1();
  }
}

void ___ZN14LaunchServices12PrefsStorage7_updateEv_block_invoke_79(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    v9 = LaunchServices::PrefsStorage::_GetLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ___ZN14LaunchServices12PrefsStorage7_updateEv_block_invoke_2_cold_1();
    }
  }
}

void LaunchServices::PrefsStorage::_updateOtherProcesses(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  State = LaunchServices::notifyd::NotifyToken::getState(&this[1]);
  if (v3)
  {
    v4 = LaunchServices::notifyd::NotifyToken::setState(&this[1], State + 1);
    v5 = LaunchServices::PrefsStorage::_GetLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LaunchServices::PrefsStorage::_updateOtherProcesses();
    }
  }

  os_unfair_lock_unlock(this);
}

void LaunchServices::PrefsStorage::_setNeedsUpdate(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  *&this[2]._os_unfair_lock_opaque = -1;
  v3 = LaunchServices::PrefsStorage::_GetLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LaunchServices::PrefsStorage::_setNeedsUpdate(v3);
  }

  os_unfair_lock_unlock(this);
}

__CFString *LaunchServices::PrefsStorage::_GetBundleIdentifierWithAppNode(void *a1, void *a2)
{
  v3 = a1;
  v13 = 0;
  v4 = [v3 bundleIdentifierWithError:&v13];
  v5 = v13;
  v6 = v5;
  if (!v4)
  {
    if ([v5 code] == -10813 && (objc_msgSend(v6, "domain"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqual:", *MEMORY[0x1E696A768]), v7, v8))
    {
      v10 = LaunchServices::PrefsStorage::_GetLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LaunchServices::PrefsStorage::_GetBundleIdentifierWithAppNode();
      }

      v4 = &stru_1EEF65710;
    }

    else if (a2)
    {
      v11 = v6;
      v4 = 0;
      *a2 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t LaunchServices::PrefsStorage::_GetIndexOfValueForNodeInPrefsArray(LaunchServices::PrefsStorage *this, NSArray *a2, FSNode *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = this;
  v5 = a2;
  if (!v5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static NSInteger LaunchServices::PrefsStorage::_GetIndexOfValueForNodeInPrefsArray(NSArray *__strong, FSNode *__strong)"}];
    [v17 handleFailureInFunction:v18 file:@"LSPrefs.mm" lineNumber:1426 description:{@"Invalid parameter not satisfying: %@", @"appNode != nil"}];
  }

  v6 = v5;
  v7 = v4;
  if (!v7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static NSInteger LaunchServices::PrefsStorage::_GetIndexOfValueInPrefsArrayWithPredicate(NSArray *__strong, const Pred &) [Pred = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSPrefs.mm:1428:63)]"}];
    [v19 handleFailureInFunction:v20 file:@"LSPrefs.mm" lineNumber:1404 description:{@"Invalid parameter not satisfying: %@", @"prefsArray != nil"}];
  }

  v8 = [(LaunchServices::PrefsStorage *)v7 count];
  if (v8)
  {
    for (i = 0; i < v8; i += 2)
    {
      v10 = [(LaunchServices::PrefsStorage *)v7 objectAtIndexedSubscript:i];
      if (v10 && _NSIsNSData() && (v11 = _LSAliasMatchesNode(v10, v6), v11) && (v12 = i + 1, i + 1 < v8))
      {
        v13 = LaunchServices::PrefsStorage::_GetLog(v11);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = [(LaunchServices::PrefsStorage *)v7 objectAtIndexedSubscript:i + 1];
          *buf = 134218243;
          v22 = i;
          v23 = 2113;
          v24 = v14;
          _os_log_debug_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEBUG, "Found matched pref in prefs array at index %llu. Current value is %{private}@", buf, 0x16u);
        }
      }

      else
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }
    }
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

BOOL LaunchServices::PrefsStorage::_SetValueForNodeInPrefsArray(void *a1, void *a2, void *a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v10 = a3;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static BOOL LaunchServices::PrefsStorage::_SetValueForNodeInPrefsArray(NSMutableArray *__strong, FSNode *__strong, __strong id, NSError *__autoreleasing *)"}];
    [v18 handleFailureInFunction:v19 file:@"LSPrefs.mm" lineNumber:1475 description:{@"Invalid parameter not satisfying: %@", @"prefsArray != nil"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static BOOL LaunchServices::PrefsStorage::_SetValueForNodeInPrefsArray(NSMutableArray *__strong, FSNode *__strong, __strong id, NSError *__autoreleasing *)"}];
  [v20 handleFailureInFunction:v21 file:@"LSPrefs.mm" lineNumber:1476 description:{@"Invalid parameter not satisfying: %@", @"appNode != nil"}];

LABEL_3:
  IndexOfValueForNodeInPrefsArray = LaunchServices::PrefsStorage::_GetIndexOfValueForNodeInPrefsArray(v7, v8, v9);
  v12 = LaunchServices::PrefsStorage::_GetLog(IndexOfValueForNodeInPrefsArray);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (IndexOfValueForNodeInPrefsArray == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v10)
    {
      if (v13)
      {
        LaunchServices::PrefsStorage::_SetValueForNodeInPrefsArray();
      }

      v12 = [(NSArray *)v8 bookmarkDataRelativeToNode:0 error:a4];
      v14 = v12 != 0;
      if (!v12)
      {
        goto LABEL_16;
      }

      [(LaunchServices::PrefsStorage *)v7 addObject:v12];
      [(LaunchServices::PrefsStorage *)v7 addObject:v10];
    }

    else if (v13)
    {
      LaunchServices::PrefsStorage::_SetValueForNodeInPrefsArray();
    }

    v14 = 1;
LABEL_16:

    goto LABEL_21;
  }

  if (v10)
  {
    if (v13)
    {
      v17 = [(LaunchServices::PrefsStorage *)v7 objectAtIndexedSubscript:IndexOfValueForNodeInPrefsArray];
      *buf = 138478339;
      v23 = v17;
      v24 = 2113;
      v25 = v8;
      v26 = 2113;
      v27 = v10;
      _os_log_debug_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEBUG, "Replacing value %{private}@ for app node %{private}@ with value %{private}@.", buf, 0x20u);
    }

    [(LaunchServices::PrefsStorage *)v7 setObject:v10 atIndexedSubscript:IndexOfValueForNodeInPrefsArray];
  }

  else
  {
    if (v13)
    {
      LaunchServices::PrefsStorage::_SetValueForNodeInPrefsArray();
    }

    [(LaunchServices::PrefsStorage *)v7 removeObjectAtIndex:IndexOfValueForNodeInPrefsArray];
    [(LaunchServices::PrefsStorage *)v7 removeObjectAtIndex:IndexOfValueForNodeInPrefsArray - 1];
  }

  v14 = 1;
LABEL_21:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void ___ZN14LaunchServices12PrefsStorage7_GetLogEv_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "prefs-storage");
  v1 = LaunchServices::PrefsStorage::_GetLog(void)::result;
  LaunchServices::PrefsStorage::_GetLog(void)::result = v0;
}

uint64_t LaunchServices::PrefsStorage::GetShared(LaunchServices::PrefsStorage *this)
{
  if (LaunchServices::PrefsStorage::GetShared(void)::once != -1)
  {
    LaunchServices::PrefsStorage::GetShared();
  }

  if (LaunchServices::PrefsStorage::_needsUpdate(LaunchServices::PrefsStorage::GetShared(void)::result))
  {
    LaunchServices::PrefsStorage::_update(LaunchServices::PrefsStorage::GetShared(void)::result);
  }

  return LaunchServices::PrefsStorage::GetShared(void)::result;
}

id LaunchServices::PrefsStorage::getAllPreferences(LaunchServices::PrefsStorage *this)
{
  os_unfair_lock_lock(this + 4);
  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], *(this + 3), 0);
  os_unfair_lock_unlock(this + 4);

  return DeepCopy;
}

uint64_t LaunchServices::PrefsStorage::setValueForNode(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  if (([__LSDefaultsGetSharedInstance() isServer] & 1) != 0 || !objc_msgSend(__LSDefaultsGetSharedInstance(), "hasServer"))
  {
    if (v9 && v10)
    {
      v14 = LaunchServices::PrefsStorage::_GetBundleIdentifierWithAppNode(v10, a5);
      if (v14)
      {
        os_unfair_lock_lock((a1 + 16));
        v15 = [*(a1 + 24) objectForKeyedSubscript:v9];
        v16 = [v15 objectForKeyedSubscript:v14];
        v17 = [v16 mutableCopy];

        if (!v17)
        {
          v17 = [MEMORY[0x1E695DF70] array];
        }

        v18 = LaunchServices::PrefsStorage::_SetValueForNodeInPrefsArray(v17, v10, v11, a5);
        *(v35 + 24) = v18;
        if (v18)
        {
          v19 = [*(a1 + 24) objectForKeyedSubscript:v9];
          if (!v19)
          {
            v20 = LaunchServices::PrefsStorage::_GetLog(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              LaunchServices::PrefsStorage::setValueForNode();
            }

            v19 = [MEMORY[0x1E695DF90] dictionary];
            [*(a1 + 24) setObject:? forKeyedSubscript:?];
          }

          v21 = [v17 copy];
          [v19 setObject:v21 forKeyedSubscript:v14];

          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = ___ZN14LaunchServices12PrefsStorage15setValueForNodeEP8NSStringP6FSNodeP11objc_objectPU15__autoreleasingP7NSError_block_invoke_103;
          v29[3] = &unk_1E6A1DA20;
          v30 = v9;
          v22 = v19;
          v31 = v22;
          _LSWithMutableInsecurePreferences(v29);
          LaunchServices::PrefsStorage::_updateOtherProcesses(a1);
        }

        os_unfair_lock_unlock((a1 + 16));
        if (*(v35 + 24) == 1)
        {
          v24 = LaunchServices::PrefsStorage::_GetLog(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543875;
            *&buf[4] = v9;
            *&buf[12] = 2113;
            *&buf[14] = v14;
            *&buf[22] = 2113;
            v41 = v11;
            _os_log_debug_impl(&dword_18162D000, v24, OS_LOG_TYPE_DEBUG, "SET prefs[%{public}@][%{private}@] = %{private}@", buf, 0x20u);
          }
        }
      }
    }

    else if (a5)
    {
      v38 = *MEMORY[0x1E696A278];
      v39 = @"invalid input parameters";
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v25, "setValueForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSPrefs.mm", 1658);
    }
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v41 = __Block_byref_object_copy__76;
    v42 = __Block_byref_object_dispose__77;
    v43 = 0;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = ___ZN14LaunchServices12PrefsStorage15setValueForNodeEP8NSStringP6FSNodeP11objc_objectPU15__autoreleasingP7NSError_block_invoke;
    v33[3] = &unk_1E6A18DF0;
    v33[4] = buf;
    v12 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v33];
    v13 = [v10 URL];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = ___ZN14LaunchServices12PrefsStorage15setValueForNodeEP8NSStringP6FSNodeP11objc_objectPU15__autoreleasingP7NSError_block_invoke_2;
    v32[3] = &unk_1E6A1D9F8;
    v32[4] = &v34;
    v32[5] = buf;
    [v12 setPreferenceValue:v11 forKey:v9 forApplicationAtURL:v13 completionHandler:v32];

    if (*(v35 + 24) == 1)
    {
      LaunchServices::PrefsStorage::_setNeedsUpdate(a1);
    }

    else if (a5)
    {
      *a5 = *(*&buf[8] + 40);
    }

    _Block_object_dispose(buf, 8);
  }

  v26 = *(v35 + 24);
  _Block_object_dispose(&v34, 8);

  v27 = *MEMORY[0x1E69E9840];
  return v26 & 1;
}

void sub_18176B380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

uint64_t std::array<NSString * {__strong},5ul>::~array(uint64_t a1)
{
  for (i = 32; i != -8; i -= 8)
  {
  }

  return a1;
}

void _LSWithMutableInsecurePreferences(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v5 = 0;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___LSWithMutableInsecurePreferences_block_invoke;
    v3[3] = &unk_1E6A1DA78;
    v4 = v1;
    _LSPreferences::With(&v5, v3);

    objc_autoreleasePoolPop(v2);
  }
}

void _LSPreferences::With(_BYTE *a1, void *a2)
{
  v4 = a2;
  if (a1 && v4)
  {
    if (_LSPreferences::With(_LSPreferences::SecurityContext const*,void({block_pointer})(void const*))::once != -1)
    {
      _LSPreferences::With();
    }

    v3 = &_LSPreferences::With(_LSPreferences::SecurityContext const*,void({block_pointer})(void const*))::securePrefs;
    if (!*a1)
    {
      v3 = &_LSPreferences::With(_LSPreferences::SecurityContext const*,void({block_pointer})(void const*))::insecurePrefs;
    }

    _LSPreferences::with(*v3, a1, v4);
  }
}

void _LSWithInsecurePreferences(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v5 = 256;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___LSWithInsecurePreferences_block_invoke;
    v3[3] = &unk_1E6A1DA78;
    v4 = v1;
    _LSPreferences::With(&v5, v3);

    objc_autoreleasePoolPop(v2);
  }
}

void _LSWithMutableSecurePreferences(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v5 = 1;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___LSWithMutableSecurePreferences_block_invoke;
    v3[3] = &unk_1E6A1DA78;
    v4 = v1;
    _LSPreferences::With(&v5, v3);

    objc_autoreleasePoolPop(v2);
  }
}

void _LSWithSecurePreferences(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v5 = 257;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___LSWithSecurePreferences_block_invoke;
    v3[3] = &unk_1E6A1DA78;
    v4 = v1;
    _LSPreferences::With(&v5, v3);

    objc_autoreleasePoolPop(v2);
  }
}

void _LSPreferences::_LSPreferences(_LSPreferences *this, char a2)
{
  v12 = *MEMORY[0x1E69E9840];
  *this = a2;
  *(this + 8) = -1;
  v3 = (this + 32);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  snprintf(__str, 0x100uLL, "com.apple.launchservices.prefs-%p", this);
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create(__str, v4);
  v6 = *(this + 3);
  *(this + 3) = v5;

  _LSPreferences::load(this, 0);
  v7 = objc_autoreleasePoolPush();
  v8 = [__LSDefaultsGetSharedInstance() preferencesFileChangeNotificationName];
  LaunchServices::notifyd::NotifyToken::RegisterCheck(v8, &v10);
  LaunchServices::notifyd::NotifyToken::operator=(v3, &v10);
  LaunchServices::notifyd::NotifyToken::~NotifyToken(&v10);

  objc_autoreleasePoolPop(v7);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_18176BA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  LaunchServices::notifyd::NotifyToken::~NotifyToken(&a12);

  LaunchServices::notifyd::NotifyToken::~NotifyToken(v13);
  _Unwind_Resume(a1);
}

void _LSPreferences::load(dispatch_queue_t *this, int a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN14_LSPreferences4loadEb_block_invoke;
  v7[3] = &__block_descriptor_40_e5_v8__0l;
  v7[4] = this;
  v4 = MEMORY[0x1865D71B0](v7);
  v5 = v4;
  if (a2)
  {
    v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v4);

    dispatch_barrier_async(this[3], v6);
    v5 = v6;
  }

  else
  {
    v4[2](v4);
  }
}

void ___ZN14_LSPreferences4loadEb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ([__LSDefaultsGetSharedInstance() hasPersistentPreferences])
  {
    v2 = *(v1 + 1);
    *(v1 + 1) = 0;

    v3 = objc_autoreleasePoolPush();
    v4 = *v1;
    SharedInstance = __LSDefaultsGetSharedInstance();
    if (v4 == 1)
    {
      [SharedInstance securePreferencesFileURL];
    }

    else
    {
      [SharedInstance preferencesFileURL];
    }
    v6 = ;
    v7 = *(v1 + 2);
    *(v1 + 2) = v6;

    objc_autoreleasePoolPop(v3);
    applyStorageACLToURL(*v1, *(v1 + 2));
    v8 = objc_autoreleasePoolPush();
    v9 = objc_alloc(MEMORY[0x1E695DF20]);
    v10 = *(v1 + 2);
    v24 = 0;
    v11 = [v9 initWithContentsOfURL:v10 error:&v24];
    v12 = v24;
    v13 = *(v1 + 1);
    *(v1 + 1) = v11;

    if (!*(v1 + 1))
    {
      v14 = *v1;
      v15 = *(v1 + 2);
      v16 = dispatch_get_global_queue(-2, 0);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = ___ZN14_LSPreferences4loadEb_block_invoke_2;
      v20[3] = &unk_1E6A1CF98;
      v23 = v14;
      v21 = v15;
      v22 = v12;
      v17 = v15;
      dispatch_async(v16, v20);
    }

    objc_autoreleasePoolPop(v8);
  }

  if (!*(v1 + 1))
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v19 = *(v1 + 1);
    *(v1 + 1) = v18;
  }
}

void applyStorageACLToURL(int a1, NSURL *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  acl_p = 0;
  if (!a1 || ([__LSDefaultsGetSharedInstance() isInEducationMode] & 1) != 0)
  {
    v4 = 0;
    v5 = 0;
LABEL_4:
    v6 = 1;
    goto LABEL_24;
  }

  permset_p = 0;
  entry_p = 0;
  *uu = 0;
  *&uu[8] = 0;
  acl_p = acl_init(1);
  if (acl_p)
  {
    if (acl_create_entry(&acl_p, &entry_p))
    {
      v7 = __error();
      v8 = *MEMORY[0x1E696A798];
      v9 = 72;
    }

    else if (mbr_identifier_to_uuid(5, "systemusers", 0xBuLL, uu))
    {
      v7 = __error();
      v8 = *MEMORY[0x1E696A798];
      v9 = 82;
    }

    else if (acl_get_permset(entry_p, &permset_p))
    {
      v7 = __error();
      v8 = *MEMORY[0x1E696A798];
      v9 = 88;
    }

    else if (acl_add_perm(permset_p, ACL_CHANGE_OWNER|ACL_WRITE_SECURITY|ACL_READ_SECURITY|ACL_WRITE_EXTATTRIBUTES|ACL_READ_EXTATTRIBUTES|ACL_WRITE_ATTRIBUTES|ACL_READ_ATTRIBUTES|ACL_ADD_SUBDIRECTORY|ACL_DELETE|ACL_ADD_FILE|ACL_LIST_DIRECTORY))
    {
      v7 = __error();
      v8 = *MEMORY[0x1E696A798];
      v9 = 94;
    }

    else if (acl_set_permset(entry_p, permset_p))
    {
      v7 = __error();
      v8 = *MEMORY[0x1E696A798];
      v9 = 100;
    }

    else if (acl_set_tag_type(entry_p, ACL_EXTENDED_ALLOW))
    {
      v7 = __error();
      v8 = *MEMORY[0x1E696A798];
      v9 = 106;
    }

    else
    {
      if (!acl_set_qualifier(entry_p, uu))
      {
        v5 = 0;
        v4 = acl_p;
        goto LABEL_4;
      }

      v7 = __error();
      v8 = *MEMORY[0x1E696A798];
      v9 = 112;
    }
  }

  else
  {
    v7 = __error();
    v8 = *MEMORY[0x1E696A798];
    v9 = 66;
  }

  v5 = _LSMakeNSErrorImpl(v8, *v7, 0, "copyPreferencesACL", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSPrefsSupport.mm", v9);
  v10 = v5;
  if (acl_p)
  {
    acl_free(acl_p);
  }

  v6 = 0;
  v4 = 0;
LABEL_24:

  v11 = v5;
  if (v6)
  {
    if (v4)
    {
      v12 = [(NSURL *)v3 path];
      v13 = v12;
      v14 = acl_set_file([v12 fileSystemRepresentation], ACL_TYPE_EXTENDED, v4) == 0;

      if (!v14)
      {
        v15 = *__error();
        v16 = _LSDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          applyStorageACLToURL(v3, v15, v16);
        }
      }

      acl_free(v4);
    }
  }

  else
  {
    v17 = _LSDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *uu = 138412802;
      *&uu[4] = v3;
      *&uu[12] = 1024;
      *&uu[14] = a1;
      v23 = 2112;
      v24 = v11;
      _os_log_error_impl(&dword_18162D000, v17, OS_LOG_TYPE_ERROR, "could not create ACL to apply to %@ (secure: %d): %@", uu, 0x1Cu);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_18176C05C(_Unwind_Exception *a1)
{
  acl_free(v3);

  _Unwind_Resume(a1);
}

void ___ZN14_LSPreferences4loadEb_block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = _LSDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) path];
    v7 = *(a1 + 40);
    v8[0] = 67109634;
    v8[1] = v5;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_error_impl(&dword_18162D000, v3, OS_LOG_TYPE_ERROR, "Failed to read LS preferences (secure? %{BOOL}i) from %@: %@", v8, 0x1Cu);
  }

  objc_autoreleasePoolPop(v2);
  v4 = *MEMORY[0x1E69E9840];
}

void _LSPreferences::with(dispatch_queue_t *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = LaunchServices::notifyd::NotifyToken::checkValue((a1 + 4));
    if ((v6 & 0x100000000) != 0 && v6)
    {
      _LSPreferences::load(a1, 1);
    }

    if (*(a2 + 1) == 1)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy__43;
      v18 = __Block_byref_object_dispose__43;
      v19 = 0;
      v7 = a1[3];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN14_LSPreferences4withEPKNS_15SecurityContextEU13block_pointerFvPKvE_block_invoke;
      block[3] = &unk_1E6A1BE80;
      block[4] = &v14;
      block[5] = a1;
      dispatch_sync(v7, block);
      if (v15[5])
      {
        v5[2](v5);
      }

      _Block_object_dispose(&v14, 8);
      v8 = v19;
    }

    else
    {
      v9 = a1[3];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = ___ZN14_LSPreferences4withEPKNS_15SecurityContextEU13block_pointerFvPKvE_block_invoke_2;
      v10[3] = &unk_1E6A1BE30;
      v12 = a1;
      v11 = v5;
      dispatch_barrier_sync(v9, v10);
      v8 = v11;
    }
  }
}

void sub_18176C360(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 80), 8);

  _Unwind_Resume(a1);
}

void ___ZN14_LSPreferences4withEPKNS_15SecurityContextEU13block_pointerFvPKvE_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (v1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v1);
  }
}

void ___ZN14_LSPreferences4withEPKNS_15SecurityContextEU13block_pointerFvPKvE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2[1];
  if (v3)
  {
    v4 = [v3 mutableCopy];
    if (v4)
    {
      (*(*(a1 + 32) + 16))();
      if (([v2[1] isEqual:v4] & 1) == 0)
      {
        _LSPreferences::save(v2, v4);
      }
    }
  }
}

void _LSPreferences::save(_LSPreferences *this, NSDictionary *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(this + 1);
    if (v5)
    {
      v6 = v5 == v3;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v3 copyItems:1];
      v8 = *(this + 1);
      *(this + 1) = v7;
    }

    if (*(this + 2) && [__LSDefaultsGetSharedInstance() hasPersistentPreferences])
    {
      v22 = 0;
      v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:&v22];
      v10 = v22;
      if (v9)
      {
        v11 = [MEMORY[0x1E696AC08] defaultManager];
        [v11 removeItemAtURL:*(this + 2) error:0];

        v12 = *(this + 2);
        v21 = v10;
        LOBYTE(v11) = [v9 writeToURL:v12 options:268435457 error:&v21];
        v13 = v21;

        v10 = v13;
        if ((v11 & 1) == 0)
        {
          v14 = _LSDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v19 = *this;
            v20 = [*(this + 2) path];
            *buf = 67109634;
            v24 = v19;
            v25 = 2112;
            v26 = v20;
            v27 = 2112;
            v28 = v10;
            _os_log_error_impl(&dword_18162D000, v14, OS_LOG_TYPE_ERROR, "Failed to save LS preferences (secure? %{BOOL}i) to %@: %@", buf, 0x1Cu);
          }
        }

        applyStorageACLToURL(*this, *(this + 2));
      }

      else
      {
        v15 = _LSDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = *this;
          v18 = [*(this + 2) path];
          *buf = 67109634;
          v24 = v17;
          v25 = 2112;
          v26 = v18;
          v27 = 2112;
          v28 = v10;
          _os_log_error_impl(&dword_18162D000, v15, OS_LOG_TYPE_ERROR, "Failed to serialize LS preferences (secure? %{BOOL}i) to %@: %@", buf, 0x1Cu);
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t _LSGetProfileValidationStateFromInstallDictionary(const __CFDictionary *a1)
{
  result = _LSGetBooleanFromDict(a1, @"ProfileValidated");
  if (result)
  {
    if (_LSGetBooleanFromDict(a1, @"UPPValidated"))
    {
      return 2;
    }

    else if (_LSGetBooleanFromDict(a1, @"FreeProfileValidated"))
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

__CFString *_LSProfileValidationStateGetVisualizationDescription(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E6A1DA98[a1];
  }
}

void sub_18176E6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_18176EF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Unwind_Resume(a1);
}

void bundleUnitsClaimingDefaultAppCategory(LSContext *a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (_os_feature_enabled_impl())
  {
    v6 = (LSGetDefaultAppCategoryInfoForCategory(a2) + 8);
    LaunchServices::BindingEvaluator::CreateWithUTI(*v6, 0, &v36);
    v31 = 0;
    LaunchServices::BindingEvaluator::evaluateBindings(&v36, a1, &v31, v32);
    v7 = v31;
    v8 = v32[0];
    v9 = v32[1];
    v34 = a3;
    while (v8 != v9)
    {
      v33 = *v8;
      std::back_insert_iterator<std::vector<unsigned int>>::operator=[abi:nn200100](&v34, &v33);
      v8 += 14;
    }

    if (v7)
    {
      v10 = _LSDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        bundleUnitsClaimingDefaultAppCategory(v6);
      }
    }

    v35 = v32;
    std::vector<LSBinding>::__destroy_vector::operator()[abi:nn200100](&v35);

    LaunchServices::BindingEvaluator::~BindingEvaluator(&v36);
    goto LABEL_42;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v23 = nonPlaceholderBundleUnitIDForIdentifier(a1, &cfstr_ComAppleMobile_1.isa);
      v12 = v23;
      if ((v23 & 0x100000000) == 0)
      {
        goto LABEL_42;
      }

      v14 = a3[1];
      v24 = a3[2];
      if (v14 >= v24)
      {
        v15 = *a3;
        v16 = v14 - *a3;
        v17 = v16 >> 2;
        v26 = (v16 >> 2) + 1;
        if (v26 >> 62)
        {
          std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
        }

        v27 = v24 - v15;
        if (v27 >> 1 > v26)
        {
          v26 = v27 >> 1;
        }

        v20 = v27 >= 0x7FFFFFFFFFFFFFFCLL;
        v21 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v20)
        {
          v21 = v26;
        }

        if (v21)
        {
          std::allocator<unsigned int>::allocate_at_least[abi:nn200100](a3, v21);
        }

        goto LABEL_39;
      }
    }

    else
    {
      if (a2 != 4)
      {
        goto LABEL_42;
      }

      v11 = nonPlaceholderBundleUnitIDForIdentifier(a1, &cfstr_ComAppleMobile_2.isa);
      v12 = v11;
      if ((v11 & 0x100000000) == 0)
      {
        goto LABEL_42;
      }

      v14 = a3[1];
      v13 = a3[2];
      if (v14 >= v13)
      {
        v15 = *a3;
        v16 = v14 - *a3;
        v17 = v16 >> 2;
        v18 = (v16 >> 2) + 1;
        if (v18 >> 62)
        {
          std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
        }

        v19 = v13 - v15;
        if (v19 >> 1 > v18)
        {
          v18 = v19 >> 1;
        }

        v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
        v21 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v20)
        {
          v21 = v18;
        }

        if (v21)
        {
          std::allocator<unsigned int>::allocate_at_least[abi:nn200100](a3, v21);
        }

LABEL_39:
        v28 = 4 * v21;
        *(4 * v17) = v12;
        v25 = 4 * v17 + 4;
        memcpy(0, v15, v16);
        v29 = *a3;
        *a3 = 0;
        a3[1] = v25;
        a3[2] = v28;
        if (v29)
        {
          operator delete(v29);
        }

        goto LABEL_41;
      }
    }

    *v14 = v12;
    v25 = (v14 + 4);
LABEL_41:
    a3[1] = v25;
    goto LABEL_42;
  }

  if (a2 == 1)
  {
    bundleUnitIDsForBindingScheme(@"https", a1, &__block_literal_global_63, &v36);
  }

  else
  {
    if (a2 != 2)
    {
      goto LABEL_42;
    }

    bundleUnitIDsForBindingScheme(@"mailto", a1, &__block_literal_global_62_0, &v36);
  }

  v22 = *a3;
  if (*a3)
  {
    a3[1] = v22;
    operator delete(v22);
  }

  *a3 = v36;
  a3[2] = v37;
LABEL_42:
  v30 = *MEMORY[0x1E69E9840];
}

void sub_18176F9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void bundleUnitIDsForBindingScheme(LaunchServices::BindingEvaluator *this@<X1>, LSContext *a2@<X0>, void *a3@<X2>, void *a4@<X8>)
{
  v18[22] = *MEMORY[0x1E69E9840];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  LaunchServices::BindingEvaluator::CreateWithURLScheme(this, v18);
  LaunchServices::BindingEvaluator::setFilter(v18, a3);
  v12 = 0;
  LaunchServices::BindingEvaluator::evaluateBindings(v18, a2, &v12, &v13);
  v7 = v12;
  v9 = v13;
  v8 = v14;
  if (v14 == v13)
  {
    v10 = _LSDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      bundleUnitIDsForBindingScheme();
    }
  }

  else
  {
    v16 = a4;
    do
    {
      v15 = *v9;
      std::back_insert_iterator<std::vector<unsigned int>>::operator=[abi:nn200100](&v16, &v15);
      v9 += 14;
    }

    while (v9 != v8);
  }

  v17 = &v13;
  std::vector<LSBinding>::__destroy_vector::operator()[abi:nn200100](&v17);

  LaunchServices::BindingEvaluator::~BindingEvaluator(v18);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_181770180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  va_copy(v12, va);
  std::vector<LSBinding>::__destroy_vector::operator()[abi:nn200100](va1);

  LaunchServices::BindingEvaluator::~BindingEvaluator(va2);
  v5 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t nonPlaceholderBundleUnitIDForIdentifier(LSContext *a1, NSString *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  memset(v9, 0, sizeof(v9));
  v3 = _LSBundleFindWithInfo(a1, 0, a2, 0, v9, 2, 128, &v8, 0);
  if (v3)
  {
    v4 = v3;
    v5 = _LSDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      nonPlaceholderBundleUnitIDForIdentifier(a2, v4, v5);
    }

    result = 0;
  }

  else
  {
    result = v8 | 0x100000000;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *std::back_insert_iterator<std::vector<unsigned int>>::operator=[abi:nn200100](uint64_t *a1, _DWORD *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = (v9 >> 2) + 1;
    if (v10 >> 62)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:nn200100](*a1, v13);
    }

    v14 = (4 * (v9 >> 2));
    *v14 = *a2;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v15 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t **a4)
{
  v6 = a2;
  v7 = a1;
  v8 = *a2;
  v9 = *a1;
  v10 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, *a2);
  v11 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, v9);
  v12 = v11;
  if (v8)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {

    if (!v8)
    {
      goto LABEL_15;
    }

LABEL_7:
    v14 = *a3;
    v15 = *v6;
    v16 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, *a3);
    v17 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, v15);
    v18 = v17;
    if (v14 && v15)
    {
      v19 = [v16 localizedStandardCompare:v17];

      if (v19 != -1)
      {
LABEL_10:
        v20 = *v7;
        *v7 = *v6;
        *v6 = v20;
        v21 = *a3;
        v22 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, *a3);
        v23 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, v20);
        v24 = v23;
        if (v20 && v21)
        {
          v25 = [v22 localizedStandardCompare:v23];

          v7 = v6;
          v6 = a3;
          if (v25 != -1)
          {
            return;
          }
        }

        else
        {

          v7 = v6;
          v6 = a3;
          if (!v21)
          {
            return;
          }
        }

        goto LABEL_27;
      }
    }

    else
    {

      if (!v14)
      {
        goto LABEL_10;
      }
    }

    v6 = a3;
    goto LABEL_27;
  }

  v26 = [v10 localizedStandardCompare:v11];

  if (v26 == -1)
  {
    goto LABEL_7;
  }

LABEL_15:
  v27 = *a3;
  v28 = *v6;
  v29 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, *a3);
  v30 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, v28);
  v31 = v30;
  if (v27 && v28)
  {
    v32 = [v29 localizedStandardCompare:v30];

    if (v32 != -1)
    {
      return;
    }
  }

  else
  {

    if (!v27)
    {
      return;
    }
  }

  v33 = *v6;
  *v6 = *a3;
  *a3 = v33;
  v34 = *v6;
  v35 = *v7;
  v36 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, *v6);
  v37 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, v35);
  v38 = v37;
  if (v34 && v35)
  {
    v39 = [v36 localizedStandardCompare:v37];

    if (v39 != -1)
    {
      return;
    }
  }

  else
  {

    if (!v34)
    {
      return;
    }
  }

LABEL_27:
  v40 = *v7;
  *v7 = *v6;
  *v6 = v40;
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t **a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(a1, a2, a3, a5);
  v10 = *a4;
  v11 = *a3;
  v12 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a5, *a4);
  v13 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a5, v11);
  v14 = v13;
  if (v10)
  {
    v15 = v11 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {

    if (!v10)
    {
      return;
    }
  }

  else
  {
    v16 = [v12 localizedStandardCompare:v13];

    if (v16 != -1)
    {
      return;
    }
  }

  v17 = *a3;
  *a3 = *a4;
  *a4 = v17;
  v18 = *a3;
  v19 = *a2;
  v20 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a5, *a3);
  v21 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a5, v19);
  v22 = v21;
  if (v18 && v19)
  {
    v23 = [v20 localizedStandardCompare:v21];

    if (v23 != -1)
    {
      return;
    }
  }

  else
  {

    if (!v18)
    {
      return;
    }
  }

  v24 = *a2;
  *a2 = *a3;
  *a3 = v24;
  v25 = *a2;
  v26 = *a1;
  v27 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a5, *a2);
  v28 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a5, v26);
  v29 = v28;
  if (v25 && v26)
  {
    v30 = [v27 localizedStandardCompare:v28];

    if (v30 != -1)
    {
      return;
    }
  }

  else
  {

    if (!v25)
    {
      return;
    }
  }

  v31 = *a1;
  *a1 = *a2;
  *a2 = v31;
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t **a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(a1, a2, a3, a4, a6);
  v12 = *a5;
  v13 = *a4;
  v14 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a6, *a5);
  v15 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a6, v13);
  v16 = v15;
  if (v12)
  {
    v17 = v13 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {

    if (!v12)
    {
      return;
    }
  }

  else
  {
    v18 = [v14 localizedStandardCompare:v15];

    if (v18 != -1)
    {
      return;
    }
  }

  v19 = *a4;
  *a4 = *a5;
  *a5 = v19;
  v20 = *a4;
  v21 = *a3;
  v22 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a6, *a4);
  v23 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a6, v21);
  v24 = v23;
  if (v20 && v21)
  {
    v25 = [v22 localizedStandardCompare:v23];

    if (v25 != -1)
    {
      return;
    }
  }

  else
  {

    if (!v20)
    {
      return;
    }
  }

  v26 = *a3;
  *a3 = *a4;
  *a4 = v26;
  v27 = *a3;
  v28 = *a2;
  v29 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a6, *a3);
  v30 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a6, v28);
  v31 = v30;
  if (v27 && v28)
  {
    v32 = [v29 localizedStandardCompare:v30];

    if (v32 != -1)
    {
      return;
    }
  }

  else
  {

    if (!v27)
    {
      return;
    }
  }

  v33 = *a2;
  *a2 = *a3;
  *a3 = v33;
  v34 = *a2;
  v35 = *a1;
  v36 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a6, *a2);
  v37 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a6, v35);
  v38 = v37;
  if (v34 && v35)
  {
    v39 = [v36 localizedStandardCompare:v37];

    if (v39 != -1)
    {
      return;
    }
  }

  else
  {

    if (!v34)
    {
      return;
    }
  }

  v40 = *a1;
  *a1 = *a2;
  *a2 = v40;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t **a3)
{
  v4 = a2;
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      v9 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v7);
      v10 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v8);
      v11 = v10;
      if (v7 && v8)
      {
        v12 = [v9 localizedStandardCompare:v10];

        if (v12 != -1)
        {
          return 1;
        }
      }

      else
      {

        if (!v7)
        {
          return 1;
        }
      }

      v31 = *a1;
      *a1 = *(v4 - 1);
      *(v4 - 1) = v31;
      return 1;
    }
  }

  v13 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a3);
  v14 = a1 + 3;
  if (a1 + 3 == v4)
  {
    return 1;
  }

  v15 = 0;
  v34 = 0;
  v33 = v4;
  while (2)
  {
    v16 = *v14;
    v17 = *v13;
    v18 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, *v14);
    v19 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v17);
    v20 = v19;
    if (v16)
    {
      v21 = v17 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {

      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v22 = [v18 localizedStandardCompare:v19];

      if (v22 != -1)
      {
        goto LABEL_33;
      }
    }

    v23 = *v14;
    *v14 = *v13;
    v24 = v15;
    while (1)
    {
      v25 = *(a1 + v24 + 4);
      v26 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v23);
      v27 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v25);
      v28 = v27;
      if (!v23 || !v25)
      {
        break;
      }

      v29 = [v26 localizedStandardCompare:v27];

      if (v29 != -1)
      {
        goto LABEL_31;
      }

LABEL_29:
      *(a1 + v24 + 8) = *(a1 + v24 + 4);
      v24 -= 4;
      if (v24 == -8)
      {
        v30 = a1;
        goto LABEL_32;
      }
    }

    if (v23)
    {
      goto LABEL_29;
    }

LABEL_31:
    v30 = (a1 + v24 + 8);
LABEL_32:
    *v30 = v23;
    ++v34;
    v4 = v33;
    if (v34 != 8)
    {
LABEL_33:
      v13 = v14;
      v15 += 4;
      if (++v14 == v4)
      {
        return 1;
      }

      continue;
    }

    return v14 + 1 == v33;
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,NSString * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,NSString * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,NSString * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,NSString * {__strong}>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__tree<std::__value_type<unsigned int,NSString * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,NSString * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,NSString * {__strong}>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,NSString * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,NSString * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,NSString * {__strong}>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,NSString * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,NSString * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,NSString * {__strong}>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

unsigned __int8 *_LSCheckRecordPISizeAndVersionReturningPIInnerBytes(void *a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if ([a1 length] < 0x1C)
  {
    v14 = *MEMORY[0x1E696A278];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"data length %zu is too short", objc_msgSend(a1, "length")];
    v15 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, v9, "_LSCheckRecordPISizeAndVersionReturningPIInnerBytes", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSRecord.mm", 226);
  }

  else
  {
    v4 = [a1 bytes];
    v5 = *v4;
    if (v5 == _LSPersistentIdentifierVersion)
    {
      v6 = v4;
      v7 = 0;
      goto LABEL_9;
    }

    v16 = *MEMORY[0x1E696A278];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"identifier version %d is unknown", v5];
    v17[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10650, v9, "_LSCheckRecordPISizeAndVersionReturningPIInnerBytes", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSRecord.mm", 223);
  }

  v7 = v10;

  if (a2)
  {
    v11 = v7;
    v6 = 0;
    *a2 = v7;
  }

  else
  {
    v6 = 0;
  }

LABEL_9:

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

_DWORD *LaunchServices::Record::findSubclassForTable(LaunchServices::Record *this, LSContext *a2)
{
  v2 = a2;
  v3 = [(_LSDatabase *)*this schema];
  if (v3)
  {
    if (v3[1] == v2)
    {
      v4 = off_1E6A181E0;
LABEL_14:
      v5 = *v4;
      v3 = objc_opt_class();
      goto LABEL_15;
    }

    if (v3[397] == v2)
    {
      v4 = off_1E6A18188;
      goto LABEL_14;
    }

    if (v3[4] == v2)
    {
      v4 = off_1E6A182E0;
      goto LABEL_14;
    }

    if (v3[2] == v2)
    {
      v4 = off_1E6A18200;
      goto LABEL_14;
    }

    if (v3[398] == v2)
    {
      v4 = off_1E6A18240;
      goto LABEL_14;
    }

    if (v3[401] == v2)
    {
      v4 = off_1E6A18338;
      goto LABEL_14;
    }

    v3 = 0;
  }

LABEL_15:

  return v3;
}

void sub_1817729A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LaunchServices::Database::Context::~Context(&a9);

  _Unwind_Resume(a1);
}

void sub_181772E14(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_181772F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_181773078(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_1817731E4(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_18177334C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_181773518(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_181773AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a2)
  {
    MEMORY[0x1865D6250](v10, 0x10A0C408EF24B1CLL);

    objc_begin_catch(exception_object);
    os_unfair_recursive_lock_unlock();
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_181773BE8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_181773CDC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_181773ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c58_ZTSNSt3__16vectorIU6__weakP8LSRecordNS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = a1 + 32;
  *(v2 + 16) = 0;
  return std::vector<LSRecord * {__weak}>::__init_with_size[abi:nn200100]<LSRecord * {__weak}*,LSRecord * {__weak}*>(v2, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
}

void std::vector<LSRecord *>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<LSRecord *>::__append(a1, a2 - v3, a3);
  }
}

void sub_181774A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  LaunchServices::Database::Context::~Context(&a13);

  _Unwind_Resume(a1);
}

void sub_181774FF4(_Unwind_Exception *a1)
{
  if (v2)
  {
    CFRelease(v2);
  }

  _Unwind_Resume(a1);
}

void __LSRECORD_IS_CRASHING_DUE_TO_A_CALLER_BUG__(uint64_t a1, const char *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  sel_getName(v2);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void __LAUNCH_SERVICES_CLIENT_MAY_BE_EXFILTRATING_PRIVACY_SENSITIVE_INFORMATION__()
{
  v0 = _LSRecordLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_18162D000, v0, OS_LOG_TYPE_FAULT, "Process is attempting to encode sensitive data from Launch Services in order to send it to a non-privileged client. This is a privacy bug in this process; please file a bug report.", v1, 2u);
  }
}

uint64_t std::vector<LSRecord * {__weak}>::__init_with_size[abi:nn200100]<LSRecord * const*,LSRecord * const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

uint64_t std::vector<LSRecord * {__weak}>::__init_with_size[abi:nn200100]<LSRecord * {__weak}*,LSRecord * {__weak}*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<LSRecord *>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_1817E8EF0)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100](a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_1817E8EF0)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::__unordered_map_hasher<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::hash<objc_selector *>,std::equal_to<objc_selector *>,true>,std::__unordered_map_equal<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::equal_to<objc_selector *>,std::hash<objc_selector *>,true>,std::allocator<std::__hash_value_type<objc_selector *,objc_object * {__strong}>>>::__erase_unique<objc_selector *>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::find<_opaque_pthread_t *>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](v4);
    return 1;
  }

  return result;
}

uint64_t ___ZN14LaunchServices6RecordL24checkForExfiltrationRiskEP7NSCoder_block_invoke()
{
  result = [__LSDefaultsGetSharedInstance() isServer];
  if (result & 1) != 0 || (result = [__LSDefaultsGetSharedInstance() isInXCTestRigInsecure], (result) || (v1 = _LSGetAuditTokenForSelf(), result = _LSCheckEntitlementForAuditToken(v1, @"com.apple.private.launchservices.canEncodeSensitiveData"), result) || (v2 = _LSGetAuditTokenForSelf(), result = _LSIsAuditTokenPlatformBinary(v2), !result))
  {
    LaunchServices::Record::checkForExfiltrationRisk(NSCoder *)::isSafeToSendData = 1;
  }

  return result;
}

id *std::vector<LSRecord * {__weak}>::__move_range(uint64_t a1, id *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (v6 + a2 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (v6 + a2 - a4);
    v8 = *(a1 + 8);
    do
    {
      objc_moveWeak(v8++, v10++);
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LSRecord * {__weak}*,LSRecord * {__weak}*,LSRecord * {__weak}*>(&v12, a2, v7, v6);
}

id *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LSRecord * {__weak}*,LSRecord * {__weak}*,LSRecord * {__weak}*>(uint64_t a1, id *a2, id *a3, id *a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      WeakRetained = objc_loadWeakRetained(--v7);
      objc_storeWeak(--a4, WeakRetained);
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t std::unordered_map<objc_selector *,objc_object * {__strong}>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::__unordered_map_hasher<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::hash<objc_selector *>,std::equal_to<objc_selector *>,true>,std::__unordered_map_equal<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::equal_to<objc_selector *>,std::hash<objc_selector *>,true>,std::allocator<std::__hash_value_type<objc_selector *,objc_object * {__strong}>>>::__emplace_unique_key_args<objc_selector *,std::pair<objc_selector * const,objc_object * {__strong}> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::__unordered_map_hasher<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::hash<objc_selector *>,std::equal_to<objc_selector *>,true>,std::__unordered_map_equal<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::equal_to<objc_selector *>,std::hash<objc_selector *>,true>,std::allocator<std::__hash_value_type<objc_selector *,objc_object * {__strong}>>>::__emplace_unique_key_args<objc_selector *,std::pair<objc_selector * const,objc_object * {__strong}> const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_181775BE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void const*,std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>>,void *>>>::operator()[abi:nn200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

id _LSGetCollapsedMIDictionaryForAppAndContentsDictionaries(void *a1)
{
  v1 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__47;
  v17 = __Block_byref_object_dispose__47;
  v18 = [MEMORY[0x1E695DF90] dictionary];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__47;
  v11 = __Block_byref_object_dispose__47;
  v12 = [MEMORY[0x1E695DF90] dictionary];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___LSGetCollapsedMIDictionaryForAppAndContentsDictionaries_block_invoke;
  v6[3] = &unk_1E6A1DC20;
  v6[4] = &v13;
  v6[5] = &v7;
  [v1 enumerateObjectsUsingBlock:v6];
  v2 = v14[5];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___LSGetCollapsedMIDictionaryForAppAndContentsDictionaries_block_invoke_2;
  v5[3] = &unk_1E6A1B058;
  v5[4] = &v7;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v3;
}

void sub_1817765A4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_181776740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id _LSGetTeamIdentifierFromInstallDict(void *a1)
{
  v1 = a1;
  v15 = 0;
  v2 = objc_opt_class();
  v3 = [v1 objectForKey:@"Entitlements"];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {

      v4 = 0;
      goto LABEL_24;
    }

LABEL_9:
    v7 = objc_opt_class();
    v8 = [v4 objectForKey:@"com.apple.developer.team-identifier"];
    v9 = v8;
    if (v7 && v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v9;
        goto LABEL_24;
      }

      v15 = 0;
    }

    else
    {
      v15 = v8;
      if (v8)
      {
        goto LABEL_24;
      }
    }

    v10 = objc_opt_class();
    v11 = [v4 objectForKey:@"application-identifier"];
    v12 = v11;
    if (v10 && v11)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    else if (!v11)
    {
      goto LABEL_23;
    }

    _LSSplitApplicationIdentifier(v12, &v15, 0);
    goto LABEL_23;
  }

  if (v3)
  {
    goto LABEL_9;
  }

LABEL_24:

  v13 = v15;

  return v13;
}

CFTypeRef _LSCopyBundleInfoDictionary(__CFBundle *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  InfoDictionary = CFBundleGetInfoDictionary(a1);
  DeepPropertyListCopy = InfoDictionary;
  if (!InfoDictionary)
  {
    goto LABEL_7;
  }

  if (CFDictionaryGetCount(InfoDictionary) >= 1)
  {
    v5 = CFGetAllocator(DeepPropertyListCopy);
    DeepPropertyListCopy = dictionaryCreateDeepPropertyListCopy(v5, DeepPropertyListCopy);
    if (DeepPropertyListCopy)
    {
      goto LABEL_7;
    }

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFMutableDictionaryRef _LSCopyBundleInfoDictionary(CFBundleRef)"];
    [v6 handleFailureInFunction:v7 file:@"LSRegistration.mm" lineNumber:779 description:{@"Failed to create mutable copy of dictionary, cannot safely proceed, aborting"}];
  }

  DeepPropertyListCopy = 0;
LABEL_7:
  objc_autoreleasePoolPop(v2);
  if (!DeepPropertyListCopy)
  {
    return 0;
  }

  v8 = CFRetain(DeepPropertyListCopy);
  CFRelease(DeepPropertyListCopy);
  return v8;
}

__CFDictionary *dictionaryCreateDeepPropertyListCopy(const __CFAllocator *a1, const __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Count = CFDictionaryGetCount(a2);
  v6 = MEMORY[0x1865D4CB0](a1, 8 * Count, 0x80040B8603338, 0);
  v7 = MEMORY[0x1865D4CB0](a1, 8 * Count, 0x80040B8603338, 0);
  CFDictionaryGetKeysAndValues(a2, v6, v7);
  if (Count >= 1)
  {
    v8 = v6;
    v9 = v7;
    while (1)
    {
      DeepCopy = CFPropertyListCreateDeepCopy(a1, *v8, 1uLL);
      v11 = CFPropertyListCreateDeepCopy(a1, *v9, 1uLL);
      v12 = v11;
      if (DeepCopy && v11 != 0)
      {
        break;
      }

      if (DeepCopy)
      {
        goto LABEL_13;
      }

      if (v11)
      {
        goto LABEL_10;
      }

LABEL_11:
      ++v9;
      ++v8;
      if (!--Count)
      {
        goto LABEL_15;
      }
    }

    CFDictionaryAddValue(Mutable, DeepCopy, v11);
LABEL_13:
    CFRelease(DeepCopy);
    if (!v12)
    {
      goto LABEL_11;
    }

LABEL_10:
    CFRelease(v12);
    goto LABEL_11;
  }

LABEL_15:
  CFAllocatorDeallocate(a1, v6);
  CFAllocatorDeallocate(a1, v7);
  return Mutable;
}

__CFDictionary *copyDeepMutableDictionary(__CFDictionary *result)
{
  if (result)
  {
    result = dictionaryCreateDeepPropertyListCopy(*MEMORY[0x1E695E480], result);
    if (!result)
    {
      v1 = [MEMORY[0x1E696AAA8] currentHandler];
      v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFMutableDictionaryRef copyDeepMutableDictionary(CFDictionaryRef)"];
      [v1 handleFailureInFunction:v2 file:@"LSRegistration.mm" lineNumber:793 description:{@"Failed to create mutable copy of dictionary, cannot safely proceed, aborting"}];

      return 0;
    }
  }

  return result;
}

CFPropertyListRef _LSCopyiTunesMetadataDictionaryForAppContainerURL(CFURLRef url)
{
  if (!url)
  {
    return 0;
  }

  v1 = *MEMORY[0x1E695E480];
  v2 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x1E695E480], url, @"iTunesMetadata.plist", 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFReadStreamCreateWithFile(v1, v2);
  if (v4)
  {
    v5 = v4;
    if (CFReadStreamOpen(v4))
    {
      v6 = CFPropertyListCreateWithStream(v1, v5, 0, 0, 0, 0);
      if (v6)
      {
        TypeID = CFDictionaryGetTypeID();
        if (TypeID != CFGetTypeID(v6))
        {
          CFRelease(v6);
          v6 = 0;
        }
      }

      CFReadStreamClose(v5);
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v3);
  return v6;
}

void _LSPromoteiTunesMetadataKeys(const __CFDictionary *a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    Value = CFDictionaryGetValue(a1, @"initialODRSize");
    TypeID = CFNumberGetTypeID();
    if (Value && (!TypeID || CFGetTypeID(Value) == TypeID))
    {
      CFDictionaryAddValue(a2, @"initialODRSize", Value);
    }

    v6 = CFDictionaryGetValue(a1, @"itemId");
    v7 = CFNumberGetTypeID();
    if (v6 && (!v7 || CFGetTypeID(v6) == v7))
    {
      CFDictionaryAddValue(a2, @"itemId", v6);
    }

    v8 = CFDictionaryGetValue(a1, @"artistName");
    v9 = CFStringGetTypeID();
    if (v8 && (!v9 || CFGetTypeID(v8) == v9))
    {
      CFDictionaryAddValue(a2, @"artistName", v8);
    }

    v10 = CFDictionaryGetValue(a1, @"itemName");
    v11 = CFStringGetTypeID();
    if (v10 && (!v11 || CFGetTypeID(v10) == v11))
    {
      CFDictionaryAddValue(a2, @"itemName", v10);
    }

    v12 = CFDictionaryGetValue(a1, @"storeCohort");
    v13 = CFStringGetTypeID();
    if (v12 && (!v13 || CFGetTypeID(v12) == v13))
    {
      CFDictionaryAddValue(a2, @"storeCohort", v12);
    }

    v14 = CFDictionaryGetValue(a1, @"s");
    v15 = CFNumberGetTypeID();
    if (v14 && (!v15 || CFGetTypeID(v14) == v15))
    {
      CFDictionaryAddValue(a2, @"s", v14);
    }

    v16 = CFDictionaryGetValue(a1, @"softwareVersionExternalIdentifier");
    v17 = CFNumberGetTypeID();
    if (v16 && (!v17 || CFGetTypeID(v16) == v17))
    {
      CFDictionaryAddValue(a2, @"softwareVersionExternalIdentifier", v16);
    }

    v18 = CFDictionaryGetValue(a1, @"betaExternalVersionIdentifier");
    v19 = CFNumberGetTypeID();
    if (v18 && (!v19 || CFGetTypeID(v18) == v19))
    {
      CFDictionaryAddValue(a2, @"betaExternalVersionIdentifier", v18);
    }

    v20 = CFDictionaryGetValue(a1, @"DeviceBasedVPP");
    v21 = CFBooleanGetTypeID();
    if (v20 && (!v21 || CFGetTypeID(v20) == v21))
    {
      CFDictionaryAddValue(a2, @"DeviceBasedVPP", v20);
    }

    v22 = CFDictionaryGetValue(a1, @"is-purchased-redownload");
    v23 = CFBooleanGetTypeID();
    if (v22 && (!v23 || CFGetTypeID(v22) == v23))
    {
      CFDictionaryAddValue(a2, @"is-purchased-redownload", v22);
    }

    v24 = CFDictionaryGetValue(a1, @"gameCenterEnabled");
    v25 = CFBooleanGetTypeID();
    if (v24 && (!v25 || CFGetTypeID(v24) == v25))
    {
      CFDictionaryAddValue(a2, @"gameCenterEnabled", v24);
    }

    v26 = CFDictionaryGetValue(a1, @"gameCenterEverEnabled");
    v27 = CFBooleanGetTypeID();
    if (v26 && (!v27 || CFGetTypeID(v26) == v27))
    {
      CFDictionaryAddValue(a2, @"gameCenterEverEnabled", v26);
    }

    v28 = CFDictionaryGetValue(a1, @"sourceApp");
    v29 = CFStringGetTypeID();
    if (v28 && (!v29 || CFGetTypeID(v28) == v29))
    {
      CFDictionaryAddValue(a2, @"sourceApp", v28);
    }

    v30 = CFDictionaryGetValue(a1, @"variantID");
    v31 = CFStringGetTypeID();
    if (v30 && (!v31 || CFGetTypeID(v30) == v31))
    {
      CFDictionaryAddValue(a2, @"variantID", v30);
    }

    v32 = CFDictionaryGetValue(a1, @"managementDeclarationIdentifier");
    v33 = CFStringGetTypeID();
    if (v32 && (!v33 || CFGetTypeID(v32) == v33))
    {
      CFDictionaryAddValue(a2, @"managementDeclarationIdentifier", v32);
    }

    v34 = CFDictionaryGetValue(a1, @"genre");
    v35 = CFStringGetTypeID();
    if (v34 && (!v35 || CFGetTypeID(v34) == v35))
    {
      CFDictionaryAddValue(a2, @"genre", v34);
    }

    v36 = CFDictionaryGetValue(a1, @"genreId");
    v37 = CFNumberGetTypeID();
    if (v36 && (!v37 || CFGetTypeID(v36) == v37))
    {
      CFDictionaryAddValue(a2, @"genreId", v36);
    }

    v38 = CFDictionaryGetValue(a1, @"subgenres");
    v39 = CFArrayGetTypeID();
    if (v38 && (!v39 || CFGetTypeID(v38) == v39))
    {
      CFDictionaryAddValue(a2, @"subgenres", v38);
    }

    v40 = CFDictionaryGetValue(a1, @"distributorInfo");
    v41 = CFDictionaryGetTypeID();
    if (v40 && (!v41 || CFGetTypeID(v40) == v41))
    {
      CFDictionaryAddValue(a2, @"distributorInfo", v40);
    }

    v42 = CFArrayGetTypeID();
    v43 = CFDictionaryGetValue(a1, @"categories");
    if (v43)
    {
      v44 = v43;
      if (CFGetTypeID(v43) == v42)
      {
        CFDictionaryAddValue(a2, @"categories", v44);
      }
    }

    v45 = CFDictionaryGetValue(a1, @"com.apple.iTunesStore.downloadInfo");
    v46 = CFDictionaryGetTypeID();
    if (v45 && (!v46 || CFGetTypeID(v45) == v46))
    {
      v47 = CFGetTypeID(v45);
      if (v47 == CFDictionaryGetTypeID())
      {
        v48 = CFDictionaryGetValue(v45, @"accountInfo");
        v49 = CFDictionaryGetTypeID();
        if (v48)
        {
          if (!v49 || CFGetTypeID(v48) == v49)
          {
            v50 = CFGetTypeID(v48);
            if (v50 == CFDictionaryGetTypeID())
            {
              if ((AsNumber = CFDictionaryGetValue(v48, @"PurchaserID"), v52 = CFNumberGetTypeID(), AsNumber) && (!v52 || CFGetTypeID(AsNumber) == v52) || (v53 = CFDictionaryGetValue(v48, @"DSPersonID"), (AsNumber = CFTypeGetAsNumber(v53)) != 0))
              {
                CFDictionaryAddValue(a2, @"PurchaserID", AsNumber);
              }
            }
          }
        }
      }
    }

    v54 = CFDictionaryGetValue(a1, @"rating");
    v55 = CFDictionaryGetTypeID();
    if (v54 && (!v55 || CFGetTypeID(v54) == v55))
    {
      v56 = CFDictionaryGetValue(v54, @"rank");
      v57 = CFNumberGetTypeID();
      if (v56 && (!v57 || CFGetTypeID(v56) == v57))
      {
        CFDictionaryAddValue(a2, @"rank", v56);
      }

      v58 = CFDictionaryGetValue(v54, @"label");
      v59 = CFStringGetTypeID();
      if (v58 && (!v59 || CFGetTypeID(v58) == v59))
      {

        CFDictionaryAddValue(a2, @"label", v58);
      }
    }
  }
}

uint64_t _LSServer_URLIsOnTrustedCryptex(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v1 = [[FSNode alloc] initWithURL:a1 flags:0 error:&v17];
  v2 = v17;
  if (v1)
  {
    v3 = v1;
    _LSAssertRunningInServer("Boolean _LSServer_NodeIsOnTrustedCryptex(FSNode *__strong)");
    v20 = 0;
    v4 = [(FSNode *)v3 volumeNodeWithFlags:0 error:&v20];
    v5 = v20;
    if (v4)
    {
      v6 = +[FSNode rootVolumeNode];
      if ([v4 isEqual:v6])
      {
      }

      else
      {
        v10 = +[FSNode prebootVolumeNode];
        v8 = [v4 isEqual:v10];

        if (!v8)
        {
LABEL_21:

          goto LABEL_22;
        }
      }

      v19 = v5;
      v11 = [(FSNode *)v3 getFileSystemRepresentation:v21 error:&v19];
      v12 = v19;

      if (v11)
      {
        v18[0] = 0;
        v18[1] = 0;
        if (fsctl(v21, 0xC0104A66uLL, v18, 0))
        {
          v13 = __error();
          v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v13, 0, "_LSServer_NodeIsOnTrustedCryptex", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 1992);

LABEL_15:
          v8 = 0;
          goto LABEL_21;
        }

        v8 = BYTE4(v18[0]);
      }

      else
      {
        v14 = _LSDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          _LSServer_URLIsOnTrustedCryptex_cold_1();
        }

        v8 = 0;
      }

      v5 = v12;
      goto LABEL_21;
    }

    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _LSServer_URLIsOnTrustedCryptex_cold_2();
    }

    goto LABEL_15;
  }

  v7 = _LSDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    _LSServer_URLIsOnTrustedCryptex_cold_3();
  }

  v8 = 0;
LABEL_22:

  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t _LSRegisterPluginNode(LSContext *a1, void *a2, FSNode *a3, int a4, unsigned int a5, void *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = objc_alloc_init(LSRegistrationInfo);
  v18 = a5;
  v13 = [(FSNode *)v11 bookmarkDataRelativeToNode:0 error:a6];
  if (!v13 || !_LSContainerFindOrRegisterWithNode(&a1->db, v11, a4, &v18 + 1, 0, 0, a6))
  {
    goto LABEL_11;
  }

  v12->bundleClass = 12;
  v12->version = 7;
  v12->action = 204;
  v12->options = a4;
  v12->containerUnit = HIDWORD(v18);
  if (a5 || (_LSPluginFindWithInfo(a1->db, 0, 0, 0, v11, &v18, 0), (a5 = v18) != 0))
  {
    v12->bundleUnit = a5;
  }

  if (![(FSNode *)v11 getFileSystemRepresentation:v19 error:a6])
  {
    goto LABEL_11;
  }

  v14 = _LSRegisterDirectoryNode(a1, v11, v12, v13, a3, 0, 0, &v18, v18);
  if (!v14)
  {
    v15 = 1;
    goto LABEL_12;
  }

  if (!a6)
  {
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v14, 0, "_LSRegisterPluginNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 2070);
  *a6 = v15 = 0;
LABEL_12:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t _LSRegisterDirectoryNode(LSContext *a1, FSNode *a2, FSNode *a3, LSRegistrationInfo *a4, FSNode *a5, const __CFArray **a6, const __CFArray **a7, const __CFURL *a8, unsigned int *a9)
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = [(FSNode *)v16 URL];

  v20 = _LSDispatchRegistration(a1, v17, v18, v19, a5, a8, a6, a7, v22, v23);
  return v20;
}

BOOL _LSRegisterBundleURL(void **a1, void *a2, unsigned int a3, FSNode *a4, void *a5)
{
  v9 = a2;
  v10 = v9;
  if (a3)
  {
    v11 = [v9 copy];

    v10 = v11;
  }

  v12 = [[FSNode alloc] initWithURL:v10 flags:0 error:a5];
  if (v12)
  {
    v13 = _LSRegisterBundleNode(a1, v12, a3, a4, a5);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

BOOL _LSRegisterBundleNode(void **a1, void *a2, unsigned int a3, FSNode *a4, void *a5)
{
  v9 = a2;
  v23 = a1;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = LaunchServices::Database::Context::_get(&v23, v10, 0);

  if (!v11)
  {
    if (a5)
    {
      v14 = +[_LSDServiceDomain defaultServiceDomain];
      v15 = LaunchServices::Database::Context::_get(&v23, v14, 0);

      if (v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = v26;
      }

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v12 = _LSFindOrRegisterBundleNode(v11, v9, 0, a3, a4, 0, 0);
  if (v12 == -10811)
  {
    v22 = -1;
    v17 = _LSGetLibraryBundleIdentifierAndItemIndexForNode(v11, v9, &v22);
    if (v17 && v22 == -1)
    {
      v13 = _LSRegisterLibrary(v11, v17, 1, a5);
      goto LABEL_19;
    }

    if (a5)
    {
      v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10811, 0, "_LSRegisterBundleNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 2622);
      goto LABEL_15;
    }

LABEL_16:
    v13 = 0;
    goto LABEL_19;
  }

  if (v12)
  {
    if (a5)
    {
      v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v12, 0, "_LSRegisterBundleNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 2627);
LABEL_15:
      v16 = v18;
LABEL_18:
      v13 = 0;
      *a5 = v16;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v13 = 1;
LABEL_19:
  if (v23 && v25 == 1)
  {
    _LSContextDestroy(v23);
  }

  v19 = v24;
  v23 = 0;
  v24 = 0;

  v25 = 0;
  v20 = v26;
  v26 = 0;

  return v13;
}

void sub_181778708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

__guard _LSGetLibraryBundleIdentifierAndItemIndexForNode(LSContext *a1, FSNode *a2, uint64_t *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v26 = 0;
  v25 = 0;
  bzero(v28, 0x400uLL);
  *a3 = -1;
  if (![(FSNode *)v5 getFileSystemRepresentation:v28 error:0])
  {
    goto LABEL_8;
  }

  v6 = strlen(v28);
  v7 = 0;
  while (1)
  {
    getLibIDs();
    v8 = _LSPathForBundleLibraryIdentifier(_MergedGlobals_2[v7 + 1]);
    v9 = v8;
    if (v8)
    {
      v10 = *v8;
      if (v6 > v10 && !strncasecmp(v28, v8[1], *v8) && v28[v10] == 47)
      {
        break;
      }
    }

    if (++v7 == 4)
    {
      goto LABEL_8;
    }
  }

  getLibIDs();
  v14 = _MergedGlobals_2[v7 + 1];
  memset(v27, 0, sizeof(v27));
  if (_LSBundleFindWithInfo(a1, 0, v14, 0, v27, 8, 128, &v26, &v25))
  {
LABEL_8:
    v11 = 0;
  }

  else
  {
    getLibIDs();
    v11 = _MergedGlobals_2[v7 + 1];
    if (v26)
    {
      v15 = *v9;
      v16 = &v28[v15 + 1];
      v17 = ~v15 + v6;
      v18 = &off_1E6A1DD40;
      v19 = 240;
      while (1)
      {
        v20 = *(v18 - 2);
        if (v17 > v20 && !strncasecmp(v16, *v18, *(v18 - 2)) && v16[v20] == 47)
        {
          break;
        }

        v18 += 3;
        v19 -= 24;
        if (!v19)
        {
          goto LABEL_8;
        }
      }

      if (*(v25 + 468))
      {
        if ([(FSNode *)v5 isDirectory])
        {
          MEMORY[0x1EEE9AC00]();
          strlcpy(v23 - ((v17 + 17) & 0xFFFFFFFFFFFFFFF0), v16, v17 + 2);
          *(v23 + v17 - ((v17 + 17) & 0xFFFFFFFFFFFFFFF0)) = 47;
          [(_LSDatabase *)a1->db store];
          v21 = _CSGetStringForCharacters();
        }

        else
        {
          [(_LSDatabase *)a1->db store];
          v21 = _CSGetStringForCharacters();
        }

        if (v21)
        {
          [(_LSDatabase *)a1->db store];
          v22 = *(v25 + 468);
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = ___ZL48_LSGetLibraryBundleIdentifierAndItemIndexForNodeP9LSContextP6FSNodePl_block_invoke;
          v23[3] = &__block_descriptor_44_e14_v24__0I8I12_16l;
          v24 = v21;
          v23[4] = a3;
          _CSArrayEnumerateAllValues();
        }
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

BOOL _LSRegisterLibrary(uint64_t *a1, void *a2, int a3, void *a4)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = _LSPathForBundleLibraryIdentifier(v7);
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  if (!v8)
  {
    if (a4)
    {
      v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -43, 0, "_LSRegisterLibrary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 3154);
      v9 = 0;
      goto LABEL_19;
    }

    v9 = 0;
    goto LABEL_30;
  }

  v9 = [[FSNode alloc] initWithFileSystemRepresentation:*(v8 + 8) flags:8 error:a4];
  if (!v9)
  {
    goto LABEL_30;
  }

  v10 = _LSBundleFindWithNode(a1, v9, &v25, &v24);
  if (v10 != -9499)
  {
    if (v10)
    {
      if (a4)
      {
        v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v10, 0, "_LSRegisterLibrary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 3161);
LABEL_19:
        v16 = 0;
        *a4 = v17;
        goto LABEL_31;
      }

LABEL_30:
      v16 = 0;
      goto LABEL_31;
    }

    if (!_LSBundleNeedsRegistration(a1, v9, a3, v25, v24))
    {
      goto LABEL_30;
    }
  }

  if (!_LSContainerFindOrRegisterWithNode(a1, v9, a3, &v23, 0, &v22, a4))
  {
    goto LABEL_30;
  }

  if (!v25)
  {
    v18 = _LSBundleFindWithNode(a1, v9, &v25, &v24);
    if (v18 != -9499)
    {
      if (!v18)
      {
        if (!_LSBundleNeedsRegistration(a1, v9, a3, v25, v24))
        {
          goto LABEL_30;
        }

        goto LABEL_8;
      }

      if (a4)
      {
        v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v18, 0, "_LSRegisterLibrary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 3175);
        goto LABEL_19;
      }

      goto LABEL_30;
    }
  }

LABEL_8:
  v11 = objc_alloc_init(LSRegistrationInfo);
  v11->version = 7;
  v11->action = 205;
  v11->options = a3;
  v11->containerUnit = v23;
  v11->bundleUnit = v25;
  v11->bundleClass = 8;
  if (_LSGetItemInfoFlagsForNode(a1, v9, &v11->itemFlags, a4) && [(FSNode *)v9 getContentModificationDate:&v11->contentModDate error:a4]&& [(FSNode *)v9 getInodeNumber:&v11->inoBundle error:a4]&& ([(FSNode *)v9 bookmarkDataRelativeToNode:v22 error:a4], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v26 = *MEMORY[0x1E695E4F0];
    v27[0] = v7;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v14 = [(FSNode *)v9 URL];
    v15 = _LSDispatchRegistration(a1, v11, v12, v14, v13, &v11->bundleUnit, 0, 0, v21, v22);

    v16 = v15 == 0;
    if (a4 && v15)
    {
      *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v15, 0, "_LSRegisterLibrary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 3215);
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_31:
  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

id getNeedsRegistrationLog(void)
{
  if (getNeedsRegistrationLog(void)::once != -1)
  {
    getNeedsRegistrationLog();
  }

  v1 = getNeedsRegistrationLog(void)::result;

  return v1;
}

uint64_t _LSRegisterBundleNode(uint64_t *a1, unsigned int a2, void *a3, void *a4, unsigned int a5, FSNode *a6, const __CFArray **a7, const __CFArray **a8, const __CFURL *a9, id *a10)
{
  v35 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v17 = a4;
  v18 = objc_alloc_init(LSRegistrationInfo);
  v18->bundleClass = _LSGetBundleClassForNode(a1, v17);
  bundleClass = v18->bundleClass;
  if (bundleClass == 3 || bundleClass == 0)
  {
    if (a10)
    {
      v21 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10811, 0, "_LSRegisterBundleNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 2145);
      v22 = 0;
      v23 = 0;
      goto LABEL_26;
    }

LABEL_28:
    v22 = 0;
    v23 = 0;
    if (!a6)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

  if ((a5 & 0x40) != 0 && bundleClass == 2)
  {
    v18->bundleClass = 16;
  }

  v18->version = 7;
  v18->action = 203;
  v18->options = a5;
  v18->containerUnit = a2;
  if (*a9)
  {
    v18->bundleUnit = *a9;
  }

  if (!_LSGetItemInfoFlagsForNode(a1, v17, &v18->itemFlags, a10) || ![(FSNode *)v17 getContentModificationDate:&v18->contentModDate error:a10])
  {
    goto LABEL_28;
  }

  v23 = [(FSNode *)v17 bookmarkDataRelativeToNode:v32 error:a10];
  if (v23 && [(FSNode *)v17 getInodeNumber:&v18->inoBundle error:a10]&& [(FSNode *)v17 getFileSystemRepresentation:v34 error:a10])
  {
    if ((v18->options & 4) == 0)
    {
      v33 = -2;
      if (![(FSNode *)v17 getOwnerUID:&v33 error:a10])
      {
        goto LABEL_32;
      }

      if (!v33 && _LSPathIsTrusted(v34))
      {
        v18->options |= 2u;
      }
    }

    v24 = objc_autoreleasePoolPush();
    v25 = _LSRegisterDirectoryNode(a1, v17, v18, v23, a6, a7, a8, a9, v31);
    objc_autoreleasePoolPop(v24);
    if (!v25)
    {
      v22 = 1;
      if (!a6)
      {
        goto LABEL_45;
      }

      goto LABEL_33;
    }

    if (a10)
    {
      v21 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v25, 0, "_LSRegisterBundleNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 2245);
      v22 = 0;
LABEL_26:
      *a10 = v21;
      if (!a6)
      {
        goto LABEL_45;
      }

LABEL_33:
      if (*MEMORY[0x1E695E4F0])
      {
        Value = CFDictionaryGetValue(a6, *MEMORY[0x1E695E4F0]);
        TypeID = CFStringGetTypeID();
        if (!Value || !TypeID || CFGetTypeID(Value) == TypeID)
        {
          if (v22)
          {
LABEL_38:
            v28 = @"success";
LABEL_44:
            _LSLogStepFinished(4, v22, Value, &cfstr_RegisteredBund.isa, v28);

            goto LABEL_45;
          }

LABEL_41:
          if (a10)
          {
            v28 = [*a10 description];
          }

          else
          {
            v28 = @"untracked error";
          }

          goto LABEL_44;
        }
      }

      else
      {
        CFStringGetTypeID();
      }

      Value = 0;
      if (v22)
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }
  }

LABEL_32:
  v22 = 0;
  if (a6)
  {
    goto LABEL_33;
  }

LABEL_45:

  v29 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t _LSPathForBundleLibraryIdentifier(const __CFString *a1)
{
  if (CFEqual(a1, @"com.apple.system-library"))
  {
    v2 = 0;
    return &libPaths + 16 * v2;
  }

  if (CFEqual(a1, @"com.apple.local-library"))
  {
    v2 = 1;
    return &libPaths + 16 * v2;
  }

  if (CFEqual(a1, @"com.apple.network-library"))
  {
    v2 = 2;
    return &libPaths + 16 * v2;
  }

  if (CFEqual(a1, @"com.apple.apple-internal-library"))
  {
    v2 = 3;
    return &libPaths + 16 * v2;
  }

  return 0;
}

uint64_t _LSDispatchRegistration(LSContext *a1, char *a2, LSRegistrationInfo *a3, NSData *a4, FSNode *a5, const __CFURL *a6, const __CFArray **a7, unsigned __int8 *a8, const __CFArray **a9, unsigned __int8 *a10)
{
  v28 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v18 = a3;
  context = objc_autoreleasePoolPush();
  if ([__LSDefaultsGetSharedInstance() hasServer])
  {
    if ((v17[19] & 1) == 0)
    {
      BundleDataAndRegister = _LSRegisterItemInfo(v17, v18, 0, a4, a5, a6, a7, a8);
      goto LABEL_14;
    }
  }

  else if (!v17)
  {
    v20 = objc_alloc_init(LSRegistrationInfo);
    goto LABEL_7;
  }

  v20 = [v17 mutableCopy];
LABEL_7:
  v21 = v20;
  BundleDataAndRegister = _LSServerCreateBundleDataAndRegister(a1, v20, v18, a4, a5, a6, a7, a8);
  if (BundleDataAndRegister == -10675)
  {
    if ((v21->options & 2) != 0)
    {
      BundleDataAndRegister = 4294956621;
    }

    else
    {
      v22 = _LSInstallLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = a4;
        _os_log_impl(&dword_18162D000, v22, OS_LOG_TYPE_DEFAULT, "Retrying registration of %@ with trusted bit", buf, 0xCu);
      }

      v21->options |= 2u;
      BundleDataAndRegister = _LSServerCreateBundleDataAndRegister(a1, v21, v18, a4, a5, a6, a7, a8);
    }
  }

LABEL_14:
  objc_autoreleasePoolPop(context);

  v23 = *MEMORY[0x1E69E9840];
  return BundleDataAndRegister;
}

uint64_t _LSUnregisterBundle(_LSDatabase **a1, uint64_t a2, uint64_t a3)
{
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = -10810;
  v6 = objc_autoreleasePoolPush();
  if ([__LSDefaultsGetSharedInstance() isServer] & 1) == 0 && (objc_msgSend(__LSDefaultsGetSharedInstance(), "hasServer"))
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = ___LSUnregisterBundle_block_invoke_186;
    v37[3] = &unk_1E6A18DF0;
    v37[4] = &v47;
    v7 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v37];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = ___LSUnregisterBundle_block_invoke_2;
    v36[3] = &unk_1E6A1CE28;
    v36[4] = &v47;
    [v7 unregisterBundleUnit:a2 options:a3 completionHandler:v36];
    if ((a3 & 0x3000000) == 0x2000000 && !*(v48 + 6))
    {
      v35 = 0;
      v8 = _LSContextUpdate(a1, 1, &v35);
      v9 = v35;
      v10 = v9;
      if (v8)
      {
        v11 = 0;
      }

      else
      {
        v11 = _LSGetOSStatusFromNSError(v9);
      }

      *(v48 + 6) = v11;
    }

    goto LABEL_37;
  }

  v43 = a1;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v12 = +[_LSDServiceDomain defaultServiceDomain];
  v13 = LaunchServices::Database::Context::_get(&v43, v12, 0);

  if (!v13)
  {
    v24 = +[_LSDServiceDomain defaultServiceDomain];
    v25 = LaunchServices::Database::Context::_get(&v43, v24, 0);

    if (v25)
    {
      v26 = 0;
    }

    else
    {
      v30 = v46;
      v26 = v30;
      if (v30)
      {
        v27 = _LSGetOSStatusFromNSError(v30);
        goto LABEL_28;
      }
    }

    v27 = 0;
LABEL_28:

    goto LABEL_29;
  }

  *(v48 + 6) = 0;
  v14 = *v13;
  if ((a3 & 0x20000000) != 0)
  {
    [(_LSDatabase *)v14 store];
    v28 = *([(_LSDatabase *)*v13 schema]+ 1588);
    if (CSStoreGetUnit())
    {
      v23 = _LSPluginUnregister(*v13, a2);
LABEL_22:
      *(v48 + 6) = v23;
      if (!v23)
      {
        _LSDatabaseGetSequenceNumber(*v13);
        v29 = *v13;
        _LSDatabaseSetSequenceNumber();
        if (!*(v48 + 6))
        {
          _LSArmSaveTimer(5);
        }
      }

      goto LABEL_30;
    }
  }

  else
  {
    [(_LSDatabase *)v14 store];
    v15 = *([(_LSDatabase *)*v13 schema]+ 4);
    if (CSStoreGetUnit())
    {
      v16 = _LSBundleGet(*v13, a2);
      v17 = v16;
      if (*(v16 + 168) == 2)
      {
        v18 = *(v16 + 12);
        v39 = 0;
        v40 = &v39;
        v41 = 0x2020000000;
        v42 = 0;
        v19 = *v13;
        v37[5] = MEMORY[0x1E69E9820];
        v37[6] = 3221225472;
        v37[7] = ___LSUnregisterBundle_block_invoke;
        v37[8] = &unk_1E6A1DC48;
        v38 = a2;
        v37[10] = v13;
        v37[11] = v17;
        v37[9] = &v39;
        _LSDatabaseEnumeratingBindingMap(v19);
        if ((v40[3] & 1) == 0)
        {
          v20 = *(v17 + 12);
          v21 = _LSDatabaseGetNSStringFromString(*v13);
          v22 = _LSAppProtectionLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            _LSUnregisterBundle_cold_1();
          }

          [_LSDAppProtectionClient cleanupDeletedApplication:v21];
        }

        _Block_object_dispose(&v39, 8);
      }

      v23 = _LSBundleRemove(*v13, a2, 1);
      goto LABEL_22;
    }
  }

  v27 = -9499;
LABEL_29:
  *(v48 + 6) = v27;
LABEL_30:
  if (v43 && v45 == 1)
  {
    _LSContextDestroy(v43);
  }

  v31 = v44;
  v43 = 0;
  v44 = 0;

  v45 = 0;
  v32 = v46;
  v46 = 0;

LABEL_37:
  objc_autoreleasePoolPop(v6);
  v33 = *(v48 + 6);
  _Block_object_dispose(&v47, 8);
  return v33;
}

void sub_181779AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  LaunchServices::Database::Context::~Context((v30 - 144));
  _Block_object_dispose((v30 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t _LSUpdateContainerState(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = -10810;
  if (v5)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus _LSUpdateContainerState(__strong LSDatabaseRef, LSContainerID, LSContainerData *)"}];
    [v37 handleFailureInFunction:v38 file:@"LSRegistration.mm" lineNumber:3468 description:{@"Invalid parameter not satisfying: %@", @"inDB != NULL"}];

    if (a2)
    {
      goto LABEL_3;
    }
  }

  v39 = [MEMORY[0x1E696AAA8] currentHandler];
  v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus _LSUpdateContainerState(__strong LSDatabaseRef, LSContainerID, LSContainerData *)"}];
  [v39 handleFailureInFunction:v40 file:@"LSRegistration.mm" lineNumber:3469 description:{@"Invalid parameter not satisfying: %@", @"inContainerUnit != kCSStoreNullID"}];

LABEL_3:
  v6 = objc_autoreleasePoolPush();
  v7 = _LSContainerGet(v5);
  v8 = v7;
  if (v7)
  {
    v52 = 0;
    v53 = &v52;
    v54 = 0x4812000000;
    v55 = __Block_byref_object_copy__198;
    v56 = __Block_byref_object_dispose__199;
    v57 = &unk_1818533FF;
    v9 = *v7;
    v59 = *(v7 + 16);
    v58 = v9;
    if (_LSContainerDataNeedsUpdate(&v58))
    {
      if (([__LSDefaultsGetSharedInstance() isServer] & 1) != 0 || (objc_msgSend(__LSDefaultsGetSharedInstance(), "hasServer") & 1) == 0)
      {
        v51 = 0;
        v11 = *(v8 + 12);
        if (v11)
        {
          v12 = _LSAliasGet(v5, v11);
          if (v12)
          {
            v50 = 0;
            v13 = [FSNode getVolumeIdentifier:&v51 forBookmarkData:v12 error:&v50];
            v14 = v50;
            v15 = v14;
            if (v13)
            {
              v16 = 0;
            }

            else
            {
              v16 = _LSGetOSStatusFromNSError(v14);
            }

            *(v61 + 6) = v16;
          }

          else
          {
            *(v61 + 6) = -41;
          }
        }

        else if ((*v8 & 2) != 0)
        {
          v17 = +[FSNode rootVolumeNode];
          v49 = 0;
          v18 = [v17 getVolumeIdentifier:&v51 error:&v49];
          v19 = v49;

          if (v18)
          {
            v20 = 0;
          }

          else
          {
            v20 = _LSGetOSStatusFromNSError(v19);
          }

          *(v61 + 6) = v20;
        }

        else
        {
          *(v61 + 6) = -35;
        }

        v21 = v61;
        v22 = *(v61 + 6);
        if (v51)
        {
          v23 = v22 == 0;
        }

        else
        {
          v23 = 0;
        }

        v24 = v53;
        if (v23)
        {
          v25 = 1;
        }

        else
        {
          v25 = -1;
        }

        if (v22)
        {
          v26 = 0;
        }

        else
        {
          v26 = v51;
        }

        *(v53 + 50) = v25;
        *(v24 + 52) = v26;
        *(v21 + 6) = 0;
        v27 = v24[6];
        v28 = v24[7];
        v29 = *(v24 + 16);
        if (v27 != *v8 || v28 != *(v8 + 8) || v29 != *(v8 + 16))
        {
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = ___LSUpdateContainerState_block_invoke;
          v45[3] = &unk_1E6A1DC70;
          v47 = &v52;
          v46 = v5;
          v48 = a2;
          v32 = MEMORY[0x1865D71B0](v45);
          if ([__LSDefaultsGetSharedInstance() isServer])
          {
            v33 = +[LSDBExecutionContext sharedServerInstance];
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = ___LSUpdateContainerState_block_invoke_2;
            v43[3] = &unk_1E6A1A660;
            v44 = v32;
            [(LSDBExecutionContext *)v33 performAsyncWrite:v43];
          }

          else
          {
            v32[2](v32);
          }
        }
      }

      else
      {
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = ___LSUpdateContainerState_block_invoke_3;
        v42[3] = &unk_1E6A18DF0;
        v42[4] = &v60;
        v10 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v42];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = ___LSUpdateContainerState_block_invoke_4;
        v41[3] = &unk_1E6A1DC98;
        v41[4] = &v60;
        v41[5] = &v52;
        [v10 updateContainerUnit:a2 completionHandler:v41];
      }
    }

    else
    {
      *(v61 + 6) = 0;
    }

    if (a3 && !*(v61 + 6))
    {
      v34 = *(v53 + 16);
      *a3 = *(v53 + 3);
      *(a3 + 16) = v34;
    }

    _Block_object_dispose(&v52, 8);
  }

  else
  {
    *(v61 + 6) = -10817;
  }

  objc_autoreleasePoolPop(v6);
  v35 = *(v61 + 6);
  _Block_object_dispose(&v60, 8);

  return v35;
}

void sub_18177A274(_Unwind_Exception *a1)
{
  _Block_object_dispose((v4 - 128), 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__198(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u32[0] = a2[4].n128_u32[0];
  a1[3] = result;
  return result;
}

uint64_t _LSRegisterTypeDeclarationsForBundle(void *a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v9 = a1;
  v10 = a5;
  if (!a3)
  {
    __assert_rtn("_LSRegisterTypeDeclarationsForBundle", "LSRegistration.mm", 3674, "inBundleData");
  }

  if (*(a3 + 168) == 16)
  {
    v11 = 0;
  }

  else
  {
    v11 = _LSRegisterTypeDeclarationsCommon(v9, a2, *(a3 + 476), a4, v10);
  }

  return v11;
}

uint64_t _LSRegisterTypeDeclarationsCommon(void *a1, uint64_t a2, int a3, const void *a4, void *a5)
{
  v8 = a1;
  v9 = a5;
  v10 = 0;
  if (v8 && a3 && a4)
  {
    v11 = CFGetTypeID(a4);
    if (v11 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(a4);
      if (Count < 1)
      {
        v10 = 0;
      }

      else
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a4, i);
          TypeID = CFDictionaryGetTypeID();
          if (ValueAtIndex && TypeID)
          {
            CFGetTypeID(ValueAtIndex);
          }

          v10 = _UTTypeAddWithDeclarationDictionary();
          if (!v10)
          {
            [(_LSDatabase *)v8 store];
            _CSArrayAppendValue();
          }
        }
      }
    }

    else
    {
      v10 = 4294956479;
    }
  }

  return v10;
}

uint64_t _LSRegisterTypeDeclarationsForPlugin(void *a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v9 = a1;
  v10 = a5;
  if (!a3)
  {
    __assert_rtn("_LSRegisterTypeDeclarationsForPlugin", "LSRegistration.mm", 3694, "inPluginData");
  }

  v11 = _LSRegisterTypeDeclarationsCommon(v9, a2, *(a3 + 232), a4, v10);

  return v11;
}

uint64_t _LSRegisterDocumentTypes(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v134 = v10;
  v159 = *MEMORY[0x1E69E9840];
  v139 = v1;
  v138 = v5;
  if (v7 && (theArray = v7, v11 = CFGetTypeID(v7), v11 == CFArrayGetTypeID()))
  {
    Count = CFArrayGetCount(v7);
    _LSBindingListBufferInit(v139, v143);
    if (Count >= 1)
    {
      v13 = 0;
      v135 = v3 | 0x20;
      v127 = v3 | 0x820;
      v131 = *MEMORY[0x1E695E178];
      key = *MEMORY[0x1E695E170];
      v124 = *MEMORY[0x1E695E168];
      v126 = *MEMORY[0x1E695E4F0];
      v125 = *MEMORY[0x1E695E160];
      *&v12 = 138412290;
      v123 = v12;
      do
      {
        idx = v13;
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
        TypeID = CFDictionaryGetTypeID();
        if (ValueAtIndex && (!TypeID || CFGetTypeID(ValueAtIndex) == TypeID))
        {
          v16 = objc_autoreleasePoolPush();
          v142 = [MEMORY[0x1E695DF70] array];
          v17 = objc_opt_class();
          v140 = [ValueAtIndex objectForKey:@"LSHandlerRank"];
          if (v17 && v140 && (objc_opt_isKindOfClass() & 1) == 0)
          {

            v140 = 0;
          }

          v18 = objc_opt_class();
          v19 = [ValueAtIndex objectForKey:@"LSItemContentTypes"];
          v20 = v19;
          if (v18 && v19 && (objc_opt_isKindOfClass() & 1) == 0)
          {

            v20 = 0;
          }

          if ([v140 isEqualToString:{@"Owner", v123}] && objc_msgSend(v20, "count"))
          {
            v21 = [MEMORY[0x1E695DF70] array];
            v22 = [MEMORY[0x1E695DF70] array];
            v136 = v16;
            v147 = 0u;
            v146 = 0u;
            v145 = 0u;
            v144 = 0u;
            v23 = v20;
            v24 = [v23 countByEnumeratingWithState:&v144 objects:v149 count:16];
            if (v24)
            {
              v25 = *v145;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v145 != v25)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v27 = *(*(&v144 + 1) + 8 * i);
                  if (_NSIsNSString())
                  {
                    if (_UTTypeIsWildcard(v27))
                    {
                      v28 = v21;
                    }

                    else
                    {
                      v28 = v22;
                    }

                    [v28 addObject:v27];
                  }
                }

                v24 = [v23 countByEnumeratingWithState:&v144 objects:v149 count:16];
              }

              while (v24);
            }

            v16 = v136;
            v29 = v22;
            v30 = v21;
          }

          else
          {
            v29 = 0;
            v30 = 0;
          }

          if ([v30 count])
          {
            v33 = _LSDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(v156) = v123;
              *(&v156 + 4) = v30;
              _os_log_debug_impl(&dword_18162D000, v33, OS_LOG_TYPE_DEBUG, "Decomposeing docuemnt claim for types: %@", &v156, 0xCu);
            }

            v34 = [ValueAtIndex mutableCopy];
            [v34 setObject:v30 forKey:@"LSItemContentTypes"];
            [v34 setObject:@"Default" forKey:@"LSHandlerRank"];
            [(__CFArray *)v142 addObject:v34];
            if ([v29 count])
            {
              v35 = [ValueAtIndex mutableCopy];
              [v35 setObject:v29 forKey:@"LSItemContentTypes"];
              [(__CFArray *)v142 addObject:v35];
            }
          }

          else
          {
            [(__CFArray *)v142 addObject:ValueAtIndex];
          }

          objc_autoreleasePoolPop(v16);
          if (v142)
          {
            for (j = 0; ; ++j)
            {
              if (j >= CFArrayGetCount(v142))
              {
                CFRelease(v142);
                goto LABEL_200;
              }

              v37 = CFArrayGetValueAtIndex(v142, j);
              v38 = CFDictionaryGetTypeID();
              if (v37 && v38 && CFGetTypeID(v37) != v38)
              {
                v37 = 0;
              }

              v39 = v139;
              v141 = v138;
              v148 = 0;
              v151 = 0;
              v150 = 0u;
              memset(v149, 0, sizeof(v149));
              *&v156 = 0;
              *(&v156 + 1) = &v156;
              v157 = 0x2020000000;
              v158 = 0;
              if (*(v9 + 20) == 6 && (*(v9 + 176) & 2) == 0)
              {
                v40 = _LSRegistrationLog();
                if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_98;
                }

                *buf = 134217984;
                v153 = v134;
                v41 = v40;
                v42 = OS_LOG_TYPE_INFO;
                v43 = "Skipping document claims for bundle %llu because it is Mac Catalyst but does not support open-in-place";
LABEL_96:
                v65 = 12;
                goto LABEL_97;
              }

              if (*(v9 + 168) == 16)
              {
                v40 = _LSDefaultLog();
                if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_98;
                }

                *buf = 134217984;
                v153 = v134;
                v41 = v40;
                v42 = OS_LOG_TYPE_INFO;
                v43 = "Skipping document claims for bundle %llu because it is a remote placeholder";
                goto LABEL_96;
              }

              if ((*(v9 + 179) & 0x10) != 0)
              {
                v40 = _LSDefaultLog();
                if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_98;
                }

                *buf = 134217984;
                v153 = v134;
                v41 = v40;
                v42 = OS_LOG_TYPE_INFO;
                v43 = "Skipping document claims for bundle %llu because it is an App Clip";
                goto LABEL_96;
              }

              if (v37)
              {
                v44 = CFGetTypeID(v37);
                if (v44 == CFDictionaryGetTypeID())
                {
                  DWORD2(v149[0]) = v135;
                  v45 = v135;
                  if (_LSGetBooleanFromDict(v37, @"LSDefaultShareModeCollaboration"))
                  {
                    v45 = v127;
                    DWORD2(v149[0]) = v127;
                  }

                  if (_LSGetBooleanFromDict(v37, @"LSTypeIsPackage"))
                  {
                    v45 |= 8u;
                    DWORD2(v149[0]) = v45;
                  }

                  if (_LSGetBooleanFromDict(v37, @"LSIsAppleDefaultForType"))
                  {
                    v45 |= 1u;
                    DWORD2(v149[0]) = v45;
                    *(*(&v156 + 1) + 24) = 1;
                  }

                  if ((*(v9 + 164) & 0x10) != 0 || (v46 = *(v9 + 352), v47 = v39, -[_LSDatabase store](v39), v48 = _CSStringCopyCFString(), v49 = [v48 isEqualToString:@"System"], v48, v49))
                  {
                    if (_LSGetBooleanFromDict(v37, @"LSIsAppleDefaultNoOverrideForType"))
                    {
                      v45 |= 3u;
                      DWORD2(v149[0]) = v45;
                      *(*(&v156 + 1) + 24) = 1;
                    }
                  }

                  if (*(v9 + 164))
                  {
                    DWORD2(v149[0]) = v45 | 4;
                  }

                  WORD6(v149[0]) = _LSGetHandlerRankFromDictKey(v37, v50);
                  v137 = _LSGetRoleFromDictKey(v37, v131);
                  HIWORD(v149[0]) = v137;
                  v51 = *(v9 + 168);
                  if (!v137)
                  {
                    if (v51 == 2)
                    {
                      v52 = 2;
                    }

                    else
                    {
                      v52 = 1;
                    }

                    LOBYTE(v137) = v52;
                    HIWORD(v149[0]) = v52;
                  }

                  if (v51 == 2 || (v137 & 0x11) != 0)
                  {
                    break;
                  }
                }
              }

LABEL_99:
              _Block_object_dispose(&v156, 8);

              _LSBindingListBufferReset(v39, v143);
            }

            v53 = CFStringGetTypeID();
            Value = CFDictionaryGetValue(v37, key);
            v55 = Value;
            if (Value && CFGetTypeID(Value) == v53)
            {
              v56 = v55;
              v57 = [v141 objectForKeyedSubscript:v56];
              DWORD1(v149[1]) = LaunchServices::LocalizedString::Add(v39, v57, v56);
            }

            if (!_LSGetBooleanFromDict(v37, @"CFBundleTypeIconSystemGenerated"))
            {
              v58 = CFDictionaryGetValue(v37, @"CFBundleTypeIconFiles");
              v59 = CFArrayGetTypeID();
              if (v58 && (!v59 || CFGetTypeID(v58) == v59))
              {
                v60 = CFArrayGetCount(v58);
                if (v60 >= 1)
                {
                  v61 = 0;
                  v62 = 0;
                  do
                  {
                    v63 = CFArrayGetValueAtIndex(v58, v62);
                    v64 = CFStringGetTypeID();
                    if (v63 && (!v64 || CFGetTypeID(v63) == v64))
                    {
                      *(&v149[1] + v61++ + 3) = _LSDatabaseCreateStringForCFString(v39, v63, 0);
                    }

                    ++v62;
                  }

                  while (v62 < v60 && v61 < 8);
                }
              }

              else if (v124)
              {
                v66 = CFDictionaryGetValue(v37, v124);
                v67 = CFStringGetTypeID();
                if (v66 && (!v67 || CFGetTypeID(v66) == v67))
                {
                  HIDWORD(v149[1]) = _LSDatabaseCreateStringForCFString(v39, v66, 0);
                }
              }

              else
              {
                CFStringGetTypeID();
              }

              v68 = CFDictionaryGetValue(v37, @"LSIconName");
              v69 = CFStringGetTypeID();
              if (v68 && (!v69 || CFGetTypeID(v68) == v69))
              {
                HIDWORD(v150) = _LSDatabaseCreateStringForCFString(v39, v68, 0);
              }
            }

            if (_LSGetBooleanFromDict(v37, @"NSResolvesUbiquitousConflicts") || CFDictionaryContainsKey(v37, @"NSDocumentClass"))
            {
              DWORD2(v149[0]) |= 0x200u;
            }

            v70 = CFDictionaryGetValue(v37, @"_LSBundleLibraryDelegate");
            v71 = CFStringGetTypeID();
            if (v70 && v71 && CFGetTypeID(v70) != v71)
            {
              v70 = 0;
            }

            LODWORD(v151) = _LSDatabaseCreateStringForCFString(v39, v70, 0);
            if (!v151)
            {
              goto LABEL_129;
            }

            if (v126)
            {
              v72 = CFDictionaryGetValue(v37, v126);
              v73 = CFStringGetTypeID();
              if (v72 && (!v73 || CFGetTypeID(v72) == v73))
              {
                v74 = DWORD2(v149[0]);
                Length = CFStringGetLength(v72);
                if (Length > CFStringGetLength(@"com.apple."))
                {
                  v160.length = CFStringGetLength(@"com.apple.");
                  v160.location = 0;
                  if (CFStringCompareWithOptions(v72, @"com.apple.", v160, 1uLL) == kCFCompareEqualTo)
                  {
                    v76 = v74 | 4;
                    goto LABEL_128;
                  }
                }

LABEL_127:
                v76 = v74 & 0xFFFFFFFB;
LABEL_128:
                DWORD2(v149[0]) = v76;
LABEL_129:
                LODWORD(v149[1]) = v134;
                HIDWORD(v151) = 0;
                v77 = CFDictionaryGetValue(v37, @"LSItemContentTypes");
                v78 = CFArrayGetTypeID();
                if (v77 && (!v78 || CFGetTypeID(v77) == v78))
                {
                  v79 = CFGetTypeID(v77);
                  if (v79 == CFArrayGetTypeID())
                  {
                    v80 = CFArrayGetCount(v77);
                    if (v80 >= 1)
                    {
                      v81 = 0;
                      v132 = 0;
                      do
                      {
                        v82 = CFArrayGetValueAtIndex(v77, v81);
                        v83 = CFStringGetTypeID();
                        if (v82 && (!v83 || CFGetTypeID(v82) == v83))
                        {
                          v84 = CFStringGetTypeID();
                          if (v84 == CFGetTypeID(v82) && ((v137 & 8) == 0 || !UTTypeEqual(v82, @"com.apple.application")))
                          {
                            active = _UTGetActiveTypeForCFStringIdentifier(v39, v82, 0);
                            if (active && (*(active + 9) & 2) != 0)
                            {
                              DWORD2(v149[0]) |= 0x400u;
                              v132 = 1;
                            }

                            StringForCFString = _LSDatabaseCreateStringForCFString(v39, v82, 1);
                            if (StringForCFString)
                            {
                              v87 = v39;
                              v88 = [(_LSDatabase *)v39 schema];
                              if (!_LSBindingListBufferAppend(v39, v143, *(v88 + 216), StringForCFString))
                              {
                                goto LABEL_99;
                              }

                              v89 = v39;
                              [(_LSDatabase *)v39 store];
                              _CSStringRelease();
                            }
                          }
                        }

                        ++v81;
                      }

                      while (v80 != v81);
                      goto LABEL_189;
                    }
                  }

                  goto LABEL_191;
                }

                if (*(v9 + 20) >= 2u)
                {
                  v104 = _LSDefaultLog();
                  if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
                  {
                    v105 = *(v9 + 20);
                    *buf = 134218240;
                    v153 = v134;
                    v154 = 2048;
                    v155 = v105;
                    _os_log_impl(&dword_18162D000, v104, OS_LOG_TYPE_INFO, "Skipping legacy claim registration for bundle %llu because it's the wrong platform (is %llu)", buf, 0x16u);
                  }

                  goto LABEL_191;
                }

                if (v125)
                {
                  v90 = CFDictionaryGetValue(v37, v125);
                  v91 = CFArrayGetTypeID();
                  if (v90 && (!v91 || CFGetTypeID(v90) == v91))
                  {
                    v92 = CFArrayGetCount(v90);
                    if (v92 >= 1)
                    {
                      v93 = 0;
                      v132 = 0;
                      do
                      {
                        v94 = CFArrayGetValueAtIndex(v90, v93);
                        v95 = CFStringGetTypeID();
                        if (v94 && (!v95 || CFGetTypeID(v94) == v95))
                        {
                          v96 = CFStringGetTypeID();
                          if (v96 == CFGetTypeID(v94) && (CFStringCompare(v94, @"app", 1uLL) || (v137 & 8) == 0))
                          {
                            v97 = _LSDatabaseCreateStringForCFString(v39, v94, 1);
                            if (v97)
                            {
                              v98 = v39;
                              v99 = [(_LSDatabase *)v39 schema];
                              if (!_LSBindingListBufferAppend(v39, v143, *(v99 + 320), v97))
                              {
                                goto LABEL_99;
                              }

                              v100 = v39;
                              [(_LSDatabase *)v39 store];
                              _CSStringRelease();
                            }

                            if (CFStringCompare(v94, @"*", 0))
                            {
                              if (*(*(&v156 + 1) + 24))
                              {
                                v101 = v39;
                                [(_LSDatabase *)v39 store];
                                v102 = v39;
                                [(_LSDatabase *)v39 schema];
                                *&v144 = MEMORY[0x1E69E9820];
                                *(&v144 + 1) = 3221225472;
                                *&v145 = ___ZL23_LSRegisterDocumentTypeP11_LSDatabasejPK12LSBundleDataPK14__CFDictionaryP12NSDictionaryIP8NSStringPS7_IS9_S9_EEjP19LSBindingListBuffer_block_invoke;
                                *(&v145 + 1) = &unk_1E6A19430;
                                v103 = v39;
                                *&v147 = v143;
                                *&v146 = v103;
                                *(&v146 + 1) = &v156;
                                _CSStringBindingEnumerate();
                              }
                            }

                            else
                            {
                              DWORD2(v149[0]) |= 0x10u;
                              v132 = 1;
                            }
                          }
                        }

                        ++v93;
                      }

                      while (v92 != v93);
LABEL_176:
                      v106 = CFDictionaryGetValue(v37, @"CFBundleTypeMIMETypes");
                      v107 = CFArrayGetTypeID();
                      if (v106 && (!v107 || CFGetTypeID(v106) == v107))
                      {
                        v108 = CFArrayGetCount(v106);
                        if (v108 >= 1)
                        {
                          for (k = 0; k != v108; ++k)
                          {
                            v110 = CFArrayGetValueAtIndex(v106, k);
                            v111 = CFStringGetTypeID();
                            if (v110 && v111 && CFGetTypeID(v110) != v111)
                            {
                              v110 = 0;
                            }

                            v112 = _LSDatabaseCreateStringForCFString(v39, v110, 1);
                            if (v112)
                            {
                              v113 = v39;
                              v114 = [(_LSDatabase *)v39 schema];
                              if (!_LSBindingListBufferAppend(v39, v143, *(v114 + 424), v112))
                              {
                                goto LABEL_99;
                              }

                              v115 = v39;
                              [(_LSDatabase *)v39 store];
                              _CSStringRelease();
                            }
                          }
                        }
                      }

LABEL_189:
                      if (v132)
                      {
                        v116 = *(_LSBundleGet(v39, v134) + 172);
                        _LSBundleSetFlags(v39);
                      }

LABEL_191:
                      v117 = _LSBindingListCreate(v39, v143, &v148);
                      if (v117 || (HIDWORD(v151) = v148, (v117 = _LSClaimAdd(v39, v149, &v148 + 1)) != 0) || (v118 = v39, [(_LSDatabase *)v39 store], v119 = *(v9 + 472), _CSArrayAppendValue(), v148) && !_LSBundleDataIsInUnsupportedLocation(v39, v9) && !_LSBundleDataGetUnsupportedFormatFlag() && (v117 = _LSBindingListActivate()) != 0)
                      {
                        v40 = _LSRegistrationLog();
                        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 67109120;
                          LODWORD(v153) = v117;
                          v41 = v40;
                          v42 = OS_LOG_TYPE_ERROR;
                          v43 = "Failed to register document type with error code: %d";
                          v65 = 8;
LABEL_97:
                          _os_log_impl(&dword_18162D000, v41, v42, v43, buf, v65);
                        }

LABEL_98:

                        goto LABEL_99;
                      }

                      goto LABEL_99;
                    }
                  }
                }

                else
                {
                  CFArrayGetTypeID();
                }

                v132 = 0;
                goto LABEL_176;
              }
            }

            else
            {
              CFStringGetTypeID();
            }

            v74 = DWORD2(v149[0]);
            goto LABEL_127;
          }
        }

        else
        {
          v31 = _LSRegistrationLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = CFArrayGetValueAtIndex(theArray, idx);
            LODWORD(v149[0]) = 138477827;
            *(v149 + 4) = v32;
            _os_log_impl(&dword_18162D000, v31, OS_LOG_TYPE_ERROR, "Unexpected value in document types array, not dictionary as expected, but %{private}@", v149, 0xCu);
          }
        }

LABEL_200:
        v13 = idx + 1;
      }

      while (idx + 1 != Count);
    }

    v120 = 0;
  }

  else
  {
    v120 = 4294956479;
  }

  v121 = *MEMORY[0x1E69E9840];
  return v120;
}

uint64_t _LSRegisterDefaultAppsClaims(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = LSCopyDefaultAppsClaimForBundle(v7, a2, a3, v8);
  if (v9)
  {
    v10 = _LSDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "Registering synthesized claim for default app categories: %@", buf, 0xCu);
    }

    v14 = v9;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    v11 = _LSRegisterDocumentTypes(v7);
    CFRelease(v9);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_18177BCC8(_Unwind_Exception *a1)
{
  CFRelease(v3);

  _Unwind_Resume(a1);
}

uint64_t _LSRegisterURLTypes(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v65 = v6;
  v75 = *MEMORY[0x1E69E9840];
  v7 = v1;
  v8 = v7;
  v68 = 0;
  if (*(v5 + 168) == 16)
  {
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v65;
      v10 = "Skipping URL claims for bundle %llu because it is a remote placeholder";
LABEL_96:
      _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_INFO, v10, &buf, 0xCu);
      goto LABEL_97;
    }

    goto LABEL_97;
  }

  if ((*(v5 + 179) & 0x10) != 0)
  {
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v65;
      v10 = "Skipping URL claims for bundle %llu because it is an App Clip";
      goto LABEL_96;
    }

LABEL_97:

    v15 = 0;
    goto LABEL_98;
  }

  _LSBindingListBufferInit(v7, v69);
  v11 = *(v5 + 304);
  v12 = v8;
  [(_LSDatabase *)v8 store];
  cf = _CSStringCopyCFString();
  if (!v3)
  {
LABEL_99:
    v15 = 0;
    goto LABEL_100;
  }

  v13 = CFGetTypeID(v3);
  if (v13 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v66 = Count;
      v15 = 0;
      v16 = 0;
      v64 = *MEMORY[0x1E695E178];
      key = *MEMORY[0x1E695E188];
      v59 = *MEMORY[0x1E695E180];
      v17 = *MEMORY[0x1E695E4F0];
      v61 = *MEMORY[0x1E695E4F0];
      v62 = *MEMORY[0x1E695E190];
      while (1)
      {
        v74 = 0;
        v72 = 0u;
        v73 = 0u;
        buf = 0u;
        v71 = 0u;
        v67 = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v16);
        TypeID = CFDictionaryGetTypeID();
        if (ValueAtIndex && (!TypeID || CFGetTypeID(ValueAtIndex) == TypeID))
        {
          v20 = CFGetTypeID(ValueAtIndex);
          if (v20 == CFDictionaryGetTypeID())
          {
            DWORD2(buf) |= 0x40u;
            if (_LSGetBooleanFromDict(ValueAtIndex, @"LSIsAppleDefaultForScheme"))
            {
              DWORD2(buf) |= 1u;
            }

            if (*(v5 + 164))
            {
              DWORD2(buf) |= 4u;
            }

            WORD6(buf) = _LSGetHandlerRankFromDictKey(ValueAtIndex, v21);
            v22 = _LSGetRoleFromDictKey(ValueAtIndex, v64);
            v23 = v22 ? v22 : 2;
            HIWORD(buf) = v23;
            v24 = *(v5 + 168);
            if (v24 == 2 || v24 == 14 || v23 == 1)
            {
              Value = CFDictionaryGetValue(ValueAtIndex, @"CFBundleRequiredCapabilities");
              v26 = CFArrayGetTypeID();
              if (!Value || v26 && CFGetTypeID(Value) != v26)
              {
                Value = CFDictionaryGetValue(ValueAtIndex, @"SBRequiredCapabilities");
                v27 = CFArrayGetTypeID();
                if (!Value || v27 && CFGetTypeID(Value) != v27)
                {
                  goto LABEL_32;
                }
              }

              v28 = CFGetTypeID(Value);
              if (v28 != CFArrayGetTypeID())
              {
                goto LABEL_32;
              }

              DWORD2(v71) = _LSDatabaseCreateStringArray(v8, Value, 0, 0);
              if (DWORD2(v71))
              {
                v15 = 0;
LABEL_32:
                v29 = CFStringGetTypeID();
                v30 = CFDictionaryGetValue(ValueAtIndex, key);
                v31 = v30;
                if (v30 && CFGetTypeID(v30) == v29)
                {
                  v32 = v31;
                  DWORD1(v71) = LaunchServices::LocalizedString::Add(v8, MEMORY[0x1E695E0F8], v32);
                }

                if (!_LSGetBooleanFromDict(ValueAtIndex, @"CFBundleTypeIconSystemGenerated"))
                {
                  v33 = CFDictionaryGetValue(ValueAtIndex, @"_LSIconPath");
                  v34 = CFStringGetTypeID();
                  if (v33 && (!v34 || CFGetTypeID(v33) == v34))
                  {
                    v35 = CFStringGetTypeID();
                    if (v35 == CFGetTypeID(v33))
                    {
                      DWORD2(buf) |= 0x1000u;
                      goto LABEL_48;
                    }
                  }

                  if (v59)
                  {
                    v33 = CFDictionaryGetValue(ValueAtIndex, v59);
                    v36 = CFStringGetTypeID();
                    if (!v33 || !v36 || CFGetTypeID(v33) == v36)
                    {
LABEL_48:
                      HIDWORD(v71) = _LSDatabaseCreateStringForCFString(v8, v33, 0);
                      goto LABEL_49;
                    }
                  }

                  else
                  {
                    CFStringGetTypeID();
                  }

                  v33 = 0;
                  goto LABEL_48;
                }

LABEL_49:
                v37 = CFDictionaryGetValue(ValueAtIndex, @"_LSBundleLibraryDelegate");
                v38 = CFStringGetTypeID();
                if (v37 && v38 && CFGetTypeID(v37) != v38)
                {
                  v37 = 0;
                }

                LODWORD(v74) = _LSDatabaseCreateStringForCFString(v8, v37, 0);
                if (!v74)
                {
                  goto LABEL_65;
                }

                if (v61)
                {
                  v39 = CFDictionaryGetValue(ValueAtIndex, v61);
                  v40 = CFStringGetTypeID();
                  if (v39 && (!v40 || CFGetTypeID(v39) == v40))
                  {
                    v41 = DWORD2(buf);
                    Length = CFStringGetLength(v39);
                    if (Length > CFStringGetLength(@"com.apple."))
                    {
                      v76.length = CFStringGetLength(@"com.apple.");
                      v76.location = 0;
                      if (CFStringCompareWithOptions(v39, @"com.apple.", v76, 1uLL) == kCFCompareEqualTo)
                      {
                        v43 = v41 | 4;
                        goto LABEL_64;
                      }
                    }

LABEL_63:
                    v43 = v41 & 0xFFFFFFFB;
LABEL_64:
                    DWORD2(buf) = v43;
LABEL_65:
                    LODWORD(v71) = v65;
                    HIDWORD(v74) = 0;
                    if (!_LSGetBooleanFromDict(ValueAtIndex, @"CFBundleURLIsPrivate") || (v44 = BYTE8(buf), DWORD2(buf) |= 0x80u, (v44 & 4) != 0))
                    {
                      if (_LSGetBooleanFromDict(ValueAtIndex, @"CFBundleURLAlwaysAvailable"))
                      {
                        DWORD2(buf) |= 0x100u;
                      }

                      if (v62)
                      {
                        v45 = CFDictionaryGetValue(ValueAtIndex, v62);
                        v46 = CFArrayGetTypeID();
                        if (v45 && (!v46 || CFGetTypeID(v45) == v46))
                        {
                          v47 = CFArrayGetCount(v45);
                          if (v47 >= 1)
                          {
                            for (i = 0; i != v47; ++i)
                            {
                              v49 = CFArrayGetValueAtIndex(v45, i);
                              v50 = CFStringGetTypeID();
                              if (v49 && (!v50 || CFGetTypeID(v49) == v50))
                              {
                                StringForCFString = _LSDatabaseCreateStringForCFString(v8, v49, 1);
                                if (StringForCFString)
                                {
                                  v52 = v8;
                                  v53 = [(_LSDatabase *)v8 schema];
                                  if (!_LSBindingListBufferAppend(v8, v69, *(v53 + 736), StringForCFString))
                                  {
                                    goto LABEL_90;
                                  }

                                  v54 = v8;
                                  [(_LSDatabase *)v8 store];
                                  _CSStringRelease();
                                }
                              }
                            }
                          }
                        }
                      }

                      else
                      {
                        CFArrayGetTypeID();
                      }

                      v15 = _LSBindingListCreate(v8, v69, &v67);
                      if (!v15)
                      {
                        HIDWORD(v74) = v67;
                        v15 = _LSClaimAdd(v8, &buf, &v68);
                        if (!v15)
                        {
                          v55 = v8;
                          [(_LSDatabase *)v8 store];
                          v56 = *(v5 + 472);
                          _CSArrayAppendValue();
                          if (!v67 || _LSBundleDataIsInUnsupportedLocation(v8, v5) || _LSBundleDataGetUnsupportedFormatFlag())
                          {
                            v15 = 0;
                          }

                          else
                          {
                            v15 = _LSBindingListActivate();
                          }
                        }
                      }
                    }

                    goto LABEL_90;
                  }
                }

                else
                {
                  CFStringGetTypeID();
                }

                v41 = DWORD2(buf);
                goto LABEL_63;
              }

              v15 = 4294957803;
            }
          }
        }

LABEL_90:
        _LSBindingListBufferReset(v8, v69);
        if (++v16 == v66)
        {
          goto LABEL_100;
        }
      }
    }

    goto LABEL_99;
  }

  v15 = 4294956479;
LABEL_100:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_98:

  v57 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t _LSRegisterExtensionPoint(void *a1, uint64_t a2, __CFString *a3, uint64_t a4, const __CFDictionary *a5, void *a6)
{
  v123 = *MEMORY[0x1E69E9840];
  v11 = a1;
  if (![__LSDefaultsGetSharedInstance() hasServer])
  {
    if (![__LSDefaultsGetSharedInstance() isServer])
    {
      v12 = 0;
      goto LABEL_100;
    }

    v77 = v11;
    v100 = 0;
    v13 = _LSRegistrationLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      *&buf[4] = a3;
      *&buf[12] = 1024;
      *&buf[14] = a4;
      *&buf[18] = 2112;
      *&buf[20] = a6;
      *&buf[28] = 2112;
      *&buf[30] = a5;
      _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_INFO, "Registering extension point: %@ platform: %u declaring framework: %@ SDK: %@", buf, 0x26u);
    }

    v78 = v77;
    if (!v77)
    {
      v12 = _LSContextInit(&v100);
      v78 = v100;
      if (v12)
      {
LABEL_99:

        goto LABEL_100;
      }
    }

    v121 = kLSVersionNumberNull;
    v122 = unk_1817E90C0;
    v98 = 0;
    v99 = 0;
    v119 = 0u;
    v120 = 0u;
    if (a5)
    {
      Value = CFDictionaryGetValue(a5, @"NSExtension");
      TypeID = CFDictionaryGetTypeID();
      if (Value && (!TypeID || CFGetTypeID(Value) == TypeID))
      {
        v16 = CFDictionaryGetValue(Value, @"NSExtensionAttributes");
        v17 = CFDictionaryGetTypeID();
        if (!v16 || !v17 || CFGetTypeID(v16) == v17)
        {
LABEL_20:
          v18 = objc_opt_class();
          v19 = [(__CFDictionary *)a5 objectForKey:@"EXExtensionPointIsPublic"];
          v20 = v19;
          if (v18 && v19 && (objc_opt_isKindOfClass() & 1) == 0)
          {

            v20 = 0;
          }

          v75 = [v20 BOOLValue];

          v21 = objc_opt_class();
          v22 = [(__CFDictionary *)a5 objectForKey:@"EXRequiresLegacyInfrastructure"];
          v23 = v22;
          if (v21 && v22 && (objc_opt_isKindOfClass() & 1) == 0)
          {

            v23 = 0;
          }

          v24 = [v23 BOOLValue];

          if (v24)
          {
            v74 = 1;
          }

          else
          {
            v25 = objc_opt_class();
            v26 = [(__CFDictionary *)a5 objectForKey:@"EXTCCPolicy"];
            v27 = v26;
            if (v25 && v26 && (objc_opt_isKindOfClass() & 1) == 0)
            {

              v27 = 0;
            }

            if ([v27 isEqualToString:@"prompt-container-personality"])
            {
              v28 = 1;
            }

            else if ([v27 isEqualToString:@"prompt-host-personality"])
            {
              v28 = 2;
            }

            else
            {
              v28 = 0;
            }

            v74 = v28;
          }

          if (v16 && (v29 = CFDictionaryGetValue(v16, @"NSExtensionPointVersion"), v30 = CFStringGetTypeID(), v29) && (!v30 || CFGetTypeID(v29) == v30))
          {
            _LSGetVersionFromString(v29, buf);
            v72 = 0;
          }

          else
          {
            v29 = 0;
            memset(buf, 0, 32);
            v72 = 1;
          }

          v121 = *buf;
          v122 = *&buf[16];
          if (!_LSExtensionPointFindWithIdentifier(v78, a3, a4, a2, &v99, &v98) && v99)
          {
            v31 = *(v98 + 24);
            *buf = *(v98 + 8);
            *&buf[16] = v31;
            v101 = v121;
            v102 = v122;
            if (_LSVersionNumberCompare(buf, &v101))
            {
              v32 = *(v98 + 24);
              *buf = *(v98 + 8);
              *&buf[16] = v32;
              v101 = v121;
              v102 = v122;
              if (_LSVersionNumberCompare(buf, &v101) != -1)
              {
                log = _LSRegistrationLog();
                if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                {
                  v33 = *(v98 + 24);
                  v101 = *(v98 + 8);
                  v102 = v33;
                  v34 = _LSVersionNumberGetStringRepresentation(&v101);
                  *buf = 138412802;
                  *&buf[4] = a3;
                  *&buf[12] = 2112;
                  *&buf[14] = v29;
                  *&buf[22] = 2112;
                  *&buf[24] = v34;
                  _os_log_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Not registering extension point %@, it has a lower version (%@) than existing registered extension point with that identifer (%@)", buf, 0x20u);
                }

                v12 = 0;
                goto LABEL_97;
              }
            }

            _LSExtensionPointRemove(v78, v99);
          }

          if (!v16 || (v35 = CFDictionaryGetValue(v16, @"NSExtensionPointName"), v36 = CFStringGetTypeID(), !v35) || v36 && CFGetTypeID(v35) != v36)
          {
            v37 = _LSRegistrationLog();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = a3;
              _os_log_impl(&dword_18162D000, v37, OS_LOG_TYPE_ERROR, "ExtensionPoint %@ does not specify NSExtensionPointName", buf, 0xCu);
            }

            v35 = a3;
          }

          if (!CFEqual(v35, a3))
          {
            v38 = _LSRegistrationLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = a3;
              *&buf[12] = 2112;
              *&buf[14] = v35;
            }
          }

          v39 = _LSBundleGet(v77, a2);
          if (v39)
          {
            v40 = [_LSLazyPropertyList lazyPropertyListWithDatabase:v77 unit:*(v39 + 140)];
            v41 = [v40 objectForKey:@"com.apple.private.coreservices.definesExtensionPoint" ofClass:objc_opt_class()];
            v42 = v41 == 0;

            if (v42 || ([(__CFString *)a3 hasPrefix:@"com.apple."]& 1) == 0)
            {

              v75 = 2;
            }

            else
            {
            }
          }

          log = a5;
          StringForCFString = _LSDatabaseCreateStringForCFString(v78, a3, 0);
          v44 = _LSDatabaseCreateStringForCFString(v78, v35, 0);
          if (v72)
          {
            memset(buf, 0, 32);
          }

          else
          {
            _LSGetVersionFromString(v29, buf);
          }

          v119 = *buf;
          v120 = *&buf[16];
          v73 = _LSPlistAdd(v78, log);
          v71 = [log objectForKey:@"EXDiscoverFromHiddenApps"];
          v45 = [v71 BOOLValue];
          if (a6)
          {
            v97 = 0;
            LODWORD(a6) = _LSAliasAddURL(v78, a6, &v97);
            v46 = v97;
            if (v46)
            {
              v47 = _LSRegistrationLog();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                *&buf[4] = a3;
                *&buf[12] = 2112;
                *&buf[14] = v46;
                _os_log_impl(&dword_18162D000, v47, OS_LOG_TYPE_ERROR, "couldn't set declaring framework of extension point %@: %@", buf, 0x16u);
              }
            }
          }

          *&buf[8] = v119;
          v48 = v45;
          *buf = 0;
          *&buf[4] = StringForCFString;
          *&buf[24] = v120;
          v104 = __PAIR64__(a4, v44);
          v105 = __PAIR64__(a6, v73);
          v106 = a2;
          v107 = v75;
          LODWORD(v108) = v74;
          *(&v108 + 4) = v45;
          HIDWORD(v99) = _LSExtensionPointAdd(v78, buf);
          if (!HIDWORD(v99))
          {
            v12 = 4294956477;
LABEL_96:

LABEL_97:
            if (!v77)
            {
              _LSContextDestroy(&v100);
            }

            goto LABEL_99;
          }

          v49 = _LSBundleGet(v78, a2);
          v50 = v49;
          if (v49)
          {
            if (*(v49 + 488))
            {
              v51 = v78;
              [(_LSDatabase *)v78 store];
              v52 = *(v50 + 488);
              _CSArrayAppendValue();
            }

            else
            {
              v67 = v78;
              [(_LSDatabase *)v78 store];
              LODWORD(v101) = _CSArrayCreate();
              if (v101)
              {
                *buf = 0;
                v68 = v78;
                [(_LSDatabase *)v78 store];
                v69 = v78;
                v70 = *([(_LSDatabase *)v78 schema]+ 4);
                if (_CSStoreWriteToUnit())
                {
                  v12 = 0;
                }

                else
                {
                  v12 = _LSGetOSStatusFromNSError(*buf);
                }

                goto LABEL_88;
              }
            }
          }

          else
          {
            v53 = _LSRegistrationLog();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              *&buf[4] = a2;
              *&buf[12] = 2112;
              *&buf[14] = a3;
              _os_log_impl(&dword_18162D000, v53, OS_LOG_TYPE_ERROR, "Failed to fetch app bundle unit: %llu for extension point: %@", buf, 0x16u);
            }
          }

          v12 = 0;
LABEL_88:
          v91 = 0;
          v92 = &v91;
          v93 = 0x3032000000;
          v94 = __Block_byref_object_copy__47;
          v95 = __Block_byref_object_dispose__47;
          v96 = [MEMORY[0x1E695DFA8] set];
          v85 = 0;
          v86 = &v85;
          v87 = 0x3032000000;
          v88 = __Block_byref_object_copy__47;
          v89 = __Block_byref_object_dispose__47;
          v90 = [MEMORY[0x1E695DF90] dictionary];
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL31_LSServerRegisterExtensionPointP11_LSDatabasejPK10__CFStringjPK14__CFDictionaryPK7__CFURL_block_invoke;
          *&buf[24] = &unk_1E6A1DE30;
          v106 = 0;
          v107 = StringForCFString;
          v108 = v119;
          v109 = v120;
          v110 = v44;
          v111 = a4;
          v112 = v73;
          v113 = a6;
          v114 = a2;
          v115 = v75;
          v117 = v48;
          v116 = v74;
          v118 = v44;
          v104 = &v85;
          v105 = &v91;
          v54 = v78;
          *&buf[32] = v54;
          v55 = MEMORY[0x1865D71B0](buf);
          v56 = v54;
          [(_LSDatabase *)v54 store];
          v57 = v54;
          v58 = *([(_LSDatabase *)v54 schema]+ 1588);
          _CSStoreEnumerateUnits();
          v59 = v86[5];
          v83[0] = MEMORY[0x1E69E9820];
          v83[1] = 3221225472;
          v83[2] = ___ZL31_LSServerRegisterExtensionPointP11_LSDatabasejPK10__CFStringjPK14__CFDictionaryPK7__CFURL_block_invoke_2;
          v83[3] = &unk_1E6A1DE58;
          v60 = v54;
          v84 = v60;
          [v59 enumerateKeysAndObjectsUsingBlock:v83];
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v61 = v92[5];
          v62 = [v61 countByEnumeratingWithState:&v79 objects:&v101 count:16];
          if (v62)
          {
            v63 = *v80;
            do
            {
              for (i = 0; i != v62; ++i)
              {
                if (*v80 != v63)
                {
                  objc_enumerationMutation(v61);
                }

                _LSBindableActivate(v60, [*(*(&v79 + 1) + 8 * i) intValue]);
              }

              v62 = [v61 countByEnumeratingWithState:&v79 objects:&v101 count:16];
            }

            while (v62);
          }

          _Block_object_dispose(&v85, 8);
          _Block_object_dispose(&v91, 8);

          goto LABEL_96;
        }
      }
    }

    else
    {
      CFDictionaryGetTypeID();
    }

    v16 = 0;
    goto LABEL_20;
  }

  v12 = _LSRegisterExtensionPointClient(a3, a4, a5, a6);
LABEL_100:

  v65 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t _LSRegisterFrameworkExtensionPointIfNecessary(void *a1, int a2, __CFString *a3, uint64_t a4, const __CFDictionary *a5, void *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = v11;
  if (!a2 && a6)
  {
    v25 = 0;
    v24 = 0;
    if (_LSExtensionPointFindWithIdentifier(v11, a3, a4, 0, &v25, &v24) || !v24 || !*(v24 + 52))
    {
      goto LABEL_25;
    }

    if (a5)
    {
      Value = CFDictionaryGetValue(a5, @"NSExtension");
      TypeID = CFDictionaryGetTypeID();
      if (Value && (!TypeID || CFGetTypeID(Value) == TypeID))
      {
        v15 = CFDictionaryGetValue(Value, @"NSExtensionAttributes");
        v16 = CFDictionaryGetTypeID();
        if (v15)
        {
          if (!v16 || CFGetTypeID(v15) == v16)
          {
            v17 = CFDictionaryGetValue(v15, @"NSExtensionPointVersion");
            v18 = CFStringGetTypeID();
            if (v17)
            {
              if (!v18 || CFGetTypeID(v17) == v18)
              {
                v26 = 0u;
                v27 = 0u;
                _LSGetVersionFromString(v17, &v26);
LABEL_22:
                v21 = *(v24 + 24);
                *buf = *(v24 + 8);
                v30 = v21;
                v28[0] = v26;
                v28[1] = v27;
                if (!_LSVersionNumberCompare(buf, v28) && v25)
                {
                  v20 = 0;
                  goto LABEL_26;
                }

LABEL_25:
                v20 = _LSRegisterExtensionPoint(v12, 0, a3, a4, a5, a6);
                goto LABEL_26;
              }
            }
          }
        }
      }
    }

    else
    {
      CFDictionaryGetTypeID();
    }

    v26 = kLSVersionNumberNull;
    v27 = unk_1817E90C0;
    goto LABEL_22;
  }

  v19 = _LSRegistrationLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v19, OS_LOG_TYPE_ERROR, "No declaringFrameworkURL or parentBundleUnit != nullID, so returning kLSApplicationNotFoundErr", buf, 2u);
  }

  v20 = 4294956482;
LABEL_26:

  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t _LSUnregisterExtensionPoint(void *a1, const __CFString *a2, uint64_t a3, uint64_t a4, __CFString *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a1;
  if ([__LSDefaultsGetSharedInstance() hasServer])
  {
    v10 = _LSUnregisterExtensionPointClient(a2, a3, a5, a4);
  }

  else if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v11 = v9;
    v18 = 0;
    v12 = v11;
    if (v11 || (v10 = _LSContextInit(&v18), v12 = v18, !v10))
    {
      v17 = 0;
      v16 = 0;
      v10 = _LSExtensionPointFindWithIdentifier(v12, a2, a3, a4, &v17, &v16);
      if (!v10)
      {
        if (!a5 || (v13 = *(v16 + 24), v20[0] = *(v16 + 8), v20[1] = v13, _LSGetVersionFromString(a5, v19), !_LSVersionNumberCompare(v20, v19)))
        {
          _LSExtensionPointRemove(v12, v17);
        }
      }

      if (!v11)
      {
        _LSContextDestroy(&v18);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t _LSRegisterPlugins(void *a1, uint64_t a2, uint64_t a3, const void *a4, const __CFDictionary *a5)
{
  v12 = a1;
  if (a4 && (Count = CFDictionaryGetCount(a4), Count >= 1))
  {
    v8 = CFGetTypeID(a4);
    if (v8 == CFDictionaryGetTypeID())
    {
      if (!a5 || (v9 = CFGetTypeID(a5), v9 == CFDictionaryGetTypeID()))
      {
        CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (a5)
        {
          CFDictionaryGetCount(a5);
        }

        memset(keys, 0, sizeof(keys));
        std::vector<void const*>::__vallocate[abi:nn200100](keys, Count);
      }
    }

    v10 = 4294956479;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_18177E934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, void *a44)
{
  LSPluginInfo::~LSPluginInfo(&STACK[0x280]);

  if (__p)
  {
    operator delete(__p);
  }

  if (a44)
  {
    operator delete(a44);
  }

  _Unwind_Resume(a1);
}

uint64_t _LSCopyPluginsWithURL(uint64_t *a1, const __CFURL *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_autoreleasePoolPush();
  if (a2)
  {
    v5 = CFURLCopyFileSystemPath(a2, kCFURLPOSIXPathStyle);
    [(_LSDatabase *)*a1 store];
    v6 = *([(_LSDatabase *)*a1 schema]+ 1588);
    v9 = v5;
    _CSStoreEnumerateUnits();
  }

  objc_autoreleasePoolPop(v4);
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_18177EB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSServerBundleRegistration(id *a1, void *a2, void *a3, void *a4, const __CFDictionary *a5, unsigned int *a6, uint64_t a7, char *a8, _BYTE *a9)
{
  v98 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v15 = [LSRecordBuilder recordBuilderForType:0];
  v16 = 0;
  v17 = 4294956479;
  if (!a1 || !v13)
  {
    goto LABEL_81;
  }

  v18 = v13[3];
  if (v18 == 203)
  {
    if (!v14)
    {
      v16 = 0;
      goto LABEL_81;
    }
  }

  else
  {
    v16 = 0;
    if (!v14 || v18 != 205)
    {
      goto LABEL_81;
    }
  }

  v19 = *a1;
  v16 = v19;
  if (!v19)
  {
    goto LABEL_81;
  }

  v20 = [(_LSDatabase *)v19 store];
  if (!a4)
  {
    goto LABEL_81;
  }

  if (!v20)
  {
    goto LABEL_81;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a4))
  {
    goto LABEL_81;
  }

  [v15 setRegistrationInfo:v13 alias:v14];
  [v15 setDatabase:v16];
  if (a5)
  {
    v22 = _LSGetBooleanFromDict(a5, @"IsPlaceholder");
    Value = CFDictionaryGetValue(a5, @"ApplicationType");
    v24 = CFStringGetTypeID();
    v25 = !Value || v24 && CFGetTypeID(Value) != v24 || CFStringCompare(Value, @"SystemAppPlaceholder", 1uLL) != kCFCompareEqualTo;
    v76 = v25;
    v75 = _LSGetBooleanFromDict(a5, @"LSAppDowngrade");
    v26 = v22 == 0;
  }

  else
  {
    v26 = 1;
    v75 = 0;
    v76 = 1;
  }

  v78 = v26;
  [(_LSDatabase *)v16 store];
  v27 = *([(_LSDatabase *)v16 schema]+ 4);
  v28 = v13[7];
  if (CSStoreGetUnit())
  {
    v84 = v13[7];
    v29 = _LSBundleGet(v16, v84);
  }

  else
  {
    v73 = v13[6];
    v30 = v16;
    v86 = 0;
    v87 = &v86;
    v88 = 0x2020000000;
    v89 = 0;
    v74 = v14;
    v31 = [FSNode nameForBookmarkData:"nameForBookmarkData:error:" error:?];
    if (v31)
    {
      StringForCFString = _LSDatabaseGetStringForCFString(v30, v31, 1);

      if (StringForCFString)
      {
        v33 = v30;
        [(_LSDatabase *)v30 store];
        v34 = v30;
        v35 = *([(_LSDatabase *)v30 schema]+ 4);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&v91 = ___ZL61_LSFindExistingRegisteredBundleWithContainerMatchingAliasDataP11_LSDatabasejP6NSDataPj_block_invoke;
        *(&v91 + 1) = &unk_1E6A1DE80;
        v96 = StringForCFString;
        v97 = v73;
        v92 = v30;
        v36 = v74;
        v95 = &v84;
        v93 = v36;
        v94 = &v86;
        _CSStoreEnumerateUnits();
      }
    }

    v29 = v87[3];
    _Block_object_dispose(&v86, 8);
  }

  v85 = v29;
  if (v29)
  {
    if (v78 && (_LSGetBooleanFromDict(a4, @"_LSInfoPlistIsMissing") || _LSGetBooleanFromDict(a4, @"_LSNoExecutableInfo")) && (*(v85 + 172) & 0x20000000000200) == 0)
    {
      v64 = _LSInstallLog();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18162D000, v64, OS_LOG_TYPE_DEFAULT, "skipping registration of an incomplete bundle", buf, 2u);
      }

      v37 = 1;
    }

    else
    {
      v37 = 0;
    }

    if ((*(v85 + 172) & 0x80) == 0 && (v13[4] & 2) == 0)
    {
      v38 = _LSInstallLog();
      _LSServerBundleRegistration_cold_1(v38);
      v17 = 4294956621;
      goto LABEL_81;
    }

    if (_LSBundleDataIsIncomplete(*a1, v85))
    {
      v39 = *(v85 + 513);
      if (v39 < 0x3C)
      {
        LOBYTE(v39) = v39 + 1;
      }

      [v15 setRetries:v39];
    }

    if (v37)
    {
      if (v85)
      {
        v40 = 0;
LABEL_74:
        if (a6)
        {
          *a6 = v84;
        }

        if (a8)
        {
          if (!v84)
          {
            v40 = 0;
          }

          *a8 = v40;
        }

        _LSDatabaseSetSequenceNumber();
        v17 = 0;
        goto LABEL_81;
      }
    }

    else
    {
      [v15 setPreviousInstallType:*(v85 + 336)];
      v17 = _LSBundleRemove(v16, v84, 0);
      if (v17)
      {
        goto LABEL_81;
      }

      v85 = 0;
      v84 = 0;
    }
  }

  v41 = v16;
  [(_LSDatabase *)v16 store];
  v42 = v16;
  v43 = *([(_LSDatabase *)v16 schema]+ 1580);
  v44 = v13[6];
  if (!CSStoreGetUnit())
  {
    v17 = 4294957797;
    goto LABEL_81;
  }

  if (!*MEMORY[0x1E695E4F0])
  {
    v46 = CFStringGetTypeID();
LABEL_51:
    v45 = 0;
    goto LABEL_52;
  }

  v45 = CFDictionaryGetValue(a4, *MEMORY[0x1E695E4F0]);
  v46 = CFStringGetTypeID();
  if (v45)
  {
    v48 = v46;
    if (v46)
    {
      v46 = CFGetTypeID(v45);
      if (v46 != v48)
      {
        goto LABEL_51;
      }
    }
  }

LABEL_52:
  _LSLogStepStart(v46, 0, v45, v47);
  if (!v45)
  {
    goto LABEL_64;
  }

  v49 = CFGetTypeID(v45);
  if (v49 != CFStringGetTypeID())
  {
    goto LABEL_64;
  }

  v84 = 0;
  v82 = 0;
  v86 = 0;
  if (!v76 || (*buf = kLSVersionNumberNull, v91 = unk_1817E90C0, v77 = _LSBundleFindWithInfoAndNo_IOFilter(a1, 0, v45, 0, buf, 2, 128, 0, 0, &v84, &v85, 0), *buf = kLSVersionNumberNull, v91 = unk_1817E90C0, v50 = _LSBundleFindWithInfoAndNo_IOFilter(a1, 0, v45, 0, buf, 2, 1152, 0, 0, &v82, &v86, 0), ((v77 | v50) & 1) == 0))
  {
    v53 = _LSInstallLog();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v45;
      _os_log_impl(&dword_18162D000, v53, OS_LOG_TYPE_DEFAULT, "No bundles to remove for %@", buf, 0xCu);
    }

    goto LABEL_64;
  }

  if (!v50)
  {
    v17 = 0;
    v86 = 0;
    v82 = 0;
    if (!v77)
    {
      v85 = 0;
      v84 = 0;
      goto LABEL_64;
    }

    goto LABEL_86;
  }

  v51 = _LSBundleGet(v16, v82);
  [v15 setPreviousInstallType:*(v51 + 336)];
  [v15 addBundleFlag:*(v51 + 172) & 0x80000];
  v17 = _LSBundleRemove(v16, v82, 0);
  v52 = _LSInstallLog();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v45;
    _os_log_impl(&dword_18162D000, v52, OS_LOG_TYPE_DEFAULT, "Removed existing registered placeholder for %@", buf, 0xCu);
  }

  v86 = 0;
  v82 = 0;
  if (v77)
  {
LABEL_86:
    if (v75)
    {
      v65 = 1;
    }

    else
    {
      v65 = v78;
    }

    if (v65)
    {
      [v15 setPreviousInstallType:{*(_LSBundleGet(v16, v84) + 336)}];
      v17 = _LSBundleRemove(v16, v84, v75);
      v66 = _LSInstallLog();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v45;
        _os_log_impl(&dword_18162D000, v66, OS_LOG_TYPE_DEFAULT, "Removed existing registered bundle for %@", buf, 0xCu);
      }
    }

    else
    {
      [v15 addBundleFlag:0x80000];
      *buf = *(v85 + 172) | 0x400000000000;
      v67 = v16;
      [(_LSDatabase *)v16 store];
      v68 = v16;
      v69 = *([(_LSDatabase *)v16 schema]+ 4);
      _CSStoreWriteToUnit();
      if ([a4 _LS_BoolForKey:@"LSRequiresPostProcessing"])
      {
        v81 = *(v85 + 189) | 0x2000;
        v70 = v16;
        [(_LSDatabase *)v16 store];
        v71 = v16;
        v72 = *([(_LSDatabase *)v16 schema]+ 4);
        _CSStoreWriteToUnit();
      }
    }
  }

  v85 = 0;
  v84 = 0;
  if (v17 && v17 != -10814)
  {
    goto LABEL_81;
  }

LABEL_64:
  v54 = _LSDatabaseGetSequenceNumber(v16) + 1;
  v83 = v54;
  [v15 setSequenceNumber:v54];
  if ([v15 parseInfoPlist:a4] && (objc_msgSend(v15, "parseInstallationInfo:", a5) & 1) != 0)
  {
    v17 = 0;
    v55 = 1;
  }

  else
  {
    v55 = 0;
    v17 = 4294967246;
  }

  [v15 parseActivityTypesFromDictionary:a4];
  [v15 parseNSExtensionSDKDefinitionsFromDictionary:a4];
  _LSLogStepFinished(5, v55, v45, &cfstr_BuiltBundleRec.isa);
  v84 = [v15 registerBundleRecord:v16 error:0];
  v56 = [v15 registerChildItemsTrusted];
  if (a9)
  {
    *a9 = v56;
  }

  if (v55)
  {
    if (v54 < v84)
    {
      v83 = v84;
      v57 = v16;
      [(_LSDatabase *)v16 store];
      v58 = v16;
      v59 = *([(_LSDatabase *)v16 schema]+ 4);
      _CSStoreWriteToUnit();
    }

    v60 = v13[4];
    v61 = v16;
    [(_LSDatabase *)v16 store];
    _CSStoreGarbageCollect();
    v40 = 1;
    goto LABEL_74;
  }

LABEL_81:

  v62 = *MEMORY[0x1E69E9840];
  return v17;
}

void _LSLogStepStart(uint64_t a1, uint64_t a2, NSString *a3, NSString *a4, ...)
{
  va_start(va, a4);
  _LSLogStep(5, 1, 1, a3, @"Building bundle record for app", va);
}

{
  va_start(va, a4);
  _LSLogStep(1, 0, a3, @"_LSServerRegisterItemInfo begin", va);
}

{
  va_start(va, a4);
  _LSLogStep(a1, 1, 1, a3, a4, va);
}

void _LSLogStepFinished(uint64_t a1, uint64_t a2, NSString *a3, NSString *a4, ...)
{
  va_start(va, a4);
  _LSLogStep(a1, 2, a2, a3, a4, va);
}

{
  va_start(va, a4);
  _LSLogStep(2, a2, a3, @"_LSServerRegisterItemInfo result = %@", va);
}

{
  va_start(va, a4);
  _LSLogStep(a1, 2, a2, a3, a4, va);
}

uint64_t _LSSliceMaskForSliceArray(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = a1;
  v2 = 0;
  v3 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        v7 = [v6 type];
        if (v7 <= 16777222)
        {
          switch(v7)
          {
            case 7:
              v2 |= 4u;
              break;
            case 12:
              v11 = [v6 subtype] & 0xFFFFFF;
              if (v11 <= 0xA)
              {
                switch(v11)
                {
                  case 6:
                    v2 |= 0x20u;
                    break;
                  case 9:
                    v2 |= 0x40u;
                    break;
                  case 10:
                    v2 |= 0x200u;
                    break;
                }
              }

              else if (v11 > 14)
              {
                if (v11 == 15)
                {
                  v2 |= 0x1000u;
                }

                else if (v11 == 16)
                {
                  v2 |= 0x2000u;
                }
              }

              else if (v11 == 11)
              {
                v2 |= 0x400u;
              }

              else if (v11 == 12)
              {
                v2 |= 0x800u;
              }

              break;
            case 18:
              v2 |= 1u;
              break;
          }
        }

        else if (v7 > 16777233)
        {
          if (v7 == 16777234)
          {
            v2 |= 2u;
          }

          else if (v7 == 33554444)
          {
            v9 = [v6 subtype] & 0xFFFFFF;
            if (v9 == 1)
            {
              v2 |= 0xFFFF8000;
            }

            else if (!v9)
            {
              v2 |= 0x4000u;
            }
          }
        }

        else if (v7 == 16777223)
        {
          v10 = [v6 subtype] & 0xFFFFFF;
          if (v10 == 3)
          {
            v2 |= 8u;
          }

          else if (v10 == 8)
          {
            v2 |= 0x10u;
          }
        }

        else if (v7 == 16777228)
        {
          v8 = [v6 subtype] & 0xFFFFFF;
          if (v8 == 2)
          {
            v2 |= 0x100u;
          }

          else if (!v8)
          {
            v2 |= 0x80u;
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

void _LSGetMinimumOSVersionStringAndReferencePlatformForPlatformSDKLinkage(void *a1, uint64_t a2, _OWORD *a3, id *a4, _DWORD *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = a3[1];
  v21[0] = *a3;
  v21[1] = v9;
  _LSMakeVersionNumber(14, 5, 0, v20);
  if (_LSVersionNumberCompare(v21, v20) == -1)
  {
    v14 = objc_opt_class();
    v15 = [v8 objectForKey:@"LSMinimumSystemVersion"];
    v13 = v15;
    if (v14 && v15)
    {
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_17;
      }
    }

    else if (v15)
    {
      goto LABEL_17;
    }

    v16 = objc_opt_class();
    v17 = [v8 objectForKey:@"MinimumOSVersion"];
    v13 = v17;
    if (v16 && v17 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v13 = 0;
    }
  }

  else
  {
    v10 = objc_opt_class();
    v11 = [v8 objectForKey:@"MinimumOSVersion"];
    v12 = v11;
    if (v10 && v11 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v13 = 0;
    }

    else
    {
      v13 = v12;
    }
  }

LABEL_17:
  active_platform = dyld_get_active_platform();
  if (a4)
  {
    objc_storeStrong(a4, v13);
  }

  if (a5)
  {
    *a5 = active_platform;
  }

  v19 = *MEMORY[0x1E69E9840];
}

__CFDictionary *_LSCreateRegistrationData(uint64_t *a1, void *a2, void *a3, FSNode *a4, const __CFArray **a5)
{
  v72 = *MEMORY[0x1E69E9840];
  v9 = a2;
  if (a1 && [(_LSDatabase *)*a1 accessContext])
  {
    _CSStoreAccessContextAssertReading();
  }

  v10 = v9[3];
  if ((v10 - 203) < 2)
  {
    v11 = v9;
    if (a3)
    {
      v12 = [[FSNode alloc] initWithURL:a3 flags:48 error:0];
      v13 = v12;
      if (v12)
      {
        if ([(FSNode *)v12 isDirectory])
        {
          cf = [(_LSBundleProvider *)v13 copyCFBundleWithError:0];
          if (cf)
          {
            v14 = [[_LSBundleProvider alloc] initWithURL:a3 useCacheIfPossible:1];
            theDict = _LSCreateRegistrationDataForDirectoryNode(a1, v11, v14, v13, a4, a5, v15);
            if ([(_LSBundleProvider *)v14 usingCachedItem])
            {
              v16 = _LSRegistrationLog();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138477827;
                v67 = a3;
                _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_DEBUG, "Validating item %{private}@, which used the cache for registration", buf, 0xCu);
              }

              v55 = [[_LSBundleProvider alloc] initWithURL:a3 useCacheIfPossible:0];
              v18 = _LSCreateRegistrationDataForDirectoryNode(a1, v11, v55, v13, a4, a5, v17);
              v65[0] = MEMORY[0x1E69E9820];
              v65[1] = 3221225472;
              v65[2] = ___ZL34_LSCreateRegistrationDataForBundleP9LSContextP18LSRegistrationInfoPK7__CFURLPK14__CFDictionaryPPK9__CFArray_block_invoke;
              v65[3] = &__block_descriptor_40_e13_B24__0_v8_v16l;
              v65[4] = theDict;
              if (CFDictionaryApplyBlock(v18, v65))
              {
                v19 = _LSRegistrationLog();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                {
                  *buf = 138739971;
                  v67 = a3;
                  _os_log_impl(&dword_18162D000, v19, OS_LOG_TYPE_INFO, "REGISTRATION: Successfully registered %{sensitive}@ using the boot cache", buf, 0xCu);
                }
              }

              if (v18)
              {
                CFRelease(v18);
              }
            }

            if (theDict)
            {
              v20 = *MEMORY[0x1E695E480];
              MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
              if (softLinkLNIsLinkEnabled)
              {
                v22 = softLinkLNIsLinkEnabled(cf);
                v23 = *MEMORY[0x1E695E4D0];
                v24 = *MEMORY[0x1E695E4C0];
                if (v22)
                {
                  v25 = *MEMORY[0x1E695E4D0];
                }

                else
                {
                  v25 = *MEMORY[0x1E695E4C0];
                }
              }

              else
              {
                v24 = *MEMORY[0x1E695E4C0];
                v25 = *MEMORY[0x1E695E4C0];
              }

              CFDictionaryAddValue(MutableCopy, @"_LSIsLinkEnabled", v25);
              CFRelease(theDict);
              CFRelease(cf);
              if (MutableCopy)
              {
                if (CFDictionaryContainsKey(MutableCopy, @"bundlePersonas") || CFDictionaryContainsKey(MutableCopy, @"_LSUsesSystemPersona"))
                {
                  Copy = CFDictionaryCreateMutableCopy(v20, 0, MutableCopy);
                  CFDictionaryRemoveValue(Copy, @"bundlePersonas");
                  CFDictionaryRemoveValue(Copy, @"_LSUsesSystemPersona");
                  CFRelease(MutableCopy);
                  if (!Copy)
                  {
                    goto LABEL_36;
                  }
                }

                else
                {
                  Copy = MutableCopy;
                }

                v36 = *MEMORY[0x1E695E4F0];
                if (!CFDictionaryContainsKey(Copy, *MEMORY[0x1E695E4F0]) || v11->action != 203)
                {
                  goto LABEL_36;
                }

                if (v36)
                {
                  Value = CFDictionaryGetValue(Copy, v36);
                  TypeID = CFStringGetTypeID();
                  if (!Value || !TypeID || CFGetTypeID(Value) == TypeID)
                  {
                    goto LABEL_58;
                  }
                }

                else
                {
                  CFStringGetTypeID();
                }

                Value = 0;
LABEL_58:
                v39 = Value;
                v40 = CFSetGetTypeID();
                v41 = CFDictionaryGetValue(a4, @"LSPersonaUniqueStrings");
                v42 = v41;
                v56 = v24;
                if (v41 && CFGetTypeID(v41) == v40)
                {
                  v43 = v42;
                  v44 = [v43 allObjects];
                }

                else
                {
                  v45 = +[_LSPersonaDatabase sharedInstance];
                  v44 = [(_LSPersonaDatabase *)v45 personasWithAttributesForBundleIdentifier:v39];
                  v43 = v45;
                }

                if ([v44 count])
                {
                  theDicta = v39;
                  v46 = _LSRegistrationLog();
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138543874;
                    v67 = v44;
                    v68 = 2114;
                    v69 = a3;
                    v70 = 2114;
                    v71 = v39;
                    _os_log_impl(&dword_18162D000, v46, OS_LOG_TYPE_INFO, "- Got personas %{public}@ for application at %{public}@/%{public}@", buf, 0x20u);
                  }

                  v63 = 0u;
                  v64 = 0u;
                  v61 = 0u;
                  v62 = 0u;
                  v47 = v44;
                  v48 = [v47 countByEnumeratingWithState:&v61 objects:buf count:16];
                  cfa = v44;
                  v49 = 0;
                  if (v48)
                  {
                    v50 = *v62;
                    do
                    {
                      for (i = 0; i != v48; ++i)
                      {
                        if (*v62 != v50)
                        {
                          objc_enumerationMutation(v47);
                        }

                        v49 |= [(_LSPersonaWithAttributes *)*(*(&v61 + 1) + 8 * i) personaType]== 3;
                      }

                      v48 = [v47 countByEnumeratingWithState:&v61 objects:buf count:16];
                    }

                    while (v48);
                  }

                  v44 = cfa;
                  v39 = theDicta;
                  v52 = CFDictionaryCreateMutableCopy(v20, 0, Copy);
                  CFDictionarySetValue(v52, @"bundlePersonas", v47);
                  v53 = *MEMORY[0x1E695E4D0];
                  if (v49)
                  {
                    v54 = *MEMORY[0x1E695E4D0];
                  }

                  else
                  {
                    v54 = v56;
                  }

                  CFDictionarySetValue(v52, @"_LSUsesSystemPersona", v54);
                  CFRelease(Copy);
                  Copy = CFDictionaryCreateCopy(v20, v52);
                  CFRelease(v52);
                }

                goto LABEL_36;
              }
            }

            else
            {
              CFRelease(cf);
            }
          }
        }
      }
    }

    else
    {
      v13 = _LSRegistrationLog();
      if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18162D000, &v13->super, OS_LOG_TYPE_ERROR, "Unexpected nil bundle URL when registering.", buf, 2u);
      }
    }

    Copy = 0;
LABEL_36:

    goto LABEL_40;
  }

  if (v10 == 205)
  {
    v26 = v9;
    if (a4)
    {
      v27 = *MEMORY[0x1E695E4F0];
      if (*MEMORY[0x1E695E4F0])
      {
        v28 = CFDictionaryGetValue(a4, *MEMORY[0x1E695E4F0]);
        v29 = CFStringGetTypeID();
        if (v28 && (!v29 || CFGetTypeID(v28) == v29))
        {
          v30 = _LSPathForBundleLibraryIdentifier(v28);
          v31 = *MEMORY[0x1E695E480];
          Copy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(Copy, v27, v28);
          v33 = CFURLCreateFromFileSystemRepresentation(v31, v30[1], *v30, 1u);
          _LSAddBundleLibraryInfo(a1, v33, 0, v26, Copy, 1, 0);
          if (v33)
          {
            CFRelease(v33);
          }

          goto LABEL_39;
        }
      }

      else
      {
        CFStringGetTypeID();
      }
    }

    Copy = 0;
LABEL_39:

    goto LABEL_40;
  }

  Copy = 0;
LABEL_40:

  v34 = *MEMORY[0x1E69E9840];
  return Copy;
}

uint64_t _LSServerItemInfoRegistration(id *a1, void *a2, void *a3, void *a4, const __CFDictionary *a5, unsigned int *a6, uint64_t a7, char *a8, _BYTE *a9)
{
  v63 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v17 = a3;
  v18 = v15[3];
  if (v18 == 203 || v18 == 205)
  {
    v21 = _LSServerBundleRegistration(a1, v15, v17, a4, a5, a6, v16, a8, a9);
  }

  else
  {
    if (v18 == 204)
    {
      v50 = v15;
      v19 = v17;
      v55 = 0;
      v54 = 0;
      theDict = a4;
      keys = 0;
      v48 = v19;
      v20 = 0;
      if (!a1)
      {
        v49 = 0;
        v21 = 4294956479;
        goto LABEL_73;
      }

      v21 = 4294956479;
      if (!v19)
      {
        v49 = 0;
        goto LABEL_73;
      }

      v49 = 0;
      if (v50[3] != 204)
      {
LABEL_73:

        goto LABEL_74;
      }

      v22 = *a1;
      if (!v22)
      {
        v20 = 0;
        v49 = 0;
        goto LABEL_73;
      }

      v49 = v22;
      if (![(_LSDatabase *)v49 store])
      {
        v20 = 0;
        goto LABEL_73;
      }

      v51 = 0;
      v20 = [[FSNode alloc] initByResolvingBookmarkData:v48 relativeToNode:0 bookmarkDataIsStale:0 error:&v51];
      v23 = v51;
      v24 = v23;
      if (v20)
      {
      }

      else
      {
        v21 = _LSGetOSStatusFromNSError(v23);

        if (v21)
        {
          goto LABEL_71;
        }
      }

      v25 = [v20 URL];
      string = CFURLCopyFileSystemPath(v25, kCFURLPOSIXPathStyle);

      if (!string)
      {
        v21 = 0;
        if (!a5)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }

      if (!theDict)
      {
LABEL_29:
        if (a5)
        {
          CFRetain(a5);
        }

        else
        {
          if (!keys)
          {
            goto LABEL_62;
          }

          *&buffer = 0;
          *(&buffer + 1) = &buffer;
          v58 = 0x3812000000;
          v59 = __Block_byref_object_copy__619;
          v60 = __Block_byref_object_dispose__620;
          v61 = &unk_1818533FF;
          cf = 0;
          v56[0] = MEMORY[0x1E69E9820];
          v56[1] = 3221225472;
          v56[2] = ___ZL31createInstallationDictForPluginPK10__CFString_block_invoke;
          v56[3] = &unk_1E6A1DF30;
          v56[4] = &buffer;
          v56[5] = keys;
          (softLinkMobileInstallationEnumerateAllInstalledItemDictionaries[0])(0, v56);
          v38 = *(*(&buffer + 1) + 48);
          if (v38)
          {
            a5 = CFRetain(v38);
          }

          else
          {
            a5 = 0;
          }

          _Block_object_dispose(&buffer, 8);
          if (cf)
          {
            CFRelease(cf);
          }

          if (!a5)
          {
LABEL_62:
            v42 = _LSRegistrationLog();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buffer) = 138412290;
              *(&buffer + 4) = keys;
              _os_log_impl(&dword_18162D000, v42, OS_LOG_TYPE_ERROR, "Cannot register app extension %@ without MobileInstallation data. Installation dictionary was NULL", &buffer, 0xCu);
            }

            v32 = 0;
            v37 = 0;
            v46 = 0;
            a5 = 0;
            v21 = 4294956479;
            goto LABEL_65;
          }
        }

        if (theDict && keys)
        {
          v46 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &theDict, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        else
        {
          if (CFStringGetFileSystemRepresentation(string, &buffer, 1024))
          {
            v28 = _LSDefaultLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              _LSServerItemInfoRegistration_cold_1();
            }
          }

          v46 = 0;
        }

        v29 = _LSGetPlugin(v49, v50[7]);
        if (v29)
        {
          v30 = v50[7];
          v45 = *(v29 + 224);
          v54 = v45;
          _LSUnregisterBundle(a1, v30, 0x20000000);
          v31 = [v20 URL];
          v32 = _LSCopyPluginsWithURL(a1, v31);

          if (v32)
          {
            Count = CFArrayGetCount(v32);
            if (Count >= 1)
            {
              for (i = 0; i != Count; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v32, i);
                TypeID = CFNumberGetTypeID();
                if (ValueAtIndex && (!TypeID || CFGetTypeID(ValueAtIndex) == TypeID))
                {
                  _LSUnregisterBundle(a1, [ValueAtIndex unsignedLongLongValue], 0x20000000);
                }
              }
            }

            CFRelease(v32);
            v37 = 0;
            v32 = 0;
          }

          else
          {
            v37 = 0;
          }

          v41 = v45;
        }

        else
        {
          v39 = CFStringFind(string, @".app/", 4uLL);
          if (v39.location == -1)
          {
            v41 = 0;
            v37 = 0;
            v32 = 0;
          }

          else
          {
            v40 = *MEMORY[0x1E695E480];
            v64.length = v39.location + v39.length;
            v64.location = 0;
            v37 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], string, v64);
            v32 = CFURLCreateWithFileSystemPath(v40, v37, kCFURLPOSIXPathStyle, 1u);
            FSNodeCreateWithURL(v32, 0, &v55);
            _LSBundleFindWithNode(a1, v55, &v54, 0);
            v41 = v54;
          }
        }

        v21 = _LSRegisterPlugins(v49, v50[6], v41, v46, a5);
LABEL_65:
        CFRelease(string);
        if (v32)
        {
          CFRelease(v32);
        }

        if (v37)
        {
          CFRelease(v37);
        }

        if (v46)
        {
          CFRelease(v46);
        }

LABEL_71:
        if (a5)
        {
LABEL_72:
          CFRelease(a5);
          goto LABEL_73;
        }

        goto LABEL_73;
      }

      if (*MEMORY[0x1E695E4F0])
      {
        Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E695E4F0]);
        v27 = CFStringGetTypeID();
        if (!Value || !v27 || CFGetTypeID(Value) == v27)
        {
          goto LABEL_28;
        }
      }

      else
      {
        CFStringGetTypeID();
      }

      Value = 0;
LABEL_28:
      keys = Value;
      goto LABEL_29;
    }

    v21 = 4294967246;
  }

LABEL_74:

  v43 = *MEMORY[0x1E69E9840];
  return v21;
}

const void *CFTypeGetAsNumber(const void *a1)
{
  TypeID = CFNumberGetTypeID();
  if (a1 && TypeID && CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  return a1;
}

uint64_t _LSPathIsTrusted(const char *a1)
{
  v2 = 0;
  while (1)
  {
    v3 = strlen(_LSPathIsTrusted(char const*)::trustedPaths[v2]);
    if (!strncmp(a1, _LSPathIsTrusted(char const*)::trustedPaths[v2], v3))
    {
      break;
    }

    if (++v2 == 10)
    {
      return 0;
    }
  }

  return 1;
}

void getLibIDs(void)
{
  if ((atomic_load_explicit(&_MergedGlobals_2, memory_order_acquire) & 1) == 0)
  {
    getLibIDs();
  }
}

uint64_t ___ZL48_LSGetLibraryBundleIdentifierAndItemIndexForNodeP9LSContextP6FSNodePl_block_invoke(uint64_t result, unsigned int a2, int a3, _BYTE *a4)
{
  if (*(result + 40) == a3)
  {
    **(result + 32) = a2;
    *a4 = 1;
  }

  return result;
}

void ___ZL23getNeedsRegistrationLogv_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "needs-reg");
  v1 = getNeedsRegistrationLog(void)::result;
  getNeedsRegistrationLog(void)::result = v0;
}

uint64_t _LSServerCreateBundleDataAndRegister(LSContext *a1, LSRegistrationInfo *a2, NSData *a3, const __CFURL *a4, FSNode *a5, unsigned int *a6, const __CFArray **a7, unsigned __int8 *a8)
{
  v15 = a2;
  v16 = a3;
  kdebug_trace();
  v17 = _LSCreateRegistrationData(a1, v15, a4, a5, a7);
  kdebug_trace();
  kdebug_trace();
  v19 = _LSServerItemInfoRegistration(&a1->db, v15, v16, v17, a5, a6, v18, 0, a8);
  v20 = v19;
  if (a1 && !v19)
  {
    _LSDatabaseCommit(a1->db);
  }

  kdebug_trace();

  return v20;
}

uint64_t ___ZL23_LSRegisterDocumentTypeP11_LSDatabasejPK12LSBundleDataPK14__CFDictionaryP12NSDictionaryIP8NSStringPS7_IS9_S9_EEjP19LSBindingListBuffer_block_invoke(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  if ((a3 & 3) == 0 && (a3 & 0xFFFFFFFC) != 0)
  {
    v5 = result;
    v6 = *(result + 32);
    v7 = *(result + 48);
    v8 = *([(_LSDatabase *)v6 schema]+ 216);
    v9 = _UTTypeGet(*(v5 + 32));
    result = _LSBindingListBufferAppend(v6, v7, v8, *(v9 + 12));
    if (result)
    {
      *(*(*(v5 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t ___ZL31_LSServerRegisterExtensionPointP11_LSDatabasejPK10__CFStringjPK14__CFDictionaryPK7__CFURL_block_invoke(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (a3)
  {
    v3 = result;
    if (a3[45] == *(result + 60) && a3[5] == *(result + 100))
    {
      v5 = a3[46];
      if (v5 != *(result + 132))
      {
        if (v5)
        {
          v7 = *(*(*(result + 40) + 8) + 40);
          v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
          v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
          [v7 setObject:v8 forKey:v9];
        }

        v10 = *(*(*(v3 + 48) + 8) + 40);
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
        [v10 addObject:v11];

        v12 = *(v3 + 132);
        [(_LSDatabase *)*(v3 + 32) store];
        _CSStringRetain();
        [(_LSDatabase *)*(v3 + 32) store];
        v13 = *([(_LSDatabase *)*(v3 + 32) schema]+ 1588);

        return _CSStoreWriteToUnit();
      }
    }
  }

  return result;
}

void ___ZL31_LSServerRegisterExtensionPointP11_LSDatabasejPK10__CFStringjPK14__CFDictionaryPK7__CFURL_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [v9 intValue];
  [v5 intValue];
  _LSBindableDeactivate(v6, v7);
  v8 = *(a1 + 32);
  [v5 intValue];
  [(_LSDatabase *)v8 store];
  _CSStringRelease();
}

void std::vector<void const*>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<void const*>::allocate_at_least[abi:nn200100](a1, a2);
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

void std::allocator<void const*>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

void ___ZL25_LSPluginRegisterWithInfoP11_LSDatabasePK14__CFDictionaryS3_hPS1_jj_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (_NSIsNSString() && ([v6 hasPrefix:@"DT"] & 1) == 0 && (objc_msgSend(v6, "isEqual:", @"_LSLocalizedStringsDictionary") & 1) == 0 && (objc_msgSend(v6, "isEqual:", @"_LSSliceInfosKey") & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void ___ZL25_LSPluginRegisterWithInfoP11_LSDatabasePK14__CFDictionaryS3_hPS1_jj_block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  if ((_LSIsDictionaryWithKeysAndValuesOfClass(v8, v6, v7) & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void _LSPluginRegistration_CFDictionaryApplier(const __CFString *a1, CFDictionaryRef theDict, char *a3)
{
  v11 = 0;
  if (!theDict)
  {
    CFDictionaryGetTypeID();
LABEL_7:
    Value = 0;
    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(theDict, @"NSExtensionAttributes");
  TypeID = CFDictionaryGetTypeID();
  if (Value && TypeID && CFGetTypeID(Value) != TypeID)
  {
    goto LABEL_7;
  }

LABEL_8:
  v7 = _LSRegisterPlugin(*a3, (a3 + 8), Value, a1, *(a3 + 27), *(a3 + 28), *(a3 + 58), &v11);
  if (v7 || (v8 = v11) == 0)
  {
    if (v7 == -10651)
    {
      return;
    }

    goto LABEL_15;
  }

  if (a3[236])
  {
LABEL_15:
    *(a3 + 62) = v7;
    return;
  }

  v9 = *a3;
  v10 = *(a3 + 30);

  LSPluginAddInfoToPayloadDict(v9, v10, v8, 1, 1);
}

uint64_t _LSRegisterPlugin(_LSDatabase *a1, const LSPluginInfo *a2, __CFString *a3, const __CFString *a4, const __CFString *a5, const __CFDictionary *a6, int a7, unsigned int *a8)
{
  v146 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v141 = 0u;
  memset(v142, 0, 60);
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  memset(v136, 0, sizeof(v136));
  v134 = kLSVersionNumberNull;
  v135 = unk_1817E90C0;
  v117 = 0;
  v14 = *a2;
  v103 = *(a2 + 1);
  v116 = 0;
  v115 = 0;
  if (!a6 || (v102 = a5, v104 = v14, a3) && (v15 = CFGetTypeID(a3), v15 != CFDictionaryGetTypeID()))
  {
    v44 = 0;
    v32 = 4294967246;
    goto LABEL_143;
  }

  cf = CFDictionaryGetValue(a6, @"NSExtensionPointIdentifier");
  TypeID = CFStringGetTypeID();
  if (!cf || TypeID && CFGetTypeID(cf) != TypeID)
  {
    cf = 0;
  }

  if (a3)
  {
    if (!CFDictionaryContainsKey(a3, @"NSExtensionPointName") || (Value = CFDictionaryGetValue(a3, @"NSExtensionPointName"), v18 = CFStringGetTypeID(), Value) && v18 && CFGetTypeID(Value) != v18)
    {
      Value = 0;
    }

    if (!CFDictionaryContainsKey(a3, @"NSExtensionIdentifier") || (v19 = CFDictionaryGetValue(a3, @"NSExtensionIdentifier"), v20 = CFStringGetTypeID(), v19) && v20 && CFGetTypeID(v19) != v20)
    {
      v19 = 0;
    }

    if (!CFDictionaryContainsKey(a3, @"NSExtensionVersion") || (v21 = CFDictionaryGetValue(a3, @"NSExtensionVersion"), v22 = CFStringGetTypeID(), v21) && v22 && CFGetTypeID(v21) != v22)
    {
      v21 = 0;
    }

    if (!CFDictionaryContainsKey(a3, @"NSExtensionPointVersion") || (a3 = CFDictionaryGetValue(a3, @"NSExtensionPointVersion"), v23 = CFStringGetTypeID(), a3) && v23 && CFGetTypeID(a3) != v23)
    {
      a3 = 0;
    }
  }

  else
  {
    Value = 0;
    v21 = 0;
    v19 = 0;
  }

  if (v19)
  {
    v24 = v19;
  }

  else
  {
    v24 = a4;
  }

  v105 = v24;
  v25 = _LSBundleGet(v13, a7);
  if (!v25 || (*(v25 + 179) & 0x10) == 0)
  {
    goto LABEL_39;
  }

  if (cf)
  {
    v26 = cf;
    if ([(__CFString *)v26 isEqualToString:@"com.apple.widgetkit-extension"])
    {

      goto LABEL_39;
    }

    v27 = [(__CFString *)v26 isEqualToString:@"com.apple.background-asset-downloader-extension"];

    if (v27)
    {
LABEL_39:
      v28 = *(a2 + 3);
      v114 = 0;
      v29 = _LSAliasAddURL(v13, v28, &v114);
      v30 = v114;
      v31 = v30;
      if (v29)
      {
      }

      else
      {
        v32 = _LSGetOSStatusFromNSError(v30);

        if (v32)
        {
          goto LABEL_103;
        }
      }

      *&v136[0] = __PAIR64__(*(a2 + 48), v29);
      if ([__LSDefaultsGetSharedInstance() isInEducationMode])
      {
        goto LABEL_46;
      }

      v33 = *(a2 + 4);
      if (!v33)
      {
        goto LABEL_46;
      }

      v113 = 0;
      v34 = _LSAliasAddURL(v13, v33, &v113);
      v35 = v113;
      v36 = v35;
      LODWORD(v137) = v34;
      if (v34)
      {

        goto LABEL_46;
      }

      v32 = _LSGetOSStatusFromNSError(v35);

      if (!v32)
      {
LABEL_46:
        HIDWORD(v136[0]) = _LSDatabaseCreateStringForCFString(v13, *(a2 + 5), 0);
        v37 = *(a2 + 7);
        if (!v37)
        {
          if ((*(a2 + 204) & 1) == 0)
          {
            goto LABEL_50;
          }

          v37 = @"0000000000";
        }

        LODWORD(v136[1]) = _LSDatabaseCreateStringForCFString(v13, v37, 0);
LABEL_50:
        if (cf)
        {
          v38 = cf;
        }

        else
        {
          v38 = Value;
        }

        StringForCFString = _LSDatabaseCreateStringForCFString(v13, v105, 0);
        if (v21)
        {
          v40 = v21;
        }

        else
        {
          v40 = v102;
        }

        HIDWORD(v141) = StringForCFString;
        _LSGetVersionFromString(v40, buf);
        *(&v136[1] + 12) = *buf;
        *(&v136[2] + 12) = *&buf[16];
        if (a3)
        {
          _LSGetVersionFromString(a3, buf);
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        *(v142 + 12) = *buf;
        *(&v142[1] + 12) = *&buf[16];
        DWORD1(v136[1]) = v103;
        if (Value)
        {
          v41 = _LSDatabaseCreateStringForCFString(v13, Value, 0);
          goto LABEL_76;
        }

        if (_LSExtensionPointFindWithIdentifier(v13, v38, v103, 0, &v116, &v115) == -10814)
        {
          v42 = _LSRegistrationLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v105;
            *&buf[12] = 2112;
            *&buf[14] = v38;
            _os_log_impl(&dword_18162D000, v42, OS_LOG_TYPE_INFO, "Registering extension %@ but haven't yet registered extension point %@", buf, 0x16u);
          }
        }

        else
        {
          if (!a3 || (*buf = *(v142 + 12), *&buf[16] = *(&v142[1] + 12), v45 = *(v115 + 24), v144 = *(v115 + 8), v145 = v45, !_LSVersionNumberCompare(buf, &v144)))
          {
LABEL_72:
            if (v115 && (v48 = *(v115 + 40), v49 = v13, [(_LSDatabase *)v13 store], _CSStringRetain(), v115))
            {
              v41 = *(v115 + 40);
            }

            else
            {
              v41 = 0;
            }

LABEL_76:
            DWORD2(v142[0]) = v41;
            DWORD1(v142[0]) = _LSDatabaseCreateStringForCFString(v13, v38, 0);
            DWORD1(v137) = _LSDatabaseCreateStringForCFString(v13, *(a2 + 8), 0);
            HIDWORD(v137) = _LSDatabaseCreateStringForCFString(v13, *(a2 + 9), 0);
            DWORD2(v136[0]) = _LSDatabaseCreateStringForCFString(v13, *(a2 + 15), 0);
            HIDWORD(v138) = _LSDatabaseCreateStringForCFString(v13, *(a2 + 10), 0);
            LODWORD(v139) = _LSDatabaseCreateStringForCFString(v13, *(a2 + 11), 0);
            DWORD1(v139) = _LSDatabaseCreateStringForCFString(v13, *(a2 + 12), 0);
            v44 = [*(a2 + 1) sortedArrayUsingSelector:sel_compare_];
            if ((*(a2 + 204) & 0x20) != 0)
            {
              v53 = _LSAliasGet(v13, v136[0]);
              v54 = [v53 mutableCopy];

              v111 = 0u;
              v112 = 0u;
              v109 = 0u;
              v110 = 0u;
              v55 = v44;
              v56 = [v55 countByEnumeratingWithState:&v109 objects:v133 count:16];
              if (v56)
              {
                v57 = *v110;
                do
                {
                  for (i = 0; i != v56; ++i)
                  {
                    if (*v110 != v57)
                    {
                      objc_enumerationMutation(v55);
                    }

                    v59 = [*(*(&v109 + 1) + 8 * i) dataUsingEncoding:4];
                    [v54 appendData:v59];
                  }

                  v56 = [v55 countByEnumeratingWithState:&v109 objects:v133 count:16];
                }

                while (v56);
              }

              v60 = [MEMORY[0x1E696AFB0] _LS_UUIDWithData:v54 digestType:1];
              v52 = [v60 UUIDString];
            }

            else
            {
              v50 = *MEMORY[0x1E695E480];
              v51 = CFUUIDCreate(*MEMORY[0x1E695E480]);
              v52 = CFUUIDCreateString(v50, v51);
              CFRelease(v51);
            }

            HIDWORD(v142[2]) = _LSDatabaseCreateStringForCFString(v13, v52, 0);
            if ([v44 count])
            {
              StringArray = _LSDatabaseCreateStringArray(v13, *(a2 + 1), 0, 0);
            }

            else
            {
              StringArray = 0;
            }

            v62 = *(a2 + 2);
            if (v62)
            {
              _LSGetVersionFromString(v62, buf);
              v134 = *buf;
              v135 = *&buf[16];
            }

            *(&v136[3] + 12) = v134;
            *(&v136[4] + 12) = v135;
            HIDWORD(v139) = _LSPlistAdd(v13, *(a2 + 13));
            if (([__LSDefaultsGetSharedInstance() isInEducationMode] & 1) == 0)
            {
              LODWORD(v140) = _LSPlistAdd(v13, *(a2 + 14));
            }

            DWORD2(v139) = _LSPlistAdd(v13, *(a2 + 16));
            HIDWORD(v136[5]) = StringArray;
            LODWORD(v142[3]) = a7;
            if ((*a2 & 4) != 0)
            {
              v63 = _LSPluginFindWithInfo(v13, 0, *(a2 + 6), 0, 0, &v117, 0);
              v64 = v63;
              if (v63 && *(v63 + 184) != DWORD2(v142[0]))
              {
                v32 = 0;
                v104 &= ~4u;
              }

              else
              {
                LODWORD(v142[0]) = _LSDatabaseCreateStringForCFString(v13, *(a2 + 6), 0);
                if (v64)
                {
                  LODWORD(v144) = *(v64 + 168) | 8;
                  *buf = 0;
                  v65 = v13;
                  [(_LSDatabase *)v13 store];
                  v66 = v13;
                  v67 = *([(_LSDatabase *)v13 schema]+ 1588);
                  if (_CSStoreWriteToUnit())
                  {
                    v32 = 0;
                  }

                  else
                  {
                    v32 = _LSGetOSStatusFromNSError(*buf);
                  }
                }

                else
                {
                  v32 = 0;
                }
              }
            }

            else
            {
              v32 = 0;
              LODWORD(v142[0]) = 0;
            }

            WORD6(v140) = _LSSliceMaskForSliceArray(*(a2 + 20));
            LODWORD(v141) = *(a2 + 50);
            DWORD2(v141) = v104;
            BYTE4(v141) = *(a2 + 204);
            v68 = objc_autoreleasePoolPush();
            v69 = [[FSNode alloc] initWithURL:*(a2 + 3) flags:0 error:0];
            BYTE4(v140) = _LSGetDirectoryClassForNode(v69);

            objc_autoreleasePoolPop(v68);
            v70 = objc_autoreleasePoolPush();
            v71 = [*(a2 + 17) objectForKeyedSubscript:*MEMORY[0x1E695E120]];
            LODWORD(v138) = LaunchServices::LocalizedString::Add(v13, v71, *(a2 + 9));

            objc_autoreleasePoolPop(v70);
            v72 = objc_autoreleasePoolPush();
            v73 = [*(a2 + 17) objectForKeyedSubscript:*MEMORY[0x1E695E4F8]];
            DWORD2(v137) = LaunchServices::LocalizedString::Add(v13, v73, *(a2 + 9));

            objc_autoreleasePoolPop(v72);
            v74 = objc_autoreleasePoolPush();
            v75 = [*(a2 + 17) objectForKeyedSubscript:@"NSMicrophoneUsageDescription"];
            DWORD1(v138) = LaunchServices::LocalizedString::Add(v13, v75, *(a2 + 18));

            objc_autoreleasePoolPop(v74);
            DWORD2(v140) = _LSPlistAdd(v13, *(a2 + 19));
            BYTE5(v140) = *(a2 + 196);
            v131 = *(&v136[3] + 12);
            v132 = *(&v136[4] + 12);
            v76 = DWORD1(v136[1]) - 1;
            if ((DWORD1(v136[1]) - 1) > 0xA)
            {
              v77 = -1;
              v78 = -1;
              v79 = -1;
            }

            else
            {
              v77 = qword_1817E8F20[v76];
              v78 = qword_1817E8F78[v76];
              v79 = qword_1817E8FD0[v76];
            }

            _LSMakeVersionNumber(v77, v78, v79, v143);
            *buf = v131;
            *&buf[16] = v132;
            v144 = v143[0];
            v145 = v143[1];
            if (_LSVersionNumberCompare(buf, &v144) > 1)
            {
              v82 = 0;
            }

            else
            {
              v80 = *(a2 + 22);
              if (v80)
              {
                Count = CFArrayGetCount(v80);
              }

              else
              {
                Count = 0;
              }

              v83 = *(a2 + 23);
              if (v83)
              {
                v83 = CFArrayGetCount(v83);
              }

              v82 = v83 + Count;
            }

            DWORD1(v142[3]) = _LSDatabaseCreateStringForCFString(v13, *(a2 + 21), 0);
            if (v82)
            {
              v84 = v13;
              [(_LSDatabase *)v13 store];
              v85 = _CSArrayCreateWithCapacity();
            }

            else
            {
              v85 = 0;
            }

            DWORD2(v142[3]) = v85;
            v129 = v142[1];
            v130[0] = v142[2];
            *(v130 + 12) = *(&v142[2] + 12);
            v125 = v139;
            v126 = v140;
            v127 = v141;
            v128 = v142[0];
            v121 = v136[4];
            v122 = v136[5];
            v123 = v137;
            v124 = v138;
            *buf = v136[0];
            *&buf[16] = v136[1];
            v119 = v136[2];
            v120 = v136[3];
            v86 = _LSPluginAdd(v13, buf);
            HIDWORD(v117) = v86;
            if (v86)
            {
              if (DWORD2(v142[3]))
              {
                if (a7)
                {
                  v87 = _LSBundleGet(v13, a7);
                  if (v87)
                  {
                    *(v87 + 172);
                  }
                }

                _LSRegisterTypeDeclarationsForPlugin(v13, v86, v136, *(a2 + 23), *(a2 + 17));
                _LSRegisterTypeDeclarationsForPlugin(v13, v86, v136, *(a2 + 22), *(a2 + 17));
              }

              v88 = _LSBundleGet(v13, a7);
              v89 = v88;
              if (!v88)
              {
                goto LABEL_134;
              }

              if (*(v88 + 480))
              {
                v90 = v13;
                [(_LSDatabase *)v13 store];
                v91 = *(v89 + 480);
                _CSArrayAppendValue();
LABEL_134:
                if (([__LSDefaultsGetSharedInstance() isLightweightSystemServer] & 1) == 0)
                {
                  if (IconServicesLibrary(void)::frameworkLibrary)
                  {
                    v96 = 1;
                  }

                  else
                  {
                    IconServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
                    v96 = IconServicesLibrary(void)::frameworkLibrary != 0;
                  }

                  if (v105 && v96)
                  {
                    v97 = v105;
                    v98 = _LSGetPluginNotificationAndIconCacheQueue();
                    _LSRegisterPlugin(v98, &v108, v97);
                  }
                }

                goto LABEL_141;
              }

              *buf = 0;
              v92 = v13;
              [(_LSDatabase *)v13 store];
              LODWORD(v144) = _CSArrayCreate();
              if (!v144 && (v32 = _LSGetOSStatusFromNSError(*buf), v32))
              {
              }

              else
              {
                v93 = v13;
                [(_LSDatabase *)v13 store];
                v94 = v13;
                v95 = *([(_LSDatabase *)v13 schema]+ 4);
                if (_CSStoreWriteToUnit())
                {

LABEL_133:
                  v32 = 0;
                  goto LABEL_134;
                }

                v32 = _LSGetOSStatusFromNSError(*buf);

                if (!v32)
                {
                  goto LABEL_133;
                }
              }
            }

            else
            {
              v32 = 4294956479;
            }

LABEL_141:
            if (v52)
            {
              CFRelease(v52);
            }

            goto LABEL_143;
          }

          v42 = _LSRegistrationLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            v46 = *(v115 + 24);
            v144 = *(v115 + 8);
            v145 = v46;
            v47 = _LSVersionNumberGetStringRepresentation(&v144);
            *buf = 138413058;
            *&buf[4] = v105;
            *&buf[12] = 2112;
            *&buf[14] = a3;
            *&buf[22] = 2112;
            *&buf[24] = v38;
            LOWORD(v119) = 2112;
            *(&v119 + 2) = v47;
            _os_log_impl(&dword_18162D000, v42, OS_LOG_TYPE_INFO, "Extension %@ specified NSExtensionPointVersion %@ that does not match the active extensionPoint <%@:%@>", buf, 0x2Au);
          }
        }

        goto LABEL_72;
      }

LABEL_103:
      v44 = 0;
      goto LABEL_143;
    }
  }

  v43 = _LSInstallLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    _LSRegisterPlugin();
  }

  v44 = 0;
  v32 = 4294956645;
LABEL_143:
  if (HIDWORD(v117))
  {
    *a8 = HIDWORD(v117);
  }

  v99 = *MEMORY[0x1E69E9840];
  return v32;
}

void ___ZL17_LSRegisterPluginP11_LSDatabaseRK12LSPluginInfoPK14__CFDictionaryPK10__CFStringS9_S6_jPj_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  softLink_ISInvalidateCacheEntriesForBundleIdentifier(*(a1 + 32));

  objc_autoreleasePoolPop(v2);
}

void ___ZL61_LSFindExistingRegisteredBundleWithContainerMatchingAliasDataP11_LSDatabasejP6NSDataPj_block_invoke(uint64_t a1, int a2, int *a3, uint64_t a4, _BYTE *a5)
{
  if (!a3)
  {
    return;
  }

  if (a3[81] != *(a1 + 64))
  {
    return;
  }

  v9 = *(a1 + 68);
  if (v9)
  {
    if (v9 != a3[1])
    {
      return;
    }
  }

  v10 = _LSAliasGet(*(a1 + 32), *a3);
  if (v10)
  {
    v17 = v10;
    v11 = [FSNode compareBookmarkData:*(a1 + 40) toBookmarkData:v10];
    v10 = v17;
    if (!v11)
    {
LABEL_12:
      v16 = *(a1 + 56);
      if (v16)
      {
        *v16 = a2;
      }

      *(*(*(a1 + 48) + 8) + 24) = a3;
      *a5 = 1;
      goto LABEL_17;
    }

    if (v11 == 2)
    {
      v12 = [FSNode pathForBookmarkData:*(a1 + 40) error:0];
      v13 = [FSNode pathForBookmarkData:v17 error:0];
      v14 = v13;
      if (*(a1 + 68) == a3[1] && v12 && v13)
      {
        v15 = [v12 isEqualToString:v13];

        v10 = v17;
        if (v15)
        {
          goto LABEL_12;
        }
      }

      else
      {

        v10 = v17;
      }
    }
  }

LABEL_17:
}

void _LSLogStep(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v13 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v11 arguments:a6];
  }

  else
  {
    v12 = 0;
  }

  [getAITransactionLogClass() logStep:a1 byParty:5 phase:a2 success:a3 forBundleID:v13 description:v12];
}

{
  v13 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v11 arguments:a6];
  }

  else
  {
    v12 = 0;
  }

  [getAITransactionLogClass() logStep:a1 byParty:5 phase:a2 success:a3 forBundleID:v13 description:v12];
}

Class initAITransactionLog(void)
{
  if (!MobileInstallationLibrary(void)::frameworkLibrary)
  {
    MobileInstallationLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
  }

  result = objc_getClass("AITransactionLog");
  classAITransactionLog = result;
  getAITransactionLogClass = AITransactionLogFunction;
  return result;
}

{
  if (!MobileInstallationLibrary(void)::frameworkLibrary)
  {
    MobileInstallationLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
  }

  result = objc_getClass("AITransactionLog");
  classAITransactionLog = result;
  getAITransactionLogClass = AITransactionLogFunction;
  return result;
}

{
  if (!MobileInstallationLibrary(void)::frameworkLibrary)
  {
    MobileInstallationLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
  }

  result = objc_getClass("AITransactionLog");
  classAITransactionLog = result;
  getAITransactionLogClass = AITransactionLogFunction;
  return result;
}

id AITransactionLogFunction(void)
{
  return classAITransactionLog;
}

{
  return classAITransactionLog;
}

{
  return classAITransactionLog;
}

__CFDictionary *_LSCreateRegistrationDataForDirectoryNode(LSContext *a1, LSRegistrationInfo *a2, const __CFURL *a3, _LSBundleProvider *a4, FSNode *a5, const __CFArray **a6, const __CFArray **a7)
{
  v205 = *MEMORY[0x1E69E9840];
  v179 = a2;
  v180 = a3;
  v181 = a4;
  v9 = [(__CFURL *)v180 infoDictionary];
  Mutable = copyDeepMutableDictionary(v9);

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  theDict = Mutable;
  if (!CFDictionaryGetCount(Mutable))
  {
    CFDictionaryAddValue(Mutable, @"_LSInfoPlistIsMissing", *MEMORY[0x1E695E4D0]);
  }

  CFDictionaryRemoveValue(Mutable, @"LSIsSecuredSystemContent");
  if ([(_LSBundleProvider *)v181 isSecuredSystemContent])
  {
    CFDictionaryAddValue(Mutable, @"LSIsSecuredSystemContent", *MEMORY[0x1E695E4D0]);
  }

  v11 = v181;
  *buf = MEMORY[0x1E695E110];
  *&v199 = 0;
  _LSNodeIsOnCryptex(v11, buf, &v199);
  v12 = *buf;
  v13 = v199;
  v203[0] = v12;
  v198 = v13;
  v14 = _LSNodeIsOnCryptex(v11, v203, &v198);
  v15 = v203[0];

  v16 = v198;
  if ((v14 & 1) == 0)
  {
    v17 = _LSRegistrationLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      _LSCreateRegistrationDataForDirectoryNode();
    }
  }

  CFDictionarySetValue(theDict, @"_LSIsOnCryptex", v15);

  v18 = v11;
  if (a5 && (Value = CFDictionaryGetValue(a5, @"BundleContainer"), TypeID = CFStringGetTypeID(), Value) && (!TypeID || CFGetTypeID(Value) == TypeID))
  {
    v21 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], Value, kCFURLPOSIXPathStyle, 1u);
    v22 = _LSCopyiTunesMetadataDictionaryForAppContainerURL(v21);
    if (v21)
    {
      CFRelease(v21);
    }

    if (v22)
    {
      _LSPromoteiTunesMetadataKeys(v22, theDict);
      CFRelease(v22);
    }
  }

  else
  {
  }

  v23 = objc_autoreleasePoolPush();
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:_LSGetDirectoryClassForNode(v18)];
  CFDictionaryAddValue(theDict, @"_LSDirectoryClass", v24);
  objc_autoreleasePoolPop(v23);
  v25 = v180;
  v26 = *[(_LSBundleProvider *)v25 provider];
  if (v26)
  {
    v27 = CFRetain(v26);
    v28 = v27;
    if (v27)
    {
      v30 = CFURLCopyFileSystemPath(v27, kCFURLPOSIXPathStyle);
      if (v30)
      {
        _LSPathifyIconKey(v25, theDict, *MEMORY[0x1E695E130], v29);
        _LSPathifyIconKeysInPlistKey(v25, theDict, *MEMORY[0x1E695E128], *MEMORY[0x1E695E168], v31);
        _LSPathifyIconKeysInPlistKey(v25, theDict, *MEMORY[0x1E695E198], *MEMORY[0x1E695E180], v32);
        _LSPathifyIconKeysInPlistKey(v25, theDict, @"UTExportedTypeDeclarations", @"UTTypeIconFile", v33);
        _LSPathifyIconKeysInPlistKey(v25, theDict, @"UTImportedTypeDeclarations", @"UTTypeIconFile", v34);
        CFRelease(v30);
      }

      CFRelease(v28);
    }
  }

  v35 = [(_LSBundleProvider *)v25 provider];
  _LSPathifyReferenceAccessorysInTypeDeclarationsForKey(v35, theDict, @"UTExportedTypeDeclarations");
  _LSPathifyReferenceAccessorysInTypeDeclarationsForKey(v35, theDict, @"UTImportedTypeDeclarations");

  v190 = v18;
  *buf = 0;
  LODWORD(v199) = 0;
  v36 = *MEMORY[0x1E695E138];
  if (theDict)
  {
    v37 = v36 == 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = !v37;
  if (v37)
  {
    CFStringGetTypeID();
  }

  else
  {
    v39 = CFDictionaryGetValue(theDict, *MEMORY[0x1E695E138]);
    v40 = CFStringGetTypeID();
    if (!v39 || !v40 || CFGetTypeID(v39) == v40)
    {
      goto LABEL_38;
    }
  }

  v39 = 0;
LABEL_38:
  v41 = _LSGetRawOSTypeForPossibleString(v39);
  v42 = *MEMORY[0x1E695E150];
  if (theDict)
  {
    v43 = v42 == 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = !v43;
  v191 = v44;
  if (v43)
  {
    CFStringGetTypeID();
LABEL_50:
    v45 = 0;
    goto LABEL_51;
  }

  v45 = CFDictionaryGetValue(theDict, v42);
  v46 = CFStringGetTypeID();
  if (v45 && v46 && CFGetTypeID(v45) != v46)
  {
    goto LABEL_50;
  }

LABEL_51:
  v47 = _LSGetRawOSTypeForPossibleString(v45);
  if (([(_LSBundleProvider *)v190 getHFSType:buf creator:&v199 error:0]& 1) == 0)
  {
    goto LABEL_106;
  }

  v48 = [(_LSBundleProvider *)v190 isDirectory];
  if (*buf != v41)
  {
    if (v38)
    {
      v49 = CFDictionaryGetValue(theDict, v36);
      v50 = CFStringGetTypeID();
      if (!v49 || !v50 || CFGetTypeID(v49) == v50)
      {
LABEL_60:
        if (!gLogRegistrationErrors)
        {
LABEL_75:
          if (*buf)
          {
            v61 = _LSCopyStringForOSType(*buf);
            if (v61)
            {
              CFDictionarySetValue(theDict, v36, v61);
              CFRelease(v61);
            }
          }

          else
          {
            CFDictionaryRemoveValue(theDict, v36);
          }

          goto LABEL_79;
        }

        v51 = _LSCopyStringForOSType(*buf);
        v52 = v51;
        if (v49)
        {
          v53 = _LSCopyStringForOSType(v41);
          v54 = v53;
          v55 = *MEMORY[0x1E695E480];
          v56 = "file";
          if (v48)
          {
            v56 = "PkgInfo";
          }

          v57 = CFStringCreateWithFormat(v55, 0, @"Type mismatch: %s type = '%@', plist CFBundlePackageType = '%@'", v56, v52, v53);

          if (!v57)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v55 = *MEMORY[0x1E695E480];
          v58 = "file";
          if (v48)
          {
            v58 = "PkgInfo";
          }

          v57 = CFStringCreateWithFormat(v55, 0, @"Type mismatch: %s type = '%@', plist CFBundlePackageType is missing", v58, v51);
          if (!v57)
          {
            goto LABEL_70;
          }
        }

        _LSRegistrationWarning(v190, v57);
        CFRelease(v57);
LABEL_70:
        if (v49)
        {
          if (CFStringGetLength(v49) != 4)
          {
            Length = CFStringGetLength(v49);
            v60 = CFStringCreateWithFormat(v55, 0, @"Value for CFBundlePackageType key has incorrect length %ld (should be 4)", Length);
            if (v60)
            {
              _LSRegistrationWarning(v190, v60);
              CFRelease(v60);
            }
          }
        }

        goto LABEL_75;
      }
    }

    else
    {
      CFStringGetTypeID();
    }

    v49 = 0;
    goto LABEL_60;
  }

LABEL_79:
  if (v199 == v47)
  {
    goto LABEL_106;
  }

  if ((v191 & 1) == 0)
  {
    CFStringGetTypeID();
LABEL_86:
    v62 = 0;
    goto LABEL_87;
  }

  v62 = CFDictionaryGetValue(theDict, v42);
  v63 = CFStringGetTypeID();
  if (v62 && v63 && CFGetTypeID(v62) != v63)
  {
    goto LABEL_86;
  }

LABEL_87:
  if (gLogRegistrationErrors)
  {
    v64 = _LSCopyStringForOSType(v199);
    v65 = v64;
    if (v62)
    {
      v66 = _LSCopyStringForOSType(v47);
      v67 = v66;
      v68 = *MEMORY[0x1E695E480];
      v69 = "file";
      if (v48)
      {
        v69 = "PkgInfo";
      }

      v70 = CFStringCreateWithFormat(v68, 0, @"Signature mismatch: %s signature = '%@', plist CFBundleSignature = '%@'", v69, v65, v66);

      if (!v70)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v68 = *MEMORY[0x1E695E480];
      v71 = "file";
      if (v48)
      {
        v71 = "PkgInfo";
      }

      v70 = CFStringCreateWithFormat(v68, 0, @"Signature mismatch: %s signature = '%@', plist CFBundleSignature is missing", v71, v64);
      if (!v70)
      {
        goto LABEL_97;
      }
    }

    _LSRegistrationWarning(v190, v70);
    CFRelease(v70);
LABEL_97:
    if (v62)
    {
      if (CFStringGetLength(v62) != 4)
      {
        v72 = CFStringGetLength(v62);
        v73 = CFStringCreateWithFormat(v68, 0, @"Value for CFBundleSignature key has incorrect length %ld (should be 4)", v72);
        if (v73)
        {
          _LSRegistrationWarning(v190, v73);
          CFRelease(v73);
        }
      }
    }
  }

  if (v199)
  {
    v74 = _LSCopyStringForOSType(v199);
    if (v74)
    {
      CFDictionarySetValue(theDict, v42, v74);
      CFRelease(v74);
    }
  }

  else
  {
    CFDictionaryRemoveValue(theDict, v42);
  }

LABEL_106:

  v75 = v25;
  v189 = v179;
  v192 = v75;
  v76 = *[(_LSBundleProvider *)v75 provider];
  if (v76)
  {
    v77 = CFRetain(v76);
    if (v77)
    {
      if (a5)
      {
        v78 = CFDictionaryGetValue(a5, @"IsPlaceholder");
        v79 = CFBooleanGetTypeID();
        if (v78)
        {
          if (!v79 || CFGetTypeID(v78) == v79)
          {
            if (CFBooleanGetValue(v78))
            {
              v80 = _LSRegistrationLog();
              _LSCreateRegistrationDataForDirectoryNode(v80);
LABEL_153:
              CFRelease(v77);
              goto LABEL_154;
            }
          }
        }
      }

      v81 = LSBundleProvider::CFBundleCopyExecutableURL([(_LSBundleProvider *)v192 provider]);
      if (!v81)
      {
        v87 = _LSRegistrationLog();
        _LSCreateRegistrationDataForDirectoryNode(v87);
        goto LABEL_153;
      }

      if (theDict && *MEMORY[0x1E695E4E8])
      {
        v82 = CFDictionaryGetValue(theDict, *MEMORY[0x1E695E4E8]);
        v83 = CFStringGetTypeID();
        if (v82 && (!v83 || CFGetTypeID(v82) == v83))
        {
          PathComponent = CFURLCopyLastPathComponent(v81);
          v85 = PathComponent;
          if (PathComponent)
          {
            if (CFEqual(PathComponent, v82) || (v86 = _CFBundleCopyExecutableURLInDirectory()) == 0)
            {
              v86 = v81;
            }

            else
            {
              CFRelease(v81);
            }

            v81 = v86;
            CFRelease(v85);
          }
        }
      }

      else
      {
        CFStringGetTypeID();
      }

      v88 = CFURLCopyAbsoluteURL(v77);
      v89 = CFURLCopyFileSystemPath(v88, kCFURLPOSIXPathStyle);
      v90 = CFURLCopyAbsoluteURL(v81);
      if (v88)
      {
        CFRelease(v88);
      }

      v91 = CFURLCopyFileSystemPath(v90, kCFURLPOSIXPathStyle);
      v92 = v91;
      if (v89)
      {
        if (v91)
        {
          v93 = [FSNode relativePathToFullPath:v91 fromBasePath:v89];
          if (v93)
          {
            CFDictionaryAddValue(theDict, @"_LSExecutablePath", v93);
          }

          v94 = [[FSNode alloc] initWithURL:v81 flags:1 error:0];
          v95 = v94;
          if (v94)
          {
            if ([(FSNode *)v94 isResolvable])
            {
              v96 = [(FSNode *)v95 resolvedNodeWithFlags:0 error:0];
              v97 = v96;
              if (v96)
              {
                v98 = v96;

                v95 = v98;
              }
            }

            _LSAddExecutableFormatInfo();
            if (![(FSNode *)v95 getInodeNumber:&v189->inoExec error:0])
            {
              v99 = _LSRegistrationLog();
              if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
              {
                *buf = 138739971;
                *&buf[4] = v95;
                _os_log_impl(&dword_18162D000, v99, OS_LOG_TYPE_ERROR, "Unable to get iNode for executable %{sensitive}@", buf, 0xCu);
              }
            }

            if (![(FSNode *)v95 getContentModificationDate:&v189->executableModDate error:0])
            {
              v100 = _LSRegistrationLog();
              _LSCreateRegistrationDataForDirectoryNode(v100);
            }
          }

          if (v93)
          {
            CFRelease(v93);
          }

          CFRelease(v92);
        }

        v92 = v89;
      }

      else if (!v91)
      {
        goto LABEL_150;
      }

      CFRelease(v92);
LABEL_150:
      if (v90)
      {
        CFRelease(v90);
      }

      CFRelease(v81);
      goto LABEL_153;
    }
  }

LABEL_154:

  v101 = [(_LSBundleProvider *)v190 URL];
  v102 = v101;
  if (softLink_GSIsDocumentRevision)
  {
    v103 = softLink_GSIsDocumentRevision(v101) == 0;

    if (!v103)
    {
      CFDictionaryAddValue(theDict, @"_LSBundleIsInGenerationalStorage", *MEMORY[0x1E695E4D0]);
    }
  }

  else
  {
  }

  v104 = LSBundleProvider::intentURLPaths([(_LSBundleProvider *)v192 provider]);
  if (v104)
  {
    CFDictionaryAddValue(theDict, @"_LSIntentDefinitionURLs", v104);
  }

  v105 = LSBundleProvider::XCFBundleCopyFolderURL([(_LSBundleProvider *)v192 provider], @"Library/");
  if (v105)
  {
    _LSAddBundleLibraryInfo(a1, v105, v192, v189, theDict, 0, a6);
    CFRelease(v105);
  }

  if (a6 && !*a6 && (v189->options & 0x10000000) != 0)
  {
    v106 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/System/Library/CoreServices/CoreTypes.bundle/", kCFURLPOSIXPathStyle, 1u);
    v107 = [[_LSBundleProvider alloc] initWithURL:v106 useCacheIfPossible:1];
    v108 = v107;
    if (v107)
    {
      v109 = LSBundleProvider::XCFBundleCopyFolderURL([(_LSBundleProvider *)v107 provider], @"Library/");
      if (v109)
      {
        _LSAddBundleLibraryInfo(a1, v109, v108, v189, theDict, 0, a6);
        CFRelease(v109);
      }
    }

    if (v106)
    {
      CFRelease(v106);
    }
  }

  if (LSBundleProvider::CFBundleGetIdentifier([(_LSBundleProvider *)v192 provider]))
  {
    if ((v110 = CFStringGetTypeID(), v111 = CFDictionaryGetValue(theDict, *MEMORY[0x1E695E500]), (v112 = v111) != 0) && CFGetTypeID(v111) == v110 || (v113 = CFStringGetTypeID(), v114 = CFDictionaryGetValue(theDict, *MEMORY[0x1E695E148]), (v112 = v114) != 0) && CFGetTypeID(v114) == v113)
    {
      _LSGetVersionFromString(v112, buf);
    }
  }

  v115 = LSUseLegacyLocalizationList(theDict);
  [_LSStringLocalizer gatherLocalizedStringsForCFBundle:LSBundleProvider::bundleRef([(_LSBundleProvider *)v192 provider] infoDictionary:1 domains:"making string localizer") delegatesMightBeMainBundle:theDict legacyLocalizationList:0xFFFFFFFFLL, 0, v115];
  cfa = LSBundleProvider::XCFBundleCopyFolderURL([(_LSBundleProvider *)v192 provider], @"Extensions/");
  if (cfa)
  {
    context = objc_autoreleasePoolPush();
    v195 = objc_opt_new();
    v116 = *MEMORY[0x1E695DBB8];
    v203[0] = *MEMORY[0x1E695DBB8];
    v177 = [MEMORY[0x1E695DEC8] arrayWithObjects:v203 count:1];
    v117 = [MEMORY[0x1E696AC08] defaultManager];
    v118 = [v117 enumeratorAtURL:cfa includingPropertiesForKeys:v177 options:1 errorHandler:0];

    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    v119 = v118;
    v120 = [v119 countByEnumeratingWithState:&v199 objects:buf count:16];
    if (v120)
    {
      v121 = *v200;
      do
      {
        for (i = 0; i != v120; ++i)
        {
          if (*v200 != v121)
          {
            objc_enumerationMutation(v119);
          }

          v123 = *(*(&v199 + 1) + 8 * i);
          v124 = objc_autoreleasePoolPush();
          v198 = 0;
          v125 = [v123 getResourceValue:&v198 forKey:v116 error:0];
          v126 = v198;
          v127 = v126;
          if (v126)
          {
            v128 = v125;
          }

          else
          {
            v128 = 0;
          }

          if (v128 != 1 || ([v126 BOOLValue] & 1) != 0)
          {
            v129 = [v123 pathExtension];
            v130 = v129;
            if (v129 && (![v129 caseInsensitiveCompare:@"appexpt"] || !objc_msgSend(v130, "caseInsensitiveCompare:", @"appextensionpoint") || !objc_msgSend(v130, "caseInsensitiveCompare:", @"appextensionpoints")))
            {
              [(__CFDictionary *)v195 addObject:v123];
            }
          }

          objc_autoreleasePoolPop(v124);
        }

        v120 = [v119 countByEnumeratingWithState:&v199 objects:buf count:16];
      }

      while (v120);
    }

    if ([(__CFDictionary *)v195 count])
    {
      v131 = [(__CFDictionary *)v195 copy];
      [(__CFDictionary *)theDict setObject:v131 forKey:@"_LSBundleExtensionPoints"];
    }

    objc_autoreleasePoolPop(context);
    CFRelease(cfa);
  }

  if (v189->action == 204)
  {
    v132 = *[(_LSBundleProvider *)v192 provider];
    if (v132)
    {
      v133 = CFRetain(v132);
      v134 = v133;
      if (v133)
      {
        v135 = CFURLCopyFileSystemPath(v133, kCFURLPOSIXPathStyle);
        CFDictionarySetValue(theDict, @"Path", v135);
        CFRelease(v134);
        CFRelease(v135);
      }
    }

    goto LABEL_222;
  }

  v136 = a5;
  if (a5)
  {
    v196 = v136;
    v137 = [(FSNode *)v136 objectForKey:@"_LSBundlePlugins"];
    if (!v137 || !_NSIsNSDictionary() || ![v137 count])
    {

      goto LABEL_222;
    }

    cfb = *MEMORY[0x1E695E480];
    v138 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v187 = v137;
    v139 = [v137 allValues];
    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    v140 = v139;
    v141 = [v140 countByEnumeratingWithState:&v199 objects:buf count:16];
    if (v141)
    {
      v142 = *v200;
      do
      {
        for (j = 0; j != v141; ++j)
        {
          if (*v200 != v142)
          {
            objc_enumerationMutation(v140);
          }

          v144 = [*(*(&v199 + 1) + 8 * j) objectForKey:@"Path"];
          v145 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v144 isDirectory:1];
          LSBundleProvider::LSBundleProvider(v203, v145);
          if (LSBundleProvider::bundleRef(v203, 1, "checking for validity"))
          {
            v146 = LSBundleProvider::bundleRef(v203, 1, 0);
            CFArrayAppendValue(v138, v146);
          }

          LSBundleProvider::~LSBundleProvider(v203);
        }

        v141 = [v140 countByEnumeratingWithState:&v199 objects:buf count:16];
      }

      while (v141);
    }

    if (v138)
    {
      if (theDict)
      {
        v178 = CFDictionaryGetValue(theDict, @"_LSBundlePlugins");
        v147 = CFDictionaryGetTypeID();
        if (v178 && (!v147 || CFGetTypeID(v178) == v147))
        {
          goto LABEL_227;
        }
      }

      else
      {
        CFDictionaryGetTypeID();
      }

      if (CFArrayGetCount(v138) < 1)
      {
        v178 = 0;
      }

      else
      {
        v178 = CFDictionaryCreateMutable(cfb, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(theDict, @"_LSBundlePlugins", v178);
        CFRelease(v178);
      }

LABEL_227:
      v150 = CFDictionaryGetTypeID();
      v151 = CFDictionaryGetValue(v196, @"_LSBundlePlugins");
      v152 = v151;
      if (v151)
      {
        if (CFGetTypeID(v151) == v150)
        {
          v153 = v152;
        }

        else
        {
          v153 = 0;
        }

        v197 = v153;
      }

      else
      {
        v197 = 0;
      }

      if (CFArrayGetCount(v138) < 1)
      {
LABEL_268:
        CFRelease(v138);
        goto LABEL_222;
      }

      v154 = 0;
      v155 = *MEMORY[0x1E695E4D0];
      cfc = *MEMORY[0x1E695E4D0];
      v188 = *MEMORY[0x1E695E4C0];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v138, v154);
        v157 = _LSCopyBundleInfoDictionary(ValueAtIndex);
        v158 = objc_autoreleasePoolPush();
        CFAutorelease(v157);
        v159 = [v157 _ls_normalizedPluginPlist];
        v160 = [v159 mutableCopy];

        objc_autoreleasePoolPop(v158);
        Identifier = CFBundleGetIdentifier(ValueAtIndex);
        v162 = CFBundleCopyBundleURL(ValueAtIndex);
        v163 = CFBundleCopyExecutableURL(ValueAtIndex);
        if (v162)
        {
          v164 = [[FSNode alloc] initWithURL:v162 flags:0 error:0];
          if ([(FSNode *)v164 isSecuredSystemContent])
          {
            CFDictionarySetValue(v160, @"LSIsSecuredSystemContent", cfc);
          }

          v165 = CFURLCopyFileSystemPath(v162, kCFURLPOSIXPathStyle);
          CFDictionarySetValue(v160, @"Path", v165);
          CFRelease(v162);
          CFRelease(v165);
        }

        if (v163)
        {
          v166 = [[FSNode alloc] initWithURL:v163 flags:1 error:0];
          if (v166)
          {
            bzero(buf, 0x400uLL);
            if ([(FSNode *)v166 getFileSystemRepresentation:buf error:0])
            {
              *&v199 = 0;
              v167 = open(buf, 0, 511);
              if ((v167 & 0x80000000) == 0)
              {
                v168 = [(FSNode *)v166 getLength:&v199 error:0];
                if (v199)
                {
                  v169 = v168;
                }

                else
                {
                  v169 = 0;
                }

                if (v169)
                {
                  fcntl(v167, 48, 1);
                  v170 = objc_autoreleasePoolPush();
                  v171 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  _LSParseLoadCommands();
                  [(__CFDictionary *)v160 setObject:v171 forKey:@"_LSSliceInfosKey"];

                  objc_autoreleasePoolPop(v170);
                }

                close(v167);
              }
            }
          }

          CFRelease(v163);
        }

        if (v197)
        {
          CFDictionaryGetTypeID();
          v172 = CFDictionaryGetValue(v197, Identifier);
          if (v172)
          {
            CFGetTypeID(v172);
          }
        }

        [_LSStringLocalizer gatherLocalizedStringsForCFBundle:ValueAtIndex infoDictionary:v160 domains:3 legacyLocalizationList:LSUseLegacyLocalizationList(v160)];
        v173 = v188;
        if (softLinkLNIsLinkEnabled)
        {
          if (softLinkLNIsLinkEnabled(ValueAtIndex))
          {
            v173 = cfc;
          }

          else
          {
            v173 = v188;
          }
        }

        CFDictionaryAddValue(v160, @"_LSIsLinkEnabled", v173);
        v174 = objc_autoreleasePoolPush();
        if (softLinkINSchemaURLsForIntentNamesWithBundle)
        {
          v175 = softLinkINSchemaURLsForIntentNamesWithBundle(ValueAtIndex);
        }

        else
        {
          v175 = 0;
        }

        if ([v175 count])
        {
          CFDictionarySetValue(v160, @"_LSIntentDefinitionURLs", v175);
        }

        objc_autoreleasePoolPop(v174);
        if (Identifier)
        {
          if (v160)
          {
            break;
          }
        }

        if (v160)
        {
          goto LABEL_266;
        }

LABEL_267:
        if (CFArrayGetCount(v138) <= ++v154)
        {
          goto LABEL_268;
        }
      }

      CFDictionaryAddValue(v178, Identifier, v160);
LABEL_266:
      CFRelease(v160);
      goto LABEL_267;
    }
  }

LABEL_222:

  v148 = *MEMORY[0x1E69E9840];
  return theDict;
}
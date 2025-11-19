uint64_t sub_23DC882E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_23DC88338()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_23DC88380()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t __os_log_helper_16_2_2_8_32_4_0(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_4_0_8_64_8_64(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 64;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 64;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_32_4_0_8_64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 64;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

id _ACUILogSystem()
{
  predicate = &_ACUILogSystem_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = _ACUILogSystem_log;

  return v0;
}

uint64_t __os_log_helper_16_2_5_8_32_4_0_8_66_8_66_8_66(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 66;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 66;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 66;
  *(result + 39) = 8;
  *(result + 40) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_32_4_0_8_66(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 66;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

void __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_2_4_8_32_4_0_8_66_8_64(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 66;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 64;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

uint64_t __UseGoogleMail()
{
  predicate = &__UseGoogleMail_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_3);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  return __UseGoogleMail__useGoogleMail & 1;
}

id getACUISAddAccountControllerSwapClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getACUISAddAccountControllerSwapClass_softClass;
  v13 = getACUISAddAccountControllerSwapClass_softClass;
  if (!getACUISAddAccountControllerSwapClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getACUISAddAccountControllerSwapClass_block_invoke;
    v6 = &unk_278BFA8E8;
    v7 = &v9;
    __getACUISAddAccountControllerSwapClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

_BYTE *__os_log_helper_16_0_0(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t __os_log_helper_16_2_1_8_64(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_23DCA07A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, _Unwind_Exception *exception_object, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak((v30 - 104));
  _Unwind_Resume(a1);
}

uint64_t __getACUISAddAccountControllerSwapClass_block_invoke(uint64_t a1)
{
  AccountsUISettingsLibrary();
  Class = objc_getClass("ACUISAddAccountControllerSwap");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getACUISAddAccountControllerSwapClass(void)_block_invoke"];
    [v4 handleFailureInFunction:"ACUISAddAccountControllerSwap" file:? lineNumber:? description:?];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    __break(1u);
    JUMPOUT(0x23DCA277CLL);
  }

  getACUISAddAccountControllerSwapClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccountsUISettingsLibrary()
{
  v4 = 0;
  v3 = AccountsUISettingsLibraryCore(&v4);
  if (!v3)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AccountsUISettingsLibrary(void)"];
    [v2 handleFailureInFunction:v4 file:? lineNumber:? description:?];
    MEMORY[0x277D82BD8](v1);
    MEMORY[0x277D82BD8](v2);
    __break(1u);
    JUMPOUT(0x23DCA2894);
  }

  if (v4)
  {
    free(v4);
  }

  return v3;
}

uint64_t AccountsUISettingsLibraryCore(uint64_t a1)
{
  v10 = a1;
  v8 = AccountsUISettingsLibraryCore_frameworkLibrary;
  v9 = AccountsUISettingsLibraryCore_frameworkLibrary;
  if (!AccountsUISettingsLibraryCore_frameworkLibrary)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __AccountsUISettingsLibraryCore_block_invoke;
    v6 = &__block_descriptor_40_e5_v8__0l;
    v7 = v10;
    __AccountsUISettingsLibraryCore_block_invoke(&v2);
  }

  return AccountsUISettingsLibraryCore_frameworkLibrary;
}

uint64_t __AccountsUISettingsLibraryCore_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccountsUISettingsLibraryCore_frameworkLibrary = result;
  *MEMORY[0x277D85DE8];
  return result;
}

id __MailRegionCode()
{
  predicate = &__MailRegionCode_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_370);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = __MailRegionCode__regionCode;

  return v0;
}

uint64_t __os_log_helper_16_2_3_8_32_4_0_8_32(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 32;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_4_0_8_66_4_0(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 66;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 4;
  *(result + 30) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_4_0_8_0_8_64(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 64;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

void sub_23DCAE9BC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  *(v10 - 48) = a1;
  *(v10 - 52) = a2;
  objc_destroyWeak((v10 - 40));
  _Unwind_Resume(*(v10 - 48));
}

uint64_t __os_log_helper_16_2_5_8_32_4_0_8_66_8_66_8_64(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 66;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 66;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 64;
  *(result + 39) = 8;
  *(result + 40) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_4_0_8_66_8_66(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 66;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 66;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_32_4_0_8_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

void sub_23DCB2310(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  *(v10 - 112) = a1;
  *(v10 - 116) = a2;
  _Block_object_dispose((v10 - 96), 8);
  _Unwind_Resume(*(v10 - 112));
}

void sub_23DCB533C(uint64_t a1, int a2)
{
  *(v2 - 88) = a1;
  *(v2 - 92) = a2;
  _Block_object_dispose((v2 - 64), 8);
  _Unwind_Resume(*(v2 - 88));
}

id _SortIdentities(void *a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  location = 0;
  objc_storeStrong(&location, a1);
  v43 = 0;
  objc_storeStrong(&v43, a2);
  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = objc_alloc(MEMORY[0x277CBEB58]);
  v40 = [v25 initWithCapacity:{objc_msgSend(v43, "count")}];
  memset(__b, 0, sizeof(__b));
  v26 = MEMORY[0x277D82BE0](v43);
  v27 = [v26 countByEnumeratingWithState:__b objects:v48 count:16];
  if (v27)
  {
    v21 = *__b[2];
    v22 = 0;
    v23 = v27;
    while (1)
    {
      v20 = v22;
      if (*__b[2] != v21)
      {
        objc_enumerationMutation(v26);
      }

      v39 = *(__b[1] + 8 * v22);
      v18 = v40;
      v19 = [v39 lowercaseString];
      [v18 addObject:?];
      MEMORY[0x277D82BD8](v19);
      ++v22;
      if (v20 + 1 >= v23)
      {
        v22 = 0;
        v23 = [v26 countByEnumeratingWithState:__b objects:v48 count:16];
        if (!v23)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v26);
  memset(v36, 0, sizeof(v36));
  v16 = MEMORY[0x277D82BE0](location);
  v17 = [v16 countByEnumeratingWithState:v36 objects:v47 count:16];
  if (v17)
  {
    v13 = *v36[2];
    v14 = 0;
    v15 = v17;
    while (1)
    {
      v12 = v14;
      if (*v36[2] != v13)
      {
        objc_enumerationMutation(v16);
      }

      v37 = *(v36[1] + 8 * v14);
      certificateRef = 0;
      v34 = SecIdentityCopyCertificate(v37, &certificateRef);
      if (v34)
      {
        NSLog(&cfstr_SSecidentityco.isa, "_SortIdentities", v34);
      }

      else if (certificateRef)
      {
        v45 = SecCertificateCopyRFC822Names();
        v9 = v45;
        v2 = v45;
        v33 = v9;
        v32 = MEMORY[0x277D82BE0](v41);
        memset(v30, 0, sizeof(v30));
        v10 = MEMORY[0x277D82BE0](v33);
        v11 = [v10 countByEnumeratingWithState:v30 objects:v46 count:16];
        if (v11)
        {
          v6 = *v30[2];
          v7 = 0;
          v8 = v11;
          while (1)
          {
            v5 = v7;
            if (*v30[2] != v6)
            {
              objc_enumerationMutation(v10);
            }

            v31 = *(v30[1] + 8 * v7);
            v29 = [v31 lowercaseString];
            if ([v40 containsObject:v29])
            {
              objc_storeStrong(&v32, v42);
              v28 = 6;
            }

            else
            {
              v28 = 0;
            }

            objc_storeStrong(&v29, 0);
            if (v28)
            {
              break;
            }

            ++v7;
            if (v5 + 1 >= v8)
            {
              v7 = 0;
              v8 = [v10 countByEnumeratingWithState:v30 objects:v46 count:16];
              if (!v8)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v10);
        [v32 addObject:v37];
        CFRelease(certificateRef);
        objc_storeStrong(&v32, 0);
        objc_storeStrong(&v33, 0);
      }

      ++v14;
      if (v12 + 1 >= v15)
      {
        v14 = 0;
        v15 = [v16 countByEnumeratingWithState:v36 objects:v47 count:16];
        if (!v15)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v16);
  [v42 addObjectsFromArray:v41];
  if (![v42 count])
  {
    objc_storeStrong(&v42, 0);
  }

  v4 = MEMORY[0x277D82BE0](v42);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

BOOL _SecIdentityEqual(const void *a1, const void *a2)
{
  v3 = 0;
  if (a1 == a2)
  {
    return 1;
  }

  else if (a1 && a2)
  {
    return CFEqual(a1, a2) != 0;
  }

  return v3;
}

id _domainForAddress(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v7 = 0;
  *&v6 = [location rangeOfString:@"@"];
  *(&v6 + 1) = v1;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v10 = v6, v6 + v1 >= [location length]))
  {
    objc_storeStrong(&v7, 0);
  }

  else
  {
    v9 = v6;
    v2 = [location substringFromIndex:v6 + *(&v6 + 1)];
    v3 = v7;
    v7 = v2;
    MEMORY[0x277D82BD8](v3);
  }

  v5 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);

  return v5;
}

id ACUIDescriptionFromEmailAddress(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v8 = 0;
  v7 = _domainForAddress(location);
  v6 = [v7 componentsSeparatedByString:@"."];
  if ([v6 count] == 1)
  {
    objc_storeStrong(&v8, location);
  }

  else if ([v6 count] == 2)
  {
    v5 = [v6 objectAtIndexedSubscript:0];
    v1 = [v5 capitalizedString];
    v2 = v8;
    v8 = v1;
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    objc_storeStrong(&v8, v7);
  }

  v4 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);

  return v4;
}

uint64_t ACUIIsSharedIPadMode()
{
  predicate = &ACUIIsSharedIPadMode_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_6);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  return ACUIIsSharedIPadMode_isSharedIPadMode & 1;
}

void __ACUIIsSharedIPadMode_block_invoke(void *a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = MKBUserTypeDeviceMode();
  location = [v2[0] objectForKeyedSubscript:*MEMORY[0x277D28AD0]];
  if ([location isEqualToString:*MEMORY[0x277D28AE0]])
  {
    ACUIIsSharedIPadMode_isSharedIPadMode = 1;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v2, 0);
}

id ACUIOrderedDataClassList(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = [ACUIUtils sortedDataclassesFrom:location];
  objc_storeStrong(&location, 0);

  return v2;
}

id ACUIVisibleAccountTypes()
{
  predicate = &ACUIVisibleAccountTypes_token;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_21);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = ACUIVisibleAccountTypes_visibleTypes;

  return v0;
}

uint64_t __ACUIVisibleAccountTypes_block_invoke()
{
  v3[14] = *MEMORY[0x277D85DE8];
  v3[0] = *MEMORY[0x277CB8D10];
  v3[1] = *MEMORY[0x277CB8BC8];
  v3[2] = *MEMORY[0x277CB8BD8];
  v3[3] = *MEMORY[0x277CB8C60];
  v3[4] = *MEMORY[0x277CB8CD8];
  v3[5] = *MEMORY[0x277CB8C00];
  v3[6] = *MEMORY[0x277CB8C50];
  v3[7] = *MEMORY[0x277CB8C98];
  v3[8] = *MEMORY[0x277CB8C40];
  v3[9] = *MEMORY[0x277CB8D38];
  v3[10] = *MEMORY[0x277CB8B98];
  v3[11] = *MEMORY[0x277CB8C70];
  v3[12] = *MEMORY[0x277CB8C68];
  v3[13] = *MEMORY[0x277CB8BA0];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:14];
  v1 = ACUIVisibleAccountTypes_visibleTypes;
  ACUIVisibleAccountTypes_visibleTypes = v0;
  result = MEMORY[0x277D82BD8](v1);
  *MEMORY[0x277D85DE8];
  return result;
}

id ACUISortedAccountTypes()
{
  predicate = &ACUISortedAccountTypes_token;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_24);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = ACUISortedAccountTypes_sortedTypes;

  return v0;
}

uint64_t __ACUISortedAccountTypes_block_invoke()
{
  v3[14] = *MEMORY[0x277D85DE8];
  v3[0] = *MEMORY[0x277CB8BA0];
  v3[1] = *MEMORY[0x277CB8C00];
  v3[2] = *MEMORY[0x277CB8C50];
  v3[3] = *MEMORY[0x277CB8C40];
  v3[4] = *MEMORY[0x277CB8D38];
  v3[5] = *MEMORY[0x277CB8B98];
  v3[6] = *MEMORY[0x277CB8C68];
  v3[7] = *MEMORY[0x277CB8C70];
  v3[8] = *MEMORY[0x277CB8C60];
  v3[9] = *MEMORY[0x277CB8CD8];
  v3[10] = *MEMORY[0x277CB8C98];
  v3[11] = *MEMORY[0x277CB8BC8];
  v3[12] = *MEMORY[0x277CB8BD8];
  v3[13] = *MEMORY[0x277CB8D10];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:14];
  v1 = ACUISortedAccountTypes_sortedTypes;
  ACUISortedAccountTypes_sortedTypes = v0;
  result = MEMORY[0x277D82BD8](v1);
  *MEMORY[0x277D85DE8];
  return result;
}

id ACUIFetchSettingTitle(int a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 900:
        v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v7 = [v3 localizedStringForKey:@"15_MIN" value:&stru_2850054A0 table:@"Localizable"];
        MEMORY[0x277D82BD8](v3);
        break;
      case 1800:
        v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v7 = [v4 localizedStringForKey:@"30_MIN" value:&stru_2850054A0 table:@"Localizable"];
        MEMORY[0x277D82BD8](v4);
        break;
      case 3600:
        v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v7 = [v5 localizedStringForKey:@"HOURLY" value:&stru_2850054A0 table:@"Localizable"];
        MEMORY[0x277D82BD8](v5);
        break;
      default:
        v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v7 = [v2 localizedStringForKey:@"OFF" value:&stru_2850054A0 table:@"Localizable"];
        MEMORY[0x277D82BD8](v2);
        break;
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"AUTOMATICALLY" value:&stru_2850054A0 table:@"Localizable"];
    MEMORY[0x277D82BD8](v6);
  }

  return v7;
}

uint64_t ACUIFetchSettingFromNumber(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = [location intValue];
  objc_storeStrong(&location, 0);
  return v2;
}

uint64_t PreferencesExtendedLibrary()
{
  v4 = 0;
  v3 = PreferencesExtendedLibraryCore(&v4);
  if (!v3)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PreferencesExtendedLibrary(void)"];
    [v2 handleFailureInFunction:v4 file:? lineNumber:? description:?];
    MEMORY[0x277D82BD8](v1);
    MEMORY[0x277D82BD8](v2);
    __break(1u);
    JUMPOUT(0x23DCBC518);
  }

  if (v4)
  {
    free(v4);
  }

  return v3;
}

uint64_t PreferencesExtendedLibraryCore(uint64_t a1)
{
  v10 = a1;
  v8 = PreferencesExtendedLibraryCore_frameworkLibrary;
  v9 = PreferencesExtendedLibraryCore_frameworkLibrary;
  if (!PreferencesExtendedLibraryCore_frameworkLibrary)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __PreferencesExtendedLibraryCore_block_invoke;
    v6 = &__block_descriptor_40_e5_v8__0l;
    v7 = v10;
    __PreferencesExtendedLibraryCore_block_invoke(&v2);
  }

  return PreferencesExtendedLibraryCore_frameworkLibrary;
}

uint64_t __PreferencesExtendedLibraryCore_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PreferencesExtendedLibraryCore_frameworkLibrary = result;
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23DCC3FF0(uint64_t a1)
{
  v17 = a1;
  v18 = 0;
  v19 = a1;
  if (sub_23DCC41B8())
  {
    v11 = sub_23DCC6ED0();
    v4 = *(v11 - 8);
    v7 = v4;
    v5 = *(v4 + 64);
    v14 = &v3;
    MEMORY[0x28223BE20]();
    v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
    v10 = &v3 - v6;
    sub_23DCC6F90();
    v9 = &v3;
    MEMORY[0x28223BE20]();
    v8 = &v3 - v6;
    v1 = *MEMORY[0x277D40270];
    (*(v7 + 104))();
    sub_23DCC4230();
    v15 = sub_23DCC6FC0();
    v13 = *(v7 + 8);
    v12 = v7 + 8;
    v13(v8, v11);
    v13(v10, v11);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

unint64_t sub_23DCC4230()
{
  v2 = qword_27E30DBE8;
  if (!qword_27E30DBE8)
  {
    sub_23DCC6ED0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E30DBE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_23DCC4324(void *a1)
{
  v14 = a1;
  v15 = 0;
  v16 = a1;
  result = sub_23DCC44AC();
  if (result)
  {
    v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30DBF0, &qword_23DCCBFC8) - 8) + 64);
    v13 = &v9;
    v9 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](&v9);
    v11 = &v9 - v9;
    v10 = 0;
    v3 = sub_23DCC6F80();
    (*(*(v3 - 8) + 56))(v11, 1);
    v4 = v14;
    sub_23DCC6F60();
    v12 = sub_23DCC6F50();
    v5 = swift_allocObject();
    v6 = v14;
    v7 = v10;
    v8 = v11;
    v5[2] = v12;
    v5[3] = MEMORY[0x277D85700];
    v5[4] = v6;
    sub_23DCC4934(v7, v7, v8, &unk_23DCCBFD8, v5, MEMORY[0x277D84F78] + 8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

uint64_t sub_23DCC4554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  sub_23DCC6F60();
  v4[5] = sub_23DCC6F50();
  v8 = sub_23DCC6F40();
  v6 = v4[2];

  return MEMORY[0x2822009F8](sub_23DCC4608, v8, v5);
}

uint64_t sub_23DCC4608()
{
  v9 = v0[5];
  v1 = v0[4];
  v0[2] = v0;
  v7 = sub_23DCC6F10();
  v6 = *(v7 - 8);
  v2 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  sub_23DCC6FA0();
  sub_23DCC4928();
  sub_23DCC6F00();
  (*(v6 + 8))(v8, v7);

  v3 = *(v0[2] + 8);
  v4 = v0[2];

  return v3();
}

uint64_t sub_23DCC4728(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_23DCC4800;

  return sub_23DCC4554(a1, v6, v7, v8);
}

uint64_t sub_23DCC4800()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_23DCC4934(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a1;
  v47 = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v48 = a6;
  v49 = "Fatal error";
  v50 = "Unexpectedly found nil while unwrapping an Optional value";
  v51 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v52 = &unk_23DCCBFE8;
  v53 = 0;
  v66 = a6;
  v54 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30DBF0, &qword_23DCCBFC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v58 = &v15 - v54;

  v64 = v56;
  v65 = v57;
  sub_23DCC5094(v55, v58);
  v59 = sub_23DCC6F80();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  if ((*(v60 + 48))(v58, 1) == 1)
  {
    sub_23DCC51BC(v58);
    v45 = 0;
  }

  else
  {
    v44 = sub_23DCC6F70();
    (*(v60 + 8))(v58, v59);
    v45 = v44;
  }

  v41 = v45 | 0x1C00;
  v43 = *(v57 + 16);
  v42 = *(v57 + 24);
  swift_unknownObjectRetain();

  if (v43)
  {
    v39 = v43;
    v40 = v42;
    v33 = v42;
    v34 = v43;
    swift_getObjectType();
    v35 = sub_23DCC6F40();
    v36 = v6;
    swift_unknownObjectRelease();
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v31 = v38;
  v32 = v37;

  if (v47)
  {
    v29 = v46;
    v30 = v47;
    v7 = v53;
    v26 = v47;
    v27 = sub_23DCC6F20();

    v8 = *(v27 + 16);
    sub_23DCC5264(v27 + 32, &v64, v48, &v62);
    if (v7)
    {
      __break(1u);
    }

    v25 = v62;

    v28 = v25;
  }

  else
  {
    v28 = 0;
  }

  v24 = v28;
  if (v28)
  {
    v18 = v24;
    v17 = v24;
    sub_23DCC51BC(v55);

    v19 = v17;
  }

  else
  {

    sub_23DCC51BC(v55);
    v20 = v64;
    v21 = v65;

    v9 = swift_allocObject();
    v10 = v20;
    v11 = v21;
    v12 = v32;
    v13 = v31;
    v22 = v9;
    v9[2] = v48;
    v9[3] = v10;
    v9[4] = v11;
    v23 = 0;
    if (v12 != 0 || v13 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v32;
      v63[3] = v31;
      v23 = v63;
    }

    v19 = swift_task_create();
  }

  v16 = v19;

  return v16;
}

id ACUIStatefulNavigation.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = ACUIStatefulNavigation;
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

unint64_t type metadata accessor for ACUIStatefulNavigation()
{
  v2 = qword_27E30DCF8;
  if (!qword_27E30DCF8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27E30DCF8);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_23DCC5094(const void *a1, void *a2)
{
  v6 = sub_23DCC6F80();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30DBF0, &qword_23DCCBFC8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_23DCC51BC(uint64_t a1)
{
  v3 = sub_23DCC6F80();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_23DCC5264@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_23DCC6FB0();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t sub_23DCC5424(uint64_t a1, int *a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_23DCC5538;

  return v7(a1);
}

uint64_t sub_23DCC5538()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_23DCC5664(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_23DCC5758;

  return sub_23DCC5424(a1, v6);
}

uint64_t sub_23DCC5758()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_23DCC5880(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_23DCC5974;

  return sub_23DCC5424(a1, v6);
}

uint64_t sub_23DCC5974()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

id sub_23DCC5B60()
{
  sub_23DCC6E5C();
  type metadata accessor for ResourceBundleClass();
  result = sub_23DCC5BA8();
  qword_27E30DD08 = result;
  return result;
}

id sub_23DCC5BA8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v0;
}

uint64_t *sub_23DCC5C00()
{
  if (qword_27E30DD00 != -1)
  {
    swift_once();
  }

  return &qword_27E30DD08;
}

uint64_t sub_23DCC5C60()
{
  v2 = sub_23DCC6EF0();
  __swift_allocate_value_buffer(v2, qword_27E30DD70);
  __swift_project_value_buffer(v2, qword_27E30DD70);
  sub_23DCC6F30();
  v0 = sub_23DCC5C00();
  MEMORY[0x277D82BE0](*v0);
  return sub_23DCC6EE0();
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_23DCC5DEC()
{
  if (qword_27E30DD10 != -1)
  {
    swift_once();
  }

  v0 = sub_23DCC6EF0();
  return __swift_project_value_buffer(v0, qword_27E30DD70);
}

uint64_t sub_23DCC5E58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DCC5DEC();
  v1 = sub_23DCC6EF0();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_23DCC5EBC()
{
  v2 = sub_23DCC6EF0();
  __swift_allocate_value_buffer(v2, qword_27E30DD88);
  __swift_project_value_buffer(v2, qword_27E30DD88);
  sub_23DCC6F30();
  v0 = sub_23DCC5C00();
  MEMORY[0x277D82BE0](*v0);
  return sub_23DCC6EE0();
}

uint64_t sub_23DCC5F54()
{
  if (qword_27E30DD18 != -1)
  {
    swift_once();
  }

  v0 = sub_23DCC6EF0();
  return __swift_project_value_buffer(v0, qword_27E30DD88);
}

uint64_t sub_23DCC5FC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DCC5F54();
  v1 = sub_23DCC6EF0();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_23DCC6024()
{
  v2 = sub_23DCC6EF0();
  __swift_allocate_value_buffer(v2, qword_27E30DDA0);
  __swift_project_value_buffer(v2, qword_27E30DDA0);
  sub_23DCC6F30();
  v0 = sub_23DCC5C00();
  MEMORY[0x277D82BE0](*v0);
  return sub_23DCC6EE0();
}

uint64_t sub_23DCC60BC()
{
  if (qword_27E30DD20 != -1)
  {
    swift_once();
  }

  v0 = sub_23DCC6EF0();
  return __swift_project_value_buffer(v0, qword_27E30DDA0);
}

uint64_t sub_23DCC6128@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DCC60BC();
  v1 = sub_23DCC6EF0();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_23DCC618C()
{
  v2 = sub_23DCC6EF0();
  __swift_allocate_value_buffer(v2, qword_27E30DDB8);
  __swift_project_value_buffer(v2, qword_27E30DDB8);
  sub_23DCC6F30();
  v0 = sub_23DCC5C00();
  MEMORY[0x277D82BE0](*v0);
  return sub_23DCC6EE0();
}

uint64_t sub_23DCC6224()
{
  if (qword_27E30DD28 != -1)
  {
    swift_once();
  }

  v0 = sub_23DCC6EF0();
  return __swift_project_value_buffer(v0, qword_27E30DDB8);
}

uint64_t sub_23DCC6290@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DCC6224();
  v1 = sub_23DCC6EF0();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_23DCC62F4()
{
  v2 = sub_23DCC6EF0();
  __swift_allocate_value_buffer(v2, qword_27E30DDD0);
  __swift_project_value_buffer(v2, qword_27E30DDD0);
  sub_23DCC6F30();
  v0 = sub_23DCC5C00();
  MEMORY[0x277D82BE0](*v0);
  return sub_23DCC6EE0();
}

uint64_t sub_23DCC638C()
{
  if (qword_27E30DD30 != -1)
  {
    swift_once();
  }

  v0 = sub_23DCC6EF0();
  return __swift_project_value_buffer(v0, qword_27E30DDD0);
}

uint64_t sub_23DCC63F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DCC638C();
  v1 = sub_23DCC6EF0();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_23DCC645C()
{
  v2 = sub_23DCC6EF0();
  __swift_allocate_value_buffer(v2, qword_27E30DDE8);
  __swift_project_value_buffer(v2, qword_27E30DDE8);
  sub_23DCC6F30();
  v0 = sub_23DCC5C00();
  MEMORY[0x277D82BE0](*v0);
  return sub_23DCC6EE0();
}

uint64_t sub_23DCC64F4()
{
  if (qword_27E30DD38 != -1)
  {
    swift_once();
  }

  v0 = sub_23DCC6EF0();
  return __swift_project_value_buffer(v0, qword_27E30DDE8);
}

uint64_t sub_23DCC6560@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DCC64F4();
  v1 = sub_23DCC6EF0();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_23DCC65C4()
{
  v2 = sub_23DCC6EF0();
  __swift_allocate_value_buffer(v2, qword_27E30DE00);
  __swift_project_value_buffer(v2, qword_27E30DE00);
  sub_23DCC6F30();
  v0 = sub_23DCC5C00();
  MEMORY[0x277D82BE0](*v0);
  return sub_23DCC6EE0();
}

uint64_t sub_23DCC665C()
{
  if (qword_27E30DD40 != -1)
  {
    swift_once();
  }

  v0 = sub_23DCC6EF0();
  return __swift_project_value_buffer(v0, qword_27E30DE00);
}

uint64_t sub_23DCC66C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DCC665C();
  v1 = sub_23DCC6EF0();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_23DCC672C()
{
  v2 = sub_23DCC6EF0();
  __swift_allocate_value_buffer(v2, qword_27E30DE18);
  __swift_project_value_buffer(v2, qword_27E30DE18);
  sub_23DCC6F30();
  v0 = sub_23DCC5C00();
  MEMORY[0x277D82BE0](*v0);
  return sub_23DCC6EE0();
}

uint64_t sub_23DCC67C4()
{
  if (qword_27E30DD48 != -1)
  {
    swift_once();
  }

  v0 = sub_23DCC6EF0();
  return __swift_project_value_buffer(v0, qword_27E30DE18);
}

uint64_t sub_23DCC6830@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DCC67C4();
  v1 = sub_23DCC6EF0();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_23DCC6894()
{
  v2 = sub_23DCC6EF0();
  __swift_allocate_value_buffer(v2, qword_27E30DE30);
  __swift_project_value_buffer(v2, qword_27E30DE30);
  sub_23DCC6F30();
  v0 = sub_23DCC5C00();
  MEMORY[0x277D82BE0](*v0);
  return sub_23DCC6EE0();
}

uint64_t sub_23DCC692C()
{
  if (qword_27E30DD50 != -1)
  {
    swift_once();
  }

  v0 = sub_23DCC6EF0();
  return __swift_project_value_buffer(v0, qword_27E30DE30);
}

uint64_t sub_23DCC6998@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DCC692C();
  v1 = sub_23DCC6EF0();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_23DCC69FC()
{
  v2 = sub_23DCC6EF0();
  __swift_allocate_value_buffer(v2, qword_27E30DE48);
  __swift_project_value_buffer(v2, qword_27E30DE48);
  sub_23DCC6F30();
  v0 = sub_23DCC5C00();
  MEMORY[0x277D82BE0](*v0);
  return sub_23DCC6EE0();
}

uint64_t sub_23DCC6A94()
{
  if (qword_27E30DD58 != -1)
  {
    swift_once();
  }

  v0 = sub_23DCC6EF0();
  return __swift_project_value_buffer(v0, qword_27E30DE48);
}

uint64_t sub_23DCC6B00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DCC6A94();
  v1 = sub_23DCC6EF0();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_23DCC6B64()
{
  v2 = sub_23DCC6EF0();
  __swift_allocate_value_buffer(v2, qword_27E30DE60);
  __swift_project_value_buffer(v2, qword_27E30DE60);
  sub_23DCC6F30();
  v0 = sub_23DCC5C00();
  MEMORY[0x277D82BE0](*v0);
  return sub_23DCC6EE0();
}

uint64_t sub_23DCC6BFC()
{
  if (qword_27E30DD60 != -1)
  {
    swift_once();
  }

  v0 = sub_23DCC6EF0();
  return __swift_project_value_buffer(v0, qword_27E30DE60);
}

uint64_t sub_23DCC6C68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DCC6BFC();
  v1 = sub_23DCC6EF0();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_23DCC6CCC()
{
  v2 = sub_23DCC6EF0();
  __swift_allocate_value_buffer(v2, qword_27E30DE78);
  __swift_project_value_buffer(v2, qword_27E30DE78);
  sub_23DCC6F30();
  v0 = sub_23DCC5C00();
  MEMORY[0x277D82BE0](*v0);
  return sub_23DCC6EE0();
}

uint64_t sub_23DCC6D64()
{
  if (qword_27E30DD68 != -1)
  {
    swift_once();
  }

  v0 = sub_23DCC6EF0();
  return __swift_project_value_buffer(v0, qword_27E30DE78);
}

uint64_t sub_23DCC6DD0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DCC6D64();
  v1 = sub_23DCC6EF0();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_23DCC6E5C()
{
  v2 = qword_27E30DBF8;
  if (!qword_27E30DBF8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27E30DBF8);
    return ObjCClassMetadata;
  }

  return v2;
}
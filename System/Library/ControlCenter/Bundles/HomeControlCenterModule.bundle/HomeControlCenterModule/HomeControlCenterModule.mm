uint64_t sub_29C994280()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29C9942B8()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29C994300()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29C994344()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29C99437C()
{
  MEMORY[0x29ED4F730](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29C9943B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29C9943F4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29C994448()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29C994498()
{
  MEMORY[0x29ED4F730](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29C9944D4()
{
  v1 = sub_29C9AC078();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29C994598()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29C9945D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29C994610()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 40));

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29C99466C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

BOOL sub_29C99482C(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_msgSend_hf_prettyDescription(v2, v5, v6);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_29C992000, v4, OS_LOG_TYPE_DEFAULT, "HUCCSmartGridItemManager hiding item %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return (isKindOfClass & 1) == 0;
}

uint64_t sub_29C995170(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v10 = objc_msgSend_predictionsItemProvider(v5, v8, v9);
  v12 = objc_msgSend_itemPriority_(v10, v11, v7);

  v15 = objc_msgSend_predictionsItemProvider(*(a1 + 32), v13, v14);
  v17 = objc_msgSend_itemPriority_(v15, v16, v6);

  v19 = objc_msgSend_compare_(v12, v18, v17);
  return v19;
}

id sub_29C995770(void *a1, const char *a2, uint64_t a3)
{
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = sub_29C99584C;
  v11[3] = &unk_29F33A840;
  v11[4] = a3;
  v11[5] = a1;
  v6 = sub_29C99584C(v11, a2);
  if ((a3 - 3) <= 2)
  {
    v7 = objc_msgSend__hucc_sizeSubclassSearchOrderForBaseSizeSubclass_(a1, v5, a3 - 3);
    v9 = objc_msgSend_arrayByAddingObjectsFromArray_(v6, v8, v7);

    v6 = v9;
  }

  return v6;
}

id sub_29C99584C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2 <= 2)
  {
    switch(v2)
    {
      case 0:
        v3 = &unk_2A23ED6B8;
        goto LABEL_17;
      case 1:
        v3 = &unk_2A23ED6D0;
        goto LABEL_17;
      case 2:
        v3 = &unk_2A23ED6E8;
        goto LABEL_17;
    }

LABEL_13:
    v3 = MEMORY[0x29EDB8E90];
    goto LABEL_17;
  }

  if (v2 > 4)
  {
    if (v2 == 5)
    {
      v3 = &unk_2A23ED730;
      goto LABEL_17;
    }

    if (v2 == 6)
    {
      v4 = objc_msgSend__hucc_sizeSubclassSearchOrderForBaseSizeSubclass_(*(a1 + 40), a2, 2);
      v3 = objc_msgSend_arrayByAddingObjectsFromArray_(&unk_2A23ED748, v5, v4);

      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (v2 == 3)
  {
    v3 = &unk_2A23ED700;
  }

  else
  {
    v3 = &unk_2A23ED718;
  }

LABEL_17:

  return v3;
}

double sub_29C995948(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_hucc_objectForSizeSubclass_(a1, a2, a3);
  v6 = v3;
  if (!v3)
  {
    v3 = &unk_2A23ED5B0;
  }

  objc_msgSend_doubleValue(v3, v4, v5);
  v8 = v7;

  return v8;
}

id sub_29C995998(void *a1, const char *a2, uint64_t a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (objc_msgSend_count(a1, a2, a3))
  {
    v5 = objc_opt_class();
    objc_msgSend__hucc_sizeSubclassSearchOrderForBaseSizeSubclass_(v5, v6, a3);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v21 = 0u;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
    if (v9)
    {
      v11 = v9;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v14 = objc_msgSend_objectForKeyedSubscript_(a1, v10, *(*(&v18 + 1) + 8 * i), v18);
          if (v14)
          {
            v15 = v14;
            goto LABEL_12;
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v18, v22, 16);
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_12:
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x29EDCA608];

  return v15;
}

BOOL _HUCCLayoutStyleForModuleViewWidth(double a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v5 = objc_msgSend_currentDevice(MEMORY[0x29EDC7A58], a3, a4);
  v8 = objc_msgSend_userInterfaceIdiom(v5, v6, v7);

  if (v8 == 1)
  {
    return 0;
  }

  v12 = objc_msgSend_mainScreen(MEMORY[0x29EDC7C40], v9, v10);
  v15 = objc_msgSend_fixedCoordinateSpace(v12, v13, v14);
  objc_msgSend_bounds(v15, v16, v17);
  v11 = v18 < a1;

  return v11;
}

uint64_t HUCCSizeSubclassForModuleViewWidth(uint64_t a1, const char *a2, uint64_t a3, double a4)
{
  v4 = _HUCCLayoutStyleForModuleViewWidth(a4, a1, a2, a3);
  v7 = objc_msgSend_mainScreen(MEMORY[0x29EDC7C40], v5, v6);
  v10 = objc_msgSend_fixedCoordinateSpace(v7, v8, v9);
  objc_msgSend_bounds(v10, v11, v12);

  v13 = HUViewSizeSubclassForViewSize();
  v14 = 1;
  if (v13 != 1)
  {
    v14 = 2;
  }

  v15 = 4;
  if (v13 != 1)
  {
    v15 = 5;
  }

  if (!v13)
  {
    v14 = 0;
    v15 = 3;
  }

  if (v4)
  {
    return v15;
  }

  else
  {
    return v14;
  }
}

void sub_29C995D00()
{
  v4 = objc_alloc_init(MEMORY[0x29EDC54F8]);
  v2 = objc_msgSend_sharedInstance(MEMORY[0x29EDC5470], v0, v1);
  objc_msgSend_setStatusBarVisibilityHandler_(v2, v3, v4);
}

uint64_t sub_29C9962A8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_hf_isHomePod(v2, v3, v4))
  {
    isAppleTV = 1;
  }

  else
  {
    isAppleTV = objc_msgSend_hf_isAppleTV(v2, v5, v6);
  }

  return isAppleTV;
}

void sub_29C996820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C99684C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_mainThreadScheduler(MEMORY[0x29EDC5E58], v4, v5);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = sub_29C99692C;
  v9[3] = &unk_29F33A8A8;
  objc_copyWeak(&v11, (a1 + 32));
  v7 = v3;
  v10 = v7;
  objc_msgSend_performBlock_(v6, v8, v9);

  objc_destroyWeak(&v11);
}

void sub_29C99692C(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_setCharacteristicRegistrationObject_(WeakRetained, v2, v1);
}

void sub_29C996D70(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_setRegistrationScheduledCancelation_(WeakRetained, v2, 0);
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = WeakRetained;
    _os_log_impl(&dword_29C992000, v3, OS_LOG_TYPE_DEFAULT, "%@:CharacteristicRegistration deregistering characteristic notifications", &v12, 0xCu);
  }

  v6 = objc_msgSend_characteristicRegistrationObject(WeakRetained, v4, v5);
  objc_msgSend_cancelRegistration_(WeakRetained, v7, v6);

  objc_msgSend_setCharacteristicRegistrationObject_(WeakRetained, v8, 0);
  objc_msgSend_endHomeKitActiveAssertion(WeakRetained, v9, v10);

  v11 = *MEMORY[0x29EDCA608];
}

void sub_29C99748C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_context(*(a1 + 32), v4, v5);
  v7 = *(a1 + 40);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = sub_29C997548;
  v10[3] = &unk_29F33A920;
  v11 = v3;
  v8 = v3;
  objc_msgSend_openURL_completionHandler_(v6, v9, v7, v10);
}

void sub_29C997548(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0);
  }

  else
  {
    v6 = objc_msgSend_na_genericError(MEMORY[0x29EDB9FA0], a2, a3);
    (*(v3 + 16))(v3, v6);
  }
}

void sub_29C9975F8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 2u);
}

void sub_29C997918(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_itemManager(*(a1 + 32), a2, a3);
  v5 = objc_msgSend_reloadAndUpdateAllItemsFromSenderSelector_(v6, v4, *(a1 + 40));
}

uint64_t sub_29C997AF8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v8 = objc_msgSend_shouldShowAsEmptyHome(v5, v6, v7) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_29C998C70(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v5.receiver = *(a1 + 48);
  v5.super_class = HUCCSmartGridViewController;
  v3 = objc_msgSendSuper2(&v5, sel_prepareToPerformToggleActionForItem_sourceItem_, v2, v1);

  return v3;
}

void sub_29C998FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C998FD0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_home(*(a1 + 32), v4, v5);
  objc_msgSend__showDashboardControllerForHome_(WeakRetained, v7, v6);

  objc_msgSend_finishWithNoResult(v3, v8, v9);
}

void sub_29C999C64(void **a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_delegate(a1[4], a2, a3);
  v6 = objc_msgSend_prepareForActionRequiringDeviceUnlockForGridViewController_(v4, v5, a1[4]);

  v9 = objc_msgSend_copy(a1[5], v7, v8);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = sub_29C999D48;
  v13[3] = &unk_29F33AA30;
  v14 = a1[6];
  v15 = v9;
  v10 = v9;
  v12 = objc_msgSend_addSuccessBlock_(v6, v11, v13);
}

id sub_29C99A054(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_collectionView(*(a1 + 32), v4, v5);
  v8 = objc_msgSend_cellForItemAtIndexPath_(v6, v7, v3);
  if (objc_msgSend_conformsToProtocol_(v8, v9, &unk_2A2421570))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v14 = objc_msgSend_itemManager(*(a1 + 32), v12, v13);
    v16 = objc_msgSend_displayedItemAtIndexPath_(v14, v15, v3);

    v19 = objc_msgSend_item(v11, v17, v18);

    if (v19 == v16)
    {
      v25 = 0;
    }

    else
    {
      v22 = MEMORY[0x29EDBA0F8];
      v23 = objc_msgSend_item(v11, v20, v21);
      v25 = objc_msgSend_stringWithFormat_(v22, v24, @"Cell item %@ at index path %@ does not match item manager's item %@!", v23, v3, v16);
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void sub_29C99A18C(uint64_t a1)
{
  v84 = *MEMORY[0x29EDCA608];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_29C9ABB08();
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v3 = *(a1 + 32);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v71, v83, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v72;
    do
    {
      v8 = 0;
      do
      {
        if (*v72 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v71 + 1) + 8 * v8);
        v10 = HFLogForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v82 = v9;
          _os_log_error_impl(&dword_29C992000, v10, OS_LOG_TYPE_ERROR, "  %@", buf, 0xCu);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v11, &v71, v83, 16);
    }

    while (v6);
  }

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_29C9ABB48();
  }

  if (*(a1 + 40))
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_29C9ABB7C();
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v16 = objc_msgSend_changes(*(a1 + 40), v14, v15);
    v19 = objc_msgSend_allOperations(v16, v17, v18);

    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v67, v80, 16);
    if (v21)
    {
      v22 = v21;
      v23 = *v68;
      do
      {
        v24 = 0;
        do
        {
          if (*v68 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v67 + 1) + 8 * v24);
          v26 = HFLogForCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_29C9ABBB0(buf, v25);
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v27, &v67, v80, 16);
      }

      while (v22);
    }

    v28 = HFLogForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_29C9ABC08();
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v31 = objc_msgSend_changes(*(a1 + 40), v29, v30);
    v34 = objc_msgSend_fromGroups(v31, v32, v33);

    obj = v34;
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v63, v79, 16);
    if (v36)
    {
      v37 = v36;
      v56 = *v64;
      do
      {
        v38 = 0;
        do
        {
          if (*v64 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v63 + 1) + 8 * v38);
          v40 = HFLogForCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            sub_29C9ABC3C(v78, v39);
          }

          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v43 = objc_msgSend_diffableItems(v39, v41, v42);
          v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v59, v77, 16);
          if (v45)
          {
            v46 = v45;
            v47 = *v60;
            do
            {
              v48 = 0;
              do
              {
                if (*v60 != v47)
                {
                  objc_enumerationMutation(v43);
                }

                v49 = *(*(&v59 + 1) + 8 * v48);
                v50 = HFLogForCategory();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  *v75 = 138412290;
                  v76 = v49;
                  _os_log_error_impl(&dword_29C992000, v50, OS_LOG_TYPE_ERROR, "  %@", v75, 0xCu);
                }

                ++v48;
              }

              while (v46 != v48);
              v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v51, &v59, v77, 16);
            }

            while (v46);
          }

          v52 = HFLogForCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            sub_29C9ABC94(&v57, v58, v52);
          }

          ++v38;
        }

        while (v38 != v37);
        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, &v63, v79, 16);
      }

      while (v37);
    }
  }

  v54 = *MEMORY[0x29EDCA608];
}

void sub_29C99A7E0(uint64_t a1)
{
  v76 = *MEMORY[0x29EDCA608];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_29C9ABCD4();
  }

  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_29C9ABD08(a1, v3, v4);
  }

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_29C9ABDA8(v5, v6, v7);
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_29C9ABE4C();
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v11 = objc_msgSend_changes(*(a1 + 40), v9, v10);
  v14 = objc_msgSend_allOperations(v11, v12, v13);

  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v65, v75, 16);
  if (v16)
  {
    v17 = v16;
    v18 = *v66;
    do
    {
      v19 = 0;
      do
      {
        if (*v66 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v65 + 1) + 8 * v19);
        v21 = HFLogForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_29C9ABBB0(v74, v20);
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v22, &v65, v75, 16);
    }

    while (v17);
  }

  v23 = HFLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_29C9ABC08();
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v52 = a1;
  v26 = objc_msgSend_changes(*(a1 + 40), v24, v25);
  v29 = objc_msgSend_fromGroups(v26, v27, v28);

  obj = v29;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v61, v73, 16);
  if (v31)
  {
    v32 = v31;
    v54 = *v62;
    do
    {
      v33 = 0;
      do
      {
        if (*v62 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v61 + 1) + 8 * v33);
        v35 = HFLogForCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_29C9ABC3C(v72, v34);
        }

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v38 = objc_msgSend_diffableItems(v34, v36, v37);
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v57, v71, 16);
        if (v40)
        {
          v41 = v40;
          v42 = *v58;
          do
          {
            v43 = 0;
            do
            {
              if (*v58 != v42)
              {
                objc_enumerationMutation(v38);
              }

              v44 = *(*(&v57 + 1) + 8 * v43);
              v45 = HFLogForCategory();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v70 = v44;
                _os_log_error_impl(&dword_29C992000, v45, OS_LOG_TYPE_ERROR, "  %@", buf, 0xCu);
              }

              ++v43;
            }

            while (v41 != v43);
            v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v46, &v57, v71, 16);
          }

          while (v41);
        }

        v47 = HFLogForCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_29C9ABC94(&v55, v56, v47);
        }

        ++v33;
      }

      while (v33 != v32);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v48, &v61, v73, 16);
    }

    while (v32);
  }

  v49 = HFLogForCategory();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    sub_29C9ABE80(v52, v49, v50);
  }

  v51 = *MEMORY[0x29EDCA608];
}

void sub_29C99B000(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void sub_29C99B020(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_29C99B058(uint64_t result, float a2)
{
  *v3 = a2;
  *v2 = result;
  return result;
}

void sub_29C99B488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C99B4A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_29C992000, v2, OS_LOG_TYPE_DEFAULT, "Lock state has changed, checking access.", v5, 2u);
  }

  objc_msgSend__updateAccessAllowedForLockState(WeakRetained, v3, v4);
}

void HUCCPerformCommonInitialization()
{
  if (qword_2A1A12868[0] != -1)
  {
    sub_29C9ABF44();
  }
}

void sub_29C99B710(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_configuration(MEMORY[0x29EDC5390], a2, a3);
  v17 = objc_msgSend_mutableCopy(v3, v4, v5);

  objc_msgSend_setAdaptive_(v17, v6, 1);
  objc_msgSend_setConfiguration_(MEMORY[0x29EDC5390], v7, v17);
  v10 = objc_msgSend_sharedDispatcher(MEMORY[0x29EDC5390], v8, v9);
  objc_msgSend_warmup(v10, v11, v12);

  v15 = objc_msgSend_sharedInstance(MEMORY[0x29EDC5378], v13, v14);
  objc_msgSend_setRunningState_(v15, v16, 1);
}

void HUCCUpdateRunningStateWithAppleMediaAccessories(int a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_sharedInstance(MEMORY[0x29EDC5378], a2, a3);
  v8 = objc_msgSend_runningState(v5, v6, v7);

  if (v8 != (a1 ^ 1))
  {
    if (a1)
    {
      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        v13 = objc_msgSend_sharedManager(MEMORY[0x29EDC5368], v11, v12);
        objc_msgSend_enableNotificationsForSelectedHomeWithReason_numberOfAppleMediaAccessories_(v13, v14, *MEMORY[0x29EDC5340], a2);
      }

      v23 = objc_msgSend_sharedInstance(MEMORY[0x29EDC5378], v11, v12);
      objc_msgSend_executionEnvironmentWillEnterForeground(v23, v15, v16);
    }

    else
    {
      v17 = objc_msgSend_sharedInstance(MEMORY[0x29EDC5378], v9, v10);
      objc_msgSend_executionEnvironmentDidEnterBackground(v17, v18, v19);

      if (_os_feature_enabled_impl())
      {
        return;
      }

      v23 = objc_msgSend_sharedManager(MEMORY[0x29EDC5368], v20, v21);
      objc_msgSend_disableNotificationsForSelectedHomeWithReason_(v23, v22, *MEMORY[0x29EDC5338]);
    }
  }
}

void launchHomeAppForModuleViewController(void *a1, void *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = a1;
  if (a2)
  {
    v4 = a2;
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_29C992000, v5, OS_LOG_TYPE_DEFAULT, "Launching Home app for moduleViewController %@", &v10, 0xCu);
    }

    v7 = objc_msgSend_URLWithString_(MEMORY[0x29EDB8E70], v6, @"com.apple.home://");
    objc_msgSend_openURL_completionHandler_(v4, v8, v7, 0);
  }

  v9 = *MEMORY[0x29EDCA608];
}

__CFString *HUCCStringForOrientation(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_29F33AB10[a1 - 1];
  }
}

void sub_29C99CCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C99CCF4(uint64_t a1)
{
  v2 = HULocalizedBiometryString();
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C99CDC8;
  block[3] = &unk_29F33AB38;
  objc_copyWeak(&v7, (a1 + 40));
  v5 = *(a1 + 32);
  v6 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x29EDCA578], block);

  objc_destroyWeak(&v7);
}

void sub_29C99CDC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = objc_msgSend_lockSecurityView(WeakRetained, v2, v3);
  objc_msgSend_updateUIWithInfoText_andActionText_(v4, v5, *(a1 + 32), *(a1 + 40));
}

id sub_29C99D150(void *a1, const char *a2, uint64_t a3, double a4)
{
  v147[2] = *MEMORY[0x29EDCA608];
  v7 = objc_msgSend_defaultOptionsForViewSize_(MEMORY[0x29EDC54C8], a2, a3);
  v10 = HUCCSizeSubclassForModuleViewWidth(v7, v8, v9, a4);
  v129 = objc_msgSend_controlCenterGridLayoutForItemType_sizeSubclass_(a1, v11, a3, v10);
  v12 = MEMORY[0x29EDBA070];
  v14 = objc_msgSend__controlCenterModuleHCFNumberOfColumnsForSizeSubclass_(a1, v13, v10);
  v16 = objc_msgSend_numberWithUnsignedInteger_(v12, v15, v14);
  objc_msgSend_setOverrideNumberOfColumns_(v7, v17, v16);

  v146[0] = &unk_2A23ED5C8;
  v146[1] = &unk_2A23ED5F8;
  v147[0] = &unk_2A23ED5E0;
  v147[1] = &unk_2A23ED610;
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v18, v147, v146, 2);
  objc_msgSend_hucc_constantForSizeSubclass_(v19, v20, v10);
  v22 = v21;

  objc_msgSend_setRowSpacing_(v7, v23, v24, v22);
  objc_msgSend_setColumnSpacing_(v7, v25, v26, v22);
  objc_msgSend_setSectionLeadingMargin_(v7, v27, v28, 0.0);
  objc_msgSend_setSectionTrailingMargin_(v7, v29, v30, 0.0);
  objc_msgSend_setSectionBottomMargin_(v7, v31, v32, 0.0);
  objc_msgSend_setSectionTopMargin_(v7, v33, v34, 0.0);
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v37 = objc_msgSend_serviceCellOptions(v7, v35, v36);
  v144[0] = v37;
  v130 = v7;
  v40 = objc_msgSend_sceneCellOptions(v7, v38, v39);
  v144[1] = v40;
  v42 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v41, v144, 2);

  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v134, v145, 16);
  if (v44)
  {
    v47 = v44;
    v133 = *v135;
    v131 = *MEMORY[0x29EDC80E8];
    v132 = *MEMORY[0x29EDC80F0];
    v48 = *MEMORY[0x29EDC80F8];
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v135 != v133)
        {
          objc_enumerationMutation(v42);
        }

        v50 = *(*(&v134 + 1) + 8 * i);
        v51 = objc_msgSend_backgroundDisplayOptions(v50, v45, v46);
        objc_msgSend_setDisplayStyle_(v51, v52, 2);

        v55 = objc_msgSend_controlCenterSecondaryVibrancyEffect(MEMORY[0x29EDC7D98], v53, v54);
        objc_msgSend_setVibrancyEffect_(v50, v56, v55);

        v59 = objc_msgSend_controlCenterSecondaryVibrancyEffect(MEMORY[0x29EDC7D98], v57, v58);
        objc_msgSend_setSecondaryVibrancyEffect_(v50, v60, v59);

        v142[0] = &unk_2A23ED5C8;
        v142[1] = &unk_2A23ED5F8;
        v143[0] = &unk_2A23ED610;
        v143[1] = &unk_2A23ED628;
        v62 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v61, v143, v142, 2);
        objc_msgSend_hucc_constantForSizeSubclass_(v62, v63, v10);
        objc_msgSend_setCellInnerMargin_(v50, v64, v65);

        v140[0] = &unk_2A23ED5C8;
        v140[1] = &unk_2A23ED5F8;
        v141[0] = v132;
        v141[1] = v131;
        v140[2] = &unk_2A23ED640;
        v141[2] = v48;
        v67 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v66, v141, v140, 3);
        v69 = objc_msgSend_hucc_objectForSizeSubclass_(v67, v68, v10);

        v71 = objc_msgSend_defaultFontDescriptorWithTextStyle_addingSymbolicTraits_options_(MEMORY[0x29EDC76B8], v70, v69, 2, 0);
        v73 = objc_msgSend_fontWithDescriptor_size_(MEMORY[0x29EDC76B0], v72, v71, 0.0);
        objc_msgSend_setFont_(v50, v74, v73);
      }

      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v134, v145, 16);
    }

    while (v47);
  }

  v77 = objc_msgSend_sceneCellOptions(v130, v75, v76);
  v79 = objc_msgSend_controlCenterGridLayoutForItemType_sizeSubclass_(a1, v78, 0, v10);
  v81 = v80;
  v83 = objc_msgSend_numberOfColumns(v130, v80, v82);
  objc_msgSend_preferredSectionHeightForNumberOfServiceRows_spanningColumns_(v130, v84, v79, v83 / v81);
  v86 = v85;
  objc_msgSend_rowSpacing(v130, v87, v88);
  objc_msgSend_setCellHeight_(v77, v90, v91, (v86 - (v129 - 1) * v89) / v129);
  objc_msgSend_setNumberOfTitleLines_(v77, v92, 2);
  v95 = objc_msgSend_font(v77, v93, v94);
  objc_msgSend_setDescriptionFont_(v77, v96, v95);

  v99 = objc_msgSend_font(v77, v97, v98);
  objc_msgSend_lineHeight(v99, v100, v101);
  objc_msgSend_setTitleInterLineSpacing_(v77, v102, v103);

  v106 = objc_msgSend_font(v77, v104, v105);
  objc_msgSend_lineHeight(v106, v107, v108);
  objc_msgSend_setTitleDescriptionLineSpacing_(v77, v109, v110);

  v113 = objc_msgSend_serviceCellOptions(v130, v111, v112);
  v138[0] = &unk_2A23ED5C8;
  v138[1] = &unk_2A23ED670;
  v139[0] = &unk_2A23ED658;
  v139[1] = &unk_2A23ED760;
  v138[2] = &unk_2A23ED688;
  v138[3] = &unk_2A23ED6A0;
  v139[2] = &unk_2A23ED658;
  v139[3] = &unk_2A23ED760;
  v115 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v114, v139, v138, 4);
  objc_msgSend_hucc_constantForSizeSubclass_(v115, v116, v10);
  v118 = v117;

  v121 = objc_msgSend_font(v113, v119, v120);
  objc_msgSend_lineHeight(v121, v122, v123);
  objc_msgSend_setLineSpacing_(v113, v125, v126, v118 * v124);

  v127 = *MEMORY[0x29EDCA608];

  return v130;
}

uint64_t sub_29C99D6EC(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_controlCenterGridLayoutForItemType_sizeSubclass_(a1, a2, 1, a3);
  v6 = v5;
  objc_msgSend_controlCenterGridLayoutForItemType_sizeSubclass_(a1, v5, 0, a3);

  return MEMORY[0x2A1C67CB8](v6);
}

uint64_t sub_29C99D74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 3;
  if (a3 == 1)
  {
    if (v4 < 3)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  else if (v4 > 2)
  {
    return 3;
  }

  else
  {
    v6 = qword_29C9AE790[v4];
    return 2;
  }
}

double sub_29C99D798(void *a1, const char *a2, uint64_t a3, double a4)
{
  v6 = HUCCSizeSubclassForModuleViewWidth(a1, a2, a3, a4);
  v8 = objc_msgSend_controlCenterLayoutOptionsForViewSize_itemType_(a1, v7, 0, a4, *MEMORY[0x29EDC8260]);
  v10 = objc_msgSend_controlCenterGridLayoutForItemType_sizeSubclass_(a1, v9, 0, v6);
  v12 = v11;
  v14 = objc_msgSend_numberOfColumns(v8, v11, v13);
  objc_msgSend_preferredSectionHeightForNumberOfServiceRows_spanningColumns_(v8, v15, v10, v14 / v12);
  v17 = v16;

  return v17;
}

void sub_29C99DCC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_29C99DCE0(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = HFLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_29C9ABF58(v2);
    }
  }

  return 0;
}

void sub_29C99DD34(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_msgSend__configureAndAddRemoteViewController_forHome_(WeakRetained, v5, v3, *(a1 + 32));
  }

  else
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_29C9ABF9C(v6);
    }
  }
}

void sub_29C99DF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C99DF84(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_setTransitionSubviewFrames_(WeakRetained, v4, v3);
}

void sub_29C99E3BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_serviceViewControllerProxy(*(a1 + 32), a2, a3);
  objc_msgSend_lockAuthenticationCompleted_(v5, v4, a2);
}

void sub_29C99F1A4(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_isExpanded(*(a1 + 32), a2, a3))
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  v12 = objc_msgSend_smartGridViewController(*(a1 + 32), v4, v5);
  v9 = objc_msgSend_view(v12, v7, v8);
  objc_msgSend_setAlpha_(v9, v10, v11, v6);
}

void sub_29C99F7BC(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_transitionDeviceCornerRadius(*(a1 + 32), a2, a3);
  v5 = v4;
  v8 = objc_msgSend_view(*(a1 + 32), v6, v7);
  v11 = objc_msgSend_animationView(v8, v9, v10);
  objc_msgSend__setContinuousCornerRadius_(v11, v12, v13, v5);

  CCUIExpandedModuleContinuousCornerRadius();
  v15 = v14;
  v18 = objc_msgSend_view(*(a1 + 32), v16, v17);
  v21 = objc_msgSend_expandedView(v18, v19, v20);
  objc_msgSend__setContinuousCornerRadius_(v21, v22, v23, v15);

  v26 = objc_msgSend_dashboardContainerViewController(*(a1 + 32), v24, v25);
  objc_msgSend_expandedContentFrame(v26, v27, v28);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v39 = objc_msgSend_view(*(a1 + 32), v37, v38);
  v42 = objc_msgSend_animationView(v39, v40, v41);
  objc_msgSend_setFrame_(v42, v43, v44, v30, v32, v34, v36);

  v47 = objc_msgSend_dashboardContainerViewController(*(a1 + 32), v45, v46);
  objc_msgSend_expandedContentFrame(v47, v48, v49);
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v60 = objc_msgSend_view(*(a1 + 32), v58, v59);
  v63 = objc_msgSend_expandedView(v60, v61, v62);
  objc_msgSend_setFrame_(v63, v64, v65, v51, v53, v55, v57);

  v68 = objc_msgSend_view(*(a1 + 32), v66, v67);
  v71 = objc_msgSend_expandedView(v68, v69, v70);
  objc_msgSend_setAlpha_(v71, v72, v73, 1.0);

  objc_msgSend__homeNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v74, v75);
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v86 = objc_msgSend_transitionNavigationHeaderHomeNameLabelEffectView(*(a1 + 32), v84, v85);
  objc_msgSend_setFrame_(v86, v87, v88, v77, v79, v81, v83);

  objc_msgSend__homeNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v89, v90);
  v92 = v91;
  objc_msgSend__homeNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v93, v94);
  v96 = v95;
  v99 = objc_msgSend_transitionNavigationHeaderHomeNameLabel(*(a1 + 32), v97, v98);
  objc_msgSend_setFrame_(v99, v100, v101, 0.0, 0.0, v92, v96);

  objc_msgSend__homeNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v102, v103);
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v114 = objc_msgSend_transitionGridCellHomeNameLabelEffectView(*(a1 + 32), v112, v113);
  objc_msgSend_setFrame_(v114, v115, v116, v105, v107, v109, v111);

  objc_msgSend__homeNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v117, v118);
  v120 = v119;
  objc_msgSend__homeNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v121, v122);
  v124 = v123;
  v127 = objc_msgSend_transitionGridCellHomeNameLabel(*(a1 + 32), v125, v126);
  objc_msgSend_setFrame_(v127, v128, v129, 0.0, 0.0, v120, v124);

  objc_msgSend__roomNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v130, v131);
  v133 = v132;
  objc_msgSend__roomNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v134, v135);
  v137 = v136;
  objc_msgSend__roomNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v138, v139);
  v141 = v140 + 50.0;
  objc_msgSend__roomNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v142, v143);
  v145 = v144;
  v148 = objc_msgSend_transitionNavigationHeaderRoomNameLabelEffectView(*(a1 + 32), v146, v147);
  objc_msgSend_setFrame_(v148, v149, v150, v133, v137, v141, v145);

  objc_msgSend__roomNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v151, v152);
  v154 = v153 + 50.0;
  objc_msgSend__roomNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v155, v156);
  v158 = v157;
  v161 = objc_msgSend_transitionNavigationHeaderRoomNameLabel(*(a1 + 32), v159, v160);
  objc_msgSend_setFrame_(v161, v162, v163, 0.0, 0.0, v154, v158);

  objc_msgSend__roomNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v164, v165);
  v167 = v166;
  v169 = v168;
  v171 = v170;
  v173 = v172;
  v176 = objc_msgSend_transitionGridCellRoomNameLabelEffectView(*(a1 + 32), v174, v175);
  objc_msgSend_setFrame_(v176, v177, v178, v167, v169, v171, v173);

  objc_msgSend__roomNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v179, v180);
  v182 = v181;
  objc_msgSend__roomNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v183, v184);
  v186 = v185;
  v189 = objc_msgSend_transitionGridCellRoomNameLabel(*(a1 + 32), v187, v188);
  objc_msgSend_setFrame_(v189, v190, v191, 0.0, 0.0, v182, v186);

  objc_msgSend__iconViewInNavigationHeaderViewFrame(*(a1 + 32), v192, v193);
  v195 = v194;
  v197 = v196;
  v199 = v198;
  v201 = v200;
  v206 = objc_msgSend_transitionIconView(*(a1 + 32), v202, v203);
  objc_msgSend_setFrame_(v206, v204, v205, v195, v197, v199, v201);
}

uint64_t sub_29C99FBCC(uint64_t a1, const char *a2)
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = sub_29C99FC98;
  v4[3] = &unk_29F33AC20;
  v5 = *(a1 + 32);
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = sub_29C9A0284;
  v3[3] = &unk_29F33ABD0;
  v3[4] = v5;
  return objc_msgSend_animateKeyframesWithDuration_delay_options_animations_completion_(MEMORY[0x29EDC7DA0], a2, 0, v4, v3, 0.0, 0.0);
}

uint64_t sub_29C99FC98(uint64_t a1, const char *a2)
{
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = sub_29C99FDE4;
  v8[3] = &unk_29F33AC20;
  v8[4] = *(a1 + 32);
  objc_msgSend_addKeyframeWithRelativeStartTime_relativeDuration_animations_(MEMORY[0x29EDC7DA0], a2, v8, 0.0, 0.0);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = sub_29C99FF50;
  v7[3] = &unk_29F33AC20;
  v7[4] = *(a1 + 32);
  objc_msgSend_addKeyframeWithRelativeStartTime_relativeDuration_animations_(MEMORY[0x29EDC7DA0], v3, v7, 0.05, 0.2);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = sub_29C9A00C4;
  v6[3] = &unk_29F33AC20;
  v6[4] = *(a1 + 32);
  return objc_msgSend_addKeyframeWithRelativeStartTime_relativeDuration_animations_(MEMORY[0x29EDC7DA0], v4, v6, 0.02, 0.1);
}

void sub_29C99FE8C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_view(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_animationView(v4, v5, v6);
  objc_msgSend_setHidden_(v7, v8, 0);

  v11 = objc_msgSend_view(*(a1 + 32), v9, v10);
  v14 = objc_msgSend_expandedView(v11, v12, v13);
  objc_msgSend_setHidden_(v14, v15, 0);

  v22 = objc_msgSend_smartGridViewController(*(a1 + 32), v16, v17);
  v20 = objc_msgSend_homeCell(v22, v18, v19);
  objc_msgSend_setHidden_(v20, v21, 1);
}

void sub_29C99FFF8(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_transitionCompressedViewFrame(*(a1 + 32), a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v14 = objc_msgSend_view(*(a1 + 32), v12, v13);
  v17 = objc_msgSend_compressedView(v14, v15, v16);
  objc_msgSend_setFrame_(v17, v18, v19, v5, v7, v9, v11);

  v27 = objc_msgSend_view(*(a1 + 32), v20, v21);
  v24 = objc_msgSend_compressedView(v27, v22, v23);
  objc_msgSend_setAlpha_(v24, v25, v26, 0.0);
}

void sub_29C9A016C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_transitionNavigationHeaderHomeNameLabelEffectView(*(a1 + 32), a2, a3);
  objc_msgSend_setAlpha_(v4, v5, v6, 1.0);

  v9 = objc_msgSend_transitionNavigationHeaderHomeNameLabel(*(a1 + 32), v7, v8);
  objc_msgSend_setAlpha_(v9, v10, v11, 1.0);

  v14 = objc_msgSend_transitionGridCellHomeNameLabelEffectView(*(a1 + 32), v12, v13);
  objc_msgSend_setAlpha_(v14, v15, v16, 0.0);

  v19 = objc_msgSend_transitionGridCellHomeNameLabel(*(a1 + 32), v17, v18);
  objc_msgSend_setAlpha_(v19, v20, v21, 0.0);

  v24 = objc_msgSend_transitionNavigationHeaderRoomNameLabelEffectView(*(a1 + 32), v22, v23);
  objc_msgSend_setAlpha_(v24, v25, v26, 1.0);

  v29 = objc_msgSend_transitionNavigationHeaderRoomNameLabel(*(a1 + 32), v27, v28);
  objc_msgSend_setAlpha_(v29, v30, v31, 1.0);

  v34 = objc_msgSend_transitionGridCellRoomNameLabelEffectView(*(a1 + 32), v32, v33);
  objc_msgSend_setAlpha_(v34, v35, v36, 0.0);

  v41 = objc_msgSend_transitionGridCellRoomNameLabel(*(a1 + 32), v37, v38);
  objc_msgSend_setAlpha_(v41, v39, v40, 0.0);
}

void sub_29C9A0284(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_dashboardContainerViewController(*(a1 + 32), a2, a3);
  isExpanded = objc_msgSend_isExpanded(*(a1 + 32), v5, v6);
  objc_msgSend_willFinishTransition_forCompactModule_(v4, v8, isExpanded, 0);

  if ((objc_msgSend_isAnIPad(MEMORY[0x29EDC53F0], v9, v10) & 1) == 0)
  {
    CCUIExpandedModuleContinuousCornerRadius();
    v14 = v13;
    v17 = objc_msgSend_view(*(a1 + 32), v15, v16);
    v20 = objc_msgSend_expandedView(v17, v18, v19);
    objc_msgSend__setContinuousCornerRadius_(v20, v21, v22, v14);

    objc_msgSend_transitionDeviceCornerRadius(*(a1 + 32), v23, v24);
    v26 = v25;
    v29 = objc_msgSend_view(*(a1 + 32), v27, v28);
    v32 = objc_msgSend_animationView(v29, v30, v31);
    objc_msgSend__setContinuousCornerRadius_(v32, v33, v34, v26);
  }

  v35 = *MEMORY[0x29EDB90B8];
  v36 = *(MEMORY[0x29EDB90B8] + 8);
  v37 = objc_msgSend_view(*(a1 + 32), v11, v12);
  v40 = objc_msgSend_compressedView(v37, v38, v39);
  objc_msgSend_setFrameOrigin_(v40, v41, v42, v35, v36);

  v45 = objc_msgSend_transitionIconView(*(a1 + 32), v43, v44);
  objc_msgSend_setHidden_(v45, v46, 1);

  v49 = objc_msgSend_transitionGridCellRoomNameLabel(*(a1 + 32), v47, v48);
  objc_msgSend_setHidden_(v49, v50, 1);

  v53 = objc_msgSend_transitionGridCellRoomNameLabelEffectView(*(a1 + 32), v51, v52);
  objc_msgSend_setHidden_(v53, v54, 1);

  v57 = objc_msgSend_transitionGridCellHomeNameLabel(*(a1 + 32), v55, v56);
  objc_msgSend_setHidden_(v57, v58, 1);

  v61 = objc_msgSend_transitionGridCellHomeNameLabelEffectView(*(a1 + 32), v59, v60);
  objc_msgSend_setHidden_(v61, v62, 1);

  v65 = objc_msgSend_transitionNavigationHeaderRoomNameLabel(*(a1 + 32), v63, v64);
  objc_msgSend_setHidden_(v65, v66, 1);

  v69 = objc_msgSend_transitionNavigationHeaderRoomNameLabelEffectView(*(a1 + 32), v67, v68);
  objc_msgSend_setHidden_(v69, v70, 1);

  v73 = objc_msgSend_transitionNavigationHeaderHomeNameLabel(*(a1 + 32), v71, v72);
  objc_msgSend_setHidden_(v73, v74, 1);

  v78 = objc_msgSend_transitionNavigationHeaderHomeNameLabelEffectView(*(a1 + 32), v75, v76);
  objc_msgSend_setHidden_(v78, v77, 1);
}

void sub_29C9A0554(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_smartGridViewController(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_homeCell(v4, v5, v6);
  objc_msgSend__continuousCornerRadius(v7, v8, v9);
  v11 = v10;
  v14 = objc_msgSend_view(*(a1 + 32), v12, v13);
  v17 = objc_msgSend_animationView(v14, v15, v16);
  objc_msgSend__setContinuousCornerRadius_(v17, v18, v19, v11);

  v20 = *MEMORY[0x29EDB90B8];
  v21 = *(MEMORY[0x29EDB90B8] + 8);
  v24 = objc_msgSend_view(*(a1 + 32), v22, v23);
  v27 = objc_msgSend_compressedView(v24, v25, v26);
  objc_msgSend_setFrameOrigin_(v27, v28, v29, v20, v21);

  v32 = objc_msgSend_view(*(a1 + 32), v30, v31);
  v35 = objc_msgSend_compressedView(v32, v33, v34);
  objc_msgSend_setAlpha_(v35, v36, v37, 1.0);

  v40 = objc_msgSend_view(*(a1 + 32), v38, v39);
  objc_msgSend_compressedAnimationStartFrame(v40, v41, v42);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v53 = objc_msgSend_view(*(a1 + 32), v51, v52);
  v56 = objc_msgSend_animationView(v53, v54, v55);
  objc_msgSend_setFrame_(v56, v57, v58, v44, v46, v48, v50);

  objc_msgSend__homeNameLabelInHomeGridCellFrame(*(a1 + 32), v59, v60);
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v71 = objc_msgSend_transitionGridCellHomeNameLabelEffectView(*(a1 + 32), v69, v70);
  objc_msgSend_setFrame_(v71, v72, v73, v62, v64, v66, v68);

  objc_msgSend__homeNameLabelInHomeGridCellFrame(*(a1 + 32), v74, v75);
  v77 = v76;
  objc_msgSend__homeNameLabelInHomeGridCellFrame(*(a1 + 32), v78, v79);
  v81 = v80;
  v84 = objc_msgSend_transitionGridCellHomeNameLabel(*(a1 + 32), v82, v83);
  objc_msgSend_setFrame_(v84, v85, v86, 0.0, 0.0, v77, v81);

  objc_msgSend__homeNameLabelInHomeGridCellFrame(*(a1 + 32), v87, v88);
  v90 = v89;
  objc_msgSend__homeNameLabelInHomeGridCellFrame(*(a1 + 32), v91, v92);
  v94 = v93;
  objc_msgSend__homeNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v95, v96);
  v98 = v97;
  objc_msgSend__homeNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v99, v100);
  v102 = v101;
  v105 = objc_msgSend_transitionNavigationHeaderHomeNameLabelEffectView(*(a1 + 32), v103, v104);
  objc_msgSend_setFrame_(v105, v106, v107, v90, v94, v98, v102);

  objc_msgSend__homeNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v108, v109);
  v111 = v110;
  objc_msgSend__homeNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v112, v113);
  v115 = v114;
  v118 = objc_msgSend_transitionNavigationHeaderHomeNameLabel(*(a1 + 32), v116, v117);
  objc_msgSend_setFrame_(v118, v119, v120, 0.0, 0.0, v111, v115);

  objc_msgSend__roomNameLabelInHomeGridCellFrame(*(a1 + 32), v121, v122);
  v124 = v123;
  v126 = v125;
  v128 = v127;
  v130 = v129;
  v133 = objc_msgSend_transitionGridCellRoomNameLabelEffectView(*(a1 + 32), v131, v132);
  objc_msgSend_setFrame_(v133, v134, v135, v124, v126, v128, v130);

  objc_msgSend__roomNameLabelInHomeGridCellFrame(*(a1 + 32), v136, v137);
  v139 = v138;
  objc_msgSend__roomNameLabelInHomeGridCellFrame(*(a1 + 32), v140, v141);
  v143 = v142;
  v146 = objc_msgSend_transitionGridCellRoomNameLabel(*(a1 + 32), v144, v145);
  objc_msgSend_setFrame_(v146, v147, v148, 0.0, 0.0, v139, v143);

  objc_msgSend__roomNameLabelInHomeGridCellFrame(*(a1 + 32), v149, v150);
  v152 = v151;
  objc_msgSend__roomNameLabelInHomeGridCellFrame(*(a1 + 32), v153, v154);
  v156 = v155;
  objc_msgSend__roomNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v157, v158);
  v160 = v159;
  objc_msgSend__roomNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v161, v162);
  v164 = v163;
  v167 = objc_msgSend_transitionNavigationHeaderRoomNameLabelEffectView(*(a1 + 32), v165, v166);
  objc_msgSend_setFrame_(v167, v168, v169, v152, v156, v160, v164);

  objc_msgSend__roomNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v170, v171);
  v173 = v172;
  objc_msgSend__roomNameLabelInNavigationHeaderViewFrame(*(a1 + 32), v174, v175);
  v177 = v176;
  v180 = objc_msgSend_transitionNavigationHeaderRoomNameLabel(*(a1 + 32), v178, v179);
  objc_msgSend_setFrame_(v180, v181, v182, 0.0, 0.0, v173, v177);

  objc_msgSend__iconViewInHomeGridCellFrame(*(a1 + 32), v183, v184);
  v186 = v185;
  v188 = v187;
  v190 = v189;
  v192 = v191;
  v197 = objc_msgSend_transitionIconView(*(a1 + 32), v193, v194);
  objc_msgSend_setFrame_(v197, v195, v196, v186, v188, v190, v192);
}

uint64_t sub_29C9A093C(uint64_t a1, const char *a2)
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = sub_29C9A0A08;
  v4[3] = &unk_29F33AC20;
  v5 = *(a1 + 32);
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = sub_29C9A104C;
  v3[3] = &unk_29F33ABD0;
  v3[4] = v5;
  return objc_msgSend_animateKeyframesWithDuration_delay_options_animations_completion_(MEMORY[0x29EDC7DA0], a2, 0, v4, v3, 0.0, 0.0);
}

uint64_t sub_29C9A0A08(uint64_t a1, const char *a2)
{
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = sub_29C9A0B50;
  v8[3] = &unk_29F33AC20;
  v8[4] = *(a1 + 32);
  objc_msgSend_addKeyframeWithRelativeStartTime_relativeDuration_animations_(MEMORY[0x29EDC7DA0], a2, v8, 0.0, 0.0);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = sub_29C9A0D84;
  v7[3] = &unk_29F33AC20;
  v7[4] = *(a1 + 32);
  objc_msgSend_addKeyframeWithRelativeStartTime_relativeDuration_animations_(MEMORY[0x29EDC7DA0], v3, v7, 0.0, 0.15);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = sub_29C9A0E8C;
  v6[3] = &unk_29F33AC20;
  v6[4] = *(a1 + 32);
  return objc_msgSend_addKeyframeWithRelativeStartTime_relativeDuration_animations_(MEMORY[0x29EDC7DA0], v4, v6, 0.3, 0.1);
}

void sub_29C9A0BF8(uint64_t a1, const char *a2, uint64_t a3)
{
  if ((objc_msgSend_isAnIPad(MEMORY[0x29EDC53F0], a2, a3) & 1) == 0)
  {
    objc_msgSend_transitionDeviceCornerRadius(*(a1 + 32), v4, v5);
    v7 = v6;
    v10 = objc_msgSend_view(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_expandedView(v10, v11, v12);
    objc_msgSend__setContinuousCornerRadius_(v13, v14, v15, v7);
  }

  v16 = objc_msgSend_transitionIconView(*(a1 + 32), v4, v5);
  objc_msgSend_setHidden_(v16, v17, 0);

  v20 = objc_msgSend_transitionGridCellRoomNameLabel(*(a1 + 32), v18, v19);
  objc_msgSend_setHidden_(v20, v21, 0);

  v24 = objc_msgSend_transitionGridCellRoomNameLabelEffectView(*(a1 + 32), v22, v23);
  objc_msgSend_setHidden_(v24, v25, 0);

  v28 = objc_msgSend_transitionGridCellHomeNameLabel(*(a1 + 32), v26, v27);
  objc_msgSend_setHidden_(v28, v29, 0);

  v32 = objc_msgSend_transitionGridCellHomeNameLabelEffectView(*(a1 + 32), v30, v31);
  objc_msgSend_setHidden_(v32, v33, 0);

  v36 = objc_msgSend_transitionNavigationHeaderRoomNameLabel(*(a1 + 32), v34, v35);
  objc_msgSend_setHidden_(v36, v37, 0);

  v40 = objc_msgSend_transitionNavigationHeaderRoomNameLabelEffectView(*(a1 + 32), v38, v39);
  objc_msgSend_setHidden_(v40, v41, 0);

  v44 = objc_msgSend_transitionNavigationHeaderHomeNameLabel(*(a1 + 32), v42, v43);
  objc_msgSend_setHidden_(v44, v45, 0);

  v49 = objc_msgSend_transitionNavigationHeaderHomeNameLabelEffectView(*(a1 + 32), v46, v47);
  objc_msgSend_setHidden_(v49, v48, 0);
}

void sub_29C9A0E2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v8 = objc_msgSend_view(*(a1 + 32), a2, a3);
  v5 = objc_msgSend_expandedView(v8, v3, v4);
  objc_msgSend_setAlpha_(v5, v6, v7, 0.0);
}

void sub_29C9A0F34(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_transitionGridCellHomeNameLabelEffectView(*(a1 + 32), a2, a3);
  objc_msgSend_setAlpha_(v4, v5, v6, 1.0);

  v9 = objc_msgSend_transitionGridCellHomeNameLabel(*(a1 + 32), v7, v8);
  objc_msgSend_setAlpha_(v9, v10, v11, 1.0);

  v14 = objc_msgSend_transitionNavigationHeaderHomeNameLabelEffectView(*(a1 + 32), v12, v13);
  objc_msgSend_setAlpha_(v14, v15, v16, 0.0);

  v19 = objc_msgSend_transitionNavigationHeaderHomeNameLabel(*(a1 + 32), v17, v18);
  objc_msgSend_setAlpha_(v19, v20, v21, 0.0);

  v24 = objc_msgSend_transitionGridCellRoomNameLabelEffectView(*(a1 + 32), v22, v23);
  objc_msgSend_setAlpha_(v24, v25, v26, 1.0);

  v29 = objc_msgSend_transitionGridCellRoomNameLabel(*(a1 + 32), v27, v28);
  objc_msgSend_setAlpha_(v29, v30, v31, 1.0);

  v34 = objc_msgSend_transitionNavigationHeaderRoomNameLabelEffectView(*(a1 + 32), v32, v33);
  objc_msgSend_setAlpha_(v34, v35, v36, 0.0);

  v41 = objc_msgSend_transitionNavigationHeaderRoomNameLabel(*(a1 + 32), v37, v38);
  objc_msgSend_setAlpha_(v41, v39, v40, 0.0);
}

uint64_t sub_29C9A104C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_dashboardContainerViewController(*(a1 + 32), a2, a3);
  isExpanded = objc_msgSend_isExpanded(*(a1 + 32), v5, v6);
  objc_msgSend_willFinishTransition_forCompactModule_(v4, v8, isExpanded, 0);

  v11 = objc_msgSend_view(*(a1 + 32), v9, v10);
  v14 = objc_msgSend_animationView(v11, v12, v13);
  objc_msgSend_setHidden_(v14, v15, 1);

  v18 = objc_msgSend_smartGridViewController(*(a1 + 32), v16, v17);
  v21 = objc_msgSend_homeCell(v18, v19, v20);
  objc_msgSend_setHidden_(v21, v22, 0);

  objc_msgSend_setIsTransitioningToHomeControlService_(*(a1 + 32), v23, 0);
  v25 = *(a1 + 32);

  return MEMORY[0x2A1C70FE8](v25, sel__cleanupTransitionSubviews, v24);
}

void sub_29C9A1284(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = sub_29C9A133C;
  v4[3] = &unk_29F33AC48;
  objc_copyWeak(&v5, (a1 + 32));
  objc_msgSend_requestAuthenticationIfLockedWithCompletionHandler_(WeakRetained, v3, v4);
  objc_destroyWeak(&v5);
}

void sub_29C9A133C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__showLockSecurityView_(WeakRetained, v3, a2 ^ 1u);
}

void sub_29C9A2D20(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v6 = NAEmptyResult();
    objc_msgSend_finishWithResult_(v3, v4, v6);
  }

  else
  {
    v5 = *(a1 + 32);

    objc_msgSend_cancel(v5, a2, a3);
  }
}

void sub_29C9A3904(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_hf_characteristicValueManager(a2, a2, a3);
  objc_msgSend_cancelInFlightReadRequests(v5, v3, v4);
}

void sub_29C9A3A68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_delegate(WeakRetained, v1, v2);
  objc_msgSend_launchHomeAppForSmartGridContentViewController_(v3, v4, WeakRetained);
}

uint64_t type metadata accessor for HUCCAccessoryControlsContainerViewController()
{
  result = qword_2A179AD28;
  if (!qword_2A179AD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29C9A413C(void *a1, int a2, int a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_29C9A4764;
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  v8 = sub_29C9AC0E8();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v5;
  v9[4] = v6;
  aBlocka[4] = sub_29C9A46A8;
  aBlocka[5] = v9;
  aBlocka[0] = MEMORY[0x29EDCA5F8];
  aBlocka[1] = 1107296256;
  aBlocka[2] = sub_29C9A4768;
  aBlocka[3] = &unk_2A23EA780;
  v10 = _Block_copy(aBlocka);

  sub_29C9A4704(v5);

  v12.receiver = v7;
  v12.super_class = type metadata accessor for HUCCAccessoryControlsContainerViewController();
  objc_msgSendSuper2(&v12, sel_dismissViewControllerAnimated_completion_, 0, v10);

  sub_29C9A4688(v5);
  _Block_release(v10);
}

void sub_29C9A42B4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  if (*(v3 + qword_2A179AD20))
  {
    if (a2)
    {
      a2();
    }
  }

  else
  {
    *(v3 + qword_2A179AD20) = 1;
    if (a2)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = a2;
      *(v6 + 24) = a3;
      v7 = sub_29C9A473C;
    }

    else
    {
      v7 = nullsub_1;
      v6 = 0;
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    sub_29C9A4704(a2);
    sub_29C9AC0D8();
  }
}

void sub_29C9A43E4(void *a1, int a2, uint64_t a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_29C9A4698;
  }

  else
  {
    v7 = 0;
  }

  v8 = a1;
  sub_29C9A42B4(a3, v6, v7);
  sub_29C9A4688(v6);
}

uint64_t sub_29C9A44A0(uint64_t a1)
{
  v3 = sub_29C9AC068();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8]();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  v8[qword_2A179AD20] = 0;
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29C9AC2E8();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29C9A45C4(_BYTE *a1, uint64_t a2, void *a3)
{
  a1[qword_2A179AD20] = 0;
  v7.receiver = a1;
  v7.super_class = type metadata accessor for HUCCAccessoryControlsContainerViewController();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29C9A4648()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HUCCAccessoryControlsContainerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29C9A4688(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29C9A46A8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  result = sub_29C9AC108();
  if (v1)
  {
    return v1(result);
  }

  return result;
}

uint64_t sub_29C9A46EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29C9A4704(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29C9A4714()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_29C9A473C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_29C9A4768(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id HUCCSmartGridViewController.presentAccessoryControls(for:)(void *a1)
{
  v2 = v1;
  v4 = (*(*(sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v6 = aBlock - v5;
  v7 = [v2 unwrappedItemForAccessoryControls_];
  if (v7)
  {
    v8 = v7;
    v9 = sub_29C9AC3C8();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v2;
    v10[5] = v8;
    v10[6] = a1;
    v11 = v2;
    v12 = v8;
    v13 = a1;
    sub_29C9A4A3C(&qword_2A179AE08, &qword_29C9AE8C8);
    v14 = sub_29C9AC148();

    sub_29C9A5AD8(v6, &qword_2A179ADA0, &qword_29C9AE930);
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    aBlock[4] = sub_29C9A517C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29C9A5530;
    aBlock[3] = &unk_2A23EA870;
    v16 = _Block_copy(aBlock);
    v17 = v11;

    v18 = [v14 flatMap_];
    _Block_release(v16);

    return v18;
  }

  else
  {
    v20 = [objc_opt_self() futureWithNoResult];
    v21 = [v20 asGeneric];

    return v21;
  }
}

uint64_t sub_29C9A4A3C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_29C9A4A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[19] = a3;
  return MEMORY[0x2A1C73D48](sub_29C9A4AA8, 0, 0);
}

uint64_t sub_29C9A4AA8()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_29C9A4BD8;
  v4 = swift_continuation_init();
  v0[17] = sub_29C9A4A3C(&qword_2A179AE38, &qword_29C9AE918);
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29C9A4FB0;
  v0[13] = &unk_2A23EAA00;
  v0[14] = v4;
  [v3 accessoryControlViewControllerFor:v2 tileItem:v1 completionHandler:v0 + 10];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29C9A4BD8()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x2A1C73D48](sub_29C9A4CB8, 0, 0);
}

uint64_t sub_29C9A4CB8()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = sub_29C9AC0F8();
    sub_29C9A6A24(&unk_2A179AE40, MEMORY[0x29EDC5400]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x29EDC53F8], v3);
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_29C9A4DF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_29C9A4EB4;

  return sub_29C9A4A84(v2, v3, v4, v5, v6);
}

uint64_t sub_29C9A4EB4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_29C9A4FB0(uint64_t a1, void *a2)
{
  v3 = sub_29C9A6A6C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x2A1C73CD0](v4);
}

id sub_29C9A5014(void *a1, void *a2)
{
  v4 = (*(*(sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v6 = &v16 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x29EDC5E50]) init];
  v8 = sub_29C9AC3C8();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_29C9AC3A8();
  v9 = a2;
  v10 = a1;
  v11 = v7;
  v12 = sub_29C9AC398();
  v13 = swift_allocObject();
  v14 = MEMORY[0x29EDCA390];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v9;
  v13[5] = v10;
  v13[6] = v11;
  sub_29C9A6AC4(0, 0, v6, &unk_29C9AE910, v13);

  return v11;
}

uint64_t sub_29C9A5184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_29C9AC3A8();
  v6[11] = sub_29C9AC398();
  v8 = sub_29C9AC388();

  return MEMORY[0x2A1C73D48](sub_29C9A5220, v8, v7);
}

id sub_29C9A5220()
{
  v1 = v0[8];
  v2 = v0[9];
  [v1 configureWithAccessoryControlViewController_];
  result = [v1 hu:v2 presentPreloadableViewController:objc_msgSend(v1 animated:sel_controlsWantSystemPresentationAnimations)];
  if (result)
  {
    v4 = result;
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[8];
    v8 = v0[9];

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v8;
    v10[4] = v6;
    v0[6] = sub_29C9A6958;
    v0[7] = v10;
    v0[2] = MEMORY[0x29EDCA5F8];
    v0[3] = 1107296256;
    v0[4] = sub_29C9A54B0;
    v0[5] = &unk_2A23EA9D8;
    v11 = _Block_copy(v0 + 2);
    v12 = v0[7];
    v13 = v8;
    v14 = v6;

    v15 = [v4 addCompletionBlock_];
    _Block_release(v11);

    v16 = v0[1];

    return v16();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29C9A53D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    type metadata accessor for HUCCAccessoryControlsContainerViewController();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      v11 = a4;
      v12 = [v8 delegate];
      if (v12)
      {
        [v12 willPresentAccessoryControlsViewController_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    [a5 finishWithNoResult];
  }
}

uint64_t sub_29C9A54B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_29C9A5530(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_29C9A5598(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t HUCCSmartGridViewController.accessoryControlViewController(for:tileItem:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = *(*(sub_29C9A4A3C(&qword_2A179AE10, &qword_29C9AE8D8) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v3[5] = v6;
  v7 = sub_29C9AC068();
  v3[6] = v7;
  v8 = *(v7 - 8);
  v3[7] = v8;
  v9 = *(v8 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = sub_29C9AC3A8();
  v3[12] = sub_29C9AC398();
  sub_29C9AC2F8();
  v10 = *(MEMORY[0x29EDC5438] + 4);
  v11 = swift_task_alloc();
  v3[13] = v11;
  *v11 = v3;
  v11[1] = sub_29C9A5794;

  return MEMORY[0x2A1C67C88](v6, a1);
}

uint64_t sub_29C9A5794()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v7 = *v0;

  v5 = sub_29C9AC388();

  return MEMORY[0x2A1C73D48](sub_29C9A58D0, v5, v4);
}

uint64_t sub_29C9A58D0()
{
  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_29C9A5AD8(v0[5], &qword_2A179AE10, &qword_29C9AE8D8);
    v5 = 0;
  }

  else
  {
    v7 = v0[9];
    v6 = v0[10];
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    v12 = v0[3];
    v11 = v0[4];
    v27 = v0[2];
    (*(v9 + 32))(v6, v0[5], v10);
    v13 = sub_29C9AC318();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = v11;
    v17 = v12;
    sub_29C9AC308();
    v18 = *(v9 + 16);
    v18(v7, v6, v10);
    *(objc_allocWithZone(type metadata accessor for HUCCAccessoryControlsContainerViewController()) + qword_2A179AD20) = 0;
    v18(v8, v7, v10);
    v19 = v27;
    v5 = sub_29C9AC2E8();
    v20 = *(v9 + 8);
    v20(v7, v10);
    v20(v6, v10);
  }

  v22 = v0[9];
  v21 = v0[10];
  v23 = v0[8];
  v24 = v0[5];

  v25 = v0[1];

  return v25(v5);
}

uint64_t sub_29C9A5AD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_29C9A4A3C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29C9A5CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_29C9AC3A8();
  v4[6] = sub_29C9AC398();
  v6 = sub_29C9AC388();

  return MEMORY[0x2A1C73D48](sub_29C9A5D64, v6, v5);
}

uint64_t sub_29C9A5D64()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v0[7] = _Block_copy(v3);
  v6 = v5;
  v7 = v4;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_29C9A5E30;
  v10 = v0[5];
  v12 = v0[2];
  v11 = v0[3];

  return HUCCSmartGridViewController.accessoryControlViewController(for:tileItem:)(v12, v11);
}

uint64_t sub_29C9A5E30(void *a1)
{
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v10 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v8 = *(v10 + 8);

  return v8();
}

Swift::Void __swiftcall HUCCSmartGridViewController.willDismiss(viewController:)(UIViewController *viewController)
{
  v2 = sub_29C9AC328();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8]();
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29C9AC348();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8]();
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29C9A6290();
  v12 = sub_29C9AC408();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = viewController;
  *(v14 + 24) = v13;
  aBlock[4] = sub_29C9A63A4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29C9A4768;
  aBlock[3] = &unk_2A23EA8E8;
  v15 = _Block_copy(aBlock);
  v16 = viewController;

  sub_29C9AC338();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29C9A6A24(&qword_2A179AE20, MEMORY[0x29EDCA248]);
  sub_29C9A4A3C(&qword_2A179AE28, &qword_29C9AE8E0);
  sub_29C9A63AC();
  sub_29C9AC458();
  MEMORY[0x29ED4EE50](0, v11, v6, v15);
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

unint64_t sub_29C9A6290()
{
  result = qword_2A179AE18;
  if (!qword_2A179AE18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A179AE18);
  }

  return result;
}

void sub_29C9A62DC(void *a1)
{
  type metadata accessor for HUCCAccessoryControlsContainerViewController();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = a1;
      v7 = [v5 delegate];

      if (v7)
      {
        [v7 willDismissAccessoryControlsViewController_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

unint64_t sub_29C9A63AC()
{
  result = qword_2A179AE30;
  if (!qword_2A179AE30)
  {
    sub_29C9A6410(&qword_2A179AE28, &qword_29C9AE8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A179AE30);
  }

  return result;
}

uint64_t sub_29C9A6410(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_29C9A64C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_29C9A6AB8;

  return sub_29C9A5CC8(v2, v3, v5, v4);
}

uint64_t sub_29C9A6580()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_29C9A6AB8;

  return sub_29C9AA594(v2, v3, v5);
}

uint64_t sub_29C9A6640()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29C9A6680(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29C9A674C;

  return sub_29C9AA67C(a1, v4, v5, v7);
}

uint64_t sub_29C9A674C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29C9A6840()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29C9A6890(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29C9A6AB8;

  return sub_29C9A5184(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29C9A6974(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29C9A69D8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_29C9A6A24(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_29C9A6A6C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_29C9A6AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v11 = v26 - v10;
  sub_29C9AB3AC(a3, v26 - v10);
  v12 = sub_29C9AC3C8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_29C9A5AD8(v11, &qword_2A179ADA0, &qword_29C9AE930);
  }

  else
  {
    sub_29C9AC3B8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_29C9AC388();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_29C9AC368() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_29C9A5AD8(a3, &qword_2A179ADA0, &qword_29C9AE930);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29C9A5AD8(a3, &qword_2A179ADA0, &qword_29C9AE930);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

Swift::Void __swiftcall HUCCControlCenterModule.addStateSubscriptionReasonToDataModel()()
{
  v0 = (*(*(sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v2 = &v6 - v1;
  v3 = sub_29C9AC3C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  sub_29C9A6AC4(0, 0, v2, &unk_29C9AE940, v5);
}

uint64_t sub_29C9A6ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_29C9AC078();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29C9A6FA0, 0, 0);
}

uint64_t sub_29C9A6FA0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v0[8];
  v3 = v0[9];
  if (Strong)
  {
    v5 = v0[6];
    v6 = v0[7];
    v7 = Strong;
    v8 = [Strong moduleUniqueIdentifier];
    sub_29C9AC058();

    (*(v6 + 104))(v4, *MEMORY[0x29EDC5410], v5);
    (*(v6 + 32))(v3, v4, v5);
    v0[10] = sub_29C9AC0B8();
    v0[11] = sub_29C9AC3A8();
    v0[12] = sub_29C9AC398();
    v10 = sub_29C9AC388();

    return MEMORY[0x2A1C73D48](sub_29C9A7138, v10, v9);
  }

  else
  {
    v11 = v0[9];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_29C9A7138()
{
  v1 = v0[12];
  v2 = v0[10];

  v0[13] = sub_29C9AC0A8();

  return MEMORY[0x2A1C73D48](sub_29C9A71AC, 0, 0);
}

uint64_t sub_29C9A71AC()
{
  v1 = *(v0 + 88);
  *(v0 + 112) = sub_29C9AC398();
  v3 = sub_29C9AC388();

  return MEMORY[0x2A1C73D48](sub_29C9A7238, v3, v2);
}

uint64_t sub_29C9A7238()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[9];

  sub_29C9AC088();

  return MEMORY[0x2A1C73D48](sub_29C9A72B0, 0, 0);
}

uint64_t sub_29C9A72B0()
{
  (*(v0[7] + 8))(v0[9], v0[6]);
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_29C9A7330(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29C9A6AB8;

  return sub_29C9A6ED4(a1, v4, v5, v6);
}

Swift::Void __swiftcall HUCCControlCenterModule.removeStateSubscriptionReasonFromDataModel()()
{
  v1 = v0;
  v2 = (*(*(sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x2A1C7C4A8])();
  v4 = &v16 - v3;
  v5 = sub_29C9AC078();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (MEMORY[0x2A1C7C4A8])();
  v9 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v16 - v10;
  v12 = [v1 moduleUniqueIdentifier];
  sub_29C9AC058();

  (*(v6 + 104))(v11, *MEMORY[0x29EDC5410], v5);
  v13 = sub_29C9AC3C8();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  (*(v6 + 16))(v9, v11, v5);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v6 + 32))(v15 + v14, v9, v5);
  sub_29C9A6AC4(0, 0, v4, &unk_29C9AE950, v15);

  (*(v6 + 8))(v11, v5);
}

uint64_t sub_29C9A7784()
{
  v0[3] = sub_29C9AC0B8();
  v0[4] = sub_29C9AC3A8();
  v0[5] = sub_29C9AC398();
  v2 = sub_29C9AC388();

  return MEMORY[0x2A1C73D48](sub_29C9A7828, v2, v1);
}

uint64_t sub_29C9A7828()
{
  v1 = v0[5];
  v2 = v0[3];

  v0[6] = sub_29C9AC0A8();

  return MEMORY[0x2A1C73D48](sub_29C9A789C, 0, 0);
}

uint64_t sub_29C9A789C()
{
  v1 = *(v0 + 32);
  *(v0 + 56) = sub_29C9AC398();
  v3 = sub_29C9AC388();

  return MEMORY[0x2A1C73D48](sub_29C9A7928, v3, v2);
}

uint64_t sub_29C9A7928()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[2];

  sub_29C9AC098();

  v4 = v0[1];

  return v4();
}

uint64_t sub_29C9A7998(uint64_t a1)
{
  v4 = *(sub_29C9AC078() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29C9A6AB8;

  return sub_29C9A7764(a1, v6, v7, v1 + v5);
}

uint64_t HUCCControlCenterModule.register(forItems:in:currentRegistration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2A1C73D48](sub_29C9A7AF4, 0, 0);
}

uint64_t sub_29C9A7AF4()
{
  v1 = [objc_opt_self() sharedDispatcher];
  v2 = [v1 homeManager];

  if (v2)
  {
    v3 = v0[10];
    v4 = v0[8];

    v0[12] = sub_29C9AC248();
    v0[5] = sub_29C9A4A3C(&qword_2A179AEB0, &qword_29C9AE960);
    v5 = sub_29C9A86CC();
    v0[2] = v4;
    v0[6] = v5;

    v0[13] = sub_29C9AC208();
    sub_29C9A69D8(v0 + 2);
    if (v3)
    {
      v6 = v0[10];
      sub_29C9AC1F8();
      swift_unknownObjectRetain();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
LABEL_6:
        v0[14] = v7;
        sub_29C9AC1A8();
        v0[15] = sub_29C9AC198();
        sub_29C9AB1E8(&qword_2A179AEC0, MEMORY[0x29EDC52D0]);
        v9 = sub_29C9AC388();
        v0[16] = v9;
        v0[17] = v8;

        return MEMORY[0x2A1C73D48](sub_29C9A7CD4, v9, v8);
      }

      swift_unknownObjectRelease();
    }

    v7 = 0;
    goto LABEL_6;
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_29C9A7CD4()
{
  v1 = v0[14];
  if (!v1)
  {
    sub_29C9AC3A8();
    v0[24] = sub_29C9AC398();
    v15 = sub_29C9AC388();
    v17 = v16;
    v12 = sub_29C9A82D4;
    v13 = v15;
    v14 = v17;
LABEL_7:

    return MEMORY[0x2A1C73D48](v12, v13, v14);
  }

  v2 = v0[9];
  sub_29C9AB518(0, &qword_2A179AED0, 0x29EDC9738);

  v3 = sub_29C9AC1E8();
  v4 = sub_29C9AC438();

  if (v4)
  {
    v5 = v0[15];
    v6 = v0[13];

    v7 = sub_29C9AC1C8();
    sub_29C9A9F80(v7, v6);
    v9 = v8;

    v10 = v0[13];
    if ((v9 & 1) == 0)
    {
      sub_29C9A8FC4(v0[13], v0[8]);
      sub_29C9AC1B8();
    }

    v11 = v0[14];
    v0[20] = v1;
    v0[21] = v11;
    v12 = sub_29C9A80A8;
    v13 = 0;
    v14 = 0;
    goto LABEL_7;
  }

  v18 = v0[12];
  v0[18] = sub_29C9AC238();
  v19 = *(MEMORY[0x29EDC52E8] + 4);
  v20 = swift_task_alloc();
  v0[19] = v20;
  *v20 = v0;
  v20[1] = sub_29C9A7EC8;

  return MEMORY[0x2A1C67BC8](v1);
}

uint64_t sub_29C9A7EC8()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return MEMORY[0x2A1C73D48](sub_29C9A800C, v5, v4);
}

uint64_t sub_29C9A800C()
{
  v1 = *(v0 + 112);

  sub_29C9AC3A8();
  *(v0 + 192) = sub_29C9AC398();
  v3 = sub_29C9AC388();

  return MEMORY[0x2A1C73D48](sub_29C9A82D4, v3, v2);
}

uint64_t sub_29C9A80A8()
{
  sub_29C9AC188();
  v0[22] = sub_29C9AC178();
  v1 = *(MEMORY[0x29EDC52C8] + 4);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_29C9A8158;
  v4 = v0[8];
  v3 = v0[9];

  return MEMORY[0x2A1C67B60](v4, v3);
}

uint64_t sub_29C9A8158()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x2A1C73D48](sub_29C9A8270, 0, 0);
}

uint64_t sub_29C9A8270()
{
  v1 = v0[20];

  v2 = v0[21];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_29C9A82D4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 88);

  v3 = [v2 currentContentViewController];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 fullDescription];
      v7 = sub_29C9AC358();
      v9 = v8;

      goto LABEL_6;
    }
  }

  v10 = [*(v0 + 88) currentContentViewController];
  *(v0 + 56) = v10;
  sub_29C9A4A3C(&qword_2A179AEC8, &qword_29C9AE968);
  v7 = sub_29C9AC448();
  v9 = v11;

LABEL_6:
  *(v0 + 200) = v9;
  *(v0 + 208) = v7;
  v12 = *(v0 + 128);
  v13 = *(v0 + 136);

  return MEMORY[0x2A1C73D48](sub_29C9A83FC, v12, v13);
}

uint64_t sub_29C9A83FC()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[8];
  v6 = v0[9];
  v7 = sub_29C9AC1F8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v10 = v6;
  v11 = sub_29C9AC1D8();
  v0[27] = v11;
  sub_29C9A8FC4(v3, v5);

  v0[28] = sub_29C9AC238();
  v12 = *(MEMORY[0x29EDC52E0] + 4);
  v13 = swift_task_alloc();
  v0[29] = v13;
  *v13 = v0;
  v13[1] = sub_29C9A8518;

  return MEMORY[0x2A1C67BC0](v11);
}

uint64_t sub_29C9A8518()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return MEMORY[0x2A1C73D48](sub_29C9A865C, v5, v4);
}

uint64_t sub_29C9A865C()
{
  v1 = v0[27];
  v3 = v0[14];
  v2 = v0[15];

  v0[20] = v3;
  v0[21] = v1;

  return MEMORY[0x2A1C73D48](sub_29C9A80A8, 0, 0);
}

unint64_t sub_29C9A86CC()
{
  result = qword_2A179AEB8;
  if (!qword_2A179AEB8)
  {
    sub_29C9A6410(&qword_2A179AEB0, &qword_29C9AE960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A179AEB8);
  }

  return result;
}

uint64_t sub_29C9A88D8(int a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a2;
  v5[5] = _Block_copy(aBlock);
  sub_29C9AB518(0, &qword_2A179AEE0, 0x29EDC53A0);
  sub_29C9AB1A4(&qword_2A179AEE8, &qword_2A179AEE0, 0x29EDC53A0);
  v9 = sub_29C9AC3D8();
  v5[6] = v9;
  v10 = a2;
  swift_unknownObjectRetain();
  a5;
  v11 = swift_task_alloc();
  v5[7] = v11;
  *v11 = v5;
  v11[1] = sub_29C9A8A30;

  return HUCCControlCenterModule.register(forItems:in:currentRegistration:)(v9, v10, a3);
}

uint64_t sub_29C9A8A30(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v11 = *v1;

  swift_unknownObjectRelease();
  v5[2](v5, a1);
  _Block_release(v5);
  swift_unknownObjectRelease();
  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_29C9A8BF8()
{
  *(v0 + 24) = sub_29C9AC248();
  sub_29C9AC1A8();
  *(v0 + 32) = sub_29C9AC198();
  sub_29C9AB1E8(&qword_2A179AEC0, MEMORY[0x29EDC52D0]);
  v2 = sub_29C9AC388();

  return MEMORY[0x2A1C73D48](sub_29C9A8CC8, v2, v1);
}

uint64_t sub_29C9A8CC8()
{
  v2 = v0[3];
  v1 = v0[4];

  v0[5] = sub_29C9AC238();
  v3 = *(MEMORY[0x29EDC52E8] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_29C9A8D74;
  v5 = v0[2];

  return MEMORY[0x2A1C67BC8](v5);
}

uint64_t sub_29C9A8D74()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_29C9A8FC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29C9AC268();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_4;
  }

  v9 = sub_29C9AC478();
  if (v9 < 0)
  {
    __break(1u);
LABEL_4:
    v9 = *(a1 + 16);
  }

  v24[1] = v9;
  v25 = v8;
  v26 = v5;
  v27 = v4;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_29C9AC468();
    sub_29C9AB518(0, &qword_2A179AEE0, 0x29EDC53A0);
    sub_29C9AB1A4(&qword_2A179AEE8, &qword_2A179AEE0, 0x29EDC53A0);
    sub_29C9AC3E8();
    a2 = v30;
    v10 = v31;
    v11 = v32;
    v12 = v33;
    v13 = v34;
  }

  else
  {
    v14 = -1 << *(a2 + 32);
    v10 = a2 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a2 + 56);

    v12 = 0;
  }

  v24[0] = v11;
  while (a2 < 0)
  {
    v21 = sub_29C9AC498();
    if (!v21 || (v28 = v21, sub_29C9AB518(0, &qword_2A179AEE0, 0x29EDC53A0), swift_dynamicCast(), (v17 = v29) == 0))
    {
LABEL_22:
      sub_29C9AB560();
      v22 = v25;
      sub_29C9AC258();
      sub_29C9AB1E8(&qword_2A179AF00, MEMORY[0x29EDC5420]);
      v23 = v27;
      sub_29C9AC0C8();
      (*(v26 + 8))(v22, v23);
      return;
    }

LABEL_13:
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();

    if (v18)
    {
      goto LABEL_22;
    }
  }

  v19 = v12;
  v20 = v13;
  if (v13)
  {
LABEL_12:
    v13 = (v20 - 1) & v20;
    v17 = *(*(a2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v17)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= ((v11 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v20 = *(v10 + 8 * v12);
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall HUCCControlCenterModule.resetFetchedMediaItems()()
{
  v0 = sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v3 = &v6 - v2;
  v4 = sub_29C9AC3C8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_29C9A6AC4(0, 0, v3, &unk_29C9AE978, v5);
}

uint64_t sub_29C9A9420()
{
  sub_29C9AC188();
  sub_29C9AC178();
  sub_29C9AC168();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29C9A95A8()
{
  sub_29C9AC298();
  *(v0 + 24) = sub_29C9AC278();
  *(v0 + 32) = sub_29C9AB1A4(&qword_2A1A12848, &qword_2A1A12840, off_29F33A410);
  sub_29C9AB1E8(&unk_2A1A12850, MEMORY[0x29EDC5428]);
  v2 = sub_29C9AC388();

  return MEMORY[0x2A1C73D48](sub_29C9A96A0, v2, v1);
}

uint64_t sub_29C9A96A0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_29C9AC288();

  v4 = v0[1];

  return v4();
}

uint64_t HUCCControlCenterModule.configuration.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();
  v3 = sub_29C9AC138();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29C9A98E0, 0, 0);
}

uint64_t sub_29C9A98E0()
{
  v1 = [*(v0 + 24) currentContentViewController];
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    *(v0 + 72) = v3;
    if (v3)
    {
      *(v0 + 80) = sub_29C9AC3A8();
      v4 = v2;
      *(v0 + 88) = sub_29C9AC398();
      v6 = sub_29C9AC388();

      return MEMORY[0x2A1C73D48](sub_29C9A9A44, v6, v5);
    }
  }

  v7 = *(v0 + 56);
  v8 = *(v0 + 16);
  v9 = sub_29C9AC2C8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_29C9A9A44()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];

  v0[12] = [v3 itemManager];

  return MEMORY[0x2A1C73D48](sub_29C9A9AD0, 0, 0);
}

uint64_t sub_29C9A9AD0()
{
  v32 = v0;
  v1 = *(v0 + 96);
  sub_29C9AC2B8();
  v2 = swift_dynamicCastClass();
  *(v0 + 104) = v2;
  if (v2)
  {
    v3 = *(v0 + 80);
    *(v0 + 112) = sub_29C9AC398();
    v5 = sub_29C9AC388();

    return MEMORY[0x2A1C73D48](sub_29C9A9DBC, v5, v4);
  }

  else
  {
    v6 = *(v0 + 56);
    sub_29C9AC118();
    v7 = v1;
    v8 = sub_29C9AC128();
    v9 = sub_29C9AC3F8();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 96);
    v12 = *(v0 + 56);
    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    if (v10)
    {
      v15 = *(v0 + 32);
      v29 = *(v0 + 64);
      v30 = *(v0 + 56);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v14;
      v18 = swift_slowAlloc();
      v31 = v18;
      *v16 = 136315394;
      v19 = sub_29C9AC4D8();
      v21 = sub_29C9AAB48(v19, v20, &v31);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v11;
      *v17 = v11;
      v22 = v11;
      _os_log_impl(&dword_29C992000, v8, v9, "%s: Failed to unwrap item manager to ControlCenterModuleItemManager: %@", v16, 0x16u);
      sub_29C9A5AD8(v17, &qword_2A179AED8, qword_29C9AE988);
      MEMORY[0x29ED4F6A0](v17, -1, -1);
      sub_29C9A69D8(v18);
      MEMORY[0x29ED4F6A0](v18, -1, -1);
      MEMORY[0x29ED4F6A0](v16, -1, -1);

      (*(v13 + 8))(v30, v28);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v23 = *(v0 + 56);
    v24 = *(v0 + 16);
    v25 = sub_29C9AC2C8();
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_29C9A9DBC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[2];

  sub_29C9AC2A8();

  return MEMORY[0x2A1C73D48](sub_29C9A9E30, 0, 0);
}

uint64_t sub_29C9A9E30()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = sub_29C9AC2C8();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_29C9A9EE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29C9A6AB8;

  return HUCCControlCenterModule.configuration.getter(a1);
}

void sub_29C9A9F80(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2A1C72B38](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_29C9AA2A4(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_29C9AB518(0, &qword_2A179AEF8, 0x29EDBB0C8);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = sub_29C9AC428();
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = sub_29C9AC438();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_29C9AA1F8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_29C9A6AB8;

  return sub_29C9A9404();
}

void sub_29C9AA2A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_29C9AC478())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_29C9AC4A8();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_29C9AA3A4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29C9AA49C;

  return v7(a1);
}

uint64_t sub_29C9AA49C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29C9AA594(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_29C9A6AB8;

  return v7();
}

uint64_t sub_29C9AA67C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_29C9A674C;

  return v8();
}

uint64_t sub_29C9AA764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v11 = v24 - v10;
  sub_29C9AB3AC(a3, v24 - v10);
  v12 = sub_29C9AC3C8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_29C9A5AD8(v11, &qword_2A179ADA0, &qword_29C9AE930);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_29C9AC3B8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_29C9AC388();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_29C9AC368() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_29C9A5AD8(a3, &qword_2A179ADA0, &qword_29C9AE930);

    return v22;
  }

LABEL_8:
  sub_29C9A5AD8(a3, &qword_2A179ADA0, &qword_29C9AE930);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_29C9AAA50(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29C9AB6D8;

  return v7(a1);
}

uint64_t sub_29C9AAB48(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29C9AAC14(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_29C9A6974(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_29C9A69D8(v11);
  return v7;
}

unint64_t sub_29C9AAC14(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_29C9AAD20(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_29C9AC4C8();
    a6 = v11;
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

uint64_t sub_29C9AAD20(uint64_t a1, unint64_t a2)
{
  v4 = sub_29C9AAD6C(a1, a2);
  sub_29C9AAE9C(&unk_2A23EA708);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_29C9AAD6C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29C9AAF88(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_29C9AC4C8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_29C9AC378();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29C9AAF88(v10, 0);
        result = sub_29C9AC4B8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_29C9AAE9C(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_29C9AAFFC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
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

void *sub_29C9AAF88(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29C9A4A3C(&qword_2A179AEF0, &qword_29C9AEA80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29C9AAFFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_29C9A4A3C(&qword_2A179AEF0, &qword_29C9AEA80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_29C9AB0F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29C9A6AB8;

  return sub_29C9A9588(a1, v4, v5, v6);
}

uint64_t sub_29C9AB1A4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_29C9AB518(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29C9AB1E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29C9AB230(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29C9A6AB8;

  return sub_29C9A8BD8(a1, v4, v5, v6);
}

uint64_t sub_29C9AB2E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_29C9A6AB8;

  return sub_29C9A88D8(v2, v3, v4, v5, v6);
}

uint64_t sub_29C9AB3AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29C9AB41C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29C9A6AB8;

  return sub_29C9AAA50(a1, v5);
}

uint64_t sub_29C9AB4D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29C9AB518(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29C9AB568(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29C9A6AB8;

  return sub_29C9AA3A4(a1, v5);
}

uint64_t sub_29C9AB620(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29C9A674C;

  return sub_29C9AA3A4(a1, v5);
}

void sub_29C9AB710(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29C992000, a2, OS_LOG_TYPE_ERROR, "%@: No items to display", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

id sub_29C9AB788(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a2;
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      sub_29C9975F8(&dword_29C992000, v7, v8, "HUCCControlCenterModule loading preview asset", v35);
    }

    v9 = objc_alloc(MEMORY[0x29EDC7678]);
    v10 = MEMORY[0x29EDB9F48];
    v11 = objc_opt_class();
    v13 = objc_msgSend_bundleForClass_(v10, v12, v11);
    v15 = objc_msgSend_initWithName_bundle_(v9, v14, v6, v13);

    v16 = MEMORY[0x29EDBBAB8];
    v19 = objc_msgSend_data(v15, v17, v18);
    v20 = *MEMORY[0x29EDBBB20];
    v34 = 0;
    v22 = objc_msgSend_packageWithData_type_options_error_(v16, v21, v19, v20, MEMORY[0x29EDB8EA0], &v34);
    v23 = v34;

    v24 = HFLogForCategory();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v25)
      {
        *v32 = 0;
        sub_29C9975F8(&dword_29C992000, v24, v26, "HUCCControlCenterModule could not load HomeLargeXL asset", v32);
      }

      v28 = objc_msgSend_emptyPreviewForGridSize_(MEMORY[0x29EDC5498], v27, a3, a4);
    }

    else
    {
      if (v25)
      {
        *v33 = 0;
        sub_29C9975F8(&dword_29C992000, v24, v26, "HUCCControlCenterModule loaded HomeLargeXL asset", v33);
      }

      v28 = objc_msgSend_previewWithPackage_forGridSize_(MEMORY[0x29EDC5498], v29, v22, a3, a4);
    }

    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

void sub_29C9AB9A8(void *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sub_29C9AB788(a1, @"Home 2x2", 2, 2);
  v6 = sub_29C9AB788(a1, @"Home 2x2", 2, 4);
  v7 = sub_29C9AB788(a1, @"Home Page Size", 2, 6);
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    sub_29C9975F8(&dword_29C992000, v8, v9, "HUCCControlCenterModule will initialize: HUControlCenterModuleViewController", v16);
  }

  v10 = objc_alloc(MEMORY[0x29EDC54A0]);
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v11, a2, 3);
  v14 = objc_msgSend_initWithDelegate_ofKind_withPreviews_(v10, v13, a1, 0, v12);
  objc_msgSend_setViewController_(a1, v15, v14);

  objc_autoreleasePoolPop(v4);
}

void sub_29C9ABBB0(uint64_t a1, uint64_t a2)
{
  v2 = sub_29C99AFEC(a1, a2);
  v5 = objc_msgSend_operationDescription(v2, v3, v4);
  sub_29C99B058(v5, 5.7779e-34);
  sub_29C99B000(&dword_29C992000, v6, v7, "  %@");
}

void sub_29C9ABC3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_29C99AFEC(a1, a2);
  v5 = objc_msgSend_groupIdentifier(v2, v3, v4);
  sub_29C99B058(v5, 5.7779e-34);
  sub_29C99B000(&dword_29C992000, v6, v7, "%@: (");
}

void sub_29C9ABC94(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_29C992000, log, OS_LOG_TYPE_ERROR, ")", buf, 2u);
}

void sub_29C9ABD08(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  objc_msgSend_itemType(*(a1 + 32), a2, a3);
  sub_29C99B048();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  v8 = *MEMORY[0x29EDCA608];
}

void sub_29C9ABDA8(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  objc_msgSend_isMainThread(MEMORY[0x29EDBA108], a2, a3);
  sub_29C99B048();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  v8 = *MEMORY[0x29EDCA608];
}

void sub_29C9ABE80(uint64_t a1, const char *a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_itemManager(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_itemManager(*(a1 + 32), v5, v6);
  objc_msgSend_numberOfSections(v7, v8, v9);
  sub_29C99B048();
  _os_log_error_impl(v10, v11, v12, v13, v14, 0x16u);

  v15 = *MEMORY[0x29EDCA608];
}

void sub_29C9ABFE0(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29C992000, a2, OS_LOG_TYPE_ERROR, "Remote Dashboard View Controller View Service terminated  (error: %@)", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x2A1C5C8E8](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}
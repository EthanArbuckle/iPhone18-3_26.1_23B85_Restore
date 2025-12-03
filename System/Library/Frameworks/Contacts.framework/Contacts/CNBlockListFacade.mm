@interface CNBlockListFacade
+ (void)newItemWithHandle:(id)handle;
- (BOOL)isHandleBlocked:(id)blocked;
- (void)setBlocked:(BOOL)blocked forHandle:(id)handle;
@end

@implementation CNBlockListFacade

- (BOOL)isHandleBlocked:(id)blocked
{
  blockedCopy = blocked;
  v4 = [objc_opt_class() newItemWithHandle:blockedCopy];
  if (v4)
  {
    v5 = v4;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v6 = getCMFBlockListIsItemBlockedSymbolLoc_ptr;
    v14 = getCMFBlockListIsItemBlockedSymbolLoc_ptr;
    if (!getCMFBlockListIsItemBlockedSymbolLoc_ptr)
    {
      v7 = CommunicationsFilterLibrary();
      v12[3] = dlsym(v7, "CMFBlockListIsItemBlocked");
      getCMFBlockListIsItemBlockedSymbolLoc_ptr = v12[3];
      v6 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v6)
    {
      MDItemUniqueIdentifier_cold_1 = getMDItemUniqueIdentifier_cold_1();
      _Block_object_dispose(&v11, 8);
      _Unwind_Resume(MDItemUniqueIdentifier_cold_1);
    }

    v8 = v6(v5) != 0;
    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setBlocked:(BOOL)blocked forHandle:(id)handle
{
  blockedCopy = blocked;
  handleCopy = handle;
  v6 = [objc_opt_class() newItemWithHandle:handleCopy];
  if (v6)
  {
    v7 = v6;
    v8 = &v14;
    if (blockedCopy)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v9 = getCMFBlockListAddItemForAllServicesSymbolLoc_ptr;
      v17 = getCMFBlockListAddItemForAllServicesSymbolLoc_ptr;
      if (!getCMFBlockListAddItemForAllServicesSymbolLoc_ptr)
      {
        v10 = CommunicationsFilterLibrary();
        v15[3] = dlsym(v10, "CMFBlockListAddItemForAllServices");
        getCMFBlockListAddItemForAllServicesSymbolLoc_ptr = v15[3];
        v9 = v15[3];
      }

      _Block_object_dispose(&v14, 8);
      if (v9)
      {
        goto LABEL_10;
      }

      getMDItemUniqueIdentifier_cold_1();
    }

    v14 = 0;
    v15 = v8;
    v16 = 0x2020000000;
    v9 = getCMFBlockListRemoveItemFromAllServicesSymbolLoc_ptr;
    v17 = getCMFBlockListRemoveItemFromAllServicesSymbolLoc_ptr;
    if (!getCMFBlockListRemoveItemFromAllServicesSymbolLoc_ptr)
    {
      v13 = v8;
      v11 = CommunicationsFilterLibrary();
      *(v13[1] + 24) = dlsym(v11, "CMFBlockListRemoveItemFromAllServices");
      getCMFBlockListRemoveItemFromAllServicesSymbolLoc_ptr = *(v13[1] + 24);
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (!v9)
    {
      MDItemUniqueIdentifier_cold_1 = getMDItemUniqueIdentifier_cold_1();
      _Block_object_dispose(&v14, 8);
      _Unwind_Resume(MDItemUniqueIdentifier_cold_1);
    }

LABEL_10:
    v9(v7);
    CFRelease(v7);
  }
}

+ (void)newItemWithHandle:(id)handle
{
  handleCopy = handle;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getCreateCMFItemFromStringSymbolLoc_ptr;
  v12 = getCreateCMFItemFromStringSymbolLoc_ptr;
  if (!getCreateCMFItemFromStringSymbolLoc_ptr)
  {
    v5 = CommunicationsFilterLibrary();
    v10[3] = dlsym(v5, "CreateCMFItemFromString");
    getCreateCMFItemFromStringSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    MDItemUniqueIdentifier_cold_1 = getMDItemUniqueIdentifier_cold_1();
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(MDItemUniqueIdentifier_cold_1);
  }

  v6 = v4(handleCopy);

  return v6;
}

@end
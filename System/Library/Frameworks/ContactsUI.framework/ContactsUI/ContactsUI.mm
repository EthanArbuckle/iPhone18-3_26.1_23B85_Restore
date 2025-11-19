void getkUTTypePNG()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getkUTTypePNGSymbolLoc_ptr;
  v9 = getkUTTypePNGSymbolLoc_ptr;
  if (!getkUTTypePNGSymbolLoc_ptr)
  {
    v1 = MobileCoreServicesLibrary();
    v7[3] = dlsym(v1, "kUTTypePNG");
    getkUTTypePNGSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id getkUTTypePNG(void)"];
    [v4 handleFailureInFunction:v5 file:@"CNUTTypes.h" lineNumber:12 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_199A7872C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getkUTTypeJPEG()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getkUTTypeJPEGSymbolLoc_ptr;
  v9 = getkUTTypeJPEGSymbolLoc_ptr;
  if (!getkUTTypeJPEGSymbolLoc_ptr)
  {
    v1 = MobileCoreServicesLibrary();
    v7[3] = dlsym(v1, "kUTTypeJPEG");
    getkUTTypeJPEGSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id getkUTTypeJPEG(void)"];
    [v4 handleFailureInFunction:v5 file:@"CNUTTypes.h" lineNumber:11 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_199A78890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTUCallCapabilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUCallCapabilitiesClass_softClass;
  v7 = getTUCallCapabilitiesClass_softClass;
  if (!getTUCallCapabilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUCallCapabilitiesClass_block_invoke;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getTUCallCapabilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199A78970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPRUISPosterSnapshotRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRUISPosterSnapshotRequestClass_softClass;
  v7 = getPRUISPosterSnapshotRequestClass_softClass;
  if (!getPRUISPosterSnapshotRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRUISPosterSnapshotRequestClass_block_invoke;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getPRUISPosterSnapshotRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199A78A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPRUISPosterEditingViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRUISPosterEditingViewControllerClass_softClass;
  v7 = getPRUISPosterEditingViewControllerClass_softClass;
  if (!getPRUISPosterEditingViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRUISPosterEditingViewControllerClass_block_invoke;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getPRUISPosterEditingViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199A78B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPRUISIncomingCallSnapshotDefinitionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRUISIncomingCallSnapshotDefinitionClass_softClass;
  v7 = getPRUISIncomingCallSnapshotDefinitionClass_softClass;
  if (!getPRUISIncomingCallSnapshotDefinitionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRUISIncomingCallSnapshotDefinitionClass_block_invoke;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getPRUISIncomingCallSnapshotDefinitionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199A78C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPRSMutablePosterConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRSMutablePosterConfigurationClass_softClass;
  v7 = getPRSMutablePosterConfigurationClass_softClass;
  if (!getPRSMutablePosterConfigurationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRSMutablePosterConfigurationClass_block_invoke;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getPRSMutablePosterConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199A78CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getIDSServiceNameiMessage()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getIDSServiceNameiMessageSymbolLoc_ptr;
  v9 = getIDSServiceNameiMessageSymbolLoc_ptr;
  if (!getIDSServiceNameiMessageSymbolLoc_ptr)
  {
    v1 = IDSLibrary();
    v7[3] = dlsym(v1, "IDSServiceNameiMessage");
    getIDSServiceNameiMessageSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIDSServiceNameiMessage(void)"];
    [v4 handleFailureInFunction:v5 file:@"CNUIIDS_SoftLink.h" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_199A78E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getIDSServiceNameFaceTime()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getIDSServiceNameFaceTimeSymbolLoc_ptr;
  v9 = getIDSServiceNameFaceTimeSymbolLoc_ptr;
  if (!getIDSServiceNameFaceTimeSymbolLoc_ptr)
  {
    v1 = IDSLibrary();
    v7[3] = dlsym(v1, "IDSServiceNameFaceTime");
    getIDSServiceNameFaceTimeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIDSServiceNameFaceTime(void)"];
    [v4 handleFailureInFunction:v5 file:@"CNUIIDS_SoftLink.h" lineNumber:24 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_199A78FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getIDSServiceAvailabilityControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIDSServiceAvailabilityControllerClass_softClass;
  v7 = getIDSServiceAvailabilityControllerClass_softClass;
  if (!getIDSServiceAvailabilityControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIDSServiceAvailabilityControllerClass_block_invoke;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getIDSServiceAvailabilityControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199A79098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVTAvatarRecordImageProviderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVTAvatarRecordImageProviderClass_softClass;
  v7 = getAVTAvatarRecordImageProviderClass_softClass;
  if (!getAVTAvatarRecordImageProviderClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVTAvatarRecordImageProviderClass_block_invoke;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getAVTAvatarRecordImageProviderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199A79178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVTAvatarFetchRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVTAvatarFetchRequestClass_softClass;
  v7 = getAVTAvatarFetchRequestClass_softClass;
  if (!getAVTAvatarFetchRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVTAvatarFetchRequestClass_block_invoke;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getAVTAvatarFetchRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199A79258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKHealthStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKHealthStoreClass_softClass;
  v7 = getHKHealthStoreClass_softClass;
  if (!getHKHealthStoreClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getHKHealthStoreClass_block_invoke;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getHKHealthStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199A79338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCNAssistantConversionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNAssistantConversionClass_softClass;
  v7 = getCNAssistantConversionClass_softClass;
  if (!getCNAssistantConversionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNAssistantConversionClass_block_invoke;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getCNAssistantConversionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199A79418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_199A79A04(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_199A79A64()
{
  result = qword_1EAF71CE0;
  if (!qword_1EAF71CE0)
  {
    sub_199DF9DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71CE0);
  }

  return result;
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall CNUISharedProfileNavigationBarPalette.configureAfterDelay()()
{
  v1 = sub_199DF9DFC();
  v27 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_199DF9E1C();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_199DF9E3C();
  v24 = v9;
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v22 - v16;
  sub_199A7A02C(0, &qword_1EAF71D20);
  v22 = sub_199DFA39C();
  sub_199DF9E2C();
  sub_199DF9E6C();
  v23 = *(v10 + 8);
  v23(v14, v9);
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  aBlock[4] = sub_199AF34F0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199AB45A0;
  aBlock[3] = &block_descriptor_7;
  v19 = _Block_copy(aBlock);
  v20 = v0;

  sub_199DF9E0C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_199A79A64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74150);
  sub_199AF4F68(&qword_1EAF71CD0, &unk_1EAF74150);
  sub_199DFA68C();
  v21 = v22;
  MEMORY[0x19A8F8150](v17, v8, v4, v19);
  _Block_release(v19);

  (*(v27 + 8))(v4, v1);
  (*(v25 + 8))(v8, v26);
  v23(v17, v24);
}

uint64_t sub_199A79FF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A7A02C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_199A7A0B4(const void *a1, unint64_t *a2)
{
  swift_beginAccess();
  v5 = objc_getAssociatedObject(v2, a1);
  swift_endAccess();
  if (v5)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    sub_199A7A02C(0, a2);
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_199A79A04(v10, &qword_1EAF73080);
    return 0;
  }
}

uint64_t AvatarView.init(contacts:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AvatarView.Listener();
  v3 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v10.receiver = v3;
  v10.super_class = v2;
  objc_msgSendSuper2(&v10, sel_init);
  sub_199A7BB24(&qword_1ED615BF8, v4, type metadata accessor for AvatarView.Listener);
  sub_199DF781C();
  swift_allocObject();
  v5 = sub_199DF77FC();
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v6 = type metadata accessor for AvatarView();
  v7 = *(v6 + 20);
  *(a1 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E90);
  result = swift_storeEnumTagMultiPayload();
  v9 = a1 + *(v6 + 24);
  *v9 = sub_199B700D4;
  *(v9 + 8) = v5;
  *(v9 + 16) = 0;
  return result;
}

uint64_t sub_199A7AEC8@<X0>(void *a1@<X8>)
{
  sub_199A7BAC4();
  result = sub_199DF8C7C();
  *a1 = v3;
  return result;
}

id sub_199A7B560(void *a1)
{
  v2 = sub_199DF729C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = a1;
  v11.super_class = MEMORY[0x1E695CF18];
  v7 = a1;
  v8 = objc_msgSendSuper2(&v11, "id");
  sub_199DF727C();

  v9 = sub_199DF725C();
  (*(v3 + 8))(v6, v2);

  return v9;
}

uint64_t sub_199A7B690@<X0>(void *a1@<X8>)
{
  sub_199A7C58C();
  result = sub_199DFA3DC();
  *a1 = v3;
  return result;
}

uint64_t sub_199A7B6E0@<X0>(uint64_t a1@<X8>)
{
  sub_199DF781C();
  sub_199A7BB24(&qword_1EAF71DA8, 255, MEMORY[0x1E6996980]);
  sub_199DF85AC();
  sub_199DF782C();
  KeyPath = swift_getKeyPath();
  v4 = sub_199A7B8E8(*v1, *(v1 + 8));
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D80) + 36));
  *v5 = KeyPath;
  v5[1] = v4;
  v6 = swift_getKeyPath();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D88) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D90) + 28);
  sub_199AC3FC4(v7 + v8);
  v9 = sub_199DF774C();
  result = (*(*(v9 - 8) + 56))(v7 + v8, 0, 1, v9);
  *v7 = v6;
  return result;
}

uint64_t sub_199A7B868@<X0>(uint64_t *a1@<X8>)
{
  result = sub_199DF8A3C();
  *a1 = result;
  return result;
}

uint64_t sub_199A7B8E8(uint64_t a1, char a2)
{
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v9 = sub_199DFA32C();
    v10 = sub_199DF912C();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_199A9BE90(0x6570616853796E41, 0xED0000656C797453, &v15);
      _os_log_impl(&dword_199A75000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x19A8FA1A0](v12, -1, -1);
      MEMORY[0x19A8FA1A0](v11, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    return v15;
  }

  return a1;
}

unint64_t sub_199A7BAC4()
{
  result = qword_1EAF71D48;
  if (!qword_1EAF71D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71D48);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_199A7BB24(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_199A7C440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  objc_destroyWeak((v25 + 40));
  _Unwind_Resume(a1);
}

unint64_t sub_199A7C58C()
{
  result = qword_1EAF71DB0;
  if (!qword_1EAF71DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71DB0);
  }

  return result;
}

char *CNAvatarView_SwiftWrapper.init(contacts:listener:)(unint64_t a1)
{
  v1 = sub_199AD094C(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_199A7C70C()
{
  v1 = sub_199DF808C();
  MEMORY[0x1EEE9AC00](v1, v2);
  v3 = sub_199DF9B2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_backgroundStyle;
  swift_beginAccess();
  v9 = *(v0 + v8);
  if (v9 == 5)
  {
    if (qword_1EAF71B78 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v3, qword_1EAF71B80);
    (*(v4 + 16))(v7, v10, v3);
  }

  else if (v9 == 4)
  {
    v13 = sub_199DF96FC();
  }

  else
  {
    sub_199DF9A9C();
  }

  v11 = sub_199DF864C();

  sub_199DFA48C();
  v13 = v11;
  sub_199A7C58C();
  sub_199DF807C();
  sub_199DFA49C();
}

uint64_t type metadata accessor for AvatarView()
{
  result = qword_1EAF71DC8;
  if (!qword_1EAF71DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_199A7DA64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void *sub_199A7DB18()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result avatarViewDidFinishRendering];

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_199A7DB98()
{
  result = qword_1EAF71D40;
  if (!qword_1EAF71D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75D80);
    sub_199A7BB24(&qword_1EAF71DA0, 255, MEMORY[0x1E6996990]);
    sub_199B6FF28(&qword_1EAF71D28, &qword_1EAF75DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71D40);
  }

  return result;
}

unint64_t sub_199A7DC80()
{
  result = qword_1EAF71D50;
  if (!qword_1EAF71D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71D50);
  }

  return result;
}

unint64_t sub_199A7DDB0()
{
  result = qword_1ED615BF0;
  if (!qword_1ED615BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED615BF0);
  }

  return result;
}

uint64_t sub_199A7DE6C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_199DF9B2C();
  MEMORY[0x1EEE9AC00](v3, v4);
  sub_199DF9A9C();
  result = sub_199DF864C();
  *a2 = result;
  return result;
}

uint64_t sub_199A7DF04@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;
}

void _afterCACommitHandler(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 scheduler];
  [v4 resume];

  v5 = [v3 scheduler];

  [v5 suspend];
}

id CNUILogContactStoreDataSource()
{
  if (CNUILogContactStoreDataSource_cn_once_token_6 != -1)
  {
    dispatch_once(&CNUILogContactStoreDataSource_cn_once_token_6, &__block_literal_global_31_40343);
  }

  v1 = CNUILogContactStoreDataSource_cn_once_object_6;

  return v1;
}

uint64_t __CNUILogContactStoreDataSource_block_invoke()
{
  CNUILogContactStoreDataSource_cn_once_object_6 = os_log_create("com.apple.contactsui", "ContactStoreDataSource");

  return MEMORY[0x1EEE66BB8]();
}

void sub_199A7E7F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL CNUIIsFaceTime()
{
  v0 = CNUIIsFaceTime_isFaceTime;
  if (CNUIIsFaceTime_isFaceTime == -1)
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v1 bundleIdentifier];
    CNUIIsFaceTime_isFaceTime = [v2 isEqualToString:@"com.apple.facetime"];

    v0 = CNUIIsFaceTime_isFaceTime;
  }

  return v0 != 0;
}

BOOL CNUIIsWatchCompanion()
{
  v0 = CNUIIsWatchCompanion_isWatchCompanion;
  if (CNUIIsWatchCompanion_isWatchCompanion == -1)
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v1 bundleIdentifier];
    CNUIIsWatchCompanion_isWatchCompanion = [v2 isEqualToString:@"com.apple.Bridge"];

    v0 = CNUIIsWatchCompanion_isWatchCompanion;
  }

  return v0 != 0;
}

id CNContactsUIBundle()
{
  if (CNContactsUIBundle_onceToken[0] != -1)
  {
    dispatch_once(CNContactsUIBundle_onceToken, &__block_literal_global_58636);
  }

  v1 = CNContactsUIBundle___bundle;

  return v1;
}

uint64_t __CNContactsUIBundle_block_invoke()
{
  CNContactsUIBundle___bundle = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.ContactsUI"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_199A7F73C()
{
  v0 = sub_199DF9B2C();
  __swift_allocate_value_buffer(v0, qword_1EAF71B80);
  __swift_project_value_buffer(v0, qword_1EAF71B80);
  sub_199A7F800();
  return sub_199DF9B1C();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_199A7F800()
{
  result = qword_1EAF71BD0;
  if (!qword_1EAF71BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71BD0);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_199A7F890()
{
  result = qword_1EAF71BC8;
  if (!qword_1EAF71BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71BC8);
  }

  return result;
}

unint64_t sub_199A7F8E8()
{
  result = qword_1EAF71BC0;
  if (!qword_1EAF71BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71BC0);
  }

  return result;
}

uint64_t sub_199A7F940()
{
  v0 = sub_199DF96AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_199DF857C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_199DF8C6C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9B0C();
  sub_199DF89BC();
  (*(v11 + 8))(v14, v10);
  v15 = (*(v6 + 88))(v9, v5);
  if (v15 == *MEMORY[0x1E697DBB8] || v15 == *MEMORY[0x1E697DBA8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73538);
    sub_199DF9AFC();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_199E37D40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73540);
    sub_199DF9ADC();
    *(swift_allocObject() + 16) = xmmword_199E3A600;
    sub_199DF9ACC();
    sub_199DF9ABC();
    sub_199DF9AAC();
    (*(v1 + 104))(v4, *MEMORY[0x1E69814D8], v0);
    sub_199DF976C();
    sub_199DF9AEC();
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    return MEMORY[0x1E69E7CC0];
  }

  return v16;
}

BOOL CNUIIsMobilePhone()
{
  v0 = CNUIIsMobilePhone_isMobilePhone;
  if (CNUIIsMobilePhone_isMobilePhone == -1)
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v1 bundleIdentifier];
    CNUIIsMobilePhone_isMobilePhone = [v2 isEqualToString:@"com.apple.mobilephone"];

    v0 = CNUIIsMobilePhone_isMobilePhone;
  }

  return v0 != 0;
}

void sub_199A80E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak((v41 + 32));
  objc_destroyWeak(&a38);
  objc_destroyWeak((v42 - 160));
  objc_destroyWeak((v42 - 120));
  objc_destroyWeak((v42 - 112));
  _Unwind_Resume(a1);
}

id sub_199A81808()
{
  result = sub_199A81828();
  qword_1EAF71C00 = result;
  return result;
}

id sub_199A81828()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763C8);
  sub_199DF82DC();
  *(swift_allocObject() + 16) = xmmword_199E3A600;
  v0 = sub_199DF825C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_199DF824C();
  sub_199DF826C();
  (*(v1 + 8))(v4, v0);
  v5 = sub_199DF82BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_199DF82AC();
  sub_199DF82CC();
  (*(v6 + 8))(v9, v5);
  v10 = sub_199DF828C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_199DF827C();
  sub_199DF829C();
  (*(v11 + 8))(v14, v10);
  sub_199DF837C();

  return [objc_allocWithZone(type metadata accessor for CNTipsHelper()) init];
}

void sub_199A81E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL CNUIIsContacts()
{
  v0 = CNUIIsContacts_isContacts;
  if (CNUIIsContacts_isContacts == -1)
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v1 bundleIdentifier];
    CNUIIsContacts_isContacts = [v2 isEqualToString:@"com.apple.MobileAddressBook"];

    v0 = CNUIIsContacts_isContacts;
  }

  return v0 != 0;
}

id CNTipsHelper.init()()
{
  v1 = OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_entries;
  *&v0[v1] = sub_199A823B4(MEMORY[0x1E69E7CC0]);
  *&v0[OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_startupTask] = 0;
  *&v0[OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_controller] = 0;
  v2 = OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76368);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_currentTipView] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CNTipsHelper();
  return objc_msgSendSuper2(&v5, sel_init);
}

void *sub_199A823B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75680);
  v3 = sub_199DFA8BC();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_199B4AB64(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_199DF81AC();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;
    sub_199DF81AC();
    v8 = sub_199B4AB64(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_199A824D8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_199A86434(uint64_t result)
{
  if (MEMORY[0x1E6982A30])
  {
    v2 = MEMORY[0x1E6982A20] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2 && MEMORY[0x1E6982A28] != 0 && MEMORY[0x1E6982A38] != 0)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5 && (qword_1EAF71BB0 == 0xD000000000000013 && 0x8000000199E4A490 == qword_1EAF71BB8 || (v6 = v5, v7 = sub_199DFA99C(), v5 = v6, (v7 & 1) != 0)))
    {
      v8 = *(v1 + OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_controller);
      *(v1 + OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_controller) = v5;
      swift_unknownObjectRetain();

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70);
      MEMORY[0x1EEE9AC00](v9 - 8, v10);
      v12 = &v17 - v11;
      v13 = sub_199DFA1BC();
      (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v14;
      v16 = sub_199AE7FD0(0, 0, v12, &unk_199E43580, v15);
      swift_unknownObjectRelease();
      *(v1 + OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_startupTask) = v16;
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_199A86678()
{
  MEMORY[0x19A8FA290](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_199A87570(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  UIView.provideOnscreenContactToAppItents(_:)(v9);
}

Swift::Void __swiftcall UIView.provideOnscreenContactToAppItents(_:)(CNContact_optional a1)
{
  isa = a1.value.super.isa;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF727A0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v13 - v4;
  if (isa)
  {
    sub_199DF76CC();
    v6 = isa;
    v7 = [(objc_class *)v6 identifier];
    v8 = sub_199DF9F8C();
    v10 = v9;

    v13[0] = v8;
    v13[1] = v10;
    sub_199A8775C();
    sub_199DF6ECC();
    v11 = sub_199DF6EDC();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
    sub_199DFA47C();
  }

  else
  {
    v12 = sub_199DF6EDC();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    sub_199DFA47C();
  }
}

unint64_t sub_199A8775C()
{
  result = qword_1EAF71BA0;
  if (!qword_1EAF71BA0)
  {
    sub_199DF76CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71BA0);
  }

  return result;
}

id _LargeDatabasesSignpostLogQueue()
{
  if (_LargeDatabasesSignpostLogQueue_cn_once_token_0 != -1)
  {
    dispatch_once(&_LargeDatabasesSignpostLogQueue_cn_once_token_0, &__block_literal_global_28434);
  }

  v1 = _LargeDatabasesSignpostLogQueue_cn_once_object_0;

  return v1;
}

void sub_199A894E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_199A896D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_199A89A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_199A89C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199A89DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_199A8DFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199A8F6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 48));
  _Block_object_dispose(&a16, 8);
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CNUILogAvatarView()
{
  if (CNUILogAvatarView_cn_once_token_4 != -1)
  {
    dispatch_once(&CNUILogAvatarView_cn_once_token_4, &__block_literal_global_25_40337);
  }

  v1 = CNUILogAvatarView_cn_once_object_4;

  return v1;
}

void sub_199A90270(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E6982A30])
  {
    v3 = MEMORY[0x1E6982A20] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && MEMORY[0x1E6982A28] != 0 && MEMORY[0x1E6982A38] != 0)
  {
    if (*(v2 + OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_startupTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD0);
      sub_199DFA1EC();
    }

    v6 = OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_controller;
    v7 = *(v2 + OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_controller);
    if (v7)
    {
      [v7 setTipView_];
      v8 = *(v2 + v6);
      *(v2 + v6) = 0;
    }

    if (qword_1EAF71BF8 != -1)
    {
      v7 = swift_once();
    }

    v9 = *(qword_1EAF71C00 + OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_lock);
    v10 = MEMORY[0x1EEE9AC00](v7, a2);
    MEMORY[0x1EEE9AC00](v10, v11);
    os_unfair_lock_lock(v9 + 4);
    sub_199A90434();
    os_unfair_lock_unlock(v9 + 4);
  }
}

void sub_199A9045C(uint64_t a1, unsigned __int8 a2)
{
  v5 = OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_entries;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (*(v6 + 16))
  {
    v7 = sub_199B4AB64(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      v10 = *(v9 + 16);
      if (v10)
      {
        v14 = a2;
        v16 = v2;
        v11 = v9 + 32;
        sub_199DF81AC();
        do
        {
          sub_199B89D00(v11, v15);

          sub_199B89D38(v15);
          sub_199DFA1EC();

          v11 += 56;
          --v10;
        }

        while (v10);

        a2 = v14;
      }

      swift_beginAccess();
      sub_199B85414(0, a2);
      swift_endAccess();
      v12 = OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_currentTipView;
      swift_beginAccess();
      v13 = *(a1 + v12);
      *(a1 + v12) = 0;
    }
  }
}

void *sub_199A908A8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_199A908C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_199DF9F8C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_199A908EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_199A9090C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_199A90938(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_199A90958(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_199A90980()
{
  MEMORY[0x19A8FA290](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A909BC()
{
  MEMORY[0x19A8FA290](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A909FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A90A3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A90A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_199DF729C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_199A90AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_199DF729C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_199A90B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_199DF729C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_199A90C0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_199DF729C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_199A90CCC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_199DF7A4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_199A90D78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_199DF7A4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_199A90E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_199DF7ADC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_199DF7A4C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_199A90F28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_199DF7ADC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_199DF7A4C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_199A91028(uint64_t a1, uint64_t a2)
{
  v4 = sub_199DF7A4C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_199A91094(uint64_t a1, uint64_t a2)
{
  v4 = sub_199DF7A4C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_199A91138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_199DF7ADC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_199DF7A4C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_199A91228(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_199DF7ADC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_199DF7A4C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_199A91334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_199DF7A4C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_199A913F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_199DF7A4C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_199A914B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_199DF7ADC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_199A9151C(uint64_t a1, uint64_t a2)
{
  v4 = sub_199DF7ADC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_199A91590(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_199DF7A4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_199A9163C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_199DF7A4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_199A916E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_199A91730@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_contact;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_199A917AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A917E4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A9181C()
{

  sub_199ABA1F8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_199A9188C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A918C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_199A9198C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_199A91A4C@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_199DF8A0C();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = sub_199ABF3D8;
  a1[1] = result;
  return result;
}

uint64_t sub_199A91AB4()
{
  MEMORY[0x19A8FA290](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A91AEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A91B2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_199DF8BAC();
  *a1 = result;
  return result;
}

uint64_t sub_199A91B84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_199DF898C();
  *a1 = result;
  return result;
}

uint64_t sub_199A91BDC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x19A8F6970]();
  *a1 = result;
  return result;
}

uint64_t sub_199A91C08@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x19A8F6850]();
  *a1 = result;
  return result;
}

uint64_t sub_199A91C60@<X0>(void *a1@<X8>)
{
  result = sub_199DF89CC();
  *a1 = v3;
  return result;
}

uint64_t sub_199A91CBC@<X0>(_BYTE *a1@<X8>)
{
  sub_199AC61C0();
  result = sub_199DF8C9C();
  *a1 = v3;
  return result;
}

uint64_t sub_199A91E28(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_199A91E34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D80);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[11];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D88);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[12];
    goto LABEL_7;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D90);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[13];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[14] + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_199A91FAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D80);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D88);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[12];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D90);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[14] + 8) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[13];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_199A92120()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72D58);
  type metadata accessor for LimitedLibraryPickerHostView(255);
  sub_199AC47E8();
  sub_199AC616C(&qword_1EAF73D30, type metadata accessor for LimitedLibraryPickerHostView);
  return swift_getOpaqueTypeConformance2();
}

void sub_199A92200(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_199A9227C()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_199A922BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72FC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72FC8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_199A923F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72FC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72FC8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_199A92534()
{
  sub_199DF776C();

  return swift_getWitnessTable();
}

uint64_t sub_199A9261C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF730D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_199A926E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF730D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_199A927E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A92890@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_backgroundStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_199A928EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

double sub_199A92980@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderWidth;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

id sub_199A92A28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_199A92A98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199A92B20()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF734E0);
  sub_199AD5D60();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_199A92BA4()
{
  MEMORY[0x19A8FA290](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A92BE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A92C1C()
{
  MEMORY[0x19A8FA290](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A92C54()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_199DF729C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199A92D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF76060);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_199A92E44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF76060);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_199A92F20()
{
  v1 = type metadata accessor for CNPosterOnboardingPrivacyView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72318);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF740B0) + 32);
    v8 = sub_199DF892C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_0(v5 + *(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_199A9311C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_199ADFB90(v1);
}

uint64_t sub_199A9314C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_199A931E0()
{
  sub_199DF994C();

  return swift_getWitnessTable();
}

uint64_t sub_199A9322C()
{
  sub_199DF994C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF739F0);
  sub_199DF889C();
  sub_199DF889C();
  sub_199DF889C();
  swift_getTupleTypeMetadata3();
  sub_199DF9BFC();
  swift_getWitnessTable();
  sub_199DF98DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF739F8);
  sub_199DF889C();
  swift_getWitnessTable();
  sub_199AA0B90(&qword_1EAF73A10, &qword_1EAF739F8);
  return swift_getWitnessTable();
}

uint64_t sub_199A9343C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A934CC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A93504()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_199A9354C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_199A93590()
{
  swift_unknownObjectRelease();

  sub_199A9EF34(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_199A935E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t *sub_199A93658@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_199A93674()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_199A936BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73AE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_199A937A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A937EC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_199A93834()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A93870()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A938A8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_199A93948()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A93980()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A93A34()
{
  MEMORY[0x19A8FA290](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A93AE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A93C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73DA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_199A93CC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73DA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_199A93D70()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73D20);
  sub_199AF5644();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_199A93DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_199DF804C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_199A93E9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_199DF804C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_199A93F54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73F30);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_199A93FCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73F30);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_199A94048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_199DF7FDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_199A94108(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_199DF7FDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_199A941C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A94204()
{
  v1 = type metadata accessor for LimitedLibraryPickerHostView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(v1 + 20);
  v6 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = sub_199DF7FDC();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73DA0);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199A943EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF76060);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_199A944A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF76060);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_199A9458C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_199B01738(v1);
}

void sub_199A945C0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_199B01A80(v1);
}

uint64_t sub_199A945FC()
{
  sub_199DF889C();
  sub_199B02768();
  return swift_getWitnessTable();
}

uint64_t sub_199A94660()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A94698()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_199A946E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF72BF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_199A9479C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF72BF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_199A9484C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CardHeaderNameModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_199A948F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CardHeaderNameModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_199A949B4()
{
  v1 = (type metadata accessor for ContactCardHeaderNameView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];

  v6 = *(type metadata accessor for CardHeaderNameModel(0) + 24);
  v7 = sub_199DF6FAC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199A94B24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF742D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199A94BD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A94C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_199DF7D9C();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_199A94D40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D88);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_199DF7D9C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_199A94E58()
{
  v1 = type metadata accessor for QuickActionButtonView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_199DF857C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  v7 = sub_199DF7D9C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199A94FFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_199A9505C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_199DF7C9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_199A95100(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_199DF7C9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_199A95204(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF730D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_199A952C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF730D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_199A95370@<X0>(uint64_t *a1@<X8>)
{
  result = sub_199DF8AAC();
  *a1 = result;
  return result;
}

uint64_t sub_199A953C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_199DF8B7C();
  *a1 = result;
  return result;
}

uint64_t sub_199A9541C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_199DF8BAC();
  *a1 = result;
  return result;
}

uint64_t sub_199A95474@<X0>(void *a1@<X8>)
{
  result = sub_199DF8B0C();
  *a1 = v3;
  return result;
}

uint64_t sub_199A954C8@<X0>(uint64_t a1@<X8>)
{
  result = sub_199DF8C1C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_199A95534()
{
  v1 = (type metadata accessor for ContactCardViewSwiftUI(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_199DF867C();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199A956BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199A9572C@<X0>(void *a1@<X8>)
{
  sub_199B027F8();
  result = sub_199DF8C9C();
  *a1 = v3;
  return result;
}

uint64_t sub_199A957C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_199DF81AC();
  return sub_199B0D170(v1, v2);
}

uint64_t sub_199A9582C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_199A95880@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_199A958B4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_199A958B4(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_199A958C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF730D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[10]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for DuplicateContactsListView(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[13];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_199A959F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF730D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for DuplicateContactsListView(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[13];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_199A95B2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF76060);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for DuplicateContactsListView(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_199A95C98(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF76060);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for DuplicateContactsListView(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_199A95E04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199A95EA4()
{
  v1 = type metadata accessor for DuplicateContactsDetailView(0);
  v2 = *(*(v1 - 1) + 80);
  v14 = *(*(v1 - 1) + 64);

  v3 = v0 + ((v2 + 24) & ~v2);

  v4 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_199DF867C();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_199AC6288(*(v3 + v1[7]), *(v3 + v1[7] + 8));

  v6 = v3 + v1[13];

  v7 = type metadata accessor for DuplicateContactsListView(0);
  v8 = v7[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_199DF867C();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
  }

  sub_199AC6288(*(v6 + v7[7]), *(v6 + v7[7] + 8));
  v10 = v7[8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880);
  v12 = *(*(v11 - 8) + 8);
  v12(v6 + v10, v11);
  v12(v6 + v7[9], v11);
  __swift_destroy_boxed_opaque_existential_0(v6 + v7[10]);

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 24) & ~v2) + v14, v2 | 7);
}

uint64_t sub_199A961B4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A961F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199A962A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_199DF8B5C();
  *a1 = result;
  return result;
}

uint64_t sub_199A96300(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_199DF804C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_199A963AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_199DF804C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_199A96450()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A96488()
{
  MEMORY[0x19A8FA290](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A964C4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A964FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_199A9654C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A965F8@<X0>(void *a1@<X8>)
{
  sub_199B2AE70();
  result = sub_199DF8C9C();
  *a1 = v3;
  return result;
}

id sub_199A9664C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_199A966B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75000);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_199A96780(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75000);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_199A96848()
{
  v1 = type metadata accessor for CNPosterOnboardingWelcomeView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_199DF886C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  MEMORY[0x19A8FA290](v5 + v1[9]);

  v7 = (v5 + v1[13]);
  if (*v7)
  {
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_199AC6288(*(v5 + v1[14]), *(v5 + v1[14] + 8));

  return MEMORY[0x1EEE6BDD0](v0, v8 + 8, v2 | 7);
}

uint64_t sub_199A96A28()
{
  v1 = type metadata accessor for CNPosterOnboardingWelcomeView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_199DF886C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  MEMORY[0x19A8FA290](v5 + v1[9]);

  v7 = (v5 + v1[13]);
  if (*v7)
  {
  }

  sub_199AC6288(*(v5 + v1[14]), *(v5 + v1[14] + 8));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199A96CB4()
{
  MEMORY[0x19A8FA290](v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A96D40()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A96D78()
{
  sub_199DF7E1C();
  sub_199DF889C();
  sub_199B2B90C();
  return swift_getWitnessTable();
}

uint64_t sub_199A96DEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A96E24()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_199A96E7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_199A96EBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A970C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF730D0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[10] + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_199A971EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF730D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[10] + 24) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_199A97310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199A97398()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A973F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DuplicateContactsListView(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_199A97508(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for DuplicateContactsListView(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_199A9761C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DuplicateContactsListView(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_199A976C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DuplicateContactsListView(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_199A977B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_199DF8C3C();
  *a1 = result;
  return result;
}

uint64_t sub_199A97810()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75208);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75220);
  sub_199B3C550();
  sub_199B3C628();
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySo7UIImageCSgGSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_199A979E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_199A97A54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75408);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_199A97B8C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EAF75430;
  return result;
}

uint64_t sub_199A97BD8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EAF75430 = v1;
  return result;
}

uint64_t sub_199A97C28()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A97C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_199DF884C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_199A97D30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_199DF884C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_199A97E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_199DF884C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_199A97F0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_199DF884C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_199A97FC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_199A9802C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_199A980E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_199A982EC()
{
  v1 = (type metadata accessor for CNWallpaperSuggestionsGallery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_199DF86BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0 + v3;
  MEMORY[0x19A8FA290](v0 + v3);

  sub_199AC6288(*(v9 + 128), *(v9 + 136));
  v10 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_199DF884C();
    (*(*(v11 - 8) + 8))(v9 + v10, v11);
  }

  else
  {
  }

  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x1EEE6BDD0](v0, v12 + v8, v2 | v7 | 7);
}

uint64_t sub_199A984E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_199A98550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_199DF884C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_199A985FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_199DF884C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_199A986A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF757F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75800);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75808);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75810);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF74FD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75818);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF740A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75820);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75828);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF74FB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75830);
  sub_199AA0B90(&qword_1EAF71380, &qword_1EAF75830);
  swift_getOpaqueTypeConformance2();
  sub_199B57F6C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_199B58098();
  swift_getOpaqueTypeConformance2();
  sub_199B58230();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_199A98954(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_199DF884C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75000);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_199A98A84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_199DF884C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75000);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_199A98BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_199DF884C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_199A98CD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_199DF884C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_199A98E04()
{
  v1 = (type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  MEMORY[0x19A8FA290](v5 + 16);
  v6 = v5 + v1[8];
  v7 = sub_199DF729C();
  (*(*(v7 - 8) + 8))(v6, v7);

  v8 = v1[9];
  v9 = sub_199DF884C();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_199A98F5C()
{
  v1 = (type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  MEMORY[0x19A8FA290](v0 + v3 + 16);
  v5 = v0 + v3 + v1[8];
  v6 = sub_199DF729C();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v1[9];
  v8 = sub_199DF884C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

id sub_199A991DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper_viewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_199A99250()
{
  MEMORY[0x19A8FA290](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A99288()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A992C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A99300()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_199A99358()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A99390()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_199DF729C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199A99520()
{
  type metadata accessor for CNWallpaperSuggestionsGallerySection.TitleView();
  sub_199DF889C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_199DF9BFC();
  swift_getWitnessTable();
  sub_199DF994C();
  sub_199DF889C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_199A996A4@<X0>(uint64_t *a1@<X8>)
{
  result = UIMutableTraits.avatarBackgroundStyle.getter();
  *a1 = result;
  return result;
}

__n128 sub_199A99728(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_199A99770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D98);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_199A99824(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D98);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_199A998D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_199A99930(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_199A99984()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_199A999C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10ContactsUI26CNPosterPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_199A99A34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75000);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

void *sub_199A99AF0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_199A99BA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_199DF8BFC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_199A99C0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199A99C80()
{
  v1 = type metadata accessor for CNPosterPreviewView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  MEMORY[0x19A8FA290](v0 + v3 + 16);

  v6 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_199DF886C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_199AC6288(*(v5 + *(v1 + 68)), *(v5 + *(v1 + 68) + 8));

  return MEMORY[0x1EEE6BDD0](v0, v8 + 8, v2 | 7);
}

uint64_t sub_199A99E30()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_199A99E70()
{
  MEMORY[0x19A8FA290](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_199A99EA8()
{

  sub_199A9EF34(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_199A99F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF76060);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_199A9A014(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF76060);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_199A9A0C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A9A0FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_199A9A144()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_199A9A184()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_199A9A1CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_199DF8ADC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_199A9A250()
{

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_199A9A2B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_displaysBottomSeparator;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_199A9A308(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_displaysBottomSeparator;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_199B88C80();
}

uint64_t sub_199A9A3C0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763E0);
  result = sub_199DF832C();
  *a1 = result;
  return result;
}

uint64_t sub_199A9A57C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_199A9A5FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_199A9A60C()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF71DE8);
  __swift_project_value_buffer(v0, qword_1EAF71DE8);
  v1 = CNUILogPosters();
  return sub_199DF805C();
}

void sub_199A9A668(unint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC10ContactsUI34CNPosterOnboardingPrivacyViewModel_model];
  if (a1 >> 62)
  {
    v52 = a1;
    v4 = sub_199DFA87C();
    a1 = v52;
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = a1;
    v59 = MEMORY[0x1E69E7CC0];
    sub_199A9C438(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return;
    }

    v53 = v2;
    v54 = v3;
    v5 = v59;
    v7 = v6;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      v55 = v4;
      do
      {
        v9 = v7;
        v10 = MEMORY[0x19A8F8520](v8);
        v11 = *(v10 + OBJC_IVAR___CNDeviceListServiceDeviceInfo_name + 8);
        v57 = *(v10 + OBJC_IVAR___CNDeviceListServiceDeviceInfo_name);
        v58 = v11;
        sub_199A9C458();
        sub_199DF81AC();
        v12 = sub_199DF93CC();
        v14 = v13;
        v16 = v15;
        v18 = v17;
        sub_199DF81AC();
        v19 = sub_199DF97CC();
        swift_unknownObjectRelease();
        v59 = v5;
        v21 = *(v5 + 16);
        v20 = *(v5 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_199A9C438((v20 > 1), v21 + 1, 1);
          v5 = v59;
        }

        ++v8;
        *(v5 + 16) = v21 + 1;
        v22 = v5 + 40 * v21;
        *(v22 + 32) = v12;
        *(v22 + 40) = v14;
        *(v22 + 48) = v16 & 1;
        *(v22 + 56) = v18;
        *(v22 + 64) = v19;
        v7 = v9;
      }

      while (v55 != v8);
    }

    else
    {
      v23 = (v6 + 32);
      sub_199A9C458();
      do
      {
        v24 = v4;
        v25 = *v23;
        v26 = (*v23 + OBJC_IVAR___CNDeviceListServiceDeviceInfo_name);
        v27 = v26[1];
        v57 = *v26;
        v58 = v27;
        v28 = v25;
        sub_199DF81AC();
        v29 = sub_199DF93CC();
        v31 = v30;
        v33 = v32;
        v35 = v34;
        sub_199DF81AC();
        v36 = sub_199DF97CC();

        v59 = v5;
        v38 = *(v5 + 16);
        v37 = *(v5 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_199A9C438((v37 > 1), v38 + 1, 1);
          v5 = v59;
        }

        *(v5 + 16) = v38 + 1;
        v39 = v5 + 40 * v38;
        *(v39 + 32) = v29;
        *(v39 + 40) = v31;
        *(v39 + 48) = v33 & 1;
        *(v39 + 56) = v35;
        *(v39 + 64) = v36;
        ++v23;
        v4 = v24 - 1;
      }

      while (v24 != 1);
    }

    v2 = v53;
    v3 = v54;
  }

  sub_199ADAB14(v5);
  if (*(v3 + 24))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v41);
    v57 = v3;
    sub_199A9D6F0(&qword_1EAF71F88, type metadata accessor for CNPosterOnboardingPrivacyView.Model);
    sub_199DF739C();
  }

  else
  {
    *(v3 + 24) = 0;
  }

  if (qword_1EAF71DE0 != -1)
  {
    swift_once();
  }

  v42 = sub_199DF804C();
  __swift_project_value_buffer(v42, qword_1EAF71DE8);
  v43 = v2;
  v44 = sub_199DF802C();
  v45 = sub_199DFA33C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = v56;
    *v46 = 134349315;
    swift_getKeyPath();
    v59 = v3;
    sub_199A9D6F0(&qword_1EAF71F88, type metadata accessor for CNPosterOnboardingPrivacyView.Model);
    sub_199DF73AC();

    *(v46 + 4) = *(*(v3 + 16) + 16);

    *(v46 + 12) = 2081;
    swift_getKeyPath();
    v59 = v3;
    sub_199DF73AC();

    v47 = sub_199DF81AC();
    v48 = MEMORY[0x19A8F7EB0](v47, &type metadata for CNPosterOnboardingPrivacyView.RowItem);
    v50 = v49;

    v51 = sub_199A9BE90(v48, v50, &v57);

    *(v46 + 14) = v51;
    _os_log_impl(&dword_199A75000, v44, v45, "Setting device%{public}ld rowItems: %{private}s", v46, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x19A8FA1A0](v56, -1, -1);
    MEMORY[0x19A8FA1A0](v46, -1, -1);
  }

  else
  {
  }
}

id CNPosterOnboardingPrivacyViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNPosterOnboardingPrivacyViewModel.init()()
{
  v1 = OBJC_IVAR____TtC10ContactsUI34CNPosterOnboardingPrivacyViewModel_model;
  type metadata accessor for CNPosterOnboardingPrivacyView.Model(0);
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 1;
  sub_199DF73DC();
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CNPosterOnboardingPrivacyViewModel();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_199A9AE28()
{
  v1 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_199A9AEDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_199A9AF34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_199A9B058()
{
  v1 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper_model;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_199A9B10C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper_model;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_199A9B164@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper_model;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_199A9B1D8(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id CNPosterOnboardingPrivacyViewWrapper.__allocating_init(delegate:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_199A9D0F8();
  swift_unknownObjectRelease();
  return v2;
}

id CNPosterOnboardingPrivacyViewWrapper.init(delegate:)()
{
  v0 = sub_199A9D0F8();
  swift_unknownObjectRelease();
  return v0;
}

void *sub_199A9B30C(uint64_t a1, const char *a2, SEL *a3)
{
  if (qword_1EAF71DE0 != -1)
  {
    swift_once();
  }

  v5 = sub_199DF804C();
  __swift_project_value_buffer(v5, qword_1EAF71DE8);
  v6 = sub_199DF802C();
  v7 = sub_199DFA33C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_199A75000, v6, v7, a2, v8, 2u);
    MEMORY[0x19A8FA1A0](v8, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a3];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_199A9B4EC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_199A9B570@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199A9D6F0(&qword_1EAF71F88, type metadata accessor for CNPosterOnboardingPrivacyView.Model);
  sub_199DF73AC();

  *a2 = *(v3 + 16);
  return sub_199DF81AC();
}

uint64_t sub_199A9B648@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199A9D6F0(&qword_1EAF71F88, type metadata accessor for CNPosterOnboardingPrivacyView.Model);
  sub_199DF73AC();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_199A9B718(uint64_t a1, id *a2)
{
  result = sub_199DF9F6C();
  *a2 = 0;
  return result;
}

uint64_t sub_199A9B790(uint64_t a1, id *a2)
{
  v3 = sub_199DF9F7C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_199A9B810@<X0>(uint64_t *a1@<X8>)
{
  sub_199DF9F8C();
  v2 = sub_199DF9F5C();

  *a1 = v2;
  return result;
}

uint64_t sub_199A9B854(uint64_t a1)
{
  v2 = sub_199A9D6F0(&qword_1EAF722B8, type metadata accessor for UIContentSizeCategory);
  v3 = sub_199A9D6F0(&qword_1EAF722C0, type metadata accessor for UIContentSizeCategory);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_199A9B910(uint64_t a1)
{
  v2 = sub_199A9D6F0(&qword_1EAF723C8, type metadata accessor for CNWallpaperColorDescriptionKey);
  v3 = sub_199A9D6F0(&unk_1EAF723D0, type metadata accessor for CNWallpaperColorDescriptionKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_199A9B9CC(uint64_t a1)
{
  v2 = sub_199A9D6F0(&qword_1EAF722C8, type metadata accessor for CNWallpaperType);
  v3 = sub_199A9D6F0(&qword_1EAF722D0, type metadata accessor for CNWallpaperType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_199A9BA88(uint64_t a1)
{
  v2 = sub_199A9D6F0(&qword_1EAF71078, type metadata accessor for Key);
  v3 = sub_199A9D6F0(&unk_1EAF723E0, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_199A9BB44(uint64_t a1)
{
  v2 = sub_199A9D6F0(&unk_1EAF74FF0, type metadata accessor for InfoKey);
  v3 = sub_199A9D6F0(&qword_1EAF723F0, type metadata accessor for InfoKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_199A9BC00@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_199DF9F5C();

  *a1 = v2;
  return result;
}

uint64_t sub_199A9BC48(uint64_t a1)
{
  v2 = sub_199A9D6F0(&qword_1EAF723F8, type metadata accessor for CNActionType);
  v3 = sub_199A9D6F0(&qword_1EAF72400, type metadata accessor for CNActionType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_199A9BD04()
{
  v0 = sub_199DF9F8C();
  v1 = MEMORY[0x19A8F7E30](v0);

  return v1;
}

uint64_t sub_199A9BD40()
{
  sub_199DF9F8C();
  sub_199DF9FEC();
}

uint64_t sub_199A9BD94()
{
  sub_199DF9F8C();
  sub_199DFAA7C();
  sub_199DF9FEC();
  v0 = sub_199DFAABC();

  return v0;
}

uint64_t sub_199A9BE08()
{
  v0 = sub_199DF9F8C();
  v2 = v1;
  if (v0 == sub_199DF9F8C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_199DFA99C();
  }

  return v5 & 1;
}

unint64_t sub_199A9BE90(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_199DF81AC();
  v6 = sub_199A9BF5C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_199A9DA04(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_199A9BF5C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_199A9C068(a5, a6);
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
    result = sub_199DFA76C();
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

uint64_t sub_199A9C068(uint64_t a1, unint64_t a2)
{
  v3 = sub_199A9C0B4(a1, a2);
  sub_199A9C1E4(&unk_1F0CDCA60);
  return v3;
}

uint64_t sub_199A9C0B4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_199A9C2D0(v5, 0);
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

  result = sub_199DFA76C();
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
        v10 = sub_199DFA04C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_199A9C2D0(v10, 0);
        result = sub_199DFA70C();
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

uint64_t sub_199A9C1E4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_199A9C344(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_199A9C2D0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72328);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_199A9C344(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72328);
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

char *sub_199A9C438(char *a1, int64_t a2, char a3)
{
  result = sub_199A9C750(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_199A9C458()
{
  result = qword_1EAF71130;
  if (!qword_1EAF71130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71130);
  }

  return result;
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

void *sub_199A9C53C(void *a1, int64_t a2, char a3)
{
  result = sub_199A9C870(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_199A9C55C(char *a1, int64_t a2, char a3)
{
  result = sub_199A9C9B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_199A9C57C(void *a1, int64_t a2, char a3)
{
  result = sub_199A9CAC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_199A9C59C(char *a1, int64_t a2, char a3)
{
  result = sub_199A9CBF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_199A9C5BC(size_t a1, int64_t a2, char a3)
{
  result = sub_199A9CF1C(a1, a2, a3, *v3, &qword_1EAF722F8, &unk_199E37178, MEMORY[0x1E6996908]);
  *v3 = result;
  return result;
}

char *sub_199A9C600(char *a1, int64_t a2, char a3)
{
  result = sub_199A9CD04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_199A9C620(size_t a1, int64_t a2, char a3)
{
  result = sub_199A9CF1C(a1, a2, a3, *v3, &qword_1EAF722E8, &unk_199E37168, MEMORY[0x1E699C8F0]);
  *v3 = result;
  return result;
}

size_t sub_199A9C664(size_t a1, int64_t a2, char a3)
{
  result = sub_199A9CF1C(a1, a2, a3, *v3, &qword_1EAF722A8, &unk_199E37148, MEMORY[0x1E69969C0]);
  *v3 = result;
  return result;
}

size_t sub_199A9C6A8(size_t a1, int64_t a2, char a3)
{
  result = sub_199A9CF1C(a1, a2, a3, *v3, &qword_1EAF72290, &unk_199E37130, MEMORY[0x1E69969D0]);
  *v3 = result;
  return result;
}

char *sub_199A9C6EC(char *a1, int64_t a2, char a3)
{
  result = sub_199A9CE10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_199A9C70C(size_t a1, int64_t a2, char a3)
{
  result = sub_199A9CF1C(a1, a2, a3, *v3, &qword_1EAF722D8, &unk_199E38C20, MEMORY[0x1E6969C28]);
  *v3 = result;
  return result;
}

char *sub_199A9C750(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72330);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_199A9C870(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72298);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_199A9C9B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_199A9CAC4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72310);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_199A9CBF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_199A9CD04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_199A9CE10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_199A9CF1C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id sub_199A9D0F8()
{
  v1 = v0;
  v2 = type metadata accessor for CNPosterOnboardingPrivacyView(0);
  v3 = (v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = (&v24 - v9);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = [objc_allocWithZone(type metadata accessor for CNPosterOnboardingPrivacyViewModel()) init];
  *&v1[OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper_model] = v13;
  v14 = *&v13[OBJC_IVAR____TtC10ContactsUI34CNPosterOnboardingPrivacyViewModel_model];
  v15 = v10 + v3[10];
  *(v15 + 3) = &type metadata for CNPosterOnboardingPrivacyStringsFramework;
  *(v15 + 4) = &off_1F0CDD318;
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72318);
  swift_storeEnumTagMultiPayload();
  v16 = (v10 + v3[7]);
  v26 = v14;
  type metadata accessor for CNPosterOnboardingPrivacyView.Model(0);

  sub_199DF983C();
  v17 = v28;
  *v16 = v27;
  v16[1] = v17;
  v18 = (v10 + v3[8]);
  *v18 = sub_199A9D8EC;
  v18[1] = v11;
  v19 = (v10 + v3[9]);
  *v19 = sub_199A9D918;
  v19[1] = v12;
  sub_199A9D944(v10, v7);
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72320));
  *&v1[OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper_hostingController] = sub_199DF8DFC();
  v21 = type metadata accessor for CNPosterOnboardingPrivacyViewWrapper();
  v25.receiver = v1;
  v25.super_class = v21;
  v22 = objc_msgSendSuper2(&v25, sel_init);
  sub_199A9D9A8(v10);
  return v22;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_199A9D5E8(uint64_t a1, int a2)
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

uint64_t sub_199A9D608(uint64_t result, int a2, int a3)
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

uint64_t sub_199A9D6F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_199A9D944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CNPosterOnboardingPrivacyView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199A9D9A8(uint64_t a1)
{
  v2 = type metadata accessor for CNPosterOnboardingPrivacyView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_199A9DA04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_199A9DED0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = type metadata accessor for CNPosterOnboardingSettingsAnimationViewController();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_animationLayer] = 0;
  v8 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
  v7[v8] = !UIAccessibilityIsVideoAutoplayEnabled();
  v9 = &v7[OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_dataSource];
  *v9 = v1;
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v16.receiver = v7;
  v16.super_class = v6;
  v10 = v1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  return objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
}

void sub_199A9DF9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0);
  MEMORY[0x19A8F7740](&v5, v2);
  v3 = v5;
  v4 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
  swift_beginAccess();
  if (v3 != *(a1 + v4))
  {
    sub_199B71854();
  }
}

id sub_199A9E034@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for CNPosterOnboardingSettingsAnimationCoordinator()) init];
  *a1 = result;
  return result;
}

void sub_199A9E150()
{
  sub_199A9E338();
  sub_199DF90BC();
  __break(1u);
}

id sub_199A9E1B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNPosterOnboardingSettingsAnimationCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_199A9E22C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_199A9E274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_199A9E2E4()
{
  result = qword_1EAF71690;
  if (!qword_1EAF71690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71690);
  }

  return result;
}

unint64_t sub_199A9E338()
{
  result = qword_1EAF71688;
  if (!qword_1EAF71688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71688);
  }

  return result;
}

void CNMutableContact.id.getter()
{
  v1.super_class = MEMORY[0x1E695CF18];
  v0 = objc_msgSendSuper2(&v1, "id");
  sub_199DF727C();
}

UIColor sub_199A9E448()
{
  sub_199A9E488();
  v0 = sub_199DF81AC();
  return UIColor.init(avatarColorDescription:)(v0);
}

unint64_t sub_199A9E488()
{
  result = qword_1EAF71C10;
  if (!qword_1EAF71C10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF71C10);
  }

  return result;
}

uint64_t sub_199A9E550()
{
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI33CNMemojiPosterConfigurationReader_memojiPosterConfiguration + 56) >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return sub_199DF71DC();
  }
}

uint64_t sub_199A9E610()
{
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI33CNMemojiPosterConfigurationReader_memojiPosterConfiguration + 16) >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return sub_199DF71DC();
  }
}

uint64_t sub_199A9E6D0()
{
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI33CNMemojiPosterConfigurationReader_memojiPosterConfiguration + 32) >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return sub_199DF71DC();
  }
}

id CNMemojiPosterConfigurationReader.init(posterConfigurationUserInfo:)(uint64_t a1)
{
  sub_199A9E99C(a1, &v6);

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  if (v6)
  {
    v2 = &v1[OBJC_IVAR____TtC10ContactsUI33CNMemojiPosterConfigurationReader_memojiPosterConfiguration];
    *v2 = v6;
    v3 = v12;
    *(v2 + 8) = v11;
    *(v2 + 24) = v3;
    *(v2 + 40) = v13;
    *(v2 + 7) = v14;
    v5.receiver = v1;
    v5.super_class = type metadata accessor for CNMemojiPosterConfigurationReader();
    return objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    type metadata accessor for CNMemojiPosterConfigurationReader();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

double sub_199A9E99C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_199DF9F8C();
  if (*(a1 + 16))
  {
    sub_199AEF9E8(v4, v5);
    v7 = v6;

    if (v7)
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        sub_199DF703C();
        swift_allocObject();
        sub_199DF702C();
        sub_199A9EF88();
        sub_199DF701C();

        sub_199A9EF34(v9, *(&v9 + 1));
        *a2 = v9;
        a2[1] = v10;
        result = *&v11;
        a2[2] = v11;
        a2[3] = v12;
        return result;
      }
    }
  }

  else
  {
  }

  result = 0.0;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

id CNMemojiPosterConfigurationReader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNMemojiPosterConfigurationReader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNMemojiPosterConfigurationReader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199A9ED44(uint64_t a1)
{
  v2 = sub_199DF9F8C();
  if (*(a1 + 16))
  {
    sub_199AEF9E8(v2, v3);
    v5 = v4;

    if (v5)
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        return v7;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_199A9EF20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_199A9EF34(a1, a2);
  }

  return a1;
}

uint64_t sub_199A9EF34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_199A9EF88()
{
  result = qword_1EAF725F8;
  if (!qword_1EAF725F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF725F8);
  }

  return result;
}

uint64_t DeviceListServiceDeviceInfo.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___CNDeviceListServiceDeviceInfo_name);
  sub_199DF81AC();
  return v1;
}

uint64_t DeviceListServiceDeviceInfo.imageName.getter()
{
  v1 = *(v0 + OBJC_IVAR___CNDeviceListServiceDeviceInfo_imageName);
  sub_199DF81AC();
  return v1;
}

id DeviceListServiceDeviceInfo.__allocating_init(name:imageName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___CNDeviceListServiceDeviceInfo_name];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR___CNDeviceListServiceDeviceInfo_imageName];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id DeviceListServiceDeviceInfo.init(name:imageName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR___CNDeviceListServiceDeviceInfo_name];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR___CNDeviceListServiceDeviceInfo_imageName];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for DeviceListServiceDeviceInfo();
  return objc_msgSendSuper2(&v8, sel_init);
}

id DeviceListServiceDeviceInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_199A9F24C()
{
  v1 = OBJC_IVAR___CNIDSDeviceListService____lazy_storage___services;
  if (*&v0[OBJC_IVAR___CNIDSDeviceListService____lazy_storage___services])
  {
    v2 = *&v0[OBJC_IVAR___CNIDSDeviceListService____lazy_storage___services];
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    v3 = v0;
    sub_199DFA79C();
    sub_199AA02FC(0xD000000000000024, 0x8000000199E44BD0);
    sub_199DFA77C();
    sub_199DFA7AC();
    sub_199DFA7BC();
    sub_199DFA78C();
    sub_199AA02FC(0xD000000000000010, 0x8000000199E44C00);
    sub_199DFA77C();
    sub_199DFA7AC();
    sub_199DFA7BC();
    sub_199DFA78C();

    v2 = v5;
    *&v0[v1] = v5;
  }

  sub_199DF81AC();
  return v2;
}

uint64_t sub_199A9F3A4()
{
  v0 = sub_199A9F24C();
  v1 = sub_199A9F970(v0);
  v2 = v1;
  v3 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_43;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      sub_199DF81AC();
      sub_199DF81AC();
      v4 = sub_199DF802C();
      v5 = sub_199DFA33C();
      v41 = v2;
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v43 = v7;
        *v6 = 134218242;
        if (v3)
        {
          v8 = sub_199DFA87C();
        }

        else
        {
          v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v6 + 4) = v8;

        *(v6 + 12) = 2080;
        v27 = sub_199A9FE3C(v0);
        v29 = v28;

        v30 = sub_199A9BE90(v27, v29, &v43);

        *(v6 + 14) = v30;
        v2 = v41;
        _os_log_impl(&dword_199A75000, v4, v5, "Found %ld devices for services: %s", v6, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x19A8FA1A0](v7, -1, -1);
        MEMORY[0x19A8FA1A0](v6, -1, -1);

        v9 = v41 & 0xFFFFFFFFFFFFFF8;
        if (!v3)
        {
LABEL_39:
          v10 = *(v9 + 16);
          if (!v10)
          {
LABEL_40:

            goto LABEL_47;
          }

          goto LABEL_8;
        }
      }

      else
      {

        v9 = v2 & 0xFFFFFFFFFFFFFF8;
        if (!v3)
        {
          goto LABEL_39;
        }
      }

      v10 = sub_199DFA87C();
      if (!v10)
      {
        goto LABEL_40;
      }

LABEL_8:
      v43 = MEMORY[0x1E69E7CC0];
      sub_199DFA79C();
      if (v10 < 0)
      {
        __break(1u);
LABEL_49:

        __break(1u);
        return result;
      }

      v39 = v0;
      v11 = 0;
      v0 = v2 & 0xC000000000000001;
      v40 = v2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v17 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v0)
        {
          v18 = MEMORY[0x19A8F8520](v11, v2);
        }

        else
        {
          if (v11 >= *(v40 + 16))
          {
            goto LABEL_42;
          }

          v18 = *(v2 + 8 * v11 + 32);
        }

        v19 = v18;
        v20 = [v18 name];
        if (!v20)
        {
          goto LABEL_49;
        }

        v21 = v20;
        v22 = sub_199DF9F8C();
        v24 = v23;

        v25 = [v19 deviceType];
        if (v25 > 4)
        {
          if (v25 <= 6)
          {
            if (v25 == 5)
            {
              v3 = 0xE700000000000000;
              v12 = 0x7674656C707061;
            }

            else
            {
              v3 = 0xEA00000000006863;
              v12 = 0x746177656C707061;
            }

            goto LABEL_11;
          }

          if (v25 == 7)
          {
            v12 = 0xD000000000000011;
            v3 = 0x8000000199E44B40;
            goto LABEL_11;
          }

          if (v25 == 8)
          {
            v3 = 0xE600000000000000;
            v12 = 0x697261666173;
            goto LABEL_11;
          }

          if (v25 != 9)
          {
LABEL_32:
            v12 = 0xD000000000000010;
            v3 = 0x8000000199E44B20;
            goto LABEL_11;
          }

          v3 = 0xE90000000000006FLL;
          v12 = 0x72706E6F69736976;
        }

        else
        {
          if (v25 > 1)
          {
            if (v25 == 2 || v25 == 3)
            {
              v3 = 0xE600000000000000;
              v12 = 0x656E6F687069;
            }

            else
            {
              v12 = 0x6E616C2E64617069;
              v3 = 0xEE00657061637364;
            }

            goto LABEL_11;
          }

          if (v25 != 1)
          {
            goto LABEL_32;
          }

          v3 = 0xE700000000000000;
          v12 = 0x6B6F6F6263616DLL;
        }

LABEL_11:
        v13 = type metadata accessor for DeviceListServiceDeviceInfo();
        v14 = objc_allocWithZone(v13);
        v15 = &v14[OBJC_IVAR___CNDeviceListServiceDeviceInfo_name];
        *v15 = v22;
        v15[1] = v24;
        v16 = &v14[OBJC_IVAR___CNDeviceListServiceDeviceInfo_imageName];
        *v16 = v12;
        v16[1] = v3;
        v42.receiver = v14;
        v42.super_class = v13;
        objc_msgSendSuper2(&v42, sel_init);

        sub_199DFA77C();
        sub_199DFA7AC();
        sub_199DFA7BC();
        sub_199DFA78C();
        ++v11;
        v2 = v41;
        if (v17 == v10)
        {

          return v43;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

    while (sub_199DFA87C());
  }

  sub_199DF81AC();

  v31 = sub_199DF802C();
  v32 = sub_199DFA31C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43 = v34;
    *v33 = 136315138;
    v35 = sub_199A9FE3C(v0);
    v37 = v36;

    v38 = sub_199A9BE90(v35, v37, &v43);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_199A75000, v31, v32, "No devices for services: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x19A8FA1A0](v34, -1, -1);
    MEMORY[0x19A8FA1A0](v33, -1, -1);
  }

  else
  {
  }

LABEL_47:

  return MEMORY[0x1E69E7CC0];
}

id sub_199A9F970(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_199DFA87C();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x19A8F8520](v6, a1);
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(a1 + 8 * v6 + 32);
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v8 = v7;
      v9 = [v8 devices];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    v10 = v9;
    sub_199AA08AC();
    v11 = sub_199DFA0CC();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_199AB22B4(0, v5[2] + 1, 1, v5);
    }

    v13 = v5[2];
    v12 = v5[3];
    if (v13 >= v12 >> 1)
    {
      v5 = sub_199AB22B4((v12 > 1), v13 + 1, 1, v5);
    }

    v5[2] = v13 + 1;
    v5[v13 + 4] = v11;
  }

  while (v4 != v3);
LABEL_24:
  v14 = sub_199A9FB5C(v5);

  v17 = MEMORY[0x1E69E7CD0];
  v15 = sub_199AA08F8(v14, &v17);

  return v15;
}

uint64_t sub_199A9FB5C(uint64_t a1)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v25 = a1 + 32;
  while (1)
  {
    v4 = *(v25 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_199DFA87C();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v23 = sub_199DFA87C();
      v9 = v23 + v6;
      if (__OFADD__(v23, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    sub_199DF81AC();
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v30 = v6;
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_199DFA87C();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_199DFA75C();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v30)
    {
      goto LABEL_36;
    }

    v27 = v1;
    v28 = v2;
    v15 = v10 + 8 * v11 + 32;
    v24 = v10;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_199AA0B90(&qword_1EAF72650, &qword_1EAF72648);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72648);
        v17 = sub_199AA05F4(v29, i, v4);
        v19 = *v18;
        (v17)(v29, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      sub_199AA08AC();
      swift_arrayInitWithCopy();
    }

    v1 = v27;
    v2 = v28;
    if (v30 >= 1)
    {
      v20 = *(v24 + 16);
      v21 = __OFADD__(v20, v30);
      v22 = v20 + v30;
      if (v21)
      {
        goto LABEL_37;
      }

      *(v24 + 16) = v22;
    }

LABEL_4:
    if (++v1 == v26)
    {
      return v2;
    }
  }

  v14 = v10;
  result = sub_199DFA87C();
  v10 = v14;
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v30 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *sub_199A9FE3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_199DFA87C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    v14 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v14)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v43 = MEMORY[0x1E69E7CC0];
  result = sub_199A9C57C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x19A8F8520](v5, a1);
        v6 = [swift_unknownObjectRetain() serviceIdentifier];
        if (v6)
        {
          v7 = v6;
          v8 = sub_199DF9F8C();
          v10 = v9;
          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease_n();
          v8 = 0;
          v10 = 0;
        }

        v12 = *(v43 + 16);
        v11 = *(v43 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_199A9C57C((v11 > 1), v12 + 1, 1);
        }

        ++v5;
        *(v43 + 16) = v12 + 1;
        v13 = v43 + 16 * v12;
        *(v13 + 32) = v8;
        *(v13 + 40) = v10;
      }

      while (v2 != v5);
    }

    else
    {
      v17 = (a1 + 32);
      do
      {
        v18 = *v17;
        v19 = [v18 serviceIdentifier];
        if (v19)
        {
          v20 = v19;
          v21 = sub_199DF9F8C();
          v23 = v22;
        }

        else
        {

          v21 = 0;
          v23 = 0;
        }

        v25 = *(v43 + 16);
        v24 = *(v43 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_199A9C57C((v24 > 1), v25 + 1, 1);
        }

        *(v43 + 16) = v25 + 1;
        v26 = v43 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
        ++v17;
        --v2;
      }

      while (v2);
    }

    v3 = MEMORY[0x1E69E7CC0];
    v14 = *(v43 + 16);
    if (v14)
    {
LABEL_25:
      sub_199A9C55C(0, v14, 0);
      v27 = 32;
      v15 = v3;
      do
      {
        sub_199DF81AC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72310);
        v28 = sub_199DF9FBC();
        v44 = v15;
        v31 = v15[2];
        v30 = v15[3];
        if (v31 >= v30 >> 1)
        {
          v42 = v28;
          v33 = v3;
          v34 = v29;
          sub_199A9C55C((v30 > 1), v31 + 1, 1);
          v29 = v34;
          v3 = v33;
          v28 = v42;
          v15 = v44;
        }

        v15[2] = v31 + 1;
        v32 = &v15[2 * v31];
        v32[4] = v28;
        v32[5] = v29;
        v27 += 16;
        --v14;
      }

      while (v14);

      v16 = v15[2];
      if (!v16)
      {
        goto LABEL_34;
      }

      goto LABEL_30;
    }

LABEL_15:

    v15 = MEMORY[0x1E69E7CC0];
    v16 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v16)
    {
LABEL_34:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72630);
      sub_199AA0B90(&qword_1EAF72638, &qword_1EAF72630);
      v41 = sub_199DF9ECC();

      return v41;
    }

LABEL_30:
    sub_199A9C55C(0, v16, 0);
    v35 = v15 + 5;
    do
    {
      v36 = *(v35 - 1);
      v37 = *v35;
      sub_199DF81AC();
      MEMORY[0x19A8F7E00](v36, v37);
      MEMORY[0x19A8F7E00](34, 0xE100000000000000);

      v39 = v3[2];
      v38 = v3[3];
      if (v39 >= v38 >> 1)
      {
        sub_199A9C55C((v38 > 1), v39 + 1, 1);
      }

      v3[2] = v39 + 1;
      v40 = &v3[2 * v39];
      v40[4] = 34;
      v40[5] = 0xE100000000000000;
      v35 += 2;
      --v16;
    }

    while (v16);
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

void sub_199AA02FC(uint64_t a1, unint64_t a2)
{
  sub_199DF81AC();
  v4 = sub_199DF802C();
  v5 = sub_199DFA33C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_199A9BE90(a1, a2, &v11);
    _os_log_impl(&dword_199A75000, v4, v5, "Getting IDS Service %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x19A8FA1A0](v7, -1, -1);
    MEMORY[0x19A8FA1A0](v6, -1, -1);
  }

  v8 = objc_allocWithZone(MEMORY[0x1E69A48A8]);
  v9 = sub_199DF9F5C();
  v10 = [v8 initWithService_];

  if (!v10)
  {
    __break(1u);
  }
}

id IDSDeviceListService.init()()
{
  *&v0[OBJC_IVAR___CNIDSDeviceListService____lazy_storage___services] = 0;
  v1 = CNUILogPosters();
  sub_199DF805C();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for IDSDeviceListService();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_199AA0540(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t (*sub_199AA05F4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x19A8F8520](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_199AA0BDC;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for IDSDeviceListService()
{
  result = qword_1EAF72620;
  if (!qword_1EAF72620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199AA06F4()
{
  result = sub_199DF804C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void (*sub_199AA07DC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x19A8F8520](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_199AA085C;
  }

  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_199AA08AC()
{
  result = qword_1EAF72640;
  if (!qword_1EAF72640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF72640);
  }

  return result;
}

id sub_199AA08F8(unint64_t a1, uint64_t *a2)
{
  v29 = MEMORY[0x1E69E7CC0];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_26:
  v22 = a1;
  v2 = sub_199DFA87C();
  a1 = v22;
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v23 = a1;
  v3 = 0;
  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  v26 = a1 & 0xC000000000000001;
  v24 = a1 + 32;
  while (1)
  {
    if (v26)
    {
      a1 = MEMORY[0x19A8F8520](v3, v23);
    }

    else
    {
      if (v3 >= *(v25 + 16))
      {
        goto LABEL_25;
      }

      a1 = *(v24 + 8 * v3);
    }

    v4 = a1;
    if (__OFADD__(v3++, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v6 = *a2;
    sub_199DF81AC();
    result = [v4 uniqueID];
    if (!result)
    {
      break;
    }

    v8 = result;
    v9 = sub_199DF9F8C();
    v11 = v10;

    if (*(v6 + 16) && (sub_199DFAA7C(), sub_199DF9FEC(), v12 = sub_199DFAABC(), v13 = -1 << *(v6 + 32), v14 = v12 & ~v13, ((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
    {
      v15 = ~v13;
      while (1)
      {
        v16 = (*(v6 + 48) + 16 * v14);
        v17 = *v16 == v9 && v16[1] == v11;
        if (v17 || (sub_199DFA99C() & 1) != 0)
        {
          break;
        }

        v14 = (v14 + 1) & v15;
        if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_20:

      result = [v4 uniqueID];
      if (!result)
      {
        goto LABEL_30;
      }

      v18 = result;
      v19 = sub_199DF9F8C();
      v21 = v20;

      sub_199AFB834(&v28, v19, v21);

      sub_199DFA77C();
      sub_199DFA7AC();
      sub_199DFA7BC();
      a1 = sub_199DFA78C();
    }

    if (v3 == v2)
    {
      return v29;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_199AA0B90(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_199AA0BF0()
{
  v0 = [objc_allocWithZone(CNSensitiveContentAnalysisManager) init];
  v1 = [objc_allocWithZone(CNSensitiveContentBlurView) initWithManager_];

  return v1;
}

void sub_199AA0DF8()
{
  sub_199AA0E78();
  sub_199DF8EAC();
  __break(1u);
}

unint64_t sub_199AA0E24()
{
  result = qword_1EAF72658;
  if (!qword_1EAF72658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72658);
  }

  return result;
}

unint64_t sub_199AA0E78()
{
  result = qword_1EAF72660;
  if (!qword_1EAF72660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72660);
  }

  return result;
}

id CNAvatarPosterPairCollectionPreWarmer.__allocating_init(contact:contactForSharedProfile:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_199AA1DA8(a1, a2);

  return v6;
}

id CNAvatarPosterPairCollectionPreWarmer.init(contact:contactForSharedProfile:)(void *a1, void *a2)
{
  v4 = sub_199AA1DA8(a1, a2);

  return v4;
}

id CNAvatarPosterPairCollectionPreWarmer.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_carouselViewModelSubscriber])
  {

    sub_199DF83AC();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNAvatarPosterPairCollectionPreWarmer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_199AA1108(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72678);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72680);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72688);
  v28 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v26 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_windowScene);
  *(v1 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_windowScene) = a1;
  v17 = a1;

  v18 = OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_carouselViewModelSubscriber;
  if (!*(v1 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_carouselViewModelSubscriber))
  {
    v27 = v8;
    v19 = *(v1 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_carouselViewModel);
    swift_beginAccess();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF726A0);
    v26 = v1;
    sub_199DF840C();
    swift_endAccess();

    v21 = [objc_opt_self() mainRunLoop];
    v29 = v21;
    v22 = sub_199DFA62C();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    sub_199AA2110();
    sub_199AA0B90(&qword_1EAF726B0, &qword_1EAF72688);
    sub_199AA215C();
    sub_199DF846C();
    sub_199AA21B4(v6);

    sub_199AA0B90(&qword_1EAF726C0, &qword_1EAF72680);
    v23 = sub_199DF844C();
    (*(v27 + 8))(v11, v7);
    (*(v28 + 8))(v15, v12);
    v29 = v23;
    swift_allocObject();
    v24 = v26;
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF726C8);
    sub_199AA0B90(&qword_1EAF726D0, &qword_1EAF726C8);
    v25 = sub_199DF848C();

    *(v24 + v18) = v25;
  }
}

uint64_t sub_199AA153C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(result + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_carouselViewModel);
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    v5 = v3;
    sub_199DF841C();

    v6 = *&v2[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_preWarmingRange];
    if (v6 < 0)
    {
      __break(1u);
    }

    else
    {
      KeyPath = aBlock[0];
      v0 = aBlock[0] >> 62;
      if (!(aBlock[0] >> 62))
      {
        result = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result >= v6)
        {
          v7 = *&v2[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_preWarmingRange];
        }

        else
        {
          v7 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v6)
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }

        if (result >= v8)
        {
LABEL_11:
          if ((KeyPath & 0xC000000000000001) != 0 && v8)
          {
            type metadata accessor for CNAvatarPosterPair();
            sub_199DF81AC();
            v9 = 0;
            do
            {
              v10 = v9 + 1;
              sub_199DFA73C();
              v9 = v10;
            }

            while (v8 != v10);
          }

          else
          {
            sub_199DF81AC();
          }

          if (v0)
          {
            sub_199DFA88C();
            v11 = v14;
            v0 = v15;
            v17 = v16;

            v17 >>= 1;
            v13 = v17 - v0;
            v12 = v17 <= v0;
            if (v17 == v0)
            {
LABEL_24:

              return swift_unknownObjectRelease();
            }
          }

          else
          {
            v11 = (KeyPath & 0xFFFFFFFFFFFFFF8) + 32;
            v13 = v8;
            v12 = v8 <= 0;
            if (!v8)
            {
              goto LABEL_24;
            }
          }

          if (!v12)
          {
            v18 = OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_workQueue;
            v19 = (v11 + 8 * v0);
            do
            {
              v20 = *v19++;
              v21 = *&v2[v18];
              v22 = swift_allocObject();
              *(v22 + 16) = v2;
              *(v22 + 24) = v20;
              aBlock[4] = sub_199AA22AC;
              aBlock[5] = v22;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_199AB45A0;
              aBlock[3] = &block_descriptor_24;
              v23 = _Block_copy(aBlock);
              v24 = v20;
              swift_unknownObjectRetain();
              v25 = v2;

              [v21 performBlock_];
              _Block_release(v23);

              swift_unknownObjectRelease();
              --v13;
            }

            while (v13);
            goto LABEL_24;
          }

          goto LABEL_38;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    v26 = sub_199DFA87C();
    result = sub_199DFA87C();
    if (result < 0)
    {
LABEL_39:
      __break(1u);
      return result;
    }

    if (v26 >= v6)
    {
      v27 = v6;
    }

    else
    {
      v27 = v26;
    }

    if (v26 < 0)
    {
      v27 = v6;
    }

    if (v6)
    {
      v8 = v27;
    }

    else
    {
      v8 = 0;
    }

    result = sub_199DFA87C();
    if (result >= v8)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

  return result;
}

void sub_199AA18A8(uint64_t a1)
{
  aBlock[7] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_windowScene);
  if (!v2 || (v3 = *(a1 + OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster), v3 < 2))
  {
LABEL_16:
    sub_199DFA31C();
    v30 = CNUILogPosters();
    sub_199DF7FEC();

    return;
  }

  v5 = v2;
  sub_199AA2284(v3);
  v6 = [v3 posterData];
  v7 = sub_199DF71FC();
  v9 = v8;

  v10 = v9;
  v11 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v12 = *(v7 + 16);
      v13 = *(v7 + 24);
      sub_199A9EF34(v7, v10);
      if (v12 == v13)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    sub_199A9EF34(v7, v9);
LABEL_15:

    sub_199AA2294(v3);
    goto LABEL_16;
  }

  if (v11)
  {
    sub_199A9EF34(v7, v9);
    if (v7 != v7 >> 32)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  sub_199A9EF34(v7, v9);
  if ((v9 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v14 = objc_opt_self();
  v15 = [v3 posterData];
  v16 = sub_199DF71FC();
  v18 = v17;

  v19 = sub_199DF71DC();
  sub_199A9EF34(v16, v18);
  aBlock[0] = 0;
  v20 = [v14 unarchiveCNConfigurationFromData:v19 error:aBlock];

  v21 = aBlock[0];
  if (v20)
  {
    v22 = objc_opt_self();
    v23 = *(v1 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_contact);
    v24 = *(a1 + OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type) != 3;
    aBlock[4] = sub_199AA1C98;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_199B77770;
    aBlock[3] = &block_descriptor;
    v25 = _Block_copy(aBlock);
    v26 = v21;
    v27 = v20;
    v28 = v23;
    [v22 incomingCallSnapshotForConfiguration:v27 contact:v28 includingCallButtons:v24 windowScene:v5 completionBlock:v25];

    sub_199AA2294(v3);
    _Block_release(v25);
  }

  else
  {
    v29 = aBlock[0];
    v28 = sub_199DF717C();

    swift_willThrow();
    sub_199DFA31C();
    v27 = CNUILogPosters();
    sub_199DF7FEC();

    sub_199AA2294(v3);
  }
}

void sub_199AA1C98()
{
  sub_199DFA2FC();
  v0 = CNUILogPosters();
  sub_199DF7FEC();
}

id CNAvatarPosterPairCollectionPreWarmer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_199AA1DA8(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_carouselViewModelSubscriber] = 0;
  *&v2[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_windowScene] = 0;
  *&v2[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_preWarmingRange] = 1;
  v5 = [objc_opt_self() defaultProvider];
  v6 = sub_199DF9F5C();
  v7 = [v5 newSerialSchedulerWithName_];

  swift_unknownObjectRelease();
  v8 = OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_workQueue;
  *&v2[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_workQueue] = v7;
  *&v2[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_contact] = a1;
  v9 = a1;
  v10 = [MEMORY[0x1E69DC938] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  v12 = (v11 & 0xFFFFFFFFFFFFFFFBLL) != 1;
  v13 = *&v2[v8];
  v14 = type metadata accessor for CNAvatarPosterPairCollectionViewModel();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_pendingDeletedIndex];
  v16[8] = 1;
  *v16 = 0;
  v15[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_deletingContactPair] = 0;
  *&v15[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel____lazy_storage___pairDeduper] = 0;
  *&v15[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contact] = v9;
  *&v15[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contactForSharedProfile] = a2;
  *&v15[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_displayMode] = v12;
  v15[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_loadingMode] = 0;
  *&v15[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_workQueue] = v13;
  swift_beginAccess();
  v30 = MEMORY[0x1E69E7CC0];
  v17 = v9;
  swift_unknownObjectRetain_n();
  v18 = a2;
  v19 = v17;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CA0);
  sub_199DF83FC();
  swift_endAccess();
  v29.receiver = v15;
  v29.super_class = v14;
  v21 = objc_msgSendSuper2(&v29, sel_init);
  v22 = *&v21[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_workQueue];
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  aBlock[4] = sub_199AA22D4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199AB45A0;
  aBlock[3] = &block_descriptor_30;
  v24 = _Block_copy(aBlock);
  v25 = v21;
  swift_unknownObjectRetain();

  [v22 performBlock_];
  _Block_release(v24);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *&v2[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_carouselViewModel] = v25;
  v27.receiver = v2;
  v27.super_class = type metadata accessor for CNAvatarPosterPairCollectionPreWarmer();
  return objc_msgSendSuper2(&v27, sel_init);
}

unint64_t sub_199AA2110()
{
  result = qword_1EAF726A8;
  if (!qword_1EAF726A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF726A8);
  }

  return result;
}

unint64_t sub_199AA215C()
{
  result = qword_1EAF726B8;
  if (!qword_1EAF726B8)
  {
    sub_199AA2110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF726B8);
  }

  return result;
}

uint64_t sub_199AA21B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_199AA2284(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_199AA2294(id a1)
{
  if (a1 != 1)
  {
  }
}

id ContactListMergeUnifyActionHelper.__allocating_init(withContactStore:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC10ContactsUI33ContactListMergeUnifyActionHelper_contactItems] = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtC10ContactsUI33ContactListMergeUnifyActionHelper_mergeResult;
  v5 = sub_199DF9CBC();
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  *&v3[OBJC_IVAR____TtC10ContactsUI33ContactListMergeUnifyActionHelper_contactStore] = a1;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ContactListMergeUnifyActionHelper.init(withContactStore:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10ContactsUI33ContactListMergeUnifyActionHelper_contactItems] = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtC10ContactsUI33ContactListMergeUnifyActionHelper_mergeResult;
  v4 = sub_199DF9CBC();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC10ContactsUI33ContactListMergeUnifyActionHelper_contactStore] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ContactListMergeUnifyActionHelper();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t type metadata accessor for ContactListMergeUnifyActionHelper()
{
  result = qword_1EAF72720;
  if (!qword_1EAF72720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199AA2600(unint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72708);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v20[-v10];
  v21 = a3;
  sub_199AA365C(a1, a2, sub_199AA28D0);
  *(v4 + OBJC_IVAR____TtC10ContactsUI33ContactListMergeUnifyActionHelper_contactItems) = v12;

  sub_199DF9CEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF72710);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_199E37D40;
  v14 = sub_199DF81AC();
  v15 = sub_199AA28D8(v14);

  *(v13 + 32) = v15;
  v16 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  sub_199DF9CCC();

  v17 = sub_199DF9CBC();
  (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  v18 = OBJC_IVAR____TtC10ContactsUI33ContactListMergeUnifyActionHelper_mergeResult;
  swift_beginAccess();
  sub_199AA39D0(v11, v4 + v18);
  return swift_endAccess();
}

void *sub_199AA27D8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_199DF81AC();
  }

  v7 = [a1 identifier];
  v8 = sub_199DF9F8C();
  v10 = v9;

  if (*(a4 + 16))
  {
    sub_199AEF9E8(v8, v10);
    v12 = v11;

    if (v12)
    {
      sub_199DF81AC();
    }
  }

  else
  {
  }

  v13 = a1;
  return a1;
}

uint64_t sub_199AA28D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_199DFA79C();
    v4 = a1 + 56;
    do
    {
      v5 = *(v4 - 24);
      sub_199DF81AC();
      sub_199DF81AC();
      v6 = v5;
      [v6 mutableCopy];
      sub_199DFA66C();
      swift_unknownObjectRelease();

      sub_199A7A02C(0, &qword_1EAF710A0);
      swift_dynamicCast();
      sub_199DFA77C();
      sub_199DFA7AC();
      sub_199DFA7BC();
      sub_199DFA78C();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

BOOL sub_199AA2B10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72708);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v13 - v3;
  v5 = sub_199DF9CBC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC10ContactsUI33ContactListMergeUnifyActionHelper_mergeResult;
  swift_beginAccess();
  sub_199AA3A40(v0 + v10, v4);
  v11 = (*(v6 + 48))(v4, 1, v5);
  if (v11 == 1)
  {
    sub_199AA3AB0(v4);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    sub_199DF9CEC();
    sub_199DF9CDC();
    (*(v6 + 8))(v9, v5);
  }

  return v11 != 1;
}

BOOL sub_199AA2D1C(unint64_t a1, void *a2)
{
  v74 = a2;
  v59 = sub_199DF9C9C();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72708);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v57 - v9;
  v11 = sub_199DF9CBC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC10ContactsUI33ContactListMergeUnifyActionHelper_mergeResult;
  swift_beginAccess();
  sub_199AA3A40(v2 + v16, v10);
  v60 = (*(v12 + 48))(v10, 1, v11);
  if (v60 == 1)
  {
    sub_199AA3AB0(v10);
  }

  else
  {
    v68 = v12;
    v69 = v11;
    (*(v12 + 32))(v15, v10, v11);
    v65 = OBJC_IVAR____TtC10ContactsUI33ContactListMergeUnifyActionHelper_contactItems;
    v66 = v2;
    v17 = sub_199DF81AC();
    sub_199AA28D8(v17);

    v67 = v15;
    sub_199DF9CAC();

    v70 = v6;
    v18 = sub_199DF9C7C();
    v19 = v18;
    if (v18 >> 62)
    {
      goto LABEL_78;
    }

    for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_199DFA87C())
    {
      v21 = a1;
      if (i)
      {
        a1 = 0;
        v22 = v19 & 0xC000000000000001;
        v23 = v19 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v22)
          {
            v24 = MEMORY[0x19A8F8520](a1, v19);
          }

          else
          {
            if (a1 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v24 = *(v19 + 8 * a1 + 32);
          }

          v25 = v24;
          v26 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            break;
          }

          [v21 updateContact_];

          ++a1;
          if (v26 == i)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        sub_199DF81AC();
        v27 = MEMORY[0x19A8F8520](0, v21);
LABEL_19:
        v28 = v27;
        [v19 unlinkContact_];

        while (i != ++v22)
        {
LABEL_21:
          if (v22 >= *(a1 + 16))
          {
            goto LABEL_74;
          }

          v21 = *(v23 + 8 * v22);
          if (v21 >> 62)
          {
            if (sub_199DFA87C())
            {
LABEL_24:
              if ((v21 & 0xC000000000000001) != 0)
              {
                goto LABEL_18;
              }

              if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v29 = *(v21 + 32);
                sub_199DF81AC();
                v27 = v29;
                goto LABEL_19;
              }

              goto LABEL_77;
            }
          }

          else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
LABEL_14:

        a1 = sub_199DF9C6C();
        i = *(a1 + 16);
        v19 = v21;
        if (i)
        {
          v22 = 0;
          v23 = a1 + 32;
          goto LABEL_21;
        }
      }

      v19 = v70;
      v30 = sub_199DF9C8C();
      v57 = v30;
      v31 = v30 >> 62 ? sub_199DFA87C() : *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = v68;
      v32 = v69;
      v34 = v67;
      if (!v31)
      {
        break;
      }

      v35 = 0;
      v63 = v57 & 0xFFFFFFFFFFFFFF8;
      v64 = v57 & 0xC000000000000001;
      v61 = v31;
      v62 = v57 + 32;
      while (1)
      {
        if (v64)
        {
          v55 = v35;
          v76 = MEMORY[0x19A8F8520](v35, v57);
          a1 = v66;
          v37 = __OFADD__(v55, 1);
          v19 = v55 + 1;
          if (v37)
          {
            goto LABEL_75;
          }
        }

        else
        {
          a1 = v66;
          if (v35 >= *(v63 + 16))
          {
            goto LABEL_76;
          }

          v36 = v35;
          v76 = *(v62 + 8 * v35);
          v37 = __OFADD__(v36, 1);
          v19 = v36 + 1;
          if (v37)
          {
            goto LABEL_75;
          }
        }

        v71 = v19;
        a1 = *(a1 + v65);
        sub_199DF81AC();
        v19 = [v76 identifier];
        v38 = sub_199DF9F8C();
        v73 = v39;

        v75 = a1;
        v72 = *(a1 + 16);
        if (v72)
        {
          break;
        }

LABEL_33:

LABEL_34:
        v19 = v70;
        v35 = v71;
        v33 = v68;
        v32 = v69;
        v34 = v67;
        if (v71 == v61)
        {
          goto LABEL_69;
        }
      }

      v40 = 0;
      v41 = (v75 + 56);
      while (v40 < *(v75 + 16))
      {
        v42 = *(v41 - 3);
        v44 = *(v41 - 1);
        v43 = *v41;
        sub_199DF81AC();
        sub_199DF81AC();
        v45 = v42;
        v46 = [v45 identifier];
        v47 = sub_199DF9F8C();
        v19 = v48;

        if (v47 == v38 && v19 == v73)
        {

LABEL_50:

          if (v44)
          {
            sub_199DF81AC();
            v50 = sub_199DF9F5C();
          }

          else
          {
            v50 = 0;
          }

          [v74 addContact:v76 toContainerWithIdentifier:{v50, v57}];

          if (v43 >> 62)
          {
            v19 = sub_199DFA87C();
          }

          else
          {
            v19 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_199DF81AC();
          if (!v19)
          {
LABEL_64:

            swift_bridgeObjectRelease_n();

            goto LABEL_34;
          }

          v51 = 0;
          a1 = v43 & 0xC000000000000001;
          while (1)
          {
            if (a1)
            {
              v52 = MEMORY[0x19A8F8520](v51, v43);
            }

            else
            {
              if (v51 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_72;
              }

              v52 = *(v43 + 8 * v51 + 32);
            }

            v53 = v52;
            v54 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              break;
            }

            [v74 addMember:v76 toGroup:v52];

            ++v51;
            if (v54 == v19)
            {
              goto LABEL_64;
            }
          }

          __break(1u);
LABEL_72:
          __break(1u);
          break;
        }

        a1 = sub_199DFA99C();

        if (a1)
        {

          goto LABEL_50;
        }

        ++v40;

        v41 += 4;
        if (v72 == v40)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      ;
    }

LABEL_69:

    (*(v58 + 8))(v19, v59);
    (*(v33 + 8))(v34, v32);
  }

  return v60 != 1;
}

id ContactListMergeUnifyActionHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContactListMergeUnifyActionHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactListMergeUnifyActionHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_199AA365C(unint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v47 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

  while (1)
  {
    v5 = sub_199DFA87C();
LABEL_3:
    v6 = a2[2];
    if (v6 >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = a2[2];
    }

    v50 = MEMORY[0x1E69E7CC0];
    sub_199A9C59C(0, v7 & ~(v7 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
LABEL_47:

      __break(1u);
      return;
    }

    v41 = v4;
    v44 = v6;
    if (!v7)
    {
      break;
    }

    v8 = 0;
    v46 = v4 & 0xC000000000000001;
    v42 = v4 & 0xFFFFFFFFFFFFFF8;
    v39 = v7;
    v38 = a2;
    a2 += 5;
    while (1)
    {
      v9 = v47 ? sub_199DFA87C() : *(v42 + 16);
      if (v8 == v9)
      {
        break;
      }

      if (v46)
      {
        v10 = MEMORY[0x19A8F8520](v8, v4);
      }

      else
      {
        if (v8 >= *(v42 + 16))
        {
          goto LABEL_44;
        }

        v10 = *(v4 + 8 * v8 + 32);
      }

      v7 = v10;
      if (v6 == v8)
      {
        goto LABEL_47;
      }

      v11 = *(a2 - 1);
      v12 = *a2;
      sub_199DF81AC();
      v13 = a3(v7, v11, v12);
      v48 = v14;
      v16 = v15;
      v18 = v17;

      v20 = *(v50 + 16);
      v19 = *(v50 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_199A9C59C((v19 > 1), v20 + 1, 1);
      }

      ++v8;
      *(v50 + 16) = v20 + 1;
      v21 = (v50 + 32 * v20);
      v21[4] = v13;
      v21[5] = v48;
      v21[6] = v16;
      v21[7] = v18;
      a2 += 2;
      v7 = v39;
      v4 = v41;
      v6 = v44;
      if (v39 == v8)
      {
        v49 = v50;
        v22 = v42;
        a2 = v38;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  v49 = v50;
  v22 = v4 & 0xFFFFFFFFFFFFFF8;
  v46 = v4 & 0xC000000000000001;
LABEL_23:
  v40 = v4 + 32;
  v23 = &a2[2 * v7 + 5];
  v43 = v22;
  if (v47)
  {
    while (v7 != sub_199DFA87C())
    {
LABEL_27:
      if (v46)
      {
        v24 = MEMORY[0x19A8F8520](v7, v41);
      }

      else
      {
        if (v7 >= *(v22 + 16))
        {
          goto LABEL_42;
        }

        v24 = *(v40 + 8 * v7);
      }

      v25 = v24;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_41;
      }

      if (v6 == v7)
      {

        return;
      }

      if (v7 >= v6)
      {
        goto LABEL_43;
      }

      a2 = v7;
      v26 = *(v23 - 1);
      v27 = *v23;
      sub_199DF81AC();
      v4 = a3(v25, v26, v27);
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v34 = v49;
      v36 = *(v49 + 16);
      v35 = *(v49 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_199A9C59C((v35 > 1), v36 + 1, 1);
        v34 = v49;
      }

      *(v34 + 16) = v36 + 1;
      v49 = v34;
      v37 = (v34 + 32 * v36);
      v37[4] = v4;
      v37[5] = v29;
      v37[6] = v31;
      v37[7] = v33;
      v7 = a2 + 1;
      v23 += 2;
      v22 = v43;
      v6 = v44;
      if (!v47)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_24:
    if (v7 != *(v22 + 16))
    {
      goto LABEL_27;
    }
  }
}

uint64_t sub_199AA39D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72708);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_199AA3A40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72708);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199AA3AB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72708);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_199AA3B20()
{
  sub_199AA3CA8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_199AA3CA8()
{
  if (!qword_1EAF72730)
  {
    sub_199DF9CBC();
    v0 = sub_199DFA63C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF72730);
    }
  }
}

uint64_t sub_199AA3D00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_199AA3D48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_199AA3D98(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v6 + 2288) = v5;
  *(v6 + 2010) = a5;
  *(v6 + 2280) = a4;
  *(v6 + 2009) = a3;
  *(v6 + 2272) = a2;
  *(v6 + 2264) = a1;
  v7 = sub_199DF729C();
  *(v6 + 2296) = v7;
  *(v6 + 2304) = *(v7 - 8);
  *(v6 + 2312) = swift_task_alloc();
  v8 = sub_199DF801C();
  *(v6 + 2320) = v8;
  *(v6 + 2328) = *(v8 - 8);
  *(v6 + 2336) = swift_task_alloc();
  *(v6 + 2344) = sub_199DFA17C();
  *(v6 + 2352) = sub_199DFA16C();
  v9 = sub_199DFA12C();
  *(v6 + 2360) = v9;
  *(v6 + 2368) = v10;

  return MEMORY[0x1EEE6DFA0](sub_199AA3F38, v9, v10);
}

uint64_t sub_199AA3F38()
{
  v1 = *(v0 + 2336);
  v2 = *(v0 + 2328);
  v3 = *(v0 + 2320);
  sub_199DFA3FC();
  v4 = CNUILogPosters();
  sub_199DF800C();
  sub_199DF7FFC();

  v5 = *(v2 + 8);
  *(v0 + 2376) = v5;
  *(v0 + 2384) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7)
  {
    v8 = *(v0 + 2009);
    v9 = *(v0 + 2272);

    v10 = [objc_opt_self() clearColor];
    v11 = [v10 CGColor];

    v12 = sub_199AA6F9C(v9, v8);
LABEL_3:
    v13 = *(v0 + 2264);

    *v13 = v11;
    v13[1] = v12;
    v13[3] = 0;
    v13[4] = 0;
    v13[2] = 0;
    v14 = *(v0 + 8);

    return v14();
  }

  v16 = [*(v0 + 2272) wallpaper];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 posterArchiveData];

    v19 = sub_199DF71FC();
    v21 = v20;

    v22 = objc_opt_self();
    v23 = sub_199DF71DC();
    *(v0 + 2256) = 0;
    v24 = [v22 unarchiveCNConfigurationFromData:v23 error:v0 + 2256];

    v25 = *(v0 + 2256);
    if (!v24)
    {
      v28 = v25;

      v29 = sub_199DF717C();

      swift_willThrow();
      sub_199A9EF34(v19, v21);

      v30 = [objc_opt_self() redColor];
      v11 = [v30 CGColor];

      v12 = 0;
      goto LABEL_3;
    }

    v26 = v25;
    sub_199A9EF34(v19, v21);
  }

  else
  {
    if (*(v0 + 2010) == 1)
    {
      if (qword_1EAF718E0 != -1)
      {
        swift_once();
      }

      v27 = sub_199B73ABC(*(v0 + 2272));
    }

    else
    {
      if (qword_1EAF718E0 != -1)
      {
        swift_once();
      }

      v27 = sub_199B77644(*(v0 + 2272));
    }

    v24 = v27;
  }

  *(v0 + 2392) = v24;
  v31 = *(v0 + 2312);
  v32 = *(v0 + 2304);
  v33 = *(v0 + 2296);
  *(v0 + 2400) = [objc_allocWithZone(CNPRUISIncomingCallPosterContext) initWithContact:*(v0 + 2272) showName:1];
  sub_199DF728C();
  v34 = sub_199DF724C();
  v36 = v35;
  (*(v32 + 8))(v31, v33);
  MEMORY[0x19A8F7E00](v34, v36);

  *(v0 + 2408) = 0xD00000000000002BLL;
  *(v0 + 2416) = 0x8000000199E44F60;
  v37 = [objc_allocWithZone(CNPRUISPosterSnapshotController) init];
  v38 = sub_199DF9F5C();
  [v37 acquireKeepActiveAssertionForReason_];

  if (qword_1EAF71A78 != -1)
  {
    swift_once();
  }

  *(v0 + 2424) = qword_1EAF86EF0;
  *(v0 + 1976) = 0u;
  *(v0 + 1992) = 0u;
  *(v0 + 2008) = 2;

  *(v0 + 2432) = sub_199DFA16C();
  *(v0 + 2440) = sub_199DFA16C();
  v39 = sub_199DFA12C();
  *(v0 + 2448) = v39;
  *(v0 + 2456) = v40;

  return MEMORY[0x1EEE6DFA0](sub_199AA44B4, v39, v40);
}
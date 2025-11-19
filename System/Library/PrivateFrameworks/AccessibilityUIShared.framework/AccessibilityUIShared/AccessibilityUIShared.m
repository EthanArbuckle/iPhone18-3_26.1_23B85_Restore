void sub_23DC04F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id AXUIServiceManagerLaunchAngelInterface()
{
  if (AXUIServiceManagerLaunchAngelInterface_onceToken != -1)
  {
    AXUIServiceManagerLaunchAngelInterface_cold_1();
  }

  v1 = AXUIServiceManagerLaunchAngelInterface_Interface;

  return v1;
}

void __AXUIServiceManagerLaunchAngelInterface_block_invoke()
{
  v4 = [MEMORY[0x277CF3278] interfaceWithIdentifier:@"com.apple.AccessibilityUIServer"];
  v0 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_284FFC378];
  [v4 setClient:v0];

  v1 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_284FFC378];
  [v4 setServer:v1];

  [v4 setClientMessagingExpectation:0];
  v2 = [v4 copy];
  v3 = AXUIServiceManagerLaunchAngelInterface_Interface;
  AXUIServiceManagerLaunchAngelInterface_Interface = v2;
}

void sub_23DC0627C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DC06DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DC07100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}
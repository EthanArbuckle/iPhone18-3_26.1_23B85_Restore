@interface CUPairingManager
@end

@implementation CUPairingManager

uint64_t __80__CUPairingManager_APPairingClientCoreUtils__pairingGroupInfoForPairingGroupID___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 groupInfo];
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = [a2 groupInfo];

    return [v5 addEntriesFromDictionary:v6];
  }

  return result;
}

intptr_t __74__CUPairingManager_APPairingClientCoreUtils__peersMatchingPairingGroupID___block_invoke(uint64_t a1, void *a2)
{
  if (NSErrorToOSStatus())
  {
    __74__CUPairingManager_APPairingClientCoreUtils__peersMatchingPairingGroupID___block_invoke_cold_1(gLogCategory_APPairingClientCoreUtils, a1);
  }

  else
  {
    if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
    {
      __74__CUPairingManager_APPairingClientCoreUtils__peersMatchingPairingGroupID___block_invoke_cold_2(a2, a1);
    }

    *(*(*(a1 + 48) + 8) + 40) = a2;
  }

  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

intptr_t __87__CUPairingManager_APPairingClientCoreUtils__updatePairingGroupInfo_forPairingGroupID___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = NSErrorToOSStatus();
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    __87__CUPairingManager_APPairingClientCoreUtils__updatePairingGroupInfo_forPairingGroupID___block_invoke_cold_1(gLogCategory_APPairingClientCoreUtils);
  }

  else if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    __87__CUPairingManager_APPairingClientCoreUtils__updatePairingGroupInfo_forPairingGroupID___block_invoke_cold_2(a1);
  }

  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

intptr_t __61__CUPairingManager_APPairingClientCoreUtils__savePairedPeer___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = NSErrorToOSStatus();
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    __61__CUPairingManager_APPairingClientCoreUtils__savePairedPeer___block_invoke_cold_1(gLogCategory_APPairingClientCoreUtils);
  }

  else if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    __61__CUPairingManager_APPairingClientCoreUtils__savePairedPeer___block_invoke_cold_2(a1);
  }

  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

uint64_t __74__CUPairingManager_APPairingClientCoreUtils__peersMatchingPairingGroupID___block_invoke_cold_1(uint64_t result, uint64_t a2)
{
  if (result <= 90)
  {
    if (result != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      if (*(a2 + 32))
      {
        IsAppleInternalBuild();
      }

      return OUTLINED_FUNCTION_4_0();
    }
  }

  return result;
}

uint64_t __74__CUPairingManager_APPairingClientCoreUtils__peersMatchingPairingGroupID___block_invoke_cold_2(void *a1, uint64_t a2)
{
  [a1 count];
  if (*(a2 + 32))
  {
    IsAppleInternalBuild();
  }

  return OUTLINED_FUNCTION_2();
}

uint64_t __87__CUPairingManager_APPairingClientCoreUtils__updatePairingGroupInfo_forPairingGroupID___block_invoke_cold_1(uint64_t result)
{
  if (result <= 90)
  {
    OUTLINED_FUNCTION_4_15();
    if (!v2 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      if (*(v1 + 32))
      {
        IsAppleInternalBuild();
      }

      return OUTLINED_FUNCTION_4_0();
    }
  }

  return result;
}

uint64_t __87__CUPairingManager_APPairingClientCoreUtils__updatePairingGroupInfo_forPairingGroupID___block_invoke_cold_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    IsAppleInternalBuild();
  }

  return OUTLINED_FUNCTION_2();
}

uint64_t __61__CUPairingManager_APPairingClientCoreUtils__savePairedPeer___block_invoke_cold_1(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return OUTLINED_FUNCTION_4_0();
    }

    result = OUTLINED_FUNCTION_4_3();
    if (result)
    {
      return OUTLINED_FUNCTION_4_0();
    }
  }

  return result;
}

uint64_t __61__CUPairingManager_APPairingClientCoreUtils__savePairedPeer___block_invoke_cold_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    IsAppleInternalBuild();
  }

  return OUTLINED_FUNCTION_2();
}

@end
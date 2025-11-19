@interface CUPairingManager(APPairingClientCoreUtils)
- (id)peersMatchingPairingGroupID:()APPairingClientCoreUtils;
- (uint64_t)savePairedPeer:()APPairingClientCoreUtils;
- (uint64_t)updatePairingGroupInfo:()APPairingClientCoreUtils forPairingGroupID:;
- (void)pairingGroupInfoForPairingGroupID:()APPairingClientCoreUtils;
@end

@implementation CUPairingManager(APPairingClientCoreUtils)

- (void)pairingGroupInfoForPairingGroupID:()APPairingClientCoreUtils
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  [v5 setObject:a3 forKeyedSubscript:@"groupID"];
  v6 = [a1 peersMatchingPairingGroupID:a3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__CUPairingManager_APPairingClientCoreUtils__pairingGroupInfoForPairingGroupID___block_invoke;
  v8[3] = &unk_27849D208;
  v8[4] = v5;
  [v6 enumerateObjectsUsingBlock:v8];
  return v5;
}

- (id)peersMatchingPairingGroupID:()APPairingClientCoreUtils
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  v5 = dispatch_semaphore_create(0);
  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    if (a3 && !IsAppleInternalBuild())
    {
      v6 = @"#Redacted#";
    }

    else
    {
      v6 = a3;
    }

    v9 = v6;
    LogPrintF();
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__CUPairingManager_APPairingClientCoreUtils__peersMatchingPairingGroupID___block_invoke;
  v10[3] = &unk_27849D230;
  v10[5] = v5;
  v10[6] = &v11;
  v10[4] = a3;
  [a1 getPairedPeersWithGroupID:a3 options:4 completion:{v10, v9}];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (v5)
  {
    dispatch_release(v5);
  }

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v7;
}

- (uint64_t)updatePairingGroupInfo:()APPairingClientCoreUtils forPairingGroupID:
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = dispatch_semaphore_create(0);
  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    if (a4 && !IsAppleInternalBuild())
    {
      v8 = @"#Redacted#";
    }

    else
    {
      v8 = a4;
    }

    v11 = v8;
    LogPrintF();
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__CUPairingManager_APPairingClientCoreUtils__updatePairingGroupInfo_forPairingGroupID___block_invoke;
  v12[3] = &unk_27849D258;
  v12[5] = v7;
  v12[6] = &v13;
  v12[4] = a4;
  [a1 updatePairedPeersWithGroupID:a4 groupInfo:a3 options:4 completion:{v12, v11}];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (v7)
  {
    dispatch_release(v7);
  }

  v9 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v9;
}

- (uint64_t)savePairedPeer:()APPairingClientCoreUtils
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = dispatch_semaphore_create(0);
  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    if (a3 && !IsAppleInternalBuild())
    {
      v6 = @"#Redacted#";
    }

    else
    {
      v6 = a3;
    }

    v9 = a3;
    v10 = v6;
    LogPrintF();
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__CUPairingManager_APPairingClientCoreUtils__savePairedPeer___block_invoke;
  v11[3] = &unk_27849D258;
  v11[5] = v5;
  v11[6] = &v12;
  v11[4] = a3;
  [a1 savePairedPeer:a3 options:4 completion:{v11, v9, v10}];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (v5)
  {
    dispatch_release(v5);
  }

  v7 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v7;
}

@end
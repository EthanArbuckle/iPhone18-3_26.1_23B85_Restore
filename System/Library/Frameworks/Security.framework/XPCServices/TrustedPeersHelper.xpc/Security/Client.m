@interface Client
- (void)createCustodianRecoveryKeyWithSpecificUser:(id)a3 recoveryKey:(id)a4 salt:(id)a5 ckksKeys:(id)a6 uuid:(id)a7 kind:(int)a8 reply:(id)a9;
- (void)dumpWithSpecificUser:(id)a3 fileDescriptor:(id)a4 reply:(id)a5;
- (void)fetchAccountSettingsWithSpecificUser:(id)a3 forceFetch:(BOOL)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 canSendMetrics:(BOOL)a8 reply:(id)aBlock;
- (void)fetchCurrentPolicyWithSpecificUser:(id)a3 modelIDOverride:(id)a4 isInheritedAccount:(BOOL)a5 reply:(id)a6;
- (void)fetchPolicyDocumentsWithSpecificUser:(id)a3 versions:(id)a4 reply:(id)a5;
- (void)fetchRecoverableTLKSharesWithSpecificUser:(id)a3 peerID:(id)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 canSendMetrics:(BOOL)a8 reply:(id)aBlock;
- (void)fetchViableBottlesWithSpecificUser:(id)a3 source:(int64_t)a4 flowID:(id)a5 deviceSessionID:(id)a6 reply:(id)a7;
- (void)fetchViableEscrowRecordsWithSpecificUser:(id)a3 source:(int64_t)a4 reply:(id)a5;
- (void)joinWithSpecificUser:(id)a3 voucherData:(id)a4 voucherSig:(id)a5 ckksKeys:(id)a6 tlkShares:(id)a7 preapprovedKeys:(id)a8 flowID:(id)a9 deviceSessionID:(id)a10 canSendMetrics:(BOOL)a11 reply:(id)aBlock;
- (void)performCKServerUnreadableDataRemovalWithSpecificUser:(id)a3 isGuitarfish:(BOOL)a4 accountIsW:(BOOL)a5 internalAccount:(BOOL)a6 demoAccount:(BOOL)a7 altDSID:(id)a8 flowID:(id)a9 deviceSessionID:(id)a10 canSendMetrics:(BOOL)a11 reply:(id)aBlock;
- (void)pingWithReply:(id)a3;
- (void)preflightPreapprovedJoinWithSpecificUser:(id)a3 preapprovedKeys:(id)a4 reply:(id)a5;
- (void)preflightVouchWithBottleWithSpecificUser:(id)a3 bottleID:(id)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 canSendMetrics:(BOOL)a8 reply:(id)aBlock;
- (void)preflightVouchWithCustodianRecoveryKeyWithSpecificUser:(id)a3 crk:(id)a4 reply:(id)a5;
- (void)prepareInheritancePeerWithSpecificUser:(id)a3 epoch:(unint64_t)a4 machineID:(id)a5 bottleSalt:(id)a6 bottleID:(id)a7 modelID:(id)a8 deviceName:(id)a9 serialNumber:(id)a10 osVersion:(id)a11 policyVersion:(id)a12 policySecrets:(id)a13 syncUserControllableViews:(int)a14 secureElementIdentity:(id)a15 signingPrivKeyPersistentRef:(id)a16 encPrivKeyPersistentRef:(id)a17 crk:(id)a18 reply:(id)aBlock;
- (void)prepareWithSpecificUser:(id)a3 epoch:(unint64_t)a4 machineID:(id)a5 bottleSalt:(id)a6 bottleID:(id)a7 modelID:(id)a8 deviceName:(id)a9 serialNumber:(id)a10 osVersion:(id)a11 policyVersion:(id)a12 policySecrets:(id)a13 syncUserControllableViews:(int)a14 secureElementIdentity:(id)a15 setting:(id)a16 signingPrivKeyPersistentRef:(id)a17 encPrivKeyPersistentRef:(id)a18 reply:(id)aBlock;
- (void)requestEscrowCheckWithSpecificUser:(id)a3 requiresEscrowCheck:(BOOL)a4 passcodeGeneration:(unint64_t)a5 knownFederations:(id)a6 isBackgroundCheck:(BOOL)a7 flowID:(id)a8 deviceSessionID:(id)a9 reply:(id)a10;
- (void)requestHealthCheckWithSpecificUser:(id)a3 requiresEscrowCheck:(BOOL)a4 repair:(BOOL)a5 danglingPeerCleanup:(BOOL)a6 caesarPeerCleanup:(BOOL)a7 updateIdMS:(BOOL)a8 knownFederations:(id)a9 flowID:(id)a10 deviceSessionID:(id)a11 reply:(id)a12;
- (void)resetAccountCDPContentsWithSpecificUser:(id)a3 idmsTargetContext:(id)a4 idmsCuttlefishPassword:(id)a5 notifyIdMS:(BOOL)a6 internalAccount:(BOOL)a7 demoAccount:(BOOL)a8 reply:(id)aBlock;
- (void)resetWithSpecificUser:(id)a3 resetReason:(int64_t)a4 idmsTargetContext:(id)a5 idmsCuttlefishPassword:(id)a6 notifyIdMS:(BOOL)a7 internalAccount:(BOOL)a8 demoAccount:(BOOL)a9 isGuitarfish:(BOOL)a10 accountIsW:(BOOL)a11 accountType:(int64_t)a12 altDSID:(id)a13 flowID:(id)a14 deviceSessionID:(id)a15 canSendMetrics:(BOOL)a16 reply:(id)aBlock;
- (void)setAllowedMachineIDsWithSpecificUser:(id)a3 allowedMachineIDs:(id)a4 userInitiatedRemovals:(id)a5 evictedRemovals:(id)a6 unknownReasonRemovals:(id)a7 honorIDMSListChanges:(BOOL)a8 version:(id)a9 flowID:(id)a10 deviceSessionID:(id)a11 canSendMetrics:(BOOL)a12 altDSID:(id)a13 trustedDeviceHash:(id)a14 deletedDeviceHash:(id)a15 trustedDevicesUpdateTimestamp:(id)a16 reply:(id)aBlock;
- (void)setPreapprovedKeysWithSpecificUser:(id)a3 preapprovedKeys:(id)a4 reply:(id)a5;
- (void)updateTLKsWithSpecificUser:(id)a3 ckksKeys:(id)a4 tlkShares:(id)a5 reply:(id)a6;
- (void)updateWithSpecificUser:(id)a3 forceRefetch:(BOOL)a4 deviceName:(id)a5 serialNumber:(id)a6 osVersion:(id)a7 policyVersion:(id)a8 policySecrets:(id)a9 syncUserControllableViews:(id)a10 secureElementIdentity:(id)a11 walrusSetting:(id)a12 webAccess:(id)a13 reply:(id)aBlock;
- (void)vouchWithBottleWithSpecificUser:(id)a3 bottleID:(id)a4 entropy:(id)a5 bottleSalt:(id)a6 tlkShares:(id)a7 altDSID:(id)a8 flowID:(id)a9 deviceSessionID:(id)a10 canSendMetrics:(BOOL)a11 reply:(id)aBlock;
- (void)vouchWithRerollWithSpecificUser:(id)a3 oldPeerID:(id)a4 tlkShares:(id)a5 reply:(id)a6;
- (void)vouchWithSpecificUser:(id)a3 peerID:(id)a4 permanentInfo:(id)a5 permanentInfoSig:(id)a6 stableInfo:(id)a7 stableInfoSig:(id)a8 ckksKeys:(id)a9 flowID:(id)a10 deviceSessionID:(id)a11 canSendMetrics:(BOOL)a12 reply:(id)aBlock;
@end

@implementation Client

- (void)pingWithReply:(id)a3
{
  v3 = _Block_copy(a3);
  v3[2]();

  _Block_release(v3);
}

- (void)dumpWithSpecificUser:(id)a3 fileDescriptor:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  swift_unknownObjectRetain();

  sub_1001B4D20(a3, a4, self, v8);
  _Block_release(v8);
  _Block_release(v8);

  swift_unknownObjectRelease();
}

- (void)resetWithSpecificUser:(id)a3 resetReason:(int64_t)a4 idmsTargetContext:(id)a5 idmsCuttlefishPassword:(id)a6 notifyIdMS:(BOOL)a7 internalAccount:(BOOL)a8 demoAccount:(BOOL)a9 isGuitarfish:(BOOL)a10 accountIsW:(BOOL)a11 accountType:(int64_t)a12 altDSID:(id)a13 flowID:(id)a14 deviceSessionID:(id)a15 canSendMetrics:(BOOL)a16 reply:(id)aBlock
{
  v21 = a13;
  v22 = _Block_copy(aBlock);
  if (a5)
  {
    v37 = sub_100216974();
    v42 = v23;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v36 = 0;
    v38 = 0;
    if (a13)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v37 = 0;
  v42 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v36 = sub_100216974();
  v38 = v24;
  if (a13)
  {
LABEL_4:
    v21 = sub_100216974();
    v26 = v25;
    goto LABEL_8;
  }

LABEL_7:
  v26 = 0;
LABEL_8:
  v27 = a3;
  v28 = a14;
  v29 = a15;

  if (v28)
  {
    v30 = sub_100216974();
    v32 = v31;

    if (v29)
    {
LABEL_10:
      v33 = sub_100216974();
      v35 = v34;

      goto LABEL_13;
    }
  }

  else
  {
    v30 = 0;
    v32 = 0;
    if (v29)
    {
      goto LABEL_10;
    }
  }

  v33 = 0;
  v35 = 0;
LABEL_13:
  _Block_copy(v22);
  sub_1001B6F80(v27, a4, v37, v42, v36, v38, a7, a8, a9, a10, a12, v21, v26, v30, v32, v33, v35, a16, self, v22);
  _Block_release(v22);
  _Block_release(v22);
}

- (void)performCKServerUnreadableDataRemovalWithSpecificUser:(id)a3 isGuitarfish:(BOOL)a4 accountIsW:(BOOL)a5 internalAccount:(BOOL)a6 demoAccount:(BOOL)a7 altDSID:(id)a8 flowID:(id)a9 deviceSessionID:(id)a10 canSendMetrics:(BOOL)a11 reply:(id)aBlock
{
  v26 = a5;
  v15 = a9;
  v16 = a10;
  v17 = _Block_copy(aBlock);
  if (a8)
  {
    v18 = sub_100216974();
    a8 = v19;
    if (a9)
    {
      goto LABEL_3;
    }

LABEL_6:
    v21 = 0;
    if (a10)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v18 = 0;
  if (!a9)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = sub_100216974();
  v21 = v20;
  if (a10)
  {
LABEL_4:
    v22 = sub_100216974();
    v16 = v23;
    goto LABEL_8;
  }

LABEL_7:
  v22 = 0;
LABEL_8:
  v24 = a3;

  _Block_copy(v17);
  sub_1001B7A64(v24, a4, v26, a6, a7, v18, a8, v15, v21, v22, v16, a11, self, v17);
  _Block_release(v17);
  _Block_release(v17);
}

- (void)setAllowedMachineIDsWithSpecificUser:(id)a3 allowedMachineIDs:(id)a4 userInitiatedRemovals:(id)a5 evictedRemovals:(id)a6 unknownReasonRemovals:(id)a7 honorIDMSListChanges:(BOOL)a8 version:(id)a9 flowID:(id)a10 deviceSessionID:(id)a11 canSendMetrics:(BOOL)a12 altDSID:(id)a13 trustedDeviceHash:(id)a14 deletedDeviceHash:(id)a15 trustedDevicesUpdateTimestamp:(id)a16 reply:(id)aBlock
{
  v45 = _Block_copy(aBlock);
  v50 = sub_100216BB4();
  if (a5)
  {
    v52 = sub_100216BB4();
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v49 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v52 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v49 = sub_100216BB4();
  if (a7)
  {
LABEL_4:
    v48 = sub_100216BB4();
    goto LABEL_8;
  }

LABEL_7:
  v48 = 0;
LABEL_8:
  v47 = a3;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a13;
  v25 = a14;
  v26 = a15;
  v44 = a16;

  if (v21)
  {
    v43 = sub_100216974();
    v46 = v27;

    if (v22)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v43 = 0;
    v46 = 0;
    if (v22)
    {
LABEL_10:
      v42 = sub_100216974();
      v29 = v28;

      if (v23)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  v42 = 0;
  v29 = 0;
  if (v23)
  {
LABEL_11:
    v41 = sub_100216974();
    v31 = v30;

    if (v24)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_17:
  v41 = 0;
  v31 = 0;
  if (v24)
  {
LABEL_12:
    v32 = sub_100216974();
    v34 = v33;

    if (v25)
    {
      goto LABEL_13;
    }

LABEL_19:
    v35 = 0;
    v37 = 0;
    if (v26)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

LABEL_18:
  v32 = 0;
  v34 = 0;
  if (!v25)
  {
    goto LABEL_19;
  }

LABEL_13:
  v35 = sub_100216974();
  v37 = v36;

  if (v26)
  {
LABEL_14:
    v38 = sub_100216974();
    v40 = v39;

    goto LABEL_21;
  }

LABEL_20:
  v38 = 0;
  v40 = 0;
LABEL_21:
  _Block_copy(v45);
  sub_1001B8B3C(v47, v50, v52, v49, v48, a8, v43, v46, v42, v29, v41, v31, v32, v34, v35, v37, v38, v40, self, v45);
  _Block_release(v45);
  _Block_release(v45);
}

- (void)prepareWithSpecificUser:(id)a3 epoch:(unint64_t)a4 machineID:(id)a5 bottleSalt:(id)a6 bottleID:(id)a7 modelID:(id)a8 deviceName:(id)a9 serialNumber:(id)a10 osVersion:(id)a11 policyVersion:(id)a12 policySecrets:(id)a13 syncUserControllableViews:(int)a14 secureElementIdentity:(id)a15 setting:(id)a16 signingPrivKeyPersistentRef:(id)a17 encPrivKeyPersistentRef:(id)a18 reply:(id)aBlock
{
  v19 = _Block_copy(aBlock);
  v48 = sub_100216974();
  v51 = v20;
  v47 = sub_100216974();
  v50 = v21;
  v46 = sub_100216974();
  v49 = v22;
  v45 = sub_100216974();
  v54 = v23;
  if (a9)
  {
    v44 = sub_100216974();
    v53 = v24;
    if (a10)
    {
LABEL_3:
      v43 = sub_100216974();
      v26 = v25;
      goto LABEL_6;
    }
  }

  else
  {
    v44 = 0;
    v53 = 0;
    if (a10)
    {
      goto LABEL_3;
    }
  }

  v43 = 0;
  v26 = 0;
LABEL_6:
  v39 = sub_100216974();
  v28 = v27;
  if (a13)
  {
    v52 = sub_1002168D4();
  }

  else
  {
    v52 = 0;
  }

  v42 = a3;
  v40 = a12;
  v29 = a15;
  v30 = a16;
  v31 = a17;
  v32 = a18;

  if (v31)
  {
    v33 = sub_100216224();
    v35 = v34;

    if (v32)
    {
LABEL_11:
      v36 = sub_100216224();
      v38 = v37;

      goto LABEL_14;
    }
  }

  else
  {
    v33 = 0;
    v35 = 0xF000000000000000;
    if (v32)
    {
      goto LABEL_11;
    }
  }

  v36 = 0;
  v38 = 0xF000000000000000;
LABEL_14:
  _Block_copy(v19);
  sub_1001BA790(v42, v48, v51, v47, v50, v46, v49, v45, v54, v44, v53, v43, v26, v39, v28, v40, v52, a14, v29, v30, v33, v35, v36, v38, self, v19);
  _Block_release(v19);
  _Block_release(v19);
  sub_10004CD18(v36, v38);
  sub_10004CD18(v33, v35);
}

- (void)prepareInheritancePeerWithSpecificUser:(id)a3 epoch:(unint64_t)a4 machineID:(id)a5 bottleSalt:(id)a6 bottleID:(id)a7 modelID:(id)a8 deviceName:(id)a9 serialNumber:(id)a10 osVersion:(id)a11 policyVersion:(id)a12 policySecrets:(id)a13 syncUserControllableViews:(int)a14 secureElementIdentity:(id)a15 signingPrivKeyPersistentRef:(id)a16 encPrivKeyPersistentRef:(id)a17 crk:(id)a18 reply:(id)aBlock
{
  v20 = a13;
  v21 = _Block_copy(aBlock);
  v44 = sub_100216974();
  v47 = v22;
  v43 = sub_100216974();
  v48 = v23;
  if (a9)
  {
    v41 = sub_100216974();
    v46 = v24;
    if (a10)
    {
LABEL_3:
      v39 = sub_100216974();
      v45 = v25;
      goto LABEL_6;
    }
  }

  else
  {
    v41 = 0;
    v46 = 0;
    if (a10)
    {
      goto LABEL_3;
    }
  }

  v39 = 0;
  v45 = 0;
LABEL_6:
  v37 = sub_100216974();
  v42 = v26;
  if (a13)
  {
    v20 = sub_1002168D4();
  }

  v27 = a3;
  v28 = a12;
  v29 = a15;
  v30 = a16;
  v31 = a17;
  v32 = a18;

  if (v30)
  {
    v38 = sub_100216224();
    v36 = v33;

    if (v31)
    {
LABEL_10:
      v40 = sub_100216224();
      v35 = v34;

      goto LABEL_13;
    }
  }

  else
  {
    v38 = 0;
    v36 = 0xF000000000000000;
    if (v31)
    {
      goto LABEL_10;
    }
  }

  v40 = 0;
  v35 = 0xF000000000000000;
LABEL_13:
  _Block_copy(v21);
  sub_1001BAD7C(v27, v44, v47, v43, v48, v41, v46, v39, v45, v37, v42, v28, v20, a14, v29, v32, self, v21);
  _Block_release(v21);
  _Block_release(v21);
  sub_10004CD18(v40, v35);
  sub_10004CD18(v38, v36);
}

- (void)vouchWithSpecificUser:(id)a3 peerID:(id)a4 permanentInfo:(id)a5 permanentInfoSig:(id)a6 stableInfo:(id)a7 stableInfoSig:(id)a8 ckksKeys:(id)a9 flowID:(id)a10 deviceSessionID:(id)a11 canSendMetrics:(BOOL)a12 reply:(id)aBlock
{
  v50 = _Block_copy(aBlock);
  v48 = sub_100216974();
  v51 = v19;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;

  v49 = a3;
  v25 = a10;
  v26 = a11;
  v27 = sub_100216224();
  v46 = v28;
  v47 = v27;

  v29 = sub_100216224();
  v44 = v30;
  v45 = v29;

  v43 = sub_100216224();
  v32 = v31;

  v33 = sub_100216224();
  v35 = v34;

  sub_10000200C(0, &qword_10029D938, off_100275018);
  v36 = sub_100216B24();

  if (v25)
  {
    v37 = sub_100216974();
    v39 = v38;

    if (v26)
    {
LABEL_3:
      v40 = sub_100216974();
      v42 = v41;

      goto LABEL_6;
    }
  }

  else
  {
    v37 = 0;
    v39 = 0;
    if (v26)
    {
      goto LABEL_3;
    }
  }

  v40 = 0;
  v42 = 0;
LABEL_6:
  _Block_copy(v50);
  sub_1001BBE44(v49, v48, v51, v47, v46, v45, v44, v43, v32, v33, v35, v36, v37, v39, v40, v42, a12, self, v50);
  _Block_release(v50);
  _Block_release(v50);

  sub_100002BF0(v33, v35);
  sub_100002BF0(v43, v32);
  sub_100002BF0(v45, v44);
  sub_100002BF0(v47, v46);
}

- (void)preflightVouchWithBottleWithSpecificUser:(id)a3 bottleID:(id)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 canSendMetrics:(BOOL)a8 reply:(id)aBlock
{
  v14 = _Block_copy(aBlock);
  v24 = sub_100216974();
  v16 = v15;
  if (a5)
  {
    v17 = sub_100216974();
    a5 = v18;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v20 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v17 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  a6 = sub_100216974();
  v20 = v19;
  if (a7)
  {
LABEL_4:
    v21 = sub_100216974();
    a7 = v22;
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  v23 = a3;

  _Block_copy(v14);
  sub_1001BC758(v23, v24, v16, v17, a5, a6, v20, v21, a7, a8, self, v14);
  _Block_release(v14);
  _Block_release(v14);
}

- (void)vouchWithBottleWithSpecificUser:(id)a3 bottleID:(id)a4 entropy:(id)a5 bottleSalt:(id)a6 tlkShares:(id)a7 altDSID:(id)a8 flowID:(id)a9 deviceSessionID:(id)a10 canSendMetrics:(BOOL)a11 reply:(id)aBlock
{
  v39 = _Block_copy(aBlock);
  v43 = sub_100216974();
  v45 = v17;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v46 = self;

  v44 = a3;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = sub_100216224();
  v40 = v25;
  v42 = v24;

  v26 = sub_100216974();
  v38 = v27;

  sub_10000200C(0, &qword_10029DEB0, off_100275028);
  v37 = sub_100216B24();

  if (v21)
  {
    v28 = sub_100216974();
    v30 = v29;

    if (v22)
    {
      goto LABEL_3;
    }

LABEL_6:
    v31 = 0;
    v33 = 0;
    if (v23)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v28 = 0;
  v30 = 0;
  if (!v22)
  {
    goto LABEL_6;
  }

LABEL_3:
  v31 = sub_100216974();
  v33 = v32;

  if (v23)
  {
LABEL_4:
    v34 = sub_100216974();
    v36 = v35;

    goto LABEL_8;
  }

LABEL_7:
  v34 = 0;
  v36 = 0;
LABEL_8:
  _Block_copy(v39);
  sub_1001BCF38(v44, v43, v45, v42, v40, v26, v38, v37, v28, v30, v31, v33, v34, v36, a11, v46, v39);
  _Block_release(v39);
  _Block_release(v39);

  sub_100002BF0(v42, v40);
}

- (void)preflightVouchWithCustodianRecoveryKeyWithSpecificUser:(id)a3 crk:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;

  sub_1001BE7B0(a3, v10, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)vouchWithRerollWithSpecificUser:(id)a3 oldPeerID:(id)a4 tlkShares:(id)a5 reply:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_100216974();
  v11 = v10;
  sub_10000200C(0, &qword_10029DEB0, off_100275028);
  v12 = sub_100216B24();
  _Block_copy(v8);
  v13 = a3;

  sub_1001C0570(a3, v9, v11, v12, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)joinWithSpecificUser:(id)a3 voucherData:(id)a4 voucherSig:(id)a5 ckksKeys:(id)a6 tlkShares:(id)a7 preapprovedKeys:(id)a8 flowID:(id)a9 deviceSessionID:(id)a10 canSendMetrics:(BOOL)a11 reply:(id)aBlock
{
  v44 = _Block_copy(aBlock);
  v38 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;

  v43 = a3;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = sub_100216224();
  v40 = v25;
  v42 = v24;

  v26 = sub_100216224();
  v37 = v27;
  v39 = v26;

  sub_10000200C(0, &qword_10029D938, off_100275018);
  v36 = sub_100216B24();

  sub_10000200C(0, &qword_10029DEB0, off_100275028);
  v35 = sub_100216B24();

  if (v21)
  {
    v34 = sub_100216B24();

    if (v22)
    {
      goto LABEL_3;
    }

LABEL_6:
    v28 = 0;
    v30 = 0;
    if (v23)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v34 = 0;
  if (!v22)
  {
    goto LABEL_6;
  }

LABEL_3:
  v28 = sub_100216974();
  v30 = v29;

  if (v23)
  {
LABEL_4:
    v31 = sub_100216974();
    v33 = v32;

    goto LABEL_8;
  }

LABEL_7:
  v31 = 0;
  v33 = 0;
LABEL_8:
  _Block_copy(v44);
  sub_1001C0CC8(v43, v42, v40, v39, v37, v36, v35, v34, v28, v30, v31, v33, a11, self, v44);
  _Block_release(v44);
  _Block_release(v44);

  sub_100002BF0(v39, v37);
  sub_100002BF0(v42, v40);
}

- (void)preflightPreapprovedJoinWithSpecificUser:(id)a3 preapprovedKeys:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    a4 = sub_100216B24();
  }

  _Block_copy(v8);
  v9 = a3;

  sub_1001C178C(a3, a4, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)updateWithSpecificUser:(id)a3 forceRefetch:(BOOL)a4 deviceName:(id)a5 serialNumber:(id)a6 osVersion:(id)a7 policyVersion:(id)a8 policySecrets:(id)a9 syncUserControllableViews:(id)a10 secureElementIdentity:(id)a11 walrusSetting:(id)a12 webAccess:(id)a13 reply:(id)aBlock
{
  v19 = _Block_copy(aBlock);
  if (a5)
  {
    a5 = sub_100216974();
    v37 = v20;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v34 = 0;
    v36 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v37 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v34 = sub_100216974();
  v36 = v21;
  if (a7)
  {
LABEL_4:
    v33 = sub_100216974();
    v35 = v22;
    goto LABEL_8;
  }

LABEL_7:
  v33 = 0;
  v35 = 0;
LABEL_8:
  v23 = a3;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  v28 = a12;
  v29 = a13;

  if (v25)
  {
    v30 = sub_1002168D4();
  }

  else
  {
    v30 = 0;
  }

  _Block_copy(v19);
  *&v31 = v27;
  *(&v31 + 1) = v28;
  sub_1001C2714(v23, a4, a5, v37, v34, v36, v33, v35, v24, v30, v26, v31, v29, self, v19);
  _Block_release(v19);
  _Block_release(v19);
}

- (void)setPreapprovedKeysWithSpecificUser:(id)a3 preapprovedKeys:(id)a4 reply:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_100216B24();
  _Block_copy(v7);
  v9 = a3;

  sub_1001C3050(a3, v8, self, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)updateTLKsWithSpecificUser:(id)a3 ckksKeys:(id)a4 tlkShares:(id)a5 reply:(id)a6
{
  v8 = _Block_copy(a6);
  sub_10000200C(0, &qword_10029D938, off_100275018);
  v9 = sub_100216B24();
  sub_10000200C(0, &qword_10029DEB0, off_100275028);
  v10 = sub_100216B24();
  _Block_copy(v8);
  v11 = a3;

  sub_1001C3780(a3, v9, v10, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)fetchViableBottlesWithSpecificUser:(id)a3 source:(int64_t)a4 flowID:(id)a5 deviceSessionID:(id)a6 reply:(id)a7
{
  v12 = _Block_copy(a7);
  if (a5)
  {
    v13 = sub_100216974();
    a5 = v14;
    if (a6)
    {
LABEL_3:
      v15 = sub_100216974();
      a6 = v16;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  v17 = a3;

  _Block_copy(v12);
  sub_1001C525C(a3, a4, v13, a5, v15, a6, self, v12);
  _Block_release(v12);
  _Block_release(v12);
}

- (void)fetchViableEscrowRecordsWithSpecificUser:(id)a3 source:(int64_t)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;

  sub_1001C59F8(a3, a4, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)fetchCurrentPolicyWithSpecificUser:(id)a3 modelIDOverride:(id)a4 isInheritedAccount:(BOOL)a5 reply:(id)a6
{
  v10 = _Block_copy(a6);
  if (a4)
  {
    v11 = sub_100216974();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  _Block_copy(v10);
  v13 = a3;

  sub_1001C6384(a3, v11, a4, a5, self, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)fetchPolicyDocumentsWithSpecificUser:(id)a3 versions:(id)a4 reply:(id)a5
{
  v7 = _Block_copy(a5);
  sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
  sub_10006094C();
  v8 = sub_100216BB4();
  _Block_copy(v7);
  v9 = a3;

  sub_1001C6AC8(a3, v8, self, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)fetchRecoverableTLKSharesWithSpecificUser:(id)a3 peerID:(id)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 canSendMetrics:(BOOL)a8 reply:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  if (a4)
  {
    v26 = sub_100216974();
    a4 = v16;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v25 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v26 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v25 = sub_100216974();
  a5 = v17;
  if (a6)
  {
LABEL_4:
    a6 = sub_100216974();
    v19 = v18;
    goto LABEL_8;
  }

LABEL_7:
  v19 = 0;
LABEL_8:
  v20 = a3;
  v21 = a7;

  if (v21)
  {
    v22 = sub_100216974();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  _Block_copy(v15);
  sub_1001C70DC(v20, v26, a4, v25, a5, a6, v19, v22, v24, a8, self, v15);
  _Block_release(v15);
  _Block_release(v15);
}

- (void)createCustodianRecoveryKeyWithSpecificUser:(id)a3 recoveryKey:(id)a4 salt:(id)a5 ckksKeys:(id)a6 uuid:(id)a7 kind:(int)a8 reply:(id)a9
{
  v26 = a8;
  v27 = sub_1002163D4();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v27, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a9);
  v25 = sub_100216974();
  v18 = v17;
  v19 = sub_100216974();
  v21 = v20;
  sub_10000200C(0, &qword_10029D938, off_100275018);
  v22 = sub_100216B24();
  sub_1002163C4();
  _Block_copy(v16);
  v23 = a3;

  sub_1001C7E70(a3, v25, v18, v19, v21, v22, v15, v26, self, v16);
  _Block_release(v16);
  _Block_release(v16);

  (*(v11 + 8))(v15, v27);
}

- (void)requestEscrowCheckWithSpecificUser:(id)a3 requiresEscrowCheck:(BOOL)a4 passcodeGeneration:(unint64_t)a5 knownFederations:(id)a6 isBackgroundCheck:(BOOL)a7 flowID:(id)a8 deviceSessionID:(id)a9 reply:(id)a10
{
  v15 = a9;
  v16 = _Block_copy(a10);
  v17 = sub_100216B24();
  if (a8)
  {
    v18 = sub_100216974();
    v20 = v19;
    if (a9)
    {
LABEL_3:
      v21 = sub_100216974();
      v15 = v22;
      goto LABEL_6;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a9)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
LABEL_6:
  v23 = a3;

  _Block_copy(v16);
  sub_1001C9860(v23, a4, a5, v17, a7, v18, v20, v21, v15, self, v16);
  _Block_release(v16);
  _Block_release(v16);
}

- (void)requestHealthCheckWithSpecificUser:(id)a3 requiresEscrowCheck:(BOOL)a4 repair:(BOOL)a5 danglingPeerCleanup:(BOOL)a6 caesarPeerCleanup:(BOOL)a7 updateIdMS:(BOOL)a8 knownFederations:(id)a9 flowID:(id)a10 deviceSessionID:(id)a11 reply:(id)a12
{
  v15 = a10;
  v16 = a11;
  v17 = _Block_copy(a12);
  v18 = sub_100216B24();
  if (a10)
  {
    v15 = sub_100216974();
    v20 = v19;
    if (a11)
    {
LABEL_3:
      v21 = sub_100216974();
      v16 = v22;
      goto LABEL_6;
    }
  }

  else
  {
    v20 = 0;
    if (a11)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
LABEL_6:
  v23 = a3;

  _Block_copy(v17);
  sub_1001CA02C(a3, a4, a5, a6, a7, a8, v18, v15, v20, v21, v16, self, v17);
  _Block_release(v17);
  _Block_release(v17);
}

- (void)resetAccountCDPContentsWithSpecificUser:(id)a3 idmsTargetContext:(id)a4 idmsCuttlefishPassword:(id)a5 notifyIdMS:(BOOL)a6 internalAccount:(BOOL)a7 demoAccount:(BOOL)a8 reply:(id)aBlock
{
  v21 = a8;
  v9 = a7;
  v10 = a6;
  v15 = _Block_copy(aBlock);
  if (a4)
  {
    v16 = sub_100216974();
    a4 = v17;
    if (a5)
    {
LABEL_3:
      v18 = sub_100216974();
      a5 = v19;
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:
  v20 = a3;

  _Block_copy(v15);
  sub_1001CB790(a3, v16, a4, v18, a5, v10, v9, v21, self, v15);
  _Block_release(v15);
  _Block_release(v15);
}

- (void)fetchAccountSettingsWithSpecificUser:(id)a3 forceFetch:(BOOL)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 canSendMetrics:(BOOL)a8 reply:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  if (a5)
  {
    v16 = sub_100216974();
    a5 = v17;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v18 = 0;
    v20 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v16 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v18 = sub_100216974();
  v20 = v19;
  if (a7)
  {
LABEL_4:
    v21 = sub_100216974();
    a7 = v22;
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  v23 = a3;

  _Block_copy(v15);
  sub_1001CBF18(v23, a4, v16, a5, v18, v20, v21, a7, a8, self, v15);
  _Block_release(v15);
  _Block_release(v15);
}

@end
@interface Client
- (void)createCustodianRecoveryKeyWithSpecificUser:(id)user recoveryKey:(id)key salt:(id)salt ckksKeys:(id)keys uuid:(id)uuid kind:(int)kind reply:(id)reply;
- (void)dumpWithSpecificUser:(id)user fileDescriptor:(id)descriptor reply:(id)reply;
- (void)fetchAccountSettingsWithSpecificUser:(id)user forceFetch:(BOOL)fetch altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics reply:(id)aBlock;
- (void)fetchCurrentPolicyWithSpecificUser:(id)user modelIDOverride:(id)override isInheritedAccount:(BOOL)account reply:(id)reply;
- (void)fetchPolicyDocumentsWithSpecificUser:(id)user versions:(id)versions reply:(id)reply;
- (void)fetchRecoverableTLKSharesWithSpecificUser:(id)user peerID:(id)d altDSID:(id)iD flowID:(id)flowID deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics reply:(id)aBlock;
- (void)fetchViableBottlesWithSpecificUser:(id)user source:(int64_t)source flowID:(id)d deviceSessionID:(id)iD reply:(id)reply;
- (void)fetchViableEscrowRecordsWithSpecificUser:(id)user source:(int64_t)source reply:(id)reply;
- (void)joinWithSpecificUser:(id)user voucherData:(id)data voucherSig:(id)sig ckksKeys:(id)keys tlkShares:(id)shares preapprovedKeys:(id)preapprovedKeys flowID:(id)d deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)aBlock;
- (void)performCKServerUnreadableDataRemovalWithSpecificUser:(id)user isGuitarfish:(BOOL)guitarfish accountIsW:(BOOL)w internalAccount:(BOOL)account demoAccount:(BOOL)demoAccount altDSID:(id)d flowID:(id)iD deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)aBlock;
- (void)pingWithReply:(id)reply;
- (void)preflightPreapprovedJoinWithSpecificUser:(id)user preapprovedKeys:(id)keys reply:(id)reply;
- (void)preflightVouchWithBottleWithSpecificUser:(id)user bottleID:(id)d altDSID:(id)iD flowID:(id)flowID deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics reply:(id)aBlock;
- (void)preflightVouchWithCustodianRecoveryKeyWithSpecificUser:(id)user crk:(id)crk reply:(id)reply;
- (void)prepareInheritancePeerWithSpecificUser:(id)user epoch:(unint64_t)epoch machineID:(id)d bottleSalt:(id)salt bottleID:(id)iD modelID:(id)modelID deviceName:(id)name serialNumber:(id)self0 osVersion:(id)self1 policyVersion:(id)self2 policySecrets:(id)self3 syncUserControllableViews:(int)self4 secureElementIdentity:(id)self5 signingPrivKeyPersistentRef:(id)self6 encPrivKeyPersistentRef:(id)self7 crk:(id)self8 reply:(id)aBlock;
- (void)prepareWithSpecificUser:(id)user epoch:(unint64_t)epoch machineID:(id)d bottleSalt:(id)salt bottleID:(id)iD modelID:(id)modelID deviceName:(id)name serialNumber:(id)self0 osVersion:(id)self1 policyVersion:(id)self2 policySecrets:(id)self3 syncUserControllableViews:(int)self4 secureElementIdentity:(id)self5 setting:(id)self6 signingPrivKeyPersistentRef:(id)self7 encPrivKeyPersistentRef:(id)self8 reply:(id)aBlock;
- (void)requestEscrowCheckWithSpecificUser:(id)user requiresEscrowCheck:(BOOL)check passcodeGeneration:(unint64_t)generation knownFederations:(id)federations isBackgroundCheck:(BOOL)backgroundCheck flowID:(id)d deviceSessionID:(id)iD reply:(id)self0;
- (void)requestHealthCheckWithSpecificUser:(id)user requiresEscrowCheck:(BOOL)check repair:(BOOL)repair danglingPeerCleanup:(BOOL)cleanup caesarPeerCleanup:(BOOL)peerCleanup updateIdMS:(BOOL)s knownFederations:(id)federations flowID:(id)self0 deviceSessionID:(id)self1 reply:(id)self2;
- (void)resetAccountCDPContentsWithSpecificUser:(id)user idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s internalAccount:(BOOL)account demoAccount:(BOOL)demoAccount reply:(id)aBlock;
- (void)resetWithSpecificUser:(id)user resetReason:(int64_t)reason idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s internalAccount:(BOOL)account demoAccount:(BOOL)demoAccount isGuitarfish:(BOOL)self0 accountIsW:(BOOL)self1 accountType:(int64_t)self2 altDSID:(id)self3 flowID:(id)self4 deviceSessionID:(id)self5 canSendMetrics:(BOOL)self6 reply:(id)aBlock;
- (void)setAllowedMachineIDsWithSpecificUser:(id)user allowedMachineIDs:(id)ds userInitiatedRemovals:(id)removals evictedRemovals:(id)evictedRemovals unknownReasonRemovals:(id)reasonRemovals honorIDMSListChanges:(BOOL)changes version:(id)version flowID:(id)self0 deviceSessionID:(id)self1 canSendMetrics:(BOOL)self2 altDSID:(id)self3 trustedDeviceHash:(id)self4 deletedDeviceHash:(id)self5 trustedDevicesUpdateTimestamp:(id)self6 reply:(id)aBlock;
- (void)setPreapprovedKeysWithSpecificUser:(id)user preapprovedKeys:(id)keys reply:(id)reply;
- (void)updateTLKsWithSpecificUser:(id)user ckksKeys:(id)keys tlkShares:(id)shares reply:(id)reply;
- (void)updateWithSpecificUser:(id)user forceRefetch:(BOOL)refetch deviceName:(id)name serialNumber:(id)number osVersion:(id)version policyVersion:(id)policyVersion policySecrets:(id)secrets syncUserControllableViews:(id)self0 secureElementIdentity:(id)self1 walrusSetting:(id)self2 webAccess:(id)self3 reply:(id)aBlock;
- (void)vouchWithBottleWithSpecificUser:(id)user bottleID:(id)d entropy:(id)entropy bottleSalt:(id)salt tlkShares:(id)shares altDSID:(id)iD flowID:(id)flowID deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)aBlock;
- (void)vouchWithRerollWithSpecificUser:(id)user oldPeerID:(id)d tlkShares:(id)shares reply:(id)reply;
- (void)vouchWithSpecificUser:(id)user peerID:(id)d permanentInfo:(id)info permanentInfoSig:(id)sig stableInfo:(id)stableInfo stableInfoSig:(id)infoSig ckksKeys:(id)keys flowID:(id)self0 deviceSessionID:(id)self1 canSendMetrics:(BOOL)self2 reply:(id)aBlock;
@end

@implementation Client

- (void)pingWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  v3[2]();

  _Block_release(v3);
}

- (void)dumpWithSpecificUser:(id)user fileDescriptor:(id)descriptor reply:(id)reply
{
  v8 = _Block_copy(reply);
  _Block_copy(v8);
  userCopy = user;
  swift_unknownObjectRetain();

  sub_1001B4D20(user, descriptor, self, v8);
  _Block_release(v8);
  _Block_release(v8);

  swift_unknownObjectRelease();
}

- (void)resetWithSpecificUser:(id)user resetReason:(int64_t)reason idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s internalAccount:(BOOL)account demoAccount:(BOOL)demoAccount isGuitarfish:(BOOL)self0 accountIsW:(BOOL)self1 accountType:(int64_t)self2 altDSID:(id)self3 flowID:(id)self4 deviceSessionID:(id)self5 canSendMetrics:(BOOL)self6 reply:(id)aBlock
{
  dCopy = d;
  v22 = _Block_copy(aBlock);
  if (context)
  {
    v37 = sub_100216974();
    v42 = v23;
    if (password)
    {
      goto LABEL_3;
    }

LABEL_6:
    v36 = 0;
    v38 = 0;
    if (d)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v37 = 0;
  v42 = 0;
  if (!password)
  {
    goto LABEL_6;
  }

LABEL_3:
  v36 = sub_100216974();
  v38 = v24;
  if (d)
  {
LABEL_4:
    dCopy = sub_100216974();
    v26 = v25;
    goto LABEL_8;
  }

LABEL_7:
  v26 = 0;
LABEL_8:
  userCopy = user;
  iDCopy = iD;
  sessionIDCopy = sessionID;

  if (iDCopy)
  {
    v30 = sub_100216974();
    v32 = v31;

    if (sessionIDCopy)
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
    if (sessionIDCopy)
    {
      goto LABEL_10;
    }
  }

  v33 = 0;
  v35 = 0;
LABEL_13:
  _Block_copy(v22);
  sub_1001B6F80(userCopy, reason, v37, v42, v36, v38, s, account, demoAccount, guitarfish, type, dCopy, v26, v30, v32, v33, v35, metrics, self, v22);
  _Block_release(v22);
  _Block_release(v22);
}

- (void)performCKServerUnreadableDataRemovalWithSpecificUser:(id)user isGuitarfish:(BOOL)guitarfish accountIsW:(BOOL)w internalAccount:(BOOL)account demoAccount:(BOOL)demoAccount altDSID:(id)d flowID:(id)iD deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)aBlock
{
  wCopy = w;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  v17 = _Block_copy(aBlock);
  if (d)
  {
    v18 = sub_100216974();
    d = v19;
    if (iD)
    {
      goto LABEL_3;
    }

LABEL_6:
    v21 = 0;
    if (sessionID)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v18 = 0;
  if (!iD)
  {
    goto LABEL_6;
  }

LABEL_3:
  iDCopy = sub_100216974();
  v21 = v20;
  if (sessionID)
  {
LABEL_4:
    v22 = sub_100216974();
    sessionIDCopy = v23;
    goto LABEL_8;
  }

LABEL_7:
  v22 = 0;
LABEL_8:
  userCopy = user;

  _Block_copy(v17);
  sub_1001B7A64(userCopy, guitarfish, wCopy, account, demoAccount, v18, d, iDCopy, v21, v22, sessionIDCopy, metrics, self, v17);
  _Block_release(v17);
  _Block_release(v17);
}

- (void)setAllowedMachineIDsWithSpecificUser:(id)user allowedMachineIDs:(id)ds userInitiatedRemovals:(id)removals evictedRemovals:(id)evictedRemovals unknownReasonRemovals:(id)reasonRemovals honorIDMSListChanges:(BOOL)changes version:(id)version flowID:(id)self0 deviceSessionID:(id)self1 canSendMetrics:(BOOL)self2 altDSID:(id)self3 trustedDeviceHash:(id)self4 deletedDeviceHash:(id)self5 trustedDevicesUpdateTimestamp:(id)self6 reply:(id)aBlock
{
  v45 = _Block_copy(aBlock);
  v50 = sub_100216BB4();
  if (removals)
  {
    v52 = sub_100216BB4();
    if (evictedRemovals)
    {
      goto LABEL_3;
    }

LABEL_6:
    v49 = 0;
    if (reasonRemovals)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v52 = 0;
  if (!evictedRemovals)
  {
    goto LABEL_6;
  }

LABEL_3:
  v49 = sub_100216BB4();
  if (reasonRemovals)
  {
LABEL_4:
    v48 = sub_100216BB4();
    goto LABEL_8;
  }

LABEL_7:
  v48 = 0;
LABEL_8:
  userCopy = user;
  versionCopy = version;
  dCopy = d;
  iDCopy = iD;
  sIDCopy = sID;
  hashCopy = hash;
  deviceHashCopy = deviceHash;
  timestampCopy = timestamp;

  if (versionCopy)
  {
    v43 = sub_100216974();
    v46 = v27;

    if (dCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v43 = 0;
    v46 = 0;
    if (dCopy)
    {
LABEL_10:
      v42 = sub_100216974();
      v29 = v28;

      if (iDCopy)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  v42 = 0;
  v29 = 0;
  if (iDCopy)
  {
LABEL_11:
    v41 = sub_100216974();
    v31 = v30;

    if (sIDCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_17:
  v41 = 0;
  v31 = 0;
  if (sIDCopy)
  {
LABEL_12:
    v32 = sub_100216974();
    v34 = v33;

    if (hashCopy)
    {
      goto LABEL_13;
    }

LABEL_19:
    v35 = 0;
    v37 = 0;
    if (deviceHashCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

LABEL_18:
  v32 = 0;
  v34 = 0;
  if (!hashCopy)
  {
    goto LABEL_19;
  }

LABEL_13:
  v35 = sub_100216974();
  v37 = v36;

  if (deviceHashCopy)
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
  sub_1001B8B3C(userCopy, v50, v52, v49, v48, changes, v43, v46, v42, v29, v41, v31, v32, v34, v35, v37, v38, v40, self, v45);
  _Block_release(v45);
  _Block_release(v45);
}

- (void)prepareWithSpecificUser:(id)user epoch:(unint64_t)epoch machineID:(id)d bottleSalt:(id)salt bottleID:(id)iD modelID:(id)modelID deviceName:(id)name serialNumber:(id)self0 osVersion:(id)self1 policyVersion:(id)self2 policySecrets:(id)self3 syncUserControllableViews:(int)self4 secureElementIdentity:(id)self5 setting:(id)self6 signingPrivKeyPersistentRef:(id)self7 encPrivKeyPersistentRef:(id)self8 reply:(id)aBlock
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
  if (name)
  {
    v44 = sub_100216974();
    v53 = v24;
    if (number)
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
    if (number)
    {
      goto LABEL_3;
    }
  }

  v43 = 0;
  v26 = 0;
LABEL_6:
  v39 = sub_100216974();
  v28 = v27;
  if (secrets)
  {
    v52 = sub_1002168D4();
  }

  else
  {
    v52 = 0;
  }

  userCopy = user;
  policyVersionCopy = policyVersion;
  identityCopy = identity;
  settingCopy = setting;
  refCopy = ref;
  persistentRefCopy = persistentRef;

  if (refCopy)
  {
    v33 = sub_100216224();
    v35 = v34;

    if (persistentRefCopy)
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
    if (persistentRefCopy)
    {
      goto LABEL_11;
    }
  }

  v36 = 0;
  v38 = 0xF000000000000000;
LABEL_14:
  _Block_copy(v19);
  sub_1001BA790(userCopy, v48, v51, v47, v50, v46, v49, v45, v54, v44, v53, v43, v26, v39, v28, policyVersionCopy, v52, views, identityCopy, settingCopy, v33, v35, v36, v38, self, v19);
  _Block_release(v19);
  _Block_release(v19);
  sub_10004CD18(v36, v38);
  sub_10004CD18(v33, v35);
}

- (void)prepareInheritancePeerWithSpecificUser:(id)user epoch:(unint64_t)epoch machineID:(id)d bottleSalt:(id)salt bottleID:(id)iD modelID:(id)modelID deviceName:(id)name serialNumber:(id)self0 osVersion:(id)self1 policyVersion:(id)self2 policySecrets:(id)self3 syncUserControllableViews:(int)self4 secureElementIdentity:(id)self5 signingPrivKeyPersistentRef:(id)self6 encPrivKeyPersistentRef:(id)self7 crk:(id)self8 reply:(id)aBlock
{
  secretsCopy = secrets;
  v21 = _Block_copy(aBlock);
  v44 = sub_100216974();
  v47 = v22;
  v43 = sub_100216974();
  v48 = v23;
  if (name)
  {
    v41 = sub_100216974();
    v46 = v24;
    if (number)
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
    if (number)
    {
      goto LABEL_3;
    }
  }

  v39 = 0;
  v45 = 0;
LABEL_6:
  v37 = sub_100216974();
  v42 = v26;
  if (secrets)
  {
    secretsCopy = sub_1002168D4();
  }

  userCopy = user;
  policyVersionCopy = policyVersion;
  identityCopy = identity;
  refCopy = ref;
  persistentRefCopy = persistentRef;
  crkCopy = crk;

  if (refCopy)
  {
    v38 = sub_100216224();
    v36 = v33;

    if (persistentRefCopy)
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
    if (persistentRefCopy)
    {
      goto LABEL_10;
    }
  }

  v40 = 0;
  v35 = 0xF000000000000000;
LABEL_13:
  _Block_copy(v21);
  sub_1001BAD7C(userCopy, v44, v47, v43, v48, v41, v46, v39, v45, v37, v42, policyVersionCopy, secretsCopy, views, identityCopy, crkCopy, self, v21);
  _Block_release(v21);
  _Block_release(v21);
  sub_10004CD18(v40, v35);
  sub_10004CD18(v38, v36);
}

- (void)vouchWithSpecificUser:(id)user peerID:(id)d permanentInfo:(id)info permanentInfoSig:(id)sig stableInfo:(id)stableInfo stableInfoSig:(id)infoSig ckksKeys:(id)keys flowID:(id)self0 deviceSessionID:(id)self1 canSendMetrics:(BOOL)self2 reply:(id)aBlock
{
  v50 = _Block_copy(aBlock);
  v48 = sub_100216974();
  v51 = v19;
  infoCopy = info;
  sigCopy = sig;
  stableInfoCopy = stableInfo;
  infoSigCopy = infoSig;
  keysCopy = keys;

  userCopy = user;
  iDCopy = iD;
  sessionIDCopy = sessionID;
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

  if (iDCopy)
  {
    v37 = sub_100216974();
    v39 = v38;

    if (sessionIDCopy)
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
    if (sessionIDCopy)
    {
      goto LABEL_3;
    }
  }

  v40 = 0;
  v42 = 0;
LABEL_6:
  _Block_copy(v50);
  sub_1001BBE44(userCopy, v48, v51, v47, v46, v45, v44, v43, v32, v33, v35, v36, v37, v39, v40, v42, metrics, self, v50);
  _Block_release(v50);
  _Block_release(v50);

  sub_100002BF0(v33, v35);
  sub_100002BF0(v43, v32);
  sub_100002BF0(v45, v44);
  sub_100002BF0(v47, v46);
}

- (void)preflightVouchWithBottleWithSpecificUser:(id)user bottleID:(id)d altDSID:(id)iD flowID:(id)flowID deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics reply:(id)aBlock
{
  v14 = _Block_copy(aBlock);
  v24 = sub_100216974();
  v16 = v15;
  if (iD)
  {
    v17 = sub_100216974();
    iD = v18;
    if (flowID)
    {
      goto LABEL_3;
    }

LABEL_6:
    v20 = 0;
    if (sessionID)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v17 = 0;
  if (!flowID)
  {
    goto LABEL_6;
  }

LABEL_3:
  flowID = sub_100216974();
  v20 = v19;
  if (sessionID)
  {
LABEL_4:
    v21 = sub_100216974();
    sessionID = v22;
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  userCopy = user;

  _Block_copy(v14);
  sub_1001BC758(userCopy, v24, v16, v17, iD, flowID, v20, v21, sessionID, metrics, self, v14);
  _Block_release(v14);
  _Block_release(v14);
}

- (void)vouchWithBottleWithSpecificUser:(id)user bottleID:(id)d entropy:(id)entropy bottleSalt:(id)salt tlkShares:(id)shares altDSID:(id)iD flowID:(id)flowID deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)aBlock
{
  v39 = _Block_copy(aBlock);
  v43 = sub_100216974();
  v45 = v17;
  entropyCopy = entropy;
  saltCopy = salt;
  sharesCopy = shares;
  selfCopy = self;

  userCopy = user;
  iDCopy = iD;
  flowIDCopy = flowID;
  sessionIDCopy = sessionID;
  v24 = sub_100216224();
  v40 = v25;
  v42 = v24;

  v26 = sub_100216974();
  v38 = v27;

  sub_10000200C(0, &qword_10029DEB0, off_100275028);
  v37 = sub_100216B24();

  if (iDCopy)
  {
    v28 = sub_100216974();
    v30 = v29;

    if (flowIDCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v31 = 0;
    v33 = 0;
    if (sessionIDCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v28 = 0;
  v30 = 0;
  if (!flowIDCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  v31 = sub_100216974();
  v33 = v32;

  if (sessionIDCopy)
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
  sub_1001BCF38(userCopy, v43, v45, v42, v40, v26, v38, v37, v28, v30, v31, v33, v34, v36, metrics, selfCopy, v39);
  _Block_release(v39);
  _Block_release(v39);

  sub_100002BF0(v42, v40);
}

- (void)preflightVouchWithCustodianRecoveryKeyWithSpecificUser:(id)user crk:(id)crk reply:(id)reply
{
  v8 = _Block_copy(reply);
  _Block_copy(v8);
  userCopy = user;
  crkCopy = crk;

  sub_1001BE7B0(user, crkCopy, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)vouchWithRerollWithSpecificUser:(id)user oldPeerID:(id)d tlkShares:(id)shares reply:(id)reply
{
  v8 = _Block_copy(reply);
  v9 = sub_100216974();
  v11 = v10;
  sub_10000200C(0, &qword_10029DEB0, off_100275028);
  v12 = sub_100216B24();
  _Block_copy(v8);
  userCopy = user;

  sub_1001C0570(user, v9, v11, v12, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)joinWithSpecificUser:(id)user voucherData:(id)data voucherSig:(id)sig ckksKeys:(id)keys tlkShares:(id)shares preapprovedKeys:(id)preapprovedKeys flowID:(id)d deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)aBlock
{
  v44 = _Block_copy(aBlock);
  dataCopy = data;
  sigCopy = sig;
  keysCopy = keys;
  sharesCopy = shares;

  userCopy = user;
  preapprovedKeysCopy = preapprovedKeys;
  dCopy = d;
  iDCopy = iD;
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

  if (preapprovedKeysCopy)
  {
    v34 = sub_100216B24();

    if (dCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v28 = 0;
    v30 = 0;
    if (iDCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v34 = 0;
  if (!dCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  v28 = sub_100216974();
  v30 = v29;

  if (iDCopy)
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
  sub_1001C0CC8(userCopy, v42, v40, v39, v37, v36, v35, v34, v28, v30, v31, v33, metrics, self, v44);
  _Block_release(v44);
  _Block_release(v44);

  sub_100002BF0(v39, v37);
  sub_100002BF0(v42, v40);
}

- (void)preflightPreapprovedJoinWithSpecificUser:(id)user preapprovedKeys:(id)keys reply:(id)reply
{
  v8 = _Block_copy(reply);
  if (keys)
  {
    keys = sub_100216B24();
  }

  _Block_copy(v8);
  userCopy = user;

  sub_1001C178C(user, keys, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)updateWithSpecificUser:(id)user forceRefetch:(BOOL)refetch deviceName:(id)name serialNumber:(id)number osVersion:(id)version policyVersion:(id)policyVersion policySecrets:(id)secrets syncUserControllableViews:(id)self0 secureElementIdentity:(id)self1 walrusSetting:(id)self2 webAccess:(id)self3 reply:(id)aBlock
{
  v19 = _Block_copy(aBlock);
  if (name)
  {
    name = sub_100216974();
    v37 = v20;
    if (number)
    {
      goto LABEL_3;
    }

LABEL_6:
    v34 = 0;
    v36 = 0;
    if (version)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v37 = 0;
  if (!number)
  {
    goto LABEL_6;
  }

LABEL_3:
  v34 = sub_100216974();
  v36 = v21;
  if (version)
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
  userCopy = user;
  policyVersionCopy = policyVersion;
  secretsCopy = secrets;
  viewsCopy = views;
  identityCopy = identity;
  settingCopy = setting;
  accessCopy = access;

  if (secretsCopy)
  {
    v30 = sub_1002168D4();
  }

  else
  {
    v30 = 0;
  }

  _Block_copy(v19);
  *&v31 = identityCopy;
  *(&v31 + 1) = settingCopy;
  sub_1001C2714(userCopy, refetch, name, v37, v34, v36, v33, v35, policyVersionCopy, v30, viewsCopy, v31, accessCopy, self, v19);
  _Block_release(v19);
  _Block_release(v19);
}

- (void)setPreapprovedKeysWithSpecificUser:(id)user preapprovedKeys:(id)keys reply:(id)reply
{
  v7 = _Block_copy(reply);
  v8 = sub_100216B24();
  _Block_copy(v7);
  userCopy = user;

  sub_1001C3050(user, v8, self, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)updateTLKsWithSpecificUser:(id)user ckksKeys:(id)keys tlkShares:(id)shares reply:(id)reply
{
  v8 = _Block_copy(reply);
  sub_10000200C(0, &qword_10029D938, off_100275018);
  v9 = sub_100216B24();
  sub_10000200C(0, &qword_10029DEB0, off_100275028);
  v10 = sub_100216B24();
  _Block_copy(v8);
  userCopy = user;

  sub_1001C3780(user, v9, v10, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)fetchViableBottlesWithSpecificUser:(id)user source:(int64_t)source flowID:(id)d deviceSessionID:(id)iD reply:(id)reply
{
  v12 = _Block_copy(reply);
  if (d)
  {
    v13 = sub_100216974();
    d = v14;
    if (iD)
    {
LABEL_3:
      v15 = sub_100216974();
      iD = v16;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (iD)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  userCopy = user;

  _Block_copy(v12);
  sub_1001C525C(user, source, v13, d, v15, iD, self, v12);
  _Block_release(v12);
  _Block_release(v12);
}

- (void)fetchViableEscrowRecordsWithSpecificUser:(id)user source:(int64_t)source reply:(id)reply
{
  v8 = _Block_copy(reply);
  _Block_copy(v8);
  userCopy = user;

  sub_1001C59F8(user, source, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)fetchCurrentPolicyWithSpecificUser:(id)user modelIDOverride:(id)override isInheritedAccount:(BOOL)account reply:(id)reply
{
  v10 = _Block_copy(reply);
  if (override)
  {
    v11 = sub_100216974();
    override = v12;
  }

  else
  {
    v11 = 0;
  }

  _Block_copy(v10);
  userCopy = user;

  sub_1001C6384(user, v11, override, account, self, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)fetchPolicyDocumentsWithSpecificUser:(id)user versions:(id)versions reply:(id)reply
{
  v7 = _Block_copy(reply);
  sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
  sub_10006094C();
  v8 = sub_100216BB4();
  _Block_copy(v7);
  userCopy = user;

  sub_1001C6AC8(user, v8, self, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)fetchRecoverableTLKSharesWithSpecificUser:(id)user peerID:(id)d altDSID:(id)iD flowID:(id)flowID deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics reply:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  if (d)
  {
    v26 = sub_100216974();
    d = v16;
    if (iD)
    {
      goto LABEL_3;
    }

LABEL_6:
    v25 = 0;
    if (flowID)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v26 = 0;
  if (!iD)
  {
    goto LABEL_6;
  }

LABEL_3:
  v25 = sub_100216974();
  iD = v17;
  if (flowID)
  {
LABEL_4:
    flowID = sub_100216974();
    v19 = v18;
    goto LABEL_8;
  }

LABEL_7:
  v19 = 0;
LABEL_8:
  userCopy = user;
  sessionIDCopy = sessionID;

  if (sessionIDCopy)
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
  sub_1001C70DC(userCopy, v26, d, v25, iD, flowID, v19, v22, v24, metrics, self, v15);
  _Block_release(v15);
  _Block_release(v15);
}

- (void)createCustodianRecoveryKeyWithSpecificUser:(id)user recoveryKey:(id)key salt:(id)salt ckksKeys:(id)keys uuid:(id)uuid kind:(int)kind reply:(id)reply
{
  kindCopy = kind;
  v27 = sub_1002163D4();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v27, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(reply);
  v25 = sub_100216974();
  v18 = v17;
  v19 = sub_100216974();
  v21 = v20;
  sub_10000200C(0, &qword_10029D938, off_100275018);
  v22 = sub_100216B24();
  sub_1002163C4();
  _Block_copy(v16);
  userCopy = user;

  sub_1001C7E70(user, v25, v18, v19, v21, v22, v15, kindCopy, self, v16);
  _Block_release(v16);
  _Block_release(v16);

  (*(v11 + 8))(v15, v27);
}

- (void)requestEscrowCheckWithSpecificUser:(id)user requiresEscrowCheck:(BOOL)check passcodeGeneration:(unint64_t)generation knownFederations:(id)federations isBackgroundCheck:(BOOL)backgroundCheck flowID:(id)d deviceSessionID:(id)iD reply:(id)self0
{
  iDCopy = iD;
  v16 = _Block_copy(reply);
  v17 = sub_100216B24();
  if (d)
  {
    v18 = sub_100216974();
    v20 = v19;
    if (iD)
    {
LABEL_3:
      v21 = sub_100216974();
      iDCopy = v22;
      goto LABEL_6;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (iD)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
LABEL_6:
  userCopy = user;

  _Block_copy(v16);
  sub_1001C9860(userCopy, check, generation, v17, backgroundCheck, v18, v20, v21, iDCopy, self, v16);
  _Block_release(v16);
  _Block_release(v16);
}

- (void)requestHealthCheckWithSpecificUser:(id)user requiresEscrowCheck:(BOOL)check repair:(BOOL)repair danglingPeerCleanup:(BOOL)cleanup caesarPeerCleanup:(BOOL)peerCleanup updateIdMS:(BOOL)s knownFederations:(id)federations flowID:(id)self0 deviceSessionID:(id)self1 reply:(id)self2
{
  dCopy = d;
  iDCopy = iD;
  v17 = _Block_copy(reply);
  v18 = sub_100216B24();
  if (d)
  {
    dCopy = sub_100216974();
    v20 = v19;
    if (iD)
    {
LABEL_3:
      v21 = sub_100216974();
      iDCopy = v22;
      goto LABEL_6;
    }
  }

  else
  {
    v20 = 0;
    if (iD)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
LABEL_6:
  userCopy = user;

  _Block_copy(v17);
  sub_1001CA02C(user, check, repair, cleanup, peerCleanup, s, v18, dCopy, v20, v21, iDCopy, self, v17);
  _Block_release(v17);
  _Block_release(v17);
}

- (void)resetAccountCDPContentsWithSpecificUser:(id)user idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s internalAccount:(BOOL)account demoAccount:(BOOL)demoAccount reply:(id)aBlock
{
  demoAccountCopy = demoAccount;
  accountCopy = account;
  sCopy = s;
  v15 = _Block_copy(aBlock);
  if (context)
  {
    v16 = sub_100216974();
    context = v17;
    if (password)
    {
LABEL_3:
      v18 = sub_100216974();
      password = v19;
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
    if (password)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:
  userCopy = user;

  _Block_copy(v15);
  sub_1001CB790(user, v16, context, v18, password, sCopy, accountCopy, demoAccountCopy, self, v15);
  _Block_release(v15);
  _Block_release(v15);
}

- (void)fetchAccountSettingsWithSpecificUser:(id)user forceFetch:(BOOL)fetch altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics reply:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  if (d)
  {
    v16 = sub_100216974();
    d = v17;
    if (iD)
    {
      goto LABEL_3;
    }

LABEL_6:
    v18 = 0;
    v20 = 0;
    if (sessionID)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v16 = 0;
  if (!iD)
  {
    goto LABEL_6;
  }

LABEL_3:
  v18 = sub_100216974();
  v20 = v19;
  if (sessionID)
  {
LABEL_4:
    v21 = sub_100216974();
    sessionID = v22;
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  userCopy = user;

  _Block_copy(v15);
  sub_1001CBF18(userCopy, fetch, v16, d, v18, v20, v21, sessionID, metrics, self, v15);
  _Block_release(v15);
  _Block_release(v15);
}

@end
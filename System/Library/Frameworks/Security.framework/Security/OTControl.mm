@interface OTControl
- (OTControl)initWithConnection:(id)connection sync:(BOOL)sync;
- (id)getAsyncConnection:(id)connection;
- (id)getConnection:(id)connection;
- (void)appleAccountSignedIn:(id)in reply:(id)reply;
- (void)appleAccountSignedOut:(id)out reply:(id)reply;
- (void)areRecoveryKeysDistrusted:(id)distrusted reply:(id)reply;
- (void)checkCustodianRecoveryKey:(id)key uuid:(id)uuid reply:(id)reply;
- (void)checkInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply;
- (void)createCustodianRecoveryKey:(id)key uuid:(id)uuid reply:(id)reply;
- (void)createInheritanceKey:(id)key uuid:(id)uuid claimTokenData:(id)data wrappingKeyData:(id)keyData reply:(id)reply;
- (void)createInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply;
- (void)createRecoveryKey:(id)key recoveryKey:(id)recoveryKey reply:(id)reply;
- (void)dealloc;
- (void)establish:(id)establish reply:(id)reply;
- (void)fetchAccountSettings:(id)settings reply:(id)reply;
- (void)fetchAllViableBottles:(id)bottles source:(int64_t)source reply:(id)reply;
- (void)fetchCliqueStatus:(id)status configuration:(id)configuration reply:(id)reply;
- (void)fetchEgoPeerID:(id)d reply:(id)reply;
- (void)fetchEscrowContents:(id)contents reply:(id)reply;
- (void)fetchEscrowRecords:(id)records source:(int64_t)source reply:(id)reply;
- (void)fetchTrustStatus:(id)status configuration:(id)configuration reply:(id)reply;
- (void)fetchTrustedSecureElementIdentities:(id)identities reply:(id)reply;
- (void)fetchUserControllableViewsSyncStatus:(id)status reply:(id)reply;
- (void)fetchUserControllableViewsSyncStatusAsync:(id)async reply:(id)reply;
- (void)generateInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply;
- (void)getAccountMetadata:(id)metadata reply:(id)reply;
- (void)getCDPStatus:(id)status reply:(id)reply;
- (void)icscRepairReset:(id)reset reply:(id)reply;
- (void)invalidateEscrowCache:(id)cache reply:(id)reply;
- (void)isRecoveryKeySet:(id)set reply:(id)reply;
- (void)joinWithCustodianRecoveryKey:(id)key custodianRecoveryKey:(id)recoveryKey reply:(id)reply;
- (void)joinWithInheritanceKey:(id)key inheritanceKey:(id)inheritanceKey reply:(id)reply;
- (void)joinWithRecoveryKey:(id)key recoveryKey:(id)recoveryKey reply:(id)reply;
- (void)launchBottledPeer:(id)peer bottleID:(id)d reply:(id)reply;
- (void)leaveClique:(id)clique reply:(id)reply;
- (void)listOfEligibleBottledPeerRecords:(id)records;
- (void)notifyIDMSTrustLevelChangeForAltDSID:(id)d reply:(id)reply;
- (void)octagonEncryptionPublicKey:(id)key;
- (void)octagonSigningPublicKey:(id)key;
- (void)peerDeviceNamesByPeerID:(id)d reply:(id)reply;
- (void)preflightBottledPeer:(id)peer dsid:(id)dsid reply:(id)reply;
- (void)preflightJoinWithCustodianRecoveryKey:(id)key custodianRecoveryKey:(id)recoveryKey reply:(id)reply;
- (void)preflightJoinWithInheritanceKey:(id)key inheritanceKey:(id)inheritanceKey reply:(id)reply;
- (void)preflightRecoverOctagonUsingRecoveryKey:(id)key recoveryKey:(id)recoveryKey reply:(id)reply;
- (void)recoverWithRecoveryKey:(id)key recoveryKey:(id)recoveryKey reply:(id)reply;
- (void)recreateInheritanceKey:(id)key uuid:(id)uuid oldIK:(id)k reply:(id)reply;
- (void)refetchCKKSPolicy:(id)policy reply:(id)reply;
- (void)removeCustodianRecoveryKey:(id)key uuid:(id)uuid reply:(id)reply;
- (void)removeFriendsInClique:(id)clique peerIDs:(id)ds reply:(id)reply;
- (void)removeInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply;
- (void)removeLocalSecureElementIdentityPeerID:(id)d secureElementIdentityPeerID:(id)iD reply:(id)reply;
- (void)removeRecoveryKey:(id)key reply:(id)reply;
- (void)reroll:(id)reroll reply:(id)reply;
- (void)reset:(id)reset;
- (void)restore:(id)restore dsid:(id)dsid secret:(id)secret escrowRecordID:(id)d reply:(id)reply;
- (void)restoreFromBottle:(id)bottle entropy:(id)entropy bottleID:(id)d reply:(id)reply;
- (void)rpcEpochWithArguments:(id)arguments configuration:(id)configuration reply:(id)reply;
- (void)rpcJoinWithArguments:(id)arguments configuration:(id)configuration vouchData:(id)data vouchSig:(id)sig reply:(id)reply;
- (void)rpcPrepareIdentityAsApplicantWithArguments:(id)arguments configuration:(id)configuration reply:(id)reply;
- (void)rpcVoucherWithArguments:(id)arguments configuration:(id)configuration peerID:(id)d permanentInfo:(id)info permanentInfoSig:(id)sig stableInfo:(id)stableInfo stableInfoSig:(id)infoSig maxCapability:(id)self0 reply:(id)self1;
- (void)scrubBottledPeer:(id)peer bottleID:(id)d reply:(id)reply;
- (void)setAccountSetting:(id)setting setting:(id)a4 reply:(id)reply;
- (void)setCDPEnabled:(id)enabled reply:(id)reply;
- (void)setLocalSecureElementIdentity:(id)identity secureElementIdentity:(id)elementIdentity reply:(id)reply;
- (void)setMachineIDOverride:(id)override machineID:(id)d reply:(id)reply;
- (void)simulateReceivePush:(id)push reply:(id)reply;
- (void)simulateReceiveTDLChangePush:(id)push reply:(id)reply;
- (void)startOctagonStateMachine:(id)machine reply:(id)reply;
- (void)status:(id)status context:(id)context reply:(id)reply;
- (void)status:(id)status reply:(id)reply;
- (void)status:(id)status xpcFd:(id)fd reply:(id)reply;
- (void)storeInheritanceKey:(id)key ik:(id)ik reply:(id)reply;
- (void)tapToRadar:(id)radar description:(id)description radar:(id)a5 reply:(id)reply;
- (void)tlkRecoverabilityForEscrowRecordData:(id)data recordData:(id)recordData source:(int64_t)source reply:(id)reply;
- (void)totalTrustedPeers:(id)peers reply:(id)reply;
- (void)trustedFullPeers:(id)peers reply:(id)reply;
- (void)waitForOctagonUpgrade:(id)upgrade reply:(id)reply;
- (void)waitForPriorityViewKeychainDataRecovery:(id)recovery reply:(id)reply;
@end

@implementation OTControl

- (void)icscRepairReset:(id)reset reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35__OTControl_icscRepairReset_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  resetCopy = reset;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 icscRepairReset:resetCopy reply:v7];
}

- (void)reroll:(id)reroll reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __26__OTControl_reroll_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  rerollCopy = reroll;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 reroll:rerollCopy reply:v7];
}

- (void)areRecoveryKeysDistrusted:(id)distrusted reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__OTControl_areRecoveryKeysDistrusted_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  distrustedCopy = distrusted;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 areRecoveryKeysDistrusted:distrustedCopy reply:v7];
}

- (void)trustedFullPeers:(id)peers reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__OTControl_trustedFullPeers_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  peersCopy = peers;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 trustedFullPeers:peersCopy reply:v7];
}

- (void)totalTrustedPeers:(id)peers reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__OTControl_totalTrustedPeers_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  peersCopy = peers;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 totalTrustedPeers:peersCopy reply:v7];
}

- (void)getAccountMetadata:(id)metadata reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__OTControl_getAccountMetadata_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  metadataCopy = metadata;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 getAccountMetadata:metadataCopy reply:v7];
}

- (void)preflightRecoverOctagonUsingRecoveryKey:(id)key recoveryKey:(id)recoveryKey reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__OTControl_preflightRecoverOctagonUsingRecoveryKey_recoveryKey_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  recoveryKeyCopy = recoveryKey;
  keyCopy = key;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 preflightRecoverOctagonUsingRecoveryKey:keyCopy recoveryKey:recoveryKeyCopy reply:v9];
}

- (void)removeRecoveryKey:(id)key reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__OTControl_removeRecoveryKey_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  keyCopy = key;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 removeRecoveryKey:keyCopy reply:v7];
}

- (void)recoverWithRecoveryKey:(id)key recoveryKey:(id)recoveryKey reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__OTControl_recoverWithRecoveryKey_recoveryKey_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  recoveryKeyCopy = recoveryKey;
  keyCopy = key;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 recoverWithRecoveryKey:keyCopy recoveryKey:recoveryKeyCopy reply:v9];
}

- (void)isRecoveryKeySet:(id)set reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__OTControl_isRecoveryKeySet_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  setCopy = set;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 isRecoveryKeySet:setCopy reply:v7];
}

- (void)setMachineIDOverride:(id)override machineID:(id)d reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__OTControl_setMachineIDOverride_machineID_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  dCopy = d;
  overrideCopy = override;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 setMachineIDOverride:overrideCopy machineID:dCopy reply:v9];
}

- (void)tlkRecoverabilityForEscrowRecordData:(id)data recordData:(id)recordData source:(int64_t)source reply:(id)reply
{
  replyCopy = reply;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__OTControl_tlkRecoverabilityForEscrowRecordData_recordData_source_reply___block_invoke;
  v15[3] = &unk_1E70DECC0;
  v16 = replyCopy;
  v11 = replyCopy;
  recordDataCopy = recordData;
  dataCopy = data;
  v14 = [(OTControl *)self getConnection:v15];
  [v14 tlkRecoverabilityForEscrowRecordData:dataCopy recordData:recordDataCopy source:source reply:v11];
}

- (void)waitForPriorityViewKeychainDataRecovery:(id)recovery reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__OTControl_waitForPriorityViewKeychainDataRecovery_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  recoveryCopy = recovery;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 waitForPriorityViewKeychainDataRecovery:recoveryCopy reply:v7];
}

- (void)fetchAccountSettings:(id)settings reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__OTControl_fetchAccountSettings_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  settingsCopy = settings;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 fetchAccountSettings:settingsCopy reply:v7];
}

- (void)setAccountSetting:(id)setting setting:(id)a4 reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__OTControl_setAccountSetting_setting_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  v10 = a4;
  settingCopy = setting;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 setAccountSetting:settingCopy setting:v10 reply:v9];
}

- (void)fetchTrustedSecureElementIdentities:(id)identities reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__OTControl_fetchTrustedSecureElementIdentities_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  identitiesCopy = identities;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 fetchTrustedSecureElementIdentities:identitiesCopy reply:v7];
}

- (void)removeLocalSecureElementIdentityPeerID:(id)d secureElementIdentityPeerID:(id)iD reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__OTControl_removeLocalSecureElementIdentityPeerID_secureElementIdentityPeerID_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  iDCopy = iD;
  dCopy = d;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 removeLocalSecureElementIdentityPeerID:dCopy secureElementIdentityPeerID:iDCopy reply:v9];
}

- (void)setLocalSecureElementIdentity:(id)identity secureElementIdentity:(id)elementIdentity reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__OTControl_setLocalSecureElementIdentity_secureElementIdentity_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  elementIdentityCopy = elementIdentity;
  identityCopy = identity;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 setLocalSecureElementIdentity:identityCopy secureElementIdentity:elementIdentityCopy reply:v9];
}

- (void)invalidateEscrowCache:(id)cache reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__OTControl_invalidateEscrowCache_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  cacheCopy = cache;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 invalidateEscrowCache:cacheCopy reply:v7];
}

- (void)fetchUserControllableViewsSyncStatusAsync:(id)async reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__OTControl_fetchUserControllableViewsSyncStatusAsync_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  asyncCopy = async;
  v9 = [(OTControl *)self getAsyncConnection:v10];
  [v9 fetchUserControllableViewsSyncStatus:asyncCopy reply:v7];
}

- (void)fetchUserControllableViewsSyncStatus:(id)status reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__OTControl_fetchUserControllableViewsSyncStatus_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  statusCopy = status;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 fetchUserControllableViewsSyncStatus:statusCopy reply:v7];
}

- (void)fetchEscrowRecords:(id)records source:(int64_t)source reply:(id)reply
{
  replyCopy = reply;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__OTControl_fetchEscrowRecords_source_reply___block_invoke;
  v12[3] = &unk_1E70DECC0;
  v13 = replyCopy;
  v9 = replyCopy;
  recordsCopy = records;
  v11 = [(OTControl *)self getConnection:v12];
  [v11 fetchEscrowRecords:recordsCopy source:source reply:v9];
}

- (void)getCDPStatus:(id)status reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__OTControl_getCDPStatus_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  statusCopy = status;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 getCDPStatus:statusCopy reply:v7];
}

- (void)setCDPEnabled:(id)enabled reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33__OTControl_setCDPEnabled_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  enabledCopy = enabled;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 setCDPEnabled:enabledCopy reply:v7];
}

- (void)refetchCKKSPolicy:(id)policy reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__OTControl_refetchCKKSPolicy_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  policyCopy = policy;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 refetchCKKSPolicy:policyCopy reply:v7];
}

- (void)tapToRadar:(id)radar description:(id)description radar:(id)a5 reply:(id)reply
{
  replyCopy = reply;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__OTControl_tapToRadar_description_radar_reply___block_invoke;
  v16[3] = &unk_1E70DECC0;
  v17 = replyCopy;
  v11 = replyCopy;
  v12 = a5;
  descriptionCopy = description;
  radarCopy = radar;
  v15 = [(OTControl *)self getConnection:v16];
  [v15 tapToRadar:radarCopy description:descriptionCopy radar:v12 reply:v11];
}

- (void)waitForOctagonUpgrade:(id)upgrade reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__OTControl_waitForOctagonUpgrade_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  upgradeCopy = upgrade;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 waitForOctagonUpgrade:upgradeCopy reply:v7];
}

- (void)simulateReceiveTDLChangePush:(id)push reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__OTControl_simulateReceiveTDLChangePush_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  pushCopy = push;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 simulateReceiveTDLChangePush:pushCopy reply:v7];
}

- (void)simulateReceivePush:(id)push reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__OTControl_simulateReceivePush_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  pushCopy = push;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 simulateReceivePush:pushCopy reply:v7];
}

- (void)createInheritanceKey:(id)key uuid:(id)uuid claimTokenData:(id)data wrappingKeyData:(id)keyData reply:(id)reply
{
  replyCopy = reply;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__OTControl_createInheritanceKey_uuid_claimTokenData_wrappingKeyData_reply___block_invoke;
  v19[3] = &unk_1E70DECC0;
  v20 = replyCopy;
  v13 = replyCopy;
  keyDataCopy = keyData;
  dataCopy = data;
  uuidCopy = uuid;
  keyCopy = key;
  v18 = [(OTControl *)self getConnection:v19];
  [v18 createInheritanceKey:keyCopy uuid:uuidCopy claimTokenData:dataCopy wrappingKeyData:keyDataCopy reply:v13];
}

- (void)recreateInheritanceKey:(id)key uuid:(id)uuid oldIK:(id)k reply:(id)reply
{
  replyCopy = reply;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__OTControl_recreateInheritanceKey_uuid_oldIK_reply___block_invoke;
  v16[3] = &unk_1E70DECC0;
  v17 = replyCopy;
  v11 = replyCopy;
  kCopy = k;
  uuidCopy = uuid;
  keyCopy = key;
  v15 = [(OTControl *)self getConnection:v16];
  [v15 recreateInheritanceKey:keyCopy uuid:uuidCopy oldIK:kCopy reply:v11];
}

- (void)checkInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__OTControl_checkInheritanceKey_uuid_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  uuidCopy = uuid;
  keyCopy = key;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 checkInheritanceKey:keyCopy uuid:uuidCopy reply:v9];
}

- (void)removeInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__OTControl_removeInheritanceKey_uuid_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  uuidCopy = uuid;
  keyCopy = key;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 removeInheritanceKey:keyCopy uuid:uuidCopy reply:v9];
}

- (void)preflightJoinWithInheritanceKey:(id)key inheritanceKey:(id)inheritanceKey reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__OTControl_preflightJoinWithInheritanceKey_inheritanceKey_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  inheritanceKeyCopy = inheritanceKey;
  keyCopy = key;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 preflightJoinWithInheritanceKey:keyCopy inheritanceKey:inheritanceKeyCopy reply:v9];
}

- (void)joinWithInheritanceKey:(id)key inheritanceKey:(id)inheritanceKey reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__OTControl_joinWithInheritanceKey_inheritanceKey_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  inheritanceKeyCopy = inheritanceKey;
  keyCopy = key;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 joinWithInheritanceKey:keyCopy inheritanceKey:inheritanceKeyCopy reply:v9];
}

- (void)storeInheritanceKey:(id)key ik:(id)ik reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__OTControl_storeInheritanceKey_ik_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  ikCopy = ik;
  keyCopy = key;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 storeInheritanceKey:keyCopy ik:ikCopy reply:v9];
}

- (void)generateInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__OTControl_generateInheritanceKey_uuid_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  uuidCopy = uuid;
  keyCopy = key;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 generateInheritanceKey:keyCopy uuid:uuidCopy reply:v9];
}

- (void)createInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__OTControl_createInheritanceKey_uuid_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  uuidCopy = uuid;
  keyCopy = key;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 createInheritanceKey:keyCopy uuid:uuidCopy reply:v9];
}

- (void)checkCustodianRecoveryKey:(id)key uuid:(id)uuid reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__OTControl_checkCustodianRecoveryKey_uuid_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  uuidCopy = uuid;
  keyCopy = key;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 checkCustodianRecoveryKey:keyCopy uuid:uuidCopy reply:v9];
}

- (void)removeCustodianRecoveryKey:(id)key uuid:(id)uuid reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__OTControl_removeCustodianRecoveryKey_uuid_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  uuidCopy = uuid;
  keyCopy = key;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 removeCustodianRecoveryKey:keyCopy uuid:uuidCopy reply:v9];
}

- (void)preflightJoinWithCustodianRecoveryKey:(id)key custodianRecoveryKey:(id)recoveryKey reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__OTControl_preflightJoinWithCustodianRecoveryKey_custodianRecoveryKey_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  recoveryKeyCopy = recoveryKey;
  keyCopy = key;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 preflightJoinWithCustodianRecoveryKey:keyCopy custodianRecoveryKey:recoveryKeyCopy reply:v9];
}

- (void)joinWithCustodianRecoveryKey:(id)key custodianRecoveryKey:(id)recoveryKey reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__OTControl_joinWithCustodianRecoveryKey_custodianRecoveryKey_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  recoveryKeyCopy = recoveryKey;
  keyCopy = key;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 joinWithCustodianRecoveryKey:keyCopy custodianRecoveryKey:recoveryKeyCopy reply:v9];
}

- (void)createCustodianRecoveryKey:(id)key uuid:(id)uuid reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__OTControl_createCustodianRecoveryKey_uuid_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  uuidCopy = uuid;
  keyCopy = key;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 createCustodianRecoveryKey:keyCopy uuid:uuidCopy reply:v9];
}

- (void)joinWithRecoveryKey:(id)key recoveryKey:(id)recoveryKey reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__OTControl_joinWithRecoveryKey_recoveryKey_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  recoveryKeyCopy = recoveryKey;
  keyCopy = key;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 joinWithRecoveryKey:keyCopy recoveryKey:recoveryKeyCopy reply:v9];
}

- (void)createRecoveryKey:(id)key recoveryKey:(id)recoveryKey reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__OTControl_createRecoveryKey_recoveryKey_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  recoveryKeyCopy = recoveryKey;
  keyCopy = key;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 createRecoveryKey:keyCopy recoveryKey:recoveryKeyCopy reply:v9];
}

- (void)fetchEscrowContents:(id)contents reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__OTControl_fetchEscrowContents_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  contentsCopy = contents;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 fetchEscrowContents:contentsCopy reply:v7];
}

- (void)restoreFromBottle:(id)bottle entropy:(id)entropy bottleID:(id)d reply:(id)reply
{
  replyCopy = reply;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__OTControl_restoreFromBottle_entropy_bottleID_reply___block_invoke;
  v16[3] = &unk_1E70DECC0;
  v17 = replyCopy;
  v11 = replyCopy;
  dCopy = d;
  entropyCopy = entropy;
  bottleCopy = bottle;
  v15 = [(OTControl *)self getConnection:v16];
  [v15 restoreFromBottle:bottleCopy entropy:entropyCopy bottleID:dCopy reply:v11];
}

- (void)fetchAllViableBottles:(id)bottles source:(int64_t)source reply:(id)reply
{
  replyCopy = reply;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__OTControl_fetchAllViableBottles_source_reply___block_invoke;
  v12[3] = &unk_1E70DECC0;
  v13 = replyCopy;
  v9 = replyCopy;
  bottlesCopy = bottles;
  v11 = [(OTControl *)self getConnection:v12];
  [v11 fetchAllViableBottles:bottlesCopy source:source reply:v9];
}

- (void)peerDeviceNamesByPeerID:(id)d reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__OTControl_peerDeviceNamesByPeerID_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  dCopy = d;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 peerDeviceNamesByPeerID:dCopy reply:v7];
}

- (void)removeFriendsInClique:(id)clique peerIDs:(id)ds reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__OTControl_removeFriendsInClique_peerIDs_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  dsCopy = ds;
  cliqueCopy = clique;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 removeFriendsInClique:cliqueCopy peerIDs:dsCopy reply:v9];
}

- (void)leaveClique:(id)clique reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __31__OTControl_leaveClique_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  cliqueCopy = clique;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 leaveClique:cliqueCopy reply:v7];
}

- (void)establish:(id)establish reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __29__OTControl_establish_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  establishCopy = establish;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 establish:establishCopy reply:v7];
}

- (void)startOctagonStateMachine:(id)machine reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__OTControl_startOctagonStateMachine_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  machineCopy = machine;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 startOctagonStateMachine:machineCopy reply:v7];
}

- (void)fetchTrustStatus:(id)status configuration:(id)configuration reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__OTControl_fetchTrustStatus_configuration_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  configurationCopy = configuration;
  statusCopy = status;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 fetchTrustStatus:statusCopy configuration:configurationCopy reply:v9];
}

- (void)fetchCliqueStatus:(id)status configuration:(id)configuration reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__OTControl_fetchCliqueStatus_configuration_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  configurationCopy = configuration;
  statusCopy = status;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 fetchCliqueStatus:statusCopy configuration:configurationCopy reply:v9];
}

- (void)fetchEgoPeerID:(id)d reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__OTControl_fetchEgoPeerID_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v7 = replyCopy;
  dCopy = d;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 fetchEgoPeerID:dCopy reply:v7];
}

- (void)status:(id)status xpcFd:(id)fd reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __32__OTControl_status_xpcFd_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = replyCopy;
  v9 = replyCopy;
  fdCopy = fd;
  statusCopy = status;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 status:statusCopy xpcFd:fdCopy reply:v9];
}

- (void)status:(id)status reply:(id)reply
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A768];
  replyCopy = reply;
  v8 = [v5 errorWithDomain:v6 code:-4 userInfo:0];
  (*(reply + 2))(replyCopy, 0, v8);
}

- (void)status:(id)status context:(id)context reply:(id)reply
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  replyCopy = reply;
  v9 = [v6 errorWithDomain:v7 code:-4 userInfo:0];
  (*(reply + 2))(replyCopy, 0, v9);
}

- (void)scrubBottledPeer:(id)peer bottleID:(id)d reply:(id)reply
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  replyCopy = reply;
  v9 = [v6 errorWithDomain:v7 code:-4 userInfo:0];
  (*(reply + 2))(replyCopy, v9);
}

- (void)launchBottledPeer:(id)peer bottleID:(id)d reply:(id)reply
{
  replyCopy = reply;
  v6 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "launchBottledPeer", v8, 2u);
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  replyCopy[2](replyCopy, v7);
}

- (void)preflightBottledPeer:(id)peer dsid:(id)dsid reply:(id)reply
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  replyCopy = reply;
  v9 = [v6 errorWithDomain:v7 code:-4 userInfo:0];
  (*(reply + 2))(replyCopy, 0, 0, 0, v9);
}

- (void)rpcJoinWithArguments:(id)arguments configuration:(id)configuration vouchData:(id)data vouchSig:(id)sig reply:(id)reply
{
  replyCopy = reply;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __73__OTControl_rpcJoinWithArguments_configuration_vouchData_vouchSig_reply___block_invoke;
  v22[3] = &unk_1E70DECC0;
  v13 = replyCopy;
  v23 = v13;
  sigCopy = sig;
  dataCopy = data;
  configurationCopy = configuration;
  argumentsCopy = arguments;
  v18 = [(OTControl *)self getConnection:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __73__OTControl_rpcJoinWithArguments_configuration_vouchData_vouchSig_reply___block_invoke_2;
  v20[3] = &unk_1E70DECC0;
  v21 = v13;
  v19 = v13;
  [v18 rpcJoinWithArguments:argumentsCopy configuration:configurationCopy vouchData:dataCopy vouchSig:sigCopy reply:v20];
}

- (void)rpcVoucherWithArguments:(id)arguments configuration:(id)configuration peerID:(id)d permanentInfo:(id)info permanentInfoSig:(id)sig stableInfo:(id)stableInfo stableInfoSig:(id)infoSig maxCapability:(id)self0 reply:(id)self1
{
  replyCopy = reply;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __134__OTControl_rpcVoucherWithArguments_configuration_peerID_permanentInfo_permanentInfoSig_stableInfo_stableInfoSig_maxCapability_reply___block_invoke;
  v32[3] = &unk_1E70DECC0;
  v19 = replyCopy;
  v33 = v19;
  capabilityCopy = capability;
  infoSigCopy = infoSig;
  stableInfoCopy = stableInfo;
  sigCopy = sig;
  infoCopy = info;
  dCopy = d;
  configurationCopy = configuration;
  argumentsCopy = arguments;
  v27 = [(OTControl *)self getConnection:v32];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __134__OTControl_rpcVoucherWithArguments_configuration_peerID_permanentInfo_permanentInfoSig_stableInfo_stableInfoSig_maxCapability_reply___block_invoke_2;
  v30[3] = &unk_1E70D4FA8;
  v31 = v19;
  v28 = v19;
  [v27 rpcVoucherWithArguments:argumentsCopy configuration:configurationCopy peerID:dCopy permanentInfo:infoCopy permanentInfoSig:sigCopy stableInfo:stableInfoCopy stableInfoSig:infoSigCopy maxCapability:capabilityCopy reply:v30];
}

- (void)rpcPrepareIdentityAsApplicantWithArguments:(id)arguments configuration:(id)configuration reply:(id)reply
{
  replyCopy = reply;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__OTControl_rpcPrepareIdentityAsApplicantWithArguments_configuration_reply___block_invoke;
  v16[3] = &unk_1E70DECC0;
  v9 = replyCopy;
  v17 = v9;
  configurationCopy = configuration;
  argumentsCopy = arguments;
  v12 = [(OTControl *)self getConnection:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__OTControl_rpcPrepareIdentityAsApplicantWithArguments_configuration_reply___block_invoke_2;
  v14[3] = &unk_1E70D4F80;
  v15 = v9;
  v13 = v9;
  [v12 rpcPrepareIdentityAsApplicantWithArguments:argumentsCopy configuration:configurationCopy reply:v14];
}

- (void)rpcEpochWithArguments:(id)arguments configuration:(id)configuration reply:(id)reply
{
  replyCopy = reply;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__OTControl_rpcEpochWithArguments_configuration_reply___block_invoke;
  v16[3] = &unk_1E70DECC0;
  v9 = replyCopy;
  v17 = v9;
  configurationCopy = configuration;
  argumentsCopy = arguments;
  v12 = [(OTControl *)self getConnection:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__OTControl_rpcEpochWithArguments_configuration_reply___block_invoke_2;
  v14[3] = &unk_1E70D4F58;
  v15 = v9;
  v13 = v9;
  [v12 rpcEpochWithArguments:argumentsCopy configuration:configurationCopy reply:v14];
}

- (void)notifyIDMSTrustLevelChangeForAltDSID:(id)d reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__OTControl_notifyIDMSTrustLevelChangeForAltDSID_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v7 = replyCopy;
  v14 = v7;
  dCopy = d;
  v9 = [(OTControl *)self getConnection:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__OTControl_notifyIDMSTrustLevelChangeForAltDSID_reply___block_invoke_2;
  v11[3] = &unk_1E70DECC0;
  v12 = v7;
  v10 = v7;
  [v9 notifyIDMSTrustLevelChangeForAltDSID:dCopy reply:v11];
}

- (void)appleAccountSignedOut:(id)out reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__OTControl_appleAccountSignedOut_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v7 = replyCopy;
  v14 = v7;
  outCopy = out;
  v9 = [(OTControl *)self getConnection:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__OTControl_appleAccountSignedOut_reply___block_invoke_2;
  v11[3] = &unk_1E70DECC0;
  v12 = v7;
  v10 = v7;
  [v9 appleAccountSignedOut:outCopy reply:v11];
}

- (void)appleAccountSignedIn:(id)in reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__OTControl_appleAccountSignedIn_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v7 = replyCopy;
  v14 = v7;
  inCopy = in;
  v9 = [(OTControl *)self getConnection:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__OTControl_appleAccountSignedIn_reply___block_invoke_2;
  v11[3] = &unk_1E70DECC0;
  v12 = v7;
  v10 = v7;
  [v9 appleAccountSignedIn:inCopy reply:v11];
}

- (void)listOfEligibleBottledPeerRecords:(id)records
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A768];
  recordsCopy = records;
  v7 = [v4 errorWithDomain:v5 code:-4 userInfo:0];
  (*(records + 2))(recordsCopy, MEMORY[0x1E695E0F0], v7);
}

- (void)octagonEncryptionPublicKey:(id)key
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A768];
  keyCopy = key;
  v7 = [v4 errorWithDomain:v5 code:-4 userInfo:0];
  (*(key + 2))(keyCopy, 0, v7);
}

- (void)octagonSigningPublicKey:(id)key
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A768];
  keyCopy = key;
  v7 = [v4 errorWithDomain:v5 code:-4 userInfo:0];
  (*(key + 2))(keyCopy, 0, v7);
}

- (void)reset:(id)reset
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A768];
  resetCopy = reset;
  v7 = [v4 errorWithDomain:v5 code:-4 userInfo:0];
  (*(reset + 2))(resetCopy, 0, v7);
}

- (void)restore:(id)restore dsid:(id)dsid secret:(id)secret escrowRecordID:(id)d reply:(id)reply
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A768];
  replyCopy = reply;
  v11 = [v8 errorWithDomain:v9 code:-4 userInfo:0];
  (*(reply + 2))(replyCopy, 0, 0, v11);
}

- (id)getAsyncConnection:(id)connection
{
  connectionCopy = connection;
  connection = [(OTControl *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:connectionCopy];

  return v6;
}

- (id)getConnection:(id)connection
{
  connectionCopy = connection;
  sync = [(OTControl *)self sync];
  connection = [(OTControl *)self connection];
  v7 = connection;
  if (sync)
  {
    [connection synchronousRemoteObjectProxyWithErrorHandler:connectionCopy];
  }

  else
  {
    [connection remoteObjectProxyWithErrorHandler:connectionCopy];
  }
  v8 = ;

  return v8;
}

- (void)dealloc
{
  connection = [(OTControl *)self connection];
  [connection invalidate];

  v4.receiver = self;
  v4.super_class = OTControl;
  [(OTControl *)&v4 dealloc];
}

- (OTControl)initWithConnection:(id)connection sync:(BOOL)sync
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = OTControl;
  v8 = [(OTControl *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, connection);
    v9->_sync = sync;
  }

  return v9;
}

@end
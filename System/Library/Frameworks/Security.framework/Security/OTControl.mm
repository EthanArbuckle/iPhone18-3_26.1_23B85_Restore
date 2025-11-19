@interface OTControl
- (OTControl)initWithConnection:(id)a3 sync:(BOOL)a4;
- (id)getAsyncConnection:(id)a3;
- (id)getConnection:(id)a3;
- (void)appleAccountSignedIn:(id)a3 reply:(id)a4;
- (void)appleAccountSignedOut:(id)a3 reply:(id)a4;
- (void)areRecoveryKeysDistrusted:(id)a3 reply:(id)a4;
- (void)checkCustodianRecoveryKey:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)checkInheritanceKey:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)createCustodianRecoveryKey:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)createInheritanceKey:(id)a3 uuid:(id)a4 claimTokenData:(id)a5 wrappingKeyData:(id)a6 reply:(id)a7;
- (void)createInheritanceKey:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)createRecoveryKey:(id)a3 recoveryKey:(id)a4 reply:(id)a5;
- (void)dealloc;
- (void)establish:(id)a3 reply:(id)a4;
- (void)fetchAccountSettings:(id)a3 reply:(id)a4;
- (void)fetchAllViableBottles:(id)a3 source:(int64_t)a4 reply:(id)a5;
- (void)fetchCliqueStatus:(id)a3 configuration:(id)a4 reply:(id)a5;
- (void)fetchEgoPeerID:(id)a3 reply:(id)a4;
- (void)fetchEscrowContents:(id)a3 reply:(id)a4;
- (void)fetchEscrowRecords:(id)a3 source:(int64_t)a4 reply:(id)a5;
- (void)fetchTrustStatus:(id)a3 configuration:(id)a4 reply:(id)a5;
- (void)fetchTrustedSecureElementIdentities:(id)a3 reply:(id)a4;
- (void)fetchUserControllableViewsSyncStatus:(id)a3 reply:(id)a4;
- (void)fetchUserControllableViewsSyncStatusAsync:(id)a3 reply:(id)a4;
- (void)generateInheritanceKey:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)getAccountMetadata:(id)a3 reply:(id)a4;
- (void)getCDPStatus:(id)a3 reply:(id)a4;
- (void)icscRepairReset:(id)a3 reply:(id)a4;
- (void)invalidateEscrowCache:(id)a3 reply:(id)a4;
- (void)isRecoveryKeySet:(id)a3 reply:(id)a4;
- (void)joinWithCustodianRecoveryKey:(id)a3 custodianRecoveryKey:(id)a4 reply:(id)a5;
- (void)joinWithInheritanceKey:(id)a3 inheritanceKey:(id)a4 reply:(id)a5;
- (void)joinWithRecoveryKey:(id)a3 recoveryKey:(id)a4 reply:(id)a5;
- (void)launchBottledPeer:(id)a3 bottleID:(id)a4 reply:(id)a5;
- (void)leaveClique:(id)a3 reply:(id)a4;
- (void)listOfEligibleBottledPeerRecords:(id)a3;
- (void)notifyIDMSTrustLevelChangeForAltDSID:(id)a3 reply:(id)a4;
- (void)octagonEncryptionPublicKey:(id)a3;
- (void)octagonSigningPublicKey:(id)a3;
- (void)peerDeviceNamesByPeerID:(id)a3 reply:(id)a4;
- (void)preflightBottledPeer:(id)a3 dsid:(id)a4 reply:(id)a5;
- (void)preflightJoinWithCustodianRecoveryKey:(id)a3 custodianRecoveryKey:(id)a4 reply:(id)a5;
- (void)preflightJoinWithInheritanceKey:(id)a3 inheritanceKey:(id)a4 reply:(id)a5;
- (void)preflightRecoverOctagonUsingRecoveryKey:(id)a3 recoveryKey:(id)a4 reply:(id)a5;
- (void)recoverWithRecoveryKey:(id)a3 recoveryKey:(id)a4 reply:(id)a5;
- (void)recreateInheritanceKey:(id)a3 uuid:(id)a4 oldIK:(id)a5 reply:(id)a6;
- (void)refetchCKKSPolicy:(id)a3 reply:(id)a4;
- (void)removeCustodianRecoveryKey:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)removeFriendsInClique:(id)a3 peerIDs:(id)a4 reply:(id)a5;
- (void)removeInheritanceKey:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)removeLocalSecureElementIdentityPeerID:(id)a3 secureElementIdentityPeerID:(id)a4 reply:(id)a5;
- (void)removeRecoveryKey:(id)a3 reply:(id)a4;
- (void)reroll:(id)a3 reply:(id)a4;
- (void)reset:(id)a3;
- (void)restore:(id)a3 dsid:(id)a4 secret:(id)a5 escrowRecordID:(id)a6 reply:(id)a7;
- (void)restoreFromBottle:(id)a3 entropy:(id)a4 bottleID:(id)a5 reply:(id)a6;
- (void)rpcEpochWithArguments:(id)a3 configuration:(id)a4 reply:(id)a5;
- (void)rpcJoinWithArguments:(id)a3 configuration:(id)a4 vouchData:(id)a5 vouchSig:(id)a6 reply:(id)a7;
- (void)rpcPrepareIdentityAsApplicantWithArguments:(id)a3 configuration:(id)a4 reply:(id)a5;
- (void)rpcVoucherWithArguments:(id)a3 configuration:(id)a4 peerID:(id)a5 permanentInfo:(id)a6 permanentInfoSig:(id)a7 stableInfo:(id)a8 stableInfoSig:(id)a9 maxCapability:(id)a10 reply:(id)a11;
- (void)scrubBottledPeer:(id)a3 bottleID:(id)a4 reply:(id)a5;
- (void)setAccountSetting:(id)a3 setting:(id)a4 reply:(id)a5;
- (void)setCDPEnabled:(id)a3 reply:(id)a4;
- (void)setLocalSecureElementIdentity:(id)a3 secureElementIdentity:(id)a4 reply:(id)a5;
- (void)setMachineIDOverride:(id)a3 machineID:(id)a4 reply:(id)a5;
- (void)simulateReceivePush:(id)a3 reply:(id)a4;
- (void)simulateReceiveTDLChangePush:(id)a3 reply:(id)a4;
- (void)startOctagonStateMachine:(id)a3 reply:(id)a4;
- (void)status:(id)a3 context:(id)a4 reply:(id)a5;
- (void)status:(id)a3 reply:(id)a4;
- (void)status:(id)a3 xpcFd:(id)a4 reply:(id)a5;
- (void)storeInheritanceKey:(id)a3 ik:(id)a4 reply:(id)a5;
- (void)tapToRadar:(id)a3 description:(id)a4 radar:(id)a5 reply:(id)a6;
- (void)tlkRecoverabilityForEscrowRecordData:(id)a3 recordData:(id)a4 source:(int64_t)a5 reply:(id)a6;
- (void)totalTrustedPeers:(id)a3 reply:(id)a4;
- (void)trustedFullPeers:(id)a3 reply:(id)a4;
- (void)waitForOctagonUpgrade:(id)a3 reply:(id)a4;
- (void)waitForPriorityViewKeychainDataRecovery:(id)a3 reply:(id)a4;
@end

@implementation OTControl

- (void)icscRepairReset:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35__OTControl_icscRepairReset_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 icscRepairReset:v8 reply:v7];
}

- (void)reroll:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __26__OTControl_reroll_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 reroll:v8 reply:v7];
}

- (void)areRecoveryKeysDistrusted:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__OTControl_areRecoveryKeysDistrusted_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 areRecoveryKeysDistrusted:v8 reply:v7];
}

- (void)trustedFullPeers:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__OTControl_trustedFullPeers_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 trustedFullPeers:v8 reply:v7];
}

- (void)totalTrustedPeers:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__OTControl_totalTrustedPeers_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 totalTrustedPeers:v8 reply:v7];
}

- (void)getAccountMetadata:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__OTControl_getAccountMetadata_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 getAccountMetadata:v8 reply:v7];
}

- (void)preflightRecoverOctagonUsingRecoveryKey:(id)a3 recoveryKey:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__OTControl_preflightRecoverOctagonUsingRecoveryKey_recoveryKey_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 preflightRecoverOctagonUsingRecoveryKey:v11 recoveryKey:v10 reply:v9];
}

- (void)removeRecoveryKey:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__OTControl_removeRecoveryKey_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 removeRecoveryKey:v8 reply:v7];
}

- (void)recoverWithRecoveryKey:(id)a3 recoveryKey:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__OTControl_recoverWithRecoveryKey_recoveryKey_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 recoverWithRecoveryKey:v11 recoveryKey:v10 reply:v9];
}

- (void)isRecoveryKeySet:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__OTControl_isRecoveryKeySet_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 isRecoveryKeySet:v8 reply:v7];
}

- (void)setMachineIDOverride:(id)a3 machineID:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__OTControl_setMachineIDOverride_machineID_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 setMachineIDOverride:v11 machineID:v10 reply:v9];
}

- (void)tlkRecoverabilityForEscrowRecordData:(id)a3 recordData:(id)a4 source:(int64_t)a5 reply:(id)a6
{
  v10 = a6;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__OTControl_tlkRecoverabilityForEscrowRecordData_recordData_source_reply___block_invoke;
  v15[3] = &unk_1E70DECC0;
  v16 = v10;
  v11 = v10;
  v12 = a4;
  v13 = a3;
  v14 = [(OTControl *)self getConnection:v15];
  [v14 tlkRecoverabilityForEscrowRecordData:v13 recordData:v12 source:a5 reply:v11];
}

- (void)waitForPriorityViewKeychainDataRecovery:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__OTControl_waitForPriorityViewKeychainDataRecovery_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 waitForPriorityViewKeychainDataRecovery:v8 reply:v7];
}

- (void)fetchAccountSettings:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__OTControl_fetchAccountSettings_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 fetchAccountSettings:v8 reply:v7];
}

- (void)setAccountSetting:(id)a3 setting:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__OTControl_setAccountSetting_setting_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 setAccountSetting:v11 setting:v10 reply:v9];
}

- (void)fetchTrustedSecureElementIdentities:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__OTControl_fetchTrustedSecureElementIdentities_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 fetchTrustedSecureElementIdentities:v8 reply:v7];
}

- (void)removeLocalSecureElementIdentityPeerID:(id)a3 secureElementIdentityPeerID:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__OTControl_removeLocalSecureElementIdentityPeerID_secureElementIdentityPeerID_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 removeLocalSecureElementIdentityPeerID:v11 secureElementIdentityPeerID:v10 reply:v9];
}

- (void)setLocalSecureElementIdentity:(id)a3 secureElementIdentity:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__OTControl_setLocalSecureElementIdentity_secureElementIdentity_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 setLocalSecureElementIdentity:v11 secureElementIdentity:v10 reply:v9];
}

- (void)invalidateEscrowCache:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__OTControl_invalidateEscrowCache_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 invalidateEscrowCache:v8 reply:v7];
}

- (void)fetchUserControllableViewsSyncStatusAsync:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__OTControl_fetchUserControllableViewsSyncStatusAsync_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getAsyncConnection:v10];
  [v9 fetchUserControllableViewsSyncStatus:v8 reply:v7];
}

- (void)fetchUserControllableViewsSyncStatus:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__OTControl_fetchUserControllableViewsSyncStatus_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 fetchUserControllableViewsSyncStatus:v8 reply:v7];
}

- (void)fetchEscrowRecords:(id)a3 source:(int64_t)a4 reply:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__OTControl_fetchEscrowRecords_source_reply___block_invoke;
  v12[3] = &unk_1E70DECC0;
  v13 = v8;
  v9 = v8;
  v10 = a3;
  v11 = [(OTControl *)self getConnection:v12];
  [v11 fetchEscrowRecords:v10 source:a4 reply:v9];
}

- (void)getCDPStatus:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__OTControl_getCDPStatus_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 getCDPStatus:v8 reply:v7];
}

- (void)setCDPEnabled:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33__OTControl_setCDPEnabled_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 setCDPEnabled:v8 reply:v7];
}

- (void)refetchCKKSPolicy:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__OTControl_refetchCKKSPolicy_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 refetchCKKSPolicy:v8 reply:v7];
}

- (void)tapToRadar:(id)a3 description:(id)a4 radar:(id)a5 reply:(id)a6
{
  v10 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__OTControl_tapToRadar_description_radar_reply___block_invoke;
  v16[3] = &unk_1E70DECC0;
  v17 = v10;
  v11 = v10;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(OTControl *)self getConnection:v16];
  [v15 tapToRadar:v14 description:v13 radar:v12 reply:v11];
}

- (void)waitForOctagonUpgrade:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__OTControl_waitForOctagonUpgrade_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 waitForOctagonUpgrade:v8 reply:v7];
}

- (void)simulateReceiveTDLChangePush:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__OTControl_simulateReceiveTDLChangePush_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 simulateReceiveTDLChangePush:v8 reply:v7];
}

- (void)simulateReceivePush:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__OTControl_simulateReceivePush_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 simulateReceivePush:v8 reply:v7];
}

- (void)createInheritanceKey:(id)a3 uuid:(id)a4 claimTokenData:(id)a5 wrappingKeyData:(id)a6 reply:(id)a7
{
  v12 = a7;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__OTControl_createInheritanceKey_uuid_claimTokenData_wrappingKeyData_reply___block_invoke;
  v19[3] = &unk_1E70DECC0;
  v20 = v12;
  v13 = v12;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(OTControl *)self getConnection:v19];
  [v18 createInheritanceKey:v17 uuid:v16 claimTokenData:v15 wrappingKeyData:v14 reply:v13];
}

- (void)recreateInheritanceKey:(id)a3 uuid:(id)a4 oldIK:(id)a5 reply:(id)a6
{
  v10 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__OTControl_recreateInheritanceKey_uuid_oldIK_reply___block_invoke;
  v16[3] = &unk_1E70DECC0;
  v17 = v10;
  v11 = v10;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(OTControl *)self getConnection:v16];
  [v15 recreateInheritanceKey:v14 uuid:v13 oldIK:v12 reply:v11];
}

- (void)checkInheritanceKey:(id)a3 uuid:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__OTControl_checkInheritanceKey_uuid_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 checkInheritanceKey:v11 uuid:v10 reply:v9];
}

- (void)removeInheritanceKey:(id)a3 uuid:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__OTControl_removeInheritanceKey_uuid_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 removeInheritanceKey:v11 uuid:v10 reply:v9];
}

- (void)preflightJoinWithInheritanceKey:(id)a3 inheritanceKey:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__OTControl_preflightJoinWithInheritanceKey_inheritanceKey_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 preflightJoinWithInheritanceKey:v11 inheritanceKey:v10 reply:v9];
}

- (void)joinWithInheritanceKey:(id)a3 inheritanceKey:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__OTControl_joinWithInheritanceKey_inheritanceKey_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 joinWithInheritanceKey:v11 inheritanceKey:v10 reply:v9];
}

- (void)storeInheritanceKey:(id)a3 ik:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__OTControl_storeInheritanceKey_ik_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 storeInheritanceKey:v11 ik:v10 reply:v9];
}

- (void)generateInheritanceKey:(id)a3 uuid:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__OTControl_generateInheritanceKey_uuid_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 generateInheritanceKey:v11 uuid:v10 reply:v9];
}

- (void)createInheritanceKey:(id)a3 uuid:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__OTControl_createInheritanceKey_uuid_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 createInheritanceKey:v11 uuid:v10 reply:v9];
}

- (void)checkCustodianRecoveryKey:(id)a3 uuid:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__OTControl_checkCustodianRecoveryKey_uuid_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 checkCustodianRecoveryKey:v11 uuid:v10 reply:v9];
}

- (void)removeCustodianRecoveryKey:(id)a3 uuid:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__OTControl_removeCustodianRecoveryKey_uuid_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 removeCustodianRecoveryKey:v11 uuid:v10 reply:v9];
}

- (void)preflightJoinWithCustodianRecoveryKey:(id)a3 custodianRecoveryKey:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__OTControl_preflightJoinWithCustodianRecoveryKey_custodianRecoveryKey_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 preflightJoinWithCustodianRecoveryKey:v11 custodianRecoveryKey:v10 reply:v9];
}

- (void)joinWithCustodianRecoveryKey:(id)a3 custodianRecoveryKey:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__OTControl_joinWithCustodianRecoveryKey_custodianRecoveryKey_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 joinWithCustodianRecoveryKey:v11 custodianRecoveryKey:v10 reply:v9];
}

- (void)createCustodianRecoveryKey:(id)a3 uuid:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__OTControl_createCustodianRecoveryKey_uuid_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 createCustodianRecoveryKey:v11 uuid:v10 reply:v9];
}

- (void)joinWithRecoveryKey:(id)a3 recoveryKey:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__OTControl_joinWithRecoveryKey_recoveryKey_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 joinWithRecoveryKey:v11 recoveryKey:v10 reply:v9];
}

- (void)createRecoveryKey:(id)a3 recoveryKey:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__OTControl_createRecoveryKey_recoveryKey_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 createRecoveryKey:v11 recoveryKey:v10 reply:v9];
}

- (void)fetchEscrowContents:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__OTControl_fetchEscrowContents_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 fetchEscrowContents:v8 reply:v7];
}

- (void)restoreFromBottle:(id)a3 entropy:(id)a4 bottleID:(id)a5 reply:(id)a6
{
  v10 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__OTControl_restoreFromBottle_entropy_bottleID_reply___block_invoke;
  v16[3] = &unk_1E70DECC0;
  v17 = v10;
  v11 = v10;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(OTControl *)self getConnection:v16];
  [v15 restoreFromBottle:v14 entropy:v13 bottleID:v12 reply:v11];
}

- (void)fetchAllViableBottles:(id)a3 source:(int64_t)a4 reply:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__OTControl_fetchAllViableBottles_source_reply___block_invoke;
  v12[3] = &unk_1E70DECC0;
  v13 = v8;
  v9 = v8;
  v10 = a3;
  v11 = [(OTControl *)self getConnection:v12];
  [v11 fetchAllViableBottles:v10 source:a4 reply:v9];
}

- (void)peerDeviceNamesByPeerID:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__OTControl_peerDeviceNamesByPeerID_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 peerDeviceNamesByPeerID:v8 reply:v7];
}

- (void)removeFriendsInClique:(id)a3 peerIDs:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__OTControl_removeFriendsInClique_peerIDs_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 removeFriendsInClique:v11 peerIDs:v10 reply:v9];
}

- (void)leaveClique:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __31__OTControl_leaveClique_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 leaveClique:v8 reply:v7];
}

- (void)establish:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __29__OTControl_establish_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 establish:v8 reply:v7];
}

- (void)startOctagonStateMachine:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__OTControl_startOctagonStateMachine_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 startOctagonStateMachine:v8 reply:v7];
}

- (void)fetchTrustStatus:(id)a3 configuration:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__OTControl_fetchTrustStatus_configuration_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 fetchTrustStatus:v11 configuration:v10 reply:v9];
}

- (void)fetchCliqueStatus:(id)a3 configuration:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__OTControl_fetchCliqueStatus_configuration_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 fetchCliqueStatus:v11 configuration:v10 reply:v9];
}

- (void)fetchEgoPeerID:(id)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__OTControl_fetchEgoPeerID_reply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v10];
  [v9 fetchEgoPeerID:v8 reply:v7];
}

- (void)status:(id)a3 xpcFd:(id)a4 reply:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __32__OTControl_status_xpcFd_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v13];
  [v12 status:v11 xpcFd:v10 reply:v9];
}

- (void)status:(id)a3 reply:(id)a4
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A768];
  v7 = a4;
  v8 = [v5 errorWithDomain:v6 code:-4 userInfo:0];
  (*(a4 + 2))(v7, 0, v8);
}

- (void)status:(id)a3 context:(id)a4 reply:(id)a5
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  v8 = a5;
  v9 = [v6 errorWithDomain:v7 code:-4 userInfo:0];
  (*(a5 + 2))(v8, 0, v9);
}

- (void)scrubBottledPeer:(id)a3 bottleID:(id)a4 reply:(id)a5
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  v8 = a5;
  v9 = [v6 errorWithDomain:v7 code:-4 userInfo:0];
  (*(a5 + 2))(v8, v9);
}

- (void)launchBottledPeer:(id)a3 bottleID:(id)a4 reply:(id)a5
{
  v5 = a5;
  v6 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "launchBottledPeer", v8, 2u);
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  v5[2](v5, v7);
}

- (void)preflightBottledPeer:(id)a3 dsid:(id)a4 reply:(id)a5
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  v8 = a5;
  v9 = [v6 errorWithDomain:v7 code:-4 userInfo:0];
  (*(a5 + 2))(v8, 0, 0, 0, v9);
}

- (void)rpcJoinWithArguments:(id)a3 configuration:(id)a4 vouchData:(id)a5 vouchSig:(id)a6 reply:(id)a7
{
  v12 = a7;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __73__OTControl_rpcJoinWithArguments_configuration_vouchData_vouchSig_reply___block_invoke;
  v22[3] = &unk_1E70DECC0;
  v13 = v12;
  v23 = v13;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(OTControl *)self getConnection:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __73__OTControl_rpcJoinWithArguments_configuration_vouchData_vouchSig_reply___block_invoke_2;
  v20[3] = &unk_1E70DECC0;
  v21 = v13;
  v19 = v13;
  [v18 rpcJoinWithArguments:v17 configuration:v16 vouchData:v15 vouchSig:v14 reply:v20];
}

- (void)rpcVoucherWithArguments:(id)a3 configuration:(id)a4 peerID:(id)a5 permanentInfo:(id)a6 permanentInfoSig:(id)a7 stableInfo:(id)a8 stableInfoSig:(id)a9 maxCapability:(id)a10 reply:(id)a11
{
  v18 = a11;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __134__OTControl_rpcVoucherWithArguments_configuration_peerID_permanentInfo_permanentInfoSig_stableInfo_stableInfoSig_maxCapability_reply___block_invoke;
  v32[3] = &unk_1E70DECC0;
  v19 = v18;
  v33 = v19;
  v29 = a10;
  v20 = a9;
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v27 = [(OTControl *)self getConnection:v32];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __134__OTControl_rpcVoucherWithArguments_configuration_peerID_permanentInfo_permanentInfoSig_stableInfo_stableInfoSig_maxCapability_reply___block_invoke_2;
  v30[3] = &unk_1E70D4FA8;
  v31 = v19;
  v28 = v19;
  [v27 rpcVoucherWithArguments:v26 configuration:v25 peerID:v24 permanentInfo:v23 permanentInfoSig:v22 stableInfo:v21 stableInfoSig:v20 maxCapability:v29 reply:v30];
}

- (void)rpcPrepareIdentityAsApplicantWithArguments:(id)a3 configuration:(id)a4 reply:(id)a5
{
  v8 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__OTControl_rpcPrepareIdentityAsApplicantWithArguments_configuration_reply___block_invoke;
  v16[3] = &unk_1E70DECC0;
  v9 = v8;
  v17 = v9;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__OTControl_rpcPrepareIdentityAsApplicantWithArguments_configuration_reply___block_invoke_2;
  v14[3] = &unk_1E70D4F80;
  v15 = v9;
  v13 = v9;
  [v12 rpcPrepareIdentityAsApplicantWithArguments:v11 configuration:v10 reply:v14];
}

- (void)rpcEpochWithArguments:(id)a3 configuration:(id)a4 reply:(id)a5
{
  v8 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__OTControl_rpcEpochWithArguments_configuration_reply___block_invoke;
  v16[3] = &unk_1E70DECC0;
  v9 = v8;
  v17 = v9;
  v10 = a4;
  v11 = a3;
  v12 = [(OTControl *)self getConnection:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__OTControl_rpcEpochWithArguments_configuration_reply___block_invoke_2;
  v14[3] = &unk_1E70D4F58;
  v15 = v9;
  v13 = v9;
  [v12 rpcEpochWithArguments:v11 configuration:v10 reply:v14];
}

- (void)notifyIDMSTrustLevelChangeForAltDSID:(id)a3 reply:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__OTControl_notifyIDMSTrustLevelChangeForAltDSID_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__OTControl_notifyIDMSTrustLevelChangeForAltDSID_reply___block_invoke_2;
  v11[3] = &unk_1E70DECC0;
  v12 = v7;
  v10 = v7;
  [v9 notifyIDMSTrustLevelChangeForAltDSID:v8 reply:v11];
}

- (void)appleAccountSignedOut:(id)a3 reply:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__OTControl_appleAccountSignedOut_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__OTControl_appleAccountSignedOut_reply___block_invoke_2;
  v11[3] = &unk_1E70DECC0;
  v12 = v7;
  v10 = v7;
  [v9 appleAccountSignedOut:v8 reply:v11];
}

- (void)appleAccountSignedIn:(id)a3 reply:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__OTControl_appleAccountSignedIn_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(OTControl *)self getConnection:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__OTControl_appleAccountSignedIn_reply___block_invoke_2;
  v11[3] = &unk_1E70DECC0;
  v12 = v7;
  v10 = v7;
  [v9 appleAccountSignedIn:v8 reply:v11];
}

- (void)listOfEligibleBottledPeerRecords:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A768];
  v6 = a3;
  v7 = [v4 errorWithDomain:v5 code:-4 userInfo:0];
  (*(a3 + 2))(v6, MEMORY[0x1E695E0F0], v7);
}

- (void)octagonEncryptionPublicKey:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A768];
  v6 = a3;
  v7 = [v4 errorWithDomain:v5 code:-4 userInfo:0];
  (*(a3 + 2))(v6, 0, v7);
}

- (void)octagonSigningPublicKey:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A768];
  v6 = a3;
  v7 = [v4 errorWithDomain:v5 code:-4 userInfo:0];
  (*(a3 + 2))(v6, 0, v7);
}

- (void)reset:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A768];
  v6 = a3;
  v7 = [v4 errorWithDomain:v5 code:-4 userInfo:0];
  (*(a3 + 2))(v6, 0, v7);
}

- (void)restore:(id)a3 dsid:(id)a4 secret:(id)a5 escrowRecordID:(id)a6 reply:(id)a7
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A768];
  v10 = a7;
  v11 = [v8 errorWithDomain:v9 code:-4 userInfo:0];
  (*(a7 + 2))(v10, 0, 0, v11);
}

- (id)getAsyncConnection:(id)a3
{
  v4 = a3;
  v5 = [(OTControl *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)getConnection:(id)a3
{
  v4 = a3;
  v5 = [(OTControl *)self sync];
  v6 = [(OTControl *)self connection];
  v7 = v6;
  if (v5)
  {
    [v6 synchronousRemoteObjectProxyWithErrorHandler:v4];
  }

  else
  {
    [v6 remoteObjectProxyWithErrorHandler:v4];
  }
  v8 = ;

  return v8;
}

- (void)dealloc
{
  v3 = [(OTControl *)self connection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = OTControl;
  [(OTControl *)&v4 dealloc];
}

- (OTControl)initWithConnection:(id)a3 sync:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = OTControl;
  v8 = [(OTControl *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, a3);
    v9->_sync = a4;
  }

  return v9;
}

@end
@interface OTClique
+ (BOOL)clearCliqueFromAccount:(id)account error:(id *)error;
+ (BOOL)isCloudServicesAvailable;
+ (BOOL)performCKServerUnreadableDataRemoval:(id)removal error:(id *)error;
+ (BOOL)platformSupportsSOS;
+ (BOOL)setCDPEnabled:(id)enabled error:(id *)error;
+ (id)fetchEscrowRecordsInternal:(id)internal error:(id *)error;
+ (id)findOptimalBottleIDsWithContextData:(id)data error:(id *)error;
+ (id)newFriendsWithContextData:(id)data resetReason:(int64_t)reason error:(id *)error;
+ (id)performEscrowRecoveryWithContextData:(id)data escrowArguments:(id)arguments error:(id *)error;
+ (id)recoverWithContextData:(id)data bottleID:(id)d escrowedEntropy:(id)entropy error:(id *)error;
+ (id)resetProtectedData:(id)data idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s error:(id *)error;
+ (int64_t)getCDPStatus:(id)status error:(id *)error;
+ (void)checkCustodianRecoveryKey:(id)key custodianRecoveryKeyUUID:(id)d reply:(id)reply;
+ (void)checkInheritanceKey:(id)key inheritanceKeyUUID:(id)d reply:(id)reply;
+ (void)createCustodianRecoveryKey:(id)key uuid:(id)uuid reply:(id)reply;
+ (void)createInheritanceKey:(id)key uuid:(id)uuid claimTokenData:(id)data wrappingKeyData:(id)keyData reply:(id)reply;
+ (void)createInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply;
+ (void)generateInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply;
+ (void)preflightRecoverOctagonUsingCustodianRecoveryKey:(id)key custodianRecoveryKey:(id)recoveryKey reply:(id)reply;
+ (void)preflightRecoverOctagonUsingInheritanceKey:(id)key inheritanceKey:(id)inheritanceKey reply:(id)reply;
+ (void)recoverOctagonUsingCustodianRecoveryKey:(id)key custodianRecoveryKey:(id)recoveryKey reply:(id)reply;
+ (void)recoverOctagonUsingInheritanceKey:(id)key inheritanceKey:(id)inheritanceKey reply:(id)reply;
+ (void)recreateInheritanceKey:(id)key uuid:(id)uuid oldIK:(id)k reply:(id)reply;
+ (void)removeCustodianRecoveryKey:(id)key custodianRecoveryKeyUUID:(id)d reply:(id)reply;
+ (void)removeInheritanceKey:(id)key inheritanceKeyUUID:(id)d reply:(id)reply;
+ (void)setNewRecoveryKeyWithData:(id)data recoveryKey:(id)key reply:(id)reply;
+ (void)storeInheritanceKey:(id)key ik:(id)ik reply:(id)reply;
- (BOOL)accountUserKeyAvailable;
- (BOOL)establish:(id *)establish;
- (BOOL)establish:(id)establish error:(id *)error;
- (BOOL)fetchUserControllableViewsSyncingEnabled:(id *)enabled;
- (BOOL)joinAfterRestore:(id *)restore;
- (BOOL)leaveClique:(id *)clique;
- (BOOL)peersHaveViewsEnabled:(id)enabled error:(id *)error;
- (BOOL)removeFriendsInClique:(id)clique error:(id *)error;
- (BOOL)requestToJoinCircle:(id *)circle;
- (BOOL)setUserCredentialsAndDSID:(id)d password:(id)password error:(id *)error;
- (BOOL)setUserCredentialsWithLabel:(id)label password:(id)password dsid:(id)dsid error:(id *)error;
- (BOOL)tryUserCredentialsAndDSID:(id)d password:(id)password error:(id *)error;
- (BOOL)tryUserCredentialsWithLabel:(id)label password:(id)password dsid:(id)dsid error:(id *)error;
- (BOOL)waitForInitialSync:(id *)sync;
- (BOOL)waitForOctagonUpgrade:(id *)upgrade;
- (OTClique)initWithContextData:(id)data;
- (id)cliqueMemberIdentifier:(id *)identifier;
- (id)copyPeerPeerInfo:(id *)info;
- (id)copyViewUnawarePeerInfo:(id *)info;
- (id)description;
- (id)makeOTControl:(id *)control;
- (id)peerDeviceNamesByPeerID:(id *)d;
- (id)setupPairingChannelAsAcceptor:(id)acceptor;
- (id)setupPairingChannelAsAcceptor:(id)acceptor error:(id *)error;
- (id)setupPairingChannelAsInitator:(id)initator error:(id *)error;
- (id)setupPairingChannelAsInitiator:(id)initiator;
- (int64_t)_fetchCliqueStatus:(id)status error:(id *)error;
- (int64_t)cachedCliqueStatus:(BOOL)status error:(id *)error;
- (int64_t)fetchCliqueStatus:(id *)status;
- (void)fetchEscrowContents:(id)contents;
- (void)fetchUserControllableViewsSyncingEnabledAsync:(id)async;
@end

@implementation OTClique

- (BOOL)waitForOctagonUpgrade:(id *)upgrade
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = _OctagonSignpostLogSystem();
  v6 = os_signpost_id_generate(v5);
  v7 = mach_continuous_time();

  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  v10 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "WaitForOctagonUpgrade", " enableTelemetry=YES ", buf, 2u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: WaitForOctagonUpgrade  enableTelemetry=YES ", buf, 0xCu);
  }

  v37 = 0;
  v12 = [(OTClique *)self makeOTControl:&v37];
  v13 = v37;
  if (v12)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v45 = __Block_byref_object_copy__5565;
    v46 = __Block_byref_object_dispose__5566;
    v47 = 0;
    v14 = [OTControlArguments alloc];
    v15 = [(OTClique *)self ctx];
    v16 = [(OTControlArguments *)v14 initWithConfiguration:v15];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __34__OTClique_waitForOctagonUpgrade___block_invoke;
    v32[3] = &unk_1E70D6D00;
    v32[4] = buf;
    v32[5] = &v33;
    [v12 waitForOctagonUpgrade:v16 reply:v32];

    if (upgrade)
    {
      v17 = *(*&buf[8] + 40);
      if (v17)
      {
        *upgrade = v17;
      }
    }

    v18 = *(v34 + 24);
    Nanoseconds = _OctagonSignpostGetNanoseconds(v6, v7);
    v20 = _OctagonSignpostLogSystem();
    v21 = v20;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *v38 = 67240192;
      LODWORD(v39) = v18;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v21, OS_SIGNPOST_INTERVAL_END, v6, "WaitForOctagonUpgrade", " OctagonSignpostNameWaitForOctagonUpgrade=%{public,signpost.telemetry:number1,name=OctagonSignpostNameWaitForOctagonUpgrade}d ", v38, 8u);
    }

    v22 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 134218496;
      v39 = v6;
      v40 = 2048;
      v41 = Nanoseconds / 1000000000.0;
      v42 = 1026;
      v43 = v18;
      _os_log_impl(&dword_1887D2000, v22, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: WaitForOctagonUpgrade  OctagonSignpostNameWaitForOctagonUpgrade=%{public,signpost.telemetry:number1,name=OctagonSignpostNameWaitForOctagonUpgrade}d ", v38, 0x1Cu);
    }

    v23 = *(v34 + 24);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v24 = secLogObjForScope("clique-waitforoctagonupgrade");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v13;
      _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, "octagon, failed to fetch OTControl object: %@", buf, 0xCu);
    }

    if (upgrade)
    {
      v25 = v13;
      *upgrade = v13;
    }

    v26 = _OctagonSignpostGetNanoseconds(v6, v7);
    v27 = _OctagonSignpostLogSystem();
    v28 = v27;
    if (v10 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v27))
    {
      *buf = 67240192;
      *&buf[4] = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v28, OS_SIGNPOST_INTERVAL_END, v6, "WaitForOctagonUpgrade", " OctagonSignpostNameWaitForOctagonUpgrade=%{public,signpost.telemetry:number1,name=OctagonSignpostNameWaitForOctagonUpgrade}d ", buf, 8u);
    }

    v29 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = v26 / 1000000000.0;
      *&buf[22] = 1026;
      LODWORD(v45) = 0;
      _os_log_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: WaitForOctagonUpgrade  OctagonSignpostNameWaitForOctagonUpgrade=%{public,signpost.telemetry:number1,name=OctagonSignpostNameWaitForOctagonUpgrade}d ", buf, 0x1Cu);
    }

    v23 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v23 & 1;
}

void __34__OTClique_waitForOctagonUpgrade___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("clique-waitforoctagonupgrade");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "error from control: %@", &v10, 0xCu);
    }

    v6 = *(*(a1 + 32) + 8);
    v7 = v3;
    v8 = 0;
    v4 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    if (v5)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "successfully upgraded to octagon", &v10, 2u);
    }

    v8 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v8;
  v9 = *MEMORY[0x1E69E9840];
}

void __60__OTClique_performedCDPStateMachineRun_success_error_reply___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = COERCE_DOUBLE(a2);
  if (v3 != 0.0)
  {
    v4 = secLogObjForScope("clique-cdp-sm");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v29 = 138412546;
      v30 = v5;
      v31 = 2112;
      v32 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "failed to post %@ result: %@ ", &v29, 0x16u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
    v7 = _OctagonSignpostLogSystem();
    v8 = v7;
    v9 = *(a1 + 64);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = *(*(*(a1 + 56) + 8) + 24);
      v29 = 67240192;
      LODWORD(v30) = v10;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PerformedCDPStateMachineRun", " OctagonSignpostNamePerformedCDPStateMachineRun=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformedCDPStateMachineRun}d ", &v29, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 134218496;
      v12 = *(*(*(a1 + 56) + 8) + 24);
      v30 = *(a1 + 64);
      v31 = 2048;
      v32 = Nanoseconds / 1000000000.0;
      v33 = 1026;
      v34 = v12;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformedCDPStateMachineRun  OctagonSignpostNamePerformedCDPStateMachineRun=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformedCDPStateMachineRun}d ", &v29, 0x1Cu);
    }

    goto LABEL_21;
  }

  v13 = *(a1 + 80);
  v14 = secLogObjForScope("clique-cdp-sm");
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13 == 1)
  {
    if (!v15)
    {
      goto LABEL_16;
    }

    v16 = *(a1 + 32);
    v29 = 138412290;
    v30 = v16;
    v17 = "posted success: %@";
    v18 = v14;
    v19 = 12;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_16;
    }

    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v29 = 138412546;
    v30 = v20;
    v31 = 2112;
    v32 = v21;
    v17 = "posted error: %@:  %@";
    v18 = v14;
    v19 = 22;
  }

  _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, v17, &v29, v19);
LABEL_16:

  *(*(*(a1 + 56) + 8) + 24) = *(a1 + 80);
  v22 = _OctagonSignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v23 = _OctagonSignpostLogSystem();
  v24 = v23;
  v25 = *(a1 + 64);
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    v26 = *(*(*(a1 + 56) + 8) + 24);
    v29 = 67240192;
    LODWORD(v30) = v26;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v25, "PerformedCDPStateMachineRun", " OctagonSignpostNamePerformedCDPStateMachineRun=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformedCDPStateMachineRun}d ", &v29, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 134218496;
    v27 = *(*(*(a1 + 56) + 8) + 24);
    v30 = *(a1 + 64);
    v31 = 2048;
    v32 = v22 / 1000000000.0;
    v33 = 1026;
    v34 = v27;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformedCDPStateMachineRun  OctagonSignpostNamePerformedCDPStateMachineRun=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformedCDPStateMachineRun}d ", &v29, 0x1Cu);
  }

LABEL_21:

  (*(*(a1 + 48) + 16))();
  v28 = *MEMORY[0x1E69E9840];
}

- (void)fetchEscrowContents:(id)contents
{
  v42 = *MEMORY[0x1E69E9840];
  contentsCopy = contents;
  v5 = secLogObjForScope("clique-fetchescrow");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(OTClique *)self ctx];
    context = [v6 context];
    v8 = [(OTClique *)self ctx];
    altDSID = [v8 altDSID];
    *buf = 138412546;
    *&buf[4] = context;
    *&buf[12] = 2112;
    *&buf[14] = altDSID;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "fetching entropy for bottling for context:%@, altdsid:%@", buf, 0x16u);
  }

  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "FetchEscrowContents", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v11;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchEscrowContents  enableTelemetry=YES ", buf, 0xCu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v41 = 0;
  v33 = 0;
  v16 = [(OTClique *)self makeOTControl:&v33];
  v17 = v33;
  if (v16)
  {
    v18 = [OTControlArguments alloc];
    v19 = [(OTClique *)self ctx];
    v20 = [(OTControlArguments *)v18 initWithConfiguration:v19];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __32__OTClique_fetchEscrowContents___block_invoke;
    v28[3] = &unk_1E70D6E90;
    v30 = buf;
    v31 = v11;
    v32 = v12;
    v29 = contentsCopy;
    [v16 fetchEscrowContents:v20 reply:v28];
  }

  else
  {
    Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
    v22 = _OctagonSignpostLogSystem();
    v23 = v22;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v24 = *(*&buf[8] + 24);
      *v34 = 67240192;
      LODWORD(v35) = v24;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v23, OS_SIGNPOST_INTERVAL_END, v11, "FetchEscrowContents", " OctagonSignpostNameFetchEscrowContents=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEscrowContents}d ", v34, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 134218496;
      v26 = *(*&buf[8] + 24);
      v35 = v11;
      v36 = 2048;
      v37 = Nanoseconds / 1000000000.0;
      v38 = 1026;
      v39 = v26;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchEscrowContents  OctagonSignpostNameFetchEscrowContents=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEscrowContents}d ", v34, 0x1Cu);
    }

    (*(contentsCopy + 2))(contentsCopy, 0, 0, 0, v17);
  }

  _Block_object_dispose(buf, 8);
  v27 = *MEMORY[0x1E69E9840];
}

void __32__OTClique_fetchEscrowContents___block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = secLogObjForScope("clique-fetchescrow");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v26 = 138412290;
      v27 = v12;
      v15 = "fetchEscrowContents errored: %@";
      v16 = v13;
      v17 = 12;
LABEL_6:
      _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, v15, &v26, v17);
    }
  }

  else if (v14)
  {
    LOWORD(v26) = 0;
    v15 = "fetchEscrowContents succeeded";
    v16 = v13;
    v17 = 2;
    goto LABEL_6;
  }

  *(*(a1[5] + 8) + 24) = v12 == 0;
  Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
  v19 = _OctagonSignpostLogSystem();
  v20 = v19;
  v21 = a1[6];
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v22 = *(*(a1[5] + 8) + 24);
    v26 = 67240192;
    LODWORD(v27) = v22;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v20, OS_SIGNPOST_INTERVAL_END, v21, "FetchEscrowContents", " OctagonSignpostNameFetchEscrowContents=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEscrowContents}d ", &v26, 8u);
  }

  v23 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 134218496;
    v24 = *(*(a1[5] + 8) + 24);
    v27 = a1[6];
    v28 = 2048;
    v29 = Nanoseconds / 1000000000.0;
    v30 = 1026;
    v31 = v24;
    _os_log_impl(&dword_1887D2000, v23, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchEscrowContents  OctagonSignpostNameFetchEscrowContents=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEscrowContents}d ", &v26, 0x1Cu);
  }

  (*(a1[4] + 16))();
  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)accountUserKeyAvailable
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = secLogObjForScope("clique-legacy");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(OTClique *)self ctx];
    context = [v4 context];
    v6 = [(OTClique *)self ctx];
    altDSID = [v6 altDSID];
    v27 = 138412546;
    v28 = context;
    v29 = 2112;
    v30 = *&altDSID;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "accountUserKeyAvailable for context:%@, altdsid:%@", &v27, 0x16u);
  }

  v8 = _OctagonSignpostLogSystem();
  v9 = os_signpost_id_generate(v8);
  v10 = mach_continuous_time();

  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  v13 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v27) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "AccountUserKeyAvailable", " enableTelemetry=YES ", &v27, 2u);
  }

  v14 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 134217984;
    v28 = v9;
    _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: AccountUserKeyAvailable  enableTelemetry=YES ", &v27, 0xCu);
  }

  if (+[OTClique platformSupportsSOS])
  {
    v15 = SOSCCCanAuthenticate(0);
    if ((v15 & 1) == 0)
    {
      v16 = secLogObjForScope("clique-legacy");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "Security requires credentials...", &v27, 2u);
      }
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v9, v10);
    v18 = _OctagonSignpostLogSystem();
    v19 = v18;
    if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      v27 = 67240192;
      LODWORD(v28) = v15;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v19, OS_SIGNPOST_INTERVAL_END, v9, "AccountUserKeyAvailable", " OctagonSignpostNameAccountUserKeyAvailable=%{public,signpost.telemetry:number1,name=OctagonSignpostNameAccountUserKeyAvailable}d ", &v27, 8u);
    }

    v20 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 134218496;
      v28 = v9;
      v29 = 2048;
      v30 = Nanoseconds / 1000000000.0;
      v31 = 1026;
      v32 = v15;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: AccountUserKeyAvailable  OctagonSignpostNameAccountUserKeyAvailable=%{public,signpost.telemetry:number1,name=OctagonSignpostNameAccountUserKeyAvailable}d ", &v27, 0x1Cu);
    }
  }

  else
  {
    v21 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "SOS disabled for this platform, returning NO", &v27, 2u);
    }

    v22 = _OctagonSignpostGetNanoseconds(v9, v10);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v27 = 67240192;
      LODWORD(v28) = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v9, "AccountUserKeyAvailable", " OctagonSignpostNameAccountUserKeyAvailable=%{public,signpost.telemetry:number1,name=OctagonSignpostNameAccountUserKeyAvailable}d ", &v27, 8u);
    }

    v20 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 134218496;
      v28 = v9;
      v29 = 2048;
      v30 = v22 / 1000000000.0;
      v31 = 1026;
      v32 = 0;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: AccountUserKeyAvailable  OctagonSignpostNameAccountUserKeyAvailable=%{public,signpost.telemetry:number1,name=OctagonSignpostNameAccountUserKeyAvailable}d ", &v27, 0x1Cu);
    }

    LOBYTE(v15) = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)requestToJoinCircle:(id *)circle
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = _OctagonSignpostLogSystem();
  v6 = os_signpost_id_generate(v5);
  v7 = mach_continuous_time();

  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  v10 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "RequestToJoinCircle", " enableTelemetry=YES ", buf, 2u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v51 = v6;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RequestToJoinCircle  enableTelemetry=YES ", buf, 0xCu);
  }

  v12 = secLogObjForScope("clique-legacy");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(OTClique *)self ctx];
    context = [v13 context];
    v15 = [(OTClique *)self ctx];
    altDSID = [v15 altDSID];
    *buf = 138412546;
    *v51 = context;
    *&v51[8] = 2112;
    *&v51[10] = altDSID;
    _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "requestToJoinCircle for context:%@, altdsid:%@", buf, 0x16u);
  }

  v49 = 0;
  v17 = [(OTClique *)self fetchCliqueStatus:&v49];
  v18 = v49;
  if (v18)
  {
    v19 = v18;
    v20 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v51 = v19;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "fetching clique status failed: %@", buf, 0xCu);
    }

    if (circle)
    {
      v21 = v19;
      *circle = v19;
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v6, v7);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 67240192;
      *v51 = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v6, "RequestToJoinCircle", " OctagonSignpostNameRequestToJoinCircle=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRequestToJoinCircle}d ", buf, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v29 = secLogObjForScope("clique-legacy");
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  if (v17 != 3)
  {
    if (!v30)
    {
      goto LABEL_39;
    }

    if ((v17 + 1) > 5)
    {
      v35 = @"CliqueStatusIn";
    }

    else
    {
      v35 = off_1E70D7000[v17 + 1];
    }

    *buf = 138412290;
    *v51 = v35;
    v36 = "clique status is %@; performing no Octagon actions";
    v37 = v29;
    v38 = 12;
    goto LABEL_38;
  }

  if (v30)
  {
    *buf = 138412290;
    *v51 = @"CliqueStatusAbsent";
    _os_log_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEFAULT, "clique status is %@; beginning an establish", buf, 0xCu);
  }

  v48 = 0;
  [(OTClique *)self establish:&v48];
  v31 = v48;
  if (v31)
  {
    v19 = v31;
    if (circle)
    {
      v32 = v31;
      *circle = v19;
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v6, v7);
    v33 = _OctagonSignpostLogSystem();
    v34 = v33;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      *buf = 67240192;
      *v51 = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v34, OS_SIGNPOST_INTERVAL_END, v6, "RequestToJoinCircle", " OctagonSignpostNameRequestToJoinCircle=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRequestToJoinCircle}d ", buf, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

LABEL_17:
    *buf = 134218496;
    *v51 = v6;
    *&v51[8] = 2048;
    *&v51[10] = Nanoseconds / 1000000000.0;
    v52 = 1026;
    v53 = 0;
    _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RequestToJoinCircle  OctagonSignpostNameRequestToJoinCircle=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRequestToJoinCircle}d ", buf, 0x1Cu);
LABEL_18:

    LOBYTE(v26) = 0;
    goto LABEL_19;
  }

  v29 = secLogObjForScope("clique-legacy");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v36 = "establish succeeded";
    v37 = v29;
    v38 = 2;
LABEL_38:
    _os_log_impl(&dword_1887D2000, v37, OS_LOG_TYPE_DEFAULT, v36, buf, v38);
  }

LABEL_39:

  if (+[OTClique platformSupportsSOS])
  {
    if (+[OTClique platformSupportsSOS])
    {
      v47 = 0;
      v26 = SOSCCRequestToJoinCircle(&v47);
      v39 = secLogObjForScope("clique-legacy");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *v51 = v26;
        *&v51[4] = 2112;
        *&v51[6] = v47;
        _os_log_impl(&dword_1887D2000, v39, OS_LOG_TYPE_DEFAULT, "sos requestToJoinCircle complete: %d %@", buf, 0x12u);
      }

      if (circle)
      {
        *circle = v47;
      }

      else
      {
      }
    }

    else
    {
      v26 = 0;
    }

    v44 = _OctagonSignpostGetNanoseconds(v6, v7);
    v45 = _OctagonSignpostLogSystem();
    v46 = v45;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
    {
      *buf = 67240192;
      *v51 = v26;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v46, OS_SIGNPOST_INTERVAL_END, v6, "RequestToJoinCircle", " OctagonSignpostNameRequestToJoinCircle=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRequestToJoinCircle}d ", buf, 8u);
    }

    v19 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v51 = v6;
      *&v51[8] = 2048;
      *&v51[10] = v44 / 1000000000.0;
      v52 = 1026;
      v53 = v26;
      goto LABEL_59;
    }
  }

  else
  {
    v40 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v40, OS_LOG_TYPE_DEFAULT, "requestToJoinCircle platform does not support SOS", buf, 2u);
    }

    v41 = _OctagonSignpostGetNanoseconds(v6, v7);
    v42 = _OctagonSignpostLogSystem();
    v43 = v42;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
    {
      *buf = 67240192;
      *v51 = 1;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v43, OS_SIGNPOST_INTERVAL_END, v6, "RequestToJoinCircle", " OctagonSignpostNameRequestToJoinCircle=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRequestToJoinCircle}d ", buf, 8u);
    }

    v19 = _OctagonSignpostLogSystem();
    LOBYTE(v26) = 1;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v51 = v6;
      *&v51[8] = 2048;
      *&v51[10] = v41 / 1000000000.0;
      v52 = 1026;
      v53 = 1;
LABEL_59:
      _os_log_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RequestToJoinCircle  OctagonSignpostNameRequestToJoinCircle=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRequestToJoinCircle}d ", buf, 0x1Cu);
    }
  }

LABEL_19:

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (BOOL)peersHaveViewsEnabled:(id)enabled error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  enabledCopy = enabled;
  v7 = secLogObjForScope("clique-legacy");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(OTClique *)self ctx];
    context = [v8 context];
    v10 = [(OTClique *)self ctx];
    altDSID = [v10 altDSID];
    *buf = 138412546;
    *v40 = context;
    *&v40[8] = 2112;
    *&v40[10] = altDSID;
    _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "peersHaveViewsEnabled for context:%@, altdsid:%@", buf, 0x16u);
  }

  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  v17 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PeersHaveViewsEnabled", " enableTelemetry=YES ", buf, 2u);
  }

  v18 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v40 = v13;
    _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PeersHaveViewsEnabled  enableTelemetry=YES ", buf, 0xCu);
  }

  if (+[OTClique platformSupportsSOS])
  {
    v36 = 0;
    HaveViewsEnabled = SOSCCPeersHaveViewsEnabled(enabledCopy, &v36);
    if (HaveViewsEnabled)
    {
      v20 = CFBooleanGetValue(HaveViewsEnabled) != 0;
    }

    else
    {
      v20 = 0;
    }

    v29 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v40 = v20;
      *&v40[4] = 2112;
      *&v40[6] = v36;
      _os_log_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEFAULT, "peersHaveViewsEnabled results: %{BOOL}d (%@)", buf, 0x12u);
    }

    if (error)
    {
      *error = v36;
    }

    else
    {
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v31 = _OctagonSignpostLogSystem();
    v32 = v31;
    if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *buf = 67240192;
      *v40 = v20;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v32, OS_SIGNPOST_INTERVAL_END, v13, "PeersHaveViewsEnabled", " OctagonSignpostNamePeersHaveViewsEnabled=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeersHaveViewsEnabled}d ", buf, 8u);
    }

    v33 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v40 = v13;
      *&v40[8] = 2048;
      *&v40[10] = Nanoseconds / 1000000000.0;
      v41 = 1026;
      v42 = v20;
      _os_log_impl(&dword_1887D2000, v33, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PeersHaveViewsEnabled  OctagonSignpostNamePeersHaveViewsEnabled=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeersHaveViewsEnabled}d ", buf, 0x1Cu);
    }
  }

  else
  {
    v21 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "SOS disabled for this platform, returning NO", buf, 2u);
    }

    if (error)
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A768];
      v37 = *MEMORY[0x1E696A578];
      v38 = @"peers have views enabled unimplemented";
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *error = [v22 errorWithDomain:v23 code:-4 userInfo:v24];
    }

    v25 = _OctagonSignpostGetNanoseconds(v13, v14);
    v26 = _OctagonSignpostLogSystem();
    v27 = v26;
    if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 67240192;
      *v40 = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v27, OS_SIGNPOST_INTERVAL_END, v13, "PeersHaveViewsEnabled", " OctagonSignpostNamePeersHaveViewsEnabled=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeersHaveViewsEnabled}d ", buf, 8u);
    }

    v28 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v40 = v13;
      *&v40[8] = 2048;
      *&v40[10] = v25 / 1000000000.0;
      v41 = 1026;
      v42 = 0;
      _os_log_impl(&dword_1887D2000, v28, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PeersHaveViewsEnabled  OctagonSignpostNamePeersHaveViewsEnabled=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeersHaveViewsEnabled}d ", buf, 0x1Cu);
    }

    LOBYTE(v20) = 0;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)copyPeerPeerInfo:(id *)info
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = secLogObjForScope("clique-legacy");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(OTClique *)self ctx];
    context = [v6 context];
    v8 = [(OTClique *)self ctx];
    altDSID = [v8 altDSID];
    *buf = 138412546;
    v37 = context;
    v38 = 2112;
    v39 = *&altDSID;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "copyPeerPeerInfo for context:%@, altdsid:%@", buf, 0x16u);
  }

  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  v15 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CopyPeerPeerInfo", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v37 = v11;
    _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CopyPeerPeerInfo  enableTelemetry=YES ", buf, 0xCu);
  }

  if (+[OTClique platformSupportsSOS])
  {
    v33 = 0;
    v17 = SOSCCCopyPeerPeerInfo(&v33);
    v18 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = v17;
      v38 = 2112;
      v39 = *&v33;
      _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "copyPeerPeerInfo results: %@ (%@)", buf, 0x16u);
    }

    if (info)
    {
      *info = v33;
    }

    else
    {
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
    v28 = _OctagonSignpostLogSystem();
    v29 = v28;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 67240192;
      LODWORD(v37) = v17 != 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v29, OS_SIGNPOST_INTERVAL_END, v11, "CopyPeerPeerInfo", " OctagonSignpostNameCopyPeerPeerInfo=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCopyPeerPeerInfo}d ", buf, 8u);
    }

    v30 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v37 = v11;
      v38 = 2048;
      v39 = Nanoseconds / 1000000000.0;
      v40 = 1026;
      v41 = v17 != 0;
      _os_log_impl(&dword_1887D2000, v30, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CopyPeerPeerInfo  OctagonSignpostNameCopyPeerPeerInfo=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCopyPeerPeerInfo}d ", buf, 0x1Cu);
    }
  }

  else
  {
    v19 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEFAULT, "SOS disabled for this platform, returning NO", buf, 2u);
    }

    if (info)
    {
      v20 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A768];
      v34 = *MEMORY[0x1E696A578];
      v35 = @"copy peer peer info unimplemented";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *info = [v20 errorWithDomain:v21 code:-4 userInfo:v22];
    }

    v23 = _OctagonSignpostGetNanoseconds(v11, v12);
    v24 = _OctagonSignpostLogSystem();
    v25 = v24;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 67240192;
      LODWORD(v37) = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v25, OS_SIGNPOST_INTERVAL_END, v11, "CopyPeerPeerInfo", " OctagonSignpostNameCopyPeerPeerInfo=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCopyPeerPeerInfo}d ", buf, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v37 = v11;
      v38 = 2048;
      v39 = v23 / 1000000000.0;
      v40 = 1026;
      v41 = 0;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CopyPeerPeerInfo  OctagonSignpostNameCopyPeerPeerInfo=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCopyPeerPeerInfo}d ", buf, 0x1Cu);
    }

    v17 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)tryUserCredentialsAndDSID:(id)d password:(id)password error:(id *)error
{
  passwordCopy = password;
  dCopy = d;
  v10 = [(OTClique *)self ctx];
  dsid = [v10 dsid];
  LOBYTE(error) = [(OTClique *)self tryUserCredentialsWithLabel:dCopy password:passwordCopy dsid:dsid error:error];

  return error;
}

- (BOOL)tryUserCredentialsWithLabel:(id)label password:(id)password dsid:(id)dsid error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  passwordCopy = password;
  dsidCopy = dsid;
  v13 = secLogObjForScope("clique-legacy");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(OTClique *)self ctx];
    context = [v14 context];
    v16 = [(OTClique *)self ctx];
    altDSID = [v16 altDSID];
    *buf = 138412546;
    *v45 = context;
    *&v45[8] = 2112;
    *&v45[10] = altDSID;
    _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "tryUserCredentialsAndDSID for context:%@, altdsid:%@", buf, 0x16u);
  }

  v18 = _OctagonSignpostLogSystem();
  v19 = os_signpost_id_generate(v18);
  v20 = mach_continuous_time();

  v21 = _OctagonSignpostLogSystem();
  v22 = v21;
  v23 = v19 - 1;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "TryUserCredentialsAndDSID", " enableTelemetry=YES ", buf, 2u);
  }

  v24 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v45 = v19;
    _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: TryUserCredentialsAndDSID  enableTelemetry=YES ", buf, 0xCu);
  }

  if (+[OTClique platformSupportsSOS])
  {
    v41 = 0;
    v25 = SOSCCTryUserCredentialsAndDSID(labelCopy, passwordCopy, dsidCopy, &v41);
    v26 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v45 = v25;
      *&v45[4] = 2112;
      *&v45[6] = v41;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "tryUserCredentialsAndDSID results: %d %@", buf, 0x12u);
    }

    if (error)
    {
      *error = v41;
    }

    else
    {
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v19, v20);
    v36 = _OctagonSignpostLogSystem();
    v37 = v36;
    if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      *buf = 67240192;
      *v45 = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v37, OS_SIGNPOST_INTERVAL_END, v19, "TryUserCredentialsAndDSID", " OctagonSignpostNameTryUserCredentialsAndDSID=%{public,signpost.telemetry:number1,name=OctagonSignpostNameTryUserCredentialsAndDSID}d ", buf, 8u);
    }

    v38 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v45 = v19;
      *&v45[8] = 2048;
      *&v45[10] = Nanoseconds / 1000000000.0;
      v46 = 1026;
      v47 = v25;
      _os_log_impl(&dword_1887D2000, v38, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: TryUserCredentialsAndDSID  OctagonSignpostNameTryUserCredentialsAndDSID=%{public,signpost.telemetry:number1,name=OctagonSignpostNameTryUserCredentialsAndDSID}d ", buf, 0x1Cu);
    }
  }

  else
  {
    v27 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v27, OS_LOG_TYPE_DEFAULT, "SOS disabled for this platform, returning NO", buf, 2u);
    }

    if (error)
    {
      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A768];
      v42 = *MEMORY[0x1E696A578];
      v43 = @"try user credentials unimplemented";
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      *error = [v28 errorWithDomain:v29 code:-4 userInfo:v30];
    }

    v31 = _OctagonSignpostGetNanoseconds(v19, v20);
    v32 = _OctagonSignpostLogSystem();
    v33 = v32;
    if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 67240192;
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v33, OS_SIGNPOST_INTERVAL_END, v19, "TryUserCredentialsAndDSID", " OctagonSignpostNameTryUserCredentialsAndDSID=%{public,signpost.telemetry:number1,name=OctagonSignpostNameTryUserCredentialsAndDSID}d ", buf, 8u);
    }

    v34 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v45 = v19;
      *&v45[8] = 2048;
      *&v45[10] = v31 / 1000000000.0;
      v46 = 1026;
      v47 = 0;
      _os_log_impl(&dword_1887D2000, v34, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: TryUserCredentialsAndDSID  OctagonSignpostNameTryUserCredentialsAndDSID=%{public,signpost.telemetry:number1,name=OctagonSignpostNameTryUserCredentialsAndDSID}d ", buf, 0x1Cu);
    }

    LOBYTE(v25) = 0;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v25;
}

- (BOOL)setUserCredentialsAndDSID:(id)d password:(id)password error:(id *)error
{
  passwordCopy = password;
  dCopy = d;
  v10 = [(OTClique *)self ctx];
  dsid = [v10 dsid];
  LOBYTE(error) = [(OTClique *)self setUserCredentialsWithLabel:dCopy password:passwordCopy dsid:dsid error:error];

  return error;
}

- (BOOL)setUserCredentialsWithLabel:(id)label password:(id)password dsid:(id)dsid error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  passwordCopy = password;
  dsidCopy = dsid;
  v13 = secLogObjForScope("clique-legacy");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(OTClique *)self ctx];
    context = [v14 context];
    v16 = [(OTClique *)self ctx];
    altDSID = [v16 altDSID];
    *buf = 138412546;
    *v45 = context;
    *&v45[8] = 2112;
    *&v45[10] = altDSID;
    _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "setUserCredentialsAndDSID for context:%@, altdsid:%@", buf, 0x16u);
  }

  v18 = _OctagonSignpostLogSystem();
  v19 = os_signpost_id_generate(v18);
  v20 = mach_continuous_time();

  v21 = _OctagonSignpostLogSystem();
  v22 = v21;
  v23 = v19 - 1;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "SetUserCredentialsAndDSID", " enableTelemetry=YES ", buf, 2u);
  }

  v24 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v45 = v19;
    _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SetUserCredentialsAndDSID  enableTelemetry=YES ", buf, 0xCu);
  }

  if (+[OTClique platformSupportsSOS])
  {
    v41 = 0;
    v25 = SOSCCSetUserCredentialsAndDSID(labelCopy, passwordCopy, dsidCopy, &v41);
    v26 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v45 = v25;
      *&v45[4] = 2112;
      *&v45[6] = v41;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "setUserCredentialsAndDSID results: %d %@", buf, 0x12u);
    }

    if (error)
    {
      *error = v41;
    }

    else
    {
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v19, v20);
    v36 = _OctagonSignpostLogSystem();
    v37 = v36;
    if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      *buf = 67240192;
      *v45 = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v37, OS_SIGNPOST_INTERVAL_END, v19, "SetUserCredentialsAndDSID", " OctagonSignpostNameSetUserCredentialsAndDSID=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetUserCredentialsAndDSID}d ", buf, 8u);
    }

    v38 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v45 = v19;
      *&v45[8] = 2048;
      *&v45[10] = Nanoseconds / 1000000000.0;
      v46 = 1026;
      v47 = v25;
      _os_log_impl(&dword_1887D2000, v38, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetUserCredentialsAndDSID  OctagonSignpostNameSetUserCredentialsAndDSID=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetUserCredentialsAndDSID}d ", buf, 0x1Cu);
    }
  }

  else
  {
    v27 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v27, OS_LOG_TYPE_DEFAULT, "SOS disabled for this platform, returning NO", buf, 2u);
    }

    if (error)
    {
      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A768];
      v42 = *MEMORY[0x1E696A578];
      v43 = @"set user credentials unimplemented";
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      *error = [v28 errorWithDomain:v29 code:-4 userInfo:v30];
    }

    v31 = _OctagonSignpostGetNanoseconds(v19, v20);
    v32 = _OctagonSignpostLogSystem();
    v33 = v32;
    if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 67240192;
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v33, OS_SIGNPOST_INTERVAL_END, v19, "SetUserCredentialsAndDSID", " OctagonSignpostNameSetUserCredentialsAndDSID=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetUserCredentialsAndDSID}d ", buf, 8u);
    }

    v34 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v45 = v19;
      *&v45[8] = 2048;
      *&v45[10] = v31 / 1000000000.0;
      v46 = 1026;
      v47 = 0;
      _os_log_impl(&dword_1887D2000, v34, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetUserCredentialsAndDSID  OctagonSignpostNameSetUserCredentialsAndDSID=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetUserCredentialsAndDSID}d ", buf, 0x1Cu);
    }

    LOBYTE(v25) = 0;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)copyViewUnawarePeerInfo:(id *)info
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = secLogObjForScope("clique-legacy");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(OTClique *)self ctx];
    context = [v6 context];
    v8 = [(OTClique *)self ctx];
    altDSID = [v8 altDSID];
    *buf = 138412546;
    v36 = context;
    v37 = 2112;
    v38 = *&altDSID;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "copyViewUnawarePeerInfo for context:%@, altdsid:%@", buf, 0x16u);
  }

  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  v15 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CopyViewUnawarePeerInfo", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v36 = v11;
    _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CopyViewUnawarePeerInfo  enableTelemetry=YES ", buf, 0xCu);
  }

  if (+[OTClique platformSupportsSOS])
  {
    v32 = 0;
    v17 = SOSCCCopyViewUnawarePeerInfo(&v32);
    if (info)
    {
      *info = v32;
    }

    else
    {
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
    v27 = _OctagonSignpostLogSystem();
    v28 = v27;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 67240192;
      LODWORD(v36) = v17 != 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v28, OS_SIGNPOST_INTERVAL_END, v11, "CopyViewUnawarePeerInfo", " OctagonSignpostNameCopyViewUnawarePeerInfo=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCopyViewUnawarePeerInfo}d ", buf, 8u);
    }

    v29 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v36 = v11;
      v37 = 2048;
      v38 = Nanoseconds / 1000000000.0;
      v39 = 1026;
      v40 = v17 != 0;
      _os_log_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CopyViewUnawarePeerInfo  OctagonSignpostNameCopyViewUnawarePeerInfo=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCopyViewUnawarePeerInfo}d ", buf, 0x1Cu);
    }
  }

  else
  {
    v18 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "SOS disabled for this platform, returning NULL", buf, 2u);
    }

    if (info)
    {
      v19 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A768];
      v33 = *MEMORY[0x1E696A578];
      v34 = @"copy view unaware peer info unimplemented";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      *info = [v19 errorWithDomain:v20 code:-4 userInfo:v21];
    }

    v22 = _OctagonSignpostGetNanoseconds(v11, v12);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 67240192;
      LODWORD(v36) = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v11, "CopyViewUnawarePeerInfo", " OctagonSignpostNameCopyViewUnawarePeerInfo=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCopyViewUnawarePeerInfo}d ", buf, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v36 = v11;
      v37 = 2048;
      v38 = v22 / 1000000000.0;
      v39 = 1026;
      v40 = 0;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CopyViewUnawarePeerInfo  OctagonSignpostNameCopyViewUnawarePeerInfo=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCopyViewUnawarePeerInfo}d ", buf, 0x1Cu);
    }

    v17 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)waitForInitialSync:(id *)sync
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = secLogObjForScope("clique-legacy");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(OTClique *)self ctx];
    context = [v6 context];
    v8 = [(OTClique *)self ctx];
    altDSID = [v8 altDSID];
    *buf = 138412546;
    *v38 = context;
    *&v38[8] = 2112;
    *&v38[10] = altDSID;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "waitForInitialSync for context:%@, altdsid:%@", buf, 0x16u);
  }

  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  v15 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "WaitForInitialSync", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v38 = v11;
    _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: WaitForInitialSync  enableTelemetry=YES ", buf, 0xCu);
  }

  if (+[OTClique platformSupportsSOS])
  {
    v34 = 0;
    v17 = SOSCCWaitForInitialSync(&v34);
    if (sync)
    {
      *sync = v34;
    }

    else
    {
    }

    v26 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      if (sync)
      {
        v27 = *sync;
      }

      else
      {
        v27 = @"no error pointer provided";
      }

      *buf = 67109378;
      *v38 = v17;
      *&v38[4] = 2112;
      *&v38[6] = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "waitForInitialSync waited: %d %@", buf, 0x12u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
    v29 = _OctagonSignpostLogSystem();
    v30 = v29;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 67240192;
      *v38 = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v30, OS_SIGNPOST_INTERVAL_END, v11, "WaitForInitialSync", " OctagonSignpostNameWaitForInitialSync=%{public,signpost.telemetry:number1,name=OctagonSignpostNameWaitForInitialSync}d ", buf, 8u);
    }

    v31 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v38 = v11;
      *&v38[8] = 2048;
      *&v38[10] = Nanoseconds / 1000000000.0;
      v39 = 1026;
      v40 = v17;
      _os_log_impl(&dword_1887D2000, v31, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: WaitForInitialSync  OctagonSignpostNameWaitForInitialSync=%{public,signpost.telemetry:number1,name=OctagonSignpostNameWaitForInitialSync}d ", buf, 0x1Cu);
    }
  }

  else
  {
    v18 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "SOS disabled for this platform, returning NO", buf, 2u);
    }

    if (sync)
    {
      v19 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A768];
      v35 = *MEMORY[0x1E696A578];
      v36 = @"wait for initial sync unimplemented";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      *sync = [v19 errorWithDomain:v20 code:-4 userInfo:v21];
    }

    v22 = _OctagonSignpostGetNanoseconds(v11, v12);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 67240192;
      *v38 = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v11, "WaitForInitialSync", " OctagonSignpostNameWaitForInitialSync=%{public,signpost.telemetry:number1,name=OctagonSignpostNameWaitForInitialSync}d ", buf, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v38 = v11;
      *&v38[8] = 2048;
      *&v38[10] = v22 / 1000000000.0;
      v39 = 1026;
      v40 = 0;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: WaitForInitialSync  OctagonSignpostNameWaitForInitialSync=%{public,signpost.telemetry:number1,name=OctagonSignpostNameWaitForInitialSync}d ", buf, 0x1Cu);
    }

    LOBYTE(v17) = 0;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)fetchUserControllableViewsSyncingEnabledAsync:(id)async
{
  asyncCopy = async;
  v12 = 0;
  v5 = [(OTClique *)self makeOTControl:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = [OTControlArguments alloc];
    v8 = [(OTClique *)self ctx];
    v9 = [(OTControlArguments *)v7 initWithConfiguration:v8];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__OTClique_fetchUserControllableViewsSyncingEnabledAsync___block_invoke;
    v10[3] = &unk_1E70DECE8;
    v11 = asyncCopy;
    [v5 fetchUserControllableViewsSyncStatusAsync:v9 reply:v10];
  }

  else
  {
    (*(asyncCopy + 2))(asyncCopy, 0, v6);
  }
}

void __58__OTClique_fetchUserControllableViewsSyncingEnabledAsync___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope("clique-user-sync-async");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = v5;
      v8 = "fetching user-controllable-sync-async status errored: %@";
LABEL_8:
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, v8, &v11, 0xCu);
    }
  }

  else if (v7)
  {
    v9 = @"paused";
    if (a2)
    {
      v9 = @"enabled";
    }

    v11 = 138412290;
    v12 = v9;
    v8 = "fetched user-controllable-sync-async status as : %@";
    goto LABEL_8;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), a2);
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)fetchUserControllableViewsSyncingEnabled:(id *)enabled
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5565;
  v17 = __Block_byref_object_dispose__5566;
  v18 = 0;
  v5 = [(OTClique *)self makeOTControl:?];
  if (v5)
  {
    v6 = [OTControlArguments alloc];
    v7 = [(OTClique *)self ctx];
    v8 = [(OTControlArguments *)v6 initWithConfiguration:v7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__OTClique_fetchUserControllableViewsSyncingEnabled___block_invoke;
    v12[3] = &unk_1E70D6E18;
    v12[4] = &v19;
    v12[5] = &v13;
    [v5 fetchUserControllableViewsSyncStatus:v8 reply:v12];

    v9 = v14[5];
    if (v9 && enabled)
    {
      *enabled = v9;
    }

    v10 = *(v20 + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10 & 1;
}

void __53__OTClique_fetchUserControllableViewsSyncingEnabled___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope("clique-user-sync");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v13 = 138412290;
      v14 = v5;
      v8 = "fetching user-controllable-sync status errored: %@";
LABEL_8:
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, v8, &v13, 0xCu);
    }
  }

  else if (v7)
  {
    v9 = @"paused";
    if (a2)
    {
      v9 = @"enabled";
    }

    v13 = 138412290;
    v14 = v9;
    v8 = "fetched user-controllable-sync status as : %@";
    goto LABEL_8;
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;

  v12 = *MEMORY[0x1E69E9840];
}

void __61__OTClique_setOctagonUserControllableViewsSyncEnabled_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope("clique-user-sync");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "setting user-controllable-sync status errored: %@", &v12, 0xCu);
    }

    v8 = *(*(a1 + 32) + 8);
    v9 = v5;
    v6 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else if (v7)
  {
    v10 = @"paused";
    if (a2)
    {
      v10 = @"enabled";
    }

    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "setting user-controllable-sync status succeeded, now : %@", &v12, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)joinAfterRestore:(id *)restore
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = secLogObjForScope("clique-recovery");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(OTClique *)self ctx];
    context = [v6 context];
    v8 = [(OTClique *)self ctx];
    altDSID = [v8 altDSID];
    *buf = 138412546;
    *v38 = context;
    *&v38[8] = 2112;
    *&v38[10] = altDSID;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "joinAfterRestore for context:%@, altdsid:%@", buf, 0x16u);
  }

  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  v15 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "JoinAfterRestore", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v38 = v11;
    _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: JoinAfterRestore  enableTelemetry=YES ", buf, 0xCu);
  }

  if (+[OTClique platformSupportsSOS])
  {
    v34 = 0;
    v17 = SOSCCRequestToJoinCircleAfterRestore(&v34);
    if (restore)
    {
      *restore = v34;
    }

    else
    {
    }

    v26 = secLogObjForScope("clique-recovery");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      if (restore)
      {
        v27 = *restore;
      }

      else
      {
        v27 = @"no error pointer provided";
      }

      *buf = 67109378;
      *v38 = v17;
      *&v38[4] = 2112;
      *&v38[6] = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "joinAfterRestore complete: %d %@", buf, 0x12u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
    v29 = _OctagonSignpostLogSystem();
    v30 = v29;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 67240192;
      *v38 = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v30, OS_SIGNPOST_INTERVAL_END, v11, "JoinAfterRestore", " OctagonSignpostNameJoinAfterRestore=%{public,signpost.telemetry:number1,name=OctagonSignpostNameJoinAfterRestore}d ", buf, 8u);
    }

    v31 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v38 = v11;
      *&v38[8] = 2048;
      *&v38[10] = Nanoseconds / 1000000000.0;
      v39 = 1026;
      v40 = v17;
      _os_log_impl(&dword_1887D2000, v31, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: JoinAfterRestore  OctagonSignpostNameJoinAfterRestore=%{public,signpost.telemetry:number1,name=OctagonSignpostNameJoinAfterRestore}d ", buf, 0x1Cu);
    }
  }

  else
  {
    v18 = secLogObjForScope("clique-recovery");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "SOS disabled for this platform, returning NO", buf, 2u);
    }

    if (restore)
    {
      v19 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A768];
      v35 = *MEMORY[0x1E696A578];
      v36 = @"join after restore unimplemented";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      *restore = [v19 errorWithDomain:v20 code:-4 userInfo:v21];
    }

    v22 = _OctagonSignpostGetNanoseconds(v11, v12);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 67240192;
      *v38 = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v11, "JoinAfterRestore", " OctagonSignpostNameJoinAfterRestore=%{public,signpost.telemetry:number1,name=OctagonSignpostNameJoinAfterRestore}d ", buf, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v38 = v11;
      *&v38[8] = 2048;
      *&v38[10] = v22 / 1000000000.0;
      v39 = 1026;
      v40 = 0;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: JoinAfterRestore  OctagonSignpostNameJoinAfterRestore=%{public,signpost.telemetry:number1,name=OctagonSignpostNameJoinAfterRestore}d ", buf, 0x1Cu);
    }

    LOBYTE(v17) = 0;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)peerDeviceNamesByPeerID:(id *)d
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = secLogObjForScope("clique");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(OTClique *)self ctx];
    context = [v6 context];
    v8 = [(OTClique *)self ctx];
    altDSID = [v8 altDSID];
    *buf = 138412546;
    *&buf[4] = context;
    *&buf[12] = 2112;
    *&buf[14] = altDSID;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "peerDeviceNamesByPeerID invoked using context:%@, altdsid:%@", buf, 0x16u);
  }

  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  v15 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PeerDeviceNamesByPeerID", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v11;
    _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PeerDeviceNamesByPeerID  enableTelemetry=YES ", buf, 0xCu);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v18 = [(OTClique *)self makeOTControl:d];
  if (v18)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v55 = __Block_byref_object_copy__5565;
    v56 = __Block_byref_object_dispose__5566;
    v57 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__5565;
    v46 = __Block_byref_object_dispose__5566;
    v47 = 0;
    v19 = [OTControlArguments alloc];
    v20 = [(OTClique *)self ctx];
    v21 = [(OTControlArguments *)v19 initWithConfiguration:v20];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __36__OTClique_peerDeviceNamesByPeerID___block_invoke;
    v41[3] = &unk_1E70D6DC8;
    v41[4] = buf;
    v41[5] = &v42;
    [v18 peerDeviceNamesByPeerID:v21 reply:v41];

    v22 = *&buf[8];
    if (d)
    {
      v23 = *(*&buf[8] + 40);
      if (v23)
      {
        *d = v23;
        v22 = *&buf[8];
      }
    }

    if (*(v22 + 40))
    {
      Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
      v25 = _OctagonSignpostLogSystem();
      v26 = v25;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
      {
        *v48 = 67240192;
        LODWORD(v49) = 0;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v26, OS_SIGNPOST_INTERVAL_END, v11, "PeerDeviceNamesByPeerID", " OctagonSignpostNamePeerDeviceNamesByPeerID=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeerDeviceNamesByPeerID}d ", v48, 8u);
      }

      v27 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v48 = 134218496;
        v49 = v11;
        v50 = 2048;
        v51 = Nanoseconds / 1000000000.0;
        v52 = 1026;
        v53 = 0;
        _os_log_impl(&dword_1887D2000, v27, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PeerDeviceNamesByPeerID  OctagonSignpostNamePeerDeviceNamesByPeerID=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeerDeviceNamesByPeerID}d ", v48, 0x1Cu);
      }

      v28 = 0;
    }

    else
    {
      [dictionary addEntriesFromDictionary:v43[5]];
      v33 = secLogObjForScope("clique");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v43[5] count];
        *v48 = 134217984;
        v49 = v34;
        _os_log_impl(&dword_1887D2000, v33, OS_LOG_TYPE_DEFAULT, "Received %lu Octagon peers", v48, 0xCu);
      }

      v35 = _OctagonSignpostGetNanoseconds(v11, v12);
      v36 = _OctagonSignpostLogSystem();
      v37 = v36;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        *v48 = 67240192;
        LODWORD(v49) = 0;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v37, OS_SIGNPOST_INTERVAL_END, v11, "PeerDeviceNamesByPeerID", " OctagonSignpostNamePeerDeviceNamesByPeerID=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeerDeviceNamesByPeerID}d ", v48, 8u);
      }

      v38 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *v48 = 134218496;
        v49 = v11;
        v50 = 2048;
        v51 = v35 / 1000000000.0;
        v52 = 1026;
        v53 = 0;
        _os_log_impl(&dword_1887D2000, v38, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PeerDeviceNamesByPeerID  OctagonSignpostNamePeerDeviceNamesByPeerID=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeerDeviceNamesByPeerID}d ", v48, 0x1Cu);
      }

      v28 = dictionary;
    }

    _Block_object_dispose(&v42, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v29 = _OctagonSignpostGetNanoseconds(v11, v12);
    v30 = _OctagonSignpostLogSystem();
    v31 = v30;
    if (v15 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v30))
    {
      *buf = 67240192;
      *&buf[4] = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v31, OS_SIGNPOST_INTERVAL_END, v11, "PeerDeviceNamesByPeerID", " OctagonSignpostNamePeerDeviceNamesByPeerID=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeerDeviceNamesByPeerID}d ", buf, 8u);
    }

    v32 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = v29 / 1000000000.0;
      *&buf[22] = 1026;
      LODWORD(v55) = 0;
      _os_log_impl(&dword_1887D2000, v32, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PeerDeviceNamesByPeerID  OctagonSignpostNamePeerDeviceNamesByPeerID=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeerDeviceNamesByPeerID}d ", buf, 0x1Cu);
    }

    v28 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];

  return v28;
}

void __36__OTClique_peerDeviceNamesByPeerID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = secLogObjForScope("clique");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v16 = 138412290;
      v17 = v6;
      v9 = "peerDeviceNamesByPeerID errored: %@";
LABEL_6:
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, v9, &v16, 0xCu);
    }
  }

  else if (v8)
  {
    v16 = 138412290;
    v17 = v5;
    v9 = "peerDeviceNamesByPeerID succeeded: %@";
    goto LABEL_6;
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v5;

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)leaveClique:(id *)clique
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = secLogObjForScope("clique-leaveClique");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(OTClique *)self ctx];
    context = [v6 context];
    v8 = [(OTClique *)self ctx];
    altDSID = [v8 altDSID];
    *buf = 138412546;
    *&buf[4] = context;
    *&buf[12] = 2112;
    *&buf[14] = altDSID;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "leaveClique invoked using context:%@, altdsid:%@", buf, 0x16u);
  }

  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v61 = mach_continuous_time();

  v12 = _OctagonSignpostLogSystem();
  v13 = v12;
  v14 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "LeaveClique", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v11;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: LeaveClique  enableTelemetry=YES ", buf, 0xCu);
  }

  v16 = [(OTClique *)self makeOTControl:clique];
  if (v16)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v71 = __Block_byref_object_copy__5565;
    v72 = __Block_byref_object_dispose__5566;
    v73 = 0;
    v17 = objc_alloc_init(OTOperationConfiguration);
    v18 = *&buf[8];
    obj = *(*&buf[8] + 40);
    v19 = [(OTClique *)self fetchCliqueStatus:v17 error:&obj];
    objc_storeStrong((v18 + 40), obj);

    if (*(*&buf[8] + 40))
    {
      v20 = secLogObjForScope("clique-leaveClique");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(*&buf[8] + 40);
        *v64 = 138412290;
        v65 = v21;
        _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "fetching current status errored: %@", v64, 0xCu);
      }

      if (clique)
      {
        *clique = *(*&buf[8] + 40);
      }

      Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v61);
      v23 = _OctagonSignpostLogSystem();
      v24 = v23;
      if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *v64 = 67240192;
        LODWORD(v65) = 0;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v11, "LeaveClique", " OctagonSignpostNameLeaveClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameLeaveClique}d ", v64, 8u);
      }

      v25 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v64 = 134218496;
        v65 = v11;
        v66 = 2048;
        v67 = Nanoseconds / 1000000000.0;
        v68 = 1026;
        v69 = 0;
        _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: LeaveClique  OctagonSignpostNameLeaveClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameLeaveClique}d ", v64, 0x1Cu);
      }

      v26 = 0;
    }

    else if (v19 == 1)
    {
      v31 = secLogObjForScope("clique-leaveClique");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *v64 = 0;
        _os_log_impl(&dword_1887D2000, v31, OS_LOG_TYPE_DEFAULT, "current status is Not In; no need to leave", v64, 2u);
      }

      v32 = _OctagonSignpostGetNanoseconds(v11, v61);
      v33 = _OctagonSignpostLogSystem();
      v34 = v33;
      if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
      {
        *v64 = 67240192;
        LODWORD(v65) = 1;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v34, OS_SIGNPOST_INTERVAL_END, v11, "LeaveClique", " OctagonSignpostNameLeaveClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameLeaveClique}d ", v64, 8u);
      }

      v25 = _OctagonSignpostLogSystem();
      v26 = 1;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v64 = 134218496;
        v65 = v11;
        v66 = 2048;
        v67 = v32 / 1000000000.0;
        v68 = 1026;
        v69 = 1;
        _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: LeaveClique  OctagonSignpostNameLeaveClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameLeaveClique}d ", v64, 0x1Cu);
      }
    }

    else
    {
      v35 = [OTControlArguments alloc];
      v36 = [(OTClique *)self ctx];
      v37 = [(OTControlArguments *)v35 initWithConfiguration:v36];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __24__OTClique_leaveClique___block_invoke;
      v62[3] = &unk_1E70E0B18;
      v62[4] = buf;
      [v16 leaveClique:v37 reply:v62];

      if (clique)
      {
        *clique = *(*&buf[8] + 40);
      }

      v56 = *(*&buf[8] + 40);
      v26 = v56 == 0;
      v55 = objc_alloc(getAAFAnalyticsEventSecurityClass());
      v60 = [(OTClique *)self ctx];
      altDSID2 = [v60 altDSID];
      v59 = [(OTClique *)self ctx];
      flowID = [v59 flowID];
      v38 = [(OTClique *)self ctx];
      deviceSessionID = [v38 deviceSessionID];
      v40 = getkSecurityRTCEventNameOctagonTrustLost();
      v41 = [(OTClique *)self ctx];
      testsEnabled = [v41 testsEnabled];
      v43 = getkSecurityRTCEventCategoryAccountDataAccessRecovery();
      LOBYTE(v54) = 1;
      v25 = [v55 initWithKeychainCircleMetrics:0 altDSID:altDSID2 flowID:flowID deviceSessionID:deviceSessionID eventName:v40 testsAreEnabled:testsEnabled canSendMetrics:v54 category:v43];

      v44 = MEMORY[0x1E696ABC0];
      v45 = getkSecurityRTCErrorDomain();
      v46 = [v44 errorWithDomain:v45 code:6 description:@"API invoked departure"];
      [v25 sendMetricWithResult:1 error:v46];

      v47 = secLogObjForScope("clique-leaveClique");
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *v64 = 67109120;
        LODWORD(v65) = v56 == 0;
        _os_log_impl(&dword_1887D2000, v47, OS_LOG_TYPE_DEFAULT, "leaveClique complete: %d", v64, 8u);
      }

      v48 = _OctagonSignpostGetNanoseconds(v11, v61);
      v49 = _OctagonSignpostLogSystem();
      v50 = v49;
      if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
      {
        *v64 = 67240192;
        LODWORD(v65) = v56 == 0;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v50, OS_SIGNPOST_INTERVAL_END, v11, "LeaveClique", " OctagonSignpostNameLeaveClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameLeaveClique}d ", v64, 8u);
      }

      v51 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *v64 = 134218496;
        v65 = v11;
        v66 = 2048;
        v67 = v48 / 1000000000.0;
        v68 = 1026;
        v69 = v56 == 0;
        _os_log_impl(&dword_1887D2000, v51, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: LeaveClique  OctagonSignpostNameLeaveClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameLeaveClique}d ", v64, 0x1Cu);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v27 = _OctagonSignpostGetNanoseconds(v11, v61);
    v28 = _OctagonSignpostLogSystem();
    v29 = v28;
    if (v14 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v28))
    {
      *buf = 67240192;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v29, OS_SIGNPOST_INTERVAL_END, v11, "LeaveClique", " OctagonSignpostNameLeaveClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameLeaveClique}d ", buf, 8u);
    }

    v30 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = v27 / 1000000000.0;
      *&buf[22] = 1026;
      LODWORD(v71) = 0;
      _os_log_impl(&dword_1887D2000, v30, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: LeaveClique  OctagonSignpostNameLeaveClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameLeaveClique}d ", buf, 0x1Cu);
    }

    v26 = 0;
  }

  v52 = *MEMORY[0x1E69E9840];
  return v26;
}

void __24__OTClique_leaveClique___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("clique-leaveClique");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "leaveClique errored: %@", &v9, 0xCu);
    }

    v6 = *(*(a1 + 32) + 8);
    v7 = v3;
    v4 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else if (v5)
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "leaveClique success.", &v9, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)removeFriendsInClique:(id)clique error:(id *)error
{
  v63 = *MEMORY[0x1E69E9840];
  cliqueCopy = clique;
  v6 = secLogObjForScope("clique-removefriends");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(OTClique *)self ctx];
    context = [v7 context];
    v9 = [(OTClique *)self ctx];
    altDSID = [v9 altDSID];
    *buf = 138412546;
    *&buf[4] = context;
    *&buf[12] = 2112;
    *&buf[14] = altDSID;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "removeFriendsInClique invoked using context:%@, altdsid:%@", buf, 0x16u);
  }

  v11 = _OctagonSignpostLogSystem();
  v12 = os_signpost_id_generate(v11);
  v43 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  v42 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "RemoveFriendsInClique", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v12;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RemoveFriendsInClique  enableTelemetry=YES ", buf, 0xCu);
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v18 = cliqueCopy;
  v19 = [v18 countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v19)
  {
    v20 = *v49;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v49 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v48 + 1) + 8 * i);
        if ([v22 hasPrefix:@"SHA256:"])
        {
          v23 = array;
        }

        else
        {
          v23 = array2;
        }

        [v23 addObject:v22];
      }

      v19 = [v18 countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v19);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v59 = __Block_byref_object_copy__5565;
  v60 = __Block_byref_object_dispose__5566;
  v61 = 0;
  if (![array count])
  {
    goto LABEL_23;
  }

  v24 = [(OTClique *)self makeOTControl:error];
  if (v24)
  {
    v25 = secLogObjForScope("clique-removefriends");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v52 = 138412290;
      v53 = array;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "octagon: removing octagon friends: %@", v52, 0xCu);
    }

    v26 = [OTControlArguments alloc];
    v27 = [(OTClique *)self ctx];
    v28 = [(OTControlArguments *)v26 initWithConfiguration:v27];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __40__OTClique_removeFriendsInClique_error___block_invoke;
    v45[3] = &unk_1E70D6DA0;
    v47 = buf;
    v46 = array;
    [v24 removeFriendsInClique:v28 peerIDs:v46 reply:v45];

LABEL_23:
    if (error)
    {
      v29 = *(*&buf[8] + 40);
      if (v29)
      {
        *error = v29;
      }
    }

    v30 = secLogObjForScope("clique-removefriends");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v52 = 67109120;
      LODWORD(v53) = 1;
      _os_log_impl(&dword_1887D2000, v30, OS_LOG_TYPE_DEFAULT, "removeFriendsInClique complete: %d", v52, 8u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v12, v43);
    v32 = _OctagonSignpostLogSystem();
    v33 = v32;
    if (v42 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *v52 = 67240192;
      LODWORD(v53) = 1;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v33, OS_SIGNPOST_INTERVAL_END, v12, "RemoveFriendsInClique", " OctagonSignpostNameRemoveFriendsInClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveFriendsInClique}d ", v52, 8u);
    }

    v34 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *v52 = 134218496;
      v53 = v12;
      v54 = 2048;
      v55 = Nanoseconds / 1000000000.0;
      v56 = 1026;
      v57 = 1;
      _os_log_impl(&dword_1887D2000, v34, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveFriendsInClique  OctagonSignpostNameRemoveFriendsInClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveFriendsInClique}d ", v52, 0x1Cu);
    }

    v35 = *(*&buf[8] + 40) == 0;
    goto LABEL_40;
  }

  v36 = _OctagonSignpostGetNanoseconds(v12, v43);
  v37 = _OctagonSignpostLogSystem();
  v38 = v37;
  if (v42 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *v52 = 67240192;
    LODWORD(v53) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v38, OS_SIGNPOST_INTERVAL_END, v12, "RemoveFriendsInClique", " OctagonSignpostNameRemoveFriendsInClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveFriendsInClique}d ", v52, 8u);
  }

  v39 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *v52 = 134218496;
    v53 = v12;
    v54 = 2048;
    v55 = v36 / 1000000000.0;
    v56 = 1026;
    v57 = 0;
    _os_log_impl(&dword_1887D2000, v39, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveFriendsInClique  OctagonSignpostNameRemoveFriendsInClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveFriendsInClique}d ", v52, 0x1Cu);
  }

  v35 = 0;
LABEL_40:
  _Block_object_dispose(buf, 8);

  v40 = *MEMORY[0x1E69E9840];
  return v35;
}

void __40__OTClique_removeFriendsInClique_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("clique-removefriends");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "removeFriendsInClique failed: unable to remove friends: %@", &v10, 0xCu);
    }

    v6 = *(*(a1 + 40) + 8);
    v7 = v3;
    v4 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else if (v5)
  {
    v8 = *(a1 + 32);
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "octagon: friends removed: %@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (int64_t)cachedCliqueStatus:(BOOL)status error:(id *)error
{
  statusCopy = status;
  v7 = objc_alloc_init(OTOperationConfiguration);
  [(OTOperationConfiguration *)v7 setTimeoutWaitForCKAccount:0];
  if (statusCopy)
  {
    [(OTOperationConfiguration *)v7 setUseCachedAccountStatus:1];
  }

  v8 = [(OTClique *)self _fetchCliqueStatus:v7 error:error];

  return v8;
}

- (int64_t)fetchCliqueStatus:(id *)status
{
  v5 = objc_alloc_init(OTOperationConfiguration);
  [(OTOperationConfiguration *)v5 setTimeoutWaitForCKAccount:0];
  v6 = [(OTClique *)self _fetchCliqueStatus:v5 error:status];

  return v6;
}

- (int64_t)_fetchCliqueStatus:(id)status error:(id *)error
{
  v76 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = -1;
  v6 = _OctagonSignpostLogSystem();
  v7 = os_signpost_id_generate(v6);
  v49 = mach_continuous_time();

  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  v10 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FetchCliqueStatus", " enableTelemetry=YES ", buf, 2u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v7;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchCliqueStatus  enableTelemetry=YES ", buf, 0xCu);
  }

  v12 = [(OTClique *)self makeOTControl:error];
  if (v12)
  {
    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = __Block_byref_object_copy__5565;
    v61 = __Block_byref_object_dispose__5566;
    v62 = 0;
    v13 = [OTControlArguments alloc];
    v14 = [(OTClique *)self ctx];
    v15 = [(OTControlArguments *)v13 initWithConfiguration:v14];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __37__OTClique__fetchCliqueStatus_error___block_invoke;
    v56[3] = &unk_1E70D6D50;
    v56[4] = &v63;
    v56[5] = &v57;
    [v12 fetchCliqueStatus:v15 configuration:statusCopy reply:v56];

    if (_fetchCliqueStatus_error__onceToken != -1)
    {
      dispatch_once(&_fetchCliqueStatus_error__onceToken, &__block_literal_global_305);
    }

    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__OTClique__fetchCliqueStatus_error___block_invoke_2;
    block[3] = &unk_1E70D6D78;
    block[4] = self;
    block[5] = &v52;
    block[6] = &v63;
    dispatch_sync(_fetchCliqueStatus_error__statusReturnsQueue, block);
    if (v58[5] || ![statusCopy useCachedAccountStatus] || *(v53 + 24) == 1)
    {
      v16 = secLogObjForScope("clique-status");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        if ([statusCopy useCachedAccountStatus])
        {
          v17 = &unk_188967DD7;
        }

        else
        {
          v17 = "non-";
        }

        v18 = [(OTClique *)self ctx];
        context = [v18 context];
        v20 = [(OTClique *)self ctx];
        altDSID = [v20 altDSID];
        v22 = altDSID;
        v23 = v64[3] + 1;
        if (v23 > 5)
        {
          v24 = @"CliqueStatusIn";
        }

        else
        {
          v24 = off_1E70D6FD0[v23];
        }

        v31 = v58[5];
        *buf = 136447234;
        *&buf[4] = v17;
        v68 = 2112;
        v69 = *&context;
        v70 = 2112;
        v71 = altDSID;
        v72 = 2112;
        v73 = v24;
        v74 = 2112;
        v75 = v31;
        _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "cliqueStatus(%{public}scached)(context:%@, altDSID:%@) returning %@ (error: %@)", buf, 0x34u);
      }
    }

    else
    {
      v16 = secLogObjForScope("clique-status");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        if ([statusCopy useCachedAccountStatus])
        {
          v40 = &unk_188967DD7;
        }

        else
        {
          v40 = "non-";
        }

        v41 = [(OTClique *)self ctx];
        context2 = [v41 context];
        v43 = [(OTClique *)self ctx];
        altDSID2 = [v43 altDSID];
        v45 = altDSID2;
        v46 = v64[3] + 1;
        if (v46 > 5)
        {
          v47 = @"CliqueStatusIn";
        }

        else
        {
          v47 = off_1E70D6FD0[v46];
        }

        v48 = v58[5];
        *buf = 136447234;
        *&buf[4] = v40;
        v68 = 2112;
        v69 = *&context2;
        v70 = 2112;
        v71 = altDSID2;
        v72 = 2112;
        v73 = v47;
        v74 = 2112;
        v75 = v48;
        _os_log_debug_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEBUG, "cliqueStatus(%{public}scached)(context:%@, altDSID:%@) returning %@ (error: %@)", buf, 0x34u);
      }
    }

    _Block_object_dispose(&v52, 8);
    v32 = 1;
    if (error)
    {
      v33 = v58[5];
      if (v33)
      {
        v32 = 0;
        *error = v33;
      }
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v7, v49);
    v35 = _OctagonSignpostLogSystem();
    v36 = v35;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *buf = 67240192;
      *&buf[4] = v32;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v36, OS_SIGNPOST_INTERVAL_END, v7, "FetchCliqueStatus", " OctagonSignpostNameFetchCliqueStatus=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchCliqueStatus}d ", buf, 8u);
    }

    v37 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v7;
      v68 = 2048;
      v69 = Nanoseconds / 1000000000.0;
      v70 = 1026;
      LODWORD(v71) = v32;
      _os_log_impl(&dword_1887D2000, v37, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchCliqueStatus  OctagonSignpostNameFetchCliqueStatus=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchCliqueStatus}d ", buf, 0x1Cu);
    }

    v30 = v64[3];
    _Block_object_dispose(&v57, 8);
  }

  else
  {
    v25 = secLogObjForScope("clique-status");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "cliqueStatus noOTControl", buf, 2u);
    }

    v26 = _OctagonSignpostGetNanoseconds(v7, v49);
    v27 = _OctagonSignpostLogSystem();
    v28 = v27;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 67240192;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v28, OS_SIGNPOST_INTERVAL_END, v7, "FetchCliqueStatus", " OctagonSignpostNameFetchCliqueStatus=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchCliqueStatus}d ", buf, 8u);
    }

    v29 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v7;
      v68 = 2048;
      v69 = v26 / 1000000000.0;
      v70 = 1026;
      LODWORD(v71) = 0;
      _os_log_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchCliqueStatus  OctagonSignpostNameFetchCliqueStatus=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchCliqueStatus}d ", buf, 0x1Cu);
    }

    v30 = -1;
  }

  _Block_object_dispose(&v63, 8);
  v38 = *MEMORY[0x1E69E9840];
  return v30;
}

void __37__OTClique__fetchCliqueStatus_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  if (v6)
  {
    *(v7 + 24) = -1;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v8 = secLogObjForScope("clique-status");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "octagon clique status errored: %@", &v10, 0xCu);
    }
  }

  else
  {
    *(v7 + 24) = a2;
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __37__OTClique__fetchCliqueStatus_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) ctx];
  v9 = [v2 context];

  if (!v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_9;
  }

  v3 = [_fetchCliqueStatus_error__statusReturns objectForKeyedSubscript:?];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
    v6 = *(*(*(a1 + 48) + 8) + 24);
    if (v5 == v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = *(*(*(a1 + 48) + 8) + 24);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  [_fetchCliqueStatus_error__statusReturns setObject:v7 forKeyedSubscript:v9];

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_8:

LABEL_9:

  return MEMORY[0x1EEE66BE0]();
}

uint64_t __37__OTClique__fetchCliqueStatus_error___block_invoke_303()
{
  v0 = dispatch_queue_create("status_returns", 0);
  v1 = _fetchCliqueStatus_error__statusReturnsQueue;
  _fetchCliqueStatus_error__statusReturnsQueue = v0;

  _fetchCliqueStatus_error__statusReturns = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

- (id)setupPairingChannelAsAcceptor:(id)acceptor error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return [(OTClique *)self setupPairingChannelAsAcceptor:acceptor];
}

- (id)setupPairingChannelAsAcceptor:(id)acceptor
{
  v29 = *MEMORY[0x1E69E9840];
  acceptorCopy = acceptor;
  altDSID = [acceptorCopy altDSID];
  if (altDSID)
  {
  }

  else
  {
    v14 = [(OTClique *)self ctx];
    altDSID2 = [v14 altDSID];

    if (altDSID2)
    {
      v16 = secLogObjForScope("octagon-account");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(OTClique *)self ctx];
        altDSID3 = [v17 altDSID];
        v25 = 138412290;
        v26 = altDSID3;
        _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "Configuring pairing channel with configured altDSID: %@", &v25, 0xCu);
      }

      v11 = [(OTClique *)self ctx];
      altDSID4 = [v11 altDSID];
      [acceptorCopy setAltDSID:altDSID4];
      goto LABEL_11;
    }
  }

  altDSID5 = [acceptorCopy altDSID];

  if (!altDSID5)
  {
    goto LABEL_15;
  }

  altDSID6 = [acceptorCopy altDSID];
  v8 = [(OTClique *)self ctx];
  altDSID7 = [v8 altDSID];
  v10 = [altDSID6 isEqualToString:altDSID7];

  v11 = secLogObjForScope("octagon-account");
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v12)
    {
      altDSID8 = [acceptorCopy altDSID];
      v20 = [(OTClique *)self ctx];
      altDSID9 = [v20 altDSID];
      v25 = 138412546;
      v26 = altDSID8;
      v27 = 2112;
      v28 = altDSID9;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Pairing channel context configured with altDSID (%@) which does not match Clique altDSID (%@), possible issues ahead", &v25, 0x16u);
    }

    goto LABEL_14;
  }

  if (v12)
  {
    altDSID4 = [acceptorCopy altDSID];
    v25 = 138412290;
    v26 = altDSID4;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Pairing channel context already configured with altDSID: %@", &v25, 0xCu);
LABEL_11:
  }

LABEL_14:

LABEL_15:
  v22 = [getKCPairingChannelClass() pairingChannelAcceptor:acceptorCopy];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)setupPairingChannelAsInitator:(id)initator error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return [(OTClique *)self setupPairingChannelAsInitiator:initator];
}

- (id)setupPairingChannelAsInitiator:(id)initiator
{
  v29 = *MEMORY[0x1E69E9840];
  initiatorCopy = initiator;
  altDSID = [initiatorCopy altDSID];
  if (altDSID)
  {
  }

  else
  {
    v14 = [(OTClique *)self ctx];
    altDSID2 = [v14 altDSID];

    if (altDSID2)
    {
      v16 = secLogObjForScope("octagon-account");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(OTClique *)self ctx];
        altDSID3 = [v17 altDSID];
        v25 = 138412290;
        v26 = altDSID3;
        _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "Configuring pairing channel with configured altDSID: %@", &v25, 0xCu);
      }

      v11 = [(OTClique *)self ctx];
      altDSID4 = [v11 altDSID];
      [initiatorCopy setAltDSID:altDSID4];
      goto LABEL_11;
    }
  }

  altDSID5 = [initiatorCopy altDSID];

  if (!altDSID5)
  {
    goto LABEL_15;
  }

  altDSID6 = [initiatorCopy altDSID];
  v8 = [(OTClique *)self ctx];
  altDSID7 = [v8 altDSID];
  v10 = [altDSID6 isEqualToString:altDSID7];

  v11 = secLogObjForScope("octagon-account");
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v12)
    {
      altDSID8 = [initiatorCopy altDSID];
      v20 = [(OTClique *)self ctx];
      altDSID9 = [v20 altDSID];
      v25 = 138412546;
      v26 = altDSID8;
      v27 = 2112;
      v28 = altDSID9;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Pairing channel context configured with altDSID (%@) which does not match Clique altDSID (%@), possible issues ahead", &v25, 0x16u);
    }

    goto LABEL_14;
  }

  if (v12)
  {
    altDSID4 = [initiatorCopy altDSID];
    v25 = 138412290;
    v26 = altDSID4;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Pairing channel context already configured with altDSID: %@", &v25, 0xCu);
LABEL_11:
  }

LABEL_14:

LABEL_15:
  v22 = [getKCPairingChannelClass() pairingChannelInitiator:initiatorCopy];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

void __174__OTClique_resetAndEstablish_idmsTargetContext_idmsCuttlefishPassword_notifyIdMS_accountSettings_isGuitarfish_accountIsW_altDSID_flowID_deviceSessionID_canSendMetrics_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope("clique-resetandestablish");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "resetAndEstablish returned an error: %@", &v8, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v3 == 0;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)establish:(id)establish error:(id *)error
{
  v82 = *MEMORY[0x1E69E9840];
  establishCopy = establish;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v6 = secLogObjForScope("clique-establish");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "establish started", &buf, 2u);
  }

  v7 = objc_alloc(getAAFAnalyticsEventSecurityClass());
  altDSID = [establishCopy altDSID];
  flowID = [establishCopy flowID];
  deviceSessionID = [establishCopy deviceSessionID];
  *v80 = 0;
  *&v80[8] = v80;
  *&v80[16] = 0x2020000000;
  v11 = getkSecurityRTCEventNameEstablishSymbolLoc_ptr;
  v81 = getkSecurityRTCEventNameEstablishSymbolLoc_ptr;
  if (!getkSecurityRTCEventNameEstablishSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v76 = __getkSecurityRTCEventNameEstablishSymbolLoc_block_invoke;
    v77 = &unk_1E70E1270;
    v78 = v80;
    v12 = KeychainCircleLibrary();
    v13 = dlsym(v12, "kSecurityRTCEventNameEstablish");
    *(*(v78 + 1) + 24) = v13;
    getkSecurityRTCEventNameEstablishSymbolLoc_ptr = *(*(v78 + 1) + 24);
    v11 = *(*&v80[8] + 24);
  }

  _Block_object_dispose(v80, 8);
  if (!v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v65 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCEventNameEstablish(void)"];
    [currentHandler handleFailureInFunction:v65 file:@"OTClique.m" lineNumber:82 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v14 = *v11;
  v15 = [(OTClique *)self ctx];
  testsEnabled = [v15 testsEnabled];
  v17 = getkSecurityRTCEventCategoryAccountDataAccessRecovery();
  LOBYTE(v66) = 1;
  v18 = [v7 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v14 testsAreEnabled:testsEnabled canSendMetrics:v66 category:v17];

  v19 = _OctagonSignpostLogSystem();
  v20 = os_signpost_id_generate(v19);
  v21 = mach_continuous_time();

  v22 = _OctagonSignpostLogSystem();
  v23 = v22;
  v24 = v20 - 1;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v20, "Establish", " enableTelemetry=YES ", &buf, 2u);
  }

  v25 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v20;
    _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: Establish  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__5565;
  v78 = __Block_byref_object_dispose__5566;
  v79 = 0;
  obj = 0;
  v26 = [(OTClique *)self makeOTControl:&obj];
  objc_storeStrong(&v79, obj);
  if (v26 && !*(*(&buf + 1) + 40))
  {
    v69 = 0;
    v32 = [(OTClique *)self fetchCliqueStatus:&v69];
    v33 = v69;
    if (v33)
    {
      v34 = secLogObjForScope("clique-establish");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *v80 = 138412290;
        *&v80[4] = v33;
        _os_log_impl(&dword_1887D2000, v34, OS_LOG_TYPE_DEFAULT, "fetching clique status failed: %@", v80, 0xCu);
      }

      v35 = v33;
      if (error)
      {
        v36 = v33;
        *error = v33;
      }

      Nanoseconds = _OctagonSignpostGetNanoseconds(v20, v21);
      v38 = _OctagonSignpostLogSystem();
      v39 = v38;
      if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        *v80 = 67240192;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v39, OS_SIGNPOST_INTERVAL_END, v20, "Establish", " OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v80, 8u);
      }

      v40 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *v80 = 134218496;
        *&v80[4] = v20;
        *&v80[12] = 2048;
        *&v80[14] = Nanoseconds / 1000000000.0;
        *&v80[22] = 1026;
        LODWORD(v81) = 0;
        _os_log_impl(&dword_1887D2000, v40, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: Establish  OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v80, 0x1Cu);
      }

      [v18 sendMetricWithResult:0 error:v35];
      v31 = 0;
    }

    else if (v32 == 3)
    {
      v41 = [OTControlArguments alloc];
      v35 = 0;
      v42 = [(OTClique *)self ctx];
      v43 = [(OTControlArguments *)v41 initWithConfiguration:v42];
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __28__OTClique_establish_error___block_invoke;
      v68[3] = &unk_1E70D6D00;
      v68[4] = &v71;
      v68[5] = &buf;
      [v26 establish:v43 reply:v68];

      v44 = secLogObjForScope("clique-establish");
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = *(v72 + 24);
        *v80 = 67109120;
        *&v80[4] = v45;
        _os_log_impl(&dword_1887D2000, v44, OS_LOG_TYPE_DEFAULT, "establish complete: %{BOOL}d", v80, 8u);
      }

      v46 = *(*(&buf + 1) + 40);
      if (v46)
      {
        if (error)
        {
          v47 = v46;
          *error = v46;
          v46 = *(*(&buf + 1) + 40);
        }

        [v18 sendMetricWithResult:0 error:v46];
        v48 = _OctagonSignpostGetNanoseconds(v20, v21);
        v49 = _OctagonSignpostLogSystem();
        v50 = v49;
        if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
        {
          *v80 = 67240192;
          _os_signpost_emit_with_name_impl(&dword_1887D2000, v50, OS_SIGNPOST_INTERVAL_END, v20, "Establish", " OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v80, 8u);
        }

        v51 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *v80 = 134218496;
          *&v80[4] = v20;
          *&v80[12] = 2048;
          *&v80[14] = v48 / 1000000000.0;
          *&v80[22] = 1026;
          LODWORD(v81) = 0;
          _os_log_impl(&dword_1887D2000, v51, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: Establish  OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v80, 0x1Cu);
        }

        v31 = 0;
      }

      else
      {
        v54 = _OctagonSignpostGetNanoseconds(v20, v21);
        v55 = _OctagonSignpostLogSystem();
        v56 = v55;
        if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
        {
          *v80 = 67240192;
          *&v80[4] = 1;
          _os_signpost_emit_with_name_impl(&dword_1887D2000, v56, OS_SIGNPOST_INTERVAL_END, v20, "Establish", " OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v80, 8u);
        }

        v57 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *v80 = 134218496;
          *&v80[4] = v20;
          *&v80[12] = 2048;
          *&v80[14] = v54 / 1000000000.0;
          *&v80[22] = 1026;
          LODWORD(v81) = 1;
          _os_log_impl(&dword_1887D2000, v57, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: Establish  OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v80, 0x1Cu);
        }

        [v18 sendMetricWithResult:1 error:0];
        v31 = *(v72 + 24);
      }
    }

    else
    {
      v52 = secLogObjForScope("clique-establish");
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        if ((v32 + 1) > 5)
        {
          v53 = @"CliqueStatusIn";
        }

        else
        {
          v53 = off_1E70D7000[v32 + 1];
        }

        *v80 = 138412290;
        *&v80[4] = v53;
        _os_log_impl(&dword_1887D2000, v52, OS_LOG_TYPE_DEFAULT, "clique status is %@; performing no Octagon actions", v80, 0xCu);
      }

      v35 = 0;
      v58 = _OctagonSignpostGetNanoseconds(v20, v21);
      v59 = _OctagonSignpostLogSystem();
      v60 = v59;
      if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
      {
        *v80 = 67240192;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v60, OS_SIGNPOST_INTERVAL_END, v20, "Establish", " OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v80, 8u);
      }

      v61 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *v80 = 134218496;
        *&v80[4] = v20;
        *&v80[12] = 2048;
        *&v80[14] = v58 / 1000000000.0;
        *&v80[22] = 1026;
        LODWORD(v81) = 0;
        _os_log_impl(&dword_1887D2000, v61, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: Establish  OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v80, 0x1Cu);
      }

      v31 = 1;
      [v18 sendMetricWithResult:1 error:0];
    }
  }

  else
  {
    v27 = _OctagonSignpostGetNanoseconds(v20, v21);
    v28 = _OctagonSignpostLogSystem();
    v29 = v28;
    if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *v80 = 67240192;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v29, OS_SIGNPOST_INTERVAL_END, v20, "Establish", " OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v80, 8u);
    }

    v30 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v80 = 134218496;
      *&v80[4] = v20;
      *&v80[12] = 2048;
      *&v80[14] = v27 / 1000000000.0;
      *&v80[22] = 1026;
      LODWORD(v81) = 0;
      _os_log_impl(&dword_1887D2000, v30, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: Establish  OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v80, 0x1Cu);
    }

    [v18 sendMetricWithResult:0 error:*(*(&buf + 1) + 40)];
    v31 = 0;
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v71, 8);

  v62 = *MEMORY[0x1E69E9840];
  return v31 & 1;
}

void __28__OTClique_establish_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope("clique-establish");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "establish returned an error: %@", &v8, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v3 == 0;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)establish:(id *)establish
{
  v5 = objc_alloc_init(OTConfigurationContext);
  LOBYTE(establish) = [(OTClique *)self establish:v5 error:establish];

  return establish;
}

- (id)makeOTControl:(id *)control
{
  v4 = [(OTClique *)self ctx];
  v5 = [v4 makeOTControl:control];

  return v5;
}

- (id)cliqueMemberIdentifier:(id *)identifier
{
  v73 = *MEMORY[0x1E69E9840];
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__5565;
  v64 = __Block_byref_object_dispose__5566;
  v65 = 0;
  v4 = _OctagonSignpostLogSystem();
  spid = os_signpost_id_generate(v4);
  v50 = mach_continuous_time();

  v5 = _OctagonSignpostLogSystem();
  v6 = v5;
  v49 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v6, OS_SIGNPOST_INTERVAL_BEGIN, spid, "FetchEgoPeer", " enableTelemetry=YES ", &buf, 2u);
  }

  v7 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = spid;
    _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchEgoPeer  enableTelemetry=YES ", &buf, 0xCu);
  }

  v51 = objc_alloc(getAAFAnalyticsEventSecurityClass());
  v53 = [(OTClique *)self ctx];
  altDSID = [v53 altDSID];
  v9 = [(OTClique *)self ctx];
  flowID = [v9 flowID];
  v11 = [(OTClique *)self ctx];
  deviceSessionID = [v11 deviceSessionID];
  *v71 = 0;
  *&v71[8] = v71;
  *&v71[16] = 0x2020000000;
  v13 = getkSecurityRTCEventNameCliqueMemberIdentifierSymbolLoc_ptr;
  v72 = getkSecurityRTCEventNameCliqueMemberIdentifierSymbolLoc_ptr;
  if (!getkSecurityRTCEventNameCliqueMemberIdentifierSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v67 = __getkSecurityRTCEventNameCliqueMemberIdentifierSymbolLoc_block_invoke;
    v68 = &unk_1E70E1270;
    v69 = v71;
    v14 = KeychainCircleLibrary();
    v15 = dlsym(v14, "kSecurityRTCEventNameCliqueMemberIdentifier");
    *(*(v69 + 1) + 24) = v15;
    getkSecurityRTCEventNameCliqueMemberIdentifierSymbolLoc_ptr = *(*(v69 + 1) + 24);
    v13 = *(*&v71[8] + 24);
  }

  _Block_object_dispose(v71, 8);
  if (!v13)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCEventNameCliqueMemberIdentifier(void)"];
    [currentHandler handleFailureInFunction:v46 file:@"OTClique.m" lineNumber:78 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v16 = *v13;
  v17 = [(OTClique *)self ctx];
  testsEnabled = [v17 testsEnabled];
  v19 = getkSecurityRTCEventCategoryAccountDataAccessRecovery();
  LOBYTE(v47) = 1;
  v52 = [v51 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v16 testsAreEnabled:testsEnabled canSendMetrics:v47 category:v19];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__5565;
  v69 = __Block_byref_object_dispose__5566;
  v70 = 0;
  obj = 0;
  v20 = [(OTClique *)self makeOTControl:&obj];
  objc_storeStrong(&v70, obj);
  if (v20)
  {
    v21 = [OTControlArguments alloc];
    v22 = [(OTClique *)self ctx];
    v23 = [(OTControlArguments *)v21 initWithConfiguration:v22];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __35__OTClique_cliqueMemberIdentifier___block_invoke;
    v55[3] = &unk_1E70D6CD8;
    p_buf = &buf;
    v56 = v52;
    v58 = &v60;
    [v20 fetchEgoPeerID:v23 reply:v55];

    v24 = *(*(&buf + 1) + 40);
    if (v24)
    {
      if (identifier)
      {
        *identifier = v24;
      }

      Nanoseconds = _OctagonSignpostGetNanoseconds(spid, v50);
      v26 = _OctagonSignpostLogSystem();
      v27 = v26;
      if (v49 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *v71 = 67240192;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v27, OS_SIGNPOST_INTERVAL_END, spid, "FetchEgoPeer", " OctagonSignpostNameFetchEgoPeer=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEgoPeer}d ", v71, 8u);
      }

      v28 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v71 = 134218496;
        *&v71[4] = spid;
        *&v71[12] = 2048;
        *&v71[14] = Nanoseconds / 1000000000.0;
        *&v71[22] = 1026;
        LODWORD(v72) = 0;
        _os_log_impl(&dword_1887D2000, v28, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchEgoPeer  OctagonSignpostNameFetchEgoPeer=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEgoPeer}d ", v71, 0x1Cu);
      }

      v29 = 0;
    }

    else
    {
      v36 = secLogObjForScope("clique");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v61[5];
        *v71 = 138412290;
        *&v71[4] = v37;
        _os_log_impl(&dword_1887D2000, v36, OS_LOG_TYPE_DEFAULT, "cliqueMemberIdentifier complete: %@", v71, 0xCu);
      }

      v38 = v61[5];
      v39 = _OctagonSignpostGetNanoseconds(spid, v50);
      v40 = _OctagonSignpostLogSystem();
      v41 = v40;
      if (v49 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        *v71 = 67240192;
        *&v71[4] = v38 != 0;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v41, OS_SIGNPOST_INTERVAL_END, spid, "FetchEgoPeer", " OctagonSignpostNameFetchEgoPeer=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEgoPeer}d ", v71, 8u);
      }

      v42 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v71 = 134218496;
        *&v71[4] = spid;
        *&v71[12] = 2048;
        *&v71[14] = v39 / 1000000000.0;
        *&v71[22] = 1026;
        LODWORD(v72) = v38 != 0;
        _os_log_impl(&dword_1887D2000, v42, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchEgoPeer  OctagonSignpostNameFetchEgoPeer=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEgoPeer}d ", v71, 0x1Cu);
      }

      v29 = v61[5];
    }
  }

  else
  {
    v30 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(*(&buf + 1) + 40);
      *v71 = 138412290;
      *&v71[4] = v31;
      _os_log_impl(&dword_1887D2000, v30, OS_LOG_TYPE_DEFAULT, "octagon: Failed to create OTControl: %@", v71, 0xCu);
    }

    v32 = _OctagonSignpostGetNanoseconds(spid, v50);
    v33 = _OctagonSignpostLogSystem();
    v34 = v33;
    if (v49 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      *v71 = 67240192;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v34, OS_SIGNPOST_INTERVAL_END, spid, "FetchEgoPeer", " OctagonSignpostNameFetchEgoPeer=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEgoPeer}d ", v71, 8u);
    }

    v35 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *v71 = 134218496;
      *&v71[4] = spid;
      *&v71[12] = 2048;
      *&v71[14] = v32 / 1000000000.0;
      *&v71[22] = 1026;
      LODWORD(v72) = 0;
      _os_log_impl(&dword_1887D2000, v35, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchEgoPeer  OctagonSignpostNameFetchEgoPeer=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEgoPeer}d ", v71, 0x1Cu);
    }

    [v52 sendMetricWithResult:0 error:*(*(&buf + 1) + 40)];
    v29 = 0;
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v60, 8);

  v43 = *MEMORY[0x1E69E9840];

  return v29;
}

void __35__OTClique_cliqueMemberIdentifier___block_invoke(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "octagon: Failed to fetch octagon peer ID: %@", &v13, 0xCu);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    v9 = a1[4];
    v10 = 0;
    v11 = v7;
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    v9 = a1[4];
    v10 = v6 != 0;
    v11 = 0;
  }

  [v9 sendMetricWithResult:v10 error:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(OTClique *)self ctx];
  altDSID = [v4 altDSID];
  v6 = [(OTClique *)self ctx];
  context = [v6 context];
  cliqueMemberIdentifier = [(OTClique *)self cliqueMemberIdentifier];
  v9 = [v3 stringWithFormat:@"<OTClique: altDSID:%@ contextID:%@ memberID:%@>", altDSID, context, cliqueMemberIdentifier];

  return v9;
}

- (OTClique)initWithContextData:(id)data
{
  dataCopy = data;
  v24.receiver = self;
  v24.super_class = OTClique;
  v5 = [(OTClique *)&v24 init];
  if (v5)
  {
    v6 = objc_alloc_init(OTConfigurationContext);
    ctx = v5->_ctx;
    v5->_ctx = v6;

    context = [dataCopy context];
    v9 = context;
    if (context)
    {
      v10 = context;
    }

    else
    {
      v10 = OTDefaultContext;
    }

    [(OTConfigurationContext *)v5->_ctx setContext:v10];

    containerName = [dataCopy containerName];
    [(OTConfigurationContext *)v5->_ctx setContainerName:containerName];

    dsid = [dataCopy dsid];
    v13 = [dsid copy];
    [(OTConfigurationContext *)v5->_ctx setDsid:v13];

    altDSID = [dataCopy altDSID];
    v15 = [altDSID copy];
    [(OTConfigurationContext *)v5->_ctx setAltDSID:v15];

    otControl = [dataCopy otControl];
    [(OTConfigurationContext *)v5->_ctx setOtControl:otControl];

    ckksControl = [dataCopy ckksControl];
    [(OTConfigurationContext *)v5->_ctx setCkksControl:ckksControl];

    -[OTConfigurationContext setEscrowFetchSource:](v5->_ctx, "setEscrowFetchSource:", [dataCopy escrowFetchSource]);
    -[OTConfigurationContext setOverrideForSetupAccountScript:](v5->_ctx, "setOverrideForSetupAccountScript:", [dataCopy overrideForSetupAccountScript]);
    v18 = [dataCopy sbd];
    [(OTConfigurationContext *)v5->_ctx setSbd:v18];

    flowID = [dataCopy flowID];
    v20 = [flowID copy];
    [(OTConfigurationContext *)v5->_ctx setFlowID:v20];

    deviceSessionID = [dataCopy deviceSessionID];
    v22 = [deviceSessionID copy];
    [(OTConfigurationContext *)v5->_ctx setDeviceSessionID:v22];
  }

  return v5;
}

+ (BOOL)performCKServerUnreadableDataRemoval:(id)removal error:(id *)error
{
  v63[2] = *MEMORY[0x1E69E9840];
  removalCopy = removal;
  isGuitarfish = [removalCopy isGuitarfish];
  v6 = MEMORY[0x1E695E110];
  if (isGuitarfish)
  {
    v7 = MEMORY[0x1E695E118];
  }

  else
  {
    v7 = MEMORY[0x1E695E110];
  }

  v44 = objc_alloc(getAAFAnalyticsEventSecurityClass());
  v8 = getkSecurityRTCFieldAccountIsG();
  v62[0] = v8;
  v63[0] = v7;
  v9 = getkSecurityRTCFieldAccountIsDBR();
  v62[1] = v9;
  v63[1] = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
  altDSID = [removalCopy altDSID];
  flowID = [removalCopy flowID];
  deviceSessionID = [removalCopy deviceSessionID];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v14 = getkSecurityRTCEventNamePerformCKServerUnreadableDataRemovalSymbolLoc_ptr;
  v51 = getkSecurityRTCEventNamePerformCKServerUnreadableDataRemovalSymbolLoc_ptr;
  if (!getkSecurityRTCEventNamePerformCKServerUnreadableDataRemovalSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v58 = __getkSecurityRTCEventNamePerformCKServerUnreadableDataRemovalSymbolLoc_block_invoke;
    v59 = &unk_1E70E1270;
    v60 = &v48;
    v15 = KeychainCircleLibrary();
    v16 = dlsym(v15, "kSecurityRTCEventNamePerformCKServerUnreadableDataRemoval");
    *(*(v60 + 1) + 24) = v16;
    getkSecurityRTCEventNamePerformCKServerUnreadableDataRemovalSymbolLoc_ptr = *(*(v60 + 1) + 24);
    v14 = v49[3];
  }

  _Block_object_dispose(&v48, 8);
  if (!v14)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCEventNamePerformCKServerUnreadableDataRemoval(void)"];
    [currentHandler handleFailureInFunction:v42 file:@"OTClique.m" lineNumber:83 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v17 = *v14;
  testsEnabled = [removalCopy testsEnabled];
  v19 = getkSecurityRTCEventCategoryAccountDataAccessRecovery();
  LOBYTE(v43) = 1;
  v20 = [v44 initWithKeychainCircleMetrics:v10 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v17 testsAreEnabled:testsEnabled canSendMetrics:v43 category:v19];

  v54 = 0;
  v21 = [removalCopy makeOTControl:&v54];
  v22 = v54;
  if (v21)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v58 = 0x3032000000;
    v59 = __Block_byref_object_copy__5565;
    v60 = __Block_byref_object_dispose__5566;
    v61 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__5565;
    v52 = __Block_byref_object_dispose__5566;
    v53 = 0;
    v23 = [[OTControlArguments alloc] initWithConfiguration:removalCopy];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __55__OTClique_performCKServerUnreadableDataRemoval_error___block_invoke;
    v47[3] = &unk_1E70D6FA8;
    v47[4] = &v48;
    [v21 fetchAccountWideSettingsWithForceFetch:1 arguments:v23 reply:v47];
    hasWalrus = [v49[5] hasWalrus];
    v25 = MEMORY[0x1E695E110];
    if (hasWalrus)
    {
      walrus = [v49[5] walrus];
      enabled = [walrus enabled];
      v28 = MEMORY[0x1E695E118];
      if (!enabled)
      {
        v28 = v25;
      }

      v25 = v28;
    }

    v29 = getkSecurityRTCFieldAccountIsW();
    v55 = v29;
    v56 = v25;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    [v20 addMetrics:v30];

    isGuitarfish2 = [removalCopy isGuitarfish];
    v32 = [v25 isEqualToNumber:MEMORY[0x1E695E118]];
    altDSID2 = [removalCopy altDSID];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __55__OTClique_performCKServerUnreadableDataRemoval_error___block_invoke_403;
    v46[3] = &unk_1E70E0B18;
    v46[4] = &buf;
    [v21 performCKServerUnreadableDataRemoval:v23 isGuitarfish:isGuitarfish2 accountIsW:v32 altDSID:altDSID2 reply:v46];

    v34 = *(*(&buf + 1) + 40);
    v35 = v34 == 0;
    if (v34)
    {
      if (error)
      {
        v34 = v34;
        *error = v34;
      }

      v36 = *(*(&buf + 1) + 40);
    }

    else
    {
      v36 = 0;
    }

    [v20 sendMetricWithResult:v34 == 0 error:v36];

    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v37 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v22;
      _os_log_impl(&dword_1887D2000, v37, OS_LOG_TYPE_DEFAULT, "clique-perform-ckserver-unreadable-data-removal: unable to create otcontrol: %@", &buf, 0xCu);
    }

    if (error)
    {
      v38 = v22;
      *error = v22;
    }

    [v20 sendMetricWithResult:0 error:v22];
    v35 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v35;
}

void __55__OTClique_performCKServerUnreadableDataRemoval_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "clique-reset-protected-data: failed to fetch account settings: %@", &v12, 0xCu);
    }
  }

  else
  {
    v8 = secLogObjForScope("clique-reset-protected-data");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "fetched account settings: %@", &v12, 0xCu);
    }

    v9 = *(*(a1 + 32) + 8);
    v10 = v5;
    v7 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __55__OTClique_performCKServerUnreadableDataRemoval_error___block_invoke_403(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "clique-perform-ckserver-unreadable-data-removal: failed to remove data from ckserver: %@", &v9, 0xCu);
    }

    v5 = *(*(a1 + 32) + 8);
    v6 = v3;
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
  }

  else
  {
    v7 = secLogObjForScope("clique-perform-ckserver-unreadable-data-removal");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "removed unreadable data from ckserver", &v9, 2u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (BOOL)clearCliqueFromAccount:(id)account error:(id *)error
{
  v87 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  isGuitarfish = [accountCopy isGuitarfish];
  v5 = MEMORY[0x1E695E110];
  if (isGuitarfish)
  {
    v6 = MEMORY[0x1E695E118];
  }

  else
  {
    v6 = MEMORY[0x1E695E110];
  }

  v7 = objc_alloc(getAAFAnalyticsEventSecurityClass());
  v8 = getkSecurityRTCFieldAccountIsG();
  v82[0] = v8;
  v83[0] = v6;
  v9 = getkSecurityRTCFieldAccountIsDBR();
  v82[1] = v9;
  v83[1] = v5;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];
  altDSID = [accountCopy altDSID];
  flowID = [accountCopy flowID];
  deviceSessionID = [accountCopy deviceSessionID];
  *&v84 = 0;
  *(&v84 + 1) = &v84;
  v85 = 0x2020000000;
  v14 = getkSecurityRTCEventNameClearCliqueFromAccountSymbolLoc_ptr;
  v86 = getkSecurityRTCEventNameClearCliqueFromAccountSymbolLoc_ptr;
  if (!getkSecurityRTCEventNameClearCliqueFromAccountSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v76 = __getkSecurityRTCEventNameClearCliqueFromAccountSymbolLoc_block_invoke;
    v77 = &unk_1E70E1270;
    v78 = &v84;
    v15 = KeychainCircleLibrary();
    *(*(&v84 + 1) + 24) = dlsym(v15, "kSecurityRTCEventNameClearCliqueFromAccount");
    getkSecurityRTCEventNameClearCliqueFromAccountSymbolLoc_ptr = *(*(v78 + 1) + 24);
    v14 = *(*(&v84 + 1) + 24);
  }

  _Block_object_dispose(&v84, 8);
  if (!v14)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v69 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCEventNameClearCliqueFromAccount(void)"];
    [currentHandler handleFailureInFunction:v69 file:@"OTClique.m" lineNumber:84 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v16 = *v14;
  testsEnabled = [accountCopy testsEnabled];
  v18 = getkSecurityRTCEventCategoryAccountDataAccessRecovery();
  LOBYTE(v70) = 1;
  v19 = [v7 initWithKeychainCircleMetrics:v10 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v16 testsAreEnabled:testsEnabled canSendMetrics:v70 category:v18];

  if (+[OTClique isCloudServicesAvailable])
  {
    v74 = 0;
    v20 = [accountCopy makeOTControl:&v74];
    v21 = v74;
    if (!v20)
    {
      v29 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v21;
        _os_log_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEFAULT, "clique-reset-account-data: unable to create otcontrol: %@", &buf, 0xCu);
      }

      if (error)
      {
        v30 = v21;
        *error = v21;
      }

      [v19 sendMetricWithResult:0 error:v21];
      v28 = 0;
      goto LABEL_47;
    }

    v22 = [accountCopy sbd];
    v24 = v22;
    if (v22)
    {
      v25 = v22;
    }

    else
    {
      gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v23);
      v25 = [objc_alloc(*(v31 + 3448)) initWithUserActivityLabel:@"clique-clear-from-account"];
    }

    v32 = v25;

    authenticationAppleID = [accountCopy authenticationAppleID];
    v34 = authenticationAppleID == 0;

    if (v34)
    {
      v57 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1887D2000, v57, OS_LOG_TYPE_DEFAULT, "clique-reset-account-data: authenticationAppleID not set on configuration context", &buf, 2u);
      }

      v53 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.security.octagon" code:83 description:@"authenticationAppleID missing from configuration context"];
      [v19 sendMetricWithResult:0 error:v53];
    }

    else
    {
      passwordEquivalentToken = [accountCopy passwordEquivalentToken];
      v36 = passwordEquivalentToken == 0;

      if (!v36)
      {
        Helper_x8__kSecureBackupAuthenticationAppleID = gotLoadHelper_x8__kSecureBackupAuthenticationAppleID(v37);
        v80[0] = **(v39 + 3528);
        authenticationAppleID2 = [accountCopy authenticationAppleID];
        v81[0] = authenticationAppleID2;
        Helper_x8__kSecureBackupAuthenticationPassword = gotLoadHelper_x8__kSecureBackupAuthenticationPassword(v41);
        v80[1] = **(v43 + 3592);
        passwordEquivalentToken2 = [accountCopy passwordEquivalentToken];
        v81[1] = passwordEquivalentToken2;
        v46 = gotLoadHelper_x8__kSecureBackupiCloudDataProtectionDeleteAllRecordsKey(v45);
        v48 = **(v47 + 4008);
        Helper_x9__kSecureBackupContainsiCDPDataKey = gotLoadHelper_x9__kSecureBackupContainsiCDPDataKey(v46);
        v51 = **(v50 + 3672);
        v80[2] = v52;
        v80[3] = v51;
        v81[2] = MEMORY[0x1E695E118];
        v81[3] = MEMORY[0x1E695E118];
        v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:{4, Helper_x9__kSecureBackupContainsiCDPDataKey}];

        v54 = [v32 disableWithInfo:v53];
        if (v54)
        {
          v55 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v54;
            _os_log_impl(&dword_1887D2000, v55, OS_LOG_TYPE_DEFAULT, "clique-reset-account-data: secure backup escrow record deletion failed: %@", &buf, 0xCu);
          }

          if (error)
          {
            v56 = v54;
            *error = v54;
          }

          [v19 sendMetricWithResult:0 error:v54];
          v28 = 0;
        }

        else
        {
          v59 = secLogObjForScope("clique-reset-account-data");
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1887D2000, v59, OS_LOG_TYPE_DEFAULT, "sbd disableWithInfo succeeded", &buf, 2u);
          }

          *&buf = 0;
          *(&buf + 1) = &buf;
          v76 = 0x3032000000;
          v77 = __Block_byref_object_copy__5565;
          v78 = __Block_byref_object_dispose__5566;
          v79 = 0;
          v60 = [[OTControlArguments alloc] initWithConfiguration:accountCopy];
          isGuitarfish2 = [accountCopy isGuitarfish];
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 3221225472;
          v73[2] = __41__OTClique_clearCliqueFromAccount_error___block_invoke;
          v73[3] = &unk_1E70E0B18;
          v73[4] = &buf;
          [v20 clearCliqueFromAccount:v60 resetReason:1 isGuitarfish:isGuitarfish2 reply:v73];

          v62 = *(*(&buf + 1) + 40);
          v28 = v62 == 0;
          if (v62)
          {
            v63 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              v64 = *(*(&buf + 1) + 40);
              LODWORD(v84) = 138412290;
              *(&v84 + 4) = v64;
              _os_log_impl(&dword_1887D2000, v63, OS_LOG_TYPE_DEFAULT, "clique-reset-account-data: account reset failed: %@", &v84, 0xCu);
            }

            if (error)
            {
              *error = *(*(&buf + 1) + 40);
            }

            v65 = *(*(&buf + 1) + 40);
          }

          else
          {
            v65 = 0;
          }

          [v19 sendMetricWithResult:v62 == 0 error:v65];
          _Block_object_dispose(&buf, 8);
        }

        goto LABEL_46;
      }

      v58 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1887D2000, v58, OS_LOG_TYPE_DEFAULT, "clique-reset-account-data: passwordEquivalentToken not set on configuration context", &buf, 2u);
      }

      v53 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.security.octagon" code:84 description:@"passwordEquivalentToken missing from configuration context"];
      [v19 sendMetricWithResult:0 error:v53];
    }

    v28 = 0;
LABEL_46:

LABEL_47:
    goto LABEL_48;
  }

  v26 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  v21 = v26;
  if (error)
  {
    v27 = v26;
    *error = v21;
  }

  [v19 sendMetricWithResult:0 error:v21];
  v28 = 0;
LABEL_48:

  v66 = *MEMORY[0x1E69E9840];
  return v28;
}

void __41__OTClique_clearCliqueFromAccount_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "clique-reset-account-data: failed to reset: %@", &v9, 0xCu);
    }

    v5 = *(*(a1 + 32) + 8);
    v6 = v3;
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
  }

  else
  {
    v7 = secLogObjForScope("clique-reset-account-data");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "reset octagon", &v9, 2u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)resetProtectedData:(id)data idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s error:(id *)error
{
  sCopy = s;
  v194 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  contextCopy = context;
  passwordCopy = password;
  v161 = dataCopy;
  isGuitarfish = [dataCopy isGuitarfish];
  v11 = MEMORY[0x1E695E110];
  if (isGuitarfish)
  {
    v11 = MEMORY[0x1E695E118];
  }

  v156 = v11;
  v12 = objc_alloc(getAAFAnalyticsEventSecurityClass());
  v13 = getkSecurityRTCFieldAccountIsG();
  v188[0] = v13;
  v189[0] = v156;
  v14 = getkSecurityRTCFieldAccountIsDBR();
  v188[1] = v14;
  v189[1] = MEMORY[0x1E695E110];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v189 forKeys:v188 count:2];
  altDSID = [v161 altDSID];
  flowID = [v161 flowID];
  deviceSessionID = [v161 deviceSessionID];
  *&v190 = 0;
  *(&v190 + 1) = &v190;
  v191 = 0x2020000000;
  v19 = getkSecurityRTCEventNameResetProtectedDataSymbolLoc_ptr;
  v192 = getkSecurityRTCEventNameResetProtectedDataSymbolLoc_ptr;
  if (!getkSecurityRTCEventNameResetProtectedDataSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v182 = __getkSecurityRTCEventNameResetProtectedDataSymbolLoc_block_invoke;
    v183 = &unk_1E70E1270;
    v184 = &v190;
    v20 = KeychainCircleLibrary();
    *(*(&v190 + 1) + 24) = dlsym(v20, "kSecurityRTCEventNameResetProtectedData");
    getkSecurityRTCEventNameResetProtectedDataSymbolLoc_ptr = *(*(v184 + 1) + 24);
    v19 = *(*(&v190 + 1) + 24);
  }

  _Block_object_dispose(&v190, 8);
  if (!v19)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v126 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCEventNameResetProtectedData(void)"];
    [currentHandler handleFailureInFunction:v126 file:@"OTClique.m" lineNumber:81 description:{@"%s", dlerror()}];

    goto LABEL_76;
  }

  v21 = *v19;
  testsEnabled = [v161 testsEnabled];
  v23 = getkSecurityRTCEventCategoryAccountDataAccessRecovery();
  LOBYTE(v131) = 1;
  v24 = [v12 initWithKeychainCircleMetrics:v15 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v21 testsAreEnabled:testsEnabled canSendMetrics:v131 category:v23];

  v164 = 0;
  v25 = [v161 makeOTControl:&v164];
  v160 = v164;
  if (v25)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v182 = 0x3032000000;
    v183 = __Block_byref_object_copy__5565;
    v184 = __Block_byref_object_dispose__5566;
    v185 = 0;
    v26 = [[OTControlArguments alloc] initWithConfiguration:v161];
    v163[0] = MEMORY[0x1E69E9820];
    v163[1] = 3221225472;
    v163[2] = __89__OTClique_resetProtectedData_idmsTargetContext_idmsCuttlefishPassword_notifyIdMS_error___block_invoke;
    v163[3] = &unk_1E70D6FA8;
    v163[4] = &buf;
    [v25 fetchAccountWideSettingsWithForceFetch:1 arguments:v26 reply:v163];
    v151 = v26;
    if ([*(*(&buf + 1) + 40) hasWalrus])
    {
      v27 = getkSecurityRTCFieldAccountIsW();
      v179 = v27;
      walrus = [*(*(&buf + 1) + 40) walrus];
      enabled = [walrus enabled];
      v30 = MEMORY[0x1E695E110];
      if (enabled)
      {
        v30 = MEMORY[0x1E695E118];
      }

      v180 = v30;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
      [v24 addMetrics:v31];

      walrus2 = [*(*(&buf + 1) + 40) walrus];
      enabled2 = [walrus2 enabled];
      v34 = MEMORY[0x1E695E110];
      if (enabled2)
      {
        v34 = MEMORY[0x1E695E118];
      }

      v152 = v34;
    }

    else
    {
      walrus2 = getkSecurityRTCFieldAccountIsW();
      v177 = walrus2;
      v178 = MEMORY[0x1E695E110];
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v178 forKeys:&v177 count:1];
      [v24 addMetrics:v40];

      v152 = MEMORY[0x1E695E110];
    }

    if (+[OTClique isCloudServicesAvailable])
    {
      v41 = [v161 sbd];
      v43 = v41;
      if (v41)
      {
        v153 = v41;
      }

      else
      {
        gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v42);
        v153 = [objc_alloc(*(v48 + 3448)) initWithUserActivityLabel:@"clique-reset-protected-data"];
      }

      authenticationAppleID = [v161 authenticationAppleID];
      v50 = authenticationAppleID == 0;

      if (v50)
      {
        v86 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v190) = 0;
          _os_log_impl(&dword_1887D2000, v86, OS_LOG_TYPE_DEFAULT, "clique-reset-protected-data: authenticationAppleID not set on configuration context", &v190, 2u);
        }

        v47 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.security.octagon" code:83 description:@"authenticationAppleID missing from configuration context"];
        [v24 sendMetricWithResult:0 error:v47];
      }

      else
      {
        passwordEquivalentToken = [v161 passwordEquivalentToken];
        v52 = passwordEquivalentToken == 0;

        if (!v52)
        {
          v142 = objc_alloc(getAAFAnalyticsEventSecurityClass());
          v147 = getkSecurityRTCFieldAccountIsG();
          v175[0] = v147;
          v176[0] = v156;
          v144 = getkSecurityRTCFieldAccountIsDBR();
          v175[1] = v144;
          v176[1] = MEMORY[0x1E695E110];
          v53 = getkSecurityRTCFieldAccountIsW();
          v175[2] = v53;
          v176[2] = v152;
          v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v176 forKeys:v175 count:3];
          altDSID2 = [v161 altDSID];
          flowID2 = [v161 flowID];
          deviceSessionID2 = [v161 deviceSessionID];
          cf = 0;
          p_cf = &cf;
          v167 = 0x2020000000;
          v58 = getkSecurityRTCEventNameRPDDeleteAllRecordsSymbolLoc_ptr;
          v168 = getkSecurityRTCEventNameRPDDeleteAllRecordsSymbolLoc_ptr;
          if (!getkSecurityRTCEventNameRPDDeleteAllRecordsSymbolLoc_ptr)
          {
            *&v190 = MEMORY[0x1E69E9820];
            *(&v190 + 1) = 3221225472;
            v191 = __getkSecurityRTCEventNameRPDDeleteAllRecordsSymbolLoc_block_invoke;
            v192 = &unk_1E70E1270;
            v193 = &cf;
            v59 = KeychainCircleLibrary();
            v60 = dlsym(v59, "kSecurityRTCEventNameRPDDeleteAllRecords");
            *(v193[1] + 3) = v60;
            getkSecurityRTCEventNameRPDDeleteAllRecordsSymbolLoc_ptr = *(v193[1] + 3);
            v58 = p_cf[3];
          }

          _Block_object_dispose(&cf, 8);
          if (!v58)
          {
            goto LABEL_77;
          }

          v61 = *v58;
          testsEnabled2 = [v161 testsEnabled];
          v63 = getkSecurityRTCEventCategoryAccountDataAccessRecovery();
          LOBYTE(v132) = 1;
          v143 = [v142 initWithKeychainCircleMetrics:v54 altDSID:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 eventName:v61 testsAreEnabled:testsEnabled2 canSendMetrics:v132 category:v63];

          Helper_x8__kSecureBackupAuthenticationAppleID = gotLoadHelper_x8__kSecureBackupAuthenticationAppleID(v64);
          v173[0] = **(v66 + 3528);
          authenticationAppleID2 = [v161 authenticationAppleID];
          v174[0] = authenticationAppleID2;
          Helper_x8__kSecureBackupAuthenticationPassword = gotLoadHelper_x8__kSecureBackupAuthenticationPassword(v68);
          v173[1] = **(v70 + 3592);
          passwordEquivalentToken2 = [v161 passwordEquivalentToken];
          v73 = gotLoadHelper_x8__kSecureBackupiCloudDataProtectionDeleteAllRecordsKey(v72);
          v75 = **(v74 + 4008);
          Helper_x9__kSecureBackupContainsiCDPDataKey = gotLoadHelper_x9__kSecureBackupContainsiCDPDataKey(v73);
          v78 = *(v77 + 3672);
          v174[1] = v79;
          v174[2] = MEMORY[0x1E695E118];
          v174[3] = MEMORY[0x1E695E118];
          v80 = *v78;
          v173[2] = v81;
          v173[3] = v80;
          v148 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v174 forKeys:v173 count:{4, Helper_x9__kSecureBackupContainsiCDPDataKey}];

          v82 = [v153 disableWithInfo:v148];
          if (v82)
          {
            v83 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v190) = 138412290;
              *(&v190 + 4) = v82;
              _os_log_impl(&dword_1887D2000, v83, OS_LOG_TYPE_DEFAULT, "clique-reset-protected-data: secure backup escrow record deletion failed: %@", &v190, 0xCu);
            }

            v84 = v82;
            if (error)
            {
              v85 = v82;
              v84 = v82;
              *error = v82;
            }

            [v143 sendMetricWithResult:0 error:v84];
            [v24 sendMetricWithResult:0 error:v82];
            v47 = 0;
            v39 = 0;
LABEL_74:

            goto LABEL_44;
          }

          v90 = secLogObjForScope("clique-reset-protected-data");
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v190) = 0;
            _os_log_impl(&dword_1887D2000, v90, OS_LOG_TYPE_DEFAULT, "sbd disableWithInfo succeeded", &v190, 2u);
          }

          [v143 sendMetricWithResult:1 error:0];
          if (!SOSCCIsSOSTrustAndSyncingEnabledCachedValue())
          {
            v101 = secLogObjForScope("clique-reset-protected-data");
            if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v190) = 0;
              _os_log_impl(&dword_1887D2000, v101, OS_LOG_TYPE_DEFAULT, "platform does not support sos", &v190, 2u);
            }

            goto LABEL_64;
          }

          v91 = objc_alloc(getAAFAnalyticsEventSecurityClass());
          v145 = getkSecurityRTCFieldAccountIsG();
          v171[0] = v145;
          v172[0] = v156;
          v140 = getkSecurityRTCFieldAccountIsDBR();
          v171[1] = v140;
          v172[1] = MEMORY[0x1E695E110];
          v137 = getkSecurityRTCFieldAccountIsW();
          v171[2] = v137;
          v172[2] = v152;
          v136 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v172 forKeys:v171 count:3];
          altDSID3 = [v161 altDSID];
          flowID3 = [v161 flowID];
          deviceSessionID3 = [v161 deviceSessionID];
          cf = 0;
          p_cf = &cf;
          v167 = 0x2020000000;
          v95 = getkSecurityRTCEventNameResetSOSSymbolLoc_ptr;
          v168 = getkSecurityRTCEventNameResetSOSSymbolLoc_ptr;
          if (!getkSecurityRTCEventNameResetSOSSymbolLoc_ptr)
          {
            *&v190 = MEMORY[0x1E69E9820];
            *(&v190 + 1) = 3221225472;
            v191 = __getkSecurityRTCEventNameResetSOSSymbolLoc_block_invoke;
            v192 = &unk_1E70E1270;
            v193 = &cf;
            v96 = KeychainCircleLibrary();
            v97 = dlsym(v96, "kSecurityRTCEventNameResetSOS");
            *(v193[1] + 3) = v97;
            getkSecurityRTCEventNameResetSOSSymbolLoc_ptr = *(v193[1] + 3);
            v95 = p_cf[3];
          }

          _Block_object_dispose(&cf, 8);
          if (v95)
          {
            v98 = *v95;
            testsEnabled3 = [v161 testsEnabled];
            v100 = getkSecurityRTCEventCategoryAccountDataAccessRecovery();
            LOBYTE(v133) = 1;
            v101 = [v91 initWithKeychainCircleMetrics:v136 altDSID:altDSID3 flowID:flowID3 deviceSessionID:deviceSessionID3 eventName:v98 testsAreEnabled:testsEnabled3 canSendMetrics:v133 category:v100];

            cf = 0;
            v102 = SOSCCResetToOffering(&cf);
            if (((cf == 0) & v102) != 0)
            {
              v103 = secLogObjForScope("clique-reset-protected-data");
              if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v190) = 0;
                _os_log_impl(&dword_1887D2000, v103, OS_LOG_TYPE_DEFAULT, "sos reset succeeded", &v190, 2u);
              }

              [v101 sendMetricWithResult:1 error:0];
            }

            else
            {
              v104 = secLogObjForScope("SecError");
              if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v190) = 138412290;
                *(&v190 + 4) = cf;
                _os_log_impl(&dword_1887D2000, v104, OS_LOG_TYPE_DEFAULT, "clique-reset-protected-data: sos reset failed: %@, ignoring error and continuing with reset", &v190, 0xCu);
              }

              [v101 sendMetricWithResult:0 error:cf];
              v105 = cf;
              if (cf)
              {
                cf = 0;
                CFRelease(v105);
              }
            }

LABEL_64:

            v146 = [[OTClique alloc] initWithContextData:v161];
            v106 = *(*(&buf + 1) + 40);
            isGuitarfish2 = [v161 isGuitarfish];
            v108 = [v152 isEqualToNumber:MEMORY[0x1E695E118]];
            altDSID4 = [v161 altDSID];
            flowID4 = [v161 flowID];
            deviceSessionID4 = [v161 deviceSessionID];
            v162 = 0;
            LOBYTE(v135) = 1;
            LOBYTE(v133) = v108;
            [(OTClique *)v146 resetAndEstablish:1 idmsTargetContext:contextCopy idmsCuttlefishPassword:passwordCopy notifyIdMS:sCopy accountSettings:v106 isGuitarfish:isGuitarfish2 accountIsW:v133 altDSID:altDSID4 flowID:flowID4 deviceSessionID:deviceSessionID4 canSendMetrics:v135 error:&v162];
            v47 = v162;

            if (v47)
            {
              v112 = secLogObjForScope("SecError");
              if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v190) = 138412290;
                *(&v190 + 4) = v47;
                _os_log_impl(&dword_1887D2000, v112, OS_LOG_TYPE_DEFAULT, "clique-reset-protected-data: account reset failed: %@", &v190, 0xCu);
              }

              if (error)
              {
                v113 = v47;
                *error = v47;
              }

              [v24 sendMetricWithResult:0 error:v47];
              v39 = 0;
            }

            else
            {
              v114 = secLogObjForScope("clique-reset-protected-data");
              if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v190) = 0;
                _os_log_impl(&dword_1887D2000, v114, OS_LOG_TYPE_DEFAULT, "Octagon account reset succeeded", &v190, 2u);
              }

              defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
              [defaultCenter postNotificationName:@"com.apple.security.resetprotecteddata.complete" object:0 userInfo:0 deliverImmediately:1];

              [v24 sendMetricWithResult:1 error:0];
              v138 = objc_alloc(getAAFAnalyticsEventSecurityClass());
              v159 = getkSecurityRTCFieldAccountIsG();
              v169[0] = v159;
              v170[0] = v156;
              v157 = getkSecurityRTCFieldAccountIsDBR();
              v169[1] = v157;
              v170[1] = MEMORY[0x1E695E110];
              v150 = getkSecurityRTCFieldAccountIsW();
              v169[2] = v150;
              v170[2] = v152;
              v141 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v170 forKeys:v169 count:3];
              altDSID5 = [v161 altDSID];
              flowID5 = [v161 flowID];
              deviceSessionID5 = [v161 deviceSessionID];
              v119 = getkSecurityRTCEventNameOctagonTrustLost();
              testsEnabled4 = [v161 testsEnabled];
              v121 = getkSecurityRTCEventCategoryAccountDataAccessRecovery();
              LOBYTE(v134) = 1;
              v139 = [v138 initWithKeychainCircleMetrics:v141 altDSID:altDSID5 flowID:flowID5 deviceSessionID:deviceSessionID5 eventName:v119 testsAreEnabled:testsEnabled4 canSendMetrics:v134 category:v121];

              v122 = MEMORY[0x1E696ABC0];
              v123 = getkSecurityRTCErrorDomain();
              v124 = [v122 errorWithDomain:v123 code:8 description:@"User initiated an RPD flow"];
              [v139 sendMetricWithResult:1 error:v124];

              v39 = v146;
            }

            goto LABEL_74;
          }

          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v130 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCEventNameResetSOS(void)"];
          [currentHandler2 handleFailureInFunction:v130 file:@"OTClique.m" lineNumber:89 description:{@"%s", dlerror()}];

          while (1)
          {
LABEL_76:
            __break(1u);
LABEL_77:
            currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
            v128 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCEventNameRPDDeleteAllRecords(void)"];
            [currentHandler3 handleFailureInFunction:v128 file:@"OTClique.m" lineNumber:80 description:{@"%s", dlerror()}];
          }
        }

        v87 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v190) = 0;
          _os_log_impl(&dword_1887D2000, v87, OS_LOG_TYPE_DEFAULT, "clique-reset-protected-data: passwordEquivalentToken not set on configuration context", &v190, 2u);
        }

        v47 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.security.octagon" code:84 description:@"passwordEquivalentToken missing from configuration context"];
        [v24 sendMetricWithResult:0 error:v47];
      }
    }

    else
    {
      v44 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
      v153 = v44;
      v45 = v44;
      if (error)
      {
        v46 = v44;
        v45 = v153;
        *error = v153;
      }

      [v24 sendMetricWithResult:0 error:v45];
      v47 = 0;
    }

    v39 = 0;
LABEL_44:

    _Block_object_dispose(&buf, 8);
    goto LABEL_45;
  }

  v35 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v160;
    _os_log_impl(&dword_1887D2000, v35, OS_LOG_TYPE_DEFAULT, "clique-reset-protected-data: unable to create otcontrol: %@", &buf, 0xCu);
  }

  if (error)
  {
    v36 = v160;
    *error = v160;
  }

  v37 = getkSecurityRTCFieldAccountIsW();
  v186 = v37;
  v187 = MEMORY[0x1E695E110];
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
  [v24 addMetrics:v38];

  [v24 sendMetricWithResult:0 error:v160];
  v39 = 0;
LABEL_45:

  v88 = *MEMORY[0x1E69E9840];

  return v39;
}

void __89__OTClique_resetProtectedData_idmsTargetContext_idmsCuttlefishPassword_notifyIdMS_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "clique-reset-protected-data: failed to fetch account settings: %@", &v12, 0xCu);
    }
  }

  else
  {
    v8 = secLogObjForScope("clique-reset-protected-data");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "fetched account settings: %@", &v12, 0xCu);
    }

    v9 = *(*(a1 + 32) + 8);
    v10 = v5;
    v7 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (int64_t)getCDPStatus:(id)status error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v20 = 0;
  v6 = [statusCopy makeOTControl:&v20];
  v7 = v20;
  if (v6)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__5565;
    v24 = __Block_byref_object_dispose__5566;
    v25 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v8 = [[OTControlArguments alloc] initWithConfiguration:statusCopy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __31__OTClique_getCDPStatus_error___block_invoke;
    v15[3] = &unk_1E70D6D50;
    v15[4] = &buf;
    v15[5] = &v16;
    [v6 getCDPStatus:v8 reply:v15];

    if (error)
    {
      v9 = *(*(&buf + 1) + 40);
      if (v9)
      {
        *error = v9;
      }
    }

    v10 = v17[3];
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v11 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "octagon-cdp-status: failed to fetch OTControl object: %@", &buf, 0xCu);
    }

    if (error)
    {
      v12 = v7;
      v10 = 0;
      *error = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

void __31__OTClique_getCDPStatus_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = secLogObjForScope("octagon-cdp-status");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "failed to fetch CDP status: %@", &v12, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else
  {
    if (v8)
    {
      v9 = @"unknown";
      if (a2 == 1)
      {
        v9 = @"disabled";
      }

      if (a2 == 2)
      {
        v9 = @"enabled";
      }

      v10 = v9;
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "successfully fetched CDP status as %@", &v12, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (BOOL)setCDPEnabled:(id)enabled error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  enabledCopy = enabled;
  v16 = 0;
  v6 = [enabledCopy makeOTControl:&v16];
  v7 = v16;
  if (v6)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__5565;
    v20 = __Block_byref_object_dispose__5566;
    v21 = 0;
    v8 = [[OTControlArguments alloc] initWithConfiguration:enabledCopy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __32__OTClique_setCDPEnabled_error___block_invoke;
    v15[3] = &unk_1E70E0B18;
    v15[4] = &buf;
    [v6 setCDPEnabled:v8 reply:v15];

    v9 = *(*(&buf + 1) + 40);
    if (error && v9)
    {
      *error = v9;
      v9 = *(*(&buf + 1) + 40);
    }

    v10 = v9 == 0;
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v11 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "octagon-setcdpenabled: failed to fetch OTControl object: %@", &buf, 0xCu);
    }

    if (error)
    {
      v12 = v7;
      v10 = 0;
      *error = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

void __32__OTClique_setCDPEnabled_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("octagon-setcdpenabled");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "failed to set CDP bit: %@", &v9, 0xCu);
    }

    v6 = *(*(a1 + 32) + 8);
    v7 = v3;
    v4 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else if (v5)
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "successfully set CDP bit", &v9, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)createInheritanceKey:(id)key uuid:(id)uuid claimTokenData:(id)data wrappingKeyData:(id)keyData reply:(id)reply
{
  v50 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  uuidCopy = uuid;
  dataCopy = data;
  keyDataCopy = keyData;
  replyCopy = reply;
  v15 = secLogObjForScope("octagon-createinheritancekeyclaimtokenwrappingkey");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "createInheritanceKey w/claimToken+wrappingKey invoked for context: %@", &buf, 0xCu);
  }

  v17 = _OctagonSignpostLogSystem();
  v18 = os_signpost_id_generate(v17);
  v19 = mach_continuous_time();

  v20 = _OctagonSignpostLogSystem();
  v21 = v20;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v18, "CreateInheritanceKeyWithClaimTokenAndWrappingKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v22 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v18;
    _os_log_impl(&dword_1887D2000, v22, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CreateInheritanceKeyWithClaimTokenAndWrappingKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v48 = 0x2020000000;
  v49 = 0;
  v40 = 0;
  v23 = [keyCopy makeOTControl:&v40];
  v24 = v40;
  if (v23)
  {
    v25 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __75__OTClique_createInheritanceKey_uuid_claimTokenData_wrappingKeyData_reply___block_invoke;
    v35[3] = &unk_1E70D6F58;
    v38 = v18;
    v39 = v19;
    p_buf = &buf;
    v36 = replyCopy;
    [v23 createInheritanceKey:v25 uuid:uuidCopy claimTokenData:dataCopy wrappingKeyData:keyDataCopy reply:v35];
  }

  else
  {
    v26 = secLogObjForScope("octagon-createinheritancekeyclaimtokenwrappingkey");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v41 = 138412290;
      v42 = v24;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v41, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v18, v19);
    v28 = _OctagonSignpostLogSystem();
    v29 = v28;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      v30 = *(*(&buf + 1) + 24);
      *v41 = 67240192;
      LODWORD(v42) = v30;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v29, OS_SIGNPOST_INTERVAL_END, v18, "CreateInheritanceKeyWithClaimTokenAndWrappingKey", " OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey}d ", v41, 8u);
    }

    v31 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *v41 = 134218496;
      v32 = *(*(&buf + 1) + 24);
      v42 = v18;
      v43 = 2048;
      v44 = Nanoseconds / 1000000000.0;
      v45 = 1026;
      v46 = v32;
      _os_log_impl(&dword_1887D2000, v31, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CreateInheritanceKeyWithClaimTokenAndWrappingKey  OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey}d ", v41, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, 0, v24);
  }

  _Block_object_dispose(&buf, 8);
  v33 = *MEMORY[0x1E69E9840];
}

void __75__OTClique_createInheritanceKey_uuid_claimTokenData_wrappingKeyData_reply___block_invoke(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "octagon-createinheritancekeyclaimtokenwrappingkey, failed to create octagon inheritance recovery key (w/claim+wrappingkey)", &v23, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v9 = _OctagonSignpostLogSystem();
    v10 = v9;
    v11 = a1[6];
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v12 = *(*(a1[5] + 8) + 24);
      v23 = 67240192;
      LODWORD(v24) = v12;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v10, OS_SIGNPOST_INTERVAL_END, v11, "CreateInheritanceKeyWithClaimTokenAndWrappingKey", " OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey}d ", &v23, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218496;
      v14 = *(*(a1[5] + 8) + 24);
      v24 = a1[6];
      v25 = 2048;
      v26 = Nanoseconds / 1000000000.0;
      v27 = 1026;
      v28 = v14;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CreateInheritanceKeyWithClaimTokenAndWrappingKey  OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey}d ", &v23, 0x1Cu);
    }
  }

  else
  {
    v15 = secLogObjForScope("octagon-createinheritancekeyclaimtokenwrappingkey");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "successfully created octagon inheritance recovery key (w/claim+wrappingkey)", &v23, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v16 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v17 = _OctagonSignpostLogSystem();
    v18 = v17;
    v19 = a1[6];
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v20 = *(*(a1[5] + 8) + 24);
      v23 = 67240192;
      LODWORD(v24) = v20;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v18, OS_SIGNPOST_INTERVAL_END, v19, "CreateInheritanceKeyWithClaimTokenAndWrappingKey", " OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey}d ", &v23, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218496;
      v21 = *(*(a1[5] + 8) + 24);
      v24 = a1[6];
      v25 = 2048;
      v26 = v16 / 1000000000.0;
      v27 = 1026;
      v28 = v21;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CreateInheritanceKeyWithClaimTokenAndWrappingKey  OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey}d ", &v23, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
  v22 = *MEMORY[0x1E69E9840];
}

+ (void)recreateInheritanceKey:(id)key uuid:(id)uuid oldIK:(id)k reply:(id)reply
{
  v47 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  uuidCopy = uuid;
  kCopy = k;
  replyCopy = reply;
  v13 = secLogObjForScope("octagon-recreateinheritancekey");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "recreateInheritanceKey invoked for context: %@", &buf, 0xCu);
  }

  v15 = _OctagonSignpostLogSystem();
  v16 = os_signpost_id_generate(v15);
  v17 = mach_continuous_time();

  v18 = _OctagonSignpostLogSystem();
  v19 = v18;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "RecreateInheritanceKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v20 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v16;
    _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RecreateInheritanceKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v45 = 0x2020000000;
  v46 = 0;
  v37 = 0;
  v21 = [keyCopy makeOTControl:&v37];
  v22 = v37;
  if (v21)
  {
    v23 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __52__OTClique_recreateInheritanceKey_uuid_oldIK_reply___block_invoke;
    v32[3] = &unk_1E70D6F58;
    v35 = v16;
    v36 = v17;
    p_buf = &buf;
    v33 = replyCopy;
    [v21 recreateInheritanceKey:v23 uuid:uuidCopy oldIK:kCopy reply:v32];
  }

  else
  {
    v24 = secLogObjForScope("octagon-recreateinheritancekey");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 138412290;
      v39 = v22;
      _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v38, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v16, v17);
    v26 = _OctagonSignpostLogSystem();
    v27 = v26;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      v28 = *(*(&buf + 1) + 24);
      *v38 = 67240192;
      LODWORD(v39) = v28;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v27, OS_SIGNPOST_INTERVAL_END, v16, "RecreateInheritanceKey", " OctagonSignpostNameRecreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecreateInheritanceKey}d ", v38, 8u);
    }

    v29 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 134218496;
      v30 = *(*(&buf + 1) + 24);
      v39 = v16;
      v40 = 2048;
      v41 = Nanoseconds / 1000000000.0;
      v42 = 1026;
      v43 = v30;
      _os_log_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecreateInheritanceKey  OctagonSignpostNameRecreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecreateInheritanceKey}d ", v38, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, 0, v22);
  }

  _Block_object_dispose(&buf, 8);
  v31 = *MEMORY[0x1E69E9840];
}

void __52__OTClique_recreateInheritanceKey_uuid_oldIK_reply___block_invoke(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "octagon-recreateinheritancekey, failed to recreate octagon inheritance recovery key", &v23, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v9 = _OctagonSignpostLogSystem();
    v10 = v9;
    v11 = a1[6];
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v12 = *(*(a1[5] + 8) + 24);
      v23 = 67240192;
      LODWORD(v24) = v12;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v10, OS_SIGNPOST_INTERVAL_END, v11, "RecreateInheritanceKey", " OctagonSignpostNameRecreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecreateInheritanceKey}d ", &v23, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218496;
      v14 = *(*(a1[5] + 8) + 24);
      v24 = a1[6];
      v25 = 2048;
      v26 = Nanoseconds / 1000000000.0;
      v27 = 1026;
      v28 = v14;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecreateInheritanceKey  OctagonSignpostNameRecreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecreateInheritanceKey}d ", &v23, 0x1Cu);
    }
  }

  else
  {
    v15 = secLogObjForScope("octagon-recreateinheritancekey");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "successfully recreated octagon inheritance recovery key", &v23, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v16 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v17 = _OctagonSignpostLogSystem();
    v18 = v17;
    v19 = a1[6];
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v20 = *(*(a1[5] + 8) + 24);
      v23 = 67240192;
      LODWORD(v24) = v20;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v18, OS_SIGNPOST_INTERVAL_END, v19, "RecreateInheritanceKey", " OctagonSignpostNameRecreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecreateInheritanceKey}d ", &v23, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218496;
      v21 = *(*(a1[5] + 8) + 24);
      v24 = a1[6];
      v25 = 2048;
      v26 = v16 / 1000000000.0;
      v27 = 1026;
      v28 = v21;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecreateInheritanceKey  OctagonSignpostNameRecreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecreateInheritanceKey}d ", &v23, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
  v22 = *MEMORY[0x1E69E9840];
}

+ (void)checkInheritanceKey:(id)key inheritanceKeyUUID:(id)d reply:(id)reply
{
  v44 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dCopy = d;
  replyCopy = reply;
  v10 = secLogObjForScope("octagon-checkinheritancekey");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "checkInheritanceKey invoked for context: %@", &buf, 0xCu);
  }

  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CheckInheritanceKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CheckInheritanceKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v18 = [keyCopy makeOTControl:&v34];
  v19 = v34;
  if (v18)
  {
    v20 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __57__OTClique_checkInheritanceKey_inheritanceKeyUUID_reply___block_invoke;
    v29[3] = &unk_1E70D6F30;
    v32 = v13;
    v33 = v14;
    p_buf = &buf;
    v30 = replyCopy;
    [v18 checkInheritanceKey:v20 uuid:dCopy reply:v29];
  }

  else
  {
    v21 = secLogObjForScope("octagon-checkinheritancekey");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 138412290;
      v36 = v19;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v35, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = *(*(&buf + 1) + 24);
      *v35 = 67240192;
      LODWORD(v36) = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v13, "CheckInheritanceKey", " OctagonSignpostNameCheckInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckInheritanceKey}d ", v35, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 134218496;
      v27 = *(*(&buf + 1) + 24);
      v36 = v13;
      v37 = 2048;
      v38 = Nanoseconds / 1000000000.0;
      v39 = 1026;
      v40 = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CheckInheritanceKey  OctagonSignpostNameCheckInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckInheritanceKey}d ", v35, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, 0, v19);
  }

  _Block_object_dispose(&buf, 8);
  v28 = *MEMORY[0x1E69E9840];
}

void __57__OTClique_checkInheritanceKey_inheritanceKeyUUID_reply___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "octagon-checkinheritancekey, failed to check inheritance key", &v23, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v7 = _OctagonSignpostLogSystem();
    v8 = v7;
    v9 = a1[6];
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = *(*(a1[5] + 8) + 24);
      v23 = 67240192;
      LODWORD(v24) = v10;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CheckInheritanceKey", " OctagonSignpostNameCheckInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckInheritanceKey}d ", &v23, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218496;
      v12 = *(*(a1[5] + 8) + 24);
      v24 = a1[6];
      v25 = 2048;
      v26 = Nanoseconds / 1000000000.0;
      v27 = 1026;
      v28 = v12;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CheckInheritanceKey  OctagonSignpostNameCheckInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckInheritanceKey}d ", &v23, 0x1Cu);
    }

    v13 = *(a1[4] + 16);
  }

  else
  {
    v14 = secLogObjForScope("octagon-checkinheritancekey");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "successfully checked inerhitance key", &v23, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v15 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v16 = _OctagonSignpostLogSystem();
    v17 = v16;
    v18 = a1[6];
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      v19 = *(*(a1[5] + 8) + 24);
      v23 = 67240192;
      LODWORD(v24) = v19;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v17, OS_SIGNPOST_INTERVAL_END, v18, "CheckInheritanceKey", " OctagonSignpostNameCheckInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckInheritanceKey}d ", &v23, 8u);
    }

    v20 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218496;
      v21 = *(*(a1[5] + 8) + 24);
      v24 = a1[6];
      v25 = 2048;
      v26 = v15 / 1000000000.0;
      v27 = 1026;
      v28 = v21;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CheckInheritanceKey  OctagonSignpostNameCheckInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckInheritanceKey}d ", &v23, 0x1Cu);
    }

    v13 = *(a1[4] + 16);
  }

  v13();

  v22 = *MEMORY[0x1E69E9840];
}

+ (void)removeInheritanceKey:(id)key inheritanceKeyUUID:(id)d reply:(id)reply
{
  v44 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dCopy = d;
  replyCopy = reply;
  v10 = secLogObjForScope("octagon-removeinheritancekey");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "removeInheritanceKey invoked for context: %@", &buf, 0xCu);
  }

  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "RemoveInheritanceKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RemoveInheritanceKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v18 = [keyCopy makeOTControl:&v34];
  v19 = v34;
  if (v18)
  {
    v20 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __58__OTClique_removeInheritanceKey_inheritanceKeyUUID_reply___block_invoke;
    v29[3] = &unk_1E70D6F08;
    v32 = v13;
    v33 = v14;
    p_buf = &buf;
    v30 = replyCopy;
    [v18 removeInheritanceKey:v20 uuid:dCopy reply:v29];
  }

  else
  {
    v21 = secLogObjForScope("octagon-removeinheritancekey");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 138412290;
      v36 = v19;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v35, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = *(*(&buf + 1) + 24);
      *v35 = 67240192;
      LODWORD(v36) = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v13, "RemoveInheritanceKey", " OctagonSignpostNameRemoveInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveInheritanceKey}d ", v35, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 134218496;
      v27 = *(*(&buf + 1) + 24);
      v36 = v13;
      v37 = 2048;
      v38 = Nanoseconds / 1000000000.0;
      v39 = 1026;
      v40 = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveInheritanceKey  OctagonSignpostNameRemoveInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveInheritanceKey}d ", v35, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, v19);
  }

  _Block_object_dispose(&buf, 8);
  v28 = *MEMORY[0x1E69E9840];
}

void __58__OTClique_removeInheritanceKey_inheritanceKeyUUID_reply___block_invoke(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "octagon-removeinheritancekey, failed to remove inheritance key", &v20, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v6 = _OctagonSignpostLogSystem();
    v7 = v6;
    v8 = a1[6];
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v9 = *(*(a1[5] + 8) + 24);
      v20 = 67240192;
      LODWORD(v21) = v9;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v7, OS_SIGNPOST_INTERVAL_END, v8, "RemoveInheritanceKey", " OctagonSignpostNameRemoveInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveInheritanceKey}d ", &v20, 8u);
    }

    v10 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218496;
      v11 = *(*(a1[5] + 8) + 24);
      v21 = a1[6];
      v22 = 2048;
      v23 = Nanoseconds / 1000000000.0;
      v24 = 1026;
      v25 = v11;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveInheritanceKey  OctagonSignpostNameRemoveInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveInheritanceKey}d ", &v20, 0x1Cu);
    }
  }

  else
  {
    v12 = secLogObjForScope("octagon-removeinheritancekey");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "successfully removed inerhitance key", &v20, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v13 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v14 = _OctagonSignpostLogSystem();
    v15 = v14;
    v16 = a1[6];
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = *(*(a1[5] + 8) + 24);
      v20 = 67240192;
      LODWORD(v21) = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v15, OS_SIGNPOST_INTERVAL_END, v16, "RemoveInheritanceKey", " OctagonSignpostNameRemoveInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveInheritanceKey}d ", &v20, 8u);
    }

    v10 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218496;
      v18 = *(*(a1[5] + 8) + 24);
      v21 = a1[6];
      v22 = 2048;
      v23 = v13 / 1000000000.0;
      v24 = 1026;
      v25 = v18;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveInheritanceKey  OctagonSignpostNameRemoveInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveInheritanceKey}d ", &v20, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
  v19 = *MEMORY[0x1E69E9840];
}

+ (void)preflightRecoverOctagonUsingInheritanceKey:(id)key inheritanceKey:(id)inheritanceKey reply:(id)reply
{
  v43 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  inheritanceKeyCopy = inheritanceKey;
  replyCopy = reply;
  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PreflightRecoverOctagonUsingInheritanceKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PreflightRecoverOctagonUsingInheritanceKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v16 = [keyCopy makeOTControl:&v33];
  v17 = v33;
  v18 = secLogObjForScope("clique-inheritancekey");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 0;
    _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "preflight join using inheritance key", v34, 2u);
  }

  if (v16)
  {
    v19 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __76__OTClique_preflightRecoverOctagonUsingInheritanceKey_inheritanceKey_reply___block_invoke;
    v28[3] = &unk_1E70D6F08;
    v31 = v11;
    v32 = v12;
    p_buf = &buf;
    v29 = replyCopy;
    [v16 preflightJoinWithInheritanceKey:v19 inheritanceKey:inheritanceKeyCopy reply:v28];
  }

  else
  {
    v20 = secLogObjForScope("clique-inheritancekey");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 138412290;
      v35 = v17;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v34, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
    v22 = _OctagonSignpostLogSystem();
    v23 = v22;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v24 = *(*(&buf + 1) + 24);
      *v34 = 67240192;
      LODWORD(v35) = v24;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v23, OS_SIGNPOST_INTERVAL_END, v11, "PreflightRecoverOctagonUsingInheritanceKey", " OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey}d ", v34, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 134218496;
      v26 = *(*(&buf + 1) + 24);
      v35 = v11;
      v36 = 2048;
      v37 = Nanoseconds / 1000000000.0;
      v38 = 1026;
      v39 = v26;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PreflightRecoverOctagonUsingInheritanceKey  OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey}d ", v34, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, v17);
  }

  _Block_object_dispose(&buf, 8);
  v27 = *MEMORY[0x1E69E9840];
}

void __76__OTClique_preflightRecoverOctagonUsingInheritanceKey_inheritanceKey_reply___block_invoke(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("clique-inheritancekey");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v20 = 138412290;
      v21 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "failed to preflight join using inheritance key: %@", &v20, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v7 = _OctagonSignpostLogSystem();
    v8 = v7;
    v9 = a1[6];
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = *(*(a1[5] + 8) + 24);
      v20 = 67240192;
      LODWORD(v21) = v10;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PreflightRecoverOctagonUsingInheritanceKey", " OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey}d ", &v20, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218496;
      v12 = *(*(a1[5] + 8) + 24);
      v21 = a1[6];
      v22 = 2048;
      v23 = Nanoseconds / 1000000000.0;
      v24 = 1026;
      v25 = v12;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PreflightRecoverOctagonUsingInheritanceKey  OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey}d ", &v20, 0x1Cu);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "successful preflight join using inheritance key", &v20, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v13 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v14 = _OctagonSignpostLogSystem();
    v15 = v14;
    v16 = a1[6];
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = *(*(a1[5] + 8) + 24);
      v20 = 67240192;
      LODWORD(v21) = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PreflightRecoverOctagonUsingInheritanceKey", " OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey}d ", &v20, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218496;
      v18 = *(*(a1[5] + 8) + 24);
      v21 = a1[6];
      v22 = 2048;
      v23 = v13 / 1000000000.0;
      v24 = 1026;
      v25 = v18;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PreflightRecoverOctagonUsingInheritanceKey  OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey}d ", &v20, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
  v19 = *MEMORY[0x1E69E9840];
}

+ (void)recoverOctagonUsingInheritanceKey:(id)key inheritanceKey:(id)inheritanceKey reply:(id)reply
{
  v43 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  inheritanceKeyCopy = inheritanceKey;
  replyCopy = reply;
  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "RecoverOctagonUsingInheritanceKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RecoverOctagonUsingInheritanceKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v16 = [keyCopy makeOTControl:&v33];
  v17 = v33;
  v18 = secLogObjForScope("clique-inheritancekey");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 0;
    _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "join using inheritance key", v34, 2u);
  }

  if (v16)
  {
    v19 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __67__OTClique_recoverOctagonUsingInheritanceKey_inheritanceKey_reply___block_invoke;
    v28[3] = &unk_1E70D6F08;
    v31 = v11;
    v32 = v12;
    p_buf = &buf;
    v29 = replyCopy;
    [v16 joinWithInheritanceKey:v19 inheritanceKey:inheritanceKeyCopy reply:v28];
  }

  else
  {
    v20 = secLogObjForScope("clique-inheritancekey");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 138412290;
      v35 = v17;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v34, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
    v22 = _OctagonSignpostLogSystem();
    v23 = v22;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v24 = *(*(&buf + 1) + 24);
      *v34 = 67240192;
      LODWORD(v35) = v24;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v23, OS_SIGNPOST_INTERVAL_END, v11, "RecoverOctagonUsingInheritanceKey", " OctagonSignpostNameRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingInheritanceKey}d ", v34, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 134218496;
      v26 = *(*(&buf + 1) + 24);
      v35 = v11;
      v36 = 2048;
      v37 = Nanoseconds / 1000000000.0;
      v38 = 1026;
      v39 = v26;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverOctagonUsingInheritanceKey  OctagonSignpostNameRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingInheritanceKey}d ", v34, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, v17);
  }

  _Block_object_dispose(&buf, 8);
  v27 = *MEMORY[0x1E69E9840];
}

void __67__OTClique_recoverOctagonUsingInheritanceKey_inheritanceKey_reply___block_invoke(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("clique-inheritancekey");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v20 = 138412290;
      v21 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "failed to join using inheritance key: %@", &v20, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v7 = _OctagonSignpostLogSystem();
    v8 = v7;
    v9 = a1[6];
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = *(*(a1[5] + 8) + 24);
      v20 = 67240192;
      LODWORD(v21) = v10;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RecoverOctagonUsingInheritanceKey", " OctagonSignpostNameRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingInheritanceKey}d ", &v20, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218496;
      v12 = *(*(a1[5] + 8) + 24);
      v21 = a1[6];
      v22 = 2048;
      v23 = Nanoseconds / 1000000000.0;
      v24 = 1026;
      v25 = v12;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverOctagonUsingInheritanceKey  OctagonSignpostNameRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingInheritanceKey}d ", &v20, 0x1Cu);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "successfully joined using inheritance key", &v20, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v13 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v14 = _OctagonSignpostLogSystem();
    v15 = v14;
    v16 = a1[6];
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = *(*(a1[5] + 8) + 24);
      v20 = 67240192;
      LODWORD(v21) = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v15, OS_SIGNPOST_INTERVAL_END, v16, "RecoverOctagonUsingInheritanceKey", " OctagonSignpostNameRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingInheritanceKey}d ", &v20, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218496;
      v18 = *(*(a1[5] + 8) + 24);
      v21 = a1[6];
      v22 = 2048;
      v23 = v13 / 1000000000.0;
      v24 = 1026;
      v25 = v18;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverOctagonUsingInheritanceKey  OctagonSignpostNameRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingInheritanceKey}d ", &v20, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
  v19 = *MEMORY[0x1E69E9840];
}

+ (void)storeInheritanceKey:(id)key ik:(id)ik reply:(id)reply
{
  v44 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  ikCopy = ik;
  replyCopy = reply;
  v10 = secLogObjForScope("octagon-storeinheritancekey");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "storeInheritanceKey invoked for context: %@", &buf, 0xCu);
  }

  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "StoreInheritanceKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: StoreInheritanceKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v18 = [keyCopy makeOTControl:&v34];
  v19 = v34;
  if (v18)
  {
    v20 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __41__OTClique_storeInheritanceKey_ik_reply___block_invoke;
    v29[3] = &unk_1E70D6F08;
    v32 = v13;
    v33 = v14;
    p_buf = &buf;
    v30 = replyCopy;
    [v18 storeInheritanceKey:v20 ik:ikCopy reply:v29];
  }

  else
  {
    v21 = secLogObjForScope("octagon-storeinheritancekey");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 138412290;
      v36 = v19;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v35, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = *(*(&buf + 1) + 24);
      *v35 = 67240192;
      LODWORD(v36) = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v13, "StoreInheritanceKey", " OctagonSignpostNameStoreInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameStoreInheritanceKey}d ", v35, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 134218496;
      v27 = *(*(&buf + 1) + 24);
      v36 = v13;
      v37 = 2048;
      v38 = Nanoseconds / 1000000000.0;
      v39 = 1026;
      v40 = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StoreInheritanceKey  OctagonSignpostNameStoreInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameStoreInheritanceKey}d ", v35, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, v19);
  }

  _Block_object_dispose(&buf, 8);
  v28 = *MEMORY[0x1E69E9840];
}

void __41__OTClique_storeInheritanceKey_ik_reply___block_invoke(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "octagon-storeinheritancekey, failed to store octagon inheritance recovery key", &v20, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v6 = _OctagonSignpostLogSystem();
    v7 = v6;
    v8 = a1[6];
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v9 = *(*(a1[5] + 8) + 24);
      v20 = 67240192;
      LODWORD(v21) = v9;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v7, OS_SIGNPOST_INTERVAL_END, v8, "StoreInheritanceKey", " OctagonSignpostNameStoreInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameStoreInheritanceKey}d ", &v20, 8u);
    }

    v10 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218496;
      v11 = *(*(a1[5] + 8) + 24);
      v21 = a1[6];
      v22 = 2048;
      v23 = Nanoseconds / 1000000000.0;
      v24 = 1026;
      v25 = v11;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StoreInheritanceKey  OctagonSignpostNameStoreInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameStoreInheritanceKey}d ", &v20, 0x1Cu);
    }
  }

  else
  {
    v12 = secLogObjForScope("octagon-storeinheritancekey");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "successfully stored octagon inheritance recovery key", &v20, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v13 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v14 = _OctagonSignpostLogSystem();
    v15 = v14;
    v16 = a1[6];
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = *(*(a1[5] + 8) + 24);
      v20 = 67240192;
      LODWORD(v21) = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v15, OS_SIGNPOST_INTERVAL_END, v16, "StoreInheritanceKey", " OctagonSignpostNameStoreInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameStoreInheritanceKey}d ", &v20, 8u);
    }

    v10 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218496;
      v18 = *(*(a1[5] + 8) + 24);
      v21 = a1[6];
      v22 = 2048;
      v23 = v13 / 1000000000.0;
      v24 = 1026;
      v25 = v18;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StoreInheritanceKey  OctagonSignpostNameStoreInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameStoreInheritanceKey}d ", &v20, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
  v19 = *MEMORY[0x1E69E9840];
}

+ (void)generateInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply
{
  v44 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  uuidCopy = uuid;
  replyCopy = reply;
  v10 = secLogObjForScope("octagon-generateinheritancekey");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "generateInheritanceKey invoked for context: %@", &buf, 0xCu);
  }

  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "GenerateInheritanceKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: GenerateInheritanceKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v18 = [keyCopy makeOTControl:&v34];
  v19 = v34;
  if (v18)
  {
    v20 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __46__OTClique_generateInheritanceKey_uuid_reply___block_invoke;
    v29[3] = &unk_1E70D6F58;
    v32 = v13;
    v33 = v14;
    p_buf = &buf;
    v30 = replyCopy;
    [v18 generateInheritanceKey:v20 uuid:uuidCopy reply:v29];
  }

  else
  {
    v21 = secLogObjForScope("octagon-generateinheritancekey");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 138412290;
      v36 = v19;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v35, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = *(*(&buf + 1) + 24);
      *v35 = 67240192;
      LODWORD(v36) = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v13, "GenerateInheritanceKey", " OctagonSignpostNameGenerateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameGenerateInheritanceKey}d ", v35, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 134218496;
      v27 = *(*(&buf + 1) + 24);
      v36 = v13;
      v37 = 2048;
      v38 = Nanoseconds / 1000000000.0;
      v39 = 1026;
      v40 = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: GenerateInheritanceKey  OctagonSignpostNameGenerateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameGenerateInheritanceKey}d ", v35, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, 0, v19);
  }

  _Block_object_dispose(&buf, 8);
  v28 = *MEMORY[0x1E69E9840];
}

void __46__OTClique_generateInheritanceKey_uuid_reply___block_invoke(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "octagon-generateinheritancekey, failed to generate octagon inheritance recovery key", &v23, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v9 = _OctagonSignpostLogSystem();
    v10 = v9;
    v11 = a1[6];
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v12 = *(*(a1[5] + 8) + 24);
      v23 = 67240192;
      LODWORD(v24) = v12;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v10, OS_SIGNPOST_INTERVAL_END, v11, "GenerateInheritanceKey", " OctagonSignpostNameGenerateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameGenerateInheritanceKey}d ", &v23, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218496;
      v14 = *(*(a1[5] + 8) + 24);
      v24 = a1[6];
      v25 = 2048;
      v26 = Nanoseconds / 1000000000.0;
      v27 = 1026;
      v28 = v14;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: GenerateInheritanceKey  OctagonSignpostNameGenerateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameGenerateInheritanceKey}d ", &v23, 0x1Cu);
    }
  }

  else
  {
    v15 = secLogObjForScope("octagon-generateinheritancekey");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "successfully generated octagon inheritance recovery key", &v23, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v16 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v17 = _OctagonSignpostLogSystem();
    v18 = v17;
    v19 = a1[6];
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v20 = *(*(a1[5] + 8) + 24);
      v23 = 67240192;
      LODWORD(v24) = v20;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v18, OS_SIGNPOST_INTERVAL_END, v19, "GenerateInheritanceKey", " OctagonSignpostNameGenerateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameGenerateInheritanceKey}d ", &v23, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218496;
      v21 = *(*(a1[5] + 8) + 24);
      v24 = a1[6];
      v25 = 2048;
      v26 = v16 / 1000000000.0;
      v27 = 1026;
      v28 = v21;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: GenerateInheritanceKey  OctagonSignpostNameGenerateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameGenerateInheritanceKey}d ", &v23, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
  v22 = *MEMORY[0x1E69E9840];
}

+ (void)createInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply
{
  v44 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  uuidCopy = uuid;
  replyCopy = reply;
  v10 = secLogObjForScope("octagon-createinheritancekey");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "createInheritanceKey invoked for context: %@", &buf, 0xCu);
  }

  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CreateInheritanceKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CreateInheritanceKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v18 = [keyCopy makeOTControl:&v34];
  v19 = v34;
  if (v18)
  {
    v20 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __44__OTClique_createInheritanceKey_uuid_reply___block_invoke;
    v29[3] = &unk_1E70D6F58;
    v32 = v13;
    v33 = v14;
    p_buf = &buf;
    v30 = replyCopy;
    [v18 createInheritanceKey:v20 uuid:uuidCopy reply:v29];
  }

  else
  {
    v21 = secLogObjForScope("octagon-createinheritancekey");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 138412290;
      v36 = v19;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v35, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = *(*(&buf + 1) + 24);
      *v35 = 67240192;
      LODWORD(v36) = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v13, "CreateInheritanceKey", " OctagonSignpostNameCreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKey}d ", v35, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 134218496;
      v27 = *(*(&buf + 1) + 24);
      v36 = v13;
      v37 = 2048;
      v38 = Nanoseconds / 1000000000.0;
      v39 = 1026;
      v40 = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CreateInheritanceKey  OctagonSignpostNameCreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKey}d ", v35, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, 0, v19);
  }

  _Block_object_dispose(&buf, 8);
  v28 = *MEMORY[0x1E69E9840];
}

void __44__OTClique_createInheritanceKey_uuid_reply___block_invoke(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "octagon-createinheritancekey, failed to create octagon inheritance recovery key", &v23, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v9 = _OctagonSignpostLogSystem();
    v10 = v9;
    v11 = a1[6];
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v12 = *(*(a1[5] + 8) + 24);
      v23 = 67240192;
      LODWORD(v24) = v12;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v10, OS_SIGNPOST_INTERVAL_END, v11, "CreateInheritanceKey", " OctagonSignpostNameCreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKey}d ", &v23, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218496;
      v14 = *(*(a1[5] + 8) + 24);
      v24 = a1[6];
      v25 = 2048;
      v26 = Nanoseconds / 1000000000.0;
      v27 = 1026;
      v28 = v14;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CreateInheritanceKey  OctagonSignpostNameCreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKey}d ", &v23, 0x1Cu);
    }
  }

  else
  {
    v15 = secLogObjForScope("octagon-createinheritancekey");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "successfully created octagon inheritance recovery key", &v23, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v16 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v17 = _OctagonSignpostLogSystem();
    v18 = v17;
    v19 = a1[6];
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v20 = *(*(a1[5] + 8) + 24);
      v23 = 67240192;
      LODWORD(v24) = v20;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v18, OS_SIGNPOST_INTERVAL_END, v19, "CreateInheritanceKey", " OctagonSignpostNameCreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKey}d ", &v23, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218496;
      v21 = *(*(a1[5] + 8) + 24);
      v24 = a1[6];
      v25 = 2048;
      v26 = v16 / 1000000000.0;
      v27 = 1026;
      v28 = v21;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CreateInheritanceKey  OctagonSignpostNameCreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKey}d ", &v23, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
  v22 = *MEMORY[0x1E69E9840];
}

+ (void)checkCustodianRecoveryKey:(id)key custodianRecoveryKeyUUID:(id)d reply:(id)reply
{
  v44 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dCopy = d;
  replyCopy = reply;
  v10 = secLogObjForScope("octagon-checkcustodianrecoverykey");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "checkCustodianRecoveryKey invoked for context: %@", &buf, 0xCu);
  }

  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CheckCustodianRecoveryKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CheckCustodianRecoveryKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v18 = [keyCopy makeOTControl:&v34];
  v19 = v34;
  if (v18)
  {
    v20 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __69__OTClique_checkCustodianRecoveryKey_custodianRecoveryKeyUUID_reply___block_invoke;
    v29[3] = &unk_1E70D6F30;
    v32 = v13;
    v33 = v14;
    p_buf = &buf;
    v30 = replyCopy;
    [v18 checkCustodianRecoveryKey:v20 uuid:dCopy reply:v29];
  }

  else
  {
    v21 = secLogObjForScope("octagon-checkcustodianrecoverykey");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 138412290;
      v36 = v19;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v35, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = *(*(&buf + 1) + 24);
      *v35 = 67240192;
      LODWORD(v36) = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v13, "CheckCustodianRecoveryKey", " OctagonSignpostNameCheckCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckCustodianRecoveryKey}d ", v35, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 134218496;
      v27 = *(*(&buf + 1) + 24);
      v36 = v13;
      v37 = 2048;
      v38 = Nanoseconds / 1000000000.0;
      v39 = 1026;
      v40 = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CheckCustodianRecoveryKey  OctagonSignpostNameCheckCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckCustodianRecoveryKey}d ", v35, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, 0, v19);
  }

  _Block_object_dispose(&buf, 8);
  v28 = *MEMORY[0x1E69E9840];
}

void __69__OTClique_checkCustodianRecoveryKey_custodianRecoveryKeyUUID_reply___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "octagon-checkcustodianrecoverykey, failed to check custodian recovery key", &v23, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v7 = _OctagonSignpostLogSystem();
    v8 = v7;
    v9 = a1[6];
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = *(*(a1[5] + 8) + 24);
      v23 = 67240192;
      LODWORD(v24) = v10;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CheckCustodianRecoveryKey", " OctagonSignpostNameCheckCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckCustodianRecoveryKey}d ", &v23, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218496;
      v12 = *(*(a1[5] + 8) + 24);
      v24 = a1[6];
      v25 = 2048;
      v26 = Nanoseconds / 1000000000.0;
      v27 = 1026;
      v28 = v12;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CheckCustodianRecoveryKey  OctagonSignpostNameCheckCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckCustodianRecoveryKey}d ", &v23, 0x1Cu);
    }

    v13 = *(a1[4] + 16);
  }

  else
  {
    v14 = secLogObjForScope("octagon-checkcheckcustodianrecoverykey");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "successfully checked custodian recovery key", &v23, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v15 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v16 = _OctagonSignpostLogSystem();
    v17 = v16;
    v18 = a1[6];
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      v19 = *(*(a1[5] + 8) + 24);
      v23 = 67240192;
      LODWORD(v24) = v19;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v17, OS_SIGNPOST_INTERVAL_END, v18, "CheckCustodianRecoveryKey", " OctagonSignpostNameCheckCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckCustodianRecoveryKey}d ", &v23, 8u);
    }

    v20 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218496;
      v21 = *(*(a1[5] + 8) + 24);
      v24 = a1[6];
      v25 = 2048;
      v26 = v15 / 1000000000.0;
      v27 = 1026;
      v28 = v21;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CheckCustodianRecoveryKey  OctagonSignpostNameCheckCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckCustodianRecoveryKey}d ", &v23, 0x1Cu);
    }

    v13 = *(a1[4] + 16);
  }

  v13();

  v22 = *MEMORY[0x1E69E9840];
}

+ (void)removeCustodianRecoveryKey:(id)key custodianRecoveryKeyUUID:(id)d reply:(id)reply
{
  v44 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dCopy = d;
  replyCopy = reply;
  v10 = secLogObjForScope("octagon-removecustodianrecoverykey");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "removeCustodianRecoveryKey invoked for context: %@", &buf, 0xCu);
  }

  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "RemoveCustodianRecoveryKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RemoveCustodianRecoveryKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v18 = [keyCopy makeOTControl:&v34];
  v19 = v34;
  if (v18)
  {
    v20 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __70__OTClique_removeCustodianRecoveryKey_custodianRecoveryKeyUUID_reply___block_invoke;
    v29[3] = &unk_1E70D6F08;
    v32 = v13;
    v33 = v14;
    p_buf = &buf;
    v30 = replyCopy;
    [v18 removeCustodianRecoveryKey:v20 uuid:dCopy reply:v29];
  }

  else
  {
    v21 = secLogObjForScope("octagon-removecustodianrecoverykey");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 138412290;
      v36 = v19;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v35, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = *(*(&buf + 1) + 24);
      *v35 = 67240192;
      LODWORD(v36) = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v13, "RemoveCustodianRecoveryKey", " OctagonSignpostNameRemoveCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveCustodianRecoveryKey}d ", v35, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 134218496;
      v27 = *(*(&buf + 1) + 24);
      v36 = v13;
      v37 = 2048;
      v38 = Nanoseconds / 1000000000.0;
      v39 = 1026;
      v40 = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveCustodianRecoveryKey  OctagonSignpostNameRemoveCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveCustodianRecoveryKey}d ", v35, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, v19);
  }

  _Block_object_dispose(&buf, 8);
  v28 = *MEMORY[0x1E69E9840];
}

void __70__OTClique_removeCustodianRecoveryKey_custodianRecoveryKeyUUID_reply___block_invoke(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "octagon-removecustodianrecoverykey, failed to remove custodian recovery key", &v20, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v6 = _OctagonSignpostLogSystem();
    v7 = v6;
    v8 = a1[6];
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v9 = *(*(a1[5] + 8) + 24);
      v20 = 67240192;
      LODWORD(v21) = v9;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v7, OS_SIGNPOST_INTERVAL_END, v8, "RemoveCustodianRecoveryKey", " OctagonSignpostNameRemoveCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveCustodianRecoveryKey}d ", &v20, 8u);
    }

    v10 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218496;
      v11 = *(*(a1[5] + 8) + 24);
      v21 = a1[6];
      v22 = 2048;
      v23 = Nanoseconds / 1000000000.0;
      v24 = 1026;
      v25 = v11;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveCustodianRecoveryKey  OctagonSignpostNameRemoveCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveCustodianRecoveryKey}d ", &v20, 0x1Cu);
    }
  }

  else
  {
    v12 = secLogObjForScope("octagon-removecustodianrecoverykey");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "successfully removed custodian recovery key", &v20, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v13 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v14 = _OctagonSignpostLogSystem();
    v15 = v14;
    v16 = a1[6];
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = *(*(a1[5] + 8) + 24);
      v20 = 67240192;
      LODWORD(v21) = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v15, OS_SIGNPOST_INTERVAL_END, v16, "RemoveCustodianRecoveryKey", " OctagonSignpostNameRemoveCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveCustodianRecoveryKey}d ", &v20, 8u);
    }

    v10 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218496;
      v18 = *(*(a1[5] + 8) + 24);
      v21 = a1[6];
      v22 = 2048;
      v23 = v13 / 1000000000.0;
      v24 = 1026;
      v25 = v18;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveCustodianRecoveryKey  OctagonSignpostNameRemoveCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveCustodianRecoveryKey}d ", &v20, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
  v19 = *MEMORY[0x1E69E9840];
}

+ (void)preflightRecoverOctagonUsingCustodianRecoveryKey:(id)key custodianRecoveryKey:(id)recoveryKey reply:(id)reply
{
  v43 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  recoveryKeyCopy = recoveryKey;
  replyCopy = reply;
  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PreflightRecoverOctagonUsingCustodianRecoveryKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PreflightRecoverOctagonUsingCustodianRecoveryKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v16 = [keyCopy makeOTControl:&v33];
  v17 = v33;
  v18 = secLogObjForScope("clique-custodianrecoverykey");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 0;
    _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "preflight join using custodian recovery key", v34, 2u);
  }

  if (v16)
  {
    v19 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __88__OTClique_preflightRecoverOctagonUsingCustodianRecoveryKey_custodianRecoveryKey_reply___block_invoke;
    v28[3] = &unk_1E70D6F08;
    v31 = v11;
    v32 = v12;
    p_buf = &buf;
    v29 = replyCopy;
    [v16 preflightJoinWithCustodianRecoveryKey:v19 custodianRecoveryKey:recoveryKeyCopy reply:v28];
  }

  else
  {
    v20 = secLogObjForScope("clique-custodianrecoverykey");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 138412290;
      v35 = v17;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v34, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
    v22 = _OctagonSignpostLogSystem();
    v23 = v22;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v24 = *(*(&buf + 1) + 24);
      *v34 = 67240192;
      LODWORD(v35) = v24;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v23, OS_SIGNPOST_INTERVAL_END, v11, "PreflightRecoverOctagonUsingCustodianRecoveryKey", " OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey}d ", v34, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 134218496;
      v26 = *(*(&buf + 1) + 24);
      v35 = v11;
      v36 = 2048;
      v37 = Nanoseconds / 1000000000.0;
      v38 = 1026;
      v39 = v26;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PreflightRecoverOctagonUsingCustodianRecoveryKey  OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey}d ", v34, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, v17);
  }

  _Block_object_dispose(&buf, 8);
  v27 = *MEMORY[0x1E69E9840];
}

void __88__OTClique_preflightRecoverOctagonUsingCustodianRecoveryKey_custodianRecoveryKey_reply___block_invoke(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("clique-custodianrecoverykey");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v20 = 138412290;
      v21 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "failed to preflight join using custodian recovery key: %@", &v20, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v7 = _OctagonSignpostLogSystem();
    v8 = v7;
    v9 = a1[6];
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = *(*(a1[5] + 8) + 24);
      v20 = 67240192;
      LODWORD(v21) = v10;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PreflightRecoverOctagonUsingCustodianRecoveryKey", " OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey}d ", &v20, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218496;
      v12 = *(*(a1[5] + 8) + 24);
      v21 = a1[6];
      v22 = 2048;
      v23 = Nanoseconds / 1000000000.0;
      v24 = 1026;
      v25 = v12;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PreflightRecoverOctagonUsingCustodianRecoveryKey  OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey}d ", &v20, 0x1Cu);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "successful preflight join using custodian recovery key", &v20, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v13 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v14 = _OctagonSignpostLogSystem();
    v15 = v14;
    v16 = a1[6];
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = *(*(a1[5] + 8) + 24);
      v20 = 67240192;
      LODWORD(v21) = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PreflightRecoverOctagonUsingCustodianRecoveryKey", " OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey}d ", &v20, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218496;
      v18 = *(*(a1[5] + 8) + 24);
      v21 = a1[6];
      v22 = 2048;
      v23 = v13 / 1000000000.0;
      v24 = 1026;
      v25 = v18;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PreflightRecoverOctagonUsingCustodianRecoveryKey  OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey}d ", &v20, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
  v19 = *MEMORY[0x1E69E9840];
}

+ (void)recoverOctagonUsingCustodianRecoveryKey:(id)key custodianRecoveryKey:(id)recoveryKey reply:(id)reply
{
  v43 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  recoveryKeyCopy = recoveryKey;
  replyCopy = reply;
  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "RecoverOctagonUsingCustodianRecoveryKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RecoverOctagonUsingCustodianRecoveryKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v16 = [keyCopy makeOTControl:&v33];
  v17 = v33;
  v18 = secLogObjForScope("clique-custodianrecoverykey");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 0;
    _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "join using custodian recovery key", v34, 2u);
  }

  if (v16)
  {
    v19 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __79__OTClique_recoverOctagonUsingCustodianRecoveryKey_custodianRecoveryKey_reply___block_invoke;
    v28[3] = &unk_1E70D6F08;
    v31 = v11;
    v32 = v12;
    p_buf = &buf;
    v29 = replyCopy;
    [v16 joinWithCustodianRecoveryKey:v19 custodianRecoveryKey:recoveryKeyCopy reply:v28];
  }

  else
  {
    v20 = secLogObjForScope("clique-custodianrecoverykey");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 138412290;
      v35 = v17;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v34, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
    v22 = _OctagonSignpostLogSystem();
    v23 = v22;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v24 = *(*(&buf + 1) + 24);
      *v34 = 67240192;
      LODWORD(v35) = v24;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v23, OS_SIGNPOST_INTERVAL_END, v11, "RecoverOctagonUsingCustodianRecoveryKey", " OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey}d ", v34, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 134218496;
      v26 = *(*(&buf + 1) + 24);
      v35 = v11;
      v36 = 2048;
      v37 = Nanoseconds / 1000000000.0;
      v38 = 1026;
      v39 = v26;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverOctagonUsingCustodianRecoveryKey  OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey}d ", v34, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, v17);
  }

  _Block_object_dispose(&buf, 8);
  v27 = *MEMORY[0x1E69E9840];
}

void __79__OTClique_recoverOctagonUsingCustodianRecoveryKey_custodianRecoveryKey_reply___block_invoke(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("clique-custodianrecoverykey");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v20 = 138412290;
      v21 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "failed to join using custodian recovery key: %@", &v20, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v7 = _OctagonSignpostLogSystem();
    v8 = v7;
    v9 = a1[6];
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = *(*(a1[5] + 8) + 24);
      v20 = 67240192;
      LODWORD(v21) = v10;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RecoverOctagonUsingCustodianRecoveryKey", " OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey}d ", &v20, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218496;
      v12 = *(*(a1[5] + 8) + 24);
      v21 = a1[6];
      v22 = 2048;
      v23 = Nanoseconds / 1000000000.0;
      v24 = 1026;
      v25 = v12;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverOctagonUsingCustodianRecoveryKey  OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey}d ", &v20, 0x1Cu);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "successfully joined using custodian recovery key", &v20, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v13 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v14 = _OctagonSignpostLogSystem();
    v15 = v14;
    v16 = a1[6];
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = *(*(a1[5] + 8) + 24);
      v20 = 67240192;
      LODWORD(v21) = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v15, OS_SIGNPOST_INTERVAL_END, v16, "RecoverOctagonUsingCustodianRecoveryKey", " OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey}d ", &v20, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218496;
      v18 = *(*(a1[5] + 8) + 24);
      v21 = a1[6];
      v22 = 2048;
      v23 = v13 / 1000000000.0;
      v24 = 1026;
      v25 = v18;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverOctagonUsingCustodianRecoveryKey  OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey}d ", &v20, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
  v19 = *MEMORY[0x1E69E9840];
}

+ (void)createCustodianRecoveryKey:(id)key uuid:(id)uuid reply:(id)reply
{
  v44 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  uuidCopy = uuid;
  replyCopy = reply;
  v10 = secLogObjForScope("octagon-createcustodianrecoverykey");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "createCustodianRecoveryKey invoked for context: %@", &buf, 0xCu);
  }

  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CreateCustodianRecoveryKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CreateCustodianRecoveryKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v18 = [keyCopy makeOTControl:&v34];
  v19 = v34;
  if (v18)
  {
    v20 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __50__OTClique_createCustodianRecoveryKey_uuid_reply___block_invoke;
    v29[3] = &unk_1E70D6EE0;
    v32 = v13;
    v33 = v14;
    p_buf = &buf;
    v30 = replyCopy;
    [v18 createCustodianRecoveryKey:v20 uuid:uuidCopy reply:v29];
  }

  else
  {
    v21 = secLogObjForScope("octagon-createcustodianrecoverykey");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 138412290;
      v36 = v19;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v35, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = *(*(&buf + 1) + 24);
      *v35 = 67240192;
      LODWORD(v36) = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v13, "CreateCustodianRecoveryKey", " OctagonSignpostNameCreateCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateCustodianRecoveryKey}d ", v35, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 134218496;
      v27 = *(*(&buf + 1) + 24);
      v36 = v13;
      v37 = 2048;
      v38 = Nanoseconds / 1000000000.0;
      v39 = 1026;
      v40 = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CreateCustodianRecoveryKey  OctagonSignpostNameCreateCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateCustodianRecoveryKey}d ", v35, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, 0, v19);
  }

  _Block_object_dispose(&buf, 8);
  v28 = *MEMORY[0x1E69E9840];
}

void __50__OTClique_createCustodianRecoveryKey_uuid_reply___block_invoke(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "octagon-createcustodianrecoverykey, failed to create octagon custodian recovery key", &v23, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v9 = _OctagonSignpostLogSystem();
    v10 = v9;
    v11 = a1[6];
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v12 = *(*(a1[5] + 8) + 24);
      v23 = 67240192;
      LODWORD(v24) = v12;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v10, OS_SIGNPOST_INTERVAL_END, v11, "CreateCustodianRecoveryKey", " OctagonSignpostNameCreateCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateCustodianRecoveryKey}d ", &v23, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218496;
      v14 = *(*(a1[5] + 8) + 24);
      v24 = a1[6];
      v25 = 2048;
      v26 = Nanoseconds / 1000000000.0;
      v27 = 1026;
      v28 = v14;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CreateCustodianRecoveryKey  OctagonSignpostNameCreateCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateCustodianRecoveryKey}d ", &v23, 0x1Cu);
    }
  }

  else
  {
    v15 = secLogObjForScope("octagon-createcustodianrecoverykey");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "successfully created octagon custodian recovery key", &v23, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v16 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v17 = _OctagonSignpostLogSystem();
    v18 = v17;
    v19 = a1[6];
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v20 = *(*(a1[5] + 8) + 24);
      v23 = 67240192;
      LODWORD(v24) = v20;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v18, OS_SIGNPOST_INTERVAL_END, v19, "CreateCustodianRecoveryKey", " OctagonSignpostNameCreateCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateCustodianRecoveryKey}d ", &v23, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218496;
      v21 = *(*(a1[5] + 8) + 24);
      v24 = a1[6];
      v25 = 2048;
      v26 = v16 / 1000000000.0;
      v27 = 1026;
      v28 = v21;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CreateCustodianRecoveryKey  OctagonSignpostNameCreateCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateCustodianRecoveryKey}d ", &v23, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
  v22 = *MEMORY[0x1E69E9840];
}

+ (void)setNewRecoveryKeyWithData:(id)data recoveryKey:(id)key reply:(id)reply
{
  v66 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  keyCopy = key;
  replyCopy = reply;
  v8 = secLogObjForScope("octagon-setrecoverykey");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    context = [dataCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "setNewRecoveryKeyWithData invoked for context: %@", &buf, 0xCu);
  }

  v10 = objc_opt_new();
  v11 = _OctagonSignpostLogSystem();
  v12 = os_signpost_id_generate(v11);
  v13 = mach_continuous_time();

  v14 = _OctagonSignpostLogSystem();
  v15 = v14;
  v16 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SetNewRecoveryKeyWithData", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v12;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SetNewRecoveryKeyWithData  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v64 = 0x2020000000;
  v65 = 0;
  v56 = 0;
  v18 = SecRKCreateRecoveryKeyWithError(keyCopy, &v56);
  v19 = v56;
  if (v18)
  {
    v55 = 0;
    v20 = [dataCopy makeOTControl:&v55];
    v21 = v55;
    if (v20)
    {
      v22 = [[OTControlArguments alloc] initWithConfiguration:dataCopy];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __56__OTClique_setNewRecoveryKeyWithData_recoveryKey_reply___block_invoke;
      v49[3] = &unk_1E70D6EB8;
      v53 = v12;
      v54 = v13;
      p_buf = &buf;
      v51 = replyCopy;
      v50 = v18;
      [v20 createRecoveryKey:v22 recoveryKey:keyCopy reply:v49];
    }

    else
    {
      v39 = secLogObjForScope("octagon-setrecoverykey");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *v57 = 138412290;
        v58 = v21;
        _os_log_impl(&dword_1887D2000, v39, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v57, 0xCu);
      }

      Nanoseconds = _OctagonSignpostGetNanoseconds(v12, v13);
      v41 = _OctagonSignpostLogSystem();
      v42 = v41;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
      {
        v43 = *(*(&buf + 1) + 24);
        *v57 = 67240192;
        LODWORD(v58) = v43;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v42, OS_SIGNPOST_INTERVAL_END, v12, "SetNewRecoveryKeyWithData", " OctagonSignpostNameSetNewRecoveryKeyWithData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetNewRecoveryKeyWithData}d ", v57, 8u);
      }

      v44 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *v57 = 134218496;
        v45 = *(*(&buf + 1) + 24);
        v58 = v12;
        v59 = 2048;
        v60 = Nanoseconds / 1000000000.0;
        v61 = 1026;
        v62 = v45;
        _os_log_impl(&dword_1887D2000, v44, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetNewRecoveryKeyWithData  OctagonSignpostNameSetNewRecoveryKeyWithData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetNewRecoveryKeyWithData}d ", v57, 0x1Cu);
      }

      (*(replyCopy + 2))(replyCopy, 0, v21);
    }

    v32 = 0;
  }

  else
  {
    v23 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v57 = 138412290;
      v58 = v19;
      _os_log_impl(&dword_1887D2000, v23, OS_LOG_TYPE_DEFAULT, "octagon-setrecoverykey, SecRKCreateRecoveryKeyWithError() failed: %@", v57, 0xCu);
    }

    [v10 setObject:@"SecRKCreateRecoveryKeyWithError() failed" forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v10 setObject:v19 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    +[OTClique isCloudServicesAvailable];
    Helper_x10__kSecureBackupErrorDomain = gotLoadHelper_x10__kSecureBackupErrorDomain(v24);
    v29 = *(v28 + 3704);
    if (v30)
    {
      v26 = v29;
      v31 = 24;
    }

    else
    {
      v31 = -4;
    }

    v32 = [v25 errorWithDomain:*v26 code:v31 userInfo:{v10, Helper_x10__kSecureBackupErrorDomain}];
    v33 = _OctagonSignpostGetNanoseconds(v12, v13);
    v34 = _OctagonSignpostLogSystem();
    v35 = v34;
    if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      v36 = *(*(&buf + 1) + 24);
      *v57 = 67240192;
      LODWORD(v58) = v36;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v35, OS_SIGNPOST_INTERVAL_END, v12, "SetNewRecoveryKeyWithData", " OctagonSignpostNameSetNewRecoveryKeyWithData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetNewRecoveryKeyWithData}d ", v57, 8u);
    }

    v37 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *v57 = 134218496;
      v38 = *(*(&buf + 1) + 24);
      v58 = v12;
      v59 = 2048;
      v60 = v33 / 1000000000.0;
      v61 = 1026;
      v62 = v38;
      _os_log_impl(&dword_1887D2000, v37, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetNewRecoveryKeyWithData  OctagonSignpostNameSetNewRecoveryKeyWithData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetNewRecoveryKeyWithData}d ", v57, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, 0, v32);
  }

  _Block_object_dispose(&buf, 8);
  v46 = *MEMORY[0x1E69E9840];
}

void __56__OTClique_setNewRecoveryKeyWithData_recoveryKey_reply___block_invoke(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "octagon-setrecoverykey, failed to create octagon recovery key", &v23, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[7], a1[8]);
    v6 = _OctagonSignpostLogSystem();
    v7 = v6;
    v8 = a1[7];
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v9 = *(*(a1[6] + 8) + 24);
      v23 = 67240192;
      LODWORD(v24) = v9;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v7, OS_SIGNPOST_INTERVAL_END, v8, "SetNewRecoveryKeyWithData", " OctagonSignpostNameSetNewRecoveryKeyWithData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetNewRecoveryKeyWithData}d ", &v23, 8u);
    }

    v10 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218496;
      v11 = *(*(a1[6] + 8) + 24);
      v24 = a1[7];
      v25 = 2048;
      v26 = Nanoseconds / 1000000000.0;
      v27 = 1026;
      v28 = v11;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetNewRecoveryKeyWithData  OctagonSignpostNameSetNewRecoveryKeyWithData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetNewRecoveryKeyWithData}d ", &v23, 0x1Cu);
    }

    v12 = *(a1[5] + 16);
  }

  else
  {
    v13 = secLogObjForScope("octagon-setrecoverykey");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "successfully set octagon recovery key", &v23, 2u);
    }

    *(*(a1[6] + 8) + 24) = 1;
    v14 = _OctagonSignpostGetNanoseconds(a1[7], a1[8]);
    v15 = _OctagonSignpostLogSystem();
    v16 = v15;
    v17 = a1[7];
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v18 = *(*(a1[6] + 8) + 24);
      v23 = 67240192;
      LODWORD(v24) = v18;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_END, v17, "SetNewRecoveryKeyWithData", " OctagonSignpostNameSetNewRecoveryKeyWithData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetNewRecoveryKeyWithData}d ", &v23, 8u);
    }

    v19 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218496;
      v20 = *(*(a1[6] + 8) + 24);
      v24 = a1[7];
      v25 = 2048;
      v26 = v14 / 1000000000.0;
      v27 = 1026;
      v28 = v20;
      _os_log_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetNewRecoveryKeyWithData  OctagonSignpostNameSetNewRecoveryKeyWithData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetNewRecoveryKeyWithData}d ", &v23, 0x1Cu);
    }

    v21 = a1[4];
    v12 = *(a1[5] + 16);
  }

  v12();

  v22 = *MEMORY[0x1E69E9840];
}

+ (id)recoverWithContextData:(id)data bottleID:(id)d escrowedEntropy:(id)entropy error:(id *)error
{
  v6 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "replaced by performEscrowRecoveryWithContextData:escrowArguments:error: remove call", v8, 2u);
  }

  return 0;
}

+ (id)findOptimalBottleIDsWithContextData:(id)data error:(id *)error
{
  v57[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = secLogObjForScope("clique-findbottle");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    context = [dataCopy context];
    altDSID = [dataCopy altDSID];
    *buf = 138412546;
    *&buf[4] = context;
    *&buf[12] = 2112;
    *&buf[14] = altDSID;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "finding optimal bottles for context:%@, altdsid:%@", buf, 0x16u);
  }

  v9 = _OctagonSignpostLogSystem();
  v10 = os_signpost_id_generate(v9);
  v11 = mach_continuous_time();

  v12 = _OctagonSignpostLogSystem();
  v13 = v12;
  v14 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "FindOptimalBottleIDsWithContextData", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v10;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FindOptimalBottleIDsWithContextData  enableTelemetry=YES ", buf, 0xCu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v55 = __Block_byref_object_copy__5565;
  v56 = __Block_byref_object_dispose__5566;
  v57[0] = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__5565;
  v46 = __Block_byref_object_dispose__5566;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__5565;
  v40 = __Block_byref_object_dispose__5566;
  v41 = 0;
  obj = 0;
  v16 = [dataCopy makeOTControl:&obj];
  objc_storeStrong(v57, obj);
  if (v16)
  {
    v17 = [[OTControlArguments alloc] initWithConfiguration:dataCopy];
    escrowFetchSource = [dataCopy escrowFetchSource];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __54__OTClique_findOptimalBottleIDsWithContextData_error___block_invoke;
    v34[3] = &unk_1E70D6E68;
    v34[4] = buf;
    v34[5] = &v42;
    v34[6] = &v36;
    [v16 fetchAllViableBottles:v17 source:escrowFetchSource reply:v34];

    if (error)
    {
      v19 = *(*&buf[8] + 40);
      if (v19)
      {
        *error = v19;
      }
    }

    v20 = objc_alloc_init(OTBottleIDs);
    [(OTBottleIDs *)v20 setPreferredBottleIDs:v43[5]];
    [(OTBottleIDs *)v20 setPartialRecoveryBottleIDs:v37[5]];
    v21 = secLogObjForScope("clique-findbottle");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v48 = 0;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "findOptimalBottleIDsWithContextData complete", v48, 2u);
    }

    v22 = *(*&buf[8] + 40);
    Nanoseconds = _OctagonSignpostGetNanoseconds(v10, v11);
    v24 = _OctagonSignpostLogSystem();
    v25 = v24;
    if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *v48 = 67240192;
      LODWORD(v49) = v22 == 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v25, OS_SIGNPOST_INTERVAL_END, v10, "FindOptimalBottleIDsWithContextData", " OctagonSignpostNameFindOptimalBottleIDsWithContextData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFindOptimalBottleIDsWithContextData}d ", v48, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v48 = 134218496;
      v49 = v10;
      v50 = 2048;
      v51 = Nanoseconds / 1000000000.0;
      v52 = 1026;
      v53 = v22 == 0;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FindOptimalBottleIDsWithContextData  OctagonSignpostNameFindOptimalBottleIDsWithContextData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFindOptimalBottleIDsWithContextData}d ", v48, 0x1Cu);
    }
  }

  else
  {
    v27 = secLogObjForScope("clique-findbottle");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(*&buf[8] + 40);
      *v48 = 138412290;
      v49 = v28;
      _os_log_impl(&dword_1887D2000, v27, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", v48, 0xCu);
    }

    if (error)
    {
      *error = *(*&buf[8] + 40);
    }

    v29 = _OctagonSignpostGetNanoseconds(v10, v11);
    v30 = _OctagonSignpostLogSystem();
    v31 = v30;
    if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      *v48 = 67240192;
      LODWORD(v49) = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v31, OS_SIGNPOST_INTERVAL_END, v10, "FindOptimalBottleIDsWithContextData", " OctagonSignpostNameFindOptimalBottleIDsWithContextData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFindOptimalBottleIDsWithContextData}d ", v48, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v48 = 134218496;
      v49 = v10;
      v50 = 2048;
      v51 = v29 / 1000000000.0;
      v52 = 1026;
      v53 = 0;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FindOptimalBottleIDsWithContextData  OctagonSignpostNameFindOptimalBottleIDsWithContextData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFindOptimalBottleIDsWithContextData}d ", v48, 0x1Cu);
    }

    v20 = 0;
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(buf, 8);
  v32 = *MEMORY[0x1E69E9840];

  return v20;
}

void __54__OTClique_findOptimalBottleIDsWithContextData_error___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = secLogObjForScope("clique-findbottle");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v24 = 138412290;
      v25 = v9;
      v12 = "findOptimalBottleIDsWithContextData errored: %@";
      v13 = v10;
      v14 = 12;
LABEL_6:
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, v12, &v24, v14);
    }
  }

  else if (v11)
  {
    v24 = 138412546;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    v12 = "findOptimalBottleIDsWithContextData succeeded: %@, %@";
    v13 = v10;
    v14 = 22;
    goto LABEL_6;
  }

  v15 = *(a1[4] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  v18 = *(a1[5] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v7;
  v20 = v7;

  v21 = *(a1[6] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v8;

  v23 = *MEMORY[0x1E69E9840];
}

+ (id)fetchEscrowRecordsInternal:(id)internal error:(id *)error
{
  v32[2] = *MEMORY[0x1E69E9840];
  internalCopy = internal;
  v6 = secLogObjForScope("clique-fetchrecords");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    context = [internalCopy context];
    altDSID = [internalCopy altDSID];
    *buf = 138412546;
    *&buf[4] = context;
    *&buf[12] = 2112;
    *&buf[14] = altDSID;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "fetching escrow records for context:%@, altdsid:%@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = __Block_byref_object_copy__5565;
  v31 = __Block_byref_object_dispose__5566;
  v32[0] = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5565;
  v25 = __Block_byref_object_dispose__5566;
  v26 = 0;
  obj = 0;
  v9 = [internalCopy makeOTControl:&obj];
  objc_storeStrong(v32, obj);
  if (v9)
  {
    v10 = [[OTControlArguments alloc] initWithConfiguration:internalCopy];
    escrowFetchSource = [internalCopy escrowFetchSource];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __45__OTClique_fetchEscrowRecordsInternal_error___block_invoke;
    v19[3] = &unk_1E70D6E40;
    v19[4] = buf;
    v19[5] = &v21;
    [v9 fetchEscrowRecords:v10 source:escrowFetchSource reply:v19];

    if (error)
    {
      v12 = *(*&buf[8] + 40);
      if (v12)
      {
        *error = v12;
      }
    }

    v13 = secLogObjForScope("clique-fetchrecords");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "fetchEscrowRecords complete", v27, 2u);
    }

    v14 = v22[5];
  }

  else
  {
    v15 = secLogObjForScope("clique-fetchrecords");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*&buf[8] + 40);
      *v27 = 138412290;
      v28 = v16;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", v27, 0xCu);
    }

    v14 = 0;
    if (error)
    {
      *error = *(*&buf[8] + 40);
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(buf, 8);

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

void __45__OTClique_fetchEscrowRecordsInternal_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = secLogObjForScope("clique-fetchrecords");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v16 = 138412290;
      v17 = v6;
      v9 = "fetchEscrowRecords errored: %@";
LABEL_6:
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, v9, &v16, 0xCu);
    }
  }

  else if (v8)
  {
    v16 = 138412290;
    v17 = v5;
    v9 = "fetchEscrowRecords succeeded: %@";
    goto LABEL_6;
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v5;

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)performEscrowRecoveryWithContextData:(id)data escrowArguments:(id)arguments error:(id *)error
{
  v152 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  argumentsCopy = arguments;
  if (+[OTClique isCloudServicesAvailable])
  {
    v9 = _OctagonSignpostLogSystem();
    v10 = os_signpost_id_generate(v9);
    v127 = mach_continuous_time();

    v11 = _OctagonSignpostLogSystem();
    v12 = v11;
    spid = v10;
    v126 = v10 - 1;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PerformEscrowRecovery", " enableTelemetry=YES ", buf, 2u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v10;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PerformEscrowRecovery  enableTelemetry=YES ", buf, 0xCu);
    }

    v131 = [[OTClique alloc] initWithContextData:dataCopy];
    v14 = secLogObjForScope("clique-recovery");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      context = [dataCopy context];
      altDSID = [dataCopy altDSID];
      *buf = 138412546;
      *&buf[4] = context;
      *&buf[12] = 2112;
      *&buf[14] = altDSID;
      _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "attempting an escrow recovery for context:%@, altdsid:%@", buf, 0x16u);
    }

    v17 = [dataCopy sbd];
    v19 = v17;
    if (v17)
    {
      v130 = v17;
    }

    else
    {
      gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v18);
      v130 = [objc_alloc(*(v21 + 3448)) initWithUserActivityLabel:@"clique-recovery"];
    }

    v22 = _OctagonSignpostLogSystem();
    v23 = os_signpost_id_generate(v22);
    v24 = mach_continuous_time();

    v25 = _OctagonSignpostLogSystem();
    v26 = v25;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v23, "PerformRecoveryFromSBD", " enableTelemetry=YES ", buf, 2u);
    }

    v27 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v23;
      _os_log_impl(&dword_1887D2000, v27, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PerformRecoveryFromSBD  enableTelemetry=YES ", buf, 0xCu);
    }

    v138 = 0;
    v28 = [v130 recoverWithInfo:argumentsCopy results:&v138];
    v129 = v138;
    Nanoseconds = _OctagonSignpostGetNanoseconds(v23, v24);
    v30 = _OctagonSignpostLogSystem();
    v31 = v30;
    if (v23 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v30))
    {
      *buf = 67240192;
      *&buf[4] = v28 == 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v31, OS_SIGNPOST_INTERVAL_END, v23, "PerformRecoveryFromSBD", " OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 8u);
    }

    v32 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v23;
      *&buf[12] = 2048;
      *&buf[14] = Nanoseconds / 1000000000.0;
      *&buf[22] = 1026;
      LODWORD(v149) = v28 == 0;
      _os_log_impl(&dword_1887D2000, v32, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformRecoveryFromSBD  OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 0x1Cu);
    }

    if (v28)
    {
      v34 = secLogObjForScope("clique-recovery");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v28;
        _os_log_impl(&dword_1887D2000, v34, OS_LOG_TYPE_DEFAULT, "sbd escrow recovery failed: %@", buf, 0xCu);
      }

      if (error)
      {
        v35 = v28;
        *error = v28;
      }

      v36 = _OctagonSignpostGetNanoseconds(v10, v127);
      v37 = _OctagonSignpostLogSystem();
      v38 = v37;
      if (v126 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v37))
      {
        *buf = 67240192;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v38, OS_SIGNPOST_INTERVAL_END, v10, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 8u);
      }

      v39 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        *&buf[4] = v10;
        *&buf[12] = 2048;
        *&buf[14] = v36 / 1000000000.0;
        *&buf[22] = 1026;
        LODWORD(v149) = 0;
        _os_log_impl(&dword_1887D2000, v39, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 0x1Cu);
      }

      v128 = 0;
      v20 = 0;
      goto LABEL_128;
    }

    Helper_x8__kSecureBackupRecoveryKeyKey = gotLoadHelper_x8__kSecureBackupRecoveryKeyKey(v33);
    v125 = [argumentsCopy objectForKeyedSubscript:{**(v41 + 3896), Helper_x8__kSecureBackupRecoveryKeyKey}];
    Helper_x8__kSecureBackupUsesRecoveryKeyKey = gotLoadHelper_x8__kSecureBackupUsesRecoveryKeyKey(v42);
    v123 = [argumentsCopy objectForKeyedSubscript:{**(v44 + 4000), Helper_x8__kSecureBackupUsesRecoveryKeyKey}];
    if (v125 || [v123 BOOLValue])
    {
      v137 = 0;
      v45 = [(OTClique *)v131 fetchCliqueStatus:&v137];
      v46 = v137;
      if (!v45)
      {
        v128 = v46;
        v48 = secLogObjForScope("clique-recovery");
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1887D2000, v48, OS_LOG_TYPE_DEFAULT, "recovery key used during secure backup recovery, skipping bottle check", buf, 2u);
        }

        v49 = secLogObjForScope("clique-recovery");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v131;
          _os_log_impl(&dword_1887D2000, v49, OS_LOG_TYPE_DEFAULT, "recovery complete: %@", buf, 0xCu);
        }

        v50 = _OctagonSignpostGetNanoseconds(v10, v127);
        v51 = _OctagonSignpostLogSystem();
        v52 = v51;
        if (v126 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v51))
        {
          *buf = 67240192;
          *&buf[4] = v131 != 0;
          _os_signpost_emit_with_name_impl(&dword_1887D2000, v52, OS_SIGNPOST_INTERVAL_END, v10, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 8u);
        }

        v53 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          *&buf[4] = v10;
          *&buf[12] = 2048;
          *&buf[14] = v50 / 1000000000.0;
          *&buf[22] = 1026;
          LODWORD(v149) = v131 != 0;
          _os_log_impl(&dword_1887D2000, v53, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 0x1Cu);
        }

        v20 = v131;
        goto LABEL_127;
      }

      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    v136 = v47;
    v124 = [(OTClique *)v131 makeOTControl:&v136];
    v128 = v136;

    if (!v124)
    {
      v76 = secLogObjForScope("clique-recovery");
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v128;
        _os_log_impl(&dword_1887D2000, v76, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", buf, 0xCu);
      }

      if (error)
      {
        v77 = v128;
        *error = v128;
      }

      v78 = _OctagonSignpostGetNanoseconds(v10, v127);
      v79 = _OctagonSignpostLogSystem();
      v80 = v79;
      if (v126 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v79))
      {
        *buf = 67240192;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v80, OS_SIGNPOST_INTERVAL_END, v10, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 8u);
      }

      v81 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        *&buf[4] = v10;
        *&buf[12] = 2048;
        *&buf[14] = v78 / 1000000000.0;
        *&buf[22] = 1026;
        LODWORD(v149) = 0;
        _os_log_impl(&dword_1887D2000, v81, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 0x1Cu);
      }

      v20 = 0;
      goto LABEL_126;
    }

    v122 = [v129 objectForKeyedSubscript:@"bottleID"];
    v119 = [v129 objectForKeyedSubscript:@"bottleValid"];
    v54 = [v129 objectForKeyedSubscript:@"EscrowServiceEscrowData"];
    v120 = [v54 objectForKeyedSubscript:@"BottledPeerEntropy"];

    if (v120 && v122 && [v119 isEqualToString:@"valid"])
    {
      v55 = secLogObjForScope("clique-recovery");
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v122;
        _os_log_impl(&dword_1887D2000, v55, OS_LOG_TYPE_DEFAULT, "recovering from bottle: %@", buf, 0xCu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v149 = __Block_byref_object_copy__5565;
      v150 = __Block_byref_object_dispose__5566;
      v151 = 0;
      v56 = _OctagonSignpostLogSystem();
      v57 = os_signpost_id_generate(v56);
      v58 = mach_continuous_time();

      v59 = _OctagonSignpostLogSystem();
      v60 = v59;
      if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
      {
        *v144 = 0;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v60, OS_SIGNPOST_INTERVAL_BEGIN, v57, "PerformOctagonJoin", " enableTelemetry=YES ", v144, 2u);
      }

      v61 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *v144 = 134217984;
        *&v144[4] = v57;
        _os_log_impl(&dword_1887D2000, v61, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PerformOctagonJoin  enableTelemetry=YES ", v144, 0xCu);
      }

      v62 = [[OTControlArguments alloc] initWithConfiguration:dataCopy];
      v135[0] = MEMORY[0x1E69E9820];
      v135[1] = 3221225472;
      v135[2] = __71__OTClique_performEscrowRecoveryWithContextData_escrowArguments_error___block_invoke;
      v135[3] = &unk_1E70E0B18;
      v135[4] = buf;
      [v124 restoreFromBottle:v62 entropy:v120 bottleID:v122 reply:v135];

      v63 = *(*&buf[8] + 40);
      v64 = _OctagonSignpostGetNanoseconds(v57, v58);
      v65 = _OctagonSignpostLogSystem();
      v66 = v65;
      if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
      {
        *v144 = 67240192;
        *&v144[4] = v63 == 0;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v66, OS_SIGNPOST_INTERVAL_END, v57, "PerformOctagonJoin", " OctagonSignpostNamePerformOctagonJoin=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformOctagonJoin}d ", v144, 8u);
      }

      v67 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *v144 = 134218496;
        *&v144[4] = v57;
        *&v144[12] = 2048;
        *&v144[14] = v64 / 1000000000.0;
        *&v144[22] = 1026;
        LODWORD(v145) = v63 == 0;
        _os_log_impl(&dword_1887D2000, v67, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformOctagonJoin  OctagonSignpostNamePerformOctagonJoin=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformOctagonJoin}d ", v144, 0x1Cu);
      }

      v68 = *(*&buf[8] + 40);
      if (v68)
      {
        if (error)
        {
          *error = v68;
        }

        v69 = _OctagonSignpostGetNanoseconds(v10, v127);
        v70 = _OctagonSignpostLogSystem();
        v71 = v70;
        if (v126 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
        {
          *v144 = 67240192;
          _os_signpost_emit_with_name_impl(&dword_1887D2000, v71, OS_SIGNPOST_INTERVAL_END, v10, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", v144, 8u);
        }

        v72 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *v144 = 134218496;
          *&v144[4] = v10;
          *&v144[12] = 2048;
          *&v144[14] = v69 / 1000000000.0;
          *&v144[22] = 1026;
          LODWORD(v145) = 0;
          _os_log_impl(&dword_1887D2000, v72, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", v144, 0x1Cu);
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_115;
      }

      _Block_object_dispose(buf, 8);

      goto LABEL_117;
    }

    v73 = secLogObjForScope("clique-recovery");
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v122;
      _os_log_impl(&dword_1887D2000, v73, OS_LOG_TYPE_DEFAULT, "bottle %@ is not valid, resetting octagon", buf, 0xCu);
    }

    v118 = [[OTControlArguments alloc] initWithConfiguration:dataCopy];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v149 = __Block_byref_object_copy__5565;
    v150 = __Block_byref_object_dispose__5566;
    v151 = 0;
    *v144 = 0;
    *&v144[8] = v144;
    *&v144[16] = 0x3032000000;
    v145 = __Block_byref_object_copy__5565;
    v146 = __Block_byref_object_dispose__5566;
    v147 = 0;
    v134[0] = MEMORY[0x1E69E9820];
    v134[1] = 3221225472;
    v134[2] = __71__OTClique_performEscrowRecoveryWithContextData_escrowArguments_error___block_invoke_299;
    v134[3] = &unk_1E70D6D28;
    v134[4] = buf;
    v134[5] = v144;
    [v124 fetchAccountWideSettingsWithForceFetch:1 arguments:v118 reply:v134];
    if ([*(*&buf[8] + 40) hasWalrus])
    {
      walrus = [*(*&buf[8] + 40) walrus];
      enabled = [walrus enabled];
    }

    else
    {
      enabled = 0;
    }

    v82 = _OctagonSignpostLogSystem();
    v121 = os_signpost_id_generate(v82);
    v83 = mach_continuous_time();

    v84 = _OctagonSignpostLogSystem();
    v85 = v84;
    if (v121 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
    {
      *v139 = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v85, OS_SIGNPOST_INTERVAL_BEGIN, v121, "PerformResetAndEstablishAfterFailedBottle", " enableTelemetry=YES ", v139, 2u);
    }

    v86 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      *v139 = 134217984;
      *&v139[4] = v121;
      _os_log_impl(&dword_1887D2000, v86, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PerformResetAndEstablishAfterFailedBottle  enableTelemetry=YES ", v139, 0xCu);
    }

    v87 = argumentsCopy;
    v88 = v83;
    v89 = *(*&buf[8] + 40);
    isGuitarfish = [dataCopy isGuitarfish];
    altDSID2 = [dataCopy altDSID];
    flowID = [dataCopy flowID];
    deviceSessionID = [dataCopy deviceSessionID];
    v133 = 0;
    LOBYTE(v117) = 1;
    LOBYTE(v116) = enabled;
    [(OTClique *)v131 resetAndEstablish:3 idmsTargetContext:0 idmsCuttlefishPassword:0 notifyIdMS:0 accountSettings:v89 isGuitarfish:isGuitarfish accountIsW:v116 altDSID:altDSID2 flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:v117 error:&v133];
    v94 = v133;

    v95 = v88;
    argumentsCopy = v87;
    v28 = 0;

    v96 = _OctagonSignpostGetNanoseconds(v121, v95);
    v97 = _OctagonSignpostLogSystem();
    v98 = v97;
    if (v121 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v97))
    {
      *v139 = 67240192;
      *&v139[4] = v94 == 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v98, OS_SIGNPOST_INTERVAL_END, v121, "PerformResetAndEstablishAfterFailedBottle", " OctagonSignpostNamePerformResetAndEstablishAfterFailedBottle=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformResetAndEstablishAfterFailedBottle}d ", v139, 8u);
    }

    v99 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      *v139 = 134218496;
      *&v139[4] = v121;
      v140 = 2048;
      v141 = v96 / 1000000000.0;
      v142 = 1026;
      v143 = v94 == 0;
      _os_log_impl(&dword_1887D2000, v99, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformResetAndEstablishAfterFailedBottle  OctagonSignpostNamePerformResetAndEstablishAfterFailedBottle=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformResetAndEstablishAfterFailedBottle}d ", v139, 0x1Cu);
    }

    v100 = secLogObjForScope("clique-recovery");
    v101 = os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT);
    if (v94)
    {
      if (v101)
      {
        *v139 = 138412290;
        *&v139[4] = v94;
        _os_log_impl(&dword_1887D2000, v100, OS_LOG_TYPE_DEFAULT, "failed to reset octagon: %@", v139, 0xCu);
      }

      if (error)
      {
        v102 = v94;
        *error = v94;
      }

      v103 = _OctagonSignpostGetNanoseconds(spid, v127);
      v104 = _OctagonSignpostLogSystem();
      v105 = v104;
      if (v126 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v104))
      {
        *v139 = 67240192;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v105, OS_SIGNPOST_INTERVAL_END, spid, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", v139, 8u);
      }

      v100 = _OctagonSignpostLogSystem();
      if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
LABEL_114:

        _Block_object_dispose(v144, 8);
        _Block_object_dispose(buf, 8);

        if (v94)
        {
LABEL_115:
          v20 = 0;
LABEL_125:

          v81 = v122;
LABEL_126:

LABEL_127:
          v39 = v125;
LABEL_128:

          goto LABEL_129;
        }

LABEL_117:
        v109 = secLogObjForScope("clique-recovery");
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v131;
          _os_log_impl(&dword_1887D2000, v109, OS_LOG_TYPE_DEFAULT, "recovery complete: %@", buf, 0xCu);
        }

        v110 = _OctagonSignpostGetNanoseconds(spid, v127);
        v111 = _OctagonSignpostLogSystem();
        v112 = v111;
        if (v126 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v111))
        {
          *buf = 67240192;
          *&buf[4] = v131 != 0;
          _os_signpost_emit_with_name_impl(&dword_1887D2000, v112, OS_SIGNPOST_INTERVAL_END, spid, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 8u);
        }

        v113 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          *&buf[4] = spid;
          *&buf[12] = 2048;
          *&buf[14] = v110 / 1000000000.0;
          *&buf[22] = 1026;
          LODWORD(v149) = v131 != 0;
          _os_log_impl(&dword_1887D2000, v113, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 0x1Cu);
        }

        v20 = v131;
        goto LABEL_125;
      }

      *v139 = 134218496;
      *&v139[4] = spid;
      v140 = 2048;
      v141 = v103 / 1000000000.0;
      v142 = 1026;
      v143 = 0;
      v106 = "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ";
      v107 = v100;
      v108 = 28;
    }

    else
    {
      if (!v101)
      {
        goto LABEL_114;
      }

      *v139 = 0;
      v106 = "reset octagon succeeded";
      v107 = v100;
      v108 = 2;
    }

    _os_log_impl(&dword_1887D2000, v107, OS_LOG_TYPE_DEFAULT, v106, v139, v108);
    goto LABEL_114;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_129:

  v114 = *MEMORY[0x1E69E9840];

  return v20;
}

void __71__OTClique_performEscrowRecoveryWithContextData_escrowArguments_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("clique-recovery");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v12 = 138412290;
      v13 = v3;
      v6 = "restore bottle errored: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, v6, &v12, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v12) = 0;
    v6 = "restoring bottle succeeded";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v3;

  v11 = *MEMORY[0x1E69E9840];
}

void __71__OTClique_performEscrowRecoveryWithContextData_escrowArguments_error___block_invoke_299(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (BOOL)isCloudServicesAvailable
{
  gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v2);
  v4 = *(v3 + 3448);
  v5 = objc_opt_class();
  if (!v5 && isCloudServicesAvailable_onceToken != -1)
  {
    dispatch_once(&isCloudServicesAvailable_onceToken, &__block_literal_global_5636);
  }

  return v5 != 0;
}

void __36__OTClique_isCloudServicesAvailable__block_invoke()
{
  v0 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEFAULT, "CloudServices is unavailable on this platform", v1, 2u);
  }
}

+ (id)newFriendsWithContextData:(id)data resetReason:(int64_t)reason error:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = secLogObjForScope("clique-newfriends");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    context = [dataCopy context];
    altDSID = [dataCopy altDSID];
    *buf = 138412546;
    *&buf[4] = context;
    *&buf[12] = 2112;
    *&buf[14] = altDSID;
    _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "makeNewFriends invoked using context: %@, altdsid: %@", buf, 0x16u);
  }

  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  v15 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "MakeNewFriends", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v11;
    _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: MakeNewFriends  enableTelemetry=YES ", buf, 0xCu);
  }

  v56 = 0;
  v51 = [dataCopy makeOTControl:&v56];
  v50 = v56;
  if (v51)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v64 = __Block_byref_object_copy__5565;
    v65 = __Block_byref_object_dispose__5566;
    v66 = 0;
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x3032000000;
    v54[3] = __Block_byref_object_copy__5565;
    v54[4] = __Block_byref_object_dispose__5566;
    v55 = 0;
    v17 = [[OTControlArguments alloc] initWithConfiguration:dataCopy];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __56__OTClique_newFriendsWithContextData_resetReason_error___block_invoke;
    v53[3] = &unk_1E70D6D28;
    v53[4] = buf;
    v53[5] = v54;
    [v51 fetchAccountWideSettingsWithForceFetch:1 arguments:v17 reply:v53];

    if ([*(*&buf[8] + 40) hasWalrus])
    {
      walrus = [*(*&buf[8] + 40) walrus];
      enabled = [walrus enabled];
    }

    else
    {
      enabled = 0;
    }

    v26 = v12;
    v49 = [[OTClique alloc] initWithContextData:dataCopy];
    isGuitarfish = [dataCopy isGuitarfish];
    altDSID2 = [dataCopy altDSID];
    flowID = [dataCopy flowID];
    deviceSessionID = [dataCopy deviceSessionID];
    v52 = 0;
    LOBYTE(v47) = 1;
    LOBYTE(v46) = enabled;
    [(OTClique *)v49 resetAndEstablish:reason idmsTargetContext:0 idmsCuttlefishPassword:0 notifyIdMS:0 accountSettings:0 isGuitarfish:isGuitarfish accountIsW:v46 altDSID:altDSID2 flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:v47 error:&v52];
    v31 = v52;

    v32 = secLogObjForScope("clique-newfriends");
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    if (v31)
    {
      if (v33)
      {
        *v57 = 138412290;
        v58 = v31;
        _os_log_impl(&dword_1887D2000, v32, OS_LOG_TYPE_DEFAULT, "account reset failed: %@", v57, 0xCu);
      }

      if (error)
      {
        v34 = v31;
        *error = v31;
      }

      Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v26);
      v36 = _OctagonSignpostLogSystem();
      v37 = v36;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        *v57 = 67240192;
        LODWORD(v58) = 0;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v37, OS_SIGNPOST_INTERVAL_END, v11, "MakeNewFriends", " OctagonSignpostNameMakeNewFriends=%{public,signpost.telemetry:number1,name=OctagonSignpostNameMakeNewFriends}d ", v57, 8u);
      }

      v38 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *v57 = 134218496;
        v58 = v11;
        v59 = 2048;
        v60 = Nanoseconds / 1000000000.0;
        v61 = 1026;
        v62 = 0;
        _os_log_impl(&dword_1887D2000, v38, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: MakeNewFriends  OctagonSignpostNameMakeNewFriends=%{public,signpost.telemetry:number1,name=OctagonSignpostNameMakeNewFriends}d ", v57, 0x1Cu);
      }

      v25 = 0;
    }

    else
    {
      if (v33)
      {
        *v57 = 0;
        _os_log_impl(&dword_1887D2000, v32, OS_LOG_TYPE_DEFAULT, "Octagon account reset succeeded", v57, 2u);
      }

      v39 = secLogObjForScope("clique-newfriends");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *v57 = 0;
        _os_log_impl(&dword_1887D2000, v39, OS_LOG_TYPE_DEFAULT, "makeNewFriends complete", v57, 2u);
      }

      v40 = _OctagonSignpostGetNanoseconds(v11, v26);
      v41 = _OctagonSignpostLogSystem();
      v42 = v41;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
      {
        *v57 = 67240192;
        LODWORD(v58) = 1;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v42, OS_SIGNPOST_INTERVAL_END, v11, "MakeNewFriends", " OctagonSignpostNameMakeNewFriends=%{public,signpost.telemetry:number1,name=OctagonSignpostNameMakeNewFriends}d ", v57, 8u);
      }

      v43 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *v57 = 134218496;
        v58 = v11;
        v59 = 2048;
        v60 = v40 / 1000000000.0;
        v61 = 1026;
        v62 = 1;
        _os_log_impl(&dword_1887D2000, v43, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: MakeNewFriends  OctagonSignpostNameMakeNewFriends=%{public,signpost.telemetry:number1,name=OctagonSignpostNameMakeNewFriends}d ", v57, 0x1Cu);
      }

      v25 = v49;
    }

    _Block_object_dispose(v54, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v20 = secLogObjForScope("clique-inheritancekey");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v50;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", buf, 0xCu);
    }

    v21 = _OctagonSignpostGetNanoseconds(v11, v12);
    v22 = _OctagonSignpostLogSystem();
    v23 = v22;
    if (v15 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v22))
    {
      *buf = 67240192;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v23, OS_SIGNPOST_INTERVAL_END, v11, "MakeNewFriends", " OctagonSignpostNameMakeNewFriends=%{public,signpost.telemetry:number1,name=OctagonSignpostNameMakeNewFriends}d ", buf, 8u);
    }

    v24 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = v21 / 1000000000.0;
      *&buf[22] = 1026;
      LODWORD(v64) = 0;
      _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: MakeNewFriends  OctagonSignpostNameMakeNewFriends=%{public,signpost.telemetry:number1,name=OctagonSignpostNameMakeNewFriends}d ", buf, 0x1Cu);
    }

    v25 = 0;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v25;
}

void __56__OTClique_newFriendsWithContextData_resetReason_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (BOOL)platformSupportsSOS
{
  IsSOSFeatureEnabled = OctagonIsSOSFeatureEnabled();
  if (IsSOSFeatureEnabled)
  {
    LOBYTE(IsSOSFeatureEnabled) = SOSCompatibilityModeEnabled() ^ 1;
  }

  return IsSOSFeatureEnabled;
}

@end
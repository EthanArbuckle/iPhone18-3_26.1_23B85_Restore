@interface AAInheritanceController
- (AAInheritanceController)init;
- (void)configureRemoteInterface:(id)interface;
- (void)dealloc;
- (void)fetchAllHealthInfoWithCompletion:(id)completion;
- (void)fetchBenefactorsWithCompletion:(id)completion;
- (void)fetchBeneficiariesWithCompletion:(id)completion;
- (void)fetchInvitationWithBeneficiaryID:(id)d completion:(id)completion;
- (void)fetchInvitationsWithCompletion:(id)completion;
- (void)fetchManifestOptionsForContact:(id)contact completion:(id)completion;
- (void)fetchSuggestedBeneficiariesWithCompletion:(id)completion;
- (void)isRecipient:(id)recipient capableOf:(id)of completion:(id)completion;
- (void)presentInheritanceInvitationUIWithBeneficiaryID:(id)d completion:(id)completion;
- (void)removeAccessCodeForContactInfo:(id)info completion:(id)completion;
- (void)removeBenefactor:(id)benefactor completion:(id)completion;
- (void)removeBeneficiary:(id)beneficiary manifest:(id)manifest completion:(id)completion;
- (void)removeInvitation:(id)invitation completion:(id)completion;
- (void)sendInvitationToContact:(id)contact completion:(id)completion;
- (void)setupBeneficiaryAliasWithAccessKey:(id)key password:(id)password firstName:(id)name lastName:(id)lastName authToken:(id)token completion:(id)completion;
- (void)setupBeneficiaryManifest:(id)manifest contactInfo:(id)info setupAuthToken:(id)token completion:(id)completion;
- (void)updateAccessCodeForContactInfo:(id)info completion:(id)completion;
- (void)updateBeneficiaryManifest:(id)manifest contactInfo:(id)info completion:(id)completion;
@end

@implementation AAInheritanceController

- (AAInheritanceController)init
{
  v7.receiver = self;
  v7.super_class = AAInheritanceController;
  v2 = [(AAInheritanceController *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E6985E18]) initWithServiceName:@"com.apple.aa.inheritance.xpc" remoteProtocol:&unk_1F2F2DA70 options:0];
    v4 = [objc_alloc(MEMORY[0x1E6985E10]) initWithRemoteServiceConfig:v3 delegate:v2];
    remoteService = v2->_remoteService;
    v2->_remoteService = v4;

    [(AAFXPCSession *)v2->_remoteService resume];
  }

  return v2;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "%@ deallocated.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)fetchManifestOptionsForContact:(id)contact completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  completionCopy = completion;
  if (!contactCopy)
  {
    [AAInheritanceController fetchManifestOptionsForContact:completion:];
  }

  if (!completionCopy)
  {
    [AAInheritanceController fetchManifestOptionsForContact:completion:];
  }

  v8 = _os_activity_create(&dword_1B6F6A000, "inheritance-appleaccount/fetch-dataclass-rules", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = _AASignpostLogSystem();
  v10 = _AASignpostCreate(v9);
  v12 = v11;

  v13 = _AASignpostLogSystem();
  v14 = v13;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "FetchContactManifestOptions", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchContactManifestOptions  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__6;
  v34 = __Block_byref_object_dispose__6;
  selfCopy = self;
  v35 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__AAInheritanceController_fetchManifestOptionsForContact_completion___block_invoke;
  aBlock[3] = &unk_1E7C9BF20;
  p_buf = &buf;
  v28 = v10;
  v29 = v12;
  v17 = completionCopy;
  v26 = v17;
  v18 = _Block_copy(aBlock);
  remoteService = selfCopy->_remoteService;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __69__AAInheritanceController_fetchManifestOptionsForContact_completion___block_invoke_86;
  v23[3] = &unk_1E7C9B078;
  v20 = v18;
  v24 = v20;
  v21 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v23];
  [v21 fetchManifestOptionsForContact:contactCopy completion:v20];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v22 = *MEMORY[0x1E69E9840];
}

void __69__AAInheritanceController_fetchManifestOptionsForContact_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
  v8 = a2;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v5);
    v20 = 67240192;
    LODWORD(v21) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchContactManifestOptions", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v20, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v5);
    v18 = [v17 code];
    v20 = 134218496;
    v21 = v16;
    v22 = 2048;
    v23 = v15;
    v24 = 1026;
    v25 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchContactManifestOptions  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v20, 0x1Cu);
  }

  (*(a1[4] + 16))();
  v19 = *MEMORY[0x1E69E9840];
}

void __69__AAInheritanceController_fetchManifestOptionsForContact_completion___block_invoke_86(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__AAInheritanceController_fetchManifestOptionsForContact_completion___block_invoke_86_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)isRecipient:(id)recipient capableOf:(id)of completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  ofCopy = of;
  completionCopy = completion;
  if (!recipientCopy)
  {
    [AAInheritanceController isRecipient:capableOf:completion:];
  }

  if (!ofCopy)
  {
    [AAInheritanceController isRecipient:capableOf:completion:];
  }

  if (!completionCopy)
  {
    [AAInheritanceController isRecipient:capableOf:completion:];
  }

  v11 = _os_activity_create(&dword_1B6F6A000, "inheritance-appleaccount/is-recipient-capable", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  v12 = _AASignpostLogSystem();
  v13 = _AASignpostCreate(v12);
  v15 = v14;

  v16 = _AASignpostLogSystem();
  v17 = v16;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v13, "BeneficiaryIsRecipientCapable", " enableTelemetry=YES ", &buf, 2u);
  }

  v18 = _AASignpostLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: BeneficiaryIsRecipientCapable  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__6;
  v37 = __Block_byref_object_dispose__6;
  selfCopy = self;
  v38 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__AAInheritanceController_isRecipient_capableOf_completion___block_invoke;
  aBlock[3] = &unk_1E7C9BF48;
  p_buf = &buf;
  v31 = v13;
  v32 = v15;
  v20 = completionCopy;
  v29 = v20;
  v21 = _Block_copy(aBlock);
  remoteService = selfCopy->_remoteService;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __60__AAInheritanceController_isRecipient_capableOf_completion___block_invoke_95;
  v26[3] = &unk_1E7C9B078;
  v23 = v21;
  v27 = v23;
  v24 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v26];
  [v24 isRecipient:recipientCopy capableOf:ofCopy completion:v23];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __60__AAInheritanceController_isRecipient_capableOf_completion___block_invoke(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _AASignpostLogSystem();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v13 = 67240192;
    LODWORD(v14) = a2;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "BeneficiaryIsRecipientCapable", " isSupported=%{public,signpost.telemetry:number2,name=isSupported}d ", &v13, 8u);
  }

  v10 = _AASignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218496;
    v14 = a1[6];
    v15 = 2048;
    v16 = Nanoseconds / 1000000000.0;
    v17 = 1026;
    v18 = a2;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: BeneficiaryIsRecipientCapable  isSupported=%{public,signpost.telemetry:number2,name=isSupported}d ", &v13, 0x1Cu);
  }

  result = a1[4];
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void __60__AAInheritanceController_isRecipient_capableOf_completion___block_invoke_95(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__AAInheritanceController_isRecipient_capableOf_completion___block_invoke_95_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setupBeneficiaryManifest:(id)manifest contactInfo:(id)info setupAuthToken:(id)token completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  manifestCopy = manifest;
  infoCopy = info;
  tokenCopy = token;
  completionCopy = completion;
  if (!manifestCopy)
  {
    [AAInheritanceController setupBeneficiaryManifest:contactInfo:setupAuthToken:completion:];
  }

  if (!infoCopy)
  {
    [AAInheritanceController setupBeneficiaryManifest:contactInfo:setupAuthToken:completion:];
  }

  if (!tokenCopy)
  {
    [AAInheritanceController setupBeneficiaryManifest:contactInfo:setupAuthToken:completion:];
  }

  if (!completionCopy)
  {
    [AAInheritanceController setupBeneficiaryManifest:contactInfo:setupAuthToken:completion:];
  }

  v14 = _os_activity_create(&dword_1B6F6A000, "inheritance-appleaccount/setup-beneficiary-manifest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v14, &state);
  v15 = _AASignpostLogSystem();
  v16 = _AASignpostCreate(v15);
  v18 = v17;

  v19 = _AASignpostLogSystem();
  v20 = v19;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v16, "SetupBeneficiaryManifest", " enableTelemetry=YES ", &buf, 2u);
  }

  v21 = _AASignpostLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v16;
    _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SetupBeneficiaryManifest  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__6;
  v40 = __Block_byref_object_dispose__6;
  selfCopy = self;
  v41 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__AAInheritanceController_setupBeneficiaryManifest_contactInfo_setupAuthToken_completion___block_invoke;
  aBlock[3] = &unk_1E7C9BF70;
  p_buf = &buf;
  v34 = v16;
  v35 = v18;
  v23 = completionCopy;
  v32 = v23;
  v24 = _Block_copy(aBlock);
  remoteService = selfCopy->_remoteService;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __90__AAInheritanceController_setupBeneficiaryManifest_contactInfo_setupAuthToken_completion___block_invoke_106;
  v29[3] = &unk_1E7C9B078;
  v26 = v24;
  v30 = v26;
  v27 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v29];
  [v27 setupBeneficiaryManifest:manifestCopy contactInfo:infoCopy setupAuthToken:tokenCopy completion:v26];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v28 = *MEMORY[0x1E69E9840];
}

void __90__AAInheritanceController_setupBeneficiaryManifest_contactInfo_setupAuthToken_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
  v8 = a2;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v5);
    v20 = 67240192;
    LODWORD(v21) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "SetupBeneficiaryManifest", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v20, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v5);
    v18 = [v17 code];
    v20 = 134218496;
    v21 = v16;
    v22 = 2048;
    v23 = v15;
    v24 = 1026;
    v25 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetupBeneficiaryManifest  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v20, 0x1Cu);
  }

  (*(a1[4] + 16))();
  v19 = *MEMORY[0x1E69E9840];
}

void __90__AAInheritanceController_setupBeneficiaryManifest_contactInfo_setupAuthToken_completion___block_invoke_106(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __90__AAInheritanceController_setupBeneficiaryManifest_contactInfo_setupAuthToken_completion___block_invoke_106_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removeAccessCodeForContactInfo:(id)info completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  completionCopy = completion;
  if (!infoCopy)
  {
    [AAInheritanceController removeAccessCodeForContactInfo:completion:];
  }

  if (!completionCopy)
  {
    [AAInheritanceController removeAccessCodeForContactInfo:completion:];
  }

  v8 = _os_activity_create(&dword_1B6F6A000, "inheritance-appleaccount/update-access-code", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = _AASignpostLogSystem();
  v10 = _AASignpostCreate(v9);
  v12 = v11;

  v13 = _AASignpostLogSystem();
  v14 = v13;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "RemoveAccessCode", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RemoveAccessCode  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__6;
  v34 = __Block_byref_object_dispose__6;
  selfCopy = self;
  v35 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__AAInheritanceController_removeAccessCodeForContactInfo_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v28 = v10;
  v29 = v12;
  v17 = completionCopy;
  v26 = v17;
  v18 = _Block_copy(aBlock);
  remoteService = selfCopy->_remoteService;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __69__AAInheritanceController_removeAccessCodeForContactInfo_completion___block_invoke_107;
  v23[3] = &unk_1E7C9B078;
  v20 = v18;
  v24 = v20;
  v21 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v23];
  [v21 removeAccessCodeForContactInfo:infoCopy completion:v20];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v22 = *MEMORY[0x1E69E9840];
}

void __69__AAInheritanceController_removeAccessCodeForContactInfo_completion___block_invoke(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _AASignpostLogSystem();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v17 = 67240192;
    LODWORD(v18) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RemoveAccessCode", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 8u);
  }

  v11 = _AASignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = a1[6];
    v14 = _AAErrorUnderlyingError(v3);
    v15 = [v14 code];
    v17 = 134218496;
    v18 = v13;
    v19 = 2048;
    v20 = v12;
    v21 = 1026;
    v22 = v15;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveAccessCode  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 0x1Cu);
  }

  (*(a1[4] + 16))();
  v16 = *MEMORY[0x1E69E9840];
}

void __69__AAInheritanceController_removeAccessCodeForContactInfo_completion___block_invoke_107(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__AAInheritanceController_removeAccessCodeForContactInfo_completion___block_invoke_107_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removeBeneficiary:(id)beneficiary manifest:(id)manifest completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  beneficiaryCopy = beneficiary;
  manifestCopy = manifest;
  completionCopy = completion;
  if (!beneficiaryCopy)
  {
    [AAInheritanceController removeBeneficiary:manifest:completion:];
  }

  if (!completionCopy)
  {
    [AAInheritanceController removeBeneficiary:manifest:completion:];
  }

  v11 = _os_activity_create(&dword_1B6F6A000, "inheritance-appleaccount/remove-beneficiary", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  v12 = _AASignpostLogSystem();
  v13 = _AASignpostCreate(v12);
  v15 = v14;

  v16 = _AASignpostLogSystem();
  v17 = v16;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v13, "RemoveBeneficiary", " enableTelemetry=YES ", &buf, 2u);
  }

  v18 = _AASignpostLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RemoveBeneficiary  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__6;
  v37 = __Block_byref_object_dispose__6;
  selfCopy = self;
  v38 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__AAInheritanceController_removeBeneficiary_manifest_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v31 = v13;
  v32 = v15;
  v20 = completionCopy;
  v29 = v20;
  v21 = _Block_copy(aBlock);
  remoteService = selfCopy->_remoteService;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __65__AAInheritanceController_removeBeneficiary_manifest_completion___block_invoke_111;
  v26[3] = &unk_1E7C9B078;
  v23 = v21;
  v27 = v23;
  v24 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v26];
  [v24 removeBeneficiary:beneficiaryCopy manifest:manifestCopy completion:v23];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v25 = *MEMORY[0x1E69E9840];
}

void __65__AAInheritanceController_removeBeneficiary_manifest_completion___block_invoke(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _AASignpostLogSystem();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v17 = 67240192;
    LODWORD(v18) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RemoveBeneficiary", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 8u);
  }

  v11 = _AASignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = a1[6];
    v14 = _AAErrorUnderlyingError(v3);
    v15 = [v14 code];
    v17 = 134218496;
    v18 = v13;
    v19 = 2048;
    v20 = v12;
    v21 = 1026;
    v22 = v15;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveBeneficiary  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 0x1Cu);
  }

  (*(a1[4] + 16))();
  v16 = *MEMORY[0x1E69E9840];
}

void __65__AAInheritanceController_removeBeneficiary_manifest_completion___block_invoke_111(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__AAInheritanceController_removeBeneficiary_manifest_completion___block_invoke_111_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removeBenefactor:(id)benefactor completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  benefactorCopy = benefactor;
  completionCopy = completion;
  if (!benefactorCopy)
  {
    [AAInheritanceController removeBenefactor:completion:];
  }

  if (!completionCopy)
  {
    [AAInheritanceController removeBenefactor:completion:];
  }

  v8 = _os_activity_create(&dword_1B6F6A000, "inheritance-appleaccount/remove-benefactor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = _AASignpostLogSystem();
  v10 = _AASignpostCreate(v9);
  v12 = v11;

  v13 = _AASignpostLogSystem();
  v14 = v13;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "RemoveBenefactor", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RemoveBenefactor  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__6;
  v34 = __Block_byref_object_dispose__6;
  selfCopy = self;
  v35 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__AAInheritanceController_removeBenefactor_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v28 = v10;
  v29 = v12;
  v17 = completionCopy;
  v26 = v17;
  v18 = _Block_copy(aBlock);
  remoteService = selfCopy->_remoteService;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __55__AAInheritanceController_removeBenefactor_completion___block_invoke_115;
  v23[3] = &unk_1E7C9B078;
  v20 = v18;
  v24 = v20;
  v21 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v23];
  [v21 removeBenefactor:benefactorCopy completion:v20];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v22 = *MEMORY[0x1E69E9840];
}

void __55__AAInheritanceController_removeBenefactor_completion___block_invoke(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _AASignpostLogSystem();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v17 = 67240192;
    LODWORD(v18) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RemoveBenefactor", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 8u);
  }

  v11 = _AASignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = a1[6];
    v14 = _AAErrorUnderlyingError(v3);
    v15 = [v14 code];
    v17 = 134218496;
    v18 = v13;
    v19 = 2048;
    v20 = v12;
    v21 = 1026;
    v22 = v15;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveBenefactor  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 0x1Cu);
  }

  (*(a1[4] + 16))();
  v16 = *MEMORY[0x1E69E9840];
}

void __55__AAInheritanceController_removeBenefactor_completion___block_invoke_115(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__AAInheritanceController_removeBenefactor_completion___block_invoke_115_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)updateAccessCodeForContactInfo:(id)info completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  completionCopy = completion;
  if (!infoCopy)
  {
    [AAInheritanceController updateAccessCodeForContactInfo:completion:];
  }

  if (!completionCopy)
  {
    [AAInheritanceController updateAccessCodeForContactInfo:completion:];
  }

  v8 = _os_activity_create(&dword_1B6F6A000, "inheritance-appleaccount/remove-access-code", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = _AASignpostLogSystem();
  v10 = _AASignpostCreate(v9);
  v12 = v11;

  v13 = _AASignpostLogSystem();
  v14 = v13;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "UpdateAccessCode enableTelemetry=YES ", "", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: UpdateAccessCode enableTelemetry=YES  ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__6;
  v34 = __Block_byref_object_dispose__6;
  selfCopy = self;
  v35 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__AAInheritanceController_updateAccessCodeForContactInfo_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v28 = v10;
  v29 = v12;
  v17 = completionCopy;
  v26 = v17;
  v18 = _Block_copy(aBlock);
  remoteService = selfCopy->_remoteService;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __69__AAInheritanceController_updateAccessCodeForContactInfo_completion___block_invoke_116;
  v23[3] = &unk_1E7C9B078;
  v20 = v18;
  v24 = v20;
  v21 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v23];
  [v21 updateAccessCodeForContactInfo:infoCopy completion:v20];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v22 = *MEMORY[0x1E69E9840];
}

void __69__AAInheritanceController_updateAccessCodeForContactInfo_completion___block_invoke(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _AASignpostLogSystem();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v17 = 67240192;
    LODWORD(v18) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "UpdateAccessCode", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 8u);
  }

  v11 = _AASignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = a1[6];
    v14 = _AAErrorUnderlyingError(v3);
    v15 = [v14 code];
    v17 = 134218496;
    v18 = v13;
    v19 = 2048;
    v20 = v12;
    v21 = 1026;
    v22 = v15;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: UpdateAccessCode  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 0x1Cu);
  }

  (*(a1[4] + 16))();
  v16 = *MEMORY[0x1E69E9840];
}

void __69__AAInheritanceController_updateAccessCodeForContactInfo_completion___block_invoke_116(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__AAInheritanceController_updateAccessCodeForContactInfo_completion___block_invoke_116_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)updateBeneficiaryManifest:(id)manifest contactInfo:(id)info completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  manifestCopy = manifest;
  infoCopy = info;
  completionCopy = completion;
  if (!manifestCopy)
  {
    [AAInheritanceController updateBeneficiaryManifest:contactInfo:completion:];
  }

  if (!infoCopy)
  {
    [AAInheritanceController updateBeneficiaryManifest:contactInfo:completion:];
  }

  if (!completionCopy)
  {
    [AAInheritanceController updateBeneficiaryManifest:contactInfo:completion:];
  }

  v11 = _os_activity_create(&dword_1B6F6A000, "inheritance-appleaccount/remove-manifest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  v12 = _AASignpostLogSystem();
  v13 = _AASignpostCreate(v12);
  v15 = v14;

  v16 = _AASignpostLogSystem();
  v17 = v16;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v13, "UpdateBeneficiaryManifest enableTelemetry=YES ", "", &buf, 2u);
  }

  v18 = _AASignpostLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: UpdateBeneficiaryManifest enableTelemetry=YES  ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__6;
  v37 = __Block_byref_object_dispose__6;
  selfCopy = self;
  v38 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__AAInheritanceController_updateBeneficiaryManifest_contactInfo_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v31 = v13;
  v32 = v15;
  v20 = completionCopy;
  v29 = v20;
  v21 = _Block_copy(aBlock);
  remoteService = selfCopy->_remoteService;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __76__AAInheritanceController_updateBeneficiaryManifest_contactInfo_completion___block_invoke_117;
  v26[3] = &unk_1E7C9B078;
  v23 = v21;
  v27 = v23;
  v24 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v26];
  [v24 updateBeneficiaryManifest:manifestCopy contactInfo:infoCopy completion:v23];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v25 = *MEMORY[0x1E69E9840];
}

void __76__AAInheritanceController_updateBeneficiaryManifest_contactInfo_completion___block_invoke(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _AASignpostLogSystem();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v17 = 67240192;
    LODWORD(v18) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "UpdateBeneficiaryManifest", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 8u);
  }

  v11 = _AASignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = a1[6];
    v14 = _AAErrorUnderlyingError(v3);
    v15 = [v14 code];
    v17 = 134218496;
    v18 = v13;
    v19 = 2048;
    v20 = v12;
    v21 = 1026;
    v22 = v15;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: UpdateBeneficiaryManifest  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 0x1Cu);
  }

  (*(a1[4] + 16))();
  v16 = *MEMORY[0x1E69E9840];
}

void __76__AAInheritanceController_updateBeneficiaryManifest_contactInfo_completion___block_invoke_117(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__AAInheritanceController_updateBeneficiaryManifest_contactInfo_completion___block_invoke_117_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchBeneficiariesWithCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    [AAInheritanceController fetchBeneficiariesWithCompletion:];
  }

  v5 = _os_activity_create(&dword_1B6F6A000, "inheritance-appleaccount/fetch-beneficiaries", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = _AASignpostLogSystem();
  v7 = _AASignpostCreate(v6);
  v9 = v8;

  v10 = _AASignpostLogSystem();
  v11 = v10;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FetchBeneficiaries enableTelemetry=YES ", "", &buf, 2u);
  }

  v12 = _AASignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchBeneficiaries enableTelemetry=YES  ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__6;
  v31 = __Block_byref_object_dispose__6;
  selfCopy = self;
  v32 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__AAInheritanceController_fetchBeneficiariesWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B540;
  p_buf = &buf;
  v25 = v7;
  v26 = v9;
  v14 = completionCopy;
  v23 = v14;
  v15 = _Block_copy(aBlock);
  remoteService = selfCopy->_remoteService;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __60__AAInheritanceController_fetchBeneficiariesWithCompletion___block_invoke_119;
  v20[3] = &unk_1E7C9B078;
  v17 = v15;
  v21 = v17;
  v18 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v20];
  [v18 fetchBeneficiariesWithCompletion:v17];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v19 = *MEMORY[0x1E69E9840];
}

void __60__AAInheritanceController_fetchBeneficiariesWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v21 = 67240192;
    LODWORD(v22) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchBeneficiaries", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v21 = 134218496;
    v22 = v16;
    v23 = 2048;
    v24 = v15;
    v25 = 1026;
    v26 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchBeneficiaries  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 0x1Cu);
  }

  if (a1[4])
  {
    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Fetched Beneficiaries: %@", &v21, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __60__AAInheritanceController_fetchBeneficiariesWithCompletion___block_invoke_119(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__AAInheritanceController_fetchBeneficiariesWithCompletion___block_invoke_119_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchBenefactorsWithCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    [AAInheritanceController fetchBenefactorsWithCompletion:];
  }

  v5 = _os_activity_create(&dword_1B6F6A000, "inheritance-appleaccount/fetch-benefactors", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = _AASignpostLogSystem();
  v7 = _AASignpostCreate(v6);
  v9 = v8;

  v10 = _AASignpostLogSystem();
  v11 = v10;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FetchBenefactors enableTelemetry=YES ", "", &buf, 2u);
  }

  v12 = _AASignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchBenefactors enableTelemetry=YES  ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__6;
  v31 = __Block_byref_object_dispose__6;
  selfCopy = self;
  v32 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__AAInheritanceController_fetchBenefactorsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B540;
  p_buf = &buf;
  v25 = v7;
  v26 = v9;
  v14 = completionCopy;
  v23 = v14;
  v15 = _Block_copy(aBlock);
  remoteService = selfCopy->_remoteService;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __58__AAInheritanceController_fetchBenefactorsWithCompletion___block_invoke_120;
  v20[3] = &unk_1E7C9B078;
  v17 = v15;
  v21 = v17;
  v18 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v20];
  [v18 fetchBenefactorsWithCompletion:v17];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v19 = *MEMORY[0x1E69E9840];
}

void __58__AAInheritanceController_fetchBenefactorsWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v21 = 67240192;
    LODWORD(v22) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchBenefactors", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v21 = 134218496;
    v22 = v16;
    v23 = 2048;
    v24 = v15;
    v25 = 1026;
    v26 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchBenefactors  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 0x1Cu);
  }

  if (a1[4])
  {
    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Fetched Benefactors: %@", &v21, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __58__AAInheritanceController_fetchBenefactorsWithCompletion___block_invoke_120(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__AAInheritanceController_fetchBenefactorsWithCompletion___block_invoke_120_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchSuggestedBeneficiariesWithCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    [AAInheritanceController fetchSuggestedBeneficiariesWithCompletion:];
  }

  v5 = _os_activity_create(&dword_1B6F6A000, "inheritance-appleaccount/fetch-suugested-beneficiaries", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = _AASignpostLogSystem();
  v7 = _AASignpostCreate(v6);
  v9 = v8;

  v10 = _AASignpostLogSystem();
  v11 = v10;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FetchSuggestedBeneficiaries enableTelemetry=YES ", "", &buf, 2u);
  }

  v12 = _AASignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchSuggestedBeneficiaries enableTelemetry=YES  ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__6;
  v31 = __Block_byref_object_dispose__6;
  selfCopy = self;
  v32 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__AAInheritanceController_fetchSuggestedBeneficiariesWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B540;
  p_buf = &buf;
  v25 = v7;
  v26 = v9;
  v14 = completionCopy;
  v23 = v14;
  v15 = _Block_copy(aBlock);
  remoteService = selfCopy->_remoteService;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __69__AAInheritanceController_fetchSuggestedBeneficiariesWithCompletion___block_invoke_121;
  v20[3] = &unk_1E7C9B078;
  v17 = v15;
  v21 = v17;
  v18 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v20];
  [v18 fetchSuggestedBeneficiariesWithCompletion:v17];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v19 = *MEMORY[0x1E69E9840];
}

void __69__AAInheritanceController_fetchSuggestedBeneficiariesWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v21 = 67240192;
    LODWORD(v22) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchSuggestedBeneficiaries", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v21 = 134218496;
    v22 = v16;
    v23 = 2048;
    v24 = v15;
    v25 = 1026;
    v26 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchSuggestedBeneficiaries  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 0x1Cu);
  }

  if (a1[4])
  {
    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Suggested Beneficiaries: %@", &v21, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __69__AAInheritanceController_fetchSuggestedBeneficiariesWithCompletion___block_invoke_121(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__AAInheritanceController_fetchSuggestedBeneficiariesWithCompletion___block_invoke_121_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)sendInvitationToContact:(id)contact completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  completionCopy = completion;
  if (!contactCopy)
  {
    [AAInheritanceController sendInvitationToContact:completion:];
  }

  if (!completionCopy)
  {
    [AAInheritanceController sendInvitationToContact:completion:];
  }

  v8 = _os_activity_create(&dword_1B6F6A000, "inheritance-appleaccount/send-invitation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = _AASignpostLogSystem();
  v10 = _AASignpostCreate(v9);
  v12 = v11;

  v13 = _AASignpostLogSystem();
  v14 = v13;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SendInvitationToContact enableTelemetry=YES ", "", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SendInvitationToContact enableTelemetry=YES  ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__6;
  v34 = __Block_byref_object_dispose__6;
  selfCopy = self;
  v35 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__AAInheritanceController_sendInvitationToContact_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v28 = v10;
  v29 = v12;
  v17 = completionCopy;
  v26 = v17;
  v18 = _Block_copy(aBlock);
  remoteService = selfCopy->_remoteService;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __62__AAInheritanceController_sendInvitationToContact_completion___block_invoke_122;
  v23[3] = &unk_1E7C9B078;
  v20 = v18;
  v24 = v20;
  v21 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v23];
  [v21 sendInvitationToContact:contactCopy completion:v20];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v22 = *MEMORY[0x1E69E9840];
}

void __62__AAInheritanceController_sendInvitationToContact_completion___block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _AASignpostLogSystem();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v18 = 67240192;
    LODWORD(v19) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SendInvitationToContact", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
  }

  v11 = _AASignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = a1[6];
    v14 = _AAErrorUnderlyingError(v3);
    v15 = [v14 code];
    v18 = 134218496;
    v19 = v13;
    v20 = 2048;
    v21 = v12;
    v22 = 1026;
    v23 = v15;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SendInvitationToContact  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  if (a1[4])
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Sent Invitation.", &v18, 2u);
    }

    (*(a1[4] + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __62__AAInheritanceController_sendInvitationToContact_completion___block_invoke_122(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__AAInheritanceController_sendInvitationToContact_completion___block_invoke_122_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchInvitationsWithCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    [AAInheritanceController fetchInvitationsWithCompletion:];
  }

  v5 = _os_activity_create(&dword_1B6F6A000, "inheritance-appleaccount/fetch-invitations", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = _AASignpostLogSystem();
  v7 = _AASignpostCreate(v6);
  v9 = v8;

  v10 = _AASignpostLogSystem();
  v11 = v10;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FetchInvitations enableTelemetry=YES ", "", &buf, 2u);
  }

  v12 = _AASignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchInvitations enableTelemetry=YES  ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__6;
  v31 = __Block_byref_object_dispose__6;
  selfCopy = self;
  v32 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__AAInheritanceController_fetchInvitationsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B540;
  p_buf = &buf;
  v25 = v7;
  v26 = v9;
  v14 = completionCopy;
  v23 = v14;
  v15 = _Block_copy(aBlock);
  remoteService = selfCopy->_remoteService;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __58__AAInheritanceController_fetchInvitationsWithCompletion___block_invoke_123;
  v20[3] = &unk_1E7C9B078;
  v17 = v15;
  v21 = v17;
  v18 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v20];
  [v18 fetchInvitationsWithCompletion:v17];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v19 = *MEMORY[0x1E69E9840];
}

void __58__AAInheritanceController_fetchInvitationsWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v21 = 67240192;
    LODWORD(v22) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchInvitations", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v21 = 134218496;
    v22 = v16;
    v23 = 2048;
    v24 = v15;
    v25 = 1026;
    v26 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchInvitations  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 0x1Cu);
  }

  if (a1[4])
  {
    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Fetched Invitations: %@", &v21, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __58__AAInheritanceController_fetchInvitationsWithCompletion___block_invoke_123(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__AAInheritanceController_fetchInvitationsWithCompletion___block_invoke_123_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchInvitationWithBeneficiaryID:(id)d completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if (!completionCopy)
  {
    [AAInheritanceController fetchInvitationWithBeneficiaryID:completion:];
  }

  v8 = _os_activity_create(&dword_1B6F6A000, "inheritance-appleaccount/fetch-invitation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = _AASignpostLogSystem();
  v10 = _AASignpostCreate(v9);
  v12 = v11;

  v13 = _AASignpostLogSystem();
  v14 = v13;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "BeneficiaryInvitation enableTelemetry=YES ", "", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: BeneficiaryInvitation enableTelemetry=YES  ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__6;
  v34 = __Block_byref_object_dispose__6;
  selfCopy = self;
  v35 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__AAInheritanceController_fetchInvitationWithBeneficiaryID_completion___block_invoke;
  aBlock[3] = &unk_1E7C9BF98;
  p_buf = &buf;
  v28 = v10;
  v29 = v12;
  v17 = completionCopy;
  v26 = v17;
  v18 = _Block_copy(aBlock);
  remoteService = selfCopy->_remoteService;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __71__AAInheritanceController_fetchInvitationWithBeneficiaryID_completion___block_invoke_125;
  v23[3] = &unk_1E7C9B078;
  v20 = v18;
  v24 = v20;
  v21 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v23];
  [v21 fetchInvitationWithBeneficiaryID:dCopy completion:v20];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v22 = *MEMORY[0x1E69E9840];
}

void __71__AAInheritanceController_fetchInvitationWithBeneficiaryID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v21 = 67240192;
    LODWORD(v22) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "BeneficiaryInvitation", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v21 = 134218496;
    v22 = v16;
    v23 = 2048;
    v24 = v15;
    v25 = 1026;
    v26 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: BeneficiaryInvitation  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 0x1Cu);
  }

  if (a1[4])
  {
    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Fetched Invitation: %@", &v21, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __71__AAInheritanceController_fetchInvitationWithBeneficiaryID_completion___block_invoke_125(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__AAInheritanceController_fetchInvitationWithBeneficiaryID_completion___block_invoke_125_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removeInvitation:(id)invitation completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  completionCopy = completion;
  if (!invitationCopy)
  {
    [AAInheritanceController removeInvitation:completion:];
  }

  v8 = _os_activity_create(&dword_1B6F6A000, "inheritance-appleaccount/remove-invitation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = _AASignpostLogSystem();
  v10 = _AASignpostCreate(v9);
  v12 = v11;

  v13 = _AASignpostLogSystem();
  v14 = v13;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "RemoveInvitation enableTelemetry=YES ", "", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RemoveInvitation enableTelemetry=YES  ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__6;
  v34 = __Block_byref_object_dispose__6;
  selfCopy = self;
  v35 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__AAInheritanceController_removeInvitation_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v28 = v10;
  v29 = v12;
  v17 = completionCopy;
  v26 = v17;
  v18 = _Block_copy(aBlock);
  remoteService = selfCopy->_remoteService;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __55__AAInheritanceController_removeInvitation_completion___block_invoke_129;
  v23[3] = &unk_1E7C9B078;
  v20 = v18;
  v24 = v20;
  v21 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v23];
  [v21 removeInvitation:invitationCopy completion:v20];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v22 = *MEMORY[0x1E69E9840];
}

void __55__AAInheritanceController_removeInvitation_completion___block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _AASignpostLogSystem();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v18 = 67240192;
    LODWORD(v19) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RemoveInvitation", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
  }

  v11 = _AASignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = a1[6];
    v14 = _AAErrorUnderlyingError(v3);
    v15 = [v14 code];
    v18 = 134218496;
    v19 = v13;
    v20 = 2048;
    v21 = v12;
    v22 = 1026;
    v23 = v15;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveInvitation  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  if (a1[4])
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Removed Invitation.", &v18, 2u);
    }

    (*(a1[4] + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __55__AAInheritanceController_removeInvitation_completion___block_invoke_129(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__AAInheritanceController_removeInvitation_completion___block_invoke_129_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __67__AAInheritanceController_respondToInvitation_accepted_completion___block_invoke(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _AASignpostLogSystem();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v17 = 67240192;
    LODWORD(v18) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RespondToInvitation", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 8u);
  }

  v11 = _AASignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = a1[6];
    v14 = _AAErrorUnderlyingError(v3);
    v15 = [v14 code];
    v17 = 134218496;
    v18 = v13;
    v19 = 2048;
    v20 = v12;
    v21 = 1026;
    v22 = v15;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RespondToInvitation  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 0x1Cu);
  }

  (*(a1[4] + 16))();
  v16 = *MEMORY[0x1E69E9840];
}

void __67__AAInheritanceController_respondToInvitation_accepted_completion___block_invoke_133(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __67__AAInheritanceController_respondToInvitation_accepted_completion___block_invoke_133_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchAllHealthInfoWithCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    [AAInheritanceController fetchAllHealthInfoWithCompletion:];
  }

  v5 = _os_activity_create(&dword_1B6F6A000, "inheritance-appleaccount/fetch-inheritance-health-info", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = _AASignpostLogSystem();
  v7 = _AASignpostCreate(v6);
  v9 = v8;

  v10 = _AASignpostLogSystem();
  v11 = v10;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FetchAllHealthInfo enableTelemetry=YES ", "", &buf, 2u);
  }

  v12 = _AASignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchAllHealthInfo enableTelemetry=YES  ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__6;
  v31 = __Block_byref_object_dispose__6;
  selfCopy = self;
  v32 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__AAInheritanceController_fetchAllHealthInfoWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B540;
  p_buf = &buf;
  v25 = v7;
  v26 = v9;
  v14 = completionCopy;
  v23 = v14;
  v15 = _Block_copy(aBlock);
  remoteService = selfCopy->_remoteService;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __60__AAInheritanceController_fetchAllHealthInfoWithCompletion___block_invoke_134;
  v20[3] = &unk_1E7C9B078;
  v17 = v15;
  v21 = v17;
  v18 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v20];
  [v18 fetchAllHealthInfoWithCompletion:v17];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v19 = *MEMORY[0x1E69E9840];
}

void __60__AAInheritanceController_fetchAllHealthInfoWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v21 = 67240192;
    LODWORD(v22) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchAllHealthInfo", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v21 = 134218496;
    v22 = v16;
    v23 = 2048;
    v24 = v15;
    v25 = 1026;
    v26 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchAllHealthInfo  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 0x1Cu);
  }

  if (a1[4])
  {
    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Fetched Health Records: %@", &v21, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __60__AAInheritanceController_fetchAllHealthInfoWithCompletion___block_invoke_134(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__AAInheritanceController_fetchAllHealthInfoWithCompletion___block_invoke_134_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)presentInheritanceInvitationUIWithBeneficiaryID:(id)d completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if (!dCopy)
  {
    [AAInheritanceController presentInheritanceInvitationUIWithBeneficiaryID:completion:];
  }

  if (!completionCopy)
  {
    [AAInheritanceController presentInheritanceInvitationUIWithBeneficiaryID:completion:];
  }

  v8 = _os_activity_create(&dword_1B6F6A000, "inheritance-appleaccount/present-invitation-ui", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = _AASignpostLogSystem();
  v10 = _AASignpostCreate(v9);
  v12 = v11;

  v13 = _AASignpostLogSystem();
  v14 = v13;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PresentInheritanceInvitationUI enableTelemetry=YES ", "", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PresentInheritanceInvitationUI enableTelemetry=YES  ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__6;
  v34 = __Block_byref_object_dispose__6;
  selfCopy = self;
  v35 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__AAInheritanceController_presentInheritanceInvitationUIWithBeneficiaryID_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v28 = v10;
  v29 = v12;
  v17 = completionCopy;
  v26 = v17;
  v18 = _Block_copy(aBlock);
  remoteService = selfCopy->_remoteService;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__AAInheritanceController_presentInheritanceInvitationUIWithBeneficiaryID_completion___block_invoke_135;
  v23[3] = &unk_1E7C9B078;
  v20 = v18;
  v24 = v20;
  v21 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v23];
  [v21 presentInheritanceInvitationUIWithBeneficiaryID:dCopy completion:v20];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v22 = *MEMORY[0x1E69E9840];
}

void __86__AAInheritanceController_presentInheritanceInvitationUIWithBeneficiaryID_completion___block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _AASignpostLogSystem();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v18 = 67240192;
    LODWORD(v19) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PresentInheritanceInvitationUI", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
  }

  v11 = _AASignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = a1[6];
    v14 = _AAErrorUnderlyingError(v3);
    v15 = [v14 code];
    v18 = 134218496;
    v19 = v13;
    v20 = 2048;
    v21 = v12;
    v22 = 1026;
    v23 = v15;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PresentInheritanceInvitationUI  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  if (a1[4])
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Initiated invitation UI flow.", &v18, 2u);
    }

    (*(a1[4] + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __86__AAInheritanceController_presentInheritanceInvitationUIWithBeneficiaryID_completion___block_invoke_135(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __86__AAInheritanceController_presentInheritanceInvitationUIWithBeneficiaryID_completion___block_invoke_135_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setupBeneficiaryAliasWithAccessKey:(id)key password:(id)password firstName:(id)name lastName:(id)lastName authToken:(id)token completion:(id)completion
{
  keyCopy = key;
  passwordCopy = password;
  nameCopy = name;
  lastNameCopy = lastName;
  tokenCopy = token;
  completionCopy = completion;
  if (keyCopy)
  {
    if (passwordCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AAInheritanceController setupBeneficiaryAliasWithAccessKey:password:firstName:lastName:authToken:completion:];
    if (passwordCopy)
    {
LABEL_3:
      if (tokenCopy)
      {
        goto LABEL_4;
      }

LABEL_8:
      [AAInheritanceController setupBeneficiaryAliasWithAccessKey:password:firstName:lastName:authToken:completion:];
      if (completionCopy)
      {
        goto LABEL_5;
      }

LABEL_9:
      [AAInheritanceController setupBeneficiaryAliasWithAccessKey:password:firstName:lastName:authToken:completion:];
      goto LABEL_5;
    }
  }

  [AAInheritanceController setupBeneficiaryAliasWithAccessKey:password:firstName:lastName:authToken:completion:];
  if (!tokenCopy)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!completionCopy)
  {
    goto LABEL_9;
  }

LABEL_5:
  v20 = _os_activity_create(&dword_1B6F6A000, "inheritance-appleaccount/setup-beneficiary-alias", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v20, &state);
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__6;
  v35[4] = __Block_byref_object_dispose__6;
  selfCopy = self;
  v36 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __111__AAInheritanceController_setupBeneficiaryAliasWithAccessKey_password_firstName_lastName_authToken_completion___block_invoke;
  aBlock[3] = &unk_1E7C9BFC0;
  v34 = v35;
  v22 = completionCopy;
  v33 = v22;
  v23 = _Block_copy(aBlock);
  remoteService = selfCopy->_remoteService;
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __111__AAInheritanceController_setupBeneficiaryAliasWithAccessKey_password_firstName_lastName_authToken_completion___block_invoke_146;
  v30 = &unk_1E7C9B078;
  v25 = v23;
  v31 = v25;
  v26 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v27];
  [v26 setupBeneficiaryAliasWithAccessKey:keyCopy password:passwordCopy firstName:nameCopy lastName:lastNameCopy authToken:tokenCopy completion:{v25, v27, v28, v29, v30}];

  _Block_object_dispose(v35, 8);
  os_activity_scope_leave(&state);
}

void __111__AAInheritanceController_setupBeneficiaryAliasWithAccessKey_password_firstName_lastName_authToken_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  if (*(a1 + 32))
  {
    v12 = _AALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Setup Beneficiary Alias", v13, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __111__AAInheritanceController_setupBeneficiaryAliasWithAccessKey_password_firstName_lastName_authToken_completion___block_invoke_146(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __111__AAInheritanceController_setupBeneficiaryAliasWithAccessKey_password_firstName_lastName_authToken_completion___block_invoke_146_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)configureRemoteInterface:(id)interface
{
  v28[4] = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v28[2] = objc_opt_class();
  v28[3] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  v4 = [MEMORY[0x1E695DFD8] setWithArray:v20];
  [interfaceCopy setClasses:v4 forSelector:sel_setupBeneficiaryManifest_contactInfo_setupAuthToken_completion_ argumentIndex:0 ofReply:1];

  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v27[2] = objc_opt_class();
  v27[3] = objc_opt_class();
  v27[4] = objc_opt_class();
  v27[5] = objc_opt_class();
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:6];
  v5 = [MEMORY[0x1E695DFD8] setWithArray:v19];
  [interfaceCopy setClasses:v5 forSelector:sel_fetchManifestOptionsForContact_completion_ argumentIndex:0 ofReply:1];

  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v26[2] = objc_opt_class();
  v26[3] = objc_opt_class();
  v26[4] = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:5];
  v6 = [MEMORY[0x1E695DFD8] setWithArray:v18];
  [interfaceCopy setClasses:v6 forSelector:sel_fetchBeneficiariesWithCompletion_ argumentIndex:0 ofReply:1];

  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v25[2] = objc_opt_class();
  v25[3] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:v7];
  [interfaceCopy setClasses:v8 forSelector:sel_fetchBenefactorsWithCompletion_ argumentIndex:0 ofReply:1];

  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v24[2] = objc_opt_class();
  v24[3] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  v10 = [MEMORY[0x1E695DFD8] setWithArray:v9];
  [interfaceCopy setClasses:v10 forSelector:sel_fetchSuggestedBeneficiariesWithCompletion_ argumentIndex:0 ofReply:1];

  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v23[2] = objc_opt_class();
  v23[3] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  v12 = [MEMORY[0x1E695DFD8] setWithArray:v11];
  [interfaceCopy setClasses:v12 forSelector:sel_fetchInvitationsWithCompletion_ argumentIndex:0 ofReply:1];

  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v22[2] = objc_opt_class();
  v22[3] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  v14 = [MEMORY[0x1E695DFD8] setWithArray:v13];
  [interfaceCopy setClasses:v14 forSelector:sel_fetchInvitationWithBeneficiaryID_completion_ argumentIndex:0 ofReply:1];

  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v21[2] = objc_opt_class();
  v21[3] = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  v16 = [MEMORY[0x1E695DFD8] setWithArray:v15];
  [interfaceCopy setClasses:v16 forSelector:sel_fetchAllHealthInfoWithCompletion_ argumentIndex:0 ofReply:1];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)fetchManifestOptionsForContact:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"contact" object:? file:? lineNumber:? description:?];
}

- (void)fetchManifestOptionsForContact:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __69__AAInheritanceController_fetchManifestOptionsForContact_completion___block_invoke_86_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isRecipient:capableOf:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"handle" object:? file:? lineNumber:? description:?];
}

- (void)isRecipient:capableOf:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"capability" object:? file:? lineNumber:? description:?];
}

- (void)isRecipient:capableOf:completion:.cold.3()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __60__AAInheritanceController_isRecipient_capableOf_completion___block_invoke_95_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setupBeneficiaryManifest:contactInfo:setupAuthToken:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"manifest" object:? file:? lineNumber:? description:?];
}

- (void)setupBeneficiaryManifest:contactInfo:setupAuthToken:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"contactInfo" object:? file:? lineNumber:? description:?];
}

- (void)setupBeneficiaryManifest:contactInfo:setupAuthToken:completion:.cold.3()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"beneficiarySetupAuthToken" object:? file:? lineNumber:? description:?];
}

- (void)setupBeneficiaryManifest:contactInfo:setupAuthToken:completion:.cold.4()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __90__AAInheritanceController_setupBeneficiaryManifest_contactInfo_setupAuthToken_completion___block_invoke_106_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeAccessCodeForContactInfo:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"contactInfo" object:? file:? lineNumber:? description:?];
}

- (void)removeAccessCodeForContactInfo:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __69__AAInheritanceController_removeAccessCodeForContactInfo_completion___block_invoke_107_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeBeneficiary:manifest:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"beneficiary" object:? file:? lineNumber:? description:?];
}

- (void)removeBeneficiary:manifest:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __65__AAInheritanceController_removeBeneficiary_manifest_completion___block_invoke_111_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeBenefactor:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"benefactor" object:? file:? lineNumber:? description:?];
}

- (void)removeBenefactor:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __55__AAInheritanceController_removeBenefactor_completion___block_invoke_115_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateAccessCodeForContactInfo:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"contactInfo" object:? file:? lineNumber:? description:?];
}

- (void)updateAccessCodeForContactInfo:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __69__AAInheritanceController_updateAccessCodeForContactInfo_completion___block_invoke_116_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateBeneficiaryManifest:contactInfo:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"manifest" object:? file:? lineNumber:? description:?];
}

- (void)updateBeneficiaryManifest:contactInfo:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"contactInfo" object:? file:? lineNumber:? description:?];
}

- (void)updateBeneficiaryManifest:contactInfo:completion:.cold.3()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __76__AAInheritanceController_updateBeneficiaryManifest_contactInfo_completion___block_invoke_117_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchBeneficiariesWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __60__AAInheritanceController_fetchBeneficiariesWithCompletion___block_invoke_119_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchBenefactorsWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __58__AAInheritanceController_fetchBenefactorsWithCompletion___block_invoke_120_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchSuggestedBeneficiariesWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __69__AAInheritanceController_fetchSuggestedBeneficiariesWithCompletion___block_invoke_121_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sendInvitationToContact:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"contactInfo" object:? file:? lineNumber:? description:?];
}

- (void)sendInvitationToContact:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __62__AAInheritanceController_sendInvitationToContact_completion___block_invoke_122_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchInvitationsWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __58__AAInheritanceController_fetchInvitationsWithCompletion___block_invoke_123_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchInvitationWithBeneficiaryID:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __71__AAInheritanceController_fetchInvitationWithBeneficiaryID_completion___block_invoke_125_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeInvitation:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"invitation" object:? file:? lineNumber:? description:?];
}

void __55__AAInheritanceController_removeInvitation_completion___block_invoke_129_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)respondToInvitation:accepted:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"beneficiaryID" object:? file:? lineNumber:? description:?];
}

void __67__AAInheritanceController_respondToInvitation_accepted_completion___block_invoke_133_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllHealthInfoWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __60__AAInheritanceController_fetchAllHealthInfoWithCompletion___block_invoke_134_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)presentInheritanceInvitationUIWithBeneficiaryID:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"beneficiaryID" object:? file:? lineNumber:? description:?];
}

- (void)presentInheritanceInvitationUIWithBeneficiaryID:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __86__AAInheritanceController_presentInheritanceInvitationUIWithBeneficiaryID_completion___block_invoke_135_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setupBeneficiaryAliasWithAccessKey:password:firstName:lastName:authToken:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"accessKey" object:? file:? lineNumber:? description:?];
}

- (void)setupBeneficiaryAliasWithAccessKey:password:firstName:lastName:authToken:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"password" object:? file:? lineNumber:? description:?];
}

- (void)setupBeneficiaryAliasWithAccessKey:password:firstName:lastName:authToken:completion:.cold.3()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"authToken" object:? file:? lineNumber:? description:?];
}

- (void)setupBeneficiaryAliasWithAccessKey:password:firstName:lastName:authToken:completion:.cold.4()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __111__AAInheritanceController_setupBeneficiaryAliasWithAccessKey_password_firstName_lastName_authToken_completion___block_invoke_146_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end
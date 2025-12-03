@interface AFAudioSessionAssertionRemoteAcquisitionService
- (AFAudioSessionAssertionRemoteAcquisitionService)initWithInstanceContext:(id)context;
- (id)acquireAudioSessionAssertionWithContext:(id)context relinquishmentHandler:(id)handler;
@end

@implementation AFAudioSessionAssertionRemoteAcquisitionService

- (id)acquireAudioSessionAssertionWithContext:(id)context relinquishmentHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  if (v4 && (memset(&v32, 0, sizeof(v32)), dladdr(v4, &v32)))
  {
    if (v32.dli_fname && *v32.dli_fname)
    {
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = [v9 initWithUTF8String:v32.dli_fname];
    }

    else
    {
      v10 = 0;
    }

    if (v32.dli_sname && *v32.dli_sname)
    {
      v12 = objc_alloc(MEMORY[0x1E696AEC0]);
      v13 = [v12 initWithUTF8String:v32.dli_sname];
    }

    else
    {
      v13 = 0;
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __113__AFAudioSessionAssertionRemoteAcquisitionService_acquireAudioSessionAssertionWithContext_relinquishmentHandler___block_invoke;
    v29[3] = &unk_1E7347250;
    v30 = v10;
    v31 = v13;
    v14 = v13;
    v15 = v10;
    v11 = [AFCallSiteInfo newWithBuilder:v29];
  }

  else
  {
    v11 = 0;
  }

  v16 = [AFAudioSessionAssertionConnection alloc];
  instanceContext = self->_instanceContext;
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __113__AFAudioSessionAssertionRemoteAcquisitionService_acquireAudioSessionAssertionWithContext_relinquishmentHandler___block_invoke_2;
  v26 = &unk_1E7341B68;
  v27 = contextCopy;
  v28 = v11;
  v18 = v11;
  v19 = contextCopy;
  v20 = [v19 mutatedCopyWithMutator:&v23];
  v21 = [(AFAudioSessionAssertionConnection *)v16 initWithInstanceContext:instanceContext acquisitionContext:v20 relinquishmentHandler:handlerCopy, v23, v24, v25, v26];

  return v21;
}

void __113__AFAudioSessionAssertionRemoteAcquisitionService_acquireAudioSessionAssertionWithContext_relinquishmentHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setImagePath:v3];
  [v4 setSymbolName:*(a1 + 40)];
}

void __113__AFAudioSessionAssertionRemoteAcquisitionService_acquireAudioSessionAssertionWithContext_relinquishmentHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (![*(a1 + 32) timestamp])
  {
    [v3 setTimestamp:mach_absolute_time()];
  }

  v4 = [*(a1 + 32) reason];

  if (!v4)
  {
    [v3 setReason:@"Client Acquisition"];
  }

  v5 = [*(a1 + 32) effectiveDate];

  if (!v5)
  {
    v6 = [MEMORY[0x1E695DF00] date];
    [v3 setEffectiveDate:v6];
  }

  [*(a1 + 32) expirationDuration];
  if (v7 < 0.0)
  {
    [v3 setExpirationDuration:0.0];
  }

  v8 = [*(a1 + 32) userInfo];
  v9 = [MEMORY[0x1E696AE30] processInfo];
  v10 = *(a1 + 40);
  v11 = v8;
  v12 = MEMORY[0x1E695DF90];
  v13 = v10;
  v14 = objc_alloc_init(v12);
  v20[0] = @"processIdentifier";
  v15 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v9, "processIdentifier")}];
  v20[1] = @"processName";
  v21[0] = v15;
  v16 = [v9 processName];
  v21[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  [v14 addEntriesFromDictionary:v17];

  v18 = [v13 buildDictionaryRepresentation];

  if (v18)
  {
    [v14 addEntriesFromDictionary:v18];
  }

  if (v11)
  {
    [v14 addEntriesFromDictionary:v11];
  }

  [v3 setUserInfo:v14];
  v19 = *MEMORY[0x1E69E9840];
}

- (AFAudioSessionAssertionRemoteAcquisitionService)initWithInstanceContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = AFAudioSessionAssertionRemoteAcquisitionService;
  v5 = [(AFAudioSessionAssertionRemoteAcquisitionService *)&v9 init];
  if (v5)
  {
    if (contextCopy)
    {
      v6 = contextCopy;
    }

    else
    {
      v6 = +[AFInstanceContext currentContext];
    }

    instanceContext = v5->_instanceContext;
    v5->_instanceContext = v6;
  }

  return v5;
}

@end
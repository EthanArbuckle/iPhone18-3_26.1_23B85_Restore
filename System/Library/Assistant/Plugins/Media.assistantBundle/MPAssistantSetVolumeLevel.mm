@interface MPAssistantSetVolumeLevel
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantSetVolumeLevel

- (void)performWithCompletion:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_requestAceHash length])
  {
    v5 = [(MPAssistantSetVolumeLevel *)self aceId];
    v6 = sub_233505670(@"Set Volume Level", v5);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    v10 = [(MPAssistantSetVolumeLevel *)self hashedRouteUIDs];
    v11 = [v10 count];
    v12 = [(MPAssistantSetVolumeLevel *)self actionType];
    v13 = [(MPAssistantSetVolumeLevel *)self volumeValue];
    *buf = 138544386;
    v26 = v9;
    v27 = 2048;
    v28 = v11;
    v29 = 2114;
    v30 = v12;
    v31 = 2114;
    v32 = v13;
    v33 = 1024;
    v34 = [(MPAssistantSetVolumeLevel *)self acknowledgedExceedingVolumeLimit];
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Set Volume Level (invoke) <%{public}@>: %lu UIDs, %{public}@ action, %{public}@ volume, %{BOOL}u ack", buf, 0x30u);
  }

  v14 = self->_requestAceHash;
  v15 = [(MPAssistantSetVolumeLevel *)self hashedRouteUIDs];
  sub_2335057BC(@"Set Volume Level", v14, v15);

  v16 = objc_alloc_init(MEMORY[0x277D27840]);
  v17 = [(MPAssistantSetVolumeLevel *)self hashedRouteUIDs];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2334FEE54;
  v21[3] = &unk_2789DBA80;
  v22 = v16;
  v23 = self;
  v24 = v4;
  v18 = v4;
  v19 = v16;
  [v19 decodeHashedRouteUIDs:v17 completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

@end
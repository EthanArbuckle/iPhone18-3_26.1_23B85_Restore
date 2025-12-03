@interface MPAssistantSetVolumeLevel
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSetVolumeLevel

- (void)performWithCompletion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantSetVolumeLevel *)self aceId];
    v6 = sub_233505670(@"Set Volume Level", aceId);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    hashedRouteUIDs = [(MPAssistantSetVolumeLevel *)self hashedRouteUIDs];
    v11 = [hashedRouteUIDs count];
    actionType = [(MPAssistantSetVolumeLevel *)self actionType];
    volumeValue = [(MPAssistantSetVolumeLevel *)self volumeValue];
    *buf = 138544386;
    v26 = v9;
    v27 = 2048;
    v28 = v11;
    v29 = 2114;
    v30 = actionType;
    v31 = 2114;
    v32 = volumeValue;
    v33 = 1024;
    acknowledgedExceedingVolumeLimit = [(MPAssistantSetVolumeLevel *)self acknowledgedExceedingVolumeLimit];
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Set Volume Level (invoke) <%{public}@>: %lu UIDs, %{public}@ action, %{public}@ volume, %{BOOL}u ack", buf, 0x30u);
  }

  v14 = self->_requestAceHash;
  hashedRouteUIDs2 = [(MPAssistantSetVolumeLevel *)self hashedRouteUIDs];
  sub_2335057BC(@"Set Volume Level", v14, hashedRouteUIDs2);

  v16 = objc_alloc_init(MEMORY[0x277D27840]);
  hashedRouteUIDs3 = [(MPAssistantSetVolumeLevel *)self hashedRouteUIDs];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2334FEE54;
  v21[3] = &unk_2789DBA80;
  v22 = v16;
  selfCopy = self;
  v24 = completionCopy;
  v18 = completionCopy;
  v19 = v16;
  [v19 decodeHashedRouteUIDs:hashedRouteUIDs3 completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

@end
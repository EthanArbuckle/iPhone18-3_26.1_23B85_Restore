@interface MPAssistantGetVolumeLevel
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantGetVolumeLevel

- (void)performWithCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantGetVolumeLevel *)self aceId];
    v6 = sub_233505670(@"Get Volume Level", aceId);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    hashedRouteUIDs = [(MPAssistantGetVolumeLevel *)self hashedRouteUIDs];
    *buf = 138543618;
    v23 = v9;
    v24 = 2048;
    v25 = [hashedRouteUIDs count];
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Get Volume Level (invoke) <%{public}@>: %lu UIDs", buf, 0x16u);
  }

  v11 = self->_requestAceHash;
  hashedRouteUIDs2 = [(MPAssistantGetVolumeLevel *)self hashedRouteUIDs];
  sub_2335057BC(@"Get Volume Level", v11, hashedRouteUIDs2);

  v13 = objc_alloc_init(MEMORY[0x277D27840]);
  hashedRouteUIDs3 = [(MPAssistantGetVolumeLevel *)self hashedRouteUIDs];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2334ECBDC;
  v18[3] = &unk_2789DBA80;
  v19 = v13;
  selfCopy = self;
  v21 = completionCopy;
  v15 = completionCopy;
  v16 = v13;
  [v16 decodeHashedRouteUIDs:hashedRouteUIDs3 completion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

@end
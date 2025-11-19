@interface MPAssistantMoveOutputGroupToDevices
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantMoveOutputGroupToDevices

- (void)performWithCompletion:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_requestAceHash length])
  {
    v5 = [(MPAssistantMoveOutputGroupToDevices *)self aceId];
    v6 = sub_233505670(@"Move Output Group To Devices", v5);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    *buf = 138543362;
    v30 = v9;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Move Output Group To Devices (invoke) <%{public}@>: invoked", buf, 0xCu);
  }

  v10 = self->_requestAceHash;
  v11 = [(MPAssistantMoveOutputGroupToDevices *)self hashedRouteUIDs];
  sub_2335057BC(@"Move Output Group To Devices", v10, v11);

  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [(MPAssistantMoveOutputGroupToDevices *)self groupID];
  v14 = [v13 isEqualToString:@"LOCAL_DEVICE"];

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v16 = [(MPAssistantMoveOutputGroupToDevices *)self groupID];
    [v12 addObject:v16];

    v17 = [(MPAssistantMoveOutputGroupToDevices *)self hashedRouteUIDs];
    v18 = [(MPAssistantMoveOutputGroupToDevices *)self groupID];
    v15 = [v17 containsObject:v18];
  }

  v19 = [(MPAssistantMoveOutputGroupToDevices *)self hashedRouteUIDs];
  [v12 addObjectsFromArray:v19];

  v20 = objc_alloc_init(MEMORY[0x277D27840]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2334F13C0;
  v24[3] = &unk_2789DB558;
  v25 = v20;
  v26 = self;
  v28 = v15;
  v27 = v4;
  v21 = v4;
  v22 = v20;
  [v22 decodeHashedRouteUIDs:v12 completion:v24];

  v23 = *MEMORY[0x277D85DE8];
}

@end
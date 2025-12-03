@interface MPAssistantAddOutputDevicesToGroup
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantAddOutputDevicesToGroup

- (void)performWithCompletion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantAddOutputDevicesToGroup *)self aceId];
    v6 = sub_233505670(@"Add Output Devices To Group", aceId);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    *buf = 138543362;
    v30 = v9;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Add Output Devices To Group (invoke) <%{public}@>: invoked", buf, 0xCu);
  }

  v10 = self->_requestAceHash;
  hashedRouteUIDs = [(MPAssistantAddOutputDevicesToGroup *)self hashedRouteUIDs];
  sub_2335057BC(@"Add Output Devices To Group", v10, hashedRouteUIDs);

  array = [MEMORY[0x277CBEB18] array];
  groupID = [(MPAssistantAddOutputDevicesToGroup *)self groupID];
  v14 = [groupID isEqualToString:@"LOCAL_DEVICE"];

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    groupID2 = [(MPAssistantAddOutputDevicesToGroup *)self groupID];
    [array addObject:groupID2];

    hashedRouteUIDs2 = [(MPAssistantAddOutputDevicesToGroup *)self hashedRouteUIDs];
    groupID3 = [(MPAssistantAddOutputDevicesToGroup *)self groupID];
    v15 = [hashedRouteUIDs2 containsObject:groupID3];
  }

  hashedRouteUIDs3 = [(MPAssistantAddOutputDevicesToGroup *)self hashedRouteUIDs];
  [array addObjectsFromArray:hashedRouteUIDs3];

  v20 = objc_alloc_init(MEMORY[0x277D27840]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2334E5188;
  v24[3] = &unk_2789DB558;
  v25 = v20;
  selfCopy = self;
  v28 = v15;
  v27 = completionCopy;
  v21 = completionCopy;
  v22 = v20;
  [v22 decodeHashedRouteUIDs:array completion:v24];

  v23 = *MEMORY[0x277D85DE8];
}

@end
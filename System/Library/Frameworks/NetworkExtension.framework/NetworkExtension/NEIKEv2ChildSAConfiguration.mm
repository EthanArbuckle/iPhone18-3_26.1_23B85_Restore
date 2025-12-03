@interface NEIKEv2ChildSAConfiguration
- (NEIKEv2ChildSAConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setProposals:(id)proposals;
@end

@implementation NEIKEv2ChildSAConfiguration

- (void)setProposals:(id)proposals
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [proposals copy];
  proposals = self->_proposals;
  self->_proposals = v4;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_proposals;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        ++v9;
        if (v12)
        {
          *(v12 + 8) = v9;
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setMode:{-[NEIKEv2ChildSAConfiguration mode](self, "mode")}];
  [v4 setReplayWindowSize:{-[NEIKEv2ChildSAConfiguration replayWindowSize](self, "replayWindowSize")}];
  [v4 setSequencePerTrafficClass:{-[NEIKEv2ChildSAConfiguration sequencePerTrafficClass](self, "sequencePerTrafficClass")}];
  [v4 setPreferInitiatorProposalOrder:{-[NEIKEv2ChildSAConfiguration preferInitiatorProposalOrder](self, "preferInitiatorProposalOrder")}];
  proposals = [(NEIKEv2ChildSAConfiguration *)self proposals];

  if (proposals)
  {
    v6 = objc_alloc(MEMORY[0x1E695DEC8]);
    proposals2 = [(NEIKEv2ChildSAConfiguration *)self proposals];
    v8 = [v6 initWithArray:proposals2 copyItems:1];
    [v4 setProposals:v8];
  }

  localTrafficSelectors = [(NEIKEv2ChildSAConfiguration *)self localTrafficSelectors];

  if (localTrafficSelectors)
  {
    v10 = objc_alloc(MEMORY[0x1E695DEC8]);
    localTrafficSelectors2 = [(NEIKEv2ChildSAConfiguration *)self localTrafficSelectors];
    v12 = [v10 initWithArray:localTrafficSelectors2 copyItems:1];
    [v4 setLocalTrafficSelectors:v12];
  }

  remoteTrafficSelectors = [(NEIKEv2ChildSAConfiguration *)self remoteTrafficSelectors];

  if (remoteTrafficSelectors)
  {
    v14 = objc_alloc(MEMORY[0x1E695DEC8]);
    remoteTrafficSelectors2 = [(NEIKEv2ChildSAConfiguration *)self remoteTrafficSelectors];
    v16 = [v14 initWithArray:remoteTrafficSelectors2 copyItems:1];
    [v4 setRemoteTrafficSelectors:v16];
  }

  return v4;
}

- (NEIKEv2ChildSAConfiguration)init
{
  v8.receiver = self;
  v8.super_class = NEIKEv2ChildSAConfiguration;
  v2 = [(NEIKEv2ChildSAConfiguration *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(NEIKEv2ChildSAConfiguration *)v2 setReplayWindowSize:4];
    v4 = v3;
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "[super init] failed", v7, 2u);
    }
  }

  return v3;
}

@end
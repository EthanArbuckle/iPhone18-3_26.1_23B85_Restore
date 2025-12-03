@interface NWGenericNetworkAgent
- (BOOL)isActive;
- (BOOL)isKernelActivated;
- (BOOL)isNetworkProvider;
- (BOOL)isNexusProvider;
- (BOOL)isSpecificUseOnly;
- (BOOL)isUserActivated;
- (BOOL)isVoluntary;
- (BOOL)requiresAssert;
- (BOOL)supportsBrowse;
- (BOOL)supportsGroups;
- (BOOL)supportsResolve;
- (NSString)agentDescription;
- (NSString)agentDomain;
- (NSString)agentType;
- (NSString)privateDescription;
- (NSUUID)agentUUID;
- (NWGenericNetworkAgent)initWithKernelAgent:(const netagent *)agent;
- (id)description;
- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content;
- (unsigned)agentDataSize;
- (void)dealloc;
@end

@implementation NWGenericNetworkAgent

- (NSString)agentDomain
{
  internalNetagent = [(NWGenericNetworkAgent *)self internalNetagent];
  if (internalNetagent)
  {
    internalNetagent = [MEMORY[0x1E696AEC0] stringWithUTF8String:{-[NWGenericNetworkAgent internalNetagent](self, "internalNetagent") + 16}];
  }

  return internalNetagent;
}

- (BOOL)isNetworkProvider
{
  internalNetagent = [(NWGenericNetworkAgent *)self internalNetagent];
  if (internalNetagent)
  {
    LODWORD(internalNetagent) = ([(NWGenericNetworkAgent *)self internalNetagent][208] >> 6) & 1;
  }

  return internalNetagent;
}

- (BOOL)isActive
{
  internalNetagent = [(NWGenericNetworkAgent *)self internalNetagent];
  if (internalNetagent)
  {
    LODWORD(internalNetagent) = ([(NWGenericNetworkAgent *)self internalNetagent][208] >> 1) & 1;
  }

  return internalNetagent;
}

- (BOOL)supportsResolve
{
  internalNetagent = [(NWGenericNetworkAgent *)self internalNetagent];
  if (internalNetagent)
  {
    LOBYTE(internalNetagent) = [(NWGenericNetworkAgent *)self internalNetagent][210] & 1;
  }

  return internalNetagent;
}

- (BOOL)supportsBrowse
{
  internalNetagent = [(NWGenericNetworkAgent *)self internalNetagent];
  if (internalNetagent)
  {
    LOBYTE(internalNetagent) = [(NWGenericNetworkAgent *)self internalNetagent][209] & 1;
  }

  return internalNetagent;
}

- (NSString)agentType
{
  internalNetagent = [(NWGenericNetworkAgent *)self internalNetagent];
  if (internalNetagent)
  {
    internalNetagent = [MEMORY[0x1E696AEC0] stringWithUTF8String:{-[NWGenericNetworkAgent internalNetagent](self, "internalNetagent") + 48}];
  }

  return internalNetagent;
}

- (NSUUID)agentUUID
{
  internalNetagent = [(NWGenericNetworkAgent *)self internalNetagent];
  if (internalNetagent)
  {
    internalNetagent = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{-[NWGenericNetworkAgent internalNetagent](self, "internalNetagent")}];
  }

  return internalNetagent;
}

- (NSString)agentDescription
{
  internalNetagent = [(NWGenericNetworkAgent *)self internalNetagent];
  if (internalNetagent)
  {
    internalNetagent = [MEMORY[0x1E696AEC0] stringWithUTF8String:{-[NWGenericNetworkAgent internalNetagent](self, "internalNetagent") + 80}];
  }

  return internalNetagent;
}

- (BOOL)isKernelActivated
{
  internalNetagent = [(NWGenericNetworkAgent *)self internalNetagent];
  if (internalNetagent)
  {
    LODWORD(internalNetagent) = ([(NWGenericNetworkAgent *)self internalNetagent][208] >> 2) & 1;
  }

  return internalNetagent;
}

- (BOOL)isUserActivated
{
  internalNetagent = [(NWGenericNetworkAgent *)self internalNetagent];
  if (internalNetagent)
  {
    LODWORD(internalNetagent) = ([(NWGenericNetworkAgent *)self internalNetagent][208] >> 3) & 1;
  }

  return internalNetagent;
}

- (BOOL)isVoluntary
{
  internalNetagent = [(NWGenericNetworkAgent *)self internalNetagent];
  if (internalNetagent)
  {
    LODWORD(internalNetagent) = ([(NWGenericNetworkAgent *)self internalNetagent][208] >> 4) & 1;
  }

  return internalNetagent;
}

- (BOOL)isSpecificUseOnly
{
  internalNetagent = [(NWGenericNetworkAgent *)self internalNetagent];
  if (internalNetagent)
  {
    LODWORD(internalNetagent) = ([(NWGenericNetworkAgent *)self internalNetagent][208] >> 5) & 1;
  }

  return internalNetagent;
}

- (BOOL)isNexusProvider
{
  internalNetagent = [(NWGenericNetworkAgent *)self internalNetagent];
  if (internalNetagent)
  {
    LODWORD(internalNetagent) = [(NWGenericNetworkAgent *)self internalNetagent][208] >> 7;
  }

  return internalNetagent;
}

- (BOOL)supportsGroups
{
  internalNetagent = [(NWGenericNetworkAgent *)self internalNetagent];
  if (internalNetagent)
  {
    LODWORD(internalNetagent) = ([(NWGenericNetworkAgent *)self internalNetagent][210] >> 1) & 1;
  }

  return internalNetagent;
}

- (BOOL)requiresAssert
{
  internalNetagent = [(NWGenericNetworkAgent *)self internalNetagent];
  if (internalNetagent)
  {
    LODWORD(internalNetagent) = ([(NWGenericNetworkAgent *)self internalNetagent][209] >> 1) & 1;
  }

  return internalNetagent;
}

- (void)dealloc
{
  if ([(NWGenericNetworkAgent *)self internalNetagent])
  {
    free([(NWGenericNetworkAgent *)self internalNetagent]);
    [(NWGenericNetworkAgent *)self setInternalNetagent:0];
  }

  v3.receiver = self;
  v3.super_class = NWGenericNetworkAgent;
  [(NWGenericNetworkAgent *)&v3 dealloc];
}

- (unsigned)agentDataSize
{
  internalNetagent = [(NWGenericNetworkAgent *)self internalNetagent];
  if (internalNetagent)
  {
    LODWORD(internalNetagent) = [(NWGenericNetworkAgent *)self internalNetagent][212];
  }

  return internalNetagent;
}

- (NSString)privateDescription
{
  v2 = [(NWGenericNetworkAgent *)self descriptionWithIndent:0 showFullContent:1];

  return v2;
}

- (id)description
{
  v2 = [(NWGenericNetworkAgent *)self descriptionWithIndent:0 showFullContent:0];

  return v2;
}

- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content
{
  contentCopy = content;
  v5 = *&indent;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  agentDomain = [(NWGenericNetworkAgent *)self agentDomain];
  [v7 appendPrettyObject:agentDomain withName:@"domain" indent:v5 showFullContent:1];

  agentType = [(NWGenericNetworkAgent *)self agentType];
  [v7 appendPrettyObject:agentType withName:@"type" indent:v5 showFullContent:1];

  if (!contentCopy)
  {
    agentDescription = [(NWGenericNetworkAgent *)self agentDescription];
    [v7 appendPrettyObject:agentDescription withName:@"description" indent:v5 showFullContent:1];

    isActive = [(NWGenericNetworkAgent *)self isActive];
    v13 = @"isActive";
    goto LABEL_19;
  }

  agentUUID = [(NWGenericNetworkAgent *)self agentUUID];
  [v7 appendPrettyObject:agentUUID withName:@"UUID" indent:v5 showFullContent:1];

  agentDescription2 = [(NWGenericNetworkAgent *)self agentDescription];
  [v7 appendPrettyObject:agentDescription2 withName:@"description" indent:v5 showFullContent:1];

  [v7 appendPrettyBOOL:-[NWGenericNetworkAgent isActive](self withName:"isActive") indent:{@"isActive", v5}];
  if ([(NWGenericNetworkAgent *)self isKernelActivated])
  {
    [v7 appendPrettyBOOL:-[NWGenericNetworkAgent isKernelActivated](self withName:"isKernelActivated") indent:{@"isKernelActivated", v5}];
  }

  [v7 appendPrettyBOOL:-[NWGenericNetworkAgent isUserActivated](self withName:"isUserActivated") indent:{@"isUserActivated", v5}];
  [v7 appendPrettyBOOL:-[NWGenericNetworkAgent isVoluntary](self withName:"isVoluntary") indent:{@"isVoluntary", v5}];
  if ([(NWGenericNetworkAgent *)self isSpecificUseOnly])
  {
    [v7 appendPrettyBOOL:-[NWGenericNetworkAgent isSpecificUseOnly](self withName:"isSpecificUseOnly") indent:{@"isSpecificUseOnly", v5}];
  }

  if ([(NWGenericNetworkAgent *)self isNetworkProvider])
  {
    [v7 appendPrettyBOOL:-[NWGenericNetworkAgent isNetworkProvider](self withName:"isNetworkProvider") indent:{@"isNetworkProvider", v5}];
  }

  if ([(NWGenericNetworkAgent *)self isNexusProvider])
  {
    [v7 appendPrettyBOOL:-[NWGenericNetworkAgent isNexusProvider](self withName:"isNexusProvider") indent:{@"isNexusProvider", v5}];
  }

  if ([(NWGenericNetworkAgent *)self supportsBrowse])
  {
    [v7 appendPrettyBOOL:-[NWGenericNetworkAgent supportsBrowse](self withName:"supportsBrowse") indent:{@"supportsBrowse", v5}];
  }

  if ([(NWGenericNetworkAgent *)self supportsResolve])
  {
    [v7 appendPrettyBOOL:-[NWGenericNetworkAgent supportsResolve](self withName:"supportsResolve") indent:{@"supportsResolve", v5}];
  }

  if ([(NWGenericNetworkAgent *)self supportsGroups])
  {
    [v7 appendPrettyBOOL:-[NWGenericNetworkAgent supportsGroups](self withName:"supportsGroups") indent:{@"supportsGroups", v5}];
  }

  if ([(NWGenericNetworkAgent *)self requiresAssert])
  {
    isActive = [(NWGenericNetworkAgent *)self requiresAssert];
    v13 = @"requiresAssert";
LABEL_19:
    [v7 appendPrettyBOOL:isActive withName:v13 indent:v5];
  }

  return v7;
}

- (NWGenericNetworkAgent)initWithKernelAgent:(const netagent *)agent
{
  v9.receiver = self;
  v9.super_class = NWGenericNetworkAgent;
  v4 = [(NWGenericNetworkAgent *)&v9 init];
  v5 = v4;
  if (agent)
  {
    if (v4)
    {
      var5 = agent->var5;
      v7 = malloc_type_malloc(var5 + 216, 0xF4C667E2uLL);
      v5->_internalNetagent = v7;
      if (v7)
      {
        memcpy(v7, agent, var5 + 216);
      }
    }
  }

  return v5;
}

@end
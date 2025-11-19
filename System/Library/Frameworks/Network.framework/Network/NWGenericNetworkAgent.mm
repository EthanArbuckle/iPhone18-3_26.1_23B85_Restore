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
- (NWGenericNetworkAgent)initWithKernelAgent:(const netagent *)a3;
- (id)description;
- (id)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4;
- (unsigned)agentDataSize;
- (void)dealloc;
@end

@implementation NWGenericNetworkAgent

- (NSString)agentDomain
{
  v3 = [(NWGenericNetworkAgent *)self internalNetagent];
  if (v3)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{-[NWGenericNetworkAgent internalNetagent](self, "internalNetagent") + 16}];
  }

  return v3;
}

- (BOOL)isNetworkProvider
{
  v3 = [(NWGenericNetworkAgent *)self internalNetagent];
  if (v3)
  {
    LODWORD(v3) = ([(NWGenericNetworkAgent *)self internalNetagent][208] >> 6) & 1;
  }

  return v3;
}

- (BOOL)isActive
{
  v3 = [(NWGenericNetworkAgent *)self internalNetagent];
  if (v3)
  {
    LODWORD(v3) = ([(NWGenericNetworkAgent *)self internalNetagent][208] >> 1) & 1;
  }

  return v3;
}

- (BOOL)supportsResolve
{
  v3 = [(NWGenericNetworkAgent *)self internalNetagent];
  if (v3)
  {
    LOBYTE(v3) = [(NWGenericNetworkAgent *)self internalNetagent][210] & 1;
  }

  return v3;
}

- (BOOL)supportsBrowse
{
  v3 = [(NWGenericNetworkAgent *)self internalNetagent];
  if (v3)
  {
    LOBYTE(v3) = [(NWGenericNetworkAgent *)self internalNetagent][209] & 1;
  }

  return v3;
}

- (NSString)agentType
{
  v3 = [(NWGenericNetworkAgent *)self internalNetagent];
  if (v3)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{-[NWGenericNetworkAgent internalNetagent](self, "internalNetagent") + 48}];
  }

  return v3;
}

- (NSUUID)agentUUID
{
  v3 = [(NWGenericNetworkAgent *)self internalNetagent];
  if (v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{-[NWGenericNetworkAgent internalNetagent](self, "internalNetagent")}];
  }

  return v3;
}

- (NSString)agentDescription
{
  v3 = [(NWGenericNetworkAgent *)self internalNetagent];
  if (v3)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{-[NWGenericNetworkAgent internalNetagent](self, "internalNetagent") + 80}];
  }

  return v3;
}

- (BOOL)isKernelActivated
{
  v3 = [(NWGenericNetworkAgent *)self internalNetagent];
  if (v3)
  {
    LODWORD(v3) = ([(NWGenericNetworkAgent *)self internalNetagent][208] >> 2) & 1;
  }

  return v3;
}

- (BOOL)isUserActivated
{
  v3 = [(NWGenericNetworkAgent *)self internalNetagent];
  if (v3)
  {
    LODWORD(v3) = ([(NWGenericNetworkAgent *)self internalNetagent][208] >> 3) & 1;
  }

  return v3;
}

- (BOOL)isVoluntary
{
  v3 = [(NWGenericNetworkAgent *)self internalNetagent];
  if (v3)
  {
    LODWORD(v3) = ([(NWGenericNetworkAgent *)self internalNetagent][208] >> 4) & 1;
  }

  return v3;
}

- (BOOL)isSpecificUseOnly
{
  v3 = [(NWGenericNetworkAgent *)self internalNetagent];
  if (v3)
  {
    LODWORD(v3) = ([(NWGenericNetworkAgent *)self internalNetagent][208] >> 5) & 1;
  }

  return v3;
}

- (BOOL)isNexusProvider
{
  v3 = [(NWGenericNetworkAgent *)self internalNetagent];
  if (v3)
  {
    LODWORD(v3) = [(NWGenericNetworkAgent *)self internalNetagent][208] >> 7;
  }

  return v3;
}

- (BOOL)supportsGroups
{
  v3 = [(NWGenericNetworkAgent *)self internalNetagent];
  if (v3)
  {
    LODWORD(v3) = ([(NWGenericNetworkAgent *)self internalNetagent][210] >> 1) & 1;
  }

  return v3;
}

- (BOOL)requiresAssert
{
  v3 = [(NWGenericNetworkAgent *)self internalNetagent];
  if (v3)
  {
    LODWORD(v3) = ([(NWGenericNetworkAgent *)self internalNetagent][209] >> 1) & 1;
  }

  return v3;
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
  v3 = [(NWGenericNetworkAgent *)self internalNetagent];
  if (v3)
  {
    LODWORD(v3) = [(NWGenericNetworkAgent *)self internalNetagent][212];
  }

  return v3;
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

- (id)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v8 = [(NWGenericNetworkAgent *)self agentDomain];
  [v7 appendPrettyObject:v8 withName:@"domain" indent:v5 showFullContent:1];

  v9 = [(NWGenericNetworkAgent *)self agentType];
  [v7 appendPrettyObject:v9 withName:@"type" indent:v5 showFullContent:1];

  if (!v4)
  {
    v14 = [(NWGenericNetworkAgent *)self agentDescription];
    [v7 appendPrettyObject:v14 withName:@"description" indent:v5 showFullContent:1];

    v12 = [(NWGenericNetworkAgent *)self isActive];
    v13 = @"isActive";
    goto LABEL_19;
  }

  v10 = [(NWGenericNetworkAgent *)self agentUUID];
  [v7 appendPrettyObject:v10 withName:@"UUID" indent:v5 showFullContent:1];

  v11 = [(NWGenericNetworkAgent *)self agentDescription];
  [v7 appendPrettyObject:v11 withName:@"description" indent:v5 showFullContent:1];

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
    v12 = [(NWGenericNetworkAgent *)self requiresAssert];
    v13 = @"requiresAssert";
LABEL_19:
    [v7 appendPrettyBOOL:v12 withName:v13 indent:v5];
  }

  return v7;
}

- (NWGenericNetworkAgent)initWithKernelAgent:(const netagent *)a3
{
  v9.receiver = self;
  v9.super_class = NWGenericNetworkAgent;
  v4 = [(NWGenericNetworkAgent *)&v9 init];
  v5 = v4;
  if (a3)
  {
    if (v4)
    {
      var5 = a3->var5;
      v7 = malloc_type_malloc(var5 + 216, 0xF4C667E2uLL);
      v5->_internalNetagent = v7;
      if (v7)
      {
        memcpy(v7, a3, var5 + 216);
      }
    }
  }

  return v5;
}

@end
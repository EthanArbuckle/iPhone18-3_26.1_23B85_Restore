@interface FPExtensionEnumerationSettings
- (FPExtensionEnumerationSettings)initWithCoder:(id)coder;
- (FPItemID)enumeratedItemID;
- (FPItemID)nullableEnumeratedItemID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setEnumeratedItemID:(id)d;
- (void)setNullableEnumeratedItemID:(id)d;
@end

@implementation FPExtensionEnumerationSettings

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_enumeratedItemID;
  objc_sync_exit(selfCopy);

  enumeratedURL = selfCopy->_enumeratedURL;
  if (selfCopy->_buildAndFilterAppLibraries)
  {
    v5 = @"y";
  }

  else
  {
    v5 = @"n";
  }

  if (enumeratedURL)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"url:%@ s:%@, al:%@", enumeratedURL, v3, v5];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"s:%@, al:%@", v3, v5, v8];
  }
  v6 = ;

  return v6;
}

- (FPItemID)enumeratedItemID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_enumeratedItemID;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = FPExtensionEnumerationSettings;
  v4 = [(FPEnumerationSettings *)&v11 copyWithZone:zone];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(FPItemID *)selfCopy->_enumeratedItemID copy];
  v7 = v4[3];
  v4[3] = v6;

  objc_sync_exit(selfCopy);
  v8 = [(NSURL *)selfCopy->_enumeratedURL copy];
  v9 = v4[5];
  v4[5] = v8;

  *(v4 + 33) = selfCopy->_wantsDirectExtensionEnumeration;
  *(v4 + 34) = selfCopy->_requireSandboxAccess;
  *(v4 + 36) = selfCopy->_buildAndFilterAppLibraries;
  *(v4 + 35) = selfCopy->_unbounded;
  *(v4 + 32) = selfCopy->_presenterEnumeration;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = FPExtensionEnumerationSettings;
  [(FPEnumerationSettings *)&v6 encodeWithCoder:coderCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [coderCopy encodeObject:selfCopy->_enumeratedItemID forKey:@"enumeratedItemID"];
  objc_sync_exit(selfCopy);

  [coderCopy encodeObject:selfCopy->_enumeratedURL forKey:@"enumeratedURL"];
  [coderCopy encodeBool:selfCopy->_presenterEnumeration forKey:@"presenterEnumeration"];
  [coderCopy encodeBool:selfCopy->_requireSandboxAccess forKey:@"requireSandboxAccess"];
  [coderCopy encodeBool:selfCopy->_unbounded forKey:@"unbounded"];
  [coderCopy encodeBool:selfCopy->_buildAndFilterAppLibraries forKey:@"buildAndFilterAppLibraries"];
  [coderCopy encodeBool:selfCopy->_wantsDirectExtensionEnumeration forKey:@"wantsDirectExtensionEnumeration"];
}

- (FPExtensionEnumerationSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FPExtensionEnumerationSettings;
  v5 = [(FPEnumerationSettings *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enumeratedItemID"];
    enumeratedItemID = v5->_enumeratedItemID;
    v5->_enumeratedItemID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enumeratedURL"];
    enumeratedURL = v5->_enumeratedURL;
    v5->_enumeratedURL = v8;

    v5->_presenterEnumeration = [coderCopy decodeBoolForKey:@"presenterEnumeration"];
    v5->_requireSandboxAccess = [coderCopy decodeBoolForKey:@"requireSandboxAccess"];
    v5->_unbounded = [coderCopy decodeBoolForKey:@"unbounded"];
    v5->_buildAndFilterAppLibraries = [coderCopy decodeBoolForKey:@"buildAndFilterAppLibraries"];
    v5->_wantsDirectExtensionEnumeration = [coderCopy decodeBoolForKey:@"wantsDirectExtensionEnumeration"];
  }

  return v5;
}

- (FPItemID)nullableEnumeratedItemID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_enumeratedItemID;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setNullableEnumeratedItemID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [dCopy copy];
  enumeratedItemID = selfCopy->_enumeratedItemID;
  selfCopy->_enumeratedItemID = v5;

  objc_sync_exit(selfCopy);
}

- (void)setEnumeratedItemID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [dCopy copy];
  enumeratedItemID = selfCopy->_enumeratedItemID;
  selfCopy->_enumeratedItemID = v5;

  objc_sync_exit(selfCopy);
}

@end
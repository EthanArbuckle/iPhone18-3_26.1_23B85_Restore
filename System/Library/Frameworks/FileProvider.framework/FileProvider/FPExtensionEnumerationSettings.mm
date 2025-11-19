@interface FPExtensionEnumerationSettings
- (FPExtensionEnumerationSettings)initWithCoder:(id)a3;
- (FPItemID)enumeratedItemID;
- (FPItemID)nullableEnumeratedItemID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setEnumeratedItemID:(id)a3;
- (void)setNullableEnumeratedItemID:(id)a3;
@end

@implementation FPExtensionEnumerationSettings

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_enumeratedItemID;
  objc_sync_exit(v2);

  enumeratedURL = v2->_enumeratedURL;
  if (v2->_buildAndFilterAppLibraries)
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_enumeratedItemID;
  objc_sync_exit(v2);

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = FPExtensionEnumerationSettings;
  v4 = [(FPEnumerationSettings *)&v11 copyWithZone:a3];
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(FPItemID *)v5->_enumeratedItemID copy];
  v7 = v4[3];
  v4[3] = v6;

  objc_sync_exit(v5);
  v8 = [(NSURL *)v5->_enumeratedURL copy];
  v9 = v4[5];
  v4[5] = v8;

  *(v4 + 33) = v5->_wantsDirectExtensionEnumeration;
  *(v4 + 34) = v5->_requireSandboxAccess;
  *(v4 + 36) = v5->_buildAndFilterAppLibraries;
  *(v4 + 35) = v5->_unbounded;
  *(v4 + 32) = v5->_presenterEnumeration;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = FPExtensionEnumerationSettings;
  [(FPEnumerationSettings *)&v6 encodeWithCoder:v4];
  v5 = self;
  objc_sync_enter(v5);
  [v4 encodeObject:v5->_enumeratedItemID forKey:@"enumeratedItemID"];
  objc_sync_exit(v5);

  [v4 encodeObject:v5->_enumeratedURL forKey:@"enumeratedURL"];
  [v4 encodeBool:v5->_presenterEnumeration forKey:@"presenterEnumeration"];
  [v4 encodeBool:v5->_requireSandboxAccess forKey:@"requireSandboxAccess"];
  [v4 encodeBool:v5->_unbounded forKey:@"unbounded"];
  [v4 encodeBool:v5->_buildAndFilterAppLibraries forKey:@"buildAndFilterAppLibraries"];
  [v4 encodeBool:v5->_wantsDirectExtensionEnumeration forKey:@"wantsDirectExtensionEnumeration"];
}

- (FPExtensionEnumerationSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FPExtensionEnumerationSettings;
  v5 = [(FPEnumerationSettings *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enumeratedItemID"];
    enumeratedItemID = v5->_enumeratedItemID;
    v5->_enumeratedItemID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enumeratedURL"];
    enumeratedURL = v5->_enumeratedURL;
    v5->_enumeratedURL = v8;

    v5->_presenterEnumeration = [v4 decodeBoolForKey:@"presenterEnumeration"];
    v5->_requireSandboxAccess = [v4 decodeBoolForKey:@"requireSandboxAccess"];
    v5->_unbounded = [v4 decodeBoolForKey:@"unbounded"];
    v5->_buildAndFilterAppLibraries = [v4 decodeBoolForKey:@"buildAndFilterAppLibraries"];
    v5->_wantsDirectExtensionEnumeration = [v4 decodeBoolForKey:@"wantsDirectExtensionEnumeration"];
  }

  return v5;
}

- (FPItemID)nullableEnumeratedItemID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_enumeratedItemID;
  objc_sync_exit(v2);

  return v3;
}

- (void)setNullableEnumeratedItemID:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  enumeratedItemID = v4->_enumeratedItemID;
  v4->_enumeratedItemID = v5;

  objc_sync_exit(v4);
}

- (void)setEnumeratedItemID:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  enumeratedItemID = v4->_enumeratedItemID;
  v4->_enumeratedItemID = v5;

  objc_sync_exit(v4);
}

@end
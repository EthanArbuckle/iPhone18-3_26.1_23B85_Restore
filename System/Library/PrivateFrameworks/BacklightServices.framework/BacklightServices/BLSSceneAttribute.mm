@interface BLSSceneAttribute
- (BLSSceneAttribute)initWithCoder:(id)a3;
- (BLSSceneAttribute)initWithFBSScene:(id)a3;
- (BLSSceneAttribute)initWithSceneIdentityToken:(id)a3;
- (BLSSceneAttribute)initWithXPCDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation BLSSceneAttribute

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendPointer:objc_opt_class()];
  v5 = [v3 appendObject:self->_sceneIdentityToken];
  v6 = [v3 hash];

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(FBSSceneIdentityToken *)self->_sceneIdentityToken stringRepresentation];
  [v3 appendString:v4 withName:@"identityToken"];

  v5 = [v3 build];

  return v5;
}

- (BLSSceneAttribute)initWithFBSScene:(id)a3
{
  v4 = [a3 identityToken];
  v5 = [(BLSSceneAttribute *)self initWithSceneIdentityToken:v4];

  return v5;
}

- (BLSSceneAttribute)initWithSceneIdentityToken:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BLSSceneAttribute;
  v6 = [(BLSAttribute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sceneIdentityToken, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = objc_opt_class(), v5 == objc_opt_class()))
    {
      sceneIdentityToken = self->_sceneIdentityToken;
      v8 = [(BLSSceneAttribute *)v4 sceneIdentityToken];
      v6 = [(FBSSceneIdentityToken *)sceneIdentityToken isEqual:v8];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BLSSceneAttribute)initWithXPCDictionary:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [@"identityToken" UTF8String];
  v6 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionaryWithKey();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(BLSSceneAttribute *)self initWithSceneIdentityToken:v6];
    v7 = self;
  }

  else
  {
    v8 = bls_assertions_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = 138412802;
      v15 = v6;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_fault_impl(&dword_21FE25000, v8, OS_LOG_TYPE_FAULT, "%@ not a FBSSceneIdentityToken for [%@ %@]", &v14, 0x20u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v5 = a3;
  [@"identityToken" UTF8String];
  sceneIdentityToken = self->_sceneIdentityToken;
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

- (BLSSceneAttribute)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"identityToken"];
  if (v6)
  {
    self = [(BLSSceneAttribute *)self initWithSceneIdentityToken:v6];
    v7 = self;
  }

  else
  {
    v8 = bls_assertions_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = 138543874;
      v15 = v5;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_fault_impl(&dword_21FE25000, v8, OS_LOG_TYPE_FAULT, "invalid FBSSceneIdentityToken from %{public}@ for [%@ %@]", &v14, 0x20u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

@end
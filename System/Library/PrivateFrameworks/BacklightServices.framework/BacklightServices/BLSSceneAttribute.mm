@interface BLSSceneAttribute
- (BLSSceneAttribute)initWithCoder:(id)coder;
- (BLSSceneAttribute)initWithFBSScene:(id)scene;
- (BLSSceneAttribute)initWithSceneIdentityToken:(id)token;
- (BLSSceneAttribute)initWithXPCDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BLSSceneAttribute

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendPointer:objc_opt_class()];
  v5 = [builder appendObject:self->_sceneIdentityToken];
  v6 = [builder hash];

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  stringRepresentation = [(FBSSceneIdentityToken *)self->_sceneIdentityToken stringRepresentation];
  [v3 appendString:stringRepresentation withName:@"identityToken"];

  build = [v3 build];

  return build;
}

- (BLSSceneAttribute)initWithFBSScene:(id)scene
{
  identityToken = [scene identityToken];
  v5 = [(BLSSceneAttribute *)self initWithSceneIdentityToken:identityToken];

  return v5;
}

- (BLSSceneAttribute)initWithSceneIdentityToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = BLSSceneAttribute;
  v6 = [(BLSAttribute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sceneIdentityToken, token);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = objc_opt_class(), v5 == objc_opt_class()))
    {
      sceneIdentityToken = self->_sceneIdentityToken;
      sceneIdentityToken = [(BLSSceneAttribute *)equalCopy sceneIdentityToken];
      v6 = [(FBSSceneIdentityToken *)sceneIdentityToken isEqual:sceneIdentityToken];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BLSSceneAttribute)initWithXPCDictionary:(id)dictionary
{
  v20 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  [@"identityToken" UTF8String];
  v6 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionaryWithKey();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(BLSSceneAttribute *)self initWithSceneIdentityToken:v6];
    selfCopy = self;
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

    selfCopy = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [@"identityToken" UTF8String];
  sceneIdentityToken = self->_sceneIdentityToken;
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

- (BLSSceneAttribute)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identityToken"];
  if (v6)
  {
    self = [(BLSSceneAttribute *)self initWithSceneIdentityToken:v6];
    selfCopy = self;
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
      v15 = coderCopy;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_fault_impl(&dword_21FE25000, v8, OS_LOG_TYPE_FAULT, "invalid FBSSceneIdentityToken from %{public}@ for [%@ %@]", &v14, 0x20u);
    }

    selfCopy = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end
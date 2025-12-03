@interface SWPersonIdentity
+ (SWPersonIdentity)allocWithZone:(_NSZone *)zone;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPersonIdentity:(id)identity;
- (SWPersonIdentity)initWithCoder:(id)coder;
- (SWPersonIdentity)initWithRootHash:(id)hash publicKeys:(id)keys trackingPreventionSalt:(id)salt;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SWPersonIdentity

+ (SWPersonIdentity)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [_SWPersonIdentity allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SWPersonIdentity;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (SWPersonIdentity)initWithRootHash:(id)hash publicKeys:(id)keys trackingPreventionSalt:(id)salt
{
  hashCopy = hash;
  keysCopy = keys;
  saltCopy = salt;
  if ([hashCopy length] == 32)
  {
    v17.receiver = self;
    v17.super_class = SWPersonIdentity;
    v12 = [(SWPersonIdentity *)&v17 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_rootHash, hash);
      objc_storeStrong(p_isa + 2, keys);
      objc_storeStrong(p_isa + 3, salt);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v15 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D2C1D000, v15, OS_LOG_TYPE_DEFAULT, "SWPersonIdentity's rootHash must be a SHA-256 digest. Return nil from [SWPersonIdentity initWithRootHash:publicKeys:]", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  rootHash = [(SWPersonIdentity *)self rootHash];
  [v3 appendFormat:@" rootHash=%@", rootHash];

  publicKeys = [(SWPersonIdentity *)self publicKeys];
  [v3 appendFormat:@" publicKeys=%lu", objc_msgSend(publicKeys, "count")];

  trackingPreventionSalt = [(SWPersonIdentity *)self trackingPreventionSalt];
  [v3 appendFormat:@" trackingPreventionSalt=%@", trackingPreventionSalt];

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SWPersonIdentity *)self isEqualToPersonIdentity:equalCopy];

  return v5;
}

- (BOOL)isEqualToPersonIdentity:(id)identity
{
  identityCopy = identity;
  rootHash = [(SWPersonIdentity *)self rootHash];
  if (rootHash || ([identityCopy rootHash], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    rootHash2 = [(SWPersonIdentity *)self rootHash];
    rootHash3 = [identityCopy rootHash];
    if (([rootHash2 isEqual:rootHash3] & 1) == 0)
    {

      v12 = 0;
      goto LABEL_26;
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  publicKeys = [(SWPersonIdentity *)self publicKeys];
  if (publicKeys || ([identityCopy publicKeys], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    publicKeys2 = [(SWPersonIdentity *)self publicKeys];
    publicKeys3 = [identityCopy publicKeys];
    if (([publicKeys2 isEqual:publicKeys3] & 1) == 0)
    {

      if (publicKeys)
      {
      }

      else
      {
      }

      v12 = 0;
      if ((v11 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    v24 = 1;
    v25 = v11;
  }

  else
  {
    v24 = 0;
    v25 = v11;
    v21 = 0;
  }

  trackingPreventionSalt = [(SWPersonIdentity *)self trackingPreventionSalt];
  if (trackingPreventionSalt || ([identityCopy trackingPreventionSalt], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v22 = rootHash2;
    v23 = v3;
    trackingPreventionSalt2 = [(SWPersonIdentity *)self trackingPreventionSalt];
    trackingPreventionSalt3 = [identityCopy trackingPreventionSalt];
    v12 = [trackingPreventionSalt2 isEqual:trackingPreventionSalt3];

    if (trackingPreventionSalt)
    {

      rootHash2 = v22;
      v3 = v23;
      v17 = v25;
      if (!v24)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    rootHash2 = v22;
    v3 = v23;
    v17 = v25;
    v19 = v20;
  }

  else
  {
    v19 = 0;
    v12 = 1;
    v17 = v25;
  }

  if (v24)
  {
LABEL_21:
  }

LABEL_22:
  if (!publicKeys)
  {
  }

  if (v17)
  {
LABEL_25:
  }

LABEL_26:
  if (!rootHash)
  {
  }

  return v12;
}

- (unint64_t)hash
{
  rootHash = [(SWPersonIdentity *)self rootHash];
  v4 = [rootHash hash];
  publicKeys = [(SWPersonIdentity *)self publicKeys];
  v6 = [publicKeys hash] ^ v4;
  trackingPreventionSalt = [(SWPersonIdentity *)self trackingPreventionSalt];
  v8 = [trackingPreventionSalt hash];

  return v6 ^ v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rootHash = [(SWPersonIdentity *)self rootHash];
  v6 = NSStringFromSelector(sel_rootHash);
  [coderCopy encodeObject:rootHash forKey:v6];

  publicKeys = [(SWPersonIdentity *)self publicKeys];
  v8 = NSStringFromSelector(sel_publicKeys);
  [coderCopy encodeObject:publicKeys forKey:v8];

  trackingPreventionSalt = [(SWPersonIdentity *)self trackingPreventionSalt];
  v9 = NSStringFromSelector(sel_trackingPreventionSalt);
  [coderCopy encodeObject:trackingPreventionSalt forKey:v9];
}

- (SWPersonIdentity)initWithCoder:(id)coder
{
  v23[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = SWPersonIdentity;
  v5 = [(SWPersonIdentity *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_rootHash);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    rootHash = v5->_rootHash;
    v5->_rootHash = v8;

    v10 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = NSStringFromSelector(sel_publicKeys);
    v14 = [coderCopy decodeObjectOfClasses:v12 forKey:v13];
    publicKeys = v5->_publicKeys;
    v5->_publicKeys = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_trackingPreventionSalt);
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
    trackingPreventionSalt = v5->_trackingPreventionSalt;
    v5->_trackingPreventionSalt = v18;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  rootHash = [(SWPersonIdentity *)self rootHash];
  publicKeys = [(SWPersonIdentity *)self publicKeys];
  trackingPreventionSalt = [(SWPersonIdentity *)self trackingPreventionSalt];
  v8 = [v4 initWithRootHash:rootHash publicKeys:publicKeys trackingPreventionSalt:trackingPreventionSalt];

  return v8;
}

@end
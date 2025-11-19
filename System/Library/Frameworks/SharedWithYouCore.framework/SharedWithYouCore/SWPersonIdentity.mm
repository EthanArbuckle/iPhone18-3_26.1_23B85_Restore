@interface SWPersonIdentity
+ (SWPersonIdentity)allocWithZone:(_NSZone *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPersonIdentity:(id)a3;
- (SWPersonIdentity)initWithCoder:(id)a3;
- (SWPersonIdentity)initWithRootHash:(id)a3 publicKeys:(id)a4 trackingPreventionSalt:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SWPersonIdentity

+ (SWPersonIdentity)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [_SWPersonIdentity allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SWPersonIdentity;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (SWPersonIdentity)initWithRootHash:(id)a3 publicKeys:(id)a4 trackingPreventionSalt:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 length] == 32)
  {
    v17.receiver = self;
    v17.super_class = SWPersonIdentity;
    v12 = [(SWPersonIdentity *)&v17 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_rootHash, a3);
      objc_storeStrong(p_isa + 2, a4);
      objc_storeStrong(p_isa + 3, a5);
    }

    self = p_isa;
    v14 = self;
  }

  else
  {
    v15 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D2C1D000, v15, OS_LOG_TYPE_DEFAULT, "SWPersonIdentity's rootHash must be a SHA-256 digest. Return nil from [SWPersonIdentity initWithRootHash:publicKeys:]", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(SWPersonIdentity *)self rootHash];
  [v3 appendFormat:@" rootHash=%@", v4];

  v5 = [(SWPersonIdentity *)self publicKeys];
  [v3 appendFormat:@" publicKeys=%lu", objc_msgSend(v5, "count")];

  v6 = [(SWPersonIdentity *)self trackingPreventionSalt];
  [v3 appendFormat:@" trackingPreventionSalt=%@", v6];

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SWPersonIdentity *)self isEqualToPersonIdentity:v4];

  return v5;
}

- (BOOL)isEqualToPersonIdentity:(id)a3
{
  v9 = a3;
  v10 = [(SWPersonIdentity *)self rootHash];
  if (v10 || ([v9 rootHash], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [(SWPersonIdentity *)self rootHash];
    v4 = [v9 rootHash];
    if (([v5 isEqual:v4] & 1) == 0)
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

  v13 = [(SWPersonIdentity *)self publicKeys];
  if (v13 || ([v9 publicKeys], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = [(SWPersonIdentity *)self publicKeys];
    v7 = [v9 publicKeys];
    if (([v6 isEqual:v7] & 1) == 0)
    {

      if (v13)
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

  v14 = [(SWPersonIdentity *)self trackingPreventionSalt];
  if (v14 || ([v9 trackingPreventionSalt], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v22 = v5;
    v23 = v3;
    v15 = [(SWPersonIdentity *)self trackingPreventionSalt];
    v16 = [v9 trackingPreventionSalt];
    v12 = [v15 isEqual:v16];

    if (v14)
    {

      v5 = v22;
      v3 = v23;
      v17 = v25;
      if (!v24)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v5 = v22;
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
  if (!v13)
  {
  }

  if (v17)
  {
LABEL_25:
  }

LABEL_26:
  if (!v10)
  {
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(SWPersonIdentity *)self rootHash];
  v4 = [v3 hash];
  v5 = [(SWPersonIdentity *)self publicKeys];
  v6 = [v5 hash] ^ v4;
  v7 = [(SWPersonIdentity *)self trackingPreventionSalt];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SWPersonIdentity *)self rootHash];
  v6 = NSStringFromSelector(sel_rootHash);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SWPersonIdentity *)self publicKeys];
  v8 = NSStringFromSelector(sel_publicKeys);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(SWPersonIdentity *)self trackingPreventionSalt];
  v9 = NSStringFromSelector(sel_trackingPreventionSalt);
  [v4 encodeObject:v10 forKey:v9];
}

- (SWPersonIdentity)initWithCoder:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SWPersonIdentity;
  v5 = [(SWPersonIdentity *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_rootHash);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    rootHash = v5->_rootHash;
    v5->_rootHash = v8;

    v10 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = NSStringFromSelector(sel_publicKeys);
    v14 = [v4 decodeObjectOfClasses:v12 forKey:v13];
    publicKeys = v5->_publicKeys;
    v5->_publicKeys = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_trackingPreventionSalt);
    v18 = [v4 decodeObjectOfClass:v16 forKey:v17];
    trackingPreventionSalt = v5->_trackingPreventionSalt;
    v5->_trackingPreventionSalt = v18;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(SWPersonIdentity *)self rootHash];
  v6 = [(SWPersonIdentity *)self publicKeys];
  v7 = [(SWPersonIdentity *)self trackingPreventionSalt];
  v8 = [v4 initWithRootHash:v5 publicKeys:v6 trackingPreventionSalt:v7];

  return v8;
}

@end
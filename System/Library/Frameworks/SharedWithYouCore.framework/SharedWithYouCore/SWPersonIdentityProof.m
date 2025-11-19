@interface SWPersonIdentityProof
+ (SWPersonIdentityProof)allocWithZone:(_NSZone *)a3;
- (SWPersonIdentityProof)initWithCoder:(id)a3;
- (SWPersonIdentityProof)initWithInclusionHashes:(id)a3;
- (SWPersonIdentityProof)initWithInclusionHashes:(id)a3 publicKey:(id)a4 localKeyIndex:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SWPersonIdentityProof

+ (SWPersonIdentityProof)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [_SWPersonIdentityProof allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SWPersonIdentityProof;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (SWPersonIdentityProof)initWithInclusionHashes:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SWPersonIdentityProof;
  v6 = [(SWPersonIdentityProof *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inclusionHashes, a3);
  }

  return v7;
}

- (SWPersonIdentityProof)initWithInclusionHashes:(id)a3 publicKey:(id)a4 localKeyIndex:(unint64_t)a5
{
  v9 = a4;
  v10 = [(SWPersonIdentityProof *)self initWithInclusionHashes:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_publicKey, a4);
    v11->_localKeyIndex = a5;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SWPersonIdentityProof *)self inclusionHashes];
  v6 = NSStringFromSelector(sel_inclusionHashes);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SWPersonIdentityProof *)self publicKey];
  v8 = NSStringFromSelector(sel_publicKey);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(SWPersonIdentityProof *)self localKeyIndex];
  v10 = NSStringFromSelector(sel_localKeyIndex);
  [v4 encodeInteger:v9 forKey:v10];
}

- (SWPersonIdentityProof)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SWPersonIdentityProof;
  v5 = [(SWPersonIdentityProof *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = NSStringFromSelector(sel_inclusionHashes);
    v10 = [v4 decodeObjectOfClasses:v8 forKey:v9];
    inclusionHashes = v5->_inclusionHashes;
    v5->_inclusionHashes = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_publicKey);
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    publicKey = v5->_publicKey;
    v5->_publicKey = v14;

    v16 = NSStringFromSelector(sel_localKeyIndex);
    v5->_localKeyIndex = [v4 decodeIntegerForKey:v16];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(SWPersonIdentityProof *)self inclusionHashes];
  v6 = [v4 initWithInclusionHashes:v5];

  v7 = [(SWPersonIdentityProof *)self publicKey];
  [v6 setPublicKey:v7];

  [v6 setLocalKeyIndex:{-[SWPersonIdentityProof localKeyIndex](self, "localKeyIndex")}];
  return v6;
}

@end
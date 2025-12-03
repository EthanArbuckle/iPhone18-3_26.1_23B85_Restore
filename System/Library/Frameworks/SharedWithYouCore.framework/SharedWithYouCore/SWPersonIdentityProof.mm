@interface SWPersonIdentityProof
+ (SWPersonIdentityProof)allocWithZone:(_NSZone *)zone;
- (SWPersonIdentityProof)initWithCoder:(id)coder;
- (SWPersonIdentityProof)initWithInclusionHashes:(id)hashes;
- (SWPersonIdentityProof)initWithInclusionHashes:(id)hashes publicKey:(id)key localKeyIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SWPersonIdentityProof

+ (SWPersonIdentityProof)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [_SWPersonIdentityProof allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SWPersonIdentityProof;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (SWPersonIdentityProof)initWithInclusionHashes:(id)hashes
{
  hashesCopy = hashes;
  v9.receiver = self;
  v9.super_class = SWPersonIdentityProof;
  v6 = [(SWPersonIdentityProof *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inclusionHashes, hashes);
  }

  return v7;
}

- (SWPersonIdentityProof)initWithInclusionHashes:(id)hashes publicKey:(id)key localKeyIndex:(unint64_t)index
{
  keyCopy = key;
  v10 = [(SWPersonIdentityProof *)self initWithInclusionHashes:hashes];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_publicKey, key);
    v11->_localKeyIndex = index;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  inclusionHashes = [(SWPersonIdentityProof *)self inclusionHashes];
  v6 = NSStringFromSelector(sel_inclusionHashes);
  [coderCopy encodeObject:inclusionHashes forKey:v6];

  publicKey = [(SWPersonIdentityProof *)self publicKey];
  v8 = NSStringFromSelector(sel_publicKey);
  [coderCopy encodeObject:publicKey forKey:v8];

  localKeyIndex = [(SWPersonIdentityProof *)self localKeyIndex];
  v10 = NSStringFromSelector(sel_localKeyIndex);
  [coderCopy encodeInteger:localKeyIndex forKey:v10];
}

- (SWPersonIdentityProof)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = SWPersonIdentityProof;
  v5 = [(SWPersonIdentityProof *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = NSStringFromSelector(sel_inclusionHashes);
    v10 = [coderCopy decodeObjectOfClasses:v8 forKey:v9];
    inclusionHashes = v5->_inclusionHashes;
    v5->_inclusionHashes = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_publicKey);
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    publicKey = v5->_publicKey;
    v5->_publicKey = v14;

    v16 = NSStringFromSelector(sel_localKeyIndex);
    v5->_localKeyIndex = [coderCopy decodeIntegerForKey:v16];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  inclusionHashes = [(SWPersonIdentityProof *)self inclusionHashes];
  v6 = [v4 initWithInclusionHashes:inclusionHashes];

  publicKey = [(SWPersonIdentityProof *)self publicKey];
  [v6 setPublicKey:publicKey];

  [v6 setLocalKeyIndex:{-[SWPersonIdentityProof localKeyIndex](self, "localKeyIndex")}];
  return v6;
}

@end
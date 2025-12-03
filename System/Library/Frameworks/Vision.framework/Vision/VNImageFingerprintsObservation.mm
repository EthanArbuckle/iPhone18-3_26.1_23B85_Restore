@interface VNImageFingerprintsObservation
- (BOOL)isEqual:(id)equal;
- (VNImageFingerprintsObservation)initWithCoder:(id)coder;
- (VNImageFingerprintsObservation)initWithOriginatingRequestSpecifier:(id)specifier fingerprintHashes:(id)hashes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNImageFingerprintsObservation

- (VNImageFingerprintsObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = VNImageFingerprintsObservation;
  v5 = [(VNObservation *)&v13 initWithCoder:coderCopy];
  if (v5 && (v6 = objc_alloc(MEMORY[0x1E695DFD8]), v7 = objc_opt_class(), v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}], objc_msgSend(coderCopy, "decodeObjectOfClasses:forKey:", v8, @"hashes"), v9 = objc_claimAutoreleasedReturnValue(), fingerprintHashes = v5->_fingerprintHashes, v5->_fingerprintHashes = v9, fingerprintHashes, v8, !v5->_fingerprintHashes))
  {
    v11 = 0;
  }

  else
  {
    v11 = v5;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = VNImageFingerprintsObservation;
  coderCopy = coder;
  [(VNObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_fingerprintHashes forKey:{@"hashes", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      fingerprintHashes = [(VNImageFingerprintsObservation *)self fingerprintHashes];
      fingerprintHashes2 = [(VNImageFingerprintsObservation *)v5 fingerprintHashes];

      v8 = [fingerprintHashes isEqualToArray:fingerprintHashes2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (VNImageFingerprintsObservation)initWithOriginatingRequestSpecifier:(id)specifier fingerprintHashes:(id)hashes
{
  hashesCopy = hashes;
  v11.receiver = self;
  v11.super_class = VNImageFingerprintsObservation;
  v7 = [(VNObservation *)&v11 initWithOriginatingRequestSpecifier:specifier];
  if (v7)
  {
    v8 = [hashesCopy copy];
    fingerprintHashes = v7->_fingerprintHashes;
    v7->_fingerprintHashes = v8;
  }

  return v7;
}

@end
@interface VNImageFingerprintsObservation
- (BOOL)isEqual:(id)a3;
- (VNImageFingerprintsObservation)initWithCoder:(id)a3;
- (VNImageFingerprintsObservation)initWithOriginatingRequestSpecifier:(id)a3 fingerprintHashes:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNImageFingerprintsObservation

- (VNImageFingerprintsObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VNImageFingerprintsObservation;
  v5 = [(VNObservation *)&v13 initWithCoder:v4];
  if (v5 && (v6 = objc_alloc(MEMORY[0x1E695DFD8]), v7 = objc_opt_class(), v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}], objc_msgSend(v4, "decodeObjectOfClasses:forKey:", v8, @"hashes"), v9 = objc_claimAutoreleasedReturnValue(), fingerprintHashes = v5->_fingerprintHashes, v5->_fingerprintHashes = v9, fingerprintHashes, v8, !v5->_fingerprintHashes))
  {
    v11 = 0;
  }

  else
  {
    v11 = v5;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = VNImageFingerprintsObservation;
  v4 = a3;
  [(VNObservation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_fingerprintHashes forKey:{@"hashes", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNImageFingerprintsObservation *)self fingerprintHashes];
      v7 = [(VNImageFingerprintsObservation *)v5 fingerprintHashes];

      v8 = [v6 isEqualToArray:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (VNImageFingerprintsObservation)initWithOriginatingRequestSpecifier:(id)a3 fingerprintHashes:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = VNImageFingerprintsObservation;
  v7 = [(VNObservation *)&v11 initWithOriginatingRequestSpecifier:a3];
  if (v7)
  {
    v8 = [v6 copy];
    fingerprintHashes = v7->_fingerprintHashes;
    v7->_fingerprintHashes = v8;
  }

  return v7;
}

@end
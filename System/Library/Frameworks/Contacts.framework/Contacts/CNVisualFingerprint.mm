@interface CNVisualFingerprint
+ (id)archiveWithFingerprint:(id)fingerprint;
+ (id)fingerprintFromArchive:(id)archive;
- (BOOL)isEqual:(id)equal;
- (CNVisualFingerprint)initWithCoder:(id)coder;
- (CNVisualFingerprint)initWithHashData:(id)data;
- (CNVisualFingerprint)initWithVNFingerprintHashes:(id)hashes;
@end

@implementation CNVisualFingerprint

- (CNVisualFingerprint)initWithVNFingerprintHashes:(id)hashes
{
  v4 = [hashes _cn_map:&__block_literal_global_165];
  v5 = [(CNVisualFingerprint *)self initWithHashData:v4];

  return v5;
}

- (CNVisualFingerprint)initWithHashData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = CNVisualFingerprint;
  v5 = [(CNVisualFingerprint *)&v10 init];
  if (v5)
  {
    v6 = [dataCopy copy];
    hashData = v5->_hashData;
    v5->_hashData = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 1;
  if (self != equalCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (hashData = self->_hashData, hashData | equalCopy->_hashData) && ![(NSArray *)hashData isEqual:?])
    {
      v6 = 0;
    }
  }

  return v6;
}

- (CNVisualFingerprint)initWithCoder:(id)coder
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"hashData"];

  if ([v8 count] == 2)
  {
    self = [(CNVisualFingerprint *)self initWithHashData:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)fingerprintFromArchive:(id)archive
{
  v3 = MEMORY[0x1E696ACD0];
  archiveCopy = archive;
  v5 = [[v3 alloc] initForReadingFromData:archiveCopy error:0];

  [v5 setRequiresSecureCoding:1];
  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"hashData"];
  [v5 finishDecoding];

  return v6;
}

+ (id)archiveWithFingerprint:(id)fingerprint
{
  v3 = MEMORY[0x1E696ACC8];
  fingerprintCopy = fingerprint;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:fingerprintCopy forKey:@"hashData"];

  [v5 finishEncoding];
  encodedData = [v5 encodedData];

  return encodedData;
}

@end
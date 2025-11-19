@interface CNVisualFingerprint
+ (id)archiveWithFingerprint:(id)a3;
+ (id)fingerprintFromArchive:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CNVisualFingerprint)initWithCoder:(id)a3;
- (CNVisualFingerprint)initWithHashData:(id)a3;
- (CNVisualFingerprint)initWithVNFingerprintHashes:(id)a3;
@end

@implementation CNVisualFingerprint

- (CNVisualFingerprint)initWithVNFingerprintHashes:(id)a3
{
  v4 = [a3 _cn_map:&__block_literal_global_165];
  v5 = [(CNVisualFingerprint *)self initWithHashData:v4];

  return v5;
}

- (CNVisualFingerprint)initWithHashData:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNVisualFingerprint;
  v5 = [(CNVisualFingerprint *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    hashData = v5->_hashData;
    v5->_hashData = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 1;
  if (self != v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (hashData = self->_hashData, hashData | v4->_hashData) && ![(NSArray *)hashData isEqual:?])
    {
      v6 = 0;
    }
  }

  return v6;
}

- (CNVisualFingerprint)initWithCoder:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"hashData"];

  if ([v8 count] == 2)
  {
    self = [(CNVisualFingerprint *)self initWithHashData:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)fingerprintFromArchive:(id)a3
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = a3;
  v5 = [[v3 alloc] initForReadingFromData:v4 error:0];

  [v5 setRequiresSecureCoding:1];
  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"hashData"];
  [v5 finishDecoding];

  return v6;
}

+ (id)archiveWithFingerprint:(id)a3
{
  v3 = MEMORY[0x1E696ACC8];
  v4 = a3;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:v4 forKey:@"hashData"];

  [v5 finishEncoding];
  v6 = [v5 encodedData];

  return v6;
}

@end
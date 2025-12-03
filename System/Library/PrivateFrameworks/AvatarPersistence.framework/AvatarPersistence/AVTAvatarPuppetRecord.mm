@interface AVTAvatarPuppetRecord
+ (id)matchingIdentifierTest:(id)test;
- (AVTAvatarPuppetRecord)initWithCoder:(id)coder;
- (AVTAvatarPuppetRecord)initWithPuppetName:(id)name;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVTAvatarPuppetRecord

+ (id)matchingIdentifierTest:(id)test
{
  testCopy = test;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__AVTAvatarPuppetRecord_matchingIdentifierTest___block_invoke;
  v7[3] = &unk_278CFA3E0;
  v8 = testCopy;
  v4 = testCopy;
  v5 = MEMORY[0x245CF3540](v7);

  return v5;
}

uint64_t __48__AVTAvatarPuppetRecord_matchingIdentifierTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 puppetName];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (AVTAvatarPuppetRecord)initWithPuppetName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = AVTAvatarPuppetRecord;
  v5 = [(AVTAvatarPuppetRecord *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    puppetName = v5->_puppetName;
    v5->_puppetName = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(AVTAvatarPuppetRecord *)self identifier];
      if (identifier || ([(AVTAvatarPuppetRecord *)equalCopy identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        identifier2 = [(AVTAvatarPuppetRecord *)self identifier];
        identifier3 = [(AVTAvatarPuppetRecord *)equalCopy identifier];
        v9 = [identifier2 isEqual:identifier3];

        if (identifier)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      else
      {
        v9 = 1;
      }

      goto LABEL_11;
    }

    v9 = 0;
  }

LABEL_12:

  return v9;
}

- (unint64_t)hash
{
  identifier = [(AVTAvatarPuppetRecord *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (AVTAvatarPuppetRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v6 = [(AVTAvatarPuppetRecord *)self initWithPuppetName:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(AVTAvatarPuppetRecord *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVTAvatarPuppetRecord alloc];
  puppetName = [(AVTAvatarPuppetRecord *)self puppetName];
  v6 = [(AVTAvatarPuppetRecord *)v4 initWithPuppetName:puppetName];

  return v6;
}

@end
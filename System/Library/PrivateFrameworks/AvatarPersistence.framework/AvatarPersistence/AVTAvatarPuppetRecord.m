@interface AVTAvatarPuppetRecord
+ (id)matchingIdentifierTest:(id)a3;
- (AVTAvatarPuppetRecord)initWithCoder:(id)a3;
- (AVTAvatarPuppetRecord)initWithPuppetName:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVTAvatarPuppetRecord

+ (id)matchingIdentifierTest:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__AVTAvatarPuppetRecord_matchingIdentifierTest___block_invoke;
  v7[3] = &unk_278CFA3E0;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x245CF3540](v7);

  return v5;
}

uint64_t __48__AVTAvatarPuppetRecord_matchingIdentifierTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 puppetName];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (AVTAvatarPuppetRecord)initWithPuppetName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AVTAvatarPuppetRecord;
  v5 = [(AVTAvatarPuppetRecord *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    puppetName = v5->_puppetName;
    v5->_puppetName = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(AVTAvatarPuppetRecord *)self identifier];
      if (v6 || ([(AVTAvatarPuppetRecord *)v5 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v7 = [(AVTAvatarPuppetRecord *)self identifier];
        v8 = [(AVTAvatarPuppetRecord *)v5 identifier];
        v9 = [v7 isEqual:v8];

        if (v6)
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
  v2 = [(AVTAvatarPuppetRecord *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (AVTAvatarPuppetRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v6 = [(AVTAvatarPuppetRecord *)self initWithPuppetName:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarPuppetRecord *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AVTAvatarPuppetRecord alloc];
  v5 = [(AVTAvatarPuppetRecord *)self puppetName];
  v6 = [(AVTAvatarPuppetRecord *)v4 initWithPuppetName:v5];

  return v6;
}

@end
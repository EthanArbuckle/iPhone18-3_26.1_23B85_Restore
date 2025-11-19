@interface AVTAvatarRecord
+ (id)dataForNeutralRecord;
+ (id)dataForNewRecord;
+ (id)defaultAvatarRecord;
+ (id)matchingIdentifierTest:(id)a3;
- (AVTAvatarRecord)init;
- (AVTAvatarRecord)initWithAvatarData:(id)a3;
- (AVTAvatarRecord)initWithAvatarData:(id)a3 identifier:(id)a4 orderDate:(id)a5;
- (AVTAvatarRecord)initWithAvatarData:(id)a3 orderDate:(id)a4;
- (AVTAvatarRecord)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVTAvatarRecord

+ (id)matchingIdentifierTest:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__AVTAvatarRecord_matchingIdentifierTest___block_invoke;
  v7[3] = &unk_278CFAB28;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x245CF3540](v7);

  return v5;
}

uint64_t __42__AVTAvatarRecord_matchingIdentifierTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

+ (id)dataForNewRecord
{
  if (dataForNewRecord_onceToken != -1)
  {
    +[AVTAvatarRecord dataForNewRecord];
  }

  v3 = dataForNewRecord_data;

  return v3;
}

void __35__AVTAvatarRecord_dataForNewRecord__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x277CF04E8]);
  v0 = [v2 dataRepresentation];
  v1 = dataForNewRecord_data;
  dataForNewRecord_data = v0;
}

+ (id)dataForNeutralRecord
{
  if (dataForNeutralRecord_onceToken != -1)
  {
    +[AVTAvatarRecord dataForNeutralRecord];
  }

  v3 = dataForNeutralRecord_data;

  return v3;
}

void __39__AVTAvatarRecord_dataForNeutralRecord__block_invoke()
{
  v2 = [MEMORY[0x277CF04E0] neutralMemojiDescriptor];
  v0 = [v2 dataRepresentation];
  v1 = dataForNeutralRecord_data;
  dataForNeutralRecord_data = v0;
}

+ (id)defaultAvatarRecord
{
  v2 = [a1 dataForNeutralRecord];
  v3 = [AVTAvatarRecord alloc];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [(AVTAvatarRecord *)v3 initWithAvatarData:v2 orderDate:v4];

  return v5;
}

- (AVTAvatarRecord)init
{
  v3 = [objc_opt_class() dataForNeutralRecord];
  v4 = [(AVTAvatarRecord *)self initWithAvatarData:v3];

  return v4;
}

- (AVTAvatarRecord)initWithAvatarData:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  v7 = [(AVTAvatarRecord *)self initWithAvatarData:v5 orderDate:v6];

  return v7;
}

- (AVTAvatarRecord)initWithAvatarData:(id)a3 orderDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v8 UUIDString];

  v10 = [(AVTAvatarRecord *)self initWithAvatarData:v7 identifier:v9 orderDate:v6];
  return v10;
}

- (AVTAvatarRecord)initWithAvatarData:(id)a3 identifier:(id)a4 orderDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = AVTAvatarRecord;
  v12 = [(AVTAvatarRecord *)&v16 init];
  if (v12)
  {
    v13 = [v10 copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    objc_storeStrong(&v12->_avatarData, a3);
    objc_storeStrong(&v12->_orderDate, a5);
  }

  return v12;
}

- (AVTAvatarRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"avatarData"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"orderDate"];

  v8 = [(AVTAvatarRecord *)self initWithAvatarData:v6 identifier:v5 orderDate:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = [(AVTAvatarRecord *)self avatarData];
  [v4 encodeObject:v7 forKey:@"avatarData"];
  v5 = [(AVTAvatarRecord *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(AVTAvatarRecord *)self orderDate];
  [v4 encodeObject:v6 forKey:@"orderDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AVTAvatarRecord alloc];
  v5 = [(AVTAvatarRecord *)self avatarData];
  v6 = [(AVTAvatarRecord *)self identifier];
  v7 = [(AVTAvatarRecord *)self orderDate];
  v8 = [(AVTAvatarRecord *)v4 initWithAvatarData:v5 identifier:v6 orderDate:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(AVTAvatarRecord *)self identifier];
      if (v6 || ([(AVTAvatarRecord *)v5 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v7 = [(AVTAvatarRecord *)self identifier];
        v8 = [(AVTAvatarRecord *)v5 identifier];
        v9 = [v7 isEqual:v8];

        if (v6)
        {

          if (!v9)
          {
            goto LABEL_19;
          }
        }

        else
        {

          if ((v9 & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      v11 = [(AVTAvatarRecord *)self avatarData];
      if (!v11)
      {
        v3 = [(AVTAvatarRecord *)v5 avatarData];
        if (!v3)
        {
LABEL_14:
          v15 = [(AVTAvatarRecord *)self orderDate];
          if (v15 || ([(AVTAvatarRecord *)v5 orderDate], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v16 = [(AVTAvatarRecord *)self orderDate];
            v17 = [(AVTAvatarRecord *)v5 orderDate];
            v10 = [v16 isEqual:v17];

            if (v15)
            {
LABEL_23:

              goto LABEL_20;
            }
          }

          else
          {
            v10 = 1;
          }

          goto LABEL_23;
        }
      }

      v12 = [(AVTAvatarRecord *)self avatarData];
      v13 = [(AVTAvatarRecord *)v5 avatarData];
      v14 = [v12 isEqual:v13];

      if (v11)
      {

        if (v14)
        {
          goto LABEL_14;
        }
      }

      else
      {

        if (v14)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  v10 = 1;
LABEL_20:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(AVTAvatarRecord *)self identifier];
  v4 = [v3 hash];
  v5 = [(AVTAvatarRecord *)self identifier];
  *(&v7 + 1) = v4;
  *&v7 = [v5 hash];
  v6 = v7 >> 43;
  v8 = [(AVTAvatarRecord *)self avatarData];
  v9 = [v8 hash];
  v10 = [(AVTAvatarRecord *)self avatarData];
  *(&v7 + 1) = v9;
  *&v7 = [v10 hash];
  v11 = [(AVTAvatarRecord *)self orderDate];
  v12 = [v11 hash];

  return (v7 >> 32) ^ v6 ^ v12;
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = AVTAvatarRecord;
  v3 = [(AVTAvatarRecord *)&v8 description];
  v4 = [v3 mutableCopy];

  [v4 appendString:@" "];
  v5 = [(AVTAvatarRecord *)self identifier];
  [v4 appendString:v5];

  v6 = [v4 copy];

  return v6;
}

- (id)dictionaryRepresentation
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = [(AVTAvatarRecord *)self avatarData];
  if (v3 && (v4 = v3, [(AVTAvatarRecord *)self identifier], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v7 = [(AVTAvatarRecord *)self avatarData];
    v8 = [v6 initWithData:v7 encoding:4];

    v13[0] = @"identifier";
    v9 = [(AVTAvatarRecord *)self identifier];
    v13[1] = @"avatarDataString";
    v14[0] = v9;
    v14[1] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end
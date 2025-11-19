@interface AVTStickerRecord
+ (id)matchingIdentifierTest:(id)a3;
- (AVTStickerRecord)initWithCoder:(id)a3;
- (AVTStickerRecord)initWithIdentifier:(id)a3 avatarRecordIdentifier:(id)a4 stickerConfigurationIdentifier:(id)a5 frequencySum:(id)a6 serializationVersion:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVTStickerRecord

+ (id)matchingIdentifierTest:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__AVTStickerRecord_matchingIdentifierTest___block_invoke;
  v7[3] = &unk_278CFAB50;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x245CF3540](v7);

  return v5;
}

uint64_t __43__AVTStickerRecord_matchingIdentifierTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (AVTStickerRecord)initWithIdentifier:(id)a3 avatarRecordIdentifier:(id)a4 stickerConfigurationIdentifier:(id)a5 frequencySum:(id)a6 serializationVersion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = AVTStickerRecord;
  v17 = [(AVTStickerRecord *)&v25 init];
  if (v17)
  {
    v18 = [v12 copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [v13 copy];
    avatarRecordIdentifier = v17->_avatarRecordIdentifier;
    v17->_avatarRecordIdentifier = v20;

    v22 = [v14 copy];
    stickerConfigurationIdentifier = v17->_stickerConfigurationIdentifier;
    v17->_stickerConfigurationIdentifier = v22;

    v17->_frequencySum = v15;
    v17->_serializationVersion = v16;
  }

  return v17;
}

- (AVTStickerRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"avatarRecordIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stickerConfigurationIdentifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"frequencySum"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serializationVersion"];

  v10 = [(AVTStickerRecord *)self initWithIdentifier:v5 avatarRecordIdentifier:v6 stickerConfigurationIdentifier:v7 frequencySum:v8 serializationVersion:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AVTStickerRecord *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(AVTStickerRecord *)self avatarRecordIdentifier];
  [v4 encodeObject:v6 forKey:@"avatarRecordIdentifier"];

  v7 = [(AVTStickerRecord *)self stickerConfigurationIdentifier];
  [v4 encodeObject:v7 forKey:@"stickerConfigurationIdentifier"];

  v8 = [(AVTStickerRecord *)self frequencySum];
  [v4 encodeObject:v8 forKey:@"frequencySum"];

  v9 = [(AVTStickerRecord *)self serializationVersion];
  [v4 encodeObject:v9 forKey:@"serializationVersion"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AVTStickerRecord alloc];
  v5 = [(AVTStickerRecord *)self identifier];
  v6 = [(AVTStickerRecord *)self avatarRecordIdentifier];
  v7 = [(AVTStickerRecord *)self stickerConfigurationIdentifier];
  v8 = [(AVTStickerRecord *)self frequencySum];
  v9 = [(AVTStickerRecord *)self serializationVersion];
  v10 = [(AVTStickerRecord *)v4 initWithIdentifier:v5 avatarRecordIdentifier:v6 stickerConfigurationIdentifier:v7 frequencySum:v8 serializationVersion:v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(AVTStickerRecord *)self identifier];
      if (v6 || ([(AVTStickerRecord *)v5 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v7 = [(AVTStickerRecord *)self identifier];
        v8 = [(AVTStickerRecord *)v5 identifier];
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

      v11 = [(AVTStickerRecord *)self avatarRecordIdentifier];
      if (!v11)
      {
        v3 = [(AVTStickerRecord *)v5 avatarRecordIdentifier];
        if (!v3)
        {
LABEL_14:
          v15 = [(AVTStickerRecord *)self stickerConfigurationIdentifier];
          if (v15 || ([(AVTStickerRecord *)v5 stickerConfigurationIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v16 = [(AVTStickerRecord *)self stickerConfigurationIdentifier];
            v17 = [(AVTStickerRecord *)v5 stickerConfigurationIdentifier];
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

      v12 = [(AVTStickerRecord *)self avatarRecordIdentifier];
      v13 = [(AVTStickerRecord *)v5 avatarRecordIdentifier];
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
  v3 = [(AVTStickerRecord *)self identifier];
  v4 = [v3 hash];
  v5 = [(AVTStickerRecord *)self identifier];
  *(&v7 + 1) = v4;
  *&v7 = [v5 hash];
  v6 = v7 >> 43;
  v8 = [(AVTStickerRecord *)self avatarRecordIdentifier];
  v9 = [v8 hash];
  v10 = [(AVTStickerRecord *)self avatarRecordIdentifier];
  *(&v7 + 1) = v9;
  *&v7 = [v10 hash];
  v11 = [(AVTStickerRecord *)self stickerConfigurationIdentifier];
  v12 = [v11 hash];

  return (v7 >> 32) ^ v6 ^ v12;
}

- (NSString)description
{
  v13.receiver = self;
  v13.super_class = AVTStickerRecord;
  v3 = [(AVTStickerRecord *)&v13 description];
  v4 = [v3 mutableCopy];

  v5 = [(AVTStickerRecord *)self identifier];
  v6 = [(AVTStickerRecord *)self avatarRecordIdentifier];
  v7 = [(AVTStickerRecord *)self stickerConfigurationIdentifier];
  v8 = [(AVTStickerRecord *)self frequencySum];
  v9 = [v8 unsignedIntegerValue];
  v10 = [(AVTStickerRecord *)self serializationVersion];
  [v4 appendFormat:@" identifer:%@ ari:%@ sci:%@ frequencySum:%ld version:%ld", v5, v6, v7, v9, objc_msgSend(v10, "integerValue")];

  v11 = [v4 copy];

  return v11;
}

@end
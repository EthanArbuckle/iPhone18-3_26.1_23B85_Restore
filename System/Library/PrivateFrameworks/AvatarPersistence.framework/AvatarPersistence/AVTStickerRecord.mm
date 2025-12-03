@interface AVTStickerRecord
+ (id)matchingIdentifierTest:(id)test;
- (AVTStickerRecord)initWithCoder:(id)coder;
- (AVTStickerRecord)initWithIdentifier:(id)identifier avatarRecordIdentifier:(id)recordIdentifier stickerConfigurationIdentifier:(id)configurationIdentifier frequencySum:(id)sum serializationVersion:(id)version;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVTStickerRecord

+ (id)matchingIdentifierTest:(id)test
{
  testCopy = test;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__AVTStickerRecord_matchingIdentifierTest___block_invoke;
  v7[3] = &unk_278CFAB50;
  v8 = testCopy;
  v4 = testCopy;
  v5 = MEMORY[0x245CF3540](v7);

  return v5;
}

uint64_t __43__AVTStickerRecord_matchingIdentifierTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (AVTStickerRecord)initWithIdentifier:(id)identifier avatarRecordIdentifier:(id)recordIdentifier stickerConfigurationIdentifier:(id)configurationIdentifier frequencySum:(id)sum serializationVersion:(id)version
{
  identifierCopy = identifier;
  recordIdentifierCopy = recordIdentifier;
  configurationIdentifierCopy = configurationIdentifier;
  sumCopy = sum;
  versionCopy = version;
  v25.receiver = self;
  v25.super_class = AVTStickerRecord;
  v17 = [(AVTStickerRecord *)&v25 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [recordIdentifierCopy copy];
    avatarRecordIdentifier = v17->_avatarRecordIdentifier;
    v17->_avatarRecordIdentifier = v20;

    v22 = [configurationIdentifierCopy copy];
    stickerConfigurationIdentifier = v17->_stickerConfigurationIdentifier;
    v17->_stickerConfigurationIdentifier = v22;

    v17->_frequencySum = sumCopy;
    v17->_serializationVersion = versionCopy;
  }

  return v17;
}

- (AVTStickerRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"avatarRecordIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stickerConfigurationIdentifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"frequencySum"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializationVersion"];

  v10 = [(AVTStickerRecord *)self initWithIdentifier:v5 avatarRecordIdentifier:v6 stickerConfigurationIdentifier:v7 frequencySum:v8 serializationVersion:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(AVTStickerRecord *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  avatarRecordIdentifier = [(AVTStickerRecord *)self avatarRecordIdentifier];
  [coderCopy encodeObject:avatarRecordIdentifier forKey:@"avatarRecordIdentifier"];

  stickerConfigurationIdentifier = [(AVTStickerRecord *)self stickerConfigurationIdentifier];
  [coderCopy encodeObject:stickerConfigurationIdentifier forKey:@"stickerConfigurationIdentifier"];

  frequencySum = [(AVTStickerRecord *)self frequencySum];
  [coderCopy encodeObject:frequencySum forKey:@"frequencySum"];

  serializationVersion = [(AVTStickerRecord *)self serializationVersion];
  [coderCopy encodeObject:serializationVersion forKey:@"serializationVersion"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVTStickerRecord alloc];
  identifier = [(AVTStickerRecord *)self identifier];
  avatarRecordIdentifier = [(AVTStickerRecord *)self avatarRecordIdentifier];
  stickerConfigurationIdentifier = [(AVTStickerRecord *)self stickerConfigurationIdentifier];
  frequencySum = [(AVTStickerRecord *)self frequencySum];
  serializationVersion = [(AVTStickerRecord *)self serializationVersion];
  v10 = [(AVTStickerRecord *)v4 initWithIdentifier:identifier avatarRecordIdentifier:avatarRecordIdentifier stickerConfigurationIdentifier:stickerConfigurationIdentifier frequencySum:frequencySum serializationVersion:serializationVersion];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(AVTStickerRecord *)self identifier];
      if (identifier || ([(AVTStickerRecord *)equalCopy identifier], (avatarRecordIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        identifier2 = [(AVTStickerRecord *)self identifier];
        identifier3 = [(AVTStickerRecord *)equalCopy identifier];
        v9 = [identifier2 isEqual:identifier3];

        if (identifier)
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

      avatarRecordIdentifier = [(AVTStickerRecord *)self avatarRecordIdentifier];
      if (!avatarRecordIdentifier)
      {
        avatarRecordIdentifier2 = [(AVTStickerRecord *)equalCopy avatarRecordIdentifier];
        if (!avatarRecordIdentifier2)
        {
LABEL_14:
          stickerConfigurationIdentifier = [(AVTStickerRecord *)self stickerConfigurationIdentifier];
          if (stickerConfigurationIdentifier || ([(AVTStickerRecord *)equalCopy stickerConfigurationIdentifier], (avatarRecordIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            stickerConfigurationIdentifier2 = [(AVTStickerRecord *)self stickerConfigurationIdentifier];
            stickerConfigurationIdentifier3 = [(AVTStickerRecord *)equalCopy stickerConfigurationIdentifier];
            v10 = [stickerConfigurationIdentifier2 isEqual:stickerConfigurationIdentifier3];

            if (stickerConfigurationIdentifier)
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

      avatarRecordIdentifier3 = [(AVTStickerRecord *)self avatarRecordIdentifier];
      avatarRecordIdentifier4 = [(AVTStickerRecord *)equalCopy avatarRecordIdentifier];
      v14 = [avatarRecordIdentifier3 isEqual:avatarRecordIdentifier4];

      if (avatarRecordIdentifier)
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
  identifier = [(AVTStickerRecord *)self identifier];
  v4 = [identifier hash];
  identifier2 = [(AVTStickerRecord *)self identifier];
  *(&v7 + 1) = v4;
  *&v7 = [identifier2 hash];
  v6 = v7 >> 43;
  avatarRecordIdentifier = [(AVTStickerRecord *)self avatarRecordIdentifier];
  v9 = [avatarRecordIdentifier hash];
  avatarRecordIdentifier2 = [(AVTStickerRecord *)self avatarRecordIdentifier];
  *(&v7 + 1) = v9;
  *&v7 = [avatarRecordIdentifier2 hash];
  stickerConfigurationIdentifier = [(AVTStickerRecord *)self stickerConfigurationIdentifier];
  v12 = [stickerConfigurationIdentifier hash];

  return (v7 >> 32) ^ v6 ^ v12;
}

- (NSString)description
{
  v13.receiver = self;
  v13.super_class = AVTStickerRecord;
  v3 = [(AVTStickerRecord *)&v13 description];
  v4 = [v3 mutableCopy];

  identifier = [(AVTStickerRecord *)self identifier];
  avatarRecordIdentifier = [(AVTStickerRecord *)self avatarRecordIdentifier];
  stickerConfigurationIdentifier = [(AVTStickerRecord *)self stickerConfigurationIdentifier];
  frequencySum = [(AVTStickerRecord *)self frequencySum];
  unsignedIntegerValue = [frequencySum unsignedIntegerValue];
  serializationVersion = [(AVTStickerRecord *)self serializationVersion];
  [v4 appendFormat:@" identifer:%@ ari:%@ sci:%@ frequencySum:%ld version:%ld", identifier, avatarRecordIdentifier, stickerConfigurationIdentifier, unsignedIntegerValue, objc_msgSend(serializationVersion, "integerValue")];

  v11 = [v4 copy];

  return v11;
}

@end
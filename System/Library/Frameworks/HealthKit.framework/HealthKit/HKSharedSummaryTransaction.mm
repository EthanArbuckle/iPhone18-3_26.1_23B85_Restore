@interface HKSharedSummaryTransaction
- (BOOL)isEqual:(id)equal;
- (HKSharedSummaryTransaction)initWithCoder:(id)coder;
- (HKSharedSummaryTransaction)initWithUUID:(id)d sourceDeviceIdentifier:(id)identifier metadata:(id)metadata;
- (id)description;
- (void)_setCreationDate:(id)date;
- (void)_setSourceDeviceIdentifier:(id)identifier;
- (void)addMetadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSharedSummaryTransaction

- (HKSharedSummaryTransaction)initWithUUID:(id)d sourceDeviceIdentifier:(id)identifier metadata:(id)metadata
{
  dCopy = d;
  identifierCopy = identifier;
  metadataCopy = metadata;
  v19.receiver = self;
  v19.super_class = HKSharedSummaryTransaction;
  v12 = [(HKSharedSummaryTransaction *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_UUID, d);
    v14 = [identifierCopy copy];
    sourceDeviceIdentifier = v13->_sourceDeviceIdentifier;
    v13->_sourceDeviceIdentifier = v14;

    v16 = [metadataCopy copy];
    metadata = v13->_metadata;
    v13->_metadata = v16;
  }

  return v13;
}

- (void)addMetadata:(id)metadata
{
  metadata = self->_metadata;
  metadataCopy = metadata;
  v6 = [(NSDictionary *)metadata mutableCopy];
  [(NSDictionary *)v6 addEntriesFromDictionary:metadataCopy];

  v7 = self->_metadata;
  self->_metadata = v6;
}

- (void)_setSourceDeviceIdentifier:(id)identifier
{
  v4 = [identifier copy];
  sourceDeviceIdentifier = self->_sourceDeviceIdentifier;
  self->_sourceDeviceIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, sourceDeviceIdentifier);
}

- (void)_setCreationDate:(id)date
{
  v4 = [date copy];
  creationDate = self->_creationDate;
  self->_creationDate = v4;

  MEMORY[0x1EEE66BB8](v4, creationDate);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@:%p UUID=%@, source device=%@", v5, self, self->_UUID, self->_sourceDeviceIdentifier];

  if (self->_creationDate)
  {
    if (description_onceToken != -1)
    {
      [HKSharedSummaryTransaction description];
    }

    v7 = MEMORY[0x1E696AEC0];
    v8 = [description_formatter stringFromDate:self->_creationDate];
    v9 = [v7 stringWithFormat:@" creation date=%@", v8];

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@%@>", v6, v9];
  }

  else
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@>", v6];
  }

  return v10;
}

uint64_t __41__HKSharedSummaryTransaction_description__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = description_formatter;
  description_formatter = v0;

  v2 = description_formatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      UUID = self->_UUID;
      uUID = [(HKSharedSummaryTransaction *)equalCopy UUID];
      v7 = [(NSUUID *)UUID isEqual:uUID];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"UUID"];
  [coderCopy encodeObject:self->_sourceDeviceIdentifier forKey:@"SourceDeviceIdentifier"];
  [coderCopy encodeObject:self->_creationDate forKey:@"CreationDate"];
  [coderCopy encodeObject:self->_metadata forKey:@"Metadata"];
}

- (HKSharedSummaryTransaction)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceDeviceIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
  v8 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:5];
  v10 = [v8 setWithArray:{v9, v16, v17, v18, v19}];

  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"Metadata"];

  v12 = [(HKSharedSummaryTransaction *)self initWithUUID:v5 sourceDeviceIdentifier:v6 metadata:v11];
  v13 = v12;
  if (v12 && v7)
  {
    [(HKSharedSummaryTransaction *)v12 _setCreationDate:v7];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

@end
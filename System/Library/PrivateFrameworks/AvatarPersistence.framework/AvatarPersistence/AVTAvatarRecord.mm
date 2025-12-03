@interface AVTAvatarRecord
+ (id)dataForNeutralRecord;
+ (id)dataForNewRecord;
+ (id)defaultAvatarRecord;
+ (id)matchingIdentifierTest:(id)test;
- (AVTAvatarRecord)init;
- (AVTAvatarRecord)initWithAvatarData:(id)data;
- (AVTAvatarRecord)initWithAvatarData:(id)data identifier:(id)identifier orderDate:(id)date;
- (AVTAvatarRecord)initWithAvatarData:(id)data orderDate:(id)date;
- (AVTAvatarRecord)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVTAvatarRecord

+ (id)matchingIdentifierTest:(id)test
{
  testCopy = test;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__AVTAvatarRecord_matchingIdentifierTest___block_invoke;
  v7[3] = &unk_278CFAB28;
  v8 = testCopy;
  v4 = testCopy;
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
  dataForNeutralRecord = [self dataForNeutralRecord];
  v3 = [AVTAvatarRecord alloc];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [(AVTAvatarRecord *)v3 initWithAvatarData:dataForNeutralRecord orderDate:date];

  return v5;
}

- (AVTAvatarRecord)init
{
  dataForNeutralRecord = [objc_opt_class() dataForNeutralRecord];
  v4 = [(AVTAvatarRecord *)self initWithAvatarData:dataForNeutralRecord];

  return v4;
}

- (AVTAvatarRecord)initWithAvatarData:(id)data
{
  v4 = MEMORY[0x277CBEAA8];
  dataCopy = data;
  date = [v4 date];
  v7 = [(AVTAvatarRecord *)self initWithAvatarData:dataCopy orderDate:date];

  return v7;
}

- (AVTAvatarRecord)initWithAvatarData:(id)data orderDate:(id)date
{
  dateCopy = date;
  dataCopy = data;
  v8 = objc_opt_new();
  uUIDString = [v8 UUIDString];

  v10 = [(AVTAvatarRecord *)self initWithAvatarData:dataCopy identifier:uUIDString orderDate:dateCopy];
  return v10;
}

- (AVTAvatarRecord)initWithAvatarData:(id)data identifier:(id)identifier orderDate:(id)date
{
  dataCopy = data;
  identifierCopy = identifier;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = AVTAvatarRecord;
  v12 = [(AVTAvatarRecord *)&v16 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    objc_storeStrong(&v12->_avatarData, data);
    objc_storeStrong(&v12->_orderDate, date);
  }

  return v12;
}

- (AVTAvatarRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"avatarData"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"orderDate"];

  v8 = [(AVTAvatarRecord *)self initWithAvatarData:v6 identifier:v5 orderDate:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  avatarData = [(AVTAvatarRecord *)self avatarData];
  [coderCopy encodeObject:avatarData forKey:@"avatarData"];
  identifier = [(AVTAvatarRecord *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  orderDate = [(AVTAvatarRecord *)self orderDate];
  [coderCopy encodeObject:orderDate forKey:@"orderDate"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVTAvatarRecord alloc];
  avatarData = [(AVTAvatarRecord *)self avatarData];
  identifier = [(AVTAvatarRecord *)self identifier];
  orderDate = [(AVTAvatarRecord *)self orderDate];
  v8 = [(AVTAvatarRecord *)v4 initWithAvatarData:avatarData identifier:identifier orderDate:orderDate];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(AVTAvatarRecord *)self identifier];
      if (identifier || ([(AVTAvatarRecord *)equalCopy identifier], (avatarData2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        identifier2 = [(AVTAvatarRecord *)self identifier];
        identifier3 = [(AVTAvatarRecord *)equalCopy identifier];
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

      avatarData = [(AVTAvatarRecord *)self avatarData];
      if (!avatarData)
      {
        avatarData2 = [(AVTAvatarRecord *)equalCopy avatarData];
        if (!avatarData2)
        {
LABEL_14:
          orderDate = [(AVTAvatarRecord *)self orderDate];
          if (orderDate || ([(AVTAvatarRecord *)equalCopy orderDate], (avatarData2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            orderDate2 = [(AVTAvatarRecord *)self orderDate];
            orderDate3 = [(AVTAvatarRecord *)equalCopy orderDate];
            v10 = [orderDate2 isEqual:orderDate3];

            if (orderDate)
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

      avatarData3 = [(AVTAvatarRecord *)self avatarData];
      avatarData4 = [(AVTAvatarRecord *)equalCopy avatarData];
      v14 = [avatarData3 isEqual:avatarData4];

      if (avatarData)
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
  identifier = [(AVTAvatarRecord *)self identifier];
  v4 = [identifier hash];
  identifier2 = [(AVTAvatarRecord *)self identifier];
  *(&v7 + 1) = v4;
  *&v7 = [identifier2 hash];
  v6 = v7 >> 43;
  avatarData = [(AVTAvatarRecord *)self avatarData];
  v9 = [avatarData hash];
  avatarData2 = [(AVTAvatarRecord *)self avatarData];
  *(&v7 + 1) = v9;
  *&v7 = [avatarData2 hash];
  orderDate = [(AVTAvatarRecord *)self orderDate];
  v12 = [orderDate hash];

  return (v7 >> 32) ^ v6 ^ v12;
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = AVTAvatarRecord;
  v3 = [(AVTAvatarRecord *)&v8 description];
  v4 = [v3 mutableCopy];

  [v4 appendString:@" "];
  identifier = [(AVTAvatarRecord *)self identifier];
  [v4 appendString:identifier];

  v6 = [v4 copy];

  return v6;
}

- (id)dictionaryRepresentation
{
  v14[2] = *MEMORY[0x277D85DE8];
  avatarData = [(AVTAvatarRecord *)self avatarData];
  if (avatarData && (v4 = avatarData, [(AVTAvatarRecord *)self identifier], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    avatarData2 = [(AVTAvatarRecord *)self avatarData];
    v8 = [v6 initWithData:avatarData2 encoding:4];

    v13[0] = @"identifier";
    identifier = [(AVTAvatarRecord *)self identifier];
    v13[1] = @"avatarDataString";
    v14[0] = identifier;
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
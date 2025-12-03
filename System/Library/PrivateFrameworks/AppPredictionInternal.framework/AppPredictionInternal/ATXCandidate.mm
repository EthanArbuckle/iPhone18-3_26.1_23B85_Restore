@interface ATXCandidate
- (ATXCandidate)initWithBiomeStoreData:(id)data;
- (ATXCandidate)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXCandidate:(id)candidate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXCandidate

- (ATXCandidate)initWithBiomeStoreData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = ATXCandidate;
  v6 = [(ATXCandidate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_biomeStoreData, data);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXCandidate *)self isEqualToATXCandidate:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXCandidate:(id)candidate
{
  candidateCopy = candidate;
  identifier = [(ATXCandidate *)self identifier];
  identifier2 = [candidateCopy identifier];

  LOBYTE(candidateCopy) = [identifier isEqual:identifier2];
  return candidateCopy;
}

- (unint64_t)hash
{
  identifier = [(ATXCandidate *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  biomeStoreData = self->_biomeStoreData;
  coderCopy = coder;
  serialize = [(BMStoreData *)biomeStoreData serialize];
  [coderCopy encodeObject:serialize forKey:@"biomeStoreData"];

  v7 = self->_biomeStoreData;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [coderCopy encodeObject:v9 forKey:@"biomeStoreDataClassName"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[BMStoreData dataVersion](self->_biomeStoreData, "dataVersion")}];
  [coderCopy encodeObject:v10 forKey:@"biomeStoreDataDataVersion"];
}

- (ATXCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_relevance_model();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"biomeStoreData" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXCandidate" errorCode:-1 logHandle:v7];

  if (v8)
  {
    v9 = MEMORY[0x277D42620];
    v10 = objc_opt_class();
    v11 = __atxlog_handle_relevance_model();
    v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"biomeStoreDataClassName" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXCandidate" errorCode:-1 logHandle:v11];

    if (v12)
    {
      v13 = MEMORY[0x277D42620];
      v14 = objc_opt_class();
      v15 = __atxlog_handle_relevance_model();
      v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"biomeStoreDataDataVersion" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXCandidate" errorCode:-1 logHandle:v15];

      if (v16)
      {
        selfCopy = NSClassFromString(v12);
        if (selfCopy)
        {
          v18 = -[ATXCandidate eventWithData:dataVersion:](selfCopy, "eventWithData:dataVersion:", v8, [v16 unsignedIntValue]);
          if (v18)
          {
            self = [(ATXCandidate *)self initWithBiomeStoreData:v18];
            selfCopy = self;
          }

          else
          {
            selfCopy = 0;
          }
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end
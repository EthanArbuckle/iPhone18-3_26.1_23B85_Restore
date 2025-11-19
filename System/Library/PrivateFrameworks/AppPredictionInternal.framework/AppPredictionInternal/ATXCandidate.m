@interface ATXCandidate
- (ATXCandidate)initWithBiomeStoreData:(id)a3;
- (ATXCandidate)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXCandidate:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXCandidate

- (ATXCandidate)initWithBiomeStoreData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXCandidate;
  v6 = [(ATXCandidate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_biomeStoreData, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXCandidate *)self isEqualToATXCandidate:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXCandidate:(id)a3
{
  v4 = a3;
  v5 = [(ATXCandidate *)self identifier];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(ATXCandidate *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  biomeStoreData = self->_biomeStoreData;
  v5 = a3;
  v6 = [(BMStoreData *)biomeStoreData serialize];
  [v5 encodeObject:v6 forKey:@"biomeStoreData"];

  v7 = self->_biomeStoreData;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v5 encodeObject:v9 forKey:@"biomeStoreDataClassName"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[BMStoreData dataVersion](self->_biomeStoreData, "dataVersion")}];
  [v5 encodeObject:v10 forKey:@"biomeStoreDataDataVersion"];
}

- (ATXCandidate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_relevance_model();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"biomeStoreData" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXCandidate" errorCode:-1 logHandle:v7];

  if (v8)
  {
    v9 = MEMORY[0x277D42620];
    v10 = objc_opt_class();
    v11 = __atxlog_handle_relevance_model();
    v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"biomeStoreDataClassName" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXCandidate" errorCode:-1 logHandle:v11];

    if (v12)
    {
      v13 = MEMORY[0x277D42620];
      v14 = objc_opt_class();
      v15 = __atxlog_handle_relevance_model();
      v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"biomeStoreDataDataVersion" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXCandidate" errorCode:-1 logHandle:v15];

      if (v16)
      {
        v17 = NSClassFromString(v12);
        if (v17)
        {
          v18 = -[ATXCandidate eventWithData:dataVersion:](v17, "eventWithData:dataVersion:", v8, [v16 unsignedIntValue]);
          if (v18)
          {
            self = [(ATXCandidate *)self initWithBiomeStoreData:v18];
            v17 = self;
          }

          else
          {
            v17 = 0;
          }
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end
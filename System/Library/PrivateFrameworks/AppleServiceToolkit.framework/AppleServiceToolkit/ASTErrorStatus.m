@interface ASTErrorStatus
+ (ASTErrorStatus)errorStatusWithCode:(int64_t)a3;
- (ASTErrorStatus)init;
- (id)dictionary;
- (void)setCode:(id)a3;
@end

@implementation ASTErrorStatus

- (ASTErrorStatus)init
{
  v7.receiver = self;
  v7.super_class = ASTErrorStatus;
  v2 = [(ASTErrorStatus *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    data = v2->_data;
    v2->_data = v3;

    code = v2->_code;
    v2->_code = &unk_2852D5EE0;
  }

  return v2;
}

- (void)setCode:(id)a3
{
  objc_storeStrong(&self->_code, a3);
  v5 = a3;
  v6 = [(ASTErrorStatus *)self reasonForCode:v5];

  [(ASTErrorStatus *)self setReason:v6];
}

- (id)dictionary
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = [(ASTErrorStatus *)self code];
  v4 = [v3 isEqualToNumber:&unk_2852D5EE0];

  if (v4)
  {
    v5 = @"NoError";
  }

  else
  {
    v5 = [(ASTErrorStatus *)self code];
  }

  v19[0] = @"code";
  v19[1] = @"reason";
  v20[0] = v5;
  v6 = [(ASTErrorStatus *)self reason];
  if (v6)
  {
    [(ASTErrorStatus *)self reason];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v7 = ;
  v20[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v9 = [(ASTErrorStatus *)self data];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [v8 mutableCopy];
    v17 = @"data";
    v12 = [(ASTErrorStatus *)self data];
    v18 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [v11 addEntriesFromDictionary:v13];

    v14 = [v11 copy];
    v8 = v14;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (ASTErrorStatus)errorStatusWithCode:(int64_t)a3
{
  v4 = objc_alloc_init(ASTErrorStatus);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(ASTErrorStatus *)v4 setCode:v5];

  return v4;
}

@end
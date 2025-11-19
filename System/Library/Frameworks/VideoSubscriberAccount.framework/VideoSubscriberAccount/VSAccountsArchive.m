@interface VSAccountsArchive
- (VSAccountsArchive)init;
- (VSAccountsArchive)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VSAccountsArchive

- (VSAccountsArchive)init
{
  v6.receiver = self;
  v6.super_class = VSAccountsArchive;
  v2 = [(VSAccountsArchive *)&v6 init];
  v3 = v2;
  if (v2)
  {
    accounts = v2->_accounts;
    v2->_accounts = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (VSAccountsArchive)initWithCoder:(id)a3
{
  v4 = a3;
  VSRequireKeyedCoder(v4);
  v17.receiver = self;
  v17.super_class = VSAccountsArchive;
  v5 = [(VSAccountsArchive *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"accounts"];

    if (v9)
    {
      v10 = [v9 copy];
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    accounts = v5->_accounts;
    v5->_accounts = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"channels"];
    if (v12)
    {
      v13 = [VSAccountChannels deserializationResultWithData:v12];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __35__VSAccountsArchive_initWithCoder___block_invoke;
      v15[3] = &unk_278B74650;
      v16 = v5;
      [v13 unwrapObject:v15 error:&__block_literal_global_29];
    }
  }

  return v5;
}

uint64_t __35__VSAccountsArchive_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 16) = [a2 copy];

  return MEMORY[0x2821F96F8]();
}

void __35__VSAccountsArchive_initWithCoder___block_invoke_2()
{
  v0 = VSErrorLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __35__VSAccountsArchive_initWithCoder___block_invoke_2_cold_1(v0);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  VSRequireKeyedCoder(v4);
  v5 = [(VSAccountsArchive *)self accounts];
  [v4 encodeObject:v5 forKey:@"accounts"];

  v8 = [(VSAccountsArchive *)self channels];
  v6 = [v8 serializationResultWithFormat:200];
  v7 = [v6 object];
  [v4 encodeObject:v7 forKey:@"channels"];
}

@end
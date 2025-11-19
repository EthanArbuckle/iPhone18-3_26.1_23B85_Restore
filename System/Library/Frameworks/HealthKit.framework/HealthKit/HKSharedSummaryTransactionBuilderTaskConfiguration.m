@interface HKSharedSummaryTransactionBuilderTaskConfiguration
- (HKSharedSummaryTransactionBuilderTaskConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSharedSummaryTransactionBuilderTaskConfiguration

- (HKSharedSummaryTransactionBuilderTaskConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKSharedSummaryTransactionBuilderTaskConfiguration;
  v5 = [(HKTaskConfiguration *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionUUID"];
    transactionUUID = v5->_transactionUUID;
    v5->_transactionUUID = v6;

    v5->_allowCommitted = [v4 decodeBoolForKey:@"allowCommitted"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKSharedSummaryTransactionBuilderTaskConfiguration;
  v4 = a3;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_transactionUUID forKey:{@"transactionUUID", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_allowCommitted forKey:@"allowCommitted"];
}

@end
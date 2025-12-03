@interface HKSharedSummaryTransactionBuilderTaskConfiguration
- (HKSharedSummaryTransactionBuilderTaskConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSharedSummaryTransactionBuilderTaskConfiguration

- (HKSharedSummaryTransactionBuilderTaskConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKSharedSummaryTransactionBuilderTaskConfiguration;
  v5 = [(HKTaskConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionUUID"];
    transactionUUID = v5->_transactionUUID;
    v5->_transactionUUID = v6;

    v5->_allowCommitted = [coderCopy decodeBoolForKey:@"allowCommitted"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKSharedSummaryTransactionBuilderTaskConfiguration;
  coderCopy = coder;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_transactionUUID forKey:{@"transactionUUID", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_allowCommitted forKey:@"allowCommitted"];
}

@end
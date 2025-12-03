@interface _HKSharedSummaryTransactionQueryServerConfiguration
- (_HKSharedSummaryTransactionQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKSharedSummaryTransactionQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKSharedSummaryTransactionQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setCommittedTransactions:self->_committedTransactions];
  return v4;
}

- (_HKSharedSummaryTransactionQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _HKSharedSummaryTransactionQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_committedTransactions = [coderCopy decodeBoolForKey:@"committed-transactions"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKSharedSummaryTransactionQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_committedTransactions forKey:{@"committed-transactions", v5.receiver, v5.super_class}];
}

@end
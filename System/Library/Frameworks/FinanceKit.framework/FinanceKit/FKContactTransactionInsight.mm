@interface FKContactTransactionInsight
- (BOOL)isEqual:(id)equal;
- (FKContactTransactionInsight)initWithPeerPaymentCounterpartHandle:(id)handle;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKContactTransactionInsight

- (FKContactTransactionInsight)initWithPeerPaymentCounterpartHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = FKContactTransactionInsight;
  v5 = [(FKContactTransactionInsight *)&v9 init];
  if (v5)
  {
    v6 = [handleCopy copy];
    peerPaymentCounterpartHandle = v5->_peerPaymentCounterpartHandle;
    v5->_peerPaymentCounterpartHandle = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_peerPaymentCounterpartHandle copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_peerPaymentCounterpartHandle];
  v4 = FKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  p_isa = &equalCopy->super.isa;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = FKEqualObjects(self->_peerPaymentCounterpartHandle, p_isa[1]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
@interface FKContactTransactionInsight
- (BOOL)isEqual:(id)a3;
- (FKContactTransactionInsight)initWithPeerPaymentCounterpartHandle:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FKContactTransactionInsight

- (FKContactTransactionInsight)initWithPeerPaymentCounterpartHandle:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FKContactTransactionInsight;
  v5 = [(FKContactTransactionInsight *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    peerPaymentCounterpartHandle = v5->_peerPaymentCounterpartHandle;
    v5->_peerPaymentCounterpartHandle = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_peerPaymentCounterpartHandle copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  p_isa = &v4->super.isa;
  if (self == v4)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
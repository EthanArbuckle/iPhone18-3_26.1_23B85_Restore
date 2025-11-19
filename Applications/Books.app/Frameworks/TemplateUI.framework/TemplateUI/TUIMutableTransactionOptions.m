@interface TUIMutableTransactionOptions
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TUIMutableTransactionOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUITransactionOptions alloc];

  return [(TUITransactionOptions *)v4 initWithOther:self];
}

@end
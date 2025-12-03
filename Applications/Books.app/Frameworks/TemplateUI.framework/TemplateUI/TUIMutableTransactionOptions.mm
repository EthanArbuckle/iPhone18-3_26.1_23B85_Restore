@interface TUIMutableTransactionOptions
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TUIMutableTransactionOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUITransactionOptions alloc];

  return [(TUITransactionOptions *)v4 initWithOther:self];
}

@end
@interface AAUIWalrusRecoveryContactRemovedScreenModel
- (AAUIWalrusRecoveryContactRemovedScreenModel)initWithHasRecoveryContact:(BOOL)contact hasRecoveryKey:(BOOL)key;
@end

@implementation AAUIWalrusRecoveryContactRemovedScreenModel

- (AAUIWalrusRecoveryContactRemovedScreenModel)initWithHasRecoveryContact:(BOOL)contact hasRecoveryKey:(BOOL)key
{
  v5.receiver = self;
  v5.super_class = AAUIWalrusRecoveryContactRemovedScreenModel;
  result = [(AAWalrusRecoveryContactRemovedScreenModel *)&v5 initWithHasRecoveryContact:contact hasRecoveryKey:key];
  if (result)
  {
    result->_contentViewLayout = 2;
  }

  return result;
}

@end
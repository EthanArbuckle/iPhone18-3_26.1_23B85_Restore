@interface AAUIWalrusRecoveryContactRemovedScreenModel
- (AAUIWalrusRecoveryContactRemovedScreenModel)initWithHasRecoveryContact:(BOOL)a3 hasRecoveryKey:(BOOL)a4;
@end

@implementation AAUIWalrusRecoveryContactRemovedScreenModel

- (AAUIWalrusRecoveryContactRemovedScreenModel)initWithHasRecoveryContact:(BOOL)a3 hasRecoveryKey:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = AAUIWalrusRecoveryContactRemovedScreenModel;
  result = [(AAWalrusRecoveryContactRemovedScreenModel *)&v5 initWithHasRecoveryContact:a3 hasRecoveryKey:a4];
  if (result)
  {
    result->_contentViewLayout = 2;
  }

  return result;
}

@end
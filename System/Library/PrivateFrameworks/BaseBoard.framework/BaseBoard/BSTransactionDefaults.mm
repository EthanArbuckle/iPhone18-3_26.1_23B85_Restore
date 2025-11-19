@interface BSTransactionDefaults
@end

@implementation BSTransactionDefaults

void __40___BSTransactionDefaults_sharedInstance__block_invoke()
{
  v0 = [(BSAbstractDefaultDomain *)[_BSTransactionDefaults alloc] _initWithDomain:@"com.apple.BaseBoard.transactions"];
  v1 = _MergedGlobals_8;
  _MergedGlobals_8 = v0;
}

@end
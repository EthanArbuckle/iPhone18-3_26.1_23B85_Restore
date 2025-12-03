@interface ASDTIOServiceManagerDelegateProxy
+ (id)forDelegate:(id)delegate andIDValues:(id)values;
- (ASDTIOServiceManagerDelegate)delegate;
@end

@implementation ASDTIOServiceManagerDelegateProxy

+ (id)forDelegate:(id)delegate andIDValues:(id)values
{
  valuesCopy = values;
  delegateCopy = delegate;
  v7 = objc_alloc_init(ASDTIOServiceManagerDelegateProxy);
  [(ASDTIOServiceManagerDelegateProxy *)v7 setDelegate:delegateCopy];

  v8 = [MEMORY[0x277CBEB98] setWithArray:valuesCopy];

  [(ASDTIOServiceManagerDelegateProxy *)v7 setIdValues:v8];

  return v7;
}

- (ASDTIOServiceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface ASDTIOServiceManagerDelegateProxy
+ (id)forDelegate:(id)a3 andIDValues:(id)a4;
- (ASDTIOServiceManagerDelegate)delegate;
@end

@implementation ASDTIOServiceManagerDelegateProxy

+ (id)forDelegate:(id)a3 andIDValues:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(ASDTIOServiceManagerDelegateProxy);
  [(ASDTIOServiceManagerDelegateProxy *)v7 setDelegate:v6];

  v8 = [MEMORY[0x277CBEB98] setWithArray:v5];

  [(ASDTIOServiceManagerDelegateProxy *)v7 setIdValues:v8];

  return v7;
}

- (ASDTIOServiceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
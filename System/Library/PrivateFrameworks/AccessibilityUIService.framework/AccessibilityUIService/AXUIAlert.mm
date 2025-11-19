@interface AXUIAlert
+ (id)alertWithType:(unint64_t)a3 text:(id)a4 subtitleText:(id)a5 iconImage:(id)a6 styleProvider:(id)a7 userInfo:(id)a8;
- (AXUIAlertContext)context;
@end

@implementation AXUIAlert

+ (id)alertWithType:(unint64_t)a3 text:(id)a4 subtitleText:(id)a5 iconImage:(id)a6 styleProvider:(id)a7 userInfo:(id)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (a3 == 5)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:5];
    _AXAssert();

    v18 = 0;
  }

  else
  {
    v18 = [[AXStyleProviderUIAlert alloc] initWithType:a3 text:v13 subtitleText:v14 iconImage:v15 styleProvider:v16 userInfo:v17];
  }

  return v18;
}

- (AXUIAlertContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end
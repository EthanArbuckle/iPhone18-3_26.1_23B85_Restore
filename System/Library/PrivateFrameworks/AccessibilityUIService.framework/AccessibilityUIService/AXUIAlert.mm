@interface AXUIAlert
+ (id)alertWithType:(unint64_t)type text:(id)text subtitleText:(id)subtitleText iconImage:(id)image styleProvider:(id)provider userInfo:(id)info;
- (AXUIAlertContext)context;
@end

@implementation AXUIAlert

+ (id)alertWithType:(unint64_t)type text:(id)text subtitleText:(id)subtitleText iconImage:(id)image styleProvider:(id)provider userInfo:(id)info
{
  textCopy = text;
  subtitleTextCopy = subtitleText;
  imageCopy = image;
  providerCopy = provider;
  infoCopy = info;
  if (type == 5)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:5];
    _AXAssert();

    v18 = 0;
  }

  else
  {
    v18 = [[AXStyleProviderUIAlert alloc] initWithType:type text:textCopy subtitleText:subtitleTextCopy iconImage:imageCopy styleProvider:providerCopy userInfo:infoCopy];
  }

  return v18;
}

- (AXUIAlertContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end
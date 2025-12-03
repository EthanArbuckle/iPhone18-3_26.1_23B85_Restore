@interface IUIRTISystemDelegateMultiplexer
- (BOOL)respondsToSelector:(SEL)selector;
- (void)inputSystemService:(id)service prepareForInputSession:(id)session options:(id)options;
@end

@implementation IUIRTISystemDelegateMultiplexer

- (void)inputSystemService:(id)service prepareForInputSession:(id)session options:(id)options
{
  optionsCopy = options;
  sessionCopy = session;
  serviceCopy = service;
  contextDelegate = [(IUIRTISystemDelegateMultiplexer *)self contextDelegate];
  [contextDelegate inputSystemService:serviceCopy prepareForInputSession:sessionCopy options:optionsCopy];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  primaryDelegate = [(IUIRTISystemDelegateMultiplexer *)self primaryDelegate];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

@end
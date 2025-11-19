@interface IUIRTISystemDelegateMultiplexer
- (BOOL)respondsToSelector:(SEL)a3;
- (void)inputSystemService:(id)a3 prepareForInputSession:(id)a4 options:(id)a5;
@end

@implementation IUIRTISystemDelegateMultiplexer

- (void)inputSystemService:(id)a3 prepareForInputSession:(id)a4 options:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(IUIRTISystemDelegateMultiplexer *)self contextDelegate];
  [v11 inputSystemService:v10 prepareForInputSession:v9 options:v8];
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v3 = [(IUIRTISystemDelegateMultiplexer *)self primaryDelegate];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

@end
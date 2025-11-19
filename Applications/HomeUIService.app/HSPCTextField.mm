@interface HSPCTextField
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
@end

@implementation HSPCTextField

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_isEqual(a3, "captureTextFromCamera:"))
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HSPCTextField;
    v7 = [(HSPCTextField *)&v9 canPerformAction:a3 withSender:v6];
  }

  return v7;
}

@end
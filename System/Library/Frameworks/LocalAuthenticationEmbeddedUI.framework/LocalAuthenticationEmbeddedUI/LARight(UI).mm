@interface LARight(UI)
- (void)authorizeWithLocalizedReason:()UI inPresentationContext:completion:;
@end

@implementation LARight(UI)

- (void)authorizeWithLocalizedReason:()UI inPresentationContext:completion:
{
  v11 = a4;
  v8 = a5;
  v9 = a3;
  if (objc_opt_respondsToSelector())
  {
    v10 = [(LARight *)self _authOptionsWithLocalizedReason:v9 presentationContext:v11];

    [self authorizeWithOptions:v10 completion:v8];
    v9 = v10;
  }

  else
  {
    [self authorizeWithLocalizedReason:v9 completion:v8];
  }
}

@end
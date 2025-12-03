@interface UIApplication
+ (id)jsa_sharedApplicationIfNotExtension;
- (void)jsa_openExternalURL:(id)l options:(id)options completionHandler:(id)handler;
@end

@implementation UIApplication

- (void)jsa_openExternalURL:(id)l options:(id)options completionHandler:(id)handler
{
  lCopy = l;
  optionsCopy = options;
  handlerCopy = handler;
  v13 = handlerCopy;
  if (_UIApplicationIsExtension())
  {
    v9 = objc_retainBlock(handlerCopy);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }
  }

  else
  {
    v11 = [(UIApplication *)self methodSignatureForSelector:"openURL:options:completionHandler:"];
    v12 = [NSInvocation invocationWithMethodSignature:v11];

    [v12 setSelector:"openURL:options:completionHandler:"];
    [v12 setTarget:self];
    [v12 setArgument:&lCopy atIndex:2];
    [v12 setArgument:&optionsCopy atIndex:3];
    [v12 setArgument:&v13 atIndex:4];
    [v12 invoke];

    handlerCopy = v13;
  }
}

+ (id)jsa_sharedApplicationIfNotExtension
{
  v2 = _sSo13UIApplicationC5JSAppE20sharedIfNotExtensionABSgvgZ_0();

  return v2;
}

@end
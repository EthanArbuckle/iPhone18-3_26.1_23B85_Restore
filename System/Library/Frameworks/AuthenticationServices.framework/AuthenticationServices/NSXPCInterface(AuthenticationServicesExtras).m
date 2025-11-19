@interface NSXPCInterface(AuthenticationServicesExtras)
+ (id)_as_accountModificationExtensionInterface;
+ (id)_as_accountModificationHostInterface;
+ (id)_as_credentialProviderExtensionInterface;
+ (id)_as_credentialProviderHostInterface;
@end

@implementation NSXPCInterface(AuthenticationServicesExtras)

+ (id)_as_credentialProviderHostInterface
{
  if (_as_credentialProviderHostInterface_onceToken != -1)
  {
    +[NSXPCInterface(AuthenticationServicesExtras) _as_credentialProviderHostInterface];
  }

  v1 = _as_credentialProviderHostInterface_interface;

  return v1;
}

+ (id)_as_credentialProviderExtensionInterface
{
  if (_as_credentialProviderExtensionInterface_onceToken != -1)
  {
    +[NSXPCInterface(AuthenticationServicesExtras) _as_credentialProviderExtensionInterface];
  }

  v1 = _as_credentialProviderExtensionInterface_interface;

  return v1;
}

+ (id)_as_accountModificationHostInterface
{
  if (_as_accountModificationHostInterface_onceToken != -1)
  {
    +[NSXPCInterface(AuthenticationServicesExtras) _as_accountModificationHostInterface];
  }

  v1 = _as_accountModificationHostInterface_interface;

  return v1;
}

+ (id)_as_accountModificationExtensionInterface
{
  if (_as_accountModificationExtensionInterface_onceToken != -1)
  {
    +[NSXPCInterface(AuthenticationServicesExtras) _as_accountModificationExtensionInterface];
  }

  v1 = _as_accountModificationExtensionInterface_interface;

  return v1;
}

@end
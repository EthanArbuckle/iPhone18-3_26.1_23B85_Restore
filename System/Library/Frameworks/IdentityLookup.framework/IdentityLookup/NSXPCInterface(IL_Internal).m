@interface NSXPCInterface(IL_Internal)
+ (id)il_classificationUIExtensionHostInterface;
+ (id)il_classificationUIExtensionVendorInterface;
+ (id)il_messageFilterExtensionHostInterface;
+ (id)il_messageFilterExtensionVendorInterface;
@end

@implementation NSXPCInterface(IL_Internal)

+ (id)il_messageFilterExtensionHostInterface
{
  if (il_messageFilterExtensionHostInterface_onceToken != -1)
  {
    +[NSXPCInterface(IL_Internal) il_messageFilterExtensionHostInterface];
  }

  v1 = il_messageFilterExtensionHostInterface_interface;

  return v1;
}

+ (id)il_messageFilterExtensionVendorInterface
{
  if (il_messageFilterExtensionVendorInterface_onceToken != -1)
  {
    +[NSXPCInterface(IL_Internal) il_messageFilterExtensionVendorInterface];
  }

  v1 = il_messageFilterExtensionVendorInterface_interface;

  return v1;
}

+ (id)il_classificationUIExtensionHostInterface
{
  if (il_classificationUIExtensionHostInterface_onceToken != -1)
  {
    +[NSXPCInterface(IL_Internal) il_classificationUIExtensionHostInterface];
  }

  v1 = il_classificationUIExtensionHostInterface_interface;

  return v1;
}

+ (id)il_classificationUIExtensionVendorInterface
{
  if (il_classificationUIExtensionVendorInterface_onceToken[0] != -1)
  {
    +[NSXPCInterface(IL_Internal) il_classificationUIExtensionVendorInterface];
  }

  v1 = il_classificationUIExtensionVendorInterface_interface;

  return v1;
}

@end
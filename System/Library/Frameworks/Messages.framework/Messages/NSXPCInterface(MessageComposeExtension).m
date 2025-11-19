@interface NSXPCInterface(MessageComposeExtension)
+ (id)__mf_messageComposerExtensionInterface;
+ (id)__mf_messageComposerHostInterface;
@end

@implementation NSXPCInterface(MessageComposeExtension)

+ (id)__mf_messageComposerHostInterface
{
  if (__mf_messageComposerHostInterface_onceToken != -1)
  {
    +[NSXPCInterface(MessageComposeExtension) __mf_messageComposerHostInterface];
  }

  v1 = __mf_messageComposerHostInterface_interface;

  return v1;
}

+ (id)__mf_messageComposerExtensionInterface
{
  if (__mf_messageComposerExtensionInterface_onceToken != -1)
  {
    +[NSXPCInterface(MessageComposeExtension) __mf_messageComposerExtensionInterface];
  }

  v1 = __mf_messageComposerExtensionInterface_interface;

  return v1;
}

@end
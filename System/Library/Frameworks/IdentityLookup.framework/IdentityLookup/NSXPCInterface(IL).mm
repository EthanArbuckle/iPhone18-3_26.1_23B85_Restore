@interface NSXPCInterface(IL)
+ (id)il_messageFilterHostInterface;
@end

@implementation NSXPCInterface(IL)

+ (id)il_messageFilterHostInterface
{
  if (il_messageFilterHostInterface_onceToken != -1)
  {
    +[NSXPCInterface(IL) il_messageFilterHostInterface];
  }

  v1 = il_messageFilterHostInterface_interface;

  return v1;
}

@end
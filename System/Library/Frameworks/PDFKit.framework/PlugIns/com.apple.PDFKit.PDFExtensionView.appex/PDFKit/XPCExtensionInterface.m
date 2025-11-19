@interface XPCExtensionInterface
+ (id)extensionInterface;
+ (id)hostInterface;
@end

@implementation XPCExtensionInterface

+ (id)extensionInterface
{
  if (qword_100008408 != -1)
  {
    sub_100000C38();
  }

  v3 = qword_100008400;

  return v3;
}

+ (id)hostInterface
{
  if (qword_100008418 != -1)
  {
    sub_100000C4C();
  }

  v3 = qword_100008410;

  return v3;
}

@end
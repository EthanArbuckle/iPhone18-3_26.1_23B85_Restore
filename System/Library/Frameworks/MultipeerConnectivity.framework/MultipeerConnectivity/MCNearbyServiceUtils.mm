@interface MCNearbyServiceUtils
+ (BOOL)isServiceTypeValid:(id)valid;
@end

@implementation MCNearbyServiceUtils

+ (BOOL)isServiceTypeValid:(id)valid
{
  uTF8String = [valid UTF8String];
  if (uTF8String)
  {
    v4 = uTF8String;
    v5 = strlen(uTF8String);
    if (v5 - 16 < 0xFFFFFFFFFFFFFFF1)
    {
      goto LABEL_7;
    }

    v6 = v5;
    if (strspn(v4, "-01234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz") != v5)
    {
      goto LABEL_7;
    }

    uTF8String = strpbrk(v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz");
    if (uTF8String)
    {
      if (*v4 == 45 || v4[v6 - 1] == 45)
      {
LABEL_7:
        LOBYTE(uTF8String) = 0;
        return uTF8String;
      }

      LOBYTE(uTF8String) = strstr(v4, "--") == 0;
    }
  }

  return uTF8String;
}

@end
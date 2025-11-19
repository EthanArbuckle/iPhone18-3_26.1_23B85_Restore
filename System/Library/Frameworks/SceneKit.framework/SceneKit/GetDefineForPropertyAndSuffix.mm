@interface GetDefineForPropertyAndSuffix
@end

@implementation GetDefineForPropertyAndSuffix

void ____GetDefineForPropertyAndSuffix_block_invoke()
{
  v0 = 0;
  v1 = &qword_27CDD8F08;
  v2 = *MEMORY[0x277CBECE8];
  do
  {
    v3 = __stringForProperty();
    *(v1 - 4) = v3;
    MutableCopy = CFStringCreateMutableCopy(v2, 0, v3);
    CFStringUppercase(MutableCopy, 0);
    *(v1 - 3) = CFStringCreateWithFormat(v2, 0, @"USE_%@", MutableCopy);
    *(v1 - 2) = CFStringCreateWithFormat(v2, 0, @"USE_%@_COLOR", MutableCopy);
    *(v1 - 1) = CFStringCreateWithFormat(v2, 0, @"USE_%@_INTENSITY", MutableCopy);
    *v1 = CFStringCreateWithFormat(v2, 0, @"USE_%@_TEXTURE_COMPONENT", MutableCopy);
    v1[1] = CFStringCreateWithFormat(v2, 0, @"USE_%@TEXCOORD", MutableCopy);
    v1[2] = CFStringCreateWithFormat(v2, 0, @"USE_%@_MAP", MutableCopy);
    v1[3] = CFStringCreateWithFormat(v2, 0, @"USE_%@_CUBEMAP", MutableCopy);
    CFRelease(MutableCopy);
    ++v0;
    v1 += 8;
  }

  while (v0 != 16);
}

@end
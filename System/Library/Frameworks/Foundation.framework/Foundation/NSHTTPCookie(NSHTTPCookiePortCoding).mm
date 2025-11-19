@interface NSHTTPCookie(NSHTTPCookiePortCoding)
- (id)replacementObjectForPortCoder:()NSHTTPCookiePortCoding;
@end

@implementation NSHTTPCookie(NSHTTPCookiePortCoding)

- (id)replacementObjectForPortCoder:()NSHTTPCookiePortCoding
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isByref])
  {
    v6.receiver = a1;
    v6.super_class = &off_1EEF98260;
    return objc_msgSendSuper2(&v6, sel_replacementObjectForPortCoder_, a3);
  }

  return a1;
}

@end
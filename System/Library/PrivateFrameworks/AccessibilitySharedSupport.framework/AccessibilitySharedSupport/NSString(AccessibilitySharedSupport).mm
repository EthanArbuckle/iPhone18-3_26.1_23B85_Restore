@interface NSString(AccessibilitySharedSupport)
- (id)axss_stringByTrimmingToLength:()AccessibilitySharedSupport encoding:;
@end

@implementation NSString(AccessibilitySharedSupport)

- (id)axss_stringByTrimmingToLength:()AccessibilitySharedSupport encoding:
{
  selfCopy = self;
  if ([selfCopy lengthOfBytesUsingEncoding:a4] > a3)
  {
    v7 = malloc_type_malloc(a3, 0x851DF00AuLL);
    v11 = 0;
    [selfCopy getBytes:v7 maxLength:a3 usedLength:&v11 encoding:a4 options:0 range:0 remainingRange:{objc_msgSend(selfCopy, "length"), 0}];
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [v8 initWithBytes:v7 length:v11 encoding:a4];

    free(v7);
    selfCopy = v9;
  }

  return selfCopy;
}

@end
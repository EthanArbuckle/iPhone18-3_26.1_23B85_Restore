@interface NSString(AccessibilitySharedSupport)
- (id)axss_stringByTrimmingToLength:()AccessibilitySharedSupport encoding:;
@end

@implementation NSString(AccessibilitySharedSupport)

- (id)axss_stringByTrimmingToLength:()AccessibilitySharedSupport encoding:
{
  v6 = a1;
  if ([v6 lengthOfBytesUsingEncoding:a4] > a3)
  {
    v7 = malloc_type_malloc(a3, 0x851DF00AuLL);
    v11 = 0;
    [v6 getBytes:v7 maxLength:a3 usedLength:&v11 encoding:a4 options:0 range:0 remainingRange:{objc_msgSend(v6, "length"), 0}];
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [v8 initWithBytes:v7 length:v11 encoding:a4];

    free(v7);
    v6 = v9;
  }

  return v6;
}

@end
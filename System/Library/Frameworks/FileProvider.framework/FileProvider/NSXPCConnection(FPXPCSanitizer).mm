@interface NSXPCConnection(FPXPCSanitizer)
- (void)fp_annotateWithXPCSanitizer:()FPXPCSanitizer;
@end

@implementation NSXPCConnection(FPXPCSanitizer)

- (void)fp_annotateWithXPCSanitizer:()FPXPCSanitizer
{
  v4 = a3;
  fp_userInfo = [self fp_userInfo];
  [fp_userInfo setObject:v4 forKey:@"FPXPCSanitizerKey"];
}

@end
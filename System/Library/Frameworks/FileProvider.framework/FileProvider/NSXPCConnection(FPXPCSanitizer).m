@interface NSXPCConnection(FPXPCSanitizer)
- (void)fp_annotateWithXPCSanitizer:()FPXPCSanitizer;
@end

@implementation NSXPCConnection(FPXPCSanitizer)

- (void)fp_annotateWithXPCSanitizer:()FPXPCSanitizer
{
  v4 = a3;
  v5 = [a1 fp_userInfo];
  [v5 setObject:v4 forKey:@"FPXPCSanitizerKey"];
}

@end
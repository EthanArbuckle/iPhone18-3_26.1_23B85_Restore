@interface NSXPCInterface(_ATXExtras)
- (void)atx_addClass:()_ATXExtras forSelector:argumentIndex:ofReply:;
@end

@implementation NSXPCInterface(_ATXExtras)

- (void)atx_addClass:()_ATXExtras forSelector:argumentIndex:ofReply:
{
  v12 = [self classesForSelector:a4 argumentIndex:a5 ofReply:a6];
  v11 = [v12 setByAddingObject:a3];
  [self setClasses:v11 forSelector:a4 argumentIndex:a5 ofReply:a6];
}

@end
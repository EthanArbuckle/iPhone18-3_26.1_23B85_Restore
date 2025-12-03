@interface NSMutableDictionary(DiagnosticsController)
- (void)setActions:()DiagnosticsController forProcess:;
@end

@implementation NSMutableDictionary(DiagnosticsController)

- (void)setActions:()DiagnosticsController forProcess:
{
  v7 = a3;
  v6 = a4;
  if ([v6 length])
  {
    [self setValue:v7 forKey:v6];
  }
}

@end
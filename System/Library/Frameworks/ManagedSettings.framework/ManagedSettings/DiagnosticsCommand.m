@interface DiagnosticsCommand
- (BOOL)runWithOptions:(id)a3;
@end

@implementation DiagnosticsCommand

- (BOOL)runWithOptions:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100001714(v4);

  return self & 1;
}

@end
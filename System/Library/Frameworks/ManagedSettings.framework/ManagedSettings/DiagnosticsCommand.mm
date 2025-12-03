@interface DiagnosticsCommand
- (BOOL)runWithOptions:(id)options;
@end

@implementation DiagnosticsCommand

- (BOOL)runWithOptions:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  LOBYTE(self) = sub_100001714(optionsCopy);

  return self & 1;
}

@end
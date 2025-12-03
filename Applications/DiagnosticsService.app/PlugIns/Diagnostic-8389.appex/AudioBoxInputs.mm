@interface AudioBoxInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation AudioBoxInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  v4 = sub_10002186C();
  selfCopy = self;
  LOBYTE(self) = sub_10000C664(v4);

  return self & 1;
}

@end
@interface AudioBoxInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation AudioBoxInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v4 = sub_10002186C();
  v5 = self;
  LOBYTE(self) = sub_10000C664(v4);

  return self & 1;
}

@end
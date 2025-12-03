@interface JSLogObject
- (void)debug:(id)debug;
- (void)default:(id)default;
- (void)error:(id)error;
- (void)fault:(id)fault;
- (void)info:(id)info;
@end

@implementation JSLogObject

- (void)debug:(id)debug
{
  debugCopy = debug;
  selfCopy = self;
  sub_10001EC3C(debugCopy);
}

- (void)default:(id)default
{
  defaultCopy = default;
  selfCopy = self;
  sub_10001ECBC(defaultCopy);
}

- (void)error:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_10001ED3C(errorCopy);
}

- (void)fault:(id)fault
{
  faultCopy = fault;
  selfCopy = self;
  sub_10001EDBC(faultCopy);
}

- (void)info:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_10001EE3C(infoCopy);
}

@end
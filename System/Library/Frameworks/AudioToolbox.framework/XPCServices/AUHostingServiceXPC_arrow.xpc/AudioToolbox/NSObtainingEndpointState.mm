@interface NSObtainingEndpointState
- (void)addError:(int64_t)error description:(const char *)description forListenerNamed:(id)named fromServiceNamed:(id)serviceNamed;
@end

@implementation NSObtainingEndpointState

- (void)addError:(int64_t)error description:(const char *)description forListenerNamed:(id)named fromServiceNamed:(id)serviceNamed
{
  serviceNamedCopy = serviceNamed;
  namedCopy = named;
  v16 = [NSString stringWithUTF8String:description];
  v12 = sub_100001340(error, v16, serviceNamedCopy, namedCopy);

  errors = self->errors;
  if (!errors)
  {
    v14 = [NSMutableArray arrayWithCapacity:2];
    v15 = self->errors;
    self->errors = v14;

    errors = self->errors;
  }

  [(NSMutableArray *)errors addObject:v12];
}

@end
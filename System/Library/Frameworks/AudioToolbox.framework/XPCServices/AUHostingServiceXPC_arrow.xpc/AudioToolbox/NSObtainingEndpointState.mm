@interface NSObtainingEndpointState
- (void)addError:(int64_t)a3 description:(const char *)a4 forListenerNamed:(id)a5 fromServiceNamed:(id)a6;
@end

@implementation NSObtainingEndpointState

- (void)addError:(int64_t)a3 description:(const char *)a4 forListenerNamed:(id)a5 fromServiceNamed:(id)a6
{
  v10 = a6;
  v11 = a5;
  v16 = [NSString stringWithUTF8String:a4];
  v12 = sub_100001340(a3, v16, v10, v11);

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
@interface _LTSELFLoggingInvocationOptions
- (_LTSELFLoggingInvocationOptions)initWithCoder:(id)a3;
- (_LTSELFLoggingInvocationOptions)initWithTask:(int64_t)a3 inputMode:(int64_t)a4 invocationType:(int64_t)a5 translateAppContext:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTSELFLoggingInvocationOptions

- (_LTSELFLoggingInvocationOptions)initWithTask:(int64_t)a3 inputMode:(int64_t)a4 invocationType:(int64_t)a5 translateAppContext:(id)a6
{
  v11 = a6;
  v16.receiver = self;
  v16.super_class = _LTSELFLoggingInvocationOptions;
  v12 = [(_LTSELFLoggingInvocationOptions *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_task = a3;
    v12->_inputMode = a4;
    v12->_invocationType = a5;
    objc_storeStrong(&v12->_translateAppContext, a6);
    v14 = v13;
  }

  return v13;
}

- (_LTSELFLoggingInvocationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _LTSELFLoggingInvocationOptions;
  v5 = [(_LTSELFLoggingInvocationOptions *)&v10 init];
  if (v5)
  {
    v5->_task = [v4 decodeIntegerForKey:@"task"];
    v5->_inputMode = [v4 decodeIntegerForKey:@"inputMode"];
    v5->_invocationType = [v4 decodeIntegerForKey:@"invocationType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"translateAppContext"];
    translateAppContext = v5->_translateAppContext;
    v5->_translateAppContext = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  task = self->_task;
  v5 = a3;
  [v5 encodeInteger:task forKey:@"task"];
  [v5 encodeInteger:self->_inputMode forKey:@"inputMode"];
  [v5 encodeInteger:self->_invocationType forKey:@"invocationType"];
  [v5 encodeObject:self->_translateAppContext forKey:@"translateAppContext"];
}

@end
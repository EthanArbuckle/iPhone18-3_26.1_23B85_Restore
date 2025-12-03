@interface _LTSELFLoggingInvocationOptions
- (_LTSELFLoggingInvocationOptions)initWithCoder:(id)coder;
- (_LTSELFLoggingInvocationOptions)initWithTask:(int64_t)task inputMode:(int64_t)mode invocationType:(int64_t)type translateAppContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTSELFLoggingInvocationOptions

- (_LTSELFLoggingInvocationOptions)initWithTask:(int64_t)task inputMode:(int64_t)mode invocationType:(int64_t)type translateAppContext:(id)context
{
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = _LTSELFLoggingInvocationOptions;
  v12 = [(_LTSELFLoggingInvocationOptions *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_task = task;
    v12->_inputMode = mode;
    v12->_invocationType = type;
    objc_storeStrong(&v12->_translateAppContext, context);
    v14 = v13;
  }

  return v13;
}

- (_LTSELFLoggingInvocationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _LTSELFLoggingInvocationOptions;
  v5 = [(_LTSELFLoggingInvocationOptions *)&v10 init];
  if (v5)
  {
    v5->_task = [coderCopy decodeIntegerForKey:@"task"];
    v5->_inputMode = [coderCopy decodeIntegerForKey:@"inputMode"];
    v5->_invocationType = [coderCopy decodeIntegerForKey:@"invocationType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"translateAppContext"];
    translateAppContext = v5->_translateAppContext;
    v5->_translateAppContext = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  task = self->_task;
  coderCopy = coder;
  [coderCopy encodeInteger:task forKey:@"task"];
  [coderCopy encodeInteger:self->_inputMode forKey:@"inputMode"];
  [coderCopy encodeInteger:self->_invocationType forKey:@"invocationType"];
  [coderCopy encodeObject:self->_translateAppContext forKey:@"translateAppContext"];
}

@end
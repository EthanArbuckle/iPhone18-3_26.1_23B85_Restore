@interface SecTaskWrap
- (SecTaskWrap)initWithSecTaskRef:(__SecTask *)a3;
- (void)dealloc;
@end

@implementation SecTaskWrap

- (SecTaskWrap)initWithSecTaskRef:(__SecTask *)a3
{
  v4 = [(SecTaskWrap *)self init];
  if (v4)
  {
    CFRetain(a3);
    v4->_secTask = a3;
    v5 = v4;
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->_secTask);
  v3.receiver = self;
  v3.super_class = SecTaskWrap;
  [(SecTaskWrap *)&v3 dealloc];
}

@end
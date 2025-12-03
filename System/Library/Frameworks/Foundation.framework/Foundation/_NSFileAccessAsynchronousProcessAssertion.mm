@interface _NSFileAccessAsynchronousProcessAssertion
- (_NSFileAccessAsynchronousProcessAssertion)initWithPID:(int)d name:(id)name;
- (void)beginAssertion;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _NSFileAccessAsynchronousProcessAssertion

- (void)beginAssertion
{
  v9 = *MEMORY[0x1E69E9840];
  [(BKSProcessAssertion *)self->_assertion invalidate];

  self->_assertion = 0;
  v3 = _NSFCProcessMonitorLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    pid = self->_pid;
    name = self->_name;
    v6[0] = 67109378;
    v6[1] = pid;
    v7 = 2114;
    v8 = name;
    _os_log_debug_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEBUG, "Preventing suspension of pid %d for activity: %{public}@", v6, 0x12u);
  }

  self->_assertion = [objc_alloc(objc_lookUpClass("BKSProcessAssertion")) initWithPID:self->_pid flags:3 reason:4 name:self->_name withHandler:&__block_literal_global_89];
}

- (void)invalidate
{
  [(BKSProcessAssertion *)self->_assertion invalidate];

  self->_assertion = 0;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(BKSProcessAssertion *)self->_assertion invalidate];

  v3.receiver = self;
  v3.super_class = _NSFileAccessAsynchronousProcessAssertion;
  [(_NSFileAccessAsynchronousProcessAssertion *)&v3 dealloc];
}

- (_NSFileAccessAsynchronousProcessAssertion)initWithPID:(int)d name:(id)name
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _NSFileAccessAsynchronousProcessAssertion;
  v6 = [(_NSFileAccessAsynchronousProcessAssertion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_pid = d;
    v6->_name = [name copy];
  }

  return v7;
}

@end
@interface AVKeyPathDependencyManager
- (AVKeyPathDependencyManager)initWithDependencyHost:(id)a3;
- (void)dealloc;
@end

@implementation AVKeyPathDependencyManager

- (AVKeyPathDependencyManager)initWithDependencyHost:(id)a3
{
  v6 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = self;
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    NSStringFromClass(v6);
    v18 = [v9 exceptionWithName:v10 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot safely use %@ with %@ or its subclasses, due to rdar://problem/26865139, until we\x18 stop supporting legacy versions of iWork apps", v13, v14, v15, v16, v17, v12), 0}];
    objc_exception_throw(v18);
  }

  [(AVKeyPathDependencyManager *)self initWithDependencyHost:a3, &v20];
  return v20;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVKeyPathDependencyManager;
  [(AVKeyPathDependencyManager *)&v3 dealloc];
}

@end
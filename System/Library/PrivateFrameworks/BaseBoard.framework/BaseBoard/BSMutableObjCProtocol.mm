@interface BSMutableObjCProtocol
+ (id)protocolWithName:(id)a3;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addProperty:(id)a3;
- (void)removeProperty:(id)a3;
@end

@implementation BSMutableObjCProtocol

- (id)copy
{
  v3.receiver = self;
  v3.super_class = BSMutableObjCProtocol;
  return [(BSMutableObjCProtocol *)&v3 copy];
}

+ (id)protocolWithName:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"name"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v18 = v13;
      v19 = 2114;
      v20 = v15;
      v21 = 2048;
      v22 = a1;
      v23 = 2114;
      v24 = @"BSObjCRuntime.m";
      v25 = 1024;
      v26 = 1482;
      v27 = 2114;
      v28 = v12;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    qword_1EAD33B00 = [v12 UTF8String];
    __break(0);
    JUMPOUT(0x18FF41824);
  }

  v6 = [BSMutableObjCProtocol alloc];
  v7 = [v5 copy];
  name = v6->_name;
  v6->_name = v7;

  v9 = objc_opt_new();
  properties = v6->_properties;
  v6->_properties = v9;

  return v6;
}

- (void)addProperty:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v11 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"property != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      v16 = 2048;
      v17 = self;
      v18 = 2114;
      v19 = @"BSObjCRuntime.m";
      v20 = 1024;
      v21 = 1494;
      v22 = 2114;
      v23 = v6;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v10 = v6;
    qword_1EAD33B00 = [v6 UTF8String];
    __break(0);
    JUMPOUT(0x18FF41A0CLL);
  }

  [(NSMutableArray *)self->_properties addObject:v5];
  [(BSObjCProperty *)v11 _reifySelectors];
}

- (void)removeProperty:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v11 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"property != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      v16 = 2048;
      v17 = self;
      v18 = 2114;
      v19 = @"BSObjCRuntime.m";
      v20 = 1024;
      v21 = 1502;
      v22 = 2114;
      v23 = v6;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v10 = v6;
    qword_1EAD33B00 = [v6 UTF8String];
    __break(0);
    JUMPOUT(0x18FF41BE4);
  }

  [(NSMutableArray *)self->_properties removeObject:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BSObjCProtocol alloc];
  name = self->_name;
  properties = self->_properties;

  return [(BSObjCProtocol *)v4 _initWithName:0 protocol:0 parsingErrors:0 inherited:0 methods:properties properties:1 virtual:?];
}

@end
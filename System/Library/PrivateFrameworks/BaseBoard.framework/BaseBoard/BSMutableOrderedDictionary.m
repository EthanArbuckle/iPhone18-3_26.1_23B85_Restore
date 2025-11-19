@interface BSMutableOrderedDictionary
- (BSMutableOrderedDictionary)init;
- (BSMutableOrderedDictionary)initWithCapacity:(unint64_t)a3 keyOrderingStrategy:(id)a4;
- (BSMutableOrderedDictionary)initWithCoder:(id)a3;
- (BSMutableOrderedDictionary)initWithDictionary:(id)a3 keyOrderingStrategy:(id)a4;
- (BSMutableOrderedDictionary)initWithKeyOrderingStrategy:(id)a3;
- (BSMutableOrderedDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5;
- (BSOrderedDictionaryKeyStrategy)keyOrderingStrategy;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addEntriesFromDictionary:(id)a3;
- (void)addEntriesFromOrderedDictionary:(id)a3;
- (void)addObject:(id)a3 toCollectionClass:(Class)a4 forKey:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)removeAllObjects;
- (void)removeObject:(id)a3 fromCollectionForKey:(id)a4;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)removeObjectForKey:(id)a3;
- (void)removeObjectsForKeys:(id)a3;
- (void)removeObjectsInRange:(_NSRange)a3;
- (void)setKeyOrderingStrategy:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
@end

@implementation BSMutableOrderedDictionary

- (BSMutableOrderedDictionary)init
{
  v3 = +[BSOrderedDictionaryKeyStrategy sortByInsertionOrder];
  v4 = [(BSMutableOrderedDictionary *)self initWithKeyOrderingStrategy:v3];

  return v4;
}

- (BSMutableOrderedDictionary)initWithKeyOrderingStrategy:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v13 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"strategy", v15];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v33 = v17;
      v34 = 2114;
      v35 = v19;
      v36 = 2048;
      v37 = self;
      v38 = 2114;
      v39 = @"BSOrderedDictionary.m";
      v40 = 1024;
      v41 = 348;
      v42 = 2114;
      v43 = v16;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v20 = v16;
    qword_1EAD33B00 = [v16 UTF8String];
    __break(0);
    JUMPOUT(0x18FF92260);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = [v6 classForCoder];
    if (!v22)
    {
      v22 = objc_opt_class();
    }

    v23 = NSStringFromClass(v22);
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [v21 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"strategy", v23, v25];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(a2);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138544642;
      v33 = v27;
      v34 = 2114;
      v35 = v29;
      v36 = 2048;
      v37 = self;
      v38 = 2114;
      v39 = @"BSOrderedDictionary.m";
      v40 = 1024;
      v41 = 348;
      v42 = 2114;
      v43 = v26;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v30 = v26;
    qword_1EAD33B00 = [v26 UTF8String];
    __break(0);
    JUMPOUT(0x18FF923ACLL);
  }

  v31.receiver = self;
  v31.super_class = BSMutableOrderedDictionary;
  v7 = [(BSOrderedDictionary *)&v31 _initTabulaRasa];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    keys = v7->super._keys;
    v7->super._keys = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    values = v7->super._values;
    v7->super._values = v10;

    objc_storeStrong(&v7->super._keyOrderingStrategy, a3);
  }

  return v7;
}

- (BSMutableOrderedDictionary)initWithCapacity:(unint64_t)a3 keyOrderingStrategy:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (!v8)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v15 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"strategy", v17];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      v35 = v19;
      v36 = 2114;
      v37 = v21;
      v38 = 2048;
      v39 = self;
      v40 = 2114;
      v41 = @"BSOrderedDictionary.m";
      v42 = 1024;
      v43 = 360;
      v44 = 2114;
      v45 = v18;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v22 = v18;
    qword_1EAD33B00 = [v18 UTF8String];
    __break(0);
    JUMPOUT(0x18FF92684);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = MEMORY[0x1E696AEC0];
    v24 = [v8 classForCoder];
    if (!v24)
    {
      v24 = objc_opt_class();
    }

    v25 = NSStringFromClass(v24);
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = [v23 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"strategy", v25, v27];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v35 = v29;
      v36 = 2114;
      v37 = v31;
      v38 = 2048;
      v39 = self;
      v40 = 2114;
      v41 = @"BSOrderedDictionary.m";
      v42 = 1024;
      v43 = 360;
      v44 = 2114;
      v45 = v28;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v32 = v28;
    qword_1EAD33B00 = [v28 UTF8String];
    __break(0);
    JUMPOUT(0x18FF927D0);
  }

  v33.receiver = self;
  v33.super_class = BSMutableOrderedDictionary;
  v9 = [(BSOrderedDictionary *)&v33 _initTabulaRasa];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
    keys = v9->super._keys;
    v9->super._keys = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:a3];
    values = v9->super._values;
    v9->super._values = v12;

    objc_storeStrong(&v9->super._keyOrderingStrategy, a4);
  }

  return v9;
}

- (BSMutableOrderedDictionary)initWithDictionary:(id)a3 keyOrderingStrategy:(id)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v17 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"dictionary", v19];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v59 = v21;
      v60 = 2114;
      v61 = v23;
      v62 = 2048;
      v63 = self;
      v64 = 2114;
      v65 = @"BSOrderedDictionary.m";
      v66 = 1024;
      v67 = 372;
      v68 = 2114;
      v69 = v20;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v24 = v20;
    qword_1EAD33B00 = [v20 UTF8String];
    __break(0);
    JUMPOUT(0x18FF92B38);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = [v7 classForCoder];
    if (!v26)
    {
      v26 = objc_opt_class();
    }

    v27 = NSStringFromClass(v26);
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [v25 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"dictionary", v27, v29];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = NSStringFromSelector(a2);
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138544642;
      v59 = v31;
      v60 = 2114;
      v61 = v33;
      v62 = 2048;
      v63 = self;
      v64 = 2114;
      v65 = @"BSOrderedDictionary.m";
      v66 = 1024;
      v67 = 372;
      v68 = 2114;
      v69 = v30;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v34 = v30;
    qword_1EAD33B00 = [v30 UTF8String];
    __break(0);
    JUMPOUT(0x18FF92C84);
  }

  v8 = a4;
  if (!v8)
  {
    v35 = MEMORY[0x1E696AEC0];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = [v35 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"strategy", v37];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(a2);
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      *buf = 138544642;
      v59 = v39;
      v60 = 2114;
      v61 = v41;
      v62 = 2048;
      v63 = self;
      v64 = 2114;
      v65 = @"BSOrderedDictionary.m";
      v66 = 1024;
      v67 = 373;
      v68 = 2114;
      v69 = v38;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v42 = v38;
    qword_1EAD33B00 = [v38 UTF8String];
    __break(0);
    JUMPOUT(0x18FF92DACLL);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v43 = MEMORY[0x1E696AEC0];
    v44 = [v8 classForCoder];
    if (!v44)
    {
      v44 = objc_opt_class();
    }

    v45 = NSStringFromClass(v44);
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    v48 = [v43 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"strategy", v45, v47];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v49 = NSStringFromSelector(a2);
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      *buf = 138544642;
      v59 = v49;
      v60 = 2114;
      v61 = v51;
      v62 = 2048;
      v63 = self;
      v64 = 2114;
      v65 = @"BSOrderedDictionary.m";
      v66 = 1024;
      v67 = 373;
      v68 = 2114;
      v69 = v48;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v52 = v48;
    qword_1EAD33B00 = [v48 UTF8String];
    __break(0);
    JUMPOUT(0x18FF92EF8);
  }

  v9 = -[BSMutableOrderedDictionary initWithCapacity:keyOrderingStrategy:](self, "initWithCapacity:keyOrderingStrategy:", [v7 count], v8);
  if (v9)
  {
    [v7 allKeys];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v10 = v54 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v11)
    {
      v12 = *v54;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v54 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v53 + 1) + 8 * i);
          v15 = [v7 objectForKey:v14];
          [(BSMutableOrderedDictionary *)v9 setObject:v15 forKey:v14];
        }

        v11 = [v10 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v11);
    }
  }

  return v9;
}

- (BSMutableOrderedDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", a4, a5, @"objects != ((void*)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138544642;
      v31 = v16;
      v32 = 2114;
      v33 = v18;
      v34 = 2048;
      v35 = self;
      v36 = 2114;
      v37 = @"BSOrderedDictionary.m";
      v38 = 1024;
      v39 = 386;
      v40 = 2114;
      v41 = v15;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v19 = v15;
    qword_1EAD33B00 = [v15 UTF8String];
    __break(0);
    JUMPOUT(0x18FF9322CLL);
  }

  v7 = a4;
  if (!a4)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", 0, a5, @"keys != ((void*)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v31 = v21;
      v32 = 2114;
      v33 = v23;
      v34 = 2048;
      v35 = self;
      v36 = 2114;
      v37 = @"BSOrderedDictionary.m";
      v38 = 1024;
      v39 = 387;
      v40 = 2114;
      v41 = v20;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v24 = v20;
    qword_1EAD33B00 = [v20 UTF8String];
    __break(0);
    JUMPOUT(0x18FF93334);
  }

  v8 = a5;
  if (!a5)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"count > 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(a2);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138544642;
      v31 = v26;
      v32 = 2114;
      v33 = v28;
      v34 = 2048;
      v35 = self;
      v36 = 2114;
      v37 = @"BSOrderedDictionary.m";
      v38 = 1024;
      v39 = 388;
      v40 = 2114;
      v41 = v25;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v29 = v25;
    qword_1EAD33B00 = [v25 UTF8String];
    __break(0);
    JUMPOUT(0x18FF9343CLL);
  }

  v9 = a3;
  v10 = +[BSOrderedDictionaryKeyStrategy sortByInsertionOrder];
  v11 = [(BSMutableOrderedDictionary *)self initWithCapacity:v8 keyOrderingStrategy:v10];

  if (v11)
  {
    do
    {
      v12 = *v7;
      v13 = *v9;
      [(BSMutableOrderedDictionary *)v11 setObject:v13 forKey:v12];

      ++v9;
      ++v7;
      --v8;
    }

    while (v8);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BSOrderedDictionary alloc];

  return [(BSOrderedDictionary *)v4 _initWithCopyOfOrderedDictionary:?];
}

- (BSMutableOrderedDictionary)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = BSMutableOrderedDictionary;
  return [(BSOrderedDictionary *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = BSMutableOrderedDictionary;
  [(BSOrderedDictionary *)&v3 encodeWithCoder:a3];
}

- (BSOrderedDictionaryKeyStrategy)keyOrderingStrategy
{
  keyOrderingStrategy = self->super._keyOrderingStrategy;
  if (keyOrderingStrategy)
  {
    v3 = keyOrderingStrategy;
  }

  else
  {
    v3 = +[BSOrderedDictionaryKeyStrategy sortByInsertionOrder];
  }

  return v3;
}

- (void)setKeyOrderingStrategy:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[BSOrderedDictionaryKeyStrategy sortByInsertionOrder];
  }

  if (self->super._keyOrderingStrategy != v4)
  {
    v11 = v4;
    objc_storeStrong(&self->super._keyOrderingStrategy, v4);
    v5 = [(BSOrderedDictionaryKeyStrategy *)v11 limitCount];
    if (v5 >= 1 && ([(BSOrderedDictionary *)self count]- v5) >= 1)
    {
      [(BSMutableOrderedDictionary *)self removeObjectsInRange:0];
    }

    v4 = v11;
    if (v11->_keyComparator)
    {
      v6 = [(BSOrderedDictionary *)self sortedDictionaryUsingComparator:?];
      v7 = [v6[1] mutableCopy];
      keys = self->super._keys;
      self->super._keys = v7;

      v9 = [v6[2] mutableCopy];
      values = self->super._values;
      self->super._values = v9;

      v4 = v11;
    }
  }
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = [(BSOrderedDictionary *)self count];
  if (self)
  {
    if (!a4)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"inKey != ((void *)0)"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(sel__setObject_forKey_atIndex_);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138544642;
        v35 = v19;
        v36 = 2114;
        v37 = v21;
        v38 = 2048;
        v39 = self;
        v40 = 2114;
        v41 = @"BSOrderedDictionary.m";
        v42 = 1024;
        v43 = 457;
        v44 = 2114;
        v45 = v18;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v22 = v18;
      qword_1EAD33B00 = [v18 UTF8String];
      __break(0);
      JUMPOUT(0x18FF939D0);
    }

    if (!a3)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"object != ((void *)0)"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(sel__setObject_forKey_atIndex_);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138544642;
        v35 = v24;
        v36 = 2114;
        v37 = v26;
        v38 = 2048;
        v39 = self;
        v40 = 2114;
        v41 = @"BSOrderedDictionary.m";
        v42 = 1024;
        v43 = 458;
        v44 = 2114;
        v45 = v23;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v27 = v23;
      qword_1EAD33B00 = [v23 UTF8String];
      __break(0);
      JUMPOUT(0x18FF93AD8);
    }

    v8 = v7;
    v9 = [(BSOrderedDictionary *)self count];
    if (v9 < v8)
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx:%d greater than count:%d", v8, v9];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromSelector(sel__setObject_forKey_atIndex_);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138544642;
        v35 = v29;
        v36 = 2114;
        v37 = v31;
        v38 = 2048;
        v39 = self;
        v40 = 2114;
        v41 = @"BSOrderedDictionary.m";
        v42 = 1024;
        v43 = 460;
        v44 = 2114;
        v45 = v28;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v32 = v28;
      qword_1EAD33B00 = [v28 UTF8String];
      __break(0);
      JUMPOUT(0x18FF93BD8);
    }

    v33 = [a4 copyWithZone:0];
    v10 = self->super._keys;
    v11 = self->super._values;
    v12 = [(NSDictionary *)v11 objectForKey:v33];
    if (v12)
    {
      v13 = [(NSArray *)v10 indexOfObject:v33];
      [(NSArray *)v10 removeObjectAtIndex:v13];
      [(NSDictionary *)v11 removeObjectForKey:v33];
      --v9;
      v8 -= v13 <= v8;
    }

    v14 = [(BSOrderedDictionaryKeyStrategy *)self->super._keyOrderingStrategy limitCount];
    if (v14 >= 1)
    {
      v15 = v9 - v14 + 1;
      if (v15 >= 1)
      {
        [(BSMutableOrderedDictionary *)self removeObjectsInRange:0, v15];
        if (v8 <= v15)
        {
          v16 = 0;
        }

        else
        {
          v16 = v15;
        }

        v8 -= v16;
      }
    }

    keyOrderingStrategy = self->super._keyOrderingStrategy;
    if (keyOrderingStrategy && keyOrderingStrategy->_keyComparator)
    {
      v8 = [(NSArray *)v10 indexOfObject:v33 inSortedRange:0 options:[(NSArray *)v10 count] usingComparator:1024, self->super._keyOrderingStrategy->_keyComparator];
    }

    [(NSArray *)v10 insertObject:v33 atIndex:v8];
    [(NSDictionary *)v11 setObject:a3 forKey:v33];
  }
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  if (a3)
  {
    [(BSMutableOrderedDictionary *)self setObject:a3 forKey:a4];
  }

  else
  {
    [(BSMutableOrderedDictionary *)self removeObjectForKey:a4];
  }
}

- (void)addEntriesFromOrderedDictionary:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"otherDictionary", v8];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v26 = v10;
      v27 = 2114;
      v28 = v12;
      v29 = 2048;
      v30 = self;
      v31 = 2114;
      v32 = @"BSOrderedDictionary.m";
      v33 = 1024;
      v34 = 518;
      v35 = 2114;
      v36 = v9;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    qword_1EAD33B00 = [v9 UTF8String];
    __break(0);
    JUMPOUT(0x18FF93EC4);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [v5 classForCoder];
    if (!v15)
    {
      v15 = objc_opt_class();
    }

    v16 = NSStringFromClass(v15);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v14 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"otherDictionary", v16, v18];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v26 = v20;
      v27 = 2114;
      v28 = v22;
      v29 = 2048;
      v30 = self;
      v31 = 2114;
      v32 = @"BSOrderedDictionary.m";
      v33 = 1024;
      v34 = 518;
      v35 = 2114;
      v36 = v19;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v23 = v19;
    qword_1EAD33B00 = [v19 UTF8String];
    __break(0);
    JUMPOUT(0x18FF94010);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __62__BSMutableOrderedDictionary_addEntriesFromOrderedDictionary___block_invoke;
  v24[3] = &unk_1E72CC5C8;
  v24[4] = self;
  [v5 enumerateKeysAndObjectsWithIndexesUsingBlock:v24];
}

- (void)addEntriesFromDictionary:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"otherDictionary", v8];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v26 = v10;
      v27 = 2114;
      v28 = v12;
      v29 = 2048;
      v30 = self;
      v31 = 2114;
      v32 = @"BSOrderedDictionary.m";
      v33 = 1024;
      v34 = 527;
      v35 = 2114;
      v36 = v9;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    qword_1EAD33B00 = [v9 UTF8String];
    __break(0);
    JUMPOUT(0x18FF942A8);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [v5 classForCoder];
    if (!v15)
    {
      v15 = objc_opt_class();
    }

    v16 = NSStringFromClass(v15);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v14 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"otherDictionary", v16, v18];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v26 = v20;
      v27 = 2114;
      v28 = v22;
      v29 = 2048;
      v30 = self;
      v31 = 2114;
      v32 = @"BSOrderedDictionary.m";
      v33 = 1024;
      v34 = 527;
      v35 = 2114;
      v36 = v19;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v23 = v19;
    qword_1EAD33B00 = [v19 UTF8String];
    __break(0);
    JUMPOUT(0x18FF943F4);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __55__BSMutableOrderedDictionary_addEntriesFromDictionary___block_invoke;
  v24[3] = &unk_1E72CC5F0;
  v24[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v24];
}

- (void)addObject:(id)a3 toCollectionClass:(Class)a4 forKey:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != a4 && objc_opt_class() != a4 && objc_opt_class() != a4)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' must be NSMutableSet, NSMutableOrderedSet, or NSMutableArray, not (%@)", a5, a4];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v17 = v11;
      v18 = 2114;
      v19 = v13;
      v20 = 2048;
      v21 = self;
      v22 = 2114;
      v23 = @"BSOrderedDictionary.m";
      v24 = 1024;
      v25 = 536;
      v26 = 2114;
      v27 = v10;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v14 = v10;
    qword_1EAD33B00 = [v10 UTF8String];
    __break(0);
    JUMPOUT(0x18FF94688);
  }

  v15 = [(BSOrderedDictionary *)self objectForKey:a5];
  if (!v15)
  {
    v15 = objc_alloc_init(a4);
    [(BSMutableOrderedDictionary *)self setObject:v15 forKey:a5];
  }

  [v15 addObject:a3];
}

- (void)removeObject:(id)a3 fromCollectionForKey:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v13 = [(BSOrderedDictionary *)self objectForKey:a4];
    if (v13)
    {
      if ((_NSIsNSSet() & 1) == 0 && (_NSIsNSOrderedSet() & 1) == 0 && (_NSIsNSArray() & 1) == 0)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' must be NSMutableSet, NSMutableOrderedSet, or NSMutableArray, not (%@)", a4, objc_opt_class()];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v9 = NSStringFromSelector(a2);
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          *buf = 138544642;
          v15 = v9;
          v16 = 2114;
          v17 = v11;
          v18 = 2048;
          v19 = self;
          v20 = 2114;
          v21 = @"BSOrderedDictionary.m";
          v22 = 1024;
          v23 = 553;
          v24 = 2114;
          v25 = v8;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v12 = v8;
        qword_1EAD33B00 = [v8 UTF8String];
        __break(0);
        JUMPOUT(0x18FF948D8);
      }

      [v13 removeObject:a3];
      if (![v13 count])
      {
        [(BSMutableOrderedDictionary *)self removeObjectForKey:a4];
      }
    }
  }
}

- (void)removeObjectForKey:(id)a3
{
  if (a3)
  {
    v6 = self->super._keys;
    v5 = self->super._values;
    [(NSArray *)v6 removeObject:a3];
    [(NSDictionary *)v5 removeObjectForKey:a3];
  }
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  v7 = self->super._keys;
  v5 = self->super._values;
  v6 = [(NSArray *)v7 objectAtIndex:a3];
  [(NSArray *)v7 removeObject:v6];
  [(NSDictionary *)v5 removeObjectForKey:v6];
}

- (void)removeObjectsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v52 = *MEMORY[0x1E69E9840];
  if (a3.location >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = NSStringFromRange(a3);
    v14 = [v12 stringWithFormat:@"range.location too large: %@", v13];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v41 = v15;
      v42 = 2114;
      v43 = v17;
      v44 = 2048;
      v45 = self;
      v46 = 2114;
      v47 = @"BSOrderedDictionary.m";
      v48 = 1024;
      v49 = 583;
      v50 = 2114;
      v51 = v14;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    qword_1EAD33B00 = [v14 UTF8String];
    __break(0);
    JUMPOUT(0x18FF94D24);
  }

  if (a3.length >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = NSStringFromRange(a3);
    v21 = [v19 stringWithFormat:@"range.length too large: %@", v20];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138544642;
      v41 = v22;
      v42 = 2114;
      v43 = v24;
      v44 = 2048;
      v45 = self;
      v46 = 2114;
      v47 = @"BSOrderedDictionary.m";
      v48 = 1024;
      v49 = 584;
      v50 = 2114;
      v51 = v21;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v25 = v21;
    qword_1EAD33B00 = [v21 UTF8String];
    __break(0);
    JUMPOUT(0x18FF94E40);
  }

  v7 = [(BSOrderedDictionary *)self count];
  if (location + length > v7)
  {
    v26 = v7;
    v27 = MEMORY[0x1E696AEC0];
    v54.location = location;
    v54.length = length;
    v28 = NSStringFromRange(v54);
    v29 = [v27 stringWithFormat:@"range (%@) exceeds self.count (%d)", v28, v26];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(a2);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138544642;
      v41 = v30;
      v42 = 2114;
      v43 = v32;
      v44 = 2048;
      v45 = self;
      v46 = 2114;
      v47 = @"BSOrderedDictionary.m";
      v48 = 1024;
      v49 = 586;
      v50 = 2114;
      v51 = v29;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v33 = v29;
    qword_1EAD33B00 = [v29 UTF8String];
    __break(0);
    JUMPOUT(0x18FF94F60);
  }

  v39 = self->super._keys;
  v8 = self->super._values;
  if (location || length != [(BSOrderedDictionary *)self count])
  {
    if (length)
    {
      if (length == 1)
      {
        v9 = [(NSArray *)v39 objectAtIndex:location];
        [(NSArray *)v39 removeObjectAtIndex:location];
        [(NSDictionary *)v8 removeObjectForKey:v9];
      }

      else
      {
        v10 = malloc_type_malloc(8 * length, 0x80040B8603338uLL);
        if (!v10)
        {
          v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unix can't run out of memory! you will regret this! (failed to allocate for %d items)", length];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v35 = NSStringFromSelector(a2);
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            *buf = 138544642;
            v41 = v35;
            v42 = 2114;
            v43 = v37;
            v44 = 2048;
            v45 = self;
            v46 = 2114;
            v47 = @"BSOrderedDictionary.m";
            v48 = 1024;
            v49 = 602;
            v50 = 2114;
            v51 = v34;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v38 = v34;
          qword_1EAD33B00 = [v34 UTF8String];
          __break(0);
          JUMPOUT(0x18FF95060);
        }

        [(NSArray *)v39 getObjects:v10 range:location, length];
        [(NSArray *)v39 removeObjectsInRange:location, length];
        for (i = 0; i != length; ++i)
        {
          [(NSDictionary *)v8 removeObjectForKey:v10[i]];
        }

        free(v10);
      }
    }
  }

  else
  {
    [(NSArray *)v39 removeAllObjects];
    [(NSDictionary *)v8 removeAllObjects];
  }
}

- (void)removeAllObjects
{
  v4 = self->super._keys;
  v3 = self->super._values;
  [(NSArray *)v4 removeAllObjects];
  [(NSDictionary *)v3 removeAllObjects];
}

- (void)removeObjectsForKeys:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [(BSMutableOrderedDictionary *)self removeObjectForKey:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end
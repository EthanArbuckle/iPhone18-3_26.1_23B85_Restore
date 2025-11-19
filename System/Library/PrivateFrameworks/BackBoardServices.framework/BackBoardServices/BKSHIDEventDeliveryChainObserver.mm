@interface BKSHIDEventDeliveryChainObserver
- (BKSHIDEventDeliveryChainObserver)init;
- (BKSHIDEventDeliveryChainObserver)initWithDisplay:(id)a3 environment:(id)a4;
- (id)addChainObserver:(id)a3;
@end

@implementation BKSHIDEventDeliveryChainObserver

- (id)addChainObserver:(id)a3
{
  v4 = a3;
  v5 = +[BKSHIDEventObserver sharedInstance];
  v6 = [v5 addObservingClient:v4 forChainObserver:self];

  return v6;
}

- (BKSHIDEventDeliveryChainObserver)initWithDisplay:(id)a3 environment:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v51.receiver = self;
  v51.super_class = BKSHIDEventDeliveryChainObserver;
  v10 = [(BKSHIDEventDeliveryChainObserver *)&v51 init];
  if (v10)
  {
    v11 = v8;
    if (!v11)
    {
      v19 = MEMORY[0x1E696AEC0];
      objc_opt_class();
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = [v19 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"display", v21];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = NSStringFromSelector(a2);
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138544642;
        v53 = v23;
        v54 = 2114;
        v55 = v25;
        v56 = 2048;
        v57 = v10;
        v58 = 2114;
        v59 = @"BKSHIDEventDeliveryChainObserver.m";
        v60 = 1024;
        v61 = 30;
        v62 = 2114;
        v63 = v22;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v22 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18635A9DCLL);
    }

    v12 = v11;
    objc_opt_class();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = MEMORY[0x1E696AEC0];
      v27 = [v12 classForCoder];
      if (!v27)
      {
        v27 = objc_opt_class();
      }

      v28 = NSStringFromClass(v27);
      objc_opt_class();
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = [v26 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"display", v28, v30];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v32 = NSStringFromSelector(a2);
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *buf = 138544642;
        v53 = v32;
        v54 = 2114;
        v55 = v34;
        v56 = 2048;
        v57 = v10;
        v58 = 2114;
        v59 = @"BKSHIDEventDeliveryChainObserver.m";
        v60 = 1024;
        v61 = 30;
        v62 = 2114;
        v63 = v31;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v31 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18635AB1CLL);
    }

    v13 = v9;
    if (!v13)
    {
      v35 = MEMORY[0x1E696AEC0];
      objc_opt_class();
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = [v35 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"deferringEnvironment", v37];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v39 = NSStringFromSelector(a2);
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        *buf = 138544642;
        v53 = v39;
        v54 = 2114;
        v55 = v41;
        v56 = 2048;
        v57 = v10;
        v58 = 2114;
        v59 = @"BKSHIDEventDeliveryChainObserver.m";
        v60 = 1024;
        v61 = 31;
        v62 = 2114;
        v63 = v38;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v38 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18635AC38);
    }

    v14 = v13;
    objc_opt_class();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v42 = MEMORY[0x1E696AEC0];
      v43 = [v14 classForCoder];
      if (!v43)
      {
        v43 = objc_opt_class();
      }

      v44 = NSStringFromClass(v43);
      objc_opt_class();
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = [v42 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"deferringEnvironment", v44, v46];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v48 = NSStringFromSelector(a2);
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        *buf = 138544642;
        v53 = v48;
        v54 = 2114;
        v55 = v50;
        v56 = 2048;
        v57 = v10;
        v58 = 2114;
        v59 = @"BKSHIDEventDeliveryChainObserver.m";
        v60 = 1024;
        v61 = 31;
        v62 = 2114;
        v63 = v47;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v47 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18635AD78);
    }

    objc_storeStrong(&v10->_display, a3);
    objc_storeStrong(&v10->_deferringEnvironment, a4);
    v15 = [[BKSEventDeferringChainIdentity alloc] initWithDisplay:v10->_display environment:v10->_deferringEnvironment];
    chainIdentity = v10->_chainIdentity;
    v10->_chainIdentity = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BKSHIDEventDeliveryChainObserver)init
{
  v3 = +[BKSHIDEventDisplay nullDisplay];
  v4 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
  v5 = [(BKSHIDEventDeliveryChainObserver *)self initWithDisplay:v3 environment:v4];

  return v5;
}

@end
@interface BSXPCAutoCoder
- (BSXPCAutoCoder)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BSXPCAutoCoder

- (BSXPCAutoCoder)initWithCoder:(id)coder
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = objc_autoreleasePoolPush();
  BSXPCObjectBaseClass();
  if (objc_opt_isKindOfClass())
  {
    coder = [BSXPCCoder coderWithMessage:coder];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      supportedCodings = [v6 supportedCodings];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (([supportedCodings containsObject:&unk_1F03C7E30] & 1) == 0)
        {
          [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
        }
      }

      else if (([supportedCodings containsObject:&unk_1F03BA528] & 1) == 0)
      {
        [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
      }
    }
  }

  _BSXPCDecodeIvarsForObject(self, coder);
  AssociatedObject = objc_getAssociatedObject(v6, sel_decodeWithCoder_);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [AssociatedObject countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(AssociatedObject);
        }

        ([*(*(&v24 + 1) + 8 * v13++) pointerValue])(self, sel_decodeWithCoder_, coder);
      }

      while (v11 != v13);
      v11 = [AssociatedObject countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v11);
  }

  v14 = objc_getAssociatedObject(v6, sel_awakeFromCoder);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        ([*(*(&v20 + 1) + 8 * v18++) pointerValue])(self, sel_awakeFromCoder);
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }

  objc_autoreleasePoolPop(v7);
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  v39 = *MEMORY[0x1E69E9840];
  if (sel_encodeWithCoder_ == a2 && objc_getAssociatedObject(self, sel_encodeWithCoder_))
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"calling -[super %@] is not supported", NSStringFromSelector(a2)];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BSXPCAutoCoder encodeWithCoder:]"];
      v31 = 2114;
      v32 = @"BSXPCAutoCoding.m";
      v33 = 1024;
      *v34 = 551;
      *&v34[4] = 2114;
      *&v34[6] = v20;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v20 UTF8String];
    __break(0);
    JUMPOUT(0x18FF60328);
  }

  v6 = objc_opt_class();
  v7 = objc_autoreleasePoolPush();
  BSXPCObjectBaseClass();
  if (objc_opt_isKindOfClass())
  {
    coder = [BSXPCCoder coderWithMessage:coder];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      supportedCodings = [v6 supportedCodings];
      if (isKindOfClass)
      {
        if (([supportedCodings containsObject:&unk_1F03C7E30] & 1) == 0)
        {
          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ does not support %@", v6, NSStringFromProtocol(&unk_1F03C7E30)];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v11 = NSStringFromSelector(a2);
            v12 = objc_opt_class();
            *buf = 138544642;
            v30 = v11;
            v31 = 2114;
            v32 = NSStringFromClass(v12);
            v33 = 2048;
            *v34 = self;
            *&v34[8] = 2114;
            *&v34[10] = @"BSXPCAutoCoding.m";
            v35 = 1024;
            v36 = 561;
            v37 = 2114;
            v38 = v10;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          qword_1EAD33B00 = [v10 UTF8String];
          __break(0);
          JUMPOUT(0x18FF60110);
        }
      }

      else if (([supportedCodings containsObject:&unk_1F03BA528] & 1) == 0)
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ does not support %@", v6, NSStringFromProtocol(&unk_1F03BA528)];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v22 = NSStringFromSelector(a2);
          v23 = objc_opt_class();
          *buf = 138544642;
          v30 = v22;
          v31 = 2114;
          v32 = NSStringFromClass(v23);
          v33 = 2048;
          *v34 = self;
          *&v34[8] = 2114;
          *&v34[10] = @"BSXPCAutoCoding.m";
          v35 = 1024;
          v36 = 563;
          v37 = 2114;
          v38 = v21;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        qword_1EAD33B00 = [v21 UTF8String];
        __break(0);
        JUMPOUT(0x18FF6040CLL);
      }
    }
  }

  v13 = [(BSXPCAutoCoder *)self replacementObjectForCoder:coder];
  _BSXPCEncodeIvarsForObject(v13, coder);
  AssociatedObject = objc_getAssociatedObject(v6, sel_encodeWithCoder_);
  if (AssociatedObject)
  {
    v15 = AssociatedObject;
    if (sel_encodeWithCoder_ == a2)
    {
      objc_setAssociatedObject(v13, sel_encodeWithCoder_, *MEMORY[0x1E695E4D0], 0);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        v19 = 0;
        do
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          ([*(*(&v24 + 1) + 8 * v19++) pointerValue])(v13, sel_encodeWithCoder_, coder);
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }

    if (sel_encodeWithCoder_ == a2)
    {
      objc_setAssociatedObject(v13, sel_encodeWithCoder_, 0, 0);
    }
  }

  objc_autoreleasePoolPop(v7);
}

@end
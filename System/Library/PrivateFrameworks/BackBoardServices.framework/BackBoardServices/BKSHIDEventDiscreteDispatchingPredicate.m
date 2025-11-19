@interface BKSHIDEventDiscreteDispatchingPredicate
- (BKSHIDEventDiscreteDispatchingPredicate)init;
- (BKSHIDEventDiscreteDispatchingPredicate)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)specifiesDescriptor:(id)a3;
- (id)_initWithSourceDescriptors:(id)a3 descriptors:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventDiscreteDispatchingPredicate

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E690] collectionLineBreakNoneStyle];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__BKSHIDEventDiscreteDispatchingPredicate_appendDescriptionToStream___block_invoke;
  v7[3] = &unk_1E6F47C78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v6 overlayStyle:v5 block:v7];
}

void __69__BKSHIDEventDiscreteDispatchingPredicate_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    if ([v2 count])
    {
      v3 = [*(*(a1 + 32) + 8) allObjects];
      v4 = [*(a1 + 40) appendObject:v3 withName:@"senders"];

      goto LABEL_7;
    }

    v5 = *(a1 + 40);
    v6 = @"(match none)";
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = @"(match all)";
  }

  v7 = [v5 appendObject:v6 withName:@"senders"];
LABEL_7:
  v8 = [*(*(a1 + 32) + 16) allObjects];
  [BKSHIDEventDescriptor appendDescriptorArray:v8 toDescriptionStream:*(a1 + 40)];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ((v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class())) && (senderDescriptors = self->_senderDescriptors, v8 = v4->_senderDescriptors, BSEqualObjects()))
    {
      descriptors = self->_descriptors;
      v10 = v4->_descriptors;
      v11 = BSEqualObjects();
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BKSHIDEventDiscreteDispatchingPredicate)initWithCoder:(id)a3
{
  v44[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class()))
  {
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v14 forKey:@"senderDescriptors"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v9 bs_containsObjectPassingTest:&__block_literal_global_22_10169])
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = *MEMORY[0x1E696A250];
        v43 = *MEMORY[0x1E696A588];
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDiscreteDispatchingPredicate: senderDescriptors contains non-BKSHIDEventSenderDescriptor elements : %@", v9];
        v44[0] = v10;
        v17 = MEMORY[0x1E695DF20];
        v18 = v44;
        v19 = &v43;
LABEL_9:
        v20 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
        v21 = [v15 errorWithDomain:v16 code:4866 userInfo:v20];
        [v4 failWithError:v21];

LABEL_15:
        goto LABEL_16;
      }
    }

    else if (v9)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A250];
      v41 = *MEMORY[0x1E696A588];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDiscreteDispatchingPredicate: senderDescriptors not of class NSSet : %@", v9];
      v42 = v10;
      v17 = MEMORY[0x1E695DF20];
      v18 = &v42;
      v19 = &v41;
      goto LABEL_9;
    }

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v24 forKey:@"descriptors"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![v10 bs_containsObjectPassingTest:&__block_literal_global_33])
      {
        self = [(BKSHIDEventDiscreteDispatchingPredicate *)self _initWithSourceDescriptors:v9 descriptors:v10];
        v32 = self;
        goto LABEL_17;
      }

      v25 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A250];
      v39 = *MEMORY[0x1E696A588];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDiscreteDispatchingPredicate: descriptors contains non-BKSHIDEventDescriptor elements : %@", v10];
      v40 = v20;
      v27 = MEMORY[0x1E695DF20];
      v28 = &v40;
      v29 = &v39;
    }

    else
    {
      v25 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A250];
      v37 = *MEMORY[0x1E696A588];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDiscreteDispatchingPredicate: descriptors not of class NSSet : %@", v10];
      v38 = v20;
      v27 = MEMORY[0x1E695DF20];
      v28 = &v38;
      v29 = &v37;
    }

    v30 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];
    v31 = [v25 errorWithDomain:v26 code:4866 userInfo:v30];
    [v4 failWithError:v31];

    goto LABEL_15;
  }

  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A250];
  v35 = *MEMORY[0x1E696A588];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDiscreteDispatchingPredicate: subclasses are not allowed : %@", objc_opt_class()];
  v36 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v11 = [v7 errorWithDomain:v8 code:4866 userInfo:v10];
  [v4 failWithError:v11];

LABEL_16:
  v32 = 0;
LABEL_17:

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

BOOL __57__BKSHIDEventDiscreteDispatchingPredicate_initWithCoder___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

BOOL __57__BKSHIDEventDiscreteDispatchingPredicate_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)encodeWithCoder:(id)a3
{
  senderDescriptors = self->_senderDescriptors;
  v5 = a3;
  [v5 encodeObject:senderDescriptors forKey:@"senderDescriptors"];
  [v5 encodeObject:self->_descriptors forKey:@"descriptors"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKSMutableHIDEventDiscreteDispatchingPredicate allocWithZone:a3];
  senderDescriptors = self->_senderDescriptors;
  descriptors = self->_descriptors;

  return [(BKSHIDEventDiscreteDispatchingPredicate *)v4 _initWithSourceDescriptors:senderDescriptors descriptors:descriptors];
}

- (BOOL)specifiesDescriptor:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSSet *)self->_descriptors containsObject:v4])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_fuzzyDescriptors;
    v5 = [(NSSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v11 + 1) + 8 * i) describes:{v4, v11}])
          {
            LOBYTE(v5) = 1;
            goto LABEL_13;
          }
        }

        v5 = [(NSSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

id __51__BKSHIDEventDiscreteDispatchingPredicate_displays__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 associatedDisplay];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[BKSHIDEventDisplay nullDisplay];
  }

  v5 = v4;

  return v5;
}

- (id)_initWithSourceDescriptors:(id)a3 descriptors:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  if (v9 != objc_opt_class())
  {
    v10 = objc_opt_class();
    if (v10 != objc_opt_class())
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventDiscreteDispatchingPredicate cannot be subclassed"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromSelector(a2);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138544642;
        v39 = v29;
        v40 = 2114;
        v41 = v31;
        v42 = 2048;
        v43 = self;
        v44 = 2114;
        v45 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
        v46 = 1024;
        v47 = 45;
        v48 = 2114;
        v49 = v28;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v28 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639E75CLL);
    }
  }

  v36.receiver = self;
  v36.super_class = BKSHIDEventDiscreteDispatchingPredicate;
  v11 = [(BKSHIDEventDiscreteDispatchingPredicate *)&v36 init];
  if (v11)
  {
    v12 = [v7 copy];
    senderDescriptors = v11->_senderDescriptors;
    v11->_senderDescriptors = v12;

    v14 = [v8 copy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [MEMORY[0x1E695DFD8] set];
    }

    descriptors = v11->_descriptors;
    v11->_descriptors = v16;

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v33;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v32 + 1) + 8 * i);
          if ([v24 requiresFuzzyMatching])
          {
            if (!v21)
            {
              v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            }

            [(NSSet *)v21 addObject:v24];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v20);
    }

    else
    {
      v21 = 0;
    }

    fuzzyDescriptors = v11->_fuzzyDescriptors;
    v11->_fuzzyDescriptors = v21;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BKSHIDEventDiscreteDispatchingPredicate)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BKSHIDEventDiscreteDispatchingPredicate"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
    v17 = 1024;
    v18 = 40;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end
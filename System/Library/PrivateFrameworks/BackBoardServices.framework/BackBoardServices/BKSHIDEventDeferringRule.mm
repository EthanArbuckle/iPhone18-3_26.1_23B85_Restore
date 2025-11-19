@interface BKSHIDEventDeferringRule
- (BKSHIDEventDeferringRule)init;
- (BKSHIDEventDeferringRule)initWithCoder:(id)a3;
- (BOOL)eventDescriptorIsRestricted:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithPredicate:(id)a3 restrictedToEventDescriptors:(id)a4 target:(id)a5 reason:(id)a6 identity:(id)a7;
- (int64_t)mostRecentFirstCompare:(id)a3;
- (int64_t)weightedDeferringRuleCompare:(id)a3;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventDeferringRule

- (void)appendDescriptionToFormatter:(id)a3
{
  v9 = a3;
  v4 = [v9 appendObject:self->_identity withName:0];
  v5 = [v9 appendObject:self->_predicate withName:0];
  restrictedToEventDescriptors = self->_restrictedToEventDescriptors;
  if (restrictedToEventDescriptors)
  {
    v7 = [v9 appendObject:restrictedToEventDescriptors withName:0];
  }

  [v9 appendRightArrow];
  v8 = [v9 appendObject:self->_target withName:0];
  [v9 appendString:self->_reason withName:@"reason"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 != objc_opt_class())
    {
      goto LABEL_8;
    }

    identity = self->_identity;
    v7 = v4->_identity;
    if (!BSEqualObjects())
    {
      goto LABEL_8;
    }

    predicate = self->_predicate;
    v9 = v4->_predicate;
    if (BSEqualObjects() && (restrictedToEventDescriptors = self->_restrictedToEventDescriptors, v11 = v4->_restrictedToEventDescriptors, BSEqualObjects()) && (target = self->_target, v13 = v4->_target, BSEqualObjects()))
    {
      reason = self->_reason;
      v15 = v4->_reason;
      v16 = BSEqualObjects();
    }

    else
    {
LABEL_8:
      v16 = 0;
    }
  }

  return v16;
}

- (BKSHIDEventDeferringRule)initWithCoder:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
    v9 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"descriptors"];
    v10 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"target"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ident"];
    v15 = v14;
    if (v8 && v12 && v13 && v14)
    {
      self = [(BKSHIDEventDeferringRule *)self _initWithPredicate:v8 restrictedToEventDescriptors:v10 target:v12 reason:v13 identity:v14];
      v11 = self;
    }

    else
    {
      v21 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A250];
      v25 = *MEMORY[0x1E696A588];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDeferringRule: invalid predicate, target or reason : predicate=%@ target=%@ reason=%@", v8, v12, v13];
      v26[0] = v22;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v17 = [v21 errorWithDomain:v20 code:4866 userInfo:v16];
      [v4 failWithError:v17];

      v11 = 0;
    }
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A250];
    v23 = *MEMORY[0x1E696A588];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDeferringRule: subclasses are not allowed : %@", objc_opt_class()];
    v24 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v10 = [v6 errorWithDomain:v7 code:4866 userInfo:v9];
    [v4 failWithError:v10];
    v11 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  predicate = self->_predicate;
  v6 = a3;
  [v6 encodeObject:predicate forKey:@"predicate"];
  v5 = [(NSSet *)self->_restrictedToEventDescriptors allObjects];
  [v6 encodeObject:v5 forKey:@"descriptors"];

  [v6 encodeObject:self->_target forKey:@"target"];
  [v6 encodeObject:self->_reason forKey:@"reason"];
  [v6 encodeObject:self->_identity forKey:@"ident"];
}

- (BOOL)eventDescriptorIsRestricted:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && [(NSSet *)self->_restrictedToEventDescriptors count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_restrictedToEventDescriptors;
    v6 = [(NSSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v13 + 1) + 8 * i) describes:{v4, v13}])
          {
            v10 = 0;
            goto LABEL_14;
          }
        }

        v7 = [(NSSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = 1;
LABEL_14:
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (int64_t)mostRecentFirstCompare:(id)a3
{
  v4 = a3;
  v5 = [(BKSHIDEventDeferringRule *)self identity];
  v6 = [v5 seed];

  v7 = [v4 identity];

  v8 = [v7 seed];
  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return v6 != v8;
  }
}

- (int64_t)weightedDeferringRuleCompare:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(BKSHIDEventDeferringRule *)v5 predicate];
  v7 = [v4 predicate];
  v8 = v6;
  objc_opt_self();
  v9 = [v8 display];
  v10 = v9 != 0;

  v11 = [v8 token];

  v12 = (v11 != 0) | (2 * v10);
  v13 = [v7 display];
  v14 = v13 != 0;

  v15 = [v7 token];

  v16 = (v15 != 0) | (2 * v14);
  v17 = v12 > v16;
  if (v12 == v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = -1;
  }

  if (v17)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (!v19)
  {
    if ([v8 isEqual:v7])
    {
      v20 = [(BKSHIDEventDeferringRule *)v5 identity];
      v21 = [v20 seed];

      v22 = [v4 identity];
      v23 = [v22 seed];

      if (v21 <= v23)
      {
        v19 = v21 < v23;
      }

      else
      {
        v19 = -1;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (id)_initWithPredicate:(id)a3 restrictedToEventDescriptors:(id)a4 target:(id)a5 reason:(id)a6 identity:(id)a7
{
  v118 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = v13;
  if (!v18)
  {
    v39 = MEMORY[0x1E696AEC0];
    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    v42 = [v39 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"predicate", v41];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v43 = NSStringFromSelector(a2);
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      *buf = 138544642;
      v107 = v43;
      v108 = 2114;
      v109 = v45;
      v110 = 2048;
      v111 = self;
      v112 = 2114;
      v113 = @"BKSHIDEventDeferringRule.m";
      v114 = 1024;
      v115 = 117;
      v116 = 2114;
      v117 = v42;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v42 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638B8ACLL);
  }

  v19 = v18;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v46 = MEMORY[0x1E696AEC0];
    v47 = [v19 classForCoder];
    if (!v47)
    {
      v47 = objc_opt_class();
    }

    v48 = NSStringFromClass(v47);
    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    v51 = [v46 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"predicate", v48, v50];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v52 = NSStringFromSelector(a2);
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      *buf = 138544642;
      v107 = v52;
      v108 = 2114;
      v109 = v54;
      v110 = 2048;
      v111 = self;
      v112 = 2114;
      v113 = @"BKSHIDEventDeferringRule.m";
      v114 = 1024;
      v115 = 117;
      v116 = 2114;
      v117 = v51;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v51 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638B9E8);
  }

  v20 = v14;
  if (!v20)
  {
    v55 = MEMORY[0x1E696AEC0];
    v56 = objc_opt_class();
    v57 = NSStringFromClass(v56);
    v58 = [v55 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"eventDescriptors", v57];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v59 = NSStringFromSelector(a2);
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      *buf = 138544642;
      v107 = v59;
      v108 = 2114;
      v109 = v61;
      v110 = 2048;
      v111 = self;
      v112 = 2114;
      v113 = @"BKSHIDEventDeferringRule.m";
      v114 = 1024;
      v115 = 118;
      v116 = 2114;
      v117 = v58;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v58 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638BAFCLL);
  }

  v21 = v20;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v62 = MEMORY[0x1E696AEC0];
    v63 = [v21 classForCoder];
    if (!v63)
    {
      v63 = objc_opt_class();
    }

    v64 = NSStringFromClass(v63);
    v65 = objc_opt_class();
    v66 = NSStringFromClass(v65);
    v67 = [v62 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"eventDescriptors", v64, v66];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v68 = NSStringFromSelector(a2);
      v69 = objc_opt_class();
      v70 = NSStringFromClass(v69);
      *buf = 138544642;
      v107 = v68;
      v108 = 2114;
      v109 = v70;
      v110 = 2048;
      v111 = self;
      v112 = 2114;
      v113 = @"BKSHIDEventDeferringRule.m";
      v114 = 1024;
      v115 = 118;
      v116 = 2114;
      v117 = v67;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v67 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638BC38);
  }

  v22 = v15;
  if (!v22)
  {
    v71 = MEMORY[0x1E696AEC0];
    v72 = objc_opt_class();
    v73 = NSStringFromClass(v72);
    v74 = [v71 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"target", v73];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v75 = NSStringFromSelector(a2);
      v76 = objc_opt_class();
      v77 = NSStringFromClass(v76);
      *buf = 138544642;
      v107 = v75;
      v108 = 2114;
      v109 = v77;
      v110 = 2048;
      v111 = self;
      v112 = 2114;
      v113 = @"BKSHIDEventDeferringRule.m";
      v114 = 1024;
      v115 = 119;
      v116 = 2114;
      v117 = v74;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v74 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638BD50);
  }

  v23 = v22;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v78 = MEMORY[0x1E696AEC0];
    v79 = [v23 classForCoder];
    if (!v79)
    {
      v79 = objc_opt_class();
    }

    v80 = NSStringFromClass(v79);
    v81 = objc_opt_class();
    v82 = NSStringFromClass(v81);
    v83 = [v78 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"target", v80, v82];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v84 = NSStringFromSelector(a2);
      v85 = objc_opt_class();
      v86 = NSStringFromClass(v85);
      *buf = 138544642;
      v107 = v84;
      v108 = 2114;
      v109 = v86;
      v110 = 2048;
      v111 = self;
      v112 = 2114;
      v113 = @"BKSHIDEventDeferringRule.m";
      v114 = 1024;
      v115 = 119;
      v116 = 2114;
      v117 = v83;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v83 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638BE8CLL);
  }

  v24 = v16;
  v25 = MEMORY[0x1E696AEC0];
  v26 = objc_opt_class();
  if (!v24)
  {
    v87 = NSStringFromClass(v26);
    v88 = [v25 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"reason", v87];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v89 = NSStringFromSelector(a2);
      v90 = objc_opt_class();
      v91 = NSStringFromClass(v90);
      *buf = 138544642;
      v107 = v89;
      v108 = 2114;
      v109 = v91;
      v110 = 2048;
      v111 = self;
      v112 = 2114;
      v113 = @"BKSHIDEventDeferringRule.m";
      v114 = 1024;
      v115 = 120;
      v116 = 2114;
      v117 = v88;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v88 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638BF94);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v92 = MEMORY[0x1E696AEC0];
    v93 = [v24 classForCoder];
    if (!v93)
    {
      v93 = objc_opt_class();
    }

    v94 = NSStringFromClass(v93);
    v95 = objc_opt_class();
    v96 = NSStringFromClass(v95);
    v97 = [v92 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"reason", v94, v96];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v98 = NSStringFromSelector(a2);
      v99 = objc_opt_class();
      v100 = NSStringFromClass(v99);
      *buf = 138544642;
      v107 = v98;
      v108 = 2114;
      v109 = v100;
      v110 = 2048;
      v111 = self;
      v112 = 2114;
      v113 = @"BKSHIDEventDeferringRule.m";
      v114 = 1024;
      v115 = 120;
      v116 = 2114;
      v117 = v97;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v97 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638C0CCLL);
  }

  v27 = objc_opt_class();
  if (v27 != objc_opt_class())
  {
    v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventDeferringRule cannot be subclassed"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v102 = NSStringFromSelector(a2);
      v103 = objc_opt_class();
      v104 = NSStringFromClass(v103);
      *buf = 138544642;
      v107 = v102;
      v108 = 2114;
      v109 = v104;
      v110 = 2048;
      v111 = self;
      v112 = 2114;
      v113 = @"BKSHIDEventDeferringRule.m";
      v114 = 1024;
      v115 = 121;
      v116 = 2114;
      v117 = v101;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v101 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638C1B4);
  }

  v105.receiver = self;
  v105.super_class = BKSHIDEventDeferringRule;
  v28 = [(BKSHIDEventDeferringRule *)&v105 init];
  if (v28)
  {
    v29 = [v19 copy];
    predicate = v28->_predicate;
    v28->_predicate = v29;

    v31 = [v21 copy];
    restrictedToEventDescriptors = v28->_restrictedToEventDescriptors;
    v28->_restrictedToEventDescriptors = v31;

    v33 = [v23 copy];
    target = v28->_target;
    v28->_target = v33;

    v35 = [v24 copy];
    reason = v28->_reason;
    v28->_reason = v35;

    objc_storeStrong(&v28->_identity, a7);
  }

  v37 = *MEMORY[0x1E69E9840];
  return v28;
}

- (BKSHIDEventDeferringRule)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BKSHIDEventDeferringRule"];
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
    v16 = @"BKSHIDEventDeferringRule.m";
    v17 = 1024;
    v18 = 112;
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
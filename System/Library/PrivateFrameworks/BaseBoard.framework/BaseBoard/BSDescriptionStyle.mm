@interface BSDescriptionStyle
+ (BSDescriptionStyle)new;
+ (id)build:(id)a3;
+ (id)debugStyle;
+ (id)keyValuePairSortedByKeyStyle;
+ (id)styleForEndTruncatingCollectionsOverItemCount:(int64_t)a3;
+ (id)succinctStyle;
- (BOOL)isEqual:(id)a3;
- (BSDescriptionStyle)init;
- (id)_init;
- (id)_initWithCopyOf:(void *)a1;
- (id)_styleByOverlayingStyle:(id)a1;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation BSDescriptionStyle

- (id)_init
{
  v22 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSDescriptionStyle cannot be subclassed"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v5 = NSStringFromSelector(sel__init);
          v6 = objc_opt_class();
          v7 = NSStringFromClass(v6);
          *buf = 138544642;
          v11 = v5;
          v12 = 2114;
          v13 = v7;
          v14 = 2048;
          v15 = v1;
          v16 = 2114;
          v17 = @"BSDescriptionStyle.m";
          v18 = 1024;
          v19 = 362;
          v20 = 2114;
          v21 = v4;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v8 = v4;
        qword_1EAD33B00 = [v4 UTF8String];
        __break(0);
        JUMPOUT(0x18FF0CB40);
      }
    }

    v9.receiver = v1;
    v9.super_class = BSDescriptionStyle;
    return objc_msgSendSuper2(&v9, sel_init);
  }

  return result;
}

+ (id)succinctStyle
{
  if (qword_1ED450028 != -1)
  {
    dispatch_once(&qword_1ED450028, &__block_literal_global_60_0);
  }

  v3 = qword_1ED450020;

  return v3;
}

void __35__BSDescriptionStyle_succinctStyle__block_invoke()
{
  v0 = [[BSDescriptionStyle alloc] _init];
  v1 = qword_1ED450020;
  qword_1ED450020 = v0;

  *(qword_1ED450020 + 8) = 2;
}

+ (id)debugStyle
{
  if (qword_1ED450018 != -1)
  {
    dispatch_once(&qword_1ED450018, &__block_literal_global_58);
  }

  v3 = qword_1ED450010;

  return v3;
}

void __32__BSDescriptionStyle_debugStyle__block_invoke()
{
  v0 = [[BSDescriptionStyle alloc] _init];
  v1 = qword_1ED450010;
  qword_1ED450010 = v0;

  *(qword_1ED450010 + 16) = 2;
}

+ (id)keyValuePairSortedByKeyStyle
{
  if (qword_1ED450038 != -1)
  {
    dispatch_once(&qword_1ED450038, &__block_literal_global_62);
  }

  v3 = qword_1ED450030;

  return v3;
}

void __50__BSDescriptionStyle_keyValuePairSortedByKeyStyle__block_invoke()
{
  v0 = [[BSDescriptionStyle alloc] _init];
  v1 = qword_1ED450030;
  qword_1ED450030 = v0;

  *(qword_1ED450030 + 88) = 2;
}

+ (id)styleForEndTruncatingCollectionsOverItemCount:(int64_t)a3
{
  v4 = [[BSDescriptionStyle alloc] _init];
  v4[10] = 2;
  v4[12] = a3;

  return v4;
}

- (id)_styleByOverlayingStyle:(id)a1
{
  v2 = a1;
  if (a1)
  {
    if (a2 == a1 || (*(a1 + 1) ? (v4 = *(a2 + 8) == 0) : (v4 = 0), !v4 && (!*(a1 + 2) || *(a2 + 16)) && (!*(a1 + 3) || *(a2 + 24)) && (!*(a1 + 5) || *(a2 + 40)) && (!*(a1 + 4) || *(a2 + 32)) && (!*(a1 + 6) || *(a2 + 48)) && *(a1 + 7) == *(a2 + 56) && (!*(a1 + 8) || *(a2 + 64)) && *(a1 + 9) == *(a2 + 72) && (!*(a1 + 10) || *(a2 + 80)) && (!*(a1 + 11) || *(a2 + 88)) && (BSEqualSets(*(a1 + 13), *(a2 + 104)) & 1) != 0))
    {
      v2 = a2;
    }

    else
    {
      v5 = [[BSDescriptionStyle alloc] _initWithCopyOf:v2];
      v2 = v5;
      if (v5)
      {
        v6 = *(a2 + 8);
        if (v6)
        {
          v5[1] = v6;
        }

        v7 = *(a2 + 16);
        if (v7)
        {
          v5[2] = v7;
        }

        v8 = *(a2 + 24);
        if (v8)
        {
          v5[3] = v8;
        }

        v9 = *(a2 + 32);
        if (v9)
        {
          v5[4] = v9;
        }

        v10 = *(a2 + 40);
        if (v10)
        {
          v5[5] = v10;
        }

        v11 = *(a2 + 88);
        if (v11)
        {
          v5[11] = v11;
        }

        v12 = *(a2 + 48);
        if (v12)
        {
          v5[6] = v12;
          v5[7] = *(a2 + 56);
        }

        v13 = *(a2 + 64);
        if (v13)
        {
          v5[8] = v13;
          v5[9] = *(a2 + 72);
        }

        v14 = *(a2 + 80);
        if (v14)
        {
          v5[10] = v14;
          v5[12] = *(a2 + 96);
        }

        v15 = *(a2 + 104);
        if (v15)
        {
          v16 = v5[13];
          if (v16 != v15)
          {
            if (v16)
            {
              v17 = [v16 setByAddingObjectsFromSet:?];
            }

            else
            {
              v17 = [*(a2 + 104) copy];
            }

            v18 = v2[13];
            v2[13] = v17;
          }
        }
      }
    }
  }

  return v2;
}

- (id)_initWithCopyOf:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = [(BSDescriptionStyle *)a1 _init];
  v4 = v3;
  if (v3)
  {
    v3[1] = *(a2 + 8);
    v3[2] = *(a2 + 16);
    v3[3] = *(a2 + 24);
    v3[4] = *(a2 + 32);
    v3[5] = *(a2 + 40);
    v3[10] = *(a2 + 80);
    v3[6] = *(a2 + 48);
    v3[7] = *(a2 + 56);
    v3[8] = *(a2 + 64);
    v3[9] = *(a2 + 72);
    v3[12] = *(a2 + 96);
    v3[11] = *(a2 + 88);
    objc_storeStrong(v3 + 13, *(a2 + 104));
  }

  return v4;
}

+ (id)build:(id)a3
{
  v4 = [(BSDescriptionStyle *)[BSMutableDescriptionStyle alloc] _init];
  (*(a3 + 2))(a3, v4);
  v5 = [v4 copy];

  return v5;
}

- (BSDescriptionStyle)init
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BSDescriptionStyle"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BSDescriptionStyle init]"];
    v6 = 138544130;
    v7 = v3;
    v8 = 2114;
    v9 = @"BSDescriptionStyle.m";
    v10 = 1024;
    v11 = 351;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v6, 0x26u);
  }

  v4 = v2;
  result = [v2 UTF8String];
  qword_1EAD33B00 = result;
  __break(0);
  return result;
}

+ (BSDescriptionStyle)new
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BSDescriptionStyle"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BSDescriptionStyle new]"];
    v6 = 138544130;
    v7 = v3;
    v8 = 2114;
    v9 = @"BSDescriptionStyle.m";
    v10 = 1024;
    v11 = 356;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v6, 0x26u);
  }

  v4 = v2;
  result = [v2 UTF8String];
  qword_1EAD33B00 = result;
  __break(0);
  return result;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_verbosity];
  v4 = [v3 hash];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_debugging];
  v6 = [v5 hash];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_collectionLineBreak];
  v8 = [v7 hash];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_proemItemSeparator];
  v10 = [v9 hash];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_bodyItemSeparator];
  v12 = [v11 hash];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_collectionTruncationStyle];
  v14 = [v13 hash];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:self->_nameTruncation];
  v33 = [v15 hash];
  v34 = v14;

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:self->_maximumNameLengthBeforeTruncation];
  v32 = [v16 hash];
  v31 = v12;
  v17 = v8;

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:self->_valueTruncation];
  v19 = [v18 hash];
  v20 = v6;
  v21 = v4;

  v22 = [MEMORY[0x1E696AD98] numberWithInteger:self->_maximumValueLengthBeforeTruncation];
  v23 = [v22 hash];

  v24 = [MEMORY[0x1E696AD98] numberWithInteger:self->_maximumItemCountForTruncation];
  v25 = [v24 hash];

  v26 = [MEMORY[0x1E696AD98] numberWithInteger:self->_keyValuePairSorting];
  v27 = v20 ^ v21 ^ v17 ^ v10 ^ v31 ^ v34 ^ v33 ^ v32 ^ v19 ^ v23 ^ v25 ^ [v26 hash];

  clientInformation = self->_clientInformation;
  if (clientInformation)
  {
    v27 ^= [(NSSet *)clientInformation hash];
  }

  v29 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) >> 27));
  return v29 ^ (v29 >> 31);
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = a3;
  v6 = v5;
  if (v5[1] == self->_verbosity && v5[2] == self->_debugging && v5[3] == self->_collectionLineBreak && v5[4] == self->_proemItemSeparator && v5[5] == self->_bodyItemSeparator && v5[10] == self->_collectionTruncationStyle && v5[12] == self->_maximumItemCountForTruncation && v5[11] == self->_keyValuePairSorting)
  {
    v7 = BSEqualSets(v5[13], self->_clientInformation);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BSMutableDescriptionStyle alloc];

  return [(BSDescriptionStyle *)v4 _initWithCopyOf:?];
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__BSDescriptionStyle_appendDescriptionToFormatter___block_invoke;
  v3[3] = &unk_1E72CACC0;
  v3[4] = a3;
  v3[5] = self;
  [a3 appendProem:0 block:v3];
}

void __51__BSDescriptionStyle_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromBSDescriptionVerbosity(*(*(a1 + 40) + 8));
  [v2 appendString:v3 withName:@"verbosity"];

  v4 = *(a1 + 32);
  v5 = NSStringFromBSDescriptionDebugging(*(*(a1 + 40) + 16));
  [v4 appendString:v5 withName:@"debugging"];

  v6 = *(a1 + 32);
  v7 = NSStringFromBSDescriptionCollectionLineBreak(*(*(a1 + 40) + 24));
  [v6 appendString:v7 withName:@"collectionLineBreak"];

  v8 = *(a1 + 32);
  v9 = NSStringFromBSDescriptionItemSeparator(*(*(a1 + 40) + 32));
  [v8 appendString:v9 withName:@"proemItemSeparator"];

  v10 = *(a1 + 32);
  v11 = NSStringFromBSDescriptionItemSeparator(*(*(a1 + 40) + 40));
  [v10 appendString:v11 withName:@"bodyItemSeparator"];

  v12 = *(a1 + 32);
  v13 = NSStringFromBSDescriptionLineTruncation(*(*(a1 + 40) + 48));
  [v12 appendString:v13 withName:@"nameTruncationStyle"];

  v14 = *(a1 + 40);
  if (*(v14 + 56) >= 1)
  {
    v15 = [*(a1 + 32) appendInteger:? withName:?];
    v14 = *(a1 + 40);
  }

  v16 = *(a1 + 32);
  v17 = NSStringFromBSDescriptionLineTruncation(*(v14 + 64));
  [v16 appendString:v17 withName:@"objectTruncationStyle"];

  v18 = *(a1 + 40);
  if (*(v18 + 72) >= 1)
  {
    v19 = [*(a1 + 32) appendInteger:? withName:?];
    v18 = *(a1 + 40);
  }

  v20 = *(a1 + 32);
  v21 = NSStringFromBSDescriptionCollectionTruncationStyle(*(v18 + 80));
  [v20 appendString:v21 withName:@"collectionTruncationStyle"];

  v22 = *(a1 + 40);
  if (*(v22 + 96) >= 1)
  {
    v23 = [*(a1 + 32) appendInteger:? withName:?];
    v22 = *(a1 + 40);
  }

  v24 = *(a1 + 32);
  v25 = NSStringFromBSDescriptionKeyValuePairSorting(*(v22 + 88));
  [v24 appendString:v25 withName:@"keyValuePairSorting"];

  v26 = *(*(a1 + 40) + 104);
  if (v26)
  {
    v27 = [*(a1 + 32) appendObject:v26 withName:@"clientInformation"];
  }
}

@end
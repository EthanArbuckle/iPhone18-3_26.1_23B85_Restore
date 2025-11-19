@interface BSCanonicalOrientationMapResolver
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BSCanonicalOrientationMapResolver)initWithTargetOrientation:(int64_t)a3 currentOrientation:(int64_t)a4 fallbackOrientations:(id)a5;
- (NSString)debugDescription;
- (NSString)description;
- (id)membersForCoder;
- (int64_t)interfaceOrientationForSupportedOrientations:(unint64_t)a3 preferredOrientation:(int64_t)a4;
@end

@implementation BSCanonicalOrientationMapResolver

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    BSXPCAutoCodingInitialize(a1, &__block_literal_global);
  }
}

void __47__BSCanonicalOrientationMapResolver_initialize__block_invoke(uint64_t a1, void *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = &unk_1F03BFE90;
  v5[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 setSupportedCodings:v4];
}

- (id)membersForCoder
{
  v36[3] = *MEMORY[0x1E69E9840];
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = @"_targetOrientation";
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v11 = _BSAutoMember(v3, v4, v5, v6, v7, v8, v9, v10, 0, v34);
  v36[0] = v11;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = @"_currentOrientation";
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v21 = _BSAutoMember(v13, v14, v15, v16, v17, v18, v19, v20, 0, v35);
  v36[1] = v21;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v22 = @"_fallbackOrientations";
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  v31 = _BSAutoMember(v23, v24, v25, v26, v27, v28, v29, v30, @"NSNumber", 0);
  v36[2] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];

  return v32;
}

- (BSCanonicalOrientationMapResolver)initWithTargetOrientation:(int64_t)a3 currentOrientation:(int64_t)a4 fallbackOrientations:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = a5;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v10)
  {

LABEL_11:
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"BSCanonicalOrientationMapResolver.m" lineNumber:43 description:@"The fallback orientation order does not contain all interface orientations."];

    goto LABEL_12;
  }

  v11 = 0;
  v12 = *v22;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v22 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v11 |= 1 << [*(*(&v21 + 1) + 8 * i) unsignedIntegerValue];
    }

    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v10);

  if ((~v11 & 0x1ELL) != 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v20.receiver = self;
  v20.super_class = BSCanonicalOrientationMapResolver;
  v15 = [(BSCanonicalOrientationMapResolver *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_targetOrientation = a3;
    v15->_currentOrientation = a4;
    v17 = [v9 copy];
    fallbackOrientations = v16->_fallbackOrientations;
    v16->_fallbackOrientations = v17;
  }

  return v16;
}

- (int64_t)interfaceOrientationForSupportedOrientations:(unint64_t)a3 preferredOrientation:(int64_t)a4
{
  v17[3] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_targetOrientation];
  v17[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_currentOrientation];
  v17[1] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v17[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];

  v11 = [v10 arrayByAddingObjectsFromArray:self->_fallbackOrientations];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __103__BSCanonicalOrientationMapResolver_interfaceOrientationForSupportedOrientations_preferredOrientation___block_invoke;
  v16[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
  v16[4] = a3;
  v12 = [v11 bs_firstObjectPassingTest:v16];
  v13 = [v12 integerValue];
  if ((v13 - 1) >= 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  return v14;
}

BOOL __103__BSCanonicalOrientationMapResolver_interfaceOrientationForSupportedOrientations_preferredOrientation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 integerValue];
  v5 = (v4 - 1) <= 3 && (*(a1 + 32) & (1 << v4)) != 0;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      if (v5->_targetOrientation == self->_targetOrientation && v5->_currentOrientation == self->_currentOrientation)
      {
        v7 = [(NSArray *)v5->_fallbackOrientations isEqualToArray:self->_fallbackOrientations];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = BSInterfaceOrientationDescription(self->_targetOrientation);
  v5 = BSInterfaceOrientationDescription(self->_currentOrientation);
  v6 = [v3 stringWithFormat:@"target: %@, current: %@", v4, v5];

  return v6;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = BSInterfaceOrientationDescription(self->_targetOrientation);
  v7 = BSInterfaceOrientationDescription(self->_currentOrientation);
  v8 = [v3 stringWithFormat:@"<%@:%p target: %@, current: %@", v5, self, v6, v7];

  return v8;
}

@end
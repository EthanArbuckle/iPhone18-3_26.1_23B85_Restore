@interface BSCornerRadiusConfiguration
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BSCornerRadiusConfiguration)initWithCornerRadius:(double)a3;
- (BSCornerRadiusConfiguration)initWithTopLeft:(double)a3 bottomLeft:(double)a4 bottomRight:(double)a5 topRight:(double)a6;
- (NSString)description;
- (id)membersForCoder;
- (unint64_t)hash;
@end

@implementation BSCornerRadiusConfiguration

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    BSXPCAutoCodingInitialize(a1, &__block_literal_global_28);
  }
}

void __41__BSCornerRadiusConfiguration_initialize__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = &unk_1F03BA3C0;
  [v3 addSupportedCoding:v2];
}

- (id)membersForCoder
{
  v44[4] = *MEMORY[0x1E69E9840];
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = @"_topLeft";
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
  v11 = _BSAutoMember(v3, v4, v5, v6, v7, v8, v9, v10, 0, v44[0]);
  v44[0] = v11;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = @"_bottomLeft";
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
  v21 = _BSAutoMember(v13, v14, v15, v16, v17, v18, v19, v20, 0, v44[0]);
  v44[1] = v21;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v22 = @"_bottomRight";
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
  v31 = _BSAutoMember(v23, v24, v25, v26, v27, v28, v29, v30, 0, v44[0]);
  v44[2] = v31;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v32 = @"_topRight";
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;
  v41 = _BSAutoMember(v33, v34, v35, v36, v37, v38, v39, v40, 0, v44[0]);
  v44[3] = v41;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];

  return v42;
}

- (BSCornerRadiusConfiguration)initWithCornerRadius:(double)a3
{
  result = [(BSCornerRadiusConfiguration *)self init];
  if (result)
  {
    result->_topLeft = a3;
    result->_bottomLeft = a3;
    result->_bottomRight = a3;
    result->_topRight = a3;
  }

  return result;
}

- (BSCornerRadiusConfiguration)initWithTopLeft:(double)a3 bottomLeft:(double)a4 bottomRight:(double)a5 topRight:(double)a6
{
  result = [(BSCornerRadiusConfiguration *)self init];
  if (result)
  {
    result->_topLeft = a3;
    result->_bottomLeft = a4;
    result->_bottomRight = a5;
    result->_topRight = a6;
  }

  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: (topLeft: %g, bottom left: %g, bottom right: %g, top right: %g)", v5, *&self->_topLeft, *&self->_bottomLeft, *&self->_bottomRight, *&self->_topRight];

  return v6;
}

- (unint64_t)hash
{
  v3 = +[BSHashBuilder builder];
  v4 = [v3 appendCGFloat:self->_topLeft];
  v5 = [v4 appendCGFloat:self->_bottomLeft];
  v6 = [v5 appendCGFloat:self->_bottomRight];
  v7 = [v6 appendCGFloat:self->_topRight];
  v8 = [v7 hash];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (self)
    {
      v6 = [BSEqualsBuilder builderWithObject:v5 ofExpectedClass:objc_opt_class()];
      topLeft = self->_topLeft;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __66__BSCornerRadiusConfiguration_isEqualToCornerRadiusConfiguration___block_invoke;
      v28[3] = &unk_1E72CB470;
      v8 = v5;
      v29 = v8;
      v9 = [v6 appendCGFloat:v28 counterpart:topLeft];
      bottomLeft = self->_bottomLeft;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __66__BSCornerRadiusConfiguration_isEqualToCornerRadiusConfiguration___block_invoke_2;
      v26[3] = &unk_1E72CB470;
      v11 = v8;
      v27 = v11;
      v12 = [v6 appendCGFloat:v26 counterpart:bottomLeft];
      bottomRight = self->_bottomRight;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __66__BSCornerRadiusConfiguration_isEqualToCornerRadiusConfiguration___block_invoke_3;
      v24[3] = &unk_1E72CB470;
      v14 = v11;
      v25 = v14;
      v15 = [v6 appendCGFloat:v24 counterpart:bottomRight];
      topRight = self->_topRight;
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __66__BSCornerRadiusConfiguration_isEqualToCornerRadiusConfiguration___block_invoke_4;
      v22 = &unk_1E72CB470;
      v23 = v14;
      v17 = [v6 appendCGFloat:&v19 counterpart:topRight];
      LOBYTE(self) = [v6 isEqual];
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

@end
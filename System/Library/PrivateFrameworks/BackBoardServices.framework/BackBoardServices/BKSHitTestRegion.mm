@interface BKSHitTestRegion
- (BKSHitTestRegion)initWithCoder:(id)a3;
- (BKSHitTestRegion)initWithRect:(CGRect)a3 exclusiveTouchSubRect:(CGRect)a4;
- (BOOL)isEqual:(id)a3;
- (CGRect)_exclusiveTouchNormalizedSubRectInReferenceSpace;
- (CGRect)exclusiveTouchNormalizedSubRect;
- (CGRect)rect;
- (id)_initWithRect:(CGRect)a3 exclusiveTouchNormalizedSubRect:(CGRect)a4;
- (int64_t)hitTestRegionLocationForPoint:(CGPoint)a3;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setExclusiveTouchNormalizedSubRect:(CGRect)a3;
@end

@implementation BKSHitTestRegion

- (unint64_t)hash
{
  size = self->_rect.size;
  v6[0] = self->_rect.origin;
  v6[1] = size;
  v3 = [MEMORY[0x1E696B098] valueWithBytes:v6 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v4 = [v3 hash];

  return v4;
}

- (CGRect)_exclusiveTouchNormalizedSubRectInReferenceSpace
{
  x = self->_exclusiveTouchNormalizedSubRectInReferenceSpace.origin.x;
  y = self->_exclusiveTouchNormalizedSubRectInReferenceSpace.origin.y;
  width = self->_exclusiveTouchNormalizedSubRectInReferenceSpace.size.width;
  height = self->_exclusiveTouchNormalizedSubRectInReferenceSpace.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)exclusiveTouchNormalizedSubRect
{
  x = self->_exclusiveTouchNormalizedSubRect.origin.x;
  y = self->_exclusiveTouchNormalizedSubRect.origin.y;
  width = self->_exclusiveTouchNormalizedSubRect.size.width;
  height = self->_exclusiveTouchNormalizedSubRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BKSHitTestRegion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_rect"];
  [v5 bs_CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_exclusiveTouchNormalizedSubRect"];

  [v14 bs_CGRectValue];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  return [(BKSHitTestRegion *)self _initWithRect:v7 exclusiveTouchNormalizedSubRect:v9, v11, v13, v16, v18, v20, v22];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696B098];
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  v9 = a3;
  v10 = [v4 bs_valueWithCGRect:{x, y, width, height}];
  [v9 encodeObject:v10 forKey:@"_rect"];

  v11 = [MEMORY[0x1E696B098] bs_valueWithCGRect:{self->_exclusiveTouchNormalizedSubRect.origin.x, self->_exclusiveTouchNormalizedSubRect.origin.y, self->_exclusiveTouchNormalizedSubRect.size.width, self->_exclusiveTouchNormalizedSubRect.size.height}];
  [v9 encodeObject:v11 forKey:@"_exclusiveTouchNormalizedSubRect"];
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__BKSHitTestRegion_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

id __46__BKSHitTestRegion_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendRect:0 withName:{*(*(a1 + 40) + 8), *(*(a1 + 40) + 16), *(*(a1 + 40) + 24), *(*(a1 + 40) + 32)}];
  v3 = [*(a1 + 32) hasDebugStyle];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v3)
  {
    v6 = [v4 appendRect:@"exclusiveNormalized" withName:{v5[5], v5[6], v5[7], v5[8]}];
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v7[9];
    v9 = v7[10];
    v10 = v7[11];
    v11 = v7[12];
    v12 = @"exclusiveDenormalized";
  }

  else
  {
    v8 = v5[9];
    v9 = v5[10];
    v10 = v5[11];
    v11 = v5[12];
    v12 = @"exclusive";
  }

  return [v4 appendRect:v12 withName:{v8, v9, v10, v11}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && CGRectEqualToRect(self->_rect, *(v4 + 8)) && CGRectEqualToRect(self->_exclusiveTouchNormalizedSubRect, *(v4 + 40));

  return v5;
}

- (void)setExclusiveTouchNormalizedSubRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v42 = *MEMORY[0x1E69E9840];
  if (!CGRectEqualToRect(a3, self->_exclusiveTouchNormalizedSubRect))
  {
    if (!BSFloatGreaterThanOrEqualToFloat() || (BSFloatLessThanOrEqualToFloat() & 1) == 0)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid exclusiveTouchNormalizedSubRect x coordinate: %f - needs to be between 0 and 1", *&x];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(a2);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138544642;
        v31 = v15;
        v32 = 2114;
        v33 = v17;
        v34 = 2048;
        v35 = self;
        v36 = 2114;
        v37 = @"BKSHitTestRegion.m";
        v38 = 1024;
        v39 = 88;
        v40 = 2114;
        v41 = v14;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v14 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186389D5CLL);
    }

    if (!BSFloatGreaterThanOrEqualToFloat() || (BSFloatLessThanOrEqualToFloat() & 1) == 0)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid exclusiveTouchNormalizedSubRect y coordinate: %f - needs to be between 0 and 1", *&y];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(a2);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138544642;
        v31 = v19;
        v32 = 2114;
        v33 = v21;
        v34 = 2048;
        v35 = self;
        v36 = 2114;
        v37 = @"BKSHitTestRegion.m";
        v38 = 1024;
        v39 = 89;
        v40 = 2114;
        v41 = v18;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v18 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186389E4CLL);
    }

    if (!BSFloatGreaterThanOrEqualToFloat() || (BSFloatLessThanOrEqualToFloat() & 1) == 0)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid exclusiveTouchNormalizedSubRect width: %f - needs to be between 0 and 1", *&width];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = NSStringFromSelector(a2);
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138544642;
        v31 = v23;
        v32 = 2114;
        v33 = v25;
        v34 = 2048;
        v35 = self;
        v36 = 2114;
        v37 = @"BKSHitTestRegion.m";
        v38 = 1024;
        v39 = 90;
        v40 = 2114;
        v41 = v22;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v22 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186389F3CLL);
    }

    if (!BSFloatGreaterThanOrEqualToFloat() || (BSFloatLessThanOrEqualToFloat() & 1) == 0)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid exclusiveTouchNormalizedSubRect height: %f - needs to be between 0 and 1", *&height];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = NSStringFromSelector(a2);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138544642;
        v31 = v27;
        v32 = 2114;
        v33 = v29;
        v34 = 2048;
        v35 = self;
        v36 = 2114;
        v37 = @"BKSHitTestRegion.m";
        v38 = 1024;
        v39 = 91;
        v40 = 2114;
        v41 = v26;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v26 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18638A02CLL);
    }

    v9 = self->_rect.origin.y;
    v10 = self->_rect.size.width;
    v11 = self->_rect.size.height;
    v12 = self->_rect.origin.x + x * v10;
    self->_exclusiveTouchNormalizedSubRect.origin.x = x;
    self->_exclusiveTouchNormalizedSubRect.origin.y = y;
    self->_exclusiveTouchNormalizedSubRect.size.width = width;
    self->_exclusiveTouchNormalizedSubRect.size.height = height;
    self->_exclusiveTouchNormalizedSubRectInReferenceSpace.origin.x = v12;
    self->_exclusiveTouchNormalizedSubRectInReferenceSpace.origin.y = v9 + y * v11;
    self->_exclusiveTouchNormalizedSubRectInReferenceSpace.size.width = width * v10;
    self->_exclusiveTouchNormalizedSubRectInReferenceSpace.size.height = height * v11;
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (int64_t)hitTestRegionLocationForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (!CGRectContainsPoint(self->_rect, a3))
  {
    return 0;
  }

  v7.x = x;
  v7.y = y;
  if (CGRectContainsPoint(self->_exclusiveTouchNormalizedSubRectInReferenceSpace, v7))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)_initWithRect:(CGRect)a3 exclusiveTouchNormalizedSubRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v15.receiver = self;
  v15.super_class = BKSHitTestRegion;
  v12 = [(BKSHitTestRegion *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_rect.origin.x = v11;
    v12->_rect.origin.y = v10;
    v12->_rect.size.width = v9;
    v12->_rect.size.height = v8;
    [(BKSHitTestRegion *)v12 setExclusiveTouchNormalizedSubRect:x, y, width, height];
  }

  return v13;
}

- (BKSHitTestRegion)initWithRect:(CGRect)a3 exclusiveTouchSubRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v15.receiver = self;
  v15.super_class = BKSHitTestRegion;
  v12 = [(BKSHitTestRegion *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_rect.origin.x = v11;
    v12->_rect.origin.y = v10;
    v12->_rect.size.width = v9;
    v12->_rect.size.height = v8;
    [(BKSHitTestRegion *)v12 setExclusiveTouchNormalizedSubRect:x / v9, y / v8, width / v9, height / v8];
  }

  return v13;
}

@end
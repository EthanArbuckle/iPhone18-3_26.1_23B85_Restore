@interface AXSSMotionTrackingState
- (AXSSMotionTrackingState)init;
- (AXSSMotionTrackingState)initWithCoder:(id)a3;
- (BOOL)hasFace;
- (BOOL)isEqual:(id)a3;
- (CGPoint)lookAtPoint;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugStringForTrackingType:(unint64_t)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXSSMotionTrackingState

- (AXSSMotionTrackingState)init
{
  v6.receiver = self;
  v6.super_class = AXSSMotionTrackingState;
  v2 = [(AXSSMotionTrackingState *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] set];
    [(AXSSMotionTrackingState *)v2 setExpressions:v3];

    [(AXSSMotionTrackingState *)v2 setLookAtPoint:1.79769313e308, 1.79769313e308];
    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"AXSSMotionTrackingErrorDomain" code:11 userInfo:0];
    [(AXSSMotionTrackingState *)v2 setError:v4];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AXSSMotionTrackingState);
  v5 = [(AXSSMotionTrackingState *)self error];
  [(AXSSMotionTrackingState *)v4 setError:v5];

  v6 = [(AXSSMotionTrackingState *)self expressions];
  [(AXSSMotionTrackingState *)v4 setExpressions:v6];

  [(AXSSMotionTrackingState *)self lookAtPoint];
  [(AXSSMotionTrackingState *)v4 setLookAtPoint:?];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(AXSSMotionTrackingState *)self error];
    v6 = [v4 error];
    v7 = [v5 isEqual:v6];
    if (v7)
    {
      goto LABEL_3;
    }

    v17 = [(AXSSMotionTrackingState *)self error];
    if (v17)
    {
      v16 = 0;
LABEL_14:

LABEL_15:
      goto LABEL_16;
    }

    v18 = [v4 error];
    if (!v18)
    {
LABEL_3:
      v8 = [(AXSSMotionTrackingState *)self expressions];
      v9 = [v4 expressions];
      if ([v8 isEqual:v9])
      {
        [(AXSSMotionTrackingState *)self lookAtPoint];
        v11 = v10;
        v13 = v12;
        [v4 lookAtPoint];
        v21.x = v14;
        v21.y = v15;
        v20.x = v11;
        v20.y = v13;
        v16 = NSEqualPoints(v20, v21);
      }

      else
      {
        v16 = 0;
      }

      if (v7)
      {
        goto LABEL_15;
      }

      v18 = 0;
    }

    else
    {
      v16 = 0;
    }

    v17 = 0;
    goto LABEL_14;
  }

  v16 = 0;
LABEL_16:

  return v16;
}

- (BOOL)hasFace
{
  [(AXSSMotionTrackingState *)self lookAtPoint];
  v4.x = 1.79769313e308;
  v4.y = 1.79769313e308;
  return !NSEqualPoints(v3, v4);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = AXSSMotionTrackingState;
  v4 = [(AXSSMotionTrackingState *)&v10 description];
  [(AXSSMotionTrackingState *)self lookAtPoint];
  v5 = NSStringFromPoint(v12);
  v6 = [(AXSSMotionTrackingState *)self expressions];
  v7 = [(AXSSMotionTrackingState *)self error];
  v8 = [v3 stringWithFormat:@"%@ <point: %@ expressions: %@ error: %@>", v4, v5, v6, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(AXSSMotionTrackingState *)self lookAtPoint];
  v6 = v5;
  v8 = v7;
  v9 = NSStringFromSelector(sel_lookAtPoint);
  [v4 encodePoint:v9 forKey:{v6, v8}];

  v10 = [(AXSSMotionTrackingState *)self error];
  v11 = NSStringFromSelector(sel_error);
  [v4 encodeObject:v10 forKey:v11];

  v13 = [(AXSSMotionTrackingState *)self expressions];
  v12 = NSStringFromSelector(sel_expressions);
  [v4 encodeObject:v13 forKey:v12];
}

- (AXSSMotionTrackingState)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = AXSSMotionTrackingState;
  v5 = [(AXSSMotionTrackingState *)&v20 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_lookAtPoint);
    [v4 decodePointForKey:v6];
    [(AXSSMotionTrackingState *)v5 setLookAtPoint:?];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
    v12 = NSStringFromSelector(sel_error);
    v13 = [v4 decodeObjectOfClasses:v11 forKey:v12];
    [(AXSSMotionTrackingState *)v5 setError:v13];

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = NSStringFromSelector(sel_expressions);
    v18 = [v4 decodeObjectOfClasses:v16 forKey:v17];
    [(AXSSMotionTrackingState *)v5 setExpressions:v18];
  }

  return v5;
}

- (id)debugStringForTrackingType:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AD60] string];
  [(AXSSMotionTrackingState *)self lookAtPoint];
  v27.x = 1.79769313e308;
  v27.y = 1.79769313e308;
  if (NSEqualPoints(v26, v27))
  {
    [v5 appendString:@"No position\n"];
  }

  else
  {
    [(AXSSMotionTrackingState *)self lookAtPoint];
    v7 = v6;
    [(AXSSMotionTrackingState *)self lookAtPoint];
    [v5 appendFormat:@"Position: %0.1f %0.1f\n", v7, v8];
  }

  v9 = [(AXSSMotionTrackingState *)self error];

  if (v9)
  {
    v10 = [(AXSSMotionTrackingState *)self error];
    v11 = AXSSHumanReadableDescriptionForMotionTrackingErrorCodeAndTrackingType([v10 code], a3);
    [v5 appendFormat:@"Error: %@\n", v11];
  }

  else
  {
    [v5 appendString:@"No error\n"];
  }

  v12 = [(AXSSMotionTrackingState *)self expressions];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [MEMORY[0x1E695DF70] array];
    v15 = [(AXSSMotionTrackingState *)self expressions];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __54__AXSSMotionTrackingState_debugStringForTrackingType___block_invoke;
    v23[3] = &unk_1E81353E0;
    v16 = v14;
    v24 = v16;
    [v15 enumerateObjectsUsingBlock:v23];

    if ([v16 count])
    {
      v17 = [v16 componentsJoinedByString:{@", "}];
      [v5 appendFormat:@"Expressions: %@\n", v17];

      goto LABEL_12;
    }
  }

  [v5 appendString:@"No expressions\n"];
LABEL_12:
  v18 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v19 = [v5 stringByTrimmingCharactersInSet:v18];
  v20 = [v19 mutableCopy];

  v21 = [v20 copy];

  return v21;
}

void __54__AXSSMotionTrackingState_debugStringForTrackingType___block_invoke(uint64_t a1, void *a2)
{
  v3 = AXSSHumanReadableDescriptionForMotionTrackingFacialExpression([a2 unsignedIntegerValue]);
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (CGPoint)lookAtPoint
{
  x = self->_lookAtPoint.x;
  y = self->_lookAtPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
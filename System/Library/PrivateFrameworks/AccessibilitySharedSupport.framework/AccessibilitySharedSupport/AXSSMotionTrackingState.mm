@interface AXSSMotionTrackingState
- (AXSSMotionTrackingState)init;
- (AXSSMotionTrackingState)initWithCoder:(id)coder;
- (BOOL)hasFace;
- (BOOL)isEqual:(id)equal;
- (CGPoint)lookAtPoint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugStringForTrackingType:(unint64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AXSSMotionTrackingState);
  error = [(AXSSMotionTrackingState *)self error];
  [(AXSSMotionTrackingState *)v4 setError:error];

  expressions = [(AXSSMotionTrackingState *)self expressions];
  [(AXSSMotionTrackingState *)v4 setExpressions:expressions];

  [(AXSSMotionTrackingState *)self lookAtPoint];
  [(AXSSMotionTrackingState *)v4 setLookAtPoint:?];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    error = [(AXSSMotionTrackingState *)self error];
    error2 = [equalCopy error];
    v7 = [error isEqual:error2];
    if (v7)
    {
      goto LABEL_3;
    }

    error3 = [(AXSSMotionTrackingState *)self error];
    if (error3)
    {
      v16 = 0;
LABEL_14:

LABEL_15:
      goto LABEL_16;
    }

    error4 = [equalCopy error];
    if (!error4)
    {
LABEL_3:
      expressions = [(AXSSMotionTrackingState *)self expressions];
      expressions2 = [equalCopy expressions];
      if ([expressions isEqual:expressions2])
      {
        [(AXSSMotionTrackingState *)self lookAtPoint];
        v11 = v10;
        v13 = v12;
        [equalCopy lookAtPoint];
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

      error4 = 0;
    }

    else
    {
      v16 = 0;
    }

    error3 = 0;
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
  expressions = [(AXSSMotionTrackingState *)self expressions];
  error = [(AXSSMotionTrackingState *)self error];
  v8 = [v3 stringWithFormat:@"%@ <point: %@ expressions: %@ error: %@>", v4, v5, expressions, error];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(AXSSMotionTrackingState *)self lookAtPoint];
  v6 = v5;
  v8 = v7;
  v9 = NSStringFromSelector(sel_lookAtPoint);
  [coderCopy encodePoint:v9 forKey:{v6, v8}];

  error = [(AXSSMotionTrackingState *)self error];
  v11 = NSStringFromSelector(sel_error);
  [coderCopy encodeObject:error forKey:v11];

  expressions = [(AXSSMotionTrackingState *)self expressions];
  v12 = NSStringFromSelector(sel_expressions);
  [coderCopy encodeObject:expressions forKey:v12];
}

- (AXSSMotionTrackingState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = AXSSMotionTrackingState;
  v5 = [(AXSSMotionTrackingState *)&v20 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_lookAtPoint);
    [coderCopy decodePointForKey:v6];
    [(AXSSMotionTrackingState *)v5 setLookAtPoint:?];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
    v12 = NSStringFromSelector(sel_error);
    v13 = [coderCopy decodeObjectOfClasses:v11 forKey:v12];
    [(AXSSMotionTrackingState *)v5 setError:v13];

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = NSStringFromSelector(sel_expressions);
    v18 = [coderCopy decodeObjectOfClasses:v16 forKey:v17];
    [(AXSSMotionTrackingState *)v5 setExpressions:v18];
  }

  return v5;
}

- (id)debugStringForTrackingType:(unint64_t)type
{
  string = [MEMORY[0x1E696AD60] string];
  [(AXSSMotionTrackingState *)self lookAtPoint];
  v27.x = 1.79769313e308;
  v27.y = 1.79769313e308;
  if (NSEqualPoints(v26, v27))
  {
    [string appendString:@"No position\n"];
  }

  else
  {
    [(AXSSMotionTrackingState *)self lookAtPoint];
    v7 = v6;
    [(AXSSMotionTrackingState *)self lookAtPoint];
    [string appendFormat:@"Position: %0.1f %0.1f\n", v7, v8];
  }

  error = [(AXSSMotionTrackingState *)self error];

  if (error)
  {
    error2 = [(AXSSMotionTrackingState *)self error];
    v11 = AXSSHumanReadableDescriptionForMotionTrackingErrorCodeAndTrackingType([error2 code], type);
    [string appendFormat:@"Error: %@\n", v11];
  }

  else
  {
    [string appendString:@"No error\n"];
  }

  expressions = [(AXSSMotionTrackingState *)self expressions];
  v13 = [expressions count];

  if (v13)
  {
    array = [MEMORY[0x1E695DF70] array];
    expressions2 = [(AXSSMotionTrackingState *)self expressions];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __54__AXSSMotionTrackingState_debugStringForTrackingType___block_invoke;
    v23[3] = &unk_1E81353E0;
    v16 = array;
    v24 = v16;
    [expressions2 enumerateObjectsUsingBlock:v23];

    if ([v16 count])
    {
      v17 = [v16 componentsJoinedByString:{@", "}];
      [string appendFormat:@"Expressions: %@\n", v17];

      goto LABEL_12;
    }
  }

  [string appendString:@"No expressions\n"];
LABEL_12:
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v19 = [string stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
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
@interface AXMLayoutItem
+ (CGRect)boundingFrameForItems:(id)items;
+ (CGRect)normalizedBoundingFrameForItem:(id)item;
+ (CGRect)normalizedBoundingFrameForItems:(id)items;
- (BOOL)metric:(int64_t)metric inProximityOfMetric:(int64_t)ofMetric item:(id)item threshold:(double)threshold;
- (CGRect)_rectValueForMetric:(int64_t)metric;
- (double)_floatValueForMetric:(int64_t)metric;
- (double)bottom;
- (double)right;
- (id)description;
@end

@implementation AXMLayoutItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(AXMLayoutItem *)self width];
  v7 = v6;
  [(AXMLayoutItem *)self height];
  v9 = v8;
  [(AXMLayoutItem *)self left];
  v11 = v10;
  [(AXMLayoutItem *)self top];
  v13 = v12;
  [(AXMLayoutItem *)self right];
  v15 = v14;
  [(AXMLayoutItem *)self bottom];
  v17 = [v3 stringWithFormat:@"%@ [W:%.2f H:%.2f] [L:%.2f T:%.2f R:%.2f B:%.2f]", v5, v7, v9, v11, v13, v15, v16];

  return v17;
}

- (double)bottom
{
  [(AXMLayoutItem *)self top];
  v4 = v3;
  [(AXMLayoutItem *)self height];
  return v4 + v5;
}

- (double)right
{
  [(AXMLayoutItem *)self left];
  v4 = v3;
  [(AXMLayoutItem *)self width];
  return v4 + v5;
}

- (BOOL)metric:(int64_t)metric inProximityOfMetric:(int64_t)ofMetric item:(id)item threshold:(double)threshold
{
  itemCopy = item;
  v12 = [(AXMLayoutItem *)self _metricTypeForMetric:metric];
  if (v12 == [(AXMLayoutItem *)self _metricTypeForMetric:ofMetric])
  {
    if (v12 == 1)
    {
      [(AXMLayoutItem *)self _rectValueForMetric:metric];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      [itemCopy _rectValueForMetric:ofMetric];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      rect2 = v31;
      v34.origin.x = v18;
      v34.origin.y = v20;
      v34.size.width = v22;
      v34.size.height = v24;
      v35 = CGRectInset(v34, -threshold, -threshold);
      v36.origin.x = v26;
      v36.origin.y = v28;
      v36.size.width = v30;
      v36.size.height = rect2;
      v6 = CGRectIntersectsRect(v35, v36);
    }

    else if (!v12)
    {
      [(AXMLayoutItem *)self _floatValueForMetric:metric];
      v14 = v13;
      [itemCopy _floatValueForMetric:ofMetric];
      v6 = vabdd_f64(v14, v15) <= threshold;
    }
  }

  else
  {
    v16 = AXMediaLogTextLayout();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [AXMLayoutItem metric:inProximityOfMetric:item:threshold:];
    }

    v6 = 0;
  }

  return v6;
}

- (double)_floatValueForMetric:(int64_t)metric
{
  if (metric > 2)
  {
    switch(metric)
    {
      case 3:

        [(AXMLayoutItem *)self width];
        break;
      case 4:

        [(AXMLayoutItem *)self left];
        break;
      case 5:

        [(AXMLayoutItem *)self right];
        break;
      default:
LABEL_20:
        v4 = AXMediaLogCommon();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
        {
          [AXMLayoutItem _floatValueForMetric:];
        }

        return 0.0;
    }
  }

  else if (metric)
  {
    if (metric != 1)
    {
      if (metric == 2)
      {

        [(AXMLayoutItem *)self bottom];
        return result;
      }

      goto LABEL_20;
    }

    [(AXMLayoutItem *)self top];
  }

  else
  {

    [(AXMLayoutItem *)self height];
  }

  return result;
}

- (CGRect)_rectValueForMetric:(int64_t)metric
{
  if (metric == 6)
  {
    [(AXMLayoutItem *)self frame];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMLayoutItem _rectValueForMetric:];
    }

    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGRect)boundingFrameForItems:(id)items
{
  v31 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [itemsCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        v32.origin.x = v4;
        v32.origin.y = v5;
        v32.size.width = v6;
        v32.size.height = v7;
        IsNull = CGRectIsNull(v32);
        [v12 frame];
        v18 = v14;
        v19 = v15;
        v20 = v16;
        v21 = v17;
        if (!IsNull)
        {
          v33.origin.x = v4;
          v33.origin.y = v5;
          v33.size.width = v6;
          v33.size.height = v7;
          *&v14 = CGRectUnion(v33, *&v18);
        }

        v4 = v14;
        v5 = v15;
        v6 = v16;
        v7 = v17;
        ++v11;
      }

      while (v9 != v11);
      v9 = [itemsCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v22 = v4;
  v23 = v5;
  v24 = v6;
  v25 = v7;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

+ (CGRect)normalizedBoundingFrameForItems:(id)items
{
  v31 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [itemsCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        v32.origin.x = v4;
        v32.origin.y = v5;
        v32.size.width = v6;
        v32.size.height = v7;
        IsNull = CGRectIsNull(v32);
        [v12 normalizedFrame];
        v18 = v14;
        v19 = v15;
        v20 = v16;
        v21 = v17;
        if (!IsNull)
        {
          v33.origin.x = v4;
          v33.origin.y = v5;
          v33.size.width = v6;
          v33.size.height = v7;
          *&v14 = CGRectUnion(v33, *&v18);
        }

        v4 = v14;
        v5 = v15;
        v6 = v16;
        v7 = v17;
        ++v11;
      }

      while (v9 != v11);
      v9 = [itemsCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v22 = v4;
  v23 = v5;
  v24 = v6;
  v25 = v7;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

+ (CGRect)normalizedBoundingFrameForItem:(id)item
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  itemCopy = item;
  v21.origin.x = v3;
  v21.origin.y = v4;
  v21.size.width = v5;
  v21.size.height = v6;
  IsNull = CGRectIsNull(v21);
  [itemCopy normalizedFrame];
  x = v9;
  y = v11;
  width = v13;
  height = v15;

  if (!IsNull)
  {
    v22.origin.x = v3;
    v22.origin.y = v4;
    v22.size.width = v5;
    v22.size.height = v6;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v23 = CGRectUnion(v22, v25);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)metric:inProximityOfMetric:item:threshold:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&dword_1AE37B000, v1, OS_LOG_TYPE_ERROR, "Metric types are not compatible '%ld' and '%ld'", v2, 0x16u);
}

- (void)_floatValueForMetric:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_1AE37B000, v0, OS_LOG_TYPE_FAULT, "metric does not support float values: '%ld'", v1, 0xCu);
}

- (void)_rectValueForMetric:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_1AE37B000, v0, OS_LOG_TYPE_FAULT, "metric does not support frame values: '%ld'", v1, 0xCu);
}

@end
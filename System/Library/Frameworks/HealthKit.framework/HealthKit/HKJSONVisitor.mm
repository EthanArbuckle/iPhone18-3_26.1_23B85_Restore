@interface HKJSONVisitor
+ (id)visitorWithJSONObject:(id)a3 delegate:(id)a4 error:(id *)a5;
- (NSString)lastKeyPathComponent;
- (id)valueForKeyPath:(id)a3;
- (int64_t)_traverseJSONObject:(id)a3;
- (int64_t)_visitArray:(id)a3;
- (int64_t)_visitDictionary:(id)a3;
- (int64_t)_visitPrimitive:(id)a3;
@end

@implementation HKJSONVisitor

+ (id)visitorWithJSONObject:(id)a3 delegate:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(a1);
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v9])
  {
    objc_storeStrong(v11 + 2, a3);
    objc_storeWeak(v11 + 1, v10);
    v11[5] = 0x7FFFFFFFFFFFFFFFLL;
    v12 = [MEMORY[0x1E696AEC0] string];
    v13 = v11[3];
    v11[3] = v12;

    v14 = v11[4];
    v11[4] = MEMORY[0x1E695E0F0];

    v15 = v11;
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:@"JSONObject is not valid JSON"];
    v15 = 0;
  }

  return v15;
}

- (NSString)lastKeyPathComponent
{
  v2 = [(NSString *)self->_currentKeyPath componentsSeparatedByString:@"."];
  v3 = [v2 lastObject];

  return v3;
}

- (id)valueForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  JSONObject = self->_JSONObject;
  if (v5)
  {
    v7 = [JSONObject valueForKeyPath:v4];
  }

  else
  {
    v7 = JSONObject;
  }

  v8 = v7;

  return v8;
}

- (int64_t)_traverseJSONObject:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [HKJSONVisitor _traverseJSONObject:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HKJSONVisitor *)self _visitDictionary:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HKJSONVisitor *)self _visitArray:v4];
    }

    else
    {
      v5 = [(HKJSONVisitor *)self _visitPrimitive:v4];
    }
  }

  v6 = v5;

  return v6;
}

- (int64_t)_visitDictionary:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  v30 = v4;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKJSONVisitor _visitDictionary:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 performSelector:sel_visitor_willVisitDictionary_ withObject:self withObject:v4];

    if (!v7)
    {
      goto LABEL_26;
    }

    if (v7 == 2)
    {
      v7 = 1;
      goto LABEL_26;
    }
  }

  else
  {
  }

  v8 = [(NSString *)self->_currentKeyPath copy];
  v9 = [(NSArray *)self->_allKeyPathComponents copy];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = [v4 allKeys];
  v11 = [v10 sortedArrayUsingSelector:sel_compare_];

  v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
LABEL_10:
    v15 = 0;
    while (1)
    {
      if (*v32 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v31 + 1) + 8 * v15);
      v17 = objc_autoreleasePoolPush();
      v18 = [v8 hk_stringByAppendingKeyPathComponent:v16];
      currentKeyPath = self->_currentKeyPath;
      self->_currentKeyPath = v18;

      v20 = [v9 arrayByAddingObject:v16];
      allKeyPathComponents = self->_allKeyPathComponents;
      self->_allKeyPathComponents = v20;

      v22 = [v30 objectForKeyedSubscript:v16];
      v23 = [(HKJSONVisitor *)self _traverseJSONObject:v22];

      objc_autoreleasePoolPop(v17);
      if (v23 == 2)
      {
        break;
      }

      if (!v23)
      {

        v7 = 0;
        goto LABEL_25;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v13)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  objc_storeStrong(&self->_currentKeyPath, v8);
  objc_storeStrong(&self->_allKeyPathComponents, v9);
  v24 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v25 = objc_loadWeakRetained(&self->_delegate);
    v26 = [v25 performSelector:sel_visitor_didVisitDictionary_ withObject:self withObject:v30];

    v27 = 1;
    if (v26 == 2)
    {
      v27 = 2;
    }

    if (v26)
    {
      v7 = v27;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {

    v7 = 1;
  }

LABEL_25:

LABEL_26:
  v28 = *MEMORY[0x1E69E9840];
  return v7;
}

- (int64_t)_visitArray:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKJSONVisitor _visitArray:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 performSelector:sel_visitor_willVisitArray_ withObject:self withObject:v4];

    if (!v7)
    {
      goto LABEL_28;
    }

    if (v7 == 2)
    {
      v7 = 1;
      goto LABEL_28;
    }
  }

  else
  {
  }

  p_allKeyPathComponents = &self->_allKeyPathComponents;
  obj = [(NSArray *)self->_allKeyPathComponents copy];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v31;
    v28 = v4;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        self->_currentIndex = v12;
        v17 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
        v18 = [v17 description];
        v19 = [obj arrayByAddingObject:v18];
        allKeyPathComponents = self->_allKeyPathComponents;
        self->_allKeyPathComponents = v19;

        v21 = [(HKJSONVisitor *)self _traverseJSONObject:v15];
        if (v21 == 2)
        {
          objc_autoreleasePoolPop(v16);
          p_allKeyPathComponents = &self->_allKeyPathComponents;
          v4 = v28;
          goto LABEL_20;
        }

        if (!v21)
        {
          objc_autoreleasePoolPop(v16);

          v7 = 0;
          v4 = v28;
          goto LABEL_27;
        }

        ++v12;
        objc_autoreleasePoolPop(v16);
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      p_allKeyPathComponents = &self->_allKeyPathComponents;
      v4 = v28;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  self->_currentIndex = 0x7FFFFFFFFFFFFFFFLL;
  objc_storeStrong(p_allKeyPathComponents, obj);
  v22 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v23 = objc_loadWeakRetained(&self->_delegate);
    v24 = [v23 performSelector:sel_visitor_didVisitArray_ withObject:self withObject:v9];

    v25 = 1;
    if (v24 == 2)
    {
      v25 = 2;
    }

    if (v24)
    {
      v7 = v25;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {

    v7 = 1;
  }

LABEL_27:

LABEL_28:
  v26 = *MEMORY[0x1E69E9840];
  return v7;
}

- (int64_t)_visitPrimitive:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [HKJSONVisitor _visitPrimitive:];
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 performSelector:sel_visitor_visitPrimitive_ withObject:self withObject:v4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_traverseJSONObject:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"object != nil" object:? file:? lineNumber:? description:?];
}

- (void)_visitDictionary:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[dictionary isKindOfClass:[NSDictionary class]]" object:? file:? lineNumber:? description:?];
}

- (void)_visitArray:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[array isKindOfClass:[NSArray class]]" object:? file:? lineNumber:? description:?];
}

- (void)_visitPrimitive:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[object isKindOfClass:[NSString class]] || [object isKindOfClass:[NSNumber class]] || [object isKindOfClass:[NSNull class]]" object:? file:? lineNumber:? description:?];
}

@end
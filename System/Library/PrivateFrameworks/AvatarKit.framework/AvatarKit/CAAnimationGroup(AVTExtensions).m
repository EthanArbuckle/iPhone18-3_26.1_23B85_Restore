@interface CAAnimationGroup(AVTExtensions)
- (id)avt_animationsByUngroupingRecursively;
- (void)avt_animationsByUngroupingRecursively;
@end

@implementation CAAnimationGroup(AVTExtensions)

- (id)avt_animationsByUngroupingRecursively
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [a1 animations];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 avt_animationsByUngroupingRecursively];
          [v2 addObjectsFromArray:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v8 copy];
            [v8 beginTime];
            [v9 setBeginTime:?];
            [v8 speed];
            v11 = v10;
            [a1 speed];
            *&v13 = v11 * v12;
            [v9 setSpeed:v13];
            [v8 timeOffset];
            v15 = v14;
            [a1 beginTime];
            v17 = v15 - v16;
            [a1 speed];
            v19 = v18;
            [a1 timeOffset];
            [v9 setTimeOffset:v20 + v17 * v19];
            [v2 addObject:v9];
          }

          else
          {
            v9 = avt_default_log();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              [(CAAnimationGroup(AVTExtensions) *)v27 avt_animationsByUngroupingRecursively:v8];
            }
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v5);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)avt_animationsByUngroupingRecursively
{
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  *a1 = 138412290;
  *a3 = v8;
  _os_log_error_impl(&dword_1BB472000, a4, OS_LOG_TYPE_ERROR, "Error: Unreachable code: Unsupported animation class %@", a1, 0xCu);
}

@end
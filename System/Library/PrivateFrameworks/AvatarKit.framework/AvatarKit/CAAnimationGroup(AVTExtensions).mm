@interface CAAnimationGroup(AVTExtensions)
- (id)avt_animationsByUngroupingRecursively;
- (void)avt_animationsByUngroupingRecursively;
@end

@implementation CAAnimationGroup(AVTExtensions)

- (id)avt_animationsByUngroupingRecursively
{
  v30 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  animations = [self animations];
  v4 = [animations countByEnumeratingWithState:&v23 objects:v29 count:16];
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
          objc_enumerationMutation(animations);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          avt_animationsByUngroupingRecursively = [v8 avt_animationsByUngroupingRecursively];
          [array addObjectsFromArray:avt_animationsByUngroupingRecursively];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            avt_animationsByUngroupingRecursively = [v8 copy];
            [v8 beginTime];
            [avt_animationsByUngroupingRecursively setBeginTime:?];
            [v8 speed];
            v11 = v10;
            [self speed];
            *&v13 = v11 * v12;
            [avt_animationsByUngroupingRecursively setSpeed:v13];
            [v8 timeOffset];
            v15 = v14;
            [self beginTime];
            v17 = v15 - v16;
            [self speed];
            v19 = v18;
            [self timeOffset];
            [avt_animationsByUngroupingRecursively setTimeOffset:v20 + v17 * v19];
            [array addObject:avt_animationsByUngroupingRecursively];
          }

          else
          {
            avt_animationsByUngroupingRecursively = avt_default_log();
            if (os_log_type_enabled(avt_animationsByUngroupingRecursively, OS_LOG_TYPE_ERROR))
            {
              [(CAAnimationGroup(AVTExtensions) *)v27 avt_animationsByUngroupingRecursively:v8];
            }
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [animations countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v5);
  }

  v21 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)avt_animationsByUngroupingRecursively
{
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  *self = 138412290;
  *a3 = v8;
  _os_log_error_impl(&dword_1BB472000, a4, OS_LOG_TYPE_ERROR, "Error: Unreachable code: Unsupported animation class %@", self, 0xCu);
}

@end
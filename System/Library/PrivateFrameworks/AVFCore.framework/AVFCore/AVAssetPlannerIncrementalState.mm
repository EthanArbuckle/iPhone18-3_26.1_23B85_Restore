@interface AVAssetPlannerIncrementalState
+ (id)emptyState;
+ (id)fromDictionary:(id)a3 error:(id *)a4;
- (BOOL)resumableBy:(id)a3;
- (id)description;
- (id)toDictionary;
- (id)trackIncrementalStateForTrack:(int)a3;
- (void)dealloc;
@end

@implementation AVAssetPlannerIncrementalState

+ (id)emptyState
{
  v2 = objc_alloc_init(AVAssetPlannerIncrementalState);

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetPlannerIncrementalState;
  [(AVAssetPlannerIncrementalState *)&v3 dealloc];
}

- (id)toDictionary
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_sessionName forKey:@"SessionName"];
  v4 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  trackStates = self->_trackStates;
  v6 = [(NSArray *)trackStates countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(trackStates);
        }

        [v4 addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * v9++), "toDictionary")}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)trackStates countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [v3 setObject:v4 forKey:@"Tracks"];
  return v3;
}

- (id)description
{
  v3 = [-[AVAssetPlannerIncrementalState toDictionary](self "toDictionary")];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  return [v4 stringWithFormat:@"<%@: %p, %@>", NSStringFromClass(v5), self, v3];
}

- (BOOL)resumableBy:(id)a3
{
  v5 = -[NSString isEqual:](self->_sessionName, "isEqual:", [a3 sessionName]);
  if (v5)
  {
    v6 = [(NSArray *)self->_trackStates count];
    if (v6 == [objc_msgSend(a3 "trackStates")])
    {
      v7 = [(NSArray *)self->_trackStates count];
      v8 = v7 - 1;
      if (v7 < 1)
      {
        LOBYTE(v5) = 1;
      }

      else
      {
        v9 = 0;
        do
        {
          v5 = [-[NSArray objectAtIndex:](self->_trackStates objectAtIndex:{v9), "resumableBy:", objc_msgSend(objc_msgSend(a3, "trackStates"), "objectAtIndex:", v9)}];
          if (v5)
          {
            v10 = v8 == v9;
          }

          else
          {
            v10 = 1;
          }

          ++v9;
        }

        while (!v10);
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)trackIncrementalStateForTrack:(int)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  trackStates = self->_trackStates;
  v5 = [(NSArray *)trackStates countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(trackStates);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 assemblyTrackID] == a3)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)trackStates countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

+ (id)fromDictionary:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v41 = 0;
  if (!a3)
  {
    return 0;
  }

  v6 = [a3 objectForKey:@"SessionName"];
  if (v6 && (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [a3 objectForKey:@"Tracks"];
    v9 = [MEMORY[0x1E695DF70] array];
    v17 = OUTLINED_FUNCTION_2_5(v9, v10, v11, v12, v13, v14, v15, v16, 0, 0, 0, 0, 0, 0, 0, 0, v41, v42);
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v8);
          }

          v21 = [AVAssetPlannerTrackState fromDictionary:*(v34 + 8 * i) error:&v41];
          if (!v21 || v41)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1_7();
            goto LABEL_16;
          }

          v22 = [v9 addObject:v21];
        }

        v18 = OUTLINED_FUNCTION_2_5(v22, v23, v24, v25, v26, v27, v28, v29, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v30 = +[AVAssetPlannerIncrementalState emptyState];
    [v30 setSessionName:v7];
    [v30 setTrackStates:v9];
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_7();
LABEL_16:
    v32 = FigSignalErrorAtGM();
    v30 = 0;
    if (a4 && v32)
    {
      v30 = 0;
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVFoundationErrorDomain" code:v32 userInfo:0];
    }
  }

  return v30;
}

@end
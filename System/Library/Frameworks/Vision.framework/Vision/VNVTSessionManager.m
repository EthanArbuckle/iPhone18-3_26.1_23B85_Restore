@interface VNVTSessionManager
- (BOOL)isEqual:(id)a3;
- (VNVTSessionManager)init;
- (VTSessionRef)waitAndGetAvailablePixelRotationSessionForInputPixelFormat:(int)a3 outputPixelFormat:(int)a4 rotation:(int)a5 flipHorizontal:(int)a6 flipVertical:(void *)a7 error:;
- (id).cxx_construct;
- (unint64_t)hash;
- (void)releasePixelRotationSession:(uint64_t)a1;
@end

@implementation VNVTSessionManager

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v5 = v4;
  if (!self)
  {
    maxSessionsCount = 0;
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_6;
  }

  maxSessionsCount = self->_maxSessionsCount;
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  v7 = v5->_maxSessionsCount;
LABEL_6:
  v8 = maxSessionsCount == v7;

LABEL_9:
  return v8;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = VNVTSessionManager;
  v3 = [(VNVTSessionManager *)&v6 hash];
  if (self)
  {
    maxSessionsCount = self->_maxSessionsCount;
  }

  else
  {
    maxSessionsCount = 0;
  }

  return maxSessionsCount ^ __ROR8__(v3, 51);
}

- (VNVTSessionManager)init
{
  v6.receiver = self;
  v6.super_class = VNVTSessionManager;
  v2 = [(VNVTSessionManager *)&v6 init];
  if (!v2)
  {
    return 0;
  }

  v7.receiver = v2;
  v7.super_class = VNVTSessionManager;
  v3 = [(VNVTSessionManager *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v3->_maxSessionsCount = 3;
    operator new();
  }

  return v4;
}

- (VTSessionRef)waitAndGetAvailablePixelRotationSessionForInputPixelFormat:(int)a3 outputPixelFormat:(int)a4 rotation:(int)a5 flipHorizontal:(int)a6 flipVertical:(void *)a7 error:
{
  v54 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __142__VNVTSessionManager_waitAndGetAvailablePixelRotationSessionForInputPixelFormat_outputPixelFormat_rotation_flipHorizontal_flipVertical_error___block_invoke;
    aBlock[3] = &__block_descriptor_36_e21_B16__0__VNVTSession_8l;
    v48 = a4;
    v11 = _Block_copy(aBlock);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __142__VNVTSessionManager_waitAndGetAvailablePixelRotationSessionForInputPixelFormat_outputPixelFormat_rotation_flipHorizontal_flipVertical_error___block_invoke_2;
    v43[3] = &__block_descriptor_38_e22___VNVTSession_16__0__8l;
    v44 = a4;
    v45 = a5;
    v46 = a6;
    v12 = _Block_copy(v43);
    v13 = *(a1 + 16);
    v14 = v11;
    v41 = v12;
    dispatch_semaphore_wait(*(v13 + 8), 0xFFFFFFFFFFFFFFFFLL);
    os_unfair_lock_lock((v13 + 16));
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v15 = *(v13 + 24);
    v37 = v13;
    v16 = [v15 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v16)
    {
      v17 = 0;
      v18 = *v50;
LABEL_4:
      v19 = 0;
      v42 = v17 + v16;
      while (1)
      {
        if (*v50 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v49 + 1) + 8 * v19);
        v21 = v20;
        if (v20)
        {
          if (*(v20 + 2) == a2)
          {
            v22 = *(v20 + 3);
LABEL_10:
            if (v22 == a3 && (v14[2](v14, v20) & 1) != 0)
            {

              if (!v21)
              {
                goto LABEL_20;
              }

              v24 = v37;
              [*(v37 + 24) removeObjectAtIndex:v17];
              goto LABEL_25;
            }
          }
        }

        else if (!a2)
        {
          v22 = 0;
          goto LABEL_10;
        }

        ++v17;
        if (v16 == ++v19)
        {
          v23 = [v15 countByEnumeratingWithState:&v49 objects:v53 count:16];
          v16 = v23;
          v17 = v42;
          if (v23)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

LABEL_20:
    v24 = v37;
    v25 = [*(v37 + 24) count];
    v26 = [*(v37 + 32) count];
    if (v25 && v26 + v25 == *v37)
    {
      [*(v37 + 24) removeLastObject];
    }

    v27 = v41[2](v41, a7);
    v21 = v27;
    if (v27)
    {
      *(v27 + 8) = a2;
      *(v27 + 12) = a3;
    }

LABEL_25:
    [*(v24 + 32) addObject:v21];
    os_unfair_lock_unlock((v24 + 16));

    if (!v21)
    {
      goto LABEL_38;
    }

    v28 = v21[4];
    v29 = *MEMORY[0x1E695E4D0];
    v30 = *MEMORY[0x1E695E4C0];
    if (a5)
    {
      v31 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v31 = *MEMORY[0x1E695E4C0];
    }

    v32 = VTSessionSetProperty(v21[4], *MEMORY[0x1E6983D78], v31);
    if (v32)
    {
      if (a7)
      {
LABEL_37:
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set VTSession property, error: %d", v32];
        *a7 = [VNError errorForInternalErrorWithLocalizedDescription:v34];
      }
    }

    else
    {
      if (a6)
      {
        v33 = v29;
      }

      else
      {
        v33 = v30;
      }

      v32 = VTSessionSetProperty(v28, *MEMORY[0x1E6983D80], v33);
      if (!v32)
      {
        v35 = v21;
        goto LABEL_39;
      }

      if (a7)
      {
        goto LABEL_37;
      }
    }

LABEL_38:
    v35 = 0;
LABEL_39:

    goto LABEL_40;
  }

  v35 = 0;
LABEL_40:

  return v35;
}

BOOL __142__VNVTSessionManager_waitAndGetAvailablePixelRotationSessionForInputPixelFormat_outputPixelFormat_rotation_flipHorizontal_flipVertical_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24);
  }

  else
  {
    v2 = 0;
  }

  return v2 == *(a1 + 32);
}

id __142__VNVTSessionManager_waitAndGetAvailablePixelRotationSessionForInputPixelFormat_outputPixelFormat_rotation_flipHorizontal_flipVertical_error___block_invoke_2(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = VTPixelRotationSessionCreateWithRotationAndFlip();
  if (a2)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot create VTPixelRotationSessionRef object: session: %lu, error: %d", 0, v3];
    v5 = [v4 UTF8String];
    VNValidatedLog(4, @"%s", v6, v7, v8, v9, v10, v11, v5);
    *a2 = [VNError errorForInternalErrorWithLocalizedDescription:v4];
  }

  return 0;
}

- (void)releasePixelRotationSession:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 16);
    v13 = v3;
    v5 = v3;
    if (v5)
    {
      os_unfair_lock_lock((v4 + 16));
      if (([*(v4 + 32) containsObject:v5] & 1) == 0)
      {
      }

      [*(v4 + 24) addObject:v5];
      [*(v4 + 32) removeObject:v5];
      os_unfair_lock_unlock((v4 + 16));
      dispatch_semaphore_signal(*(v4 + 8));
    }

    v3 = v13;
  }
}

@end
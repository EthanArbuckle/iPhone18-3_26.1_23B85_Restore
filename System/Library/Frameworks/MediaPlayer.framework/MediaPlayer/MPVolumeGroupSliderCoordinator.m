@interface MPVolumeGroupSliderCoordinator
- (MPVolumeGroupSliderCoordinator)initWithMasterVolumeSlider:(id)a3 individualVolumeSliders:(id)a4;
- (float)_maxOptimisticValue;
- (id)_findExistingVolumeSlider:(id)a3;
- (void)_addControlEventsForVolumeSliders:(id)a3;
- (void)_removeControlEventsForVolumeSliders:(id)a3;
- (void)_resetMasterVolumeSlider;
- (void)_resetOptimisticScales;
- (void)_setControlEventsForVolumeSlider:(id)a3 add:(BOOL)a4;
- (void)_updateOptimisticValueCache;
- (void)addIndividualVolumeSlider:(id)a3;
- (void)removeAllIndividualVolumeSliders;
- (void)removeIndividualVolumeSlider:(id)a3;
- (void)syncSliders:(BOOL)a3;
- (void)volumeSliderDidEndTracking:(id)a3;
- (void)volumeSliderValueChanged:(id)a3;
@end

@implementation MPVolumeGroupSliderCoordinator

- (void)_setControlEventsForVolumeSlider:(id)a3 add:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    [v6 addTarget:self action:sel_volumeSliderValueChanged_ forControlEvents:4096];
    [v6 addTarget:self action:sel_volumeSliderDidEndTracking_ forControlEvents:448];
  }

  else
  {
    [v6 removeTarget:self action:sel_volumeSliderValueChanged_ forControlEvents:4096];
    [v6 removeTarget:self action:sel_volumeSliderDidEndTracking_ forControlEvents:448];
  }
}

- (void)_removeControlEventsForVolumeSliders:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MPVolumeGroupSliderCoordinator *)self _setControlEventsForVolumeSlider:*(*(&v9 + 1) + 8 * v8++) add:0];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_addControlEventsForVolumeSliders:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MPVolumeGroupSliderCoordinator *)self _setControlEventsForVolumeSlider:*(*(&v9 + 1) + 8 * v8++) add:1];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_findExistingVolumeSlider:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_individualVolumeSliders;
  v28 = [(NSMutableSet *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v28)
  {
    v6 = *v36;
    v25 = *v36;
    v26 = v5;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v36 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v35 + 1) + 8 * v7);
      if (v8 != v5)
      {
        v9 = [*(*(&v35 + 1) + 8 * v7) volumeController];
        v10 = [v9 dataSource];

        v11 = [v5 volumeController];
        v12 = [v11 dataSource];

        v30 = v10;
        v13 = [v10 outputDeviceRoute];
        v29 = v12;
        v14 = [v12 outputDeviceRoute];
        v15 = [v13 routeUID];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v16 = [v14 outputDevices];
        v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v17)
        {
          v18 = v17;
          v24 = v3;
          v19 = *v32;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v32 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = MRAVOutputDeviceCopyUniqueIdentifier();
              if ([v21 isEqualToString:v15])
              {
                v3 = v8;

                v22 = 0;
                v5 = v26;
                goto LABEL_17;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }

          v22 = 1;
          v5 = v26;
          v3 = v24;
LABEL_17:
          v6 = v25;
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          break;
        }
      }

      if (++v7 == v28)
      {
        v28 = [(NSMutableSet *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v28)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:
    v3 = 0;
  }

  return v3;
}

- (void)syncSliders:(BOOL)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (!self->_synced)
  {
    v4 = [[MPCubicSpringTimingParameters alloc] initWithMass:2.0 stiffness:300.0 damping:36.0 initialVelocity:0.0, 0.0];
    v5 = [objc_alloc(MEMORY[0x1E69DC908]) initWithControlPoint1:0.187800005 controlPoint2:{0.00230000005, 0.539900005, 0.962899983}];
    [(MPCubicSpringTimingParameters *)v4 setSpringCubicTimingParameters:v5];

    v6 = [(UIViewPropertyAnimator *)[MPCubicSpringAnimator alloc] initWithDuration:v4 timingParameters:1.0];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = self->_individualVolumeSliders;
    v7 = [(NSMutableSet *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          [v11 setOptimisticState:0];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __46__MPVolumeGroupSliderCoordinator_syncSliders___block_invoke;
          v14[3] = &unk_1E76823C0;
          v14[4] = v11;
          v14[5] = self;
          [(UIViewPropertyAnimator *)v6 addAnimations:v14];
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __46__MPVolumeGroupSliderCoordinator_syncSliders___block_invoke_2;
          v13[3] = &unk_1E7681CA0;
          v13[4] = v11;
          [(UIViewPropertyAnimator *)v6 addCompletion:v13];
        }

        v8 = [(NSMutableSet *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [(UIViewPropertyAnimator *)v6 startAnimation];
    self->_synced = 1;
    [(MPVolumeGroupSliderCoordinator *)self _updateOptimisticValueCache];
  }
}

uint64_t __46__MPVolumeGroupSliderCoordinator_syncSliders___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(*(a1 + 40) + 56) optimisticValue];

  return [v1 setValue:1 animated:?];
}

uint64_t __46__MPVolumeGroupSliderCoordinator_syncSliders___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) value];
  v2 = *(a1 + 32);

  return [v2 setOptimisticValue:?];
}

- (void)_resetMasterVolumeSlider
{
  [(MPVolumeSlider *)self->_masterVolumeSlider setOptimisticState:1];
  v3 = [(MPVolumeSlider *)self->_masterVolumeSlider volumeController];
  [v3 volumeValue];
  [(MPVolumeSlider *)self->_masterVolumeSlider setOptimisticValue:?];

  masterVolumeSlider = self->_masterVolumeSlider;

  [(MPVolumeSlider *)masterVolumeSlider setOptimisticState:0];
}

- (void)_updateOptimisticValueCache
{
  v21 = *MEMORY[0x1E69E9840];
  trackingSlider = self->_trackingSlider;
  masterVolumeSlider = self->_masterVolumeSlider;
  if (trackingSlider == masterVolumeSlider && ([(MPVolumeSlider *)masterVolumeSlider optimisticValue], v5 <= 0.00000011921))
  {
    v14 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEFAULT, "Do not update optimistic value cache since master volume was set to 0.", buf, 2u);
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self->_allSliders;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = MEMORY[0x1E696AD98];
          [v11 value];
          v13 = [v12 numberWithFloat:?];
          [(NSMapTable *)self->_optimisticValues setObject:v13 forKey:v11];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v8);
    }

    [(MPVolumeGroupSliderCoordinator *)self _resetOptimisticScales];
  }
}

- (void)_resetOptimisticScales
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD98];
  [(MPVolumeGroupSliderCoordinator *)self _maxOptimisticValue];
  v25 = [v3 numberWithFloat:?];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = self->_individualVolumeSliders;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [(NSMapTable *)self->_optimisticValues objectForKey:v11];
        [v12 floatValue];
        v14 = v13;
        if (v14 >= 0.0000101192093)
        {
          [v12 floatValue];
          v18 = v17;
          [v25 floatValue];
          v16 = v18 / *&v14;
        }

        else
        {
          masterVolumeSlider = self->_masterVolumeSlider;
          if (v11 == masterVolumeSlider)
          {
            v16 = 1.0;
          }

          else
          {
            v16 = 0.0;
          }

          if (v11 != masterVolumeSlider)
          {
            ++v8;
          }
        }

        *&v14 = v16;
        v19 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
        [(NSMapTable *)self->_optimisticScales setObject:v19 forKey:v11];
        if (v16 <= 0.00000011921)
        {
          ++v7;
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  [(NSMapTable *)self->_optimisticScales setObject:&unk_1F150AC78 forKey:self->_masterVolumeSlider];
  if (v7 == [(NSMutableSet *)self->_individualVolumeSliders count])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = self->_individualVolumeSliders;
    v21 = [(NSMutableSet *)v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v27;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [(NSMapTable *)self->_optimisticScales setObject:&unk_1F150AC78 forKey:*(*(&v26 + 1) + 8 * j)];
        }

        v22 = [(NSMutableSet *)v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v22);
    }
  }

  else if (v8 == [(NSMutableSet *)self->_individualVolumeSliders count]&& self->_trackingSlider != self->_masterVolumeSlider)
  {
    [(NSMapTable *)self->_optimisticScales setObject:&unk_1F150AC78 forKey:?];
  }
}

- (float)_maxOptimisticValue
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(NSMapTable *)self->_optimisticValues keyEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(*(&v13 + 1) + 8 * i) != self->_masterVolumeSlider)
        {
          v9 = [(NSMapTable *)self->_optimisticValues objectForKey:?];
          [v9 floatValue];
          v11 = v10;

          if (v11 > v7)
          {
            v7 = v11;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (void)volumeSliderDidEndTracking:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  trackingSlider = self->_trackingSlider;
  if (trackingSlider == v4)
  {
    if (self->_masterVolumeSlider == v4 && ([(MPVolumeSlider *)v4 value], v7 <= 0.00000011921))
    {
      v44 = v5;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v28 = self->_allSliders;
      v29 = [(NSArray *)v28 countByEnumeratingWithState:&v52 objects:v63 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v53;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v53 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v52 + 1) + 8 * i);
            [(MPVolumeSlider *)v33 setOptimisticState:0];
            if (v33 != self->_masterVolumeSlider)
            {
              v34 = os_log_create("com.apple.amp.mediaplayer", "Volume");
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                [(MPVolumeSlider *)v33 value];
                v36 = v35;
                [(MPVolumeSlider *)v33 optimisticValue];
                v38 = v37;
                v39 = [(MPVolumeSlider *)v33 volumeControlLabel];
                *buf = 134218498;
                v58 = v36;
                v59 = 2048;
                v60 = v38;
                v61 = 2114;
                v62 = v39;
                _os_log_impl(&dword_1A238D000, v34, OS_LOG_TYPE_DEFAULT, "MPVolumeGroupSliderCoordinator changing %f to %f for %{public}@", buf, 0x20u);
              }

              [(MPVolumeSlider *)v33 optimisticValue];
              [(MPVolumeSlider *)v33 setValue:?];
            }
          }

          v30 = [(NSArray *)v28 countByEnumeratingWithState:&v52 objects:v63 count:16];
        }

        while (v30);
      }

      v40 = self->_trackingSlider;
      self->_trackingSlider = 0;

      v41 = os_log_create("com.apple.amp.mediaplayer", "Volume");
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A238D000, v41, OS_LOG_TYPE_DEFAULT, "End optimistic state.", buf, 2u);
      }

      v5 = v44;
    }

    else
    {
      self->_shouldOverrideTracking = 1;
      [(MPVolumeGroupSliderCoordinator *)self volumeSliderValueChanged:v5];
      self->_shouldOverrideTracking = 0;
      v8 = self->_trackingSlider;
      self->_trackingSlider = 0;

      v9 = [[MPCubicSpringTimingParameters alloc] initWithMass:2.0 stiffness:300.0 damping:28.0 initialVelocity:0.0, 0.0];
      v10 = [objc_alloc(MEMORY[0x1E69DC908]) initWithControlPoint1:0.187800005 controlPoint2:{0.00230000005, 0.539900005, 0.962899983}];
      [(MPCubicSpringTimingParameters *)v9 setSpringCubicTimingParameters:v10];

      v11 = [(UIViewPropertyAnimator *)[MPCubicSpringAnimator alloc] initWithDuration:v9 timingParameters:0.3];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v12 = self->_optimisticScales;
      v13 = [(NSMapTable *)v12 countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v13)
      {
        v14 = v13;
        v42 = v9;
        v43 = v5;
        v15 = 0;
        v16 = *v49;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v49 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v48 + 1) + 8 * j);
            v19 = [(NSMapTable *)self->_optimisticScales objectForKey:v18, v42];
            [v19 floatValue];
            v21 = v20;

            v22 = [(NSMapTable *)self->_optimisticScales objectForKey:v18];
            [v22 floatValue];
            v24 = v23;

            if (v18 != self->_masterVolumeSlider)
            {
              v25 = v21 + -1.0;
              if ((v21 + -1.0) < 0.0)
              {
                v25 = -(v21 + -1.0);
              }

              if (v25 <= 0.0999998808 && v24 != 1.0)
              {
                [(MPVolumeSlider *)v18 setOptimisticState:0];
                v47[0] = MEMORY[0x1E69E9820];
                v47[1] = 3221225472;
                v47[2] = __61__MPVolumeGroupSliderCoordinator_volumeSliderDidEndTracking___block_invoke;
                v47[3] = &unk_1E76823C0;
                v47[4] = v18;
                v47[5] = self;
                [(UIViewPropertyAnimator *)v11 addAnimations:v47];
                v46[0] = MEMORY[0x1E69E9820];
                v46[1] = 3221225472;
                v46[2] = __61__MPVolumeGroupSliderCoordinator_volumeSliderDidEndTracking___block_invoke_2;
                v46[3] = &unk_1E7681CA0;
                v46[4] = v18;
                [(UIViewPropertyAnimator *)v11 addCompletion:v46];
                v15 = 1;
                self->_synced = 1;
              }
            }
          }

          v14 = [(NSMapTable *)v12 countByEnumeratingWithState:&v48 objects:v56 count:16];
        }

        while (v14);

        v9 = v42;
        v5 = v43;
        if (v15)
        {
          [(UIViewPropertyAnimator *)v11 startAnimation];
        }
      }

      else
      {
      }

      ++self->_inFlightDisableOptimisticStateRequests;
      v27 = dispatch_time(0, 2000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__MPVolumeGroupSliderCoordinator_volumeSliderDidEndTracking___block_invoke_3;
      block[3] = &unk_1E7682518;
      block[4] = self;
      dispatch_after(v27, MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    self->_trackingSlider = 0;
  }
}

uint64_t __61__MPVolumeGroupSliderCoordinator_volumeSliderDidEndTracking___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(*(a1 + 40) + 56) value];

  return [v1 setValue:1 animated:?];
}

uint64_t __61__MPVolumeGroupSliderCoordinator_volumeSliderDidEndTracking___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) value];
  v2 = *(a1 + 32);

  return [v2 setOptimisticValue:?];
}

void __61__MPVolumeGroupSliderCoordinator_volumeSliderDidEndTracking___block_invoke_3(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  --*(*(a1 + 32) + 48);
  v1 = *(a1 + 32);
  if (!*(v1 + 48) && !*(v1 + 24))
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "Committing optimistic values", buf, 2u);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = *(*(a1 + 32) + 8);
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v21;
      *&v6 = 134218498;
      v19 = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          [v10 setOptimisticState:{0, v19, v20}];
          v11 = *(a1 + 32);
          if (v10 != v11[7])
          {
            v12 = os_log_create("com.apple.amp.mediaplayer", "Volume");
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              [v10 value];
              v14 = v13;
              [v10 optimisticValue];
              v16 = v15;
              v17 = [v10 volumeControlLabel];
              *buf = v19;
              v25 = v14;
              v26 = 2048;
              v27 = v16;
              v28 = 2114;
              v29 = v17;
              _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEFAULT, "MPVolumeGroupSliderCoordinator changing %f to %f for %{public}@", buf, 0x20u);
            }

            [v10 optimisticValue];
            [v10 setValue:?];
            v11 = *(a1 + 32);
          }

          [v11 _resetMasterVolumeSlider];
        }

        v7 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v7);
    }

    v18 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_DEFAULT, "End optimistic state.", buf, 2u);
    }
  }
}

- (void)volumeSliderValueChanged:(id)a3
{
  v74 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (([v6 isTracking] & 1) == 0 && !self->_shouldOverrideTracking)
  {
    goto LABEL_48;
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v7 = [(NSMapTable *)self->_optimisticScales objectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v65;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v65 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v64 + 1) + 8 * i) floatValue];
        if (fabs(v12 + -0.999999881) >= 0.0999998808)
        {
          self->_synced = 0;
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v64 objects:v73 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  trackingSlider = self->_trackingSlider;
  if (!trackingSlider)
  {
    if (self->_shouldOverrideTracking)
    {
      trackingSlider = 0;
    }

    else
    {
      objc_storeStrong(&self->_trackingSlider, a3);
      v14 = os_log_create("com.apple.amp.mediaplayer", "Volume");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(NSMutableSet *)self->_individualVolumeSliders count];
        *buf = 134217984;
        v72 = v15;
        _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEFAULT, "Begin optimistic state with %lu individual sliders", buf, 0xCu);
      }

      [(MPVolumeGroupSliderCoordinator *)self _updateOptimisticValueCache];
      trackingSlider = self->_trackingSlider;
    }
  }

  v16 = [(NSMutableSet *)self->_individualVolumeSliders containsObject:trackingSlider];
  v17 = v16;
  v18 = self->_trackingSlider;
  masterVolumeSlider = self->_masterVolumeSlider;
  if (v18 != masterVolumeSlider && (v16 & 1) == 0)
  {
    v51 = [MEMORY[0x1E696AAA8] currentHandler];
    [v51 handleFailureInMethod:a2 object:self file:@"MPVolumeGroupSliderCoordinator.m" lineNumber:134 description:@"We don't have a master or individual slider."];
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v20 = self->_allSliders;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v61;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v61 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v60 + 1) + 8 * j) setOptimisticState:*(*(&v60 + 1) + 8 * j) != self->_trackingSlider];
      }

      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v60 objects:v70 count:16];
    }

    while (v22);
  }

  if (v18 == masterVolumeSlider)
  {
    v29 = MEMORY[0x1E696AD98];
    [v6 value];
    v26 = [v29 numberWithFloat:?];
    [(NSMapTable *)self->_optimisticValues setObject:v26 forKey:v6];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v28 = self->_individualVolumeSliders;
    v30 = [(NSMutableSet *)v28 countByEnumeratingWithState:&v56 objects:v69 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v57;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v57 != v32)
          {
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v56 + 1) + 8 * k);
          v35 = [(NSMapTable *)self->_optimisticScales objectForKey:v34];
          [v35 floatValue];
          v37 = v36;

          [v6 value];
          *&v39 = v37 * v38;
          v40 = [MEMORY[0x1E696AD98] numberWithFloat:v39];
          [(NSMapTable *)self->_optimisticValues setObject:v40 forKey:v34];
        }

        v31 = [(NSMutableSet *)v28 countByEnumeratingWithState:&v56 objects:v69 count:16];
      }

      while (v31);
    }

    goto LABEL_39;
  }

  if (v17)
  {
    v25 = MEMORY[0x1E696AD98];
    [v6 value];
    v26 = [v25 numberWithFloat:?];
    [(NSMapTable *)self->_optimisticValues setObject:v26 forKey:v6];
    v27 = MEMORY[0x1E696AD98];
    [(MPVolumeGroupSliderCoordinator *)self _maxOptimisticValue];
    v28 = [v27 numberWithFloat:?];
    [(NSMapTable *)self->_optimisticValues setObject:v28 forKey:self->_masterVolumeSlider];
    [(MPVolumeGroupSliderCoordinator *)self _resetOptimisticScales];
LABEL_39:
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v41 = self->_allSliders;
  v42 = [(NSArray *)v41 countByEnumeratingWithState:&v52 objects:v68 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v53;
    do
    {
      for (m = 0; m != v43; ++m)
      {
        if (*v53 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v52 + 1) + 8 * m);
        v47 = [(NSMapTable *)self->_optimisticValues objectForKey:v46, v52];
        [v47 floatValue];
        v49 = v48;

        LODWORD(v50) = v49;
        [v46 setOptimisticValue:v50];
      }

      v43 = [(NSArray *)v41 countByEnumeratingWithState:&v52 objects:v68 count:16];
    }

    while (v43);
  }

LABEL_48:
}

- (void)removeAllIndividualVolumeSliders
{
  [(NSMutableSet *)self->_individualVolumeSliders removeAllObjects];
  [(NSMapTable *)self->_optimisticScales removeAllObjects];
  optimisticValues = self->_optimisticValues;

  [(NSMapTable *)optimisticValues removeAllObjects];
}

- (void)removeIndividualVolumeSlider:(id)a3
{
  v9 = a3;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"WHAOptimisticStateVolumeDisabled", @"com.apple.Music", 0);
  v5 = v9;
  if (v9 && !AppBooleanValue)
  {
    [(NSMapTable *)self->_optimisticValues removeObjectForKey:v9];
    [(NSMapTable *)self->_optimisticScales removeObjectForKey:v9];
    [(NSMutableSet *)self->_individualVolumeSliders removeObject:v9];
    v6 = [(NSMutableSet *)self->_individualVolumeSliders setByAddingObject:self->_masterVolumeSlider];
    v7 = [v6 allObjects];
    allSliders = self->_allSliders;
    self->_allSliders = v7;

    [(MPVolumeGroupSliderCoordinator *)self _removeControlEventsForVolumeSlider:v9];
    [(MPVolumeGroupSliderCoordinator *)self _updateOptimisticValueCache];
    [(MPVolumeGroupSliderCoordinator *)self _resetMasterVolumeSlider];
    v5 = v9;
  }
}

- (void)addIndividualVolumeSlider:(id)a3
{
  v8 = a3;
  if (!CFPreferencesGetAppBooleanValue(@"WHAOptimisticStateVolumeDisabled", @"com.apple.Music", 0))
  {
    v4 = [(MPVolumeGroupSliderCoordinator *)self _findExistingVolumeSlider:v8];
    [(MPVolumeGroupSliderCoordinator *)self removeIndividualVolumeSlider:v4];

    [(NSMapTable *)self->_optimisticValues removeObjectForKey:v8];
    [(NSMapTable *)self->_optimisticScales removeObjectForKey:v8];
    [(NSMutableSet *)self->_individualVolumeSliders addObject:v8];
    [v8 value];
    [v8 setOptimisticValue:?];
    v5 = [(NSMutableSet *)self->_individualVolumeSliders setByAddingObject:self->_masterVolumeSlider];
    v6 = [v5 allObjects];
    allSliders = self->_allSliders;
    self->_allSliders = v6;

    [(MPVolumeGroupSliderCoordinator *)self _addControlEventsForVolumeSlider:v8];
    [(MPVolumeGroupSliderCoordinator *)self _updateOptimisticValueCache];
    [(MPVolumeGroupSliderCoordinator *)self _resetMasterVolumeSlider];
  }
}

- (MPVolumeGroupSliderCoordinator)initWithMasterVolumeSlider:(id)a3 individualVolumeSliders:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = MPVolumeGroupSliderCoordinator;
  v9 = [(MPVolumeGroupSliderCoordinator *)&v28 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_masterVolumeSlider, a3);
    v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v8];
    individualVolumeSliders = v10->_individualVolumeSliders;
    v10->_individualVolumeSliders = v11;

    v13 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    optimisticValues = v10->_optimisticValues;
    v10->_optimisticValues = v13;

    v15 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    optimisticScales = v10->_optimisticScales;
    v10->_optimisticScales = v15;

    v10->_inFlightDisableOptimisticStateRequests = 0;
    v10->_shouldOverrideTracking = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = v8;
    v18 = [v17 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v24 + 1) + 8 * i);
          [(MPVolumeGroupSliderCoordinator *)v10 addIndividualVolumeSlider:v22, v24];
          [(MPVolumeGroupSliderCoordinator *)v10 _addControlEventsForVolumeSlider:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v19);
    }

    [(MPVolumeGroupSliderCoordinator *)v10 _addControlEventsForVolumeSlider:v10->_masterVolumeSlider];
    [(MPVolumeGroupSliderCoordinator *)v10 _updateOptimisticValueCache];
  }

  return v10;
}

@end
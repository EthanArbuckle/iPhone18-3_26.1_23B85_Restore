@interface AVPlaybackSpeedCollection
+ (AVPlaybackSpeedCollection)collectionWithSpeeds:(id)a3;
+ (id)defaultSpeedFromList:(id)a3;
- (AVPlaybackSpeed)selectedSpeed;
- (id)_descriptionWithInternalState:(void *)a1;
- (id)_initInternalWithSpeeds:(id)a3;
- (id)delegate;
- (id)displaySpeeds;
- (void)selectNextPlaybackSpeed:(id)a3;
- (void)selectSpeed:(id)a3;
- (void)setActiveSpeed:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation AVPlaybackSpeedCollection

- (id)_descriptionWithInternalState:(void *)a1
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      [a1 displaySpeeds];
    }

    else
    {
      [a1 speeds];
    }
    v4 = ;
    v23.receiver = a1;
    v23.super_class = AVPlaybackSpeedCollection;
    v5 = objc_msgSendSuper2(&v23, sel_description);
    v6 = [v5 stringByAppendingFormat:@" [\n"];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        v10 = 0;
        v11 = v6;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v19 + 1) + 8 * v10);
          if (a2)
          {
            [v12 internalDescription];
          }

          else
          {
            [v12 description];
          }
          v13 = ;
          v14 = [a1 activeSpeed];

          if (v12 == v14)
          {
            v15 = @"\t%@ - active\n";
          }

          else
          {
            v15 = @"\t%@\n";
          }

          v6 = [v11 stringByAppendingFormat:v15, v13];

          ++v10;
          v11 = v6;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v8);
    }

    v16 = [v6 stringByAppendingFormat:@"]"];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)displaySpeeds
{
  v3 = [(AVPlaybackSpeedCollection *)self speeds];
  if (([v3 containsObject:self->_activeSpeed] & 1) == 0)
  {
    v4 = [v3 arrayByAddingObject:self->_activeSpeed];

    v3 = v4;
  }

  return v3;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setActiveSpeed:(id)a3
{
  v5 = a3;
  activeSpeed = self->_activeSpeed;
  p_activeSpeed = &self->_activeSpeed;
  if (activeSpeed != v5)
  {
    v8 = v5;
    objc_storeStrong(p_activeSpeed, a3);
    v5 = v8;
  }
}

- (void)selectNextPlaybackSpeed:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [(AVPlaybackSpeedCollection *)self speeds];
  v5 = [(AVPlaybackSpeedCollection *)self selectedSpeed];
  if (v5)
  {
    v6 = [v4 indexOfObject:v5];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }

    v7 = [v4 objectAtIndex:{(v6 + 1) % objc_msgSend(v4, "count")}];
  }

  else
  {
    v7 = [v4 firstObject];
  }

  v8 = v7;
  if (v7)
  {
    [(AVPlaybackSpeedCollection *)self selectSpeed:v7];
    goto LABEL_9;
  }

LABEL_7:
  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v5 description];
    v10 = [(AVPlaybackSpeedCollection *)self description];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: Internal inconsistency. Selected speed was not found in playback speed collection.\n%@\n%@", &v11, 0x16u);
  }

LABEL_9:
}

- (void)selectSpeed:(id)a3
{
  v6 = a3;
  if ([(NSArray *)self->_speeds containsObject:?])
  {
    v4 = [(AVPlaybackSpeedCollection *)self selectedSpeed];

    if (v4 != v6)
    {
      [(AVPlaybackSpeedCollection *)self setActiveSpeed:v6];
      v5 = [(AVPlaybackSpeedCollection *)self delegate];
      [v5 playbackSpeedCollection:self selectedPlaybackSpeedDidChangeTo:v6];
    }
  }
}

- (AVPlaybackSpeed)selectedSpeed
{
  v3 = self->_activeSpeed;
  v4 = v3;
  if (self && v3)
  {
    v5 = [(AVPlaybackSpeedCollection *)self speeds];
    v6 = [v5 containsObject:v4];

    if (v6 && ![(AVPlaybackSpeed *)self->_activeSpeed isSynthesized])
    {
      v7 = self->_activeSpeed;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)_initInternalWithSpeeds:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AVPlaybackSpeedCollection;
  v6 = [(AVPlaybackSpeedCollection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_speeds, a3);
    v8 = [AVPlaybackSpeedCollection defaultSpeedFromList:v5];
    activeSpeed = v7->_activeSpeed;
    v7->_activeSpeed = v8;
  }

  return v7;
}

+ (id)defaultSpeedFromList:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v12 + 1) + 8 * v7);
      [v8 rate];
      if (v9 == 1.0)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v8;

    if (v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v10 = [v3 firstObject];
LABEL_12:

  return v10;
}

+ (AVPlaybackSpeedCollection)collectionWithSpeeds:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initInternalWithSpeeds:v4];

  return v5;
}

@end
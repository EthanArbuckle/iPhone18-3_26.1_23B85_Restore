@interface AVPlaybackSpeedCollection
+ (AVPlaybackSpeedCollection)collectionWithSpeeds:(id)speeds;
+ (id)defaultSpeedFromList:(id)list;
- (AVPlaybackSpeed)selectedSpeed;
- (id)_descriptionWithInternalState:(void *)state;
- (id)_initInternalWithSpeeds:(id)speeds;
- (id)delegate;
- (id)displaySpeeds;
- (void)selectNextPlaybackSpeed:(id)speed;
- (void)selectSpeed:(id)speed;
- (void)setActiveSpeed:(id)speed;
- (void)setDelegate:(id)delegate;
@end

@implementation AVPlaybackSpeedCollection

- (id)_descriptionWithInternalState:(void *)state
{
  v25 = *MEMORY[0x1E69E9840];
  if (state)
  {
    if (a2)
    {
      [state displaySpeeds];
    }

    else
    {
      [state speeds];
    }
    v4 = ;
    v23.receiver = state;
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
          activeSpeed = [state activeSpeed];

          if (v12 == activeSpeed)
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
  speeds = [(AVPlaybackSpeedCollection *)self speeds];
  if (([speeds containsObject:self->_activeSpeed] & 1) == 0)
  {
    v4 = [speeds arrayByAddingObject:self->_activeSpeed];

    speeds = v4;
  }

  return speeds;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)setActiveSpeed:(id)speed
{
  speedCopy = speed;
  activeSpeed = self->_activeSpeed;
  p_activeSpeed = &self->_activeSpeed;
  if (activeSpeed != speedCopy)
  {
    v8 = speedCopy;
    objc_storeStrong(p_activeSpeed, speed);
    speedCopy = v8;
  }
}

- (void)selectNextPlaybackSpeed:(id)speed
{
  v15 = *MEMORY[0x1E69E9840];
  speeds = [(AVPlaybackSpeedCollection *)self speeds];
  selectedSpeed = [(AVPlaybackSpeedCollection *)self selectedSpeed];
  if (selectedSpeed)
  {
    v6 = [speeds indexOfObject:selectedSpeed];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }

    firstObject = [speeds objectAtIndex:{(v6 + 1) % objc_msgSend(speeds, "count")}];
  }

  else
  {
    firstObject = [speeds firstObject];
  }

  v8 = firstObject;
  if (firstObject)
  {
    [(AVPlaybackSpeedCollection *)self selectSpeed:firstObject];
    goto LABEL_9;
  }

LABEL_7:
  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [selectedSpeed description];
    v10 = [(AVPlaybackSpeedCollection *)self description];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: Internal inconsistency. Selected speed was not found in playback speed collection.\n%@\n%@", &v11, 0x16u);
  }

LABEL_9:
}

- (void)selectSpeed:(id)speed
{
  speedCopy = speed;
  if ([(NSArray *)self->_speeds containsObject:?])
  {
    selectedSpeed = [(AVPlaybackSpeedCollection *)self selectedSpeed];

    if (selectedSpeed != speedCopy)
    {
      [(AVPlaybackSpeedCollection *)self setActiveSpeed:speedCopy];
      delegate = [(AVPlaybackSpeedCollection *)self delegate];
      [delegate playbackSpeedCollection:self selectedPlaybackSpeedDidChangeTo:speedCopy];
    }
  }
}

- (AVPlaybackSpeed)selectedSpeed
{
  v3 = self->_activeSpeed;
  v4 = v3;
  if (self && v3)
  {
    speeds = [(AVPlaybackSpeedCollection *)self speeds];
    v6 = [speeds containsObject:v4];

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

- (id)_initInternalWithSpeeds:(id)speeds
{
  speedsCopy = speeds;
  v11.receiver = self;
  v11.super_class = AVPlaybackSpeedCollection;
  v6 = [(AVPlaybackSpeedCollection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_speeds, speeds);
    v8 = [AVPlaybackSpeedCollection defaultSpeedFromList:speedsCopy];
    activeSpeed = v7->_activeSpeed;
    v7->_activeSpeed = v8;
  }

  return v7;
}

+ (id)defaultSpeedFromList:(id)list
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  listCopy = list;
  v4 = [listCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(listCopy);
      }

      v8 = *(*(&v12 + 1) + 8 * v7);
      [v8 rate];
      if (v9 == 1.0)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [listCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    firstObject = v8;

    if (firstObject)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  firstObject = [listCopy firstObject];
LABEL_12:

  return firstObject;
}

+ (AVPlaybackSpeedCollection)collectionWithSpeeds:(id)speeds
{
  speedsCopy = speeds;
  v5 = [[self alloc] _initInternalWithSpeeds:speedsCopy];

  return v5;
}

@end
@interface MPChangeRepeatModeCommand
- (id)_mediaRemoteCommandInfoOptions;
- (id)newCommandEventWithType:(int64_t)type preservesRepeatMode:(BOOL)mode;
- (void)setCurrentRepeatType:(MPRepeatType)currentRepeatType;
- (void)setSupportedRepeatTypes:(id)types;
@end

@implementation MPChangeRepeatModeCommand

- (id)_mediaRemoteCommandInfoOptions
{
  v26[1] = *MEMORY[0x1E69E9840];
  currentRepeatType = self->_currentRepeatType;
  if (currentRepeatType == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (currentRepeatType == 2)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  v25 = *MEMORY[0x1E69B0CF8];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  v26[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v8 = [v7 mutableCopy];

  if (self->_supportedRepeatTypes)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = self->_supportedRepeatTypes;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          integerValue = [*(*(&v20 + 1) + 8 * i) integerValue];
          if (integerValue == 1)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          if (integerValue == 2)
          {
            v17 = 3;
          }

          else
          {
            v17 = v16;
          }

          v18 = [MEMORY[0x1E696AD98] numberWithInt:v17];
          [v9 addObject:v18];
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69B0D60]];
  }

  return v8;
}

- (id)newCommandEventWithType:(int64_t)type preservesRepeatMode:(BOOL)mode
{
  modeCopy = mode;
  v16[2] = *MEMORY[0x1E69E9840];
  mediaRemoteCommandType = [(MPRemoteCommand *)self mediaRemoteCommandType];
  v15[0] = *MEMORY[0x1E69B1208];
  if (type == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (type == 2)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInt:v9];
  v16[0] = v10;
  v15[1] = *MEMORY[0x1E69B0CE0];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:modeCopy];
  v16[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13 = [(MPRemoteCommand *)self newCommandEventWithCommandType:mediaRemoteCommandType options:v12];

  return v13;
}

- (void)setSupportedRepeatTypes:(id)types
{
  typesCopy = types;
  if (![(NSArray *)self->_supportedRepeatTypes isEqualToArray:?])
  {
    v4 = [typesCopy copy];
    supportedRepeatTypes = self->_supportedRepeatTypes;
    self->_supportedRepeatTypes = v4;

    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setCurrentRepeatType:(MPRepeatType)currentRepeatType
{
  if (self->_currentRepeatType != currentRepeatType)
  {
    self->_currentRepeatType = currentRepeatType;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

@end
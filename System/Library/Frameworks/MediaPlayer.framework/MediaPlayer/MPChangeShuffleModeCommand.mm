@interface MPChangeShuffleModeCommand
- (id)_mediaRemoteCommandInfoOptions;
- (id)newCommandEventWithType:(int64_t)type preservesShuffleMode:(BOOL)mode;
- (void)setCurrentShuffleType:(MPShuffleType)currentShuffleType;
- (void)setSupportedShuffleTypes:(id)types;
@end

@implementation MPChangeShuffleModeCommand

- (id)_mediaRemoteCommandInfoOptions
{
  v26[1] = *MEMORY[0x1E69E9840];
  currentShuffleType = self->_currentShuffleType;
  if (currentShuffleType == 1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  if (currentShuffleType == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  v25 = *MEMORY[0x1E69B0D00];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  v26[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v8 = [v7 mutableCopy];

  if (self->_supportedShuffleTypes)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = self->_supportedShuffleTypes;
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
            v16 = 3;
          }

          else
          {
            v16 = 1;
          }

          if (integerValue == 2)
          {
            v17 = 2;
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

    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69B0D68]];
  }

  return v8;
}

- (id)newCommandEventWithType:(int64_t)type preservesShuffleMode:(BOOL)mode
{
  modeCopy = mode;
  v16[2] = *MEMORY[0x1E69E9840];
  mediaRemoteCommandType = [(MPRemoteCommand *)self mediaRemoteCommandType];
  v15[0] = *MEMORY[0x1E69B1230];
  if (type == 1)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  if (type == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInt:v9];
  v16[0] = v10;
  v15[1] = *MEMORY[0x1E69B0CE8];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:modeCopy];
  v16[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13 = [(MPRemoteCommand *)self newCommandEventWithCommandType:mediaRemoteCommandType options:v12];

  return v13;
}

- (void)setSupportedShuffleTypes:(id)types
{
  typesCopy = types;
  if (![(NSArray *)self->_supportedShuffleTypes isEqualToArray:?])
  {
    v4 = [typesCopy copy];
    supportedShuffleTypes = self->_supportedShuffleTypes;
    self->_supportedShuffleTypes = v4;

    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setCurrentShuffleType:(MPShuffleType)currentShuffleType
{
  if (self->_currentShuffleType != currentShuffleType)
  {
    self->_currentShuffleType = currentShuffleType;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

@end
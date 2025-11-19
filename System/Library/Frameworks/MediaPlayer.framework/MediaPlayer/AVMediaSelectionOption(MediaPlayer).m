@interface AVMediaSelectionOption(MediaPlayer)
- (uint64_t)mpIsOnlyAC3;
- (uint64_t)mpIsSDH;
@end

@implementation AVMediaSelectionOption(MediaPlayer)

- (uint64_t)mpIsSDH
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6987528];
  v18[0] = *MEMORY[0x1E6987588];
  v18[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v4 = [a1 mediaType];
  v5 = [v4 isEqualToString:*MEMORY[0x1E69875E8]];

  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (![a1 hasMediaCharacteristic:{*(*(&v13 + 1) + 8 * v10), v13}])
          {
            v11 = 0;
            goto LABEL_13;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
LABEL_13:
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (uint64_t)mpIsOnlyAC3
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [a1 mediaSubTypes];
  v3 = [v2 count];

  if (!v3)
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a1 mediaSubTypes];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) unsignedIntValue];
        if (v9 > 1902207794)
        {
          if (v9 != 2053202739 && v9 != 1902207795)
          {
LABEL_22:
            v12 = 0;
            goto LABEL_23;
          }
        }

        else if (v9 != 1633889587 && v9 != 1885430579)
        {
          goto LABEL_22;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_23:

  return v12;
}

@end
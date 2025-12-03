@interface AVWorkaroundNSBlockOperation
- (BOOL)isReady;
@end

@implementation AVWorkaroundNSBlockOperation

- (BOOL)isReady
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  dependencies = [(AVWorkaroundNSBlockOperation *)self dependencies];
  v3 = [dependencies countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(dependencies);
      }

      isFinished = [*(*(&v9 + 1) + 8 * v6) isFinished];
      if (!isFinished)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [dependencies countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(isFinished) = 1;
  }

  return isFinished;
}

@end
@interface PKMetalPaintRenderCache
- (BOOL)lockPurgeableResourcesAddToSet:(id)set;
- (void)addBuffer:(uint64_t)buffer;
- (void)initWithPurgeableBuffers:(uint64_t)buffers renderZoomFactor:;
@end

@implementation PKMetalPaintRenderCache

- (void)initWithPurgeableBuffers:(uint64_t)buffers renderZoomFactor:
{
  if (!self)
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = PKMetalPaintRenderCache;
  v5 = objc_msgSendSuper2(&v9, sel_init);
  if (v5)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = v5[1];
    v5[1] = array;

    *(v5 + 32) = a2;
    v5[3] = buffers;
  }

  return v5;
}

- (void)addBuffer:(uint64_t)buffer
{
  v3 = a2;
  if (buffer)
  {
    v5 = v3;
    [*(buffer + 8) addObject:v3];
    v3 = v5;
    if (v5)
    {
      v4 = 24 * v5[6];
    }

    else
    {
      v4 = 0;
    }

    *(buffer + 16) += v4;
  }
}

- (BOOL)lockPurgeableResourcesAddToSet:(id)set
{
  v24 = *MEMORY[0x1E69E9840];
  setCopy = set;
  if (self->_purgeableBuffers)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_buffers;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = *v20;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = setCopy;
          v11 = v10;
          if (!v9)
          {
            goto LABEL_20;
          }

          v12 = [v10 count];
          [v11 addObject:*(v9 + 16)];
          if ([v11 count] != v12 && (objc_msgSend(*(v9 + 16), "lock") & 1) == 0)
          {
            goto LABEL_20;
          }

          v13 = *(v9 + 8);
          if (v13 != *(v9 + 16))
          {
            v14 = [v11 count];
            [v11 addObject:*(v9 + 8)];
            v15 = [v11 count];
            v13 = *(v9 + 8);
            if (v15 != v14)
            {
              if (![v13 lock])
              {
                goto LABEL_20;
              }

              v13 = *(v9 + 8);
            }
          }

          if ([v13 isPurged])
          {
LABEL_20:

LABEL_21:
            v17 = 0;
            goto LABEL_23;
          }

          isPurged = [*(v9 + 16) isPurged];

          if (isPurged)
          {
            goto LABEL_21;
          }
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v17 = 1;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v17 = 1;
    }

LABEL_23:
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

@end
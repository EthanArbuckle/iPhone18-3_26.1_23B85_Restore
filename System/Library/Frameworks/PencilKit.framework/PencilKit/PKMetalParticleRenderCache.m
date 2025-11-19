@interface PKMetalParticleRenderCache
- (BOOL)isCompatibleWithInk:(id)a3 renderZoomFactor:(int64_t)a4;
- (BOOL)lockPurgeableResourcesAddToSet:(id)a3;
- (id)initWithDevice:(void *)a3 ink:(void *)a4 renderZoomFactor:;
- (id)secondaryBuffers;
- (void)addBuffer:(uint64_t)a1;
- (void)addSecondaryBuffer:(uint64_t)a1;
@end

@implementation PKMetalParticleRenderCache

- (id)initWithDevice:(void *)a3 ink:(void *)a4 renderZoomFactor:
{
  v7 = a3;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = PKMetalParticleRenderCache;
    a1 = objc_msgSendSuper2(&v11, sel_init);
    if (a1)
    {
      v8 = [MEMORY[0x1E695DF70] array];
      v9 = a1[1];
      a1[1] = v8;

      objc_storeStrong(a1 + 5, a3);
      a1[4] = a4;
    }
  }

  return a1;
}

- (void)addBuffer:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v5 = v3;
    [*(a1 + 8) addObject:v3];
    v3 = v5;
    if (v5)
    {
      v4 = 40 * v5[7];
    }

    else
    {
      v4 = 0;
    }

    *(a1 + 24) += v4;
  }
}

- (void)addSecondaryBuffer:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 16);
    v8 = v3;
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DF70] array];
      v6 = *(a1 + 16);
      *(a1 + 16) = v5;

      v4 = *(a1 + 16);
      v3 = v8;
    }

    [v4 addObject:v3];
    v3 = v8;
    if (v8)
    {
      v7 = 40 * v8[7];
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 24) += v7;
  }
}

- (id)secondaryBuffers
{
  if (a1)
  {
    a1 = a1[2];
    v1 = vars8;
  }

  return a1;
}

- (BOOL)isCompatibleWithInk:(id)a3 renderZoomFactor:(int64_t)a4
{
  v6 = a3;
  if (self)
  {
    ink = self->_ink;
  }

  else
  {
    ink = 0;
  }

  v8 = ink;
  v9 = [(PKInk *)v8 version];
  if (v9 == [v6 version])
  {
    if (self)
    {
      v10 = self->_ink;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [(PKInk *)v11 requiredContentVersion];
    if (v12 == [v6 requiredContentVersion])
    {
      if (self)
      {
        v13 = self->_ink;
      }

      else
      {
        v13 = 0;
      }

      v14 = [(PKInk *)v13 color];
      Alpha = CGColorGetAlpha([v14 CGColor]);
      v16 = [v6 color];
      v17 = vabdd_f64(Alpha, CGColorGetAlpha([v16 CGColor])) < 0.00999999978 && self->_renderZoomFactor == a4;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)lockPurgeableResourcesAddToSet:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_buffers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v6)
  {
    v7 = *v19;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(v5);
      }

      if (([(PKMetalParticleRenderCacheBuffer *)*(*(&v18 + 1) + 8 * v8) lockPurgeableResourcesAddToSet:v4]& 1) == 0)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v6)
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

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_secondaryBuffers;
    v9 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (!v9)
    {
      v12 = 1;
      goto LABEL_19;
    }

    v10 = *v15;
LABEL_11:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(v5);
      }

      if (([(PKMetalParticleRenderCacheBuffer *)*(*(&v14 + 1) + 8 * v11) lockPurgeableResourcesAddToSet:v4]& 1) == 0)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
        v12 = 1;
        if (v9)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }
  }

  v12 = 0;
LABEL_19:

  return v12;
}

@end
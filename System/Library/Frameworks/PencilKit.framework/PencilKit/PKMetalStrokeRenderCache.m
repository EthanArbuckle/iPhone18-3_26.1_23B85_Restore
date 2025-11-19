@interface PKMetalStrokeRenderCache
- (BOOL)isCompatibleWithInk:(id)a3 renderZoomFactor:(int64_t)a4;
- (BOOL)lockPurgeableResourcesAddToSet:(id)a3;
- (PKMetalStrokeRenderCache)initWithInk:(id)a3 renderZoomFactor:(int64_t)a4;
- (void)addBuffer:(id)a3;
- (void)addSecondaryBuffer:(id)a3;
@end

@implementation PKMetalStrokeRenderCache

- (PKMetalStrokeRenderCache)initWithInk:(id)a3 renderZoomFactor:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = PKMetalStrokeRenderCache;
  v8 = [(PKMetalStrokeRenderCache *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    buffers = v8->_buffers;
    v8->_buffers = v9;

    objc_storeStrong(&v8->_ink, a3);
    v8->_renderZoomFactor = a4;
  }

  return v8;
}

- (void)addBuffer:(id)a3
{
  v5 = a3;
  [(NSMutableArray *)self->_buffers addObject:?];
  if (v5)
  {
    v4 = v5[4] * v5[3];
  }

  else
  {
    v4 = 0;
  }

  self->_totalCost += v4;
}

- (void)addSecondaryBuffer:(id)a3
{
  v4 = a3;
  secondaryBuffers = self->_secondaryBuffers;
  v9 = v4;
  if (!secondaryBuffers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_secondaryBuffers;
    self->_secondaryBuffers = v6;

    secondaryBuffers = self->_secondaryBuffers;
    v4 = v9;
  }

  [(NSMutableArray *)secondaryBuffers addObject:v4];
  if (v9)
  {
    v8 = v9[4] * v9[3];
  }

  else
  {
    v8 = 0;
  }

  self->_totalCost += v8;
}

- (BOOL)isCompatibleWithInk:(id)a3 renderZoomFactor:(int64_t)a4
{
  v6 = a3;
  v7 = [(PKMetalStrokeRenderCache *)self ink];
  v8 = [v7 version];
  if (v8 == [v6 version])
  {
    v9 = [(PKMetalStrokeRenderCache *)self ink];
    v10 = [v9 requiredContentVersion];
    if (v10 == [v6 requiredContentVersion])
    {
      v11 = [(PKMetalStrokeRenderCache *)self ink];
      v12 = [v11 color];
      Alpha = CGColorGetAlpha([v12 CGColor]);
      v14 = [v6 color];
      v15 = vabdd_f64(Alpha, CGColorGetAlpha([v14 CGColor])) < 0.00999999978 && self->_renderZoomFactor == a4;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
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

      if (([(PKMetalStrokeRenderCacheBuffer *)*(*(&v18 + 1) + 8 * v8) lockPurgeableResourcesAddToSet:v4]& 1) == 0)
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

      if (([(PKMetalStrokeRenderCacheBuffer *)*(*(&v14 + 1) + 8 * v11) lockPurgeableResourcesAddToSet:v4]& 1) == 0)
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
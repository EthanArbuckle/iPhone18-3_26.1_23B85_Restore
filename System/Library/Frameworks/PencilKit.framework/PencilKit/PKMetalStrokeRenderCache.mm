@interface PKMetalStrokeRenderCache
- (BOOL)isCompatibleWithInk:(id)ink renderZoomFactor:(int64_t)factor;
- (BOOL)lockPurgeableResourcesAddToSet:(id)set;
- (PKMetalStrokeRenderCache)initWithInk:(id)ink renderZoomFactor:(int64_t)factor;
- (void)addBuffer:(id)buffer;
- (void)addSecondaryBuffer:(id)buffer;
@end

@implementation PKMetalStrokeRenderCache

- (PKMetalStrokeRenderCache)initWithInk:(id)ink renderZoomFactor:(int64_t)factor
{
  inkCopy = ink;
  v12.receiver = self;
  v12.super_class = PKMetalStrokeRenderCache;
  v8 = [(PKMetalStrokeRenderCache *)&v12 init];
  if (v8)
  {
    array = [MEMORY[0x1E695DF70] array];
    buffers = v8->_buffers;
    v8->_buffers = array;

    objc_storeStrong(&v8->_ink, ink);
    v8->_renderZoomFactor = factor;
  }

  return v8;
}

- (void)addBuffer:(id)buffer
{
  bufferCopy = buffer;
  [(NSMutableArray *)self->_buffers addObject:?];
  if (bufferCopy)
  {
    v4 = bufferCopy[4] * bufferCopy[3];
  }

  else
  {
    v4 = 0;
  }

  self->_totalCost += v4;
}

- (void)addSecondaryBuffer:(id)buffer
{
  bufferCopy = buffer;
  secondaryBuffers = self->_secondaryBuffers;
  v9 = bufferCopy;
  if (!secondaryBuffers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_secondaryBuffers;
    self->_secondaryBuffers = array;

    secondaryBuffers = self->_secondaryBuffers;
    bufferCopy = v9;
  }

  [(NSMutableArray *)secondaryBuffers addObject:bufferCopy];
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

- (BOOL)isCompatibleWithInk:(id)ink renderZoomFactor:(int64_t)factor
{
  inkCopy = ink;
  v7 = [(PKMetalStrokeRenderCache *)self ink];
  version = [v7 version];
  if (version == [inkCopy version])
  {
    v9 = [(PKMetalStrokeRenderCache *)self ink];
    requiredContentVersion = [v9 requiredContentVersion];
    if (requiredContentVersion == [inkCopy requiredContentVersion])
    {
      v11 = [(PKMetalStrokeRenderCache *)self ink];
      color = [v11 color];
      Alpha = CGColorGetAlpha([color CGColor]);
      color2 = [inkCopy color];
      v15 = vabdd_f64(Alpha, CGColorGetAlpha([color2 CGColor])) < 0.00999999978 && self->_renderZoomFactor == factor;
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

- (BOOL)lockPurgeableResourcesAddToSet:(id)set
{
  v24 = *MEMORY[0x1E69E9840];
  setCopy = set;
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

      if (([(PKMetalStrokeRenderCacheBuffer *)*(*(&v18 + 1) + 8 * v8) lockPurgeableResourcesAddToSet:setCopy]& 1) == 0)
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

      if (([(PKMetalStrokeRenderCacheBuffer *)*(*(&v14 + 1) + 8 * v11) lockPurgeableResourcesAddToSet:setCopy]& 1) == 0)
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
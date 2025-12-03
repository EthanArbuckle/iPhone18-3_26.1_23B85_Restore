@interface PKMetalParticleRenderCache
- (BOOL)isCompatibleWithInk:(id)ink renderZoomFactor:(int64_t)factor;
- (BOOL)lockPurgeableResourcesAddToSet:(id)set;
- (id)initWithDevice:(void *)device ink:(void *)ink renderZoomFactor:;
- (id)secondaryBuffers;
- (void)addBuffer:(uint64_t)buffer;
- (void)addSecondaryBuffer:(uint64_t)buffer;
@end

@implementation PKMetalParticleRenderCache

- (id)initWithDevice:(void *)device ink:(void *)ink renderZoomFactor:
{
  deviceCopy = device;
  if (self)
  {
    v11.receiver = self;
    v11.super_class = PKMetalParticleRenderCache;
    self = objc_msgSendSuper2(&v11, sel_init);
    if (self)
    {
      array = [MEMORY[0x1E695DF70] array];
      v9 = self[1];
      self[1] = array;

      objc_storeStrong(self + 5, device);
      self[4] = ink;
    }
  }

  return self;
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
      v4 = 40 * v5[7];
    }

    else
    {
      v4 = 0;
    }

    *(buffer + 24) += v4;
  }
}

- (void)addSecondaryBuffer:(uint64_t)buffer
{
  v3 = a2;
  if (buffer)
  {
    v4 = *(buffer + 16);
    v8 = v3;
    if (!v4)
    {
      array = [MEMORY[0x1E695DF70] array];
      v6 = *(buffer + 16);
      *(buffer + 16) = array;

      v4 = *(buffer + 16);
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

    *(buffer + 24) += v7;
  }
}

- (id)secondaryBuffers
{
  if (self)
  {
    self = self[2];
    v1 = vars8;
  }

  return self;
}

- (BOOL)isCompatibleWithInk:(id)ink renderZoomFactor:(int64_t)factor
{
  inkCopy = ink;
  if (self)
  {
    ink = self->_ink;
  }

  else
  {
    ink = 0;
  }

  inkCopy2 = ink;
  version = [(PKInk *)inkCopy2 version];
  if (version == [inkCopy version])
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
    requiredContentVersion = [(PKInk *)v11 requiredContentVersion];
    if (requiredContentVersion == [inkCopy requiredContentVersion])
    {
      if (self)
      {
        v13 = self->_ink;
      }

      else
      {
        v13 = 0;
      }

      color = [(PKInk *)v13 color];
      Alpha = CGColorGetAlpha([color CGColor]);
      color2 = [inkCopy color];
      v17 = vabdd_f64(Alpha, CGColorGetAlpha([color2 CGColor])) < 0.00999999978 && self->_renderZoomFactor == factor;
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

      if (([(PKMetalParticleRenderCacheBuffer *)*(*(&v18 + 1) + 8 * v8) lockPurgeableResourcesAddToSet:setCopy]& 1) == 0)
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

      if (([(PKMetalParticleRenderCacheBuffer *)*(*(&v14 + 1) + 8 * v11) lockPurgeableResourcesAddToSet:setCopy]& 1) == 0)
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
@interface PKMetalUnpurgeableStrokeRenderCache
- (PKMetalUnpurgeableStrokeRenderCache)initWithInk:(id)ink renderZoomFactor:(int64_t)factor;
- (void)addBuffer:(id)buffer;
- (void)addSecondaryBuffer:(id)buffer;
- (void)dealloc;
@end

@implementation PKMetalUnpurgeableStrokeRenderCache

- (PKMetalUnpurgeableStrokeRenderCache)initWithInk:(id)ink renderZoomFactor:(int64_t)factor
{
  inkCopy = ink;
  v11.receiver = self;
  v11.super_class = PKMetalUnpurgeableStrokeRenderCache;
  v7 = [(PKMetalStrokeRenderCache *)&v11 initWithInk:inkCopy renderZoomFactor:factor];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DFA8] set];
    lockedResourceSet = v7->_lockedResourceSet;
    v7->_lockedResourceSet = v8;
  }

  return v7;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_lockedResourceSet;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v6++) unlock];
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7.receiver = self;
  v7.super_class = PKMetalUnpurgeableStrokeRenderCache;
  [(PKMetalUnpurgeableStrokeRenderCache *)&v7 dealloc];
}

- (void)addBuffer:(id)buffer
{
  bufferCopy = buffer;
  [(PKMetalStrokeRenderCacheBuffer *)bufferCopy lockPurgeableResourcesAddToSet:?];
  v5.receiver = self;
  v5.super_class = PKMetalUnpurgeableStrokeRenderCache;
  [(PKMetalStrokeRenderCache *)&v5 addBuffer:bufferCopy];
}

- (void)addSecondaryBuffer:(id)buffer
{
  bufferCopy = buffer;
  [(PKMetalStrokeRenderCacheBuffer *)bufferCopy lockPurgeableResourcesAddToSet:?];
  v5.receiver = self;
  v5.super_class = PKMetalUnpurgeableStrokeRenderCache;
  [(PKMetalStrokeRenderCache *)&v5 addSecondaryBuffer:bufferCopy];
}

@end
@interface PKMetalUnpurgeableStrokeRenderCache
- (PKMetalUnpurgeableStrokeRenderCache)initWithInk:(id)a3 renderZoomFactor:(int64_t)a4;
- (void)addBuffer:(id)a3;
- (void)addSecondaryBuffer:(id)a3;
- (void)dealloc;
@end

@implementation PKMetalUnpurgeableStrokeRenderCache

- (PKMetalUnpurgeableStrokeRenderCache)initWithInk:(id)a3 renderZoomFactor:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PKMetalUnpurgeableStrokeRenderCache;
  v7 = [(PKMetalStrokeRenderCache *)&v11 initWithInk:v6 renderZoomFactor:a4];
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

- (void)addBuffer:(id)a3
{
  v4 = a3;
  [(PKMetalStrokeRenderCacheBuffer *)v4 lockPurgeableResourcesAddToSet:?];
  v5.receiver = self;
  v5.super_class = PKMetalUnpurgeableStrokeRenderCache;
  [(PKMetalStrokeRenderCache *)&v5 addBuffer:v4];
}

- (void)addSecondaryBuffer:(id)a3
{
  v4 = a3;
  [(PKMetalStrokeRenderCacheBuffer *)v4 lockPurgeableResourcesAddToSet:?];
  v5.receiver = self;
  v5.super_class = PKMetalUnpurgeableStrokeRenderCache;
  [(PKMetalStrokeRenderCache *)&v5 addSecondaryBuffer:v4];
}

@end
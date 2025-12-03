@interface CALayer
- (void)_addSublayersToArray:(id)array;
- (void)pause;
- (void)resume;
@end

@implementation CALayer

- (void)pause
{
  if (![(CALayer *)self isPaused])
  {
    [(CALayer *)self convertTime:0 fromLayer:CACurrentMediaTime()];
    v4 = v3;
    [(CALayer *)self setSpeed:0.0];

    [(CALayer *)self setTimeOffset:v4];
  }
}

- (void)resume
{
  if ([(CALayer *)self isPaused])
  {
    [(CALayer *)self timeOffset];
    v4 = v3;
    LODWORD(v3) = 1.0;
    [(CALayer *)self setSpeed:v3];
    [(CALayer *)self setTimeOffset:0.0];
    [(CALayer *)self setBeginTime:0.0];
    [(CALayer *)self convertTime:0 fromLayer:CACurrentMediaTime()];
    v6 = v5 - v4;

    [(CALayer *)self setBeginTime:v6];
  }
}

- (void)_addSublayersToArray:(id)array
{
  arrayCopy = array;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  sublayers = [(CALayer *)self sublayers];
  v6 = [sublayers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(sublayers);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [arrayCopy addObject:v10];
        [v10 _addSublayersToArray:arrayCopy];
        mask = [v10 mask];
        if (mask)
        {
          [arrayCopy addObject:mask];
          [mask _addSublayersToArray:arrayCopy];
        }
      }

      v7 = [sublayers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

@end
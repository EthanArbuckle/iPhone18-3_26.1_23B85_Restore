@interface CALayer
- (void)_addSublayersToArray:(id)a3;
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

- (void)_addSublayersToArray:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(CALayer *)self sublayers];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v4 addObject:v10];
        [v10 _addSublayersToArray:v4];
        v11 = [v10 mask];
        if (v11)
        {
          [v4 addObject:v11];
          [v11 _addSublayersToArray:v4];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

@end
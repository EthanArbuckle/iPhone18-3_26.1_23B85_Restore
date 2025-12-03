@interface CALayer(AVAdditions)
- (void)avkit_removeAllSublayerTransformAnimations;
@end

@implementation CALayer(AVAdditions)

- (void)avkit_removeAllSublayerTransformAnimations
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [self animationKeys];
  v2 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        v7 = [self animationForKey:v6];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }

        keyPath = [v8 keyPath];
        v10 = [keyPath containsString:@"sublayerTransform"];

        if (v10)
        {
          [self removeAnimationForKey:v6];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v3);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  sublayers = [self sublayers];
  v12 = [sublayers countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v17 + 1) + 8 * j) avkit_removeAllSublayerTransformAnimations];
      }

      v13 = [sublayers countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

@end
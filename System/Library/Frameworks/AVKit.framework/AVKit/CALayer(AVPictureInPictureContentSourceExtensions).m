@interface CALayer(AVPictureInPictureContentSourceExtensions)
- (double)avkit_visibleRectForRect:()AVPictureInPictureContentSourceExtensions inLayer:;
- (id)avkit_findFirstCALayerHost;
- (id)avkit_findSampleBufferDisplayLayerContentLayer;
- (id)avkit_window;
@end

@implementation CALayer(AVPictureInPictureContentSourceExtensions)

- (id)avkit_window
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    do
    {
      v3 = [v2 delegate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v5 = [v2 delegate];
        v6 = [v5 window];
      }

      else
      {
        v6 = 0;
      }

      v7 = [v2 superlayer];

      if (v6)
      {
        break;
      }

      v2 = v7;
    }

    while (v7);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v6;
}

- (double)avkit_visibleRectForRect:()AVPictureInPictureContentSourceExtensions inLayer:
{
  v12 = a7;
  v13 = *MEMORY[0x1E695F058];
  if (v12)
  {
    if (([a1 isHidden] & 1) == 0)
    {
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      if (!CGRectIsEmpty(v22))
      {
        v14 = [a1 superlayer];

        if (a1 == v12 || !v14)
        {
          v13 = x;
        }

        else
        {
          if ([a1 masksToBounds])
          {
            [a1 bounds];
            [v12 convertRect:a1 fromLayer:?];
            v25.origin.x = v15;
            v25.origin.y = v16;
            v25.size.width = v17;
            v25.size.height = v18;
            v23.origin.x = x;
            v23.origin.y = y;
            v23.size.width = width;
            v23.size.height = height;
            v24 = CGRectIntersection(v23, v25);
            x = v24.origin.x;
            y = v24.origin.y;
            width = v24.size.width;
            height = v24.size.height;
          }

          v19 = [a1 superlayer];
          [v19 avkit_visibleRectForRect:v12 inLayer:{x, y, width, height}];
          v13 = v20;
        }
      }
    }
  }

  return v13;
}

- (id)avkit_findSampleBufferDisplayLayerContentLayer
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 isEqualToString:@"AVSampleBufferDisplayLayerContentLayer"];

  if (v4)
  {
    v5 = a1;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [a1 sublayers];
    v7 = [v6 reverseObjectEnumerator];

    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) avkit_findSampleBufferDisplayLayerContentLayer];
          if (v12)
          {
            v5 = v12;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_13:
  }

  return v5;
}

- (id)avkit_findFirstCALayerHost
{
  v16 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [a1 sublayers];
    v4 = [v3 reverseObjectEnumerator];

    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) avkit_findFirstCALayerHost];
          if (v9)
          {
            v2 = v9;
            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v2 = 0;
LABEL_13:
  }

  return v2;
}

@end
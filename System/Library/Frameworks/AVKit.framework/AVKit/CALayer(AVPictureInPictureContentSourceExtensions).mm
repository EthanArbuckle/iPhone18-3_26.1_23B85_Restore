@interface CALayer(AVPictureInPictureContentSourceExtensions)
- (double)avkit_visibleRectForRect:()AVPictureInPictureContentSourceExtensions inLayer:;
- (id)avkit_findFirstCALayerHost;
- (id)avkit_findSampleBufferDisplayLayerContentLayer;
- (id)avkit_window;
@end

@implementation CALayer(AVPictureInPictureContentSourceExtensions)

- (id)avkit_window
{
  selfCopy = self;
  if (selfCopy)
  {
    v2 = selfCopy;
    do
    {
      delegate = [v2 delegate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        delegate2 = [v2 delegate];
        window = [delegate2 window];
      }

      else
      {
        window = 0;
      }

      superlayer = [v2 superlayer];

      if (window)
      {
        break;
      }

      v2 = superlayer;
    }

    while (superlayer);
  }

  else
  {
    window = 0;
    superlayer = 0;
  }

  return window;
}

- (double)avkit_visibleRectForRect:()AVPictureInPictureContentSourceExtensions inLayer:
{
  v12 = a7;
  v13 = *MEMORY[0x1E695F058];
  if (v12)
  {
    if (([self isHidden] & 1) == 0)
    {
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      if (!CGRectIsEmpty(v22))
      {
        superlayer = [self superlayer];

        if (self == v12 || !superlayer)
        {
          v13 = x;
        }

        else
        {
          if ([self masksToBounds])
          {
            [self bounds];
            [v12 convertRect:self fromLayer:?];
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

          superlayer2 = [self superlayer];
          [superlayer2 avkit_visibleRectForRect:v12 inLayer:{x, y, width, height}];
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
    selfCopy = self;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    sublayers = [self sublayers];
    reverseObjectEnumerator = [sublayers reverseObjectEnumerator];

    v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          avkit_findSampleBufferDisplayLayerContentLayer = [*(*(&v14 + 1) + 8 * i) avkit_findSampleBufferDisplayLayerContentLayer];
          if (avkit_findSampleBufferDisplayLayerContentLayer)
          {
            selfCopy = avkit_findSampleBufferDisplayLayerContentLayer;
            goto LABEL_13;
          }
        }

        v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = 0;
LABEL_13:
  }

  return selfCopy;
}

- (id)avkit_findFirstCALayerHost
{
  v16 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    sublayers = [self sublayers];
    reverseObjectEnumerator = [sublayers reverseObjectEnumerator];

    v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          avkit_findFirstCALayerHost = [*(*(&v11 + 1) + 8 * i) avkit_findFirstCALayerHost];
          if (avkit_findFirstCALayerHost)
          {
            selfCopy = avkit_findFirstCALayerHost;
            goto LABEL_13;
          }
        }

        v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = 0;
LABEL_13:
  }

  return selfCopy;
}

@end
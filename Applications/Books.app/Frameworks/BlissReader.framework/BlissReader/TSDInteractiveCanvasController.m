@interface TSDInteractiveCanvasController
- (id)avTransportDelegate;
- (id)gestureRecognizerWithKind:(id)a3;
- (id)gestureWithKind:(id)a3;
- (id)scrollableCanvasHost;
- (id)widgetHost;
- (void)disableAllGestures;
- (void)disableGestureKinds:(id)a3;
- (void)disableNormalGestures;
- (void)enableGestureKinds:(id)a3;
- (void)pulseStorage:(id)a3 range:(_NSRange)a4;
@end

@implementation TSDInteractiveCanvasController

- (void)disableAllGestures
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [objc_msgSend(objc_msgSend(-[TSDInteractiveCanvasController layerHost](self layerHost];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) setEnabled:0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)disableNormalGestures
{
  v3 = [-[TSDInteractiveCanvasController layerHost](self "layerHost")];
  [v3 view];
  [objc_msgSend(v3 "knobDragGestureRecognizer")];
  [objc_msgSend(v3 "singleTapGestureRecognizer")];
  [objc_msgSend(v3 "doubleTapGestureRecognizer")];
  objc_opt_class();
  [-[TSDInteractiveCanvasController layerHost](self "layerHost")];
  [objc_msgSend(TSUDynamicCast() "hyperlinkGestureRecognizer")];
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v4 = [objc_msgSend(v3 view];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        objc_opt_class();
        [TSUDynamicCast() setEnabled:0];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)enableGestureKinds:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [objc_msgSend(objc_msgSend(-[TSDInteractiveCanvasController layerHost](self layerHost];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = TSUProtocolCast();
        if (v10)
        {
          if ([a3 containsObject:{objc_msgSend(v10, "gestureKind")}])
          {
            [v9 setEnabled:1];
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)disableGestureKinds:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [objc_msgSend(objc_msgSend(-[TSDInteractiveCanvasController layerHost](self layerHost];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = TSUProtocolCast();
        if (v10)
        {
          if ([a3 containsObject:{objc_msgSend(v10, "gestureKind")}])
          {
            [v9 setEnabled:0];
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)gestureWithKind:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [objc_msgSend(objc_msgSend(-[TSDInteractiveCanvasController layerHost](self layerHost];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v14;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = TSUProtocolCast();
      if (v10)
      {
        v11 = v10;
        if ([v10 gestureKind] == a3)
        {
          v7 = v11;
        }
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v6);
  return v7;
}

- (id)gestureRecognizerWithKind:(id)a3
{
  objc_opt_class();
  [(TSDInteractiveCanvasController *)self gestureWithKind:a3];

  return TSUDynamicCast();
}

- (id)widgetHost
{
  [(TSDInteractiveCanvasController *)self delegate];

  return TSUProtocolCast();
}

- (id)avTransportDelegate
{
  [(TSDInteractiveCanvasController *)self delegate];

  return TSUProtocolCast();
}

- (id)scrollableCanvasHost
{
  [(TSDInteractiveCanvasController *)self delegate];

  return TSUProtocolCast();
}

- (void)pulseStorage:(id)a3 range:(_NSRange)a4
{
  v6 = [[TSWPSearchReference alloc] initWithStorage:a3 selection:{objc_msgSend([TSWPSelection alloc], "initWithRange:", a4.location, a4.length)}];
  v7 = [NSArray arrayWithObject:v6];

  v8 = [[TSURetainedPointerKeyDictionary alloc] initWithObjectsAndKeys:{v7, a3, 0}];
  v9 = [NSDictionary alloc];
  v10 = [v9 initWithObjectsAndKeys:{v8, TSKSearchReferencesToHighlightKey, self, @"THStorageReferenceKey", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1), @"THMessageIsForTHWPRep", 0}];
  v11 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v11 postNotificationName:TSKFindUIStateChangedNotification object:self userInfo:v10];

  [(TSDInteractiveCanvasController *)self layoutInvalidated];
}

@end
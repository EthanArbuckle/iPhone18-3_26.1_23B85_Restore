@interface THWInteractiveImageWidgetInfo
- (CGSize)backgroundSize;
- (THWInteractiveImageWidgetInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 stageGeometry:(id)a6;
- (id)childEnumerator;
- (unint64_t)indexOfCallout:(id)a3;
- (void)dealloc;
- (void)p_initZoomLimits;
- (void)setupWithCallouts:(id)a3 backgroundSize:(CGSize)a4 backgroundImageInfo:(id)a5 useSidebar:(BOOL)a6 showTransportControls:(BOOL)a7;
@end

@implementation THWInteractiveImageWidgetInfo

- (unint64_t)indexOfCallout:(id)a3
{
  if (a3)
  {
    return [(NSArray *)self->_callouts indexOfObjectIdenticalTo:?];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (THWInteractiveImageWidgetInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 stageGeometry:(id)a6
{
  v10.receiver = self;
  v10.super_class = THWInteractiveImageWidgetInfo;
  v8 = [(THWInteractiveImageWidgetInfo *)&v10 initWithContext:a3 geometry:a4];
  if (v8)
  {
    v8->_style = a5;
    v8->_stageGeometry = a6;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWInteractiveImageWidgetInfo;
  [(THWInteractiveImageWidgetInfo *)&v3 dealloc];
}

- (void)setupWithCallouts:(id)a3 backgroundSize:(CGSize)a4 backgroundImageInfo:(id)a5 useSidebar:(BOOL)a6 showTransportControls:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  [(THWInteractiveImageWidgetInfo *)self setBackgroundSize:a4.width, a4.height];
  [(THWInteractiveImageWidgetInfo *)self setBackgroundImageInfo:a5];
  v12 = [TSDInfoGeometry alloc];
  [(THWStageGeometry *)[(THWInteractiveImageWidgetInfo *)self stageGeometry] frame];
  y = CGPointZero.y;
  v14 = [v12 initWithPosition:CGPointZero.x size:y angle:?];

  self->_callouts = [a3 copy];
  [(THWInteractiveImageWidgetInfo *)self setUseSidebar:v8];
  [(THWInteractiveImageWidgetInfo *)self setShowTransportControls:v7];
  [(THWStageGeometry *)[(THWInteractiveImageWidgetInfo *)self stageGeometry] frame];
  v16 = [[TSDInfoGeometry alloc] initWithPosition:CGPointZero.x size:y angle:{v15, 44.0, 0.0}];
  [(THWInteractiveImageWidgetInfo *)self setTransportControlsInfo:[[THWInteractiveImageRadioPanelInfo alloc] initWithGeometry:v16 widgetInfo:self]];

  [(THWInteractiveImageWidgetInfo *)self p_initZoomLimits];
}

- (void)p_initZoomLimits
{
  if (self->_callouts || ([+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")], self->_callouts))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = [(THWInteractiveImageWidgetInfo *)self calloutEnumerator];
    v4 = [(NSEnumerator *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v23;
      v7 = 1.0;
      v8 = 1.0;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          [v10 viewScale];
          if (v8 >= v11)
          {
            v8 = v11;
          }

          [v10 viewScale];
          if (v7 < v12)
          {
            v7 = v12;
          }
        }

        v5 = [(NSEnumerator *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v5);
      v13 = v8 * 0.5;
      v14 = v7 + v7;
    }

    else
    {
      v13 = 0.5;
      v14 = 2.0;
    }

    [(THWStageGeometry *)[(THWInteractiveImageWidgetInfo *)self stageGeometry] frame];
    v16 = v15;
    [(THWStageGeometry *)[(THWInteractiveImageWidgetInfo *)self stageGeometry] frame];
    if (v16 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    v19 = v14 * (1024.0 / v18);
    v20 = fmin(v13, 0.25);
    if (v19 >= 4.0)
    {
      v21 = v19;
    }

    else
    {
      v21 = 4.0;
    }

    [(THWInteractiveImageWidgetInfo *)self setMinViewScale:v20];
    [(THWInteractiveImageWidgetInfo *)self setMaxViewScale:v21];
  }
}

- (id)childEnumerator
{
  v3 = +[NSMutableArray array];
  v4 = v3;
  if (self->_adornmentInfo)
  {
    [v3 addObject:?];
  }

  return [v4 objectEnumerator];
}

- (CGSize)backgroundSize
{
  width = self->_backgroundSize.width;
  height = self->_backgroundSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
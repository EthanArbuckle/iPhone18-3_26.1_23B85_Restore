@interface THWInteractiveImageWidgetInfo
- (CGSize)backgroundSize;
- (THWInteractiveImageWidgetInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style stageGeometry:(id)stageGeometry;
- (id)childEnumerator;
- (unint64_t)indexOfCallout:(id)callout;
- (void)dealloc;
- (void)p_initZoomLimits;
- (void)setupWithCallouts:(id)callouts backgroundSize:(CGSize)size backgroundImageInfo:(id)info useSidebar:(BOOL)sidebar showTransportControls:(BOOL)controls;
@end

@implementation THWInteractiveImageWidgetInfo

- (unint64_t)indexOfCallout:(id)callout
{
  if (callout)
  {
    return [(NSArray *)self->_callouts indexOfObjectIdenticalTo:?];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (THWInteractiveImageWidgetInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style stageGeometry:(id)stageGeometry
{
  v10.receiver = self;
  v10.super_class = THWInteractiveImageWidgetInfo;
  v8 = [(THWInteractiveImageWidgetInfo *)&v10 initWithContext:context geometry:geometry];
  if (v8)
  {
    v8->_style = style;
    v8->_stageGeometry = stageGeometry;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWInteractiveImageWidgetInfo;
  [(THWInteractiveImageWidgetInfo *)&v3 dealloc];
}

- (void)setupWithCallouts:(id)callouts backgroundSize:(CGSize)size backgroundImageInfo:(id)info useSidebar:(BOOL)sidebar showTransportControls:(BOOL)controls
{
  controlsCopy = controls;
  sidebarCopy = sidebar;
  [(THWInteractiveImageWidgetInfo *)self setBackgroundSize:size.width, size.height];
  [(THWInteractiveImageWidgetInfo *)self setBackgroundImageInfo:info];
  v12 = [TSDInfoGeometry alloc];
  [(THWStageGeometry *)[(THWInteractiveImageWidgetInfo *)self stageGeometry] frame];
  y = CGPointZero.y;
  v14 = [v12 initWithPosition:CGPointZero.x size:y angle:?];

  self->_callouts = [callouts copy];
  [(THWInteractiveImageWidgetInfo *)self setUseSidebar:sidebarCopy];
  [(THWInteractiveImageWidgetInfo *)self setShowTransportControls:controlsCopy];
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
    calloutEnumerator = [(THWInteractiveImageWidgetInfo *)self calloutEnumerator];
    v4 = [(NSEnumerator *)calloutEnumerator countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(calloutEnumerator);
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

        v5 = [(NSEnumerator *)calloutEnumerator countByEnumeratingWithState:&v22 objects:v26 count:16];
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
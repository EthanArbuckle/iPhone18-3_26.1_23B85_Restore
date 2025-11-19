@interface THWInteractiveImageWidgetLayout
- (BOOL)hasContentForPanel:(int)a3;
- (BOOL)isCompactFlowPresentation;
- (BOOL)isCompactHeight;
- (BOOL)isExpanded;
- (BOOL)isReflowablePresentation;
- (BOOL)p_captionsInPanel;
- (BOOL)p_showTransportControls;
- (BOOL)p_useTitleOnlyForCallout;
- (CGAffineTransform)transformFromContentToContainerCoords;
- (CGPoint)contentOffset;
- (CGPoint)interactiveImageCallout:(id)a3 convertContentPointToUnscaledOverlayPoint:(CGPoint)a4;
- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4;
- (CGRect)calloutFrameWithViewScale:(double)a3;
- (CGRect)nonAutosizedFrameForTextLayout:(id)a3;
- (CGRect)sidebarFrame;
- (CGRect)stageFrame;
- (CGRect)transportControlsFrame;
- (CGSize)interactiveImageSidebarSize:(id)a3;
- (CGSize)zoomableCanvasSize;
- (THWInteractiveImageWidgetLayout)initWithInfo:(id)a3;
- (TSUColor)primaryColor;
- (double)baseViewScale;
- (double)baseViewScaleForStageSize:(CGSize)a3;
- (double)interactiveImageCalloutFontScale:(id)a3;
- (id)additionalLayouts;
- (id)additionalLayoutsForPanel:(int)a3;
- (id)childInfosForLayout;
- (id)computeLayoutGeometry;
- (id)controlContainerAdditionalChildLayouts:(id)a3;
- (id)infosForContainer;
- (id)infosForPanel:(int)a3;
- (id)infosForStageContentViewport:(CGRect)a3;
- (id)layoutGeometryForLayout:(id)a3;
- (id)layoutGeometryFromProvider;
- (id)p_allScrollContainerLayouts;
- (void)dealloc;
- (void)invalidateForSizeChange;
- (void)invalidateSize;
- (void)p_invalidateAllCalloutLayoutFrames;
- (void)p_invalidateExternal;
- (void)p_updateCalloutLayouts;
- (void)p_updateSidebarLayouts;
- (void)setDelegate:(id)a3;
- (void)setViewScale:(double)a3 contentOffset:(CGPoint)a4 animated:(BOOL)a5;
- (void)updateChildrenFromInfo;
- (void)updateSelectedCallout:(id)a3;
- (void)wasAddedToLayoutController:(id)a3;
@end

@implementation THWInteractiveImageWidgetLayout

- (THWInteractiveImageWidgetLayout)initWithInfo:(id)a3
{
  v4.receiver = self;
  v4.super_class = THWInteractiveImageWidgetLayout;
  result = [(THWInteractiveImageWidgetLayout *)&v4 initWithInfo:a3];
  if (result)
  {
    result->_viewScale = 1.0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWInteractiveImageWidgetLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (double)baseViewScaleForStageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [objc_msgSend(-[THWInteractiveImageWidgetLayout info](self "info")];

  return THScaleNeededToFitSizeInSize(v5, v6, width, height);
}

- (double)baseViewScale
{
  if (![(THWInteractiveImageWidgetLayout *)self isExpanded])
  {
    return 1.0;
  }

  [(THWInteractiveImageWidgetLayout *)self stageFrame];

  [(THWInteractiveImageWidgetLayout *)self baseViewScaleForStageSize:v3, v4];
  return result;
}

- (CGSize)zoomableCanvasSize
{
  v2 = [(THWInteractiveImageWidgetLayout *)self info];

  [v2 backgroundSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)infosForStageContentViewport:(CGRect)a3
{
  v3 = [-[THWInteractiveImageWidgetLayout info](self info];

  return [NSArray arrayWithObject:v3];
}

- (void)setViewScale:(double)a3 contentOffset:(CGPoint)a4 animated:(BOOL)a5
{
  y = a4.y;
  x = a4.x;
  [(THWInteractiveImageWidgetLayout *)self contentOffset];
  if (x == v10 && y == v9)
  {
    [(THWInteractiveImageWidgetLayout *)self viewScale];
    if (v13 == a3)
    {
      return;
    }
  }

  else
  {
    [(THWInteractiveImageWidgetLayout *)self setContentOffset:x, y];
    [(THWInteractiveImageWidgetLayout *)self viewScale];
    if (v12 == a3)
    {
      goto LABEL_9;
    }
  }

  [(THWInteractiveImageWidgetLayout *)self setViewScale:a3];
LABEL_9:

  [(THWInteractiveImageWidgetLayout *)self p_invalidateAllCalloutLayoutFrames];
}

- (CGAffineTransform)transformFromContentToContainerCoords
{
  memset(&v13, 0, sizeof(v13));
  [(THWInteractiveImageWidgetLayout *)self contentOffset];
  v6 = -v5;
  [(THWInteractiveImageWidgetLayout *)self contentOffset];
  CGAffineTransformMakeTranslation(&v13, v6, -v7);
  [(THWInteractiveImageWidgetLayout *)self viewScale];
  v9 = v8;
  [(THWInteractiveImageWidgetLayout *)self viewScale];
  v12 = v13;
  return CGAffineTransformScale(retstr, &v12, v9, v10);
}

- (TSUColor)primaryColor
{
  result = self->_primaryColor;
  if (!result)
  {
    v4 = [objc_msgSend(-[THWInteractiveImageWidgetLayout info](self "info")];
    if (v4)
    {
      v5 = v4;
      [v4 paragraphStyleAtCharIndex:0 effectiveRange:0];
      [v5 characterStyleAtCharIndex:0 effectiveRange:0];
      [(THWInteractiveImageWidgetLayout *)self setPrimaryColor:TSWPResolveColorForStyles()];
    }

    result = self->_primaryColor;
    if (!result)
    {
      [(THWInteractiveImageWidgetLayout *)self setPrimaryColor:+[TSUColor blackColor]];
      return self->_primaryColor;
    }
  }

  return result;
}

- (BOOL)p_showTransportControls
{
  if ([-[THWInteractiveImageWidgetLayout info](self "info")])
  {
    return 1;
  }

  return [(THWInteractiveImageWidgetLayout *)self p_captionsInPanel];
}

- (BOOL)hasContentForPanel:(int)a3
{
  if (a3 == 2 || a3 == 1)
  {
    return 1;
  }

  if (a3)
  {
    return 0;
  }

  return [objc_msgSend(-[THWInteractiveImageWidgetLayout info](self info] != 0;
}

- (BOOL)isCompactHeight
{
  v2 = [(THWInteractiveImageWidgetLayout *)self layoutController];

  return [v2 isCompactHeight];
}

- (id)infosForPanel:(int)a3
{
  v5 = +[NSMutableArray array];
  if (a3 == 1)
  {
    if ([(THWInteractiveImageWidgetLayout *)self p_captionsInPanel]&& [(THWInteractiveImageWidgetLayout *)self selectedCalloutIndex])
    {
      v6 = [objc_msgSend(-[THWInteractiveImageWidgetLayout info](self "info")];
      if (!v6)
      {
        return v5;
      }

      goto LABEL_12;
    }

    if (self->_captionPanelVisible && [objc_msgSend(-[THWInteractiveImageWidgetLayout info](self "info")])
    {
      v6 = [objc_msgSend(-[THWInteractiveImageWidgetLayout info](self "info")];
      goto LABEL_12;
    }
  }

  else if (!a3 && [objc_msgSend(-[THWInteractiveImageWidgetLayout info](self "info")])
  {
    v6 = [objc_msgSend(-[THWInteractiveImageWidgetLayout info](self "info")];
LABEL_12:
    [v5 addObject:v6];
  }

  return v5;
}

- (id)additionalLayoutsForPanel:(int)a3
{
  if (a3 != 2 || !self->_transportControlLayout || ![(THWInteractiveImageWidgetLayout *)self isExpanded]|| ![(THWInteractiveImageWidgetLayout *)self p_showTransportControls])
  {
    return 0;
  }

  transportControlLayout = self->_transportControlLayout;
  return [NSArray arrayWithObjects:&transportControlLayout count:1];
}

- (id)layoutGeometryFromProvider
{
  if ([(THWInteractiveImageWidgetLayout *)self isExpanded])
  {
    [(THWWidgetLayoutDelegate *)[(THWInteractiveImageWidgetLayout *)self delegate] widgetLayoutBounds];
    v7 = [[TSDLayoutGeometry alloc] initWithFrame:{v3, v4, v5, v6}];

    return v7;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = THWInteractiveImageWidgetLayout;
    return [(THWInteractiveImageWidgetLayout *)&v9 layoutGeometryFromProvider];
  }
}

- (id)computeLayoutGeometry
{
  v23.receiver = self;
  v23.super_class = THWInteractiveImageWidgetLayout;
  v3 = [(THWInteractiveImageWidgetLayout *)&v23 computeLayoutGeometry];
  if ([(THWInteractiveImageWidgetLayout *)self isExpanded])
  {
    [(THWWidgetLayoutDelegate *)[(THWInteractiveImageWidgetLayout *)self delegate] widgetLayoutBounds];
    [(THWInteractiveImageWidgetLayout *)self setStageFrame:?];
    v4 = 0.0;
  }

  else
  {
    v5 = [-[THWInteractiveImageWidgetLayout info](self "info")];
    [v5 frame];
    [(THWInteractiveImageWidgetLayout *)self setStageFrame:?];
    [v5 cornerRadius];
  }

  [(THWInteractiveImageWidgetLayout *)self setStageCornerRadius:v4];
  if ([(THWInteractiveImageWidgetLayout *)self isExpanded]&& [(THWInteractiveImageWidgetLayout *)self p_showTransportControls])
  {
    [(THWInteractiveImageWidgetLayout *)self stageFrame];
    [(THWInteractiveImageWidgetLayout *)self setStageFrame:?];
  }

  [(THWInteractiveImageWidgetLayout *)self stageFrame];
  self->_transportControlsFrame.origin.x = v6;
  self->_transportControlsFrame.origin.y = v7;
  self->_transportControlsFrame.size.width = v8;
  self->_transportControlsFrame.size.height = 44.0;
  if (![(THWInteractiveImageWidgetLayout *)self isExpanded])
  {
    [(THWInteractiveImageWidgetLayout *)self stageFrame];
    self->_transportControlsFrame.origin.y = self->_transportControlsFrame.origin.y + v9;
  }

  if ([-[THWInteractiveImageWidgetLayout info](self "info")])
  {
    [-[THWInteractiveImageWidgetLayout info](self "info")];
    if (v10 <= 0.0)
    {
      [(THWInteractiveImageWidgetLayout *)self stageFrame];
      v15 = v16 * 0.25;
    }

    else
    {
      [-[THWInteractiveImageWidgetLayout info](self "info")];
      v12 = v11;
      [(THWInteractiveImageWidgetLayout *)self stageFrame];
      if (v12 <= v13)
      {
LABEL_15:
        v17 = [(THWInteractiveImageWidgetLayout *)self isExpanded];
        [-[THWInteractiveImageWidgetLayout info](self "info")];
        v19 = v18;
        [(THWInteractiveImageWidgetLayout *)self stageFrame];
        p_sidebarFrame = &self->_sidebarFrame;
        if (v17)
        {
          p_sidebarFrame->origin = xmmword_34AF10;
        }

        else
        {
          p_sidebarFrame->origin.x = 0.0;
          self->_sidebarFrame.origin.y = 0.0;
        }

        self->_sidebarFrame.size.width = v19;
        self->_sidebarFrame.size.height = v20;
        return v3;
      }

      [(THWInteractiveImageWidgetLayout *)self stageFrame];
      v15 = v14;
    }

    [-[THWInteractiveImageWidgetLayout info](self "info")];
    goto LABEL_15;
  }

  return v3;
}

- (void)updateChildrenFromInfo
{
  if (!self->_transportControlLayout && [(THWInteractiveImageWidgetLayout *)self p_showTransportControls])
  {
    v3 = -[THWInteractiveImageRadioPanelLayout initWithInfo:]([THWInteractiveImageRadioPanelLayout alloc], "initWithInfo:", [-[THWInteractiveImageWidgetLayout info](self "info")]);
    self->_transportControlLayout = v3;
    [(THWInteractiveImageRadioPanelLayout *)v3 setWidgetLayout:self];
    [(THWInteractiveImageRadioPanelLayout *)self->_transportControlLayout setTag:3];
    [(THWContainerLayout *)self invalidate];
  }

  v4.receiver = self;
  v4.super_class = THWInteractiveImageWidgetLayout;
  [(THWContainerLayout *)&v4 updateChildrenFromInfo];
}

- (void)invalidateSize
{
  v12.receiver = self;
  v12.super_class = THWInteractiveImageWidgetLayout;
  [(THWInteractiveImageWidgetLayout *)&v12 invalidateSize];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(THWInteractiveImageWidgetLayout *)self dependentLayouts];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) invalidateFrame];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)childInfosForLayout
{
  if (-[THWInteractiveImageWidgetLayout isExpanded](self, "isExpanded") || ![-[THWInteractiveImageWidgetLayout info](self "info")])
  {
    return 0;
  }

  v3 = [-[THWInteractiveImageWidgetLayout info](self "info")];

  return [v3 interleavedInfosWithInfos:0];
}

- (id)additionalLayouts
{
  v3 = +[NSMutableArray array];
  if (self->_transportControlLayout && ![(THWInteractiveImageWidgetLayout *)self isExpanded])
  {
    [v3 addObject:self->_transportControlLayout];
  }

  return v3;
}

- (id)layoutGeometryForLayout:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [TSDLayoutGeometry alloc];
    [(THWInteractiveImageWidgetLayout *)self transportControlsFrame];
    v10 = v5;
LABEL_9:
    v13 = [v10 initWithFrame:{v6, v7, v8, v9}];

    return v13;
  }

  if (!-[THWInteractiveImageWidgetLayout isExpanded](self, "isExpanded") || (v11 = [a3 info], v11 != objc_msgSend(-[THWInteractiveImageWidgetLayout info](self, "info"), "backgroundImageInfo")))
  {
    if ([a3 info] != self->_calloutContainer && objc_msgSend(a3, "info") != self->_sidebarContainer)
    {
      return 0;
    }

    v10 = [TSDLayoutGeometry alloc];
    v6 = 0.0;
    v7 = 0.0;
    v8 = 1.0;
    v9 = 1.0;
    goto LABEL_9;
  }

  return [a3 layoutGeometryFromInfo];
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)a3
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)p_invalidateExternal
{
  [(THWInteractiveImageWidgetLayout *)self invalidateFrame];
  [(THWInteractiveImageWidgetLayout *)self invalidateChildren];
  [(THWInteractiveImageWidgetLayout *)self p_updateCalloutLayouts];

  [(THWInteractiveImageWidgetLayout *)self p_updateSidebarLayouts];
}

- (void)setDelegate:(id)a3
{
  if (self->_delegate != a3)
  {
    self->_delegate = a3;
    [(THWInteractiveImageWidgetLayout *)self p_invalidateExternal];
  }
}

- (void)wasAddedToLayoutController:(id)a3
{
  v4.receiver = self;
  v4.super_class = THWInteractiveImageWidgetLayout;
  [(THWInteractiveImageWidgetLayout *)&v4 wasAddedToLayoutController:a3];
  [(THWInteractiveImageWidgetLayout *)self p_invalidateExternal];
}

- (BOOL)isExpanded
{
  v3 = [(THWInteractiveImageWidgetLayout *)self delegate];
  if (v3)
  {
    LOBYTE(v3) = [(THWWidgetLayoutDelegate *)[(THWInteractiveImageWidgetLayout *)self delegate] widgetLayoutMode:self]== 1;
  }

  return v3;
}

- (BOOL)isCompactFlowPresentation
{
  v3 = [(THWInteractiveImageWidgetLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)v3 widgetLayoutIsCompactFlow:self];
}

- (BOOL)isReflowablePresentation
{
  v3 = [(THWInteractiveImageWidgetLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)v3 widgetLayoutIsReflowablePresentation:self];
}

- (id)p_allScrollContainerLayouts
{
  v3 = +[NSMutableArray array];
  [(TSDRootLayout *)[(THWInteractiveImageWidgetLayout *)self scrollContainerRootLayout] addLayoutsToArray:v3];
  return v3;
}

- (void)p_invalidateAllCalloutLayoutFrames
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(THWInteractiveImageWidgetLayout *)self calloutLayouts];
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

        [*(*(&v7 + 1) + 8 * v6) invalidateFrame];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (CGRect)calloutFrameWithViewScale:(double)a3
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(THWInteractiveImageWidgetLayout *)self calloutLayouts];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v21 + 1) + 8 * v12) groupFrameWithViewScale:a3];
        v29.origin.x = v13;
        v29.origin.y = v14;
        v29.size.width = v15;
        v29.size.height = v16;
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        v27 = CGRectUnion(v26, v29);
        x = v27.origin.x;
        y = v27.origin.y;
        width = v27.size.width;
        height = v27.size.height;
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)p_captionsInPanel
{
  v3 = [(THWInteractiveImageWidgetLayout *)self isExpanded];
  if (v3)
  {
    if ([-[THWInteractiveImageWidgetLayout layoutController](self "layoutController")])
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v4 = [(THWInteractiveImageWidgetLayout *)self layoutController];

      LOBYTE(v3) = [v4 isCompactHeight];
    }
  }

  return v3;
}

- (BOOL)p_useTitleOnlyForCallout
{
  if ([-[THWInteractiveImageWidgetLayout info](self "info")])
  {
    return 1;
  }

  return [(THWInteractiveImageWidgetLayout *)self p_captionsInPanel];
}

- (void)p_updateCalloutLayouts
{
  v3 = [(THWInteractiveImageWidgetLayout *)self p_useTitleOnlyForCallout];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [-[THWInteractiveImageWidgetLayout info](self info];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 shouldDraw])
        {
          if (!v7)
          {
            v7 = objc_opt_new();
          }

          v11 = [(TSURetainedPointerKeyDictionary *)self->_calloutLayoutsMap objectForKeyedSubscript:v10];
          if (v11)
          {
            v12 = v11;
            [(THWInteractiveImageCalloutLayout *)v11 setTitleOnly:v3];
          }

          else
          {
            v12 = [[THWInteractiveImageCalloutLayout alloc] initWithInfo:0];
            [(THWInteractiveImageCalloutLayout *)v12 setCalloutInfo:v10];
            [(THWInteractiveImageCalloutLayout *)v12 setDelegate:self];
            [(THWInteractiveImageCalloutLayout *)v12 setTitleOnly:v3];
            if (!v12)
            {
              continue;
            }
          }

          [v7 setObject:v12 forUncopiedKey:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (!v6)
      {
        if (v7)
        {

          self->_calloutLayoutsMap = v7;
        }

        break;
      }
    }
  }

  v13 = [(TSURetainedPointerKeyDictionary *)self->_calloutLayoutsMap count];
  calloutContainer = self->_calloutContainer;
  if (v13)
  {
    if (calloutContainer)
    {
      return;
    }

    v15 = [[THWControlContainer alloc] initWithDelegate:self];
  }

  else
  {
    if (!calloutContainer)
    {
      return;
    }

    v15 = 0;
  }

  self->_calloutContainer = v15;
}

- (void)p_updateSidebarLayouts
{
  if ([-[THWInteractiveImageWidgetLayout info](self "info")] && !-[THWInteractiveImageWidgetLayout p_captionsInPanel](self, "p_captionsInPanel"))
  {
    if (!self->_sidebarContainer)
    {
      self->_sidebarContainer = [[THWControlContainer alloc] initWithDelegate:self];
    }

    if (!self->_sidebarLayout)
    {
      self->_sidebarLayout = [[THWInteractiveImageSidebarLayout alloc] initWithDelegate:self];
    }
  }

  else
  {
    sidebarContainer = self->_sidebarContainer;
    if (sidebarContainer)
    {

      self->_sidebarContainer = 0;
    }

    sidebarLayout = self->_sidebarLayout;
    if (sidebarLayout)
    {

      self->_sidebarLayout = 0;
    }
  }
}

- (id)infosForContainer
{
  sidebarContainer = self->_sidebarContainer;
  calloutContainer = self->_calloutContainer;
  if (sidebarContainer)
  {
    if (calloutContainer)
    {
      v8 = self->_calloutContainer;
      v9 = sidebarContainer;
      v4 = &v8;
      v5 = 2;
      return [NSArray arrayWithObjects:v4 count:v5, v7, v8, v9];
    }
  }

  else if (calloutContainer)
  {
    v7 = self->_calloutContainer;
    v4 = &v7;
    v5 = 1;
    return [NSArray arrayWithObjects:v4 count:v5, v7, v8, v9];
  }

  return 0;
}

- (void)updateSelectedCallout:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(THWInteractiveImageWidgetLayout *)self calloutLayouts];
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

        [*(*(&v9 + 1) + 8 * v8) setSelected:{objc_msgSend(*(*(&v9 + 1) + 8 * v8), "calloutInfo") == a3}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)invalidateForSizeChange
{
  [(THWInteractiveImageWidgetLayout *)self p_updateCalloutLayouts];
  [(THWInteractiveImageWidgetLayout *)self p_updateSidebarLayouts];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(THWInteractiveImageWidgetLayout *)self calloutLayouts];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) invalidateTitleStyle];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)controlContainerAdditionalChildLayouts:(id)a3
{
  if ([a3 info] == self->_calloutContainer)
  {

    return [(THWInteractiveImageWidgetLayout *)self calloutLayouts];
  }

  else if ([a3 info] == self->_sidebarContainer && self->_sidebarLayout)
  {
    sidebarLayout = self->_sidebarLayout;
    return [NSArray arrayWithObjects:&sidebarLayout count:1];
  }

  else
  {
    return 0;
  }
}

- (CGPoint)interactiveImageCallout:(id)a3 convertContentPointToUnscaledOverlayPoint:(CGPoint)a4
{
  [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController unscaledContainerPointFromUnscaledContentPoint:a3, a4.x, a4.y];
  result.y = v5;
  result.x = v4;
  return result;
}

- (double)interactiveImageCalloutFontScale:(id)a3
{
  v3 = [(THWInteractiveImageWidgetLayout *)self p_captionsInPanel];
  result = 0.8;
  if (!v3)
  {
    return 1.0;
  }

  return result;
}

- (CGSize)interactiveImageSidebarSize:(id)a3
{
  width = self->_sidebarFrame.size.width;
  height = self->_sidebarFrame.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)stageFrame
{
  x = self->mStageFrame.origin.x;
  y = self->mStageFrame.origin.y;
  width = self->mStageFrame.size.width;
  height = self->mStageFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)contentOffset
{
  x = self->_contentOffset.x;
  y = self->_contentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)sidebarFrame
{
  x = self->_sidebarFrame.origin.x;
  y = self->_sidebarFrame.origin.y;
  width = self->_sidebarFrame.size.width;
  height = self->_sidebarFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)transportControlsFrame
{
  x = self->_transportControlsFrame.origin.x;
  y = self->_transportControlsFrame.origin.y;
  width = self->_transportControlsFrame.size.width;
  height = self->_transportControlsFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
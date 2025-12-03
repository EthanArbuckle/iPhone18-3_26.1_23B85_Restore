@interface THWDrawablesWidgetInfo
- (THWDrawablesWidgetInfo)initWithContext:(id)context geometry:(id)geometry;
- (TSWPopUpInfo)popUpInfo;
- (id)childEnumerator;
- (id)childInfos;
- (void)dealloc;
- (void)setAdornmentInfo:(id)info;
- (void)setExpandedStageDrawable:(id)drawable;
- (void)setStageDrawable:(id)drawable;
@end

@implementation THWDrawablesWidgetInfo

- (THWDrawablesWidgetInfo)initWithContext:(id)context geometry:(id)geometry
{
  v5.receiver = self;
  v5.super_class = THWDrawablesWidgetInfo;
  result = [(THWDrawablesWidgetInfo *)&v5 initWithContext:context geometry:geometry];
  if (result)
  {
    result->_containerWrap = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWDrawablesWidgetInfo;
  [(THWDrawablesWidgetInfo *)&v3 dealloc];
}

- (void)setStageDrawable:(id)drawable
{
  stageDrawable = self->_stageDrawable;
  if (stageDrawable != drawable)
  {
    [(TSDInfo *)stageDrawable setParentInfo:0];

    drawableCopy = drawable;
    self->_stageDrawable = drawableCopy;
    [(TSDInfo *)drawableCopy setParentInfo:self];
    v7 = TSUProtocolCast();
    adornmentInfo = [(THWDrawablesWidgetInfo *)self adornmentInfo];

    [v7 setPanelContentProvider:adornmentInfo];
  }
}

- (void)setExpandedStageDrawable:(id)drawable
{
  expandedStageDrawable = self->_expandedStageDrawable;
  if (expandedStageDrawable != drawable)
  {
    [(TSDInfo *)expandedStageDrawable setParentInfo:0];

    drawableCopy = drawable;
    self->_expandedStageDrawable = drawableCopy;
    [(TSDInfo *)drawableCopy setParentInfo:self];
    v7 = TSUProtocolCast();
    adornmentInfo = [(THWDrawablesWidgetInfo *)self adornmentInfo];

    [v7 setPanelContentProvider:adornmentInfo];
  }
}

- (void)setAdornmentInfo:(id)info
{
  adornmentInfo = self->_adornmentInfo;
  if (adornmentInfo != info)
  {

    self->_adornmentInfo = info;
    [TSUProtocolCast() setPanelContentProvider:{-[THWDrawablesWidgetInfo adornmentInfo](self, "adornmentInfo")}];
    v6 = TSUProtocolCast();
    adornmentInfo = [(THWDrawablesWidgetInfo *)self adornmentInfo];

    [v6 setPanelContentProvider:adornmentInfo];
  }
}

- (id)childInfos
{
  adornmentInfo = [(THWDrawablesWidgetInfo *)self adornmentInfo];
  if ([(THWDrawablesWidgetInfo *)self stageDrawable])
  {
    stageDrawable = [(THWDrawablesWidgetInfo *)self stageDrawable];
    v4 = [NSArray arrayWithObjects:&stageDrawable count:1];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return [(THWWidgetAdornmentInfo *)adornmentInfo interleavedInfosWithInfos:v4];
}

- (TSWPopUpInfo)popUpInfo
{
  [(THWDrawablesWidgetInfo *)self stageDrawable];
  v2 = TSUProtocolCast();

  return [v2 popUpInfo];
}

- (id)childEnumerator
{
  childInfos = [(THWDrawablesWidgetInfo *)self childInfos];

  return [childInfos objectEnumerator];
}

@end
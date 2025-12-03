@interface THWTransportControlRep
- (TSWTransportControlClone)clone;
- (id)buttonControl:(id)control imageForState:(int)state highlighted:(BOOL)highlighted;
- (id)fontNameForLabelControl:(id)control;
- (id)shadowForLabelControl:(id)control;
- (int)buttonControlState:(id)state;
- (void)addAdditionalChildLayersToArray:(id)array;
- (void)buttonControlWasPressed:(id)pressed;
- (void)dealloc;
- (void)p_updateBackgroundLayerContent;
- (void)p_updateControlStates;
- (void)screenScaleDidChange;
- (void)transportControlCloneDidUpdateState:(id)state;
- (void)updateFromLayout;
- (void)wasAddedToParent;
- (void)willBeRemovedFromParent;
@end

@implementation THWTransportControlRep

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWTransportControlRep;
  [(THWTransportControlRep *)&v3 dealloc];
}

- (void)wasAddedToParent
{
  v3.receiver = self;
  v3.super_class = THWTransportControlRep;
  [(THWTransportControlRep *)&v3 wasAddedToParent];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"transportControlCloneDidUpdateState:" object:@"kTSWTransportControlCloneDidUpdateNotification", 0];
}

- (void)willBeRemovedFromParent
{
  v3.receiver = self;
  v3.super_class = THWTransportControlRep;
  [(THWTransportControlRep *)&v3 willBeRemovedFromParent];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"kTSWTransportControlCloneDidUpdateNotification", 0];
}

- (void)updateFromLayout
{
  v3.receiver = self;
  v3.super_class = THWTransportControlRep;
  [(THWTransportControlRep *)&v3 updateFromLayout];
  if (!self->_backgroundLayer)
  {
    self->_backgroundLayer = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
    [(CALayer *)self->_backgroundLayer setDelegate:[(THWTransportControlRep *)self interactiveCanvasController]];
    [-[THWTransportControlRep canvas](self "canvas")];
    [(CALayer *)self->_backgroundLayer setContentsScale:?];
    [(THWTransportControlRep *)self p_updateBackgroundLayerContent];
  }
}

- (void)p_updateBackgroundLayerContent
{
  v3 = [TSUImage imageNamed:@"THKN_control_bg-fill" inBundle:THBundle()];
  [-[THWTransportControlRep canvas](self "canvas")];
  v5 = v4;
  -[CALayer setContents:](self->_backgroundLayer, "setContents:", [v3 CGImageForContentsScale:?]);
  backgroundLayer = self->_backgroundLayer;

  [(CALayer *)backgroundLayer setContentsScale:v5];
}

- (void)screenScaleDidChange
{
  v3.receiver = self;
  v3.super_class = THWTransportControlRep;
  [(THWTransportControlRep *)&v3 screenScaleDidChange];
  [(THWTransportControlRep *)self p_updateBackgroundLayerContent];
}

- (void)addAdditionalChildLayersToArray:(id)array
{
  v6.receiver = self;
  v6.super_class = THWTransportControlRep;
  [(THWTransportControlRep *)&v6 addAdditionalChildLayersToArray:?];
  [-[THWTransportControlRep layout](self "layout")];
  TSDRectWithSize();
  [(THWTransportControlRep *)self convertNaturalRectToLayerRelative:?];
  backgroundLayer = self->_backgroundLayer;
  if (backgroundLayer)
  {
    [(CALayer *)backgroundLayer setFrame:?];
    [array insertObject:self->_backgroundLayer atIndex:0];
  }
}

- (void)buttonControlWasPressed:(id)pressed
{
  v4 = [objc_msgSend(pressed "layout")];
  if (v4 == &dword_0 + 2)
  {
    clone = [(THWTransportControlRep *)self clone];

    [(TSWTransportControlClone *)clone transportControlCloneGotoNext];
  }

  else if (v4 == &dword_0 + 1)
  {
    clone2 = [(THWTransportControlRep *)self clone];

    [(TSWTransportControlClone *)clone2 transportControlCloneGotoPrev];
  }

  else if (!v4)
  {
    clone3 = [(THWTransportControlRep *)self clone];

    [(TSWTransportControlClone *)clone3 transportControlCloneGotoFirst];
  }
}

- (id)buttonControl:(id)control imageForState:(int)state highlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7 = [objc_msgSend(control "layout")];
  if (v7 > 2)
  {
    goto LABEL_7;
  }

  v8 = @"_N";
  if (highlightedCopy)
  {
    v8 = @"_P";
  }

  if (state == 2)
  {
    v8 = @"_D";
  }

  result = [TSUImage imageNamed:[NSString stringWithFormat:@"%@%@" inBundle:*(&off_45E570 + v7), v8], THBundle()];
  if (!result)
  {
LABEL_7:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  return result;
}

- (int)buttonControlState:(id)state
{
  v4 = [objc_msgSend(state "layout")];
  if (v4 == &dword_0 + 2)
  {
    transportControlCloneCanGotoNext = [(TSWTransportControlClone *)[(THWTransportControlRep *)self clone] transportControlCloneCanGotoNext];
  }

  else if (v4 == &dword_0 + 1)
  {
    transportControlCloneCanGotoNext = [(TSWTransportControlClone *)[(THWTransportControlRep *)self clone] transportControlCloneCanGotoPrev];
  }

  else
  {
    if (v4)
    {
      return 0;
    }

    transportControlCloneCanGotoNext = [(TSWTransportControlClone *)[(THWTransportControlRep *)self clone] transportControlCloneCanGotoFirst];
  }

  if (transportControlCloneCanGotoNext)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (id)fontNameForLabelControl:(id)control
{
  v3 = [TSUFont boldSystemFontOfSize:control, 12.0];

  return [v3 fontName];
}

- (id)shadowForLabelControl:(id)control
{
  blackColor = [+[TSUColor blackColor](TSUColor blackColor];

  return [TSDShadow shadowWithAngle:blackColor offset:1 radius:-90.0 opacity:1.0 color:0.0 enabled:1.0];
}

- (void)transportControlCloneDidUpdateState:(id)state
{
  object = [state object];
  if (object == [(THWTransportControlRep *)self clone])
  {

    [(THWTransportControlRep *)self p_updateControlStates];
  }
}

- (TSWTransportControlClone)clone
{
  [(THWTransportControlRep *)self parentRep];
  v3 = [TSUProtocolCast() cloneForTransportControl:self];
  if (!v3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return v3;
}

- (void)p_updateControlStates
{
  layout = [(THWTransportControlRep *)self layout];

  [layout invalidateControls];
}

@end
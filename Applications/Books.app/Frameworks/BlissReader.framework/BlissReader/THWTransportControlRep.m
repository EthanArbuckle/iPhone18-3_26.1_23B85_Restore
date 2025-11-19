@interface THWTransportControlRep
- (TSWTransportControlClone)clone;
- (id)buttonControl:(id)a3 imageForState:(int)a4 highlighted:(BOOL)a5;
- (id)fontNameForLabelControl:(id)a3;
- (id)shadowForLabelControl:(id)a3;
- (int)buttonControlState:(id)a3;
- (void)addAdditionalChildLayersToArray:(id)a3;
- (void)buttonControlWasPressed:(id)a3;
- (void)dealloc;
- (void)p_updateBackgroundLayerContent;
- (void)p_updateControlStates;
- (void)screenScaleDidChange;
- (void)transportControlCloneDidUpdateState:(id)a3;
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

- (void)addAdditionalChildLayersToArray:(id)a3
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
    [a3 insertObject:self->_backgroundLayer atIndex:0];
  }
}

- (void)buttonControlWasPressed:(id)a3
{
  v4 = [objc_msgSend(a3 "layout")];
  if (v4 == &dword_0 + 2)
  {
    v7 = [(THWTransportControlRep *)self clone];

    [(TSWTransportControlClone *)v7 transportControlCloneGotoNext];
  }

  else if (v4 == &dword_0 + 1)
  {
    v6 = [(THWTransportControlRep *)self clone];

    [(TSWTransportControlClone *)v6 transportControlCloneGotoPrev];
  }

  else if (!v4)
  {
    v5 = [(THWTransportControlRep *)self clone];

    [(TSWTransportControlClone *)v5 transportControlCloneGotoFirst];
  }
}

- (id)buttonControl:(id)a3 imageForState:(int)a4 highlighted:(BOOL)a5
{
  v5 = a5;
  v7 = [objc_msgSend(a3 "layout")];
  if (v7 > 2)
  {
    goto LABEL_7;
  }

  v8 = @"_N";
  if (v5)
  {
    v8 = @"_P";
  }

  if (a4 == 2)
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

- (int)buttonControlState:(id)a3
{
  v4 = [objc_msgSend(a3 "layout")];
  if (v4 == &dword_0 + 2)
  {
    v5 = [(TSWTransportControlClone *)[(THWTransportControlRep *)self clone] transportControlCloneCanGotoNext];
  }

  else if (v4 == &dword_0 + 1)
  {
    v5 = [(TSWTransportControlClone *)[(THWTransportControlRep *)self clone] transportControlCloneCanGotoPrev];
  }

  else
  {
    if (v4)
    {
      return 0;
    }

    v5 = [(TSWTransportControlClone *)[(THWTransportControlRep *)self clone] transportControlCloneCanGotoFirst];
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (id)fontNameForLabelControl:(id)a3
{
  v3 = [TSUFont boldSystemFontOfSize:a3, 12.0];

  return [v3 fontName];
}

- (id)shadowForLabelControl:(id)a3
{
  v3 = [+[TSUColor blackColor](TSUColor blackColor];

  return [TSDShadow shadowWithAngle:v3 offset:1 radius:-90.0 opacity:1.0 color:0.0 enabled:1.0];
}

- (void)transportControlCloneDidUpdateState:(id)a3
{
  v4 = [a3 object];
  if (v4 == [(THWTransportControlRep *)self clone])
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
  v2 = [(THWTransportControlRep *)self layout];

  [v2 invalidateControls];
}

@end
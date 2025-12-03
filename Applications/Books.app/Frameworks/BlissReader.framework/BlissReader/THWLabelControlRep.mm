@interface THWLabelControlRep
- (THWLabelControlDelegate)delegate;
- (void)addAdditionalChildLayersToArray:(id)array;
- (void)dealloc;
- (void)updateFromLayout;
- (void)updateLayerGeometryFromLayout:(id)layout;
@end

@implementation THWLabelControlRep

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWLabelControlRep;
  [(THWLabelControlRep *)&v3 dealloc];
}

- (THWLabelControlDelegate)delegate
{
  if (self->_delegate)
  {
    return self->_delegate;
  }

  [(THWLabelControlRep *)self parentRep];

  return TSUProtocolCast();
}

- (void)updateLayerGeometryFromLayout:(id)layout
{
  v3.receiver = self;
  v3.super_class = THWLabelControlRep;
  [(THWLabelControlRep *)&v3 updateLayerGeometryFromLayout:layout];
}

- (void)updateFromLayout
{
  v6.receiver = self;
  v6.super_class = THWLabelControlRep;
  [(THWLabelControlRep *)&v6 updateFromLayout];
  if (!self->_labelLayer)
  {
    self->_labelLayer = objc_alloc_init(THWLabelLayer);
    [(THWLabelLayer *)self->_labelLayer setDelegate:+[THNoAnimationLayerDelegate sharedInstance]];
    [-[THWLabelControlRep canvas](self "canvas")];
    [(THWLabelLayer *)self->_labelLayer setContentsScale:?];
  }

  [(THWLabelLayer *)self->_labelLayer setString:[(THWLabelControlDelegate *)[(THWLabelControlRep *)self delegate] stringForLabelControl:self]];
  [(THWLabelLayer *)self->_labelLayer setTextColor:[(THWLabelControlDelegate *)[(THWLabelControlRep *)self delegate] textColorForLabelControl:self]];
  [(THWLabelControlDelegate *)[(THWLabelControlRep *)self delegate] fontSizeForLabelControl:self];
  v4 = v3;
  [-[THWLabelControlRep canvas](self "canvas")];
  [(THWLabelLayer *)self->_labelLayer setFontSize:v4 * v5];
  [(THWLabelLayer *)self->_labelLayer setFontName:[(THWLabelControlDelegate *)[(THWLabelControlRep *)self delegate] fontNameForLabelControl:self]];
  [(THWLabelLayer *)self->_labelLayer setHorizontalAlignment:[(THWLabelControlDelegate *)[(THWLabelControlRep *)self delegate] horizontaAlignmentForLabelControl:self]];
  [(THWLabelLayer *)self->_labelLayer setVerticalAlignment:[(THWLabelControlDelegate *)[(THWLabelControlRep *)self delegate] verticalAlignmentForLabelControl:self]];
  [(THWLabelLayer *)self->_labelLayer setShadow:[(THWLabelControlDelegate *)[(THWLabelControlRep *)self delegate] shadowForLabelControl:self]];
  [-[THWLabelControlRep canvas](self "canvas")];
  [(THWLabelLayer *)self->_labelLayer setShadowScale:?];
}

- (void)addAdditionalChildLayersToArray:(id)array
{
  if (self->_labelLayer)
  {
    [-[THWLabelControlRep layout](self "layout")];
    TSDRectWithSize();
    [(THWLabelControlRep *)self convertNaturalRectToLayerRelative:?];
    [(THWLabelLayer *)self->_labelLayer setFrame:?];
    labelLayer = self->_labelLayer;

    [array addObject:labelLayer];
  }
}

@end
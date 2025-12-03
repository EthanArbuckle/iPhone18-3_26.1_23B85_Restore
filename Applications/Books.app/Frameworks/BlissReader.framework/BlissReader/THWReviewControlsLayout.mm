@interface THWReviewControlsLayout
- (CGRect)checkAnswerButtonFrame;
- (CGRect)nextButtonFrame;
- (CGRect)prevButtonFrame;
- (NSString)buttonFontName;
- (THWReviewControlsLayout)initWithDelegate:(id)delegate;
- (id)additionalLayouts;
- (id)dependentLayouts;
- (id)layoutGeometryForLayout:(id)layout;
- (void)dealloc;
- (void)updateChildrenFromInfo;
- (void)validate;
@end

@implementation THWReviewControlsLayout

- (THWReviewControlsLayout)initWithDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = THWReviewControlsLayout;
  result = [(THWReviewControlsLayout *)&v5 initWithInfo:0];
  if (result)
  {
    result->_delegate = delegate;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewControlsLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (CGRect)prevButtonFrame
{
  v2 = 0.0;
  v3 = 2.0;
  v4 = 31.0;
  v5 = 31.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)nextButtonFrame
{
  [-[THWReviewControlsLayout geometry](self "geometry")];
  v3 = v2 + -31.0;
  v4 = 2.0;
  v5 = 31.0;
  v6 = 31.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)checkAnswerButtonFrame
{
  [-[THWReviewControlsLayout geometry](self "geometry")];
  TSURound();
  v3 = 107.0;
  v4 = 2.0;
  v5 = 31.0;
  result.size.height = v5;
  result.size.width = v3;
  result.origin.y = v4;
  result.origin.x = v2;
  return result;
}

- (NSString)buttonFontName
{
  v2 = [TSUFont systemFontOfSize:12.0];

  return [v2 fontName];
}

- (void)updateChildrenFromInfo
{
  if (!self->_prevButton)
  {
    v3 = objc_alloc_init(THWButtonControlLayout);
    self->_prevButton = v3;
    [(THWControlLayout *)v3 setTag:0];
  }

  if (!self->_nextButton)
  {
    v4 = objc_alloc_init(THWButtonControlLayout);
    self->_nextButton = v4;
    [(THWControlLayout *)v4 setTag:1];
  }

  if (!self->_checkAnswerButton)
  {
    v5 = objc_alloc_init(THWButtonControlLayout);
    self->_checkAnswerButton = v5;
    [(THWControlLayout *)v5 setTag:2];
  }

  v6.receiver = self;
  v6.super_class = THWReviewControlsLayout;
  [(THWContainerLayout *)&v6 updateChildrenFromInfo];
}

- (id)dependentLayouts
{
  v3 = [NSMutableArray arrayWithArray:[(THWReviewControlsLayout *)self children]];
  v5.receiver = self;
  v5.super_class = THWReviewControlsLayout;
  [(NSMutableArray *)v3 addObjectsFromArray:[(THWReviewControlsLayout *)&v5 dependentLayouts]];
  return v3;
}

- (void)validate
{
  [(THWReviewControlsLayout *)self invalidateFrame];
  v3.receiver = self;
  v3.super_class = THWReviewControlsLayout;
  [(THWReviewControlsLayout *)&v3 validate];
}

- (id)additionalLayouts
{
  v3 = +[NSMutableArray array];
  v4 = v3;
  if (self->_prevButton)
  {
    [v3 addObject:?];
  }

  if (self->_nextButton)
  {
    [v4 addObject:?];
  }

  if (self->_checkAnswerButton)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (id)layoutGeometryForLayout:(id)layout
{
  v4 = TSUProtocolCast();
  if (!v4)
  {
    return 0;
  }

  v5 = [v4 tag];
  if (v5 == &dword_0 + 2)
  {
    v6 = [TSDLayoutGeometry alloc];
    [(THWReviewControlsLayout *)self checkAnswerButtonFrame];
    goto LABEL_9;
  }

  if (v5 == &dword_0 + 1)
  {
    v6 = [TSDLayoutGeometry alloc];
    [(THWReviewControlsLayout *)self nextButtonFrame];
    goto LABEL_9;
  }

  if (v5)
  {
    return 0;
  }

  v6 = [TSDLayoutGeometry alloc];
  [(THWReviewControlsLayout *)self prevButtonFrame];
LABEL_9:
  v8 = [v6 initWithFrame:?];

  return v8;
}

@end
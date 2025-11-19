@interface BCCardStackTransitioningPlaceholderCoverSource
- (BCCardStackTransitioningPlaceholderCoverSource)initWithCoverFrame:(CGRect)a3 referenceView:(id)a4;
- (CGRect)frame;
- (void)cardStackTransitioningCoverSourceReplaceReferenceView:(id)a3;
@end

@implementation BCCardStackTransitioningPlaceholderCoverSource

- (BCCardStackTransitioningPlaceholderCoverSource)initWithCoverFrame:(CGRect)a3 referenceView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = BCCardStackTransitioningPlaceholderCoverSource;
  v11 = [(BCCardStackTransitioningPlaceholderCoverSource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_frame.origin.x = x;
    v11->_frame.origin.y = y;
    v11->_frame.size.width = width;
    v11->_frame.size.height = height;
    objc_storeStrong(&v11->_referenceView, a4);
  }

  return v12;
}

- (void)cardStackTransitioningCoverSourceReplaceReferenceView:(id)a3
{
  v13 = a3;
  [(BCCardStackTransitioningPlaceholderCoverSource *)self frame];
  if (!CGRectIsEmpty(v15))
  {
    [(BCCardStackTransitioningPlaceholderCoverSource *)self frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(BCCardStackTransitioningPlaceholderCoverSource *)self referenceView];
    [v13 convertRect:v12 fromView:{v5, v7, v9, v11}];
    [(BCCardStackTransitioningPlaceholderCoverSource *)self setFrame:?];

    [(BCCardStackTransitioningPlaceholderCoverSource *)self setReferenceView:v13];
  }
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
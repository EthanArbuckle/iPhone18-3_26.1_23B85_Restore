@interface THWTransportControlLayout
- (THWTransportControlLayout)init;
- (id)layoutGeometryForLayout:(id)layout;
- (void)dealloc;
@end

@implementation THWTransportControlLayout

- (THWTransportControlLayout)init
{
  v4.receiver = self;
  v4.super_class = THWTransportControlLayout;
  v2 = [(THWTransportControlLayout *)&v4 initWithInfo:0];
  if (v2)
  {
    v2->_restartButtonLayout = [(THWControlLayout *)[THWButtonControlLayout alloc] initWithTag:0];
    v2->_previousButtonLayout = [(THWControlLayout *)[THWButtonControlLayout alloc] initWithTag:1];
    v2->_nextButtonLayout = [(THWControlLayout *)[THWButtonControlLayout alloc] initWithTag:2];
    v2->_labelLayout = [(THWControlLayout *)[THWLabelControlLayout alloc] initWithTag:3];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWTransportControlLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (id)layoutGeometryForLayout:(id)layout
{
  [(THWTransportControlLayout *)self frame];
  TSDRectWithSize();
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  v9 = (CGRectGetHeight(v24) - v24.size.height) * 0.5;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v10 = CGRectGetHeight(v25);
  if (self->_restartButtonLayout == layout)
  {
    v12 = [TSDLayoutGeometry alloc];
    v13 = 35.0;
    v14 = 0.0;
LABEL_10:
    v18 = v9;
    v19 = height;
    goto LABEL_11;
  }

  if (self->_previousButtonLayout == layout)
  {
    v15 = [TSDLayoutGeometry alloc];
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MidX = CGRectGetMidX(v26) + -40.0;
    v17 = -35.0;
LABEL_9:
    v14 = MidX + v17;
    v13 = 35.0;
    v12 = v15;
    goto LABEL_10;
  }

  if (self->_nextButtonLayout == layout)
  {
    v15 = [TSDLayoutGeometry alloc];
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MidX = CGRectGetMidX(v27);
    v17 = 40.0;
    goto LABEL_9;
  }

  if (self->_labelLayout != layout)
  {
    return 0;
  }

  v21 = (v10 - height) * 0.5;
  v22 = [TSDLayoutGeometry alloc];
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v29.origin.x = CGRectGetMidX(v28) + -40.0;
  v29.size.width = 80.0;
  v29.origin.y = v21;
  v29.size.height = height;
  *&v14 = CGRectIntegral(v29);
  v12 = v22;
LABEL_11:
  v20 = [v12 initWithFrame:{v14, v18, v13, v19}];

  return v20;
}

@end
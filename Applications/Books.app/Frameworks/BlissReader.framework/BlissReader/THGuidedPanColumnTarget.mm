@interface THGuidedPanColumnTarget
- (CGRect)guidedPanTargetUnscaledPageRect;
- (CGRect)guidedPanTargetUnscaledRect;
- (THGuidedPanColumnTarget)initWithLayout:(id)layout column:(id)column;
- (double)viewScaleWithController:(id)controller;
- (void)dealloc;
- (void)guidedPanTargetAddWellsToArray:(id)array withController:(id)controller;
@end

@implementation THGuidedPanColumnTarget

- (THGuidedPanColumnTarget)initWithLayout:(id)layout column:(id)column
{
  v9.receiver = self;
  v9.super_class = THGuidedPanColumnTarget;
  v6 = [(THGuidedPanColumnTarget *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (layout && column)
    {
      [(THGuidedPanColumnTarget *)v6 setLayout:layout];
      [(THGuidedPanColumnTarget *)v7 setColumn:column];
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  [(THGuidedPanColumnTarget *)self setLayout:0];
  [(THGuidedPanColumnTarget *)self setColumn:0];
  v3.receiver = self;
  v3.super_class = THGuidedPanColumnTarget;
  [(THGuidedPanColumnTarget *)&v3 dealloc];
}

- (CGRect)guidedPanTargetUnscaledRect
{
  layout = self->_layout;
  [(TSWPColumn *)self->_column typographicBounds];
  [(TSWPLayoutTarget *)layout rectInRoot:?];

  return CGRectInset(*&v3, -15.0, -15.0);
}

- (CGRect)guidedPanTargetUnscaledPageRect
{
  pageLayout = [(TSWPLayoutTarget *)self->_layout pageLayout];

  [pageLayout frameInRoot];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)viewScaleWithController:(id)controller
{
  [(THGuidedPanColumnTarget *)self guidedPanTargetUnscaledRect];

  [controller viewScaleForUnscaledRect:0 forPage:?];
  return result;
}

- (void)guidedPanTargetAddWellsToArray:(id)array withController:(id)controller
{
  [(THGuidedPanColumnTarget *)self guidedPanTargetUnscaledRect];
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  MidX = CGRectGetMidX(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  MinY = CGRectGetMinY(v46);
  [controller viewScaleForUnscaledRect:0 forPage:{x, y, width, height}];
  v14 = v13;
  v15 = -10.0 / v13;
  v47.size.width = 0.0;
  v47.origin.x = MidX;
  v47.origin.y = MinY;
  v47.size.height = height;
  v48 = CGRectInset(v47, v15, 0.0);
  v16 = [[THGuidedPanRectWell alloc] initWithUnscaledRect:self wellRect:x target:y, width, height, v48.origin.x, v48.origin.y, v48.size.width, v48.size.height];
  [(THGuidedPanRectWell *)v16 setAllowVerticalMovementInWell:1];
  [(THGuidedPanRectWell *)v16 setIdentifier:@"column"];
  [(THGuidedPanRectWell *)v16 setSmoothWeight:0.2];
  [(THGuidedPanRectWell *)v16 setCurrentWeight:1.0];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_17A028;
  v44[3] = &unk_45E318;
  v44[4] = v16;
  v44[5] = controller;
  *&v44[6] = 240.0 / v14;
  [(THGuidedPanRectWell *)v16 setWeightBlock:v44];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_17A0B8;
  v43[3] = &unk_45E340;
  v43[4] = v16;
  [(THGuidedPanRectWell *)v16 setRatingBlock:v43];
  [array addObject:v16];

  v17 = [(TSWPLayoutTarget *)self->_layout previousTargetFromLayout:self->_layout column:self->_column];
  if (v17)
  {
    v18 = v17;
    [v17 guidedPanTargetUnscaledRect];
    v19 = v49.origin.x;
    v20 = v49.origin.y;
    v21 = v49.size.width;
    v22 = v49.size.height;
    v23 = CGRectGetMidX(v49);
    v50.origin.x = v19;
    v50.origin.y = v20;
    v50.size.width = v21;
    v50.size.height = v22;
    v24 = CGRectGetMinY(v50);
    v51.origin.x = v19;
    v51.origin.y = v20;
    v51.size.width = v21;
    v51.size.height = v22;
    v52.size.height = CGRectGetHeight(v51);
    v52.size.width = 0.0;
    v52.origin.x = v23;
    v52.origin.y = v24;
    v53 = CGRectInset(v52, -50.0, 0.0);
    v25 = v53.origin.x;
    v26 = v53.origin.y;
    v27 = v53.size.width;
    v28 = v53.size.height;
    v53.origin.x = v19;
    v53.origin.y = v20;
    v53.size.width = v21;
    v53.size.height = v22;
    v29 = [(THGuidedPanColumnTarget *)self p_wellForTarget:v18 wellRect:1 blendDistance:v25 prev:v26, v27, v28, fmax(CGRectGetWidth(v53), 300.0)];
    [v29 setIdentifier:@"prev"];
    [array addObject:v29];
  }

  v30 = [(TSWPLayoutTarget *)self->_layout nextTargetFromLayout:self->_layout column:self->_column];
  if (v30)
  {
    v31 = v30;
    [v30 guidedPanTargetUnscaledRect];
    v32 = v54.origin.x;
    v33 = v54.origin.y;
    v34 = v54.size.width;
    v35 = v54.size.height;
    v36 = CGRectGetMidX(v54);
    v55.origin.x = v32;
    v55.origin.y = v33;
    v55.size.width = v34;
    v55.size.height = v35;
    v37 = CGRectGetMinY(v55);
    v56.origin.x = v32;
    v56.origin.y = v33;
    v56.size.width = v34;
    v56.size.height = v35;
    v57.size.height = CGRectGetHeight(v56);
    v57.size.width = 0.0;
    v57.origin.x = v36;
    v57.origin.y = v37;
    v58 = CGRectInset(v57, -50.0, 0.0);
    v38 = v58.origin.x;
    v39 = v58.origin.y;
    v40 = v58.size.width;
    v41 = v58.size.height;
    v58.origin.x = v32;
    v58.origin.y = v33;
    v58.size.width = v34;
    v58.size.height = v35;
    v42 = [(THGuidedPanColumnTarget *)self p_wellForTarget:v31 wellRect:0 blendDistance:v38 prev:v39, v40, v41, fmax(CGRectGetWidth(v58), 300.0)];
    [v42 setIdentifier:@"next"];
    [array addObject:v42];
  }
}

@end
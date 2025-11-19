@interface THWReviewImageWithTargetsLayout
- (CGPoint)draggablePlacardLayout:(id)a3 originForSize:(CGSize)a4;
- (CGPoint)p_drawerPositionForImagePlacard:(id)a3 withSize:(CGSize)a4;
- (CGPoint)p_drawerPositionForPlacard:(id)a3 withSize:(CGSize)a4;
- (CGPoint)p_drawerPositionForTextPlacard:(id)a3 withSize:(CGSize)a4;
- (CGPoint)p_positionForTargetAtIndex:(unint64_t)a3;
- (CGRect)drawerFrame;
- (CGRect)imageFrame;
- (CGSize)p_drawerFrameSize;
- (CGSize)p_placardImageSize;
- (CGSize)placardTextSize;
- (THWReviewImageWithTargetsLayout)initWithQuestion:(id)a3 index:(unint64_t)a4 delegate:(id)a5;
- (UIEdgeInsets)draggablePlacardLayoutInsets:(id)a3;
- (UIEdgeInsets)draggablePlacardLayoutTextInsets:(id)a3;
- (double)draggablePlacardLayoutTextMaxWidth:(id)a3;
- (double)p_placardHorzPadding;
- (double)p_placardImagePadding;
- (double)p_placardVertPadding;
- (id)additionalLayouts;
- (id)childInfosForLayout;
- (id)dependentLayouts;
- (id)layoutForChoiceIndex:(unint64_t)a3;
- (id)layoutForTargetIndex:(unint64_t)a3;
- (id)layoutGeometryForLayout:(id)a3;
- (id)p_responseController;
- (int)placardArrowPlacementforTarget:(unint64_t)a3;
- (void)dealloc;
- (void)invalidateSize;
- (void)p_calculateTextPlacardNumRows:(unint64_t *)a3 numCols:(unint64_t *)a4 rowHeight:(double *)a5 colWidth:(double *)a6 lasRowNeedsCentering:(BOOL *)a7;
- (void)p_setupFrames;
- (void)p_setupPlacardLayouts;
- (void)updateChildrenFromInfo;
- (void)updatePlacardLayouts;
@end

@implementation THWReviewImageWithTargetsLayout

- (THWReviewImageWithTargetsLayout)initWithQuestion:(id)a3 index:(unint64_t)a4 delegate:(id)a5
{
  v13.receiver = self;
  v13.super_class = THWReviewImageWithTargetsLayout;
  v8 = [(THWReviewImageWithTargetsLayout *)&v13 initWithInfo:0];
  v9 = v8;
  if (v8)
  {
    origin = CGRectNull.origin;
    size = CGRectNull.size;
    v8->_imageFrame.origin = CGRectNull.origin;
    v8->_imageFrame.size = size;
    v8->_drawerFrame.origin = origin;
    v8->_drawerFrame.size = size;
    v8->_placardTextSize = CGSizeZero;
    v8->_questionIndex = a4;
    v8->_question = a3;
    v9->_delegate = a5;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewImageWithTargetsLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (id)childInfosForLayout
{
  result = [(THWReviewQuestion *)[(THWReviewImageWithTargetsLayout *)self question] imageInfo];
  if (result)
  {

    return [NSArray arrayWithObject:result];
  }

  return result;
}

- (id)dependentLayouts
{
  v3 = +[NSMutableArray array];
  v5.receiver = self;
  v5.super_class = THWReviewImageWithTargetsLayout;
  [v3 addObjectsFromArray:{-[THWReviewImageWithTargetsLayout dependentLayouts](&v5, "dependentLayouts")}];
  [(THWReviewImageWithTargetsLayout *)self addDescendentLayoutsToArray:v3];
  return v3;
}

- (void)updateChildrenFromInfo
{
  [(THWReviewImageWithTargetsLayout *)self p_setupPlacardLayouts];
  v3.receiver = self;
  v3.super_class = THWReviewImageWithTargetsLayout;
  [(THWContainerLayout *)&v3 updateChildrenFromInfo];
}

- (id)additionalLayouts
{
  v3 = [NSMutableArray arrayWithArray:[(THWReviewImageWithTargetsLayout *)self targetLayouts]];
  [(NSMutableArray *)v3 addObjectsFromArray:[(THWReviewImageWithTargetsLayout *)self placardLayouts]];
  return v3;
}

- (void)invalidateSize
{
  v5.receiver = self;
  v5.super_class = THWReviewImageWithTargetsLayout;
  [(THWReviewImageWithTargetsLayout *)&v5 invalidateSize];
  origin = CGRectNull.origin;
  size = CGRectNull.size;
  self->_imageFrame.origin = CGRectNull.origin;
  self->_imageFrame.size = size;
  self->_drawerFrame.origin = origin;
  self->_drawerFrame.size = size;
  self->_placardTextSize = CGSizeZero;
}

- (CGSize)p_drawerFrameSize
{
  [-[THWReviewImageWithTargetsLayout geometry](self "geometry")];
  TSDRectWithSize();
  v4 = v3;
  v6 = v5;
  v7 = [(THWReviewQuestionLayoutDelegate *)self->_delegate questionLayoutMode:self];
  if (v7 != &dword_0 + 2)
  {
    [(THWReviewImageWithTargetsLayout *)self p_placardHorzPadding];
    v6 = v8 + 68.0;
  }

  if ([-[NSMutableArray objectAtIndex:](self->_placardLayouts objectAtIndex:{0), "contentImage"}])
  {
    [(THWReviewImageWithTargetsLayout *)self p_placardImageSize];
    v10 = v9;
    v12 = v11;
    [(THWReviewImageWithTargetsLayout *)self p_placardImagePadding];
    if (v7 == &dword_0 + 2)
    {
      v4 = floor(v13 + v13 + (v10 + 10.0) * 3.0);
    }

    else if (v7)
    {
      v17 = floor(v13 + (v12 + 10.0) * 2.0);
      if (v6 < v17)
      {
        v6 = v17;
      }
    }
  }

  else
  {
    v14 = [(NSArray *)[(THWReviewQuestion *)[(THWReviewImageWithTargetsLayout *)self question] choices] count];
    v15 = v14;
    if (v7 == &dword_0 + 2)
    {
      v15 = ceil(v15 / 3.0);
      v16 = 80.0;
    }

    else
    {
      v16 = 185.0;
    }

    [(THWReviewImageWithTargetsLayout *)self p_placardHorzPadding];
    v19 = v15;
    v20 = (v4 + v18) / v19 - v18;
    if (v7 != &dword_0 + 2 && v20 < v16 && v14 >= 3)
    {
      v19 = ceil(vcvtd_n_f64_u64(v14, 1uLL));
      v20 = (v4 + v18) / v19 - v18;
    }

    if (v20 >= v16)
    {
      v20 = v16;
    }

    v4 = -(v18 - v19 * (v18 + v20));
  }

  v22 = v4;
  v23 = v6;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)p_setupFrames
{
  p_imageFrame = &self->_imageFrame;
  if (CGRectIsNull(self->_imageFrame) || CGRectIsNull(self->_drawerFrame))
  {
    [-[THWReviewImageWithTargetsLayout geometry](self "geometry")];
    TSDRectWithSize();
    v5 = v4;
    v42 = v6;
    v8 = v7;
    v10 = v9;
    [(THWReviewImageWithTargetsLayout *)self p_drawerFrameSize];
    v12 = v11;
    p_drawerFrame = &self->_drawerFrame;
    TSUClamp();
    self->_drawerFrame.origin.x = 0.0;
    self->_drawerFrame.origin.y = 0.0;
    self->_drawerFrame.size.width = v12;
    self->_drawerFrame.size.height = v14;
    v15 = [(THWReviewImageWithTargetsLayout *)self question];
    if (v15)
    {
      [(THWReviewQuestion *)v15 imageSize];
    }

    v16 = [(THWReviewQuestionLayoutDelegate *)self->_delegate questionLayoutMode:self];
    [(THWReviewImageWithTargetsLayout *)self p_placardVertPadding];
    v41 = v17;
    TSDRectWithSize();
    THIntegralCenterRectInRect(v18, v19, v20, v21, v5, v42, v8, v10);
    p_imageFrame->origin.x = v22;
    p_imageFrame->origin.y = v23;
    p_imageFrame->size.width = v24;
    p_imageFrame->size.height = v25;
    TSDRectWithSize();
    THIntegralCenterRectInRect(v26, v27, v28, v29, v5, v42, v8, v10);
    p_drawerFrame->origin.x = v30;
    self->_drawerFrame.origin.y = v31;
    self->_drawerFrame.size.width = v32;
    self->_drawerFrame.size.height = v33;
    if (v16 == &dword_0 + 2)
    {
      Width = CGRectGetWidth(*&v30);
      v35 = Width + CGRectGetWidth(*p_imageFrame);
      v43.origin.x = v5;
      v43.origin.y = v42;
      v43.size.width = v8;
      v43.size.height = v10;
      v36 = CGRectGetWidth(v43);
      v37 = floor((v36 - v35) / 3.0);
      if (v37 <= 15.0)
      {
        p_drawerFrame->origin.x = 0.0;
        v38 = v36 - CGRectGetWidth(*p_imageFrame);
      }

      else
      {
        p_drawerFrame->origin.x = v37;
        v44.origin.y = self->_drawerFrame.origin.y;
        v44.size.width = self->_drawerFrame.size.width;
        v44.size.height = self->_drawerFrame.size.height;
        v44.origin.x = v37;
        v38 = v37 + CGRectGetMaxX(v44);
      }

      p_imageFrame->origin.x = v38;
    }

    else
    {
      Height = CGRectGetHeight(*p_imageFrame);
      v45.origin.x = p_drawerFrame->origin.x;
      v45.origin.y = self->_drawerFrame.origin.y;
      v45.size.width = self->_drawerFrame.size.width;
      v45.size.height = self->_drawerFrame.size.height;
      v40 = v41 + Height + CGRectGetHeight(v45);
      v46.origin.x = v5;
      v46.origin.y = v42;
      v46.size.width = v8;
      v46.size.height = v10;
      v47.origin.y = floor((CGRectGetHeight(v46) - v40) * 0.5);
      p_imageFrame->origin.y = v47.origin.y;
      v47.origin.x = p_imageFrame->origin.x;
      v47.size.width = p_imageFrame->size.width;
      v47.size.height = p_imageFrame->size.height;
      self->_drawerFrame.origin.y = v41 + CGRectGetMaxY(v47);
    }
  }
}

- (CGRect)imageFrame
{
  [(THWReviewImageWithTargetsLayout *)self p_setupFrames];
  x = self->_imageFrame.origin.x;
  y = self->_imageFrame.origin.y;
  width = self->_imageFrame.size.width;
  height = self->_imageFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)drawerFrame
{
  [(THWReviewImageWithTargetsLayout *)self p_setupFrames];
  x = self->_drawerFrame.origin.x;
  y = self->_drawerFrame.origin.y;
  width = self->_drawerFrame.size.width;
  height = self->_drawerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)p_positionForTargetAtIndex:(unint64_t)a3
{
  v4 = [(THWReviewQuestion *)[(THWReviewImageWithTargetsLayout *)self question] choiceAtIndex:a3];
  if (v4)
  {
    v5 = v4;
    [(THWReviewImageWithTargetsLayout *)self imageFrame];
    [objc_msgSend(v5 "targetRegion")];
    TSDCenterOfRect();
    v6 = [(THWReviewImageWithTargetsLayout *)self question];
    if (!v6 || ([(THWReviewQuestion *)v6 imageSize], v7 == 0.0))
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    else
    {
      TSDMultiplyPointScalar();
    }

    TSDAddPoints();
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  result.y = y;
  result.x = x;
  return result;
}

- (int)placardArrowPlacementforTarget:(unint64_t)a3
{
  v3 = [-[THWReviewQuestion choiceAtIndex:](-[THWReviewImageWithTargetsLayout question](self "question")] - 1;
  if (v3 > 3)
  {
    return 0;
  }

  else
  {
    return dword_34B180[v3];
  }
}

- (void)updatePlacardLayouts
{
  v3 = [(THWReviewImageWithTargetsLayout *)self p_responseController];
  v4 = [v3 newTemporateReviewResponseMOC];
  v5 = [v3 responseForQuestionID:-[THWReviewQuestion questionID](-[THWReviewImageWithTargetsLayout question](self temporaryMOC:{"question"), "questionID"), v4}];
  objc_opt_class();
  [v5 answerState];
  v6 = TSUDynamicCast();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  placardLayouts = self->_placardLayouts;
  v8 = [(NSMutableArray *)placardLayouts countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(placardLayouts);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        [v12 invalidateFrame];
        if ([v12 placement] != 2)
        {
          if (v6)
          {
            v13 = [v6 targetForPlacard:{objc_msgSend(v12, "index")}] != 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = 0;
          }

          [v12 setPlacement:v13];
        }
      }

      v9 = [(NSMutableArray *)placardLayouts countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (id)layoutGeometryForLayout:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [TSDLayoutGeometry alloc];
    [(THWReviewImageWithTargetsLayout *)self imageFrame];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    -[THWReviewImageWithTargetsLayout p_positionForTargetAtIndex:](self, "p_positionForTargetAtIndex:", [a3 index]);
    v5 = [TSDLayoutGeometry alloc];
    TSDRectWithOriginAndSize();
  }

  v6 = [v5 initWithFrame:?];

  return v6;
}

- (id)layoutForChoiceIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_placardLayouts count]<= a3)
  {
    return 0;
  }

  placardLayouts = self->_placardLayouts;

  return [(NSMutableArray *)placardLayouts objectAtIndex:a3];
}

- (id)layoutForTargetIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_targetLayouts count]<= a3)
  {
    return 0;
  }

  targetLayouts = self->_targetLayouts;

  return [(NSMutableArray *)targetLayouts objectAtIndex:a3];
}

- (void)p_calculateTextPlacardNumRows:(unint64_t *)a3 numCols:(unint64_t *)a4 rowHeight:(double *)a5 colWidth:(double *)a6 lasRowNeedsCentering:(BOOL *)a7
{
  v13 = [(THWReviewQuestionLayoutDelegate *)self->_delegate questionLayoutMode:self];
  [(THWReviewImageWithTargetsLayout *)self drawerFrame];
  v15 = v14;
  v17 = v16;
  v18 = [(NSArray *)[(THWReviewQuestion *)[(THWReviewImageWithTargetsLayout *)self question] choices] count];
  [(THWReviewImageWithTargetsLayout *)self p_placardHorzPadding];
  v20 = v19;
  [(THWReviewImageWithTargetsLayout *)self p_placardVertPadding];
  if (v13 == &dword_0 + 2)
  {
    v21 = v18 + 2;
    v22 = v18;
    v23 = (v18 + 2 > 5) & v18;
    v18 = (v18 + 2) / 3;
    v24 = vcvtpd_u64_f64(v22 / (v21 / 3));
  }

  else if (v18 == 2)
  {
    v23 = 0;
    if (v15 <= v17)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v15 > v17)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }
  }

  else if ((v15 + v20) / v18 - v20 >= 185.0)
  {
    v23 = 0;
    v24 = 1;
  }

  else
  {
    v25 = v18 - 3;
    v26 = 3;
    if (v18 == 9)
    {
      v27 = 3;
    }

    else
    {
      v27 = v18;
    }

    if (v18 != 9)
    {
      v26 = 1;
    }

    if (v25 <= 5)
    {
      v23 = v18;
    }

    else
    {
      v23 = 0;
    }

    if (v25 <= 5)
    {
      v18 = (v18 + 1) >> 1;
    }

    else
    {
      v18 = v27;
    }

    if (v25 <= 5)
    {
      v24 = 2;
    }

    else
    {
      v24 = v26;
    }
  }

  TSDFloorForMainScreen();
  v29 = v28;
  if (v13 != &dword_0 + 2)
  {
    TSDFloorForMainScreen();
    if (!a3)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v30 = 0x4041000000000000;
  if (a3)
  {
LABEL_30:
    *a3 = v24;
  }

LABEL_31:
  if (a4)
  {
    *a4 = v18;
  }

  if (a5)
  {
    *a5 = v30;
  }

  if (a6)
  {
    *a6 = v29;
  }

  if (a7)
  {
    *a7 = v23 & 1;
  }
}

- (CGSize)placardTextSize
{
  p_placardTextSize = &self->_placardTextSize;
  width = self->_placardTextSize.width;
  height = self->_placardTextSize.height;
  v5 = CGSizeZero.height;
  if (width == CGSizeZero.width && height == v5)
  {
    [(THWReviewImageWithTargetsLayout *)self drawerFrame];
    v9 = v8;
    v11 = v10;
    v12 = [(NSArray *)[(THWReviewQuestion *)[(THWReviewImageWithTargetsLayout *)self question] choices] count];
    width = CGSizeZero.width;
    height = v5;
    if (v12 <= 9)
    {
      if (v12 >= 2)
      {
        v17 = v12;
        v18 = 1;
        v15 = 0.0;
        v16 = 0.0;
        [(THWReviewImageWithTargetsLayout *)self p_calculateTextPlacardNumRows:&v18 numCols:&v17 rowHeight:&v15 colWidth:&v16 lasRowNeedsCentering:0, CGSizeZero.width, v5];
        v13 = [(THWReviewQuestionLayoutDelegate *)self->_delegate questionLayoutMode:self];
        v14 = 185.0;
        if (v13 == &dword_0 + 2)
        {
          v14 = 80.0;
        }

        if (v16 < v14)
        {
          v14 = v16;
        }

        width = v14 + -10.0;
        height = fmin(v15, 34.0) + -10.0;
        p_placardTextSize->width = width;
        p_placardTextSize->height = height;
      }

      else
      {
        width = v9;
        height = v11;
      }
    }
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)p_drawerPositionForTextPlacard:(id)a3 withSize:(CGSize)a4
{
  [(THWReviewImageWithTargetsLayout *)self drawerFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(NSArray *)[(THWReviewQuestion *)[(THWReviewImageWithTargetsLayout *)self question] choices] count];
  if (v14 - 10 > 0xFFFFFFFFFFFFFFF6)
  {
    if (v14 == 1)
    {
      TSDCenterOfRect();
      x = v17;
    }

    else
    {
      v24 = v14;
      v25 = 1;
      v23 = 0;
      v21 = 0;
      v22 = 0;
      [(THWReviewImageWithTargetsLayout *)self p_calculateTextPlacardNumRows:&v25 numCols:&v24 rowHeight:&v21 colWidth:&v22 lasRowNeedsCentering:&v23];
      [(THWReviewImageWithTargetsLayout *)self p_placardHorzPadding];
      [a3 index];
      [(THWReviewImageWithTargetsLayout *)self p_placardVertPadding];
      [(THWReviewImageWithTargetsLayout *)self p_placardHorzPadding];
      v27.origin.x = v7;
      v27.origin.y = v9;
      v27.size.width = v11;
      v27.size.height = v13;
      CGRectGetHeight(v27);
      TSDFloorForMainScreen();
      x = v18;
      TSDFloorForMainScreen();
      y = v19;
    }
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  v20 = x;
  result.y = y;
  result.x = v20;
  return result;
}

- (CGPoint)p_drawerPositionForImagePlacard:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = [(NSArray *)[(THWReviewQuestion *)[(THWReviewImageWithTargetsLayout *)self question] choices] count];
  [(THWReviewImageWithTargetsLayout *)self drawerFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [a3 index];
  [(THWReviewImageWithTargetsLayout *)self p_placardImagePadding];
  v19 = v18;
  if ([(THWReviewQuestionLayoutDelegate *)self->_delegate questionLayoutMode:self])
  {
    v20 = (v8 + 2) / 3;
    v21 = vcvtpd_u64_f64(v8 / v20);
    v22 = (v17 % v21);
    if (v21)
    {
      v23 = v17 / v21;
    }

    else
    {
      v23 = 0;
    }

    if (v21)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0.0;
    }

    v25 = width + v19;
    v26 = height + v19;
    v27 = -(v19 - v21 * v25);
    v41 = -(v19 - v20 * v26);
    v42 = v24;
    if (((v8 + 2 > 5) & v8 & (v23 + 1 == v20)) != 0)
    {
      v28 = v25 * 0.5;
    }

    else
    {
      v28 = 0.0;
    }

    v44.origin.x = v10;
    v44.origin.y = v12;
    v44.size.width = v14;
    v44.size.height = v16;
    v29 = floor((CGRectGetWidth(v44) - v27) * 0.5);
    v45.origin.x = v10;
    v45.origin.y = v12;
    v45.size.width = v14;
    v45.size.height = v16;
    v30 = v28 + CGRectGetMinX(v45) + v29;
    v46.origin.x = v10;
    v46.origin.y = v12;
    v46.size.width = v14;
    v46.size.height = v16;
    v31 = floor((CGRectGetHeight(v46) - v41) * 0.5);
    v47.origin.x = v10;
    v47.origin.y = v12;
    v47.size.width = v14;
    v47.size.height = v16;
    v32 = CGRectGetMinY(v47) + v31;
    v33 = v30 + floor(v25) * v42;
    v34 = v32 + floor(v26) * v23;
  }

  else
  {
    v35 = width + v19;
    v48.origin.x = v10;
    v48.origin.y = v12;
    v48.size.width = v14;
    v48.size.height = v16;
    v36 = floor((CGRectGetWidth(v48) - -(v19 - v8 * v35)) * 0.5);
    v49.origin.x = v10;
    v49.origin.y = v12;
    v49.size.width = v14;
    v49.size.height = v16;
    v37 = CGRectGetMinX(v49) + v36;
    v50.origin.x = v10;
    v50.origin.y = v12;
    v50.size.width = v14;
    v50.size.height = v16;
    v38 = floor((CGRectGetHeight(v50) - height) * 0.5);
    v51.origin.x = v10;
    v51.origin.y = v12;
    v51.size.width = v14;
    v51.size.height = v16;
    v34 = CGRectGetMinY(v51) + v38;
    v39 = floor(v35);
    v40 = 0.0;
    if (v8)
    {
      v40 = (v17 % v8);
    }

    v33 = v37 + v39 * v40;
  }

  result.y = v34;
  result.x = v33;
  return result;
}

- (CGPoint)p_drawerPositionForPlacard:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  if ([a3 contentStorage])
  {
    [(THWReviewImageWithTargetsLayout *)self p_drawerPositionForTextPlacard:a3 withSize:width, height];
  }

  else if ([a3 contentImage])
  {
    [(THWReviewImageWithTargetsLayout *)self p_drawerPositionForImagePlacard:a3 withSize:width, height];
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  result.y = y;
  result.x = x;
  return result;
}

- (id)p_responseController
{
  objc_opt_class();
  [objc_msgSend(-[THWReviewImageWithTargetsLayout layoutController](self "layoutController")];

  return TSUDynamicCast();
}

- (CGPoint)draggablePlacardLayout:(id)a3 originForSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = [(THWReviewImageWithTargetsLayout *)self question];
  v9 = [(THWReviewImageWithTargetsLayout *)self p_responseController];
  v10 = [v9 newTemporateReviewResponseMOC];
  v11 = [v9 responseForQuestionID:-[THWReviewQuestion questionID](v8 temporaryMOC:{"questionID"), v10}];
  objc_opt_class();
  [v11 answerState];
  v12 = TSUDynamicCast();
  if (!v12 || (v13 = [v12 targetForPlacard:{objc_msgSend(a3, "index")}], v13 == 0x7FFFFFFFFFFFFFFFLL))
  {
    [(THWReviewImageWithTargetsLayout *)self p_drawerPositionForPlacard:a3 withSize:width, height];
    x = v14;
    y = v16;
    goto LABEL_4;
  }

  v20 = v13;
  x = CGPointZero.x;
  y = CGPointZero.y;
  [(THWReviewImageWithTargetsLayout *)self p_positionForTargetAtIndex:v13];
  v22 = v21;
  v24 = v23;
  v25 = [(THWReviewQuestion *)[(THWReviewImageWithTargetsLayout *)self question] choiceAtIndex:v20];
  v26 = [v25 placardPlacement];
  if (v26 > 1)
  {
    switch(v26)
    {
      case 2:
        x = v22 + 33.0;
        break;
      case 3:
        x = v22 + width * -0.5;
        v27 = 33.0;
        goto LABEL_16;
      case 4:
        x = v22 - width + -33.0;
        break;
      default:
        goto LABEL_4;
    }

    v27 = height * -0.5;
LABEL_16:
    y = v24 + v27;
    goto LABEL_4;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      x = v22 + width * -0.5;
      y = v24 - height + -33.0;
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

LABEL_4:

  v18 = x;
  v19 = y;
  result.y = v19;
  result.x = v18;
  return result;
}

- (UIEdgeInsets)draggablePlacardLayoutInsets:(id)a3
{
  v3 = 5.0;
  v4 = 5.0;
  v5 = 5.0;
  v6 = 5.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)draggablePlacardLayoutTextInsets:(id)a3
{
  v3 = 5.0;
  v4 = 15.0;
  v5 = 5.0;
  v6 = 15.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)draggablePlacardLayoutTextMaxWidth:(id)a3
{
  v5 = [(THWReviewQuestionLayoutDelegate *)self->_delegate questionLayoutMode:self];
  v6 = [a3 placement];
  if (v6)
  {
    v7 = v6 == 2 || v5 == 0;
    result = 80.0;
    if (v7)
    {
      return 185.0;
    }
  }

  else
  {
    [(THWReviewImageWithTargetsLayout *)self placardTextSize];
  }

  return result;
}

- (double)p_placardImagePadding
{
  v3 = [(THWReviewQuestionLayoutDelegate *)self->_delegate questionLayoutMode:self];
  result = 9.0;
  if (!v3)
  {
    v5 = [(NSArray *)[(THWReviewQuestion *)[(THWReviewImageWithTargetsLayout *)self question] choices] count];
    result = 9.0;
    if (v5 < 5)
    {
      return 14.0;
    }
  }

  return result;
}

- (CGSize)p_placardImageSize
{
  if ([(THWReviewQuestionLayoutDelegate *)self->_delegate questionLayoutMode:self])
  {
    v3 = 43.0;
  }

  else
  {
    v4 = [(NSArray *)[(THWReviewQuestion *)[(THWReviewImageWithTargetsLayout *)self question] choices] count];
    v3 = 43.0;
    if (v4 < 5)
    {
      v3 = 58.0;
    }
  }

  v5 = v3;
  result.height = v5;
  result.width = v3;
  return result;
}

- (double)p_placardHorzPadding
{
  v2 = [(THWReviewQuestionLayoutDelegate *)self->_delegate questionLayoutMode:self];
  result = 15.0;
  if (v2 == &dword_0 + 2)
  {
    return 10.0;
  }

  return result;
}

- (double)p_placardVertPadding
{
  v2 = [(THWReviewQuestionLayoutDelegate *)self->_delegate questionLayoutMode:self];
  result = 15.0;
  if (v2 == &dword_0 + 2)
  {
    return 10.0;
  }

  return result;
}

- (void)p_setupPlacardLayouts
{
  if (!self->_placardLayouts || !self->_targetLayouts)
  {
    v3 = [(THWReviewQuestion *)[(THWReviewImageWithTargetsLayout *)self question] choices];
    v4 = [(NSArray *)v3 count];

    self->_placardLayouts = [[NSMutableArray alloc] initWithCapacity:v4];
    self->_targetLayouts = [[NSMutableArray alloc] initWithCapacity:v4];
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = [(NSArray *)v3 objectAtIndex:i];
        v7 = [[THWReviewDraggablePlacardLayout alloc] initWithIndex:i choice:v6 delegate:self];
        v8 = [v6 contentType];
        if ([v8 isEqualToString:TSWReviewChoiceDescriptionContentTypeTextValue])
        {
          -[THWReviewDraggablePlacardLayout setContentStorage:](v7, "setContentStorage:", [v6 contentStorage]);
        }

        else if ([v8 isEqualToString:TSWReviewChoiceDescriptionContentTypeImageValue])
        {
          -[THWReviewDraggablePlacardLayout setContentImage:](v7, "setContentImage:", [v6 contentImage]);
        }

        [(NSMutableArray *)self->_placardLayouts addObject:v7];

        v9 = [[THWReviewDragTargetLayout alloc] initWithIndex:i];
        [(NSMutableArray *)self->_targetLayouts addObject:v9];
      }
    }

    [(THWReviewImageWithTargetsLayout *)self updatePlacardLayouts];
  }
}

@end
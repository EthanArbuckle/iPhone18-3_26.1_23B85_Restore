@interface TUIAnchorSet
- (CGPoint)proposeAnchorOffsetWithScrollView:(id)a3 velocity:(CGPoint)a4 target:(CGPoint)a5;
- (TUIAnchorSet)initWithAnchorSet:(id)a3;
- (TUIAnchorSet)initWithAxis:(unint64_t)a3;
- (double)offsetForTriggerWithName:(id)a3 inScrollView:(id)a4;
- (id).cxx_construct;
- (id)computeTriggerStatesInScrollView:(id)a3 axis:(unint64_t)a4;
- (id)feedNotVisibleTriggerStatesForAxis:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)plainHorizontalTriggerAnchors;
- (id)plainScrollAnchors;
- (id)plainVerticalTriggerAnchors;
- (id)scrollAnchorWithScrollView:(id)a3 offset:(CGPoint)a4;
- (void)appendTriggerAnchorsToSet:(id)a3 forAxis:(unint64_t)a4;
@end

@implementation TUIAnchorSet

- (TUIAnchorSet)initWithAxis:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = TUIAnchorSet;
  result = [(TUIAnchorSet *)&v5 init];
  if (result)
  {
    result->_axis = a3;
  }

  return result;
}

- (TUIAnchorSet)initWithAnchorSet:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TUIAnchorSet;
  v5 = [(TUIAnchorSet *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_axis = 0;
    if (v4)
    {
      v5->_axis = v4->_axis;
      if (v5 != v4)
      {
        sub_966D4(&v5->_scrollAnchors.__begin_, v4->_scrollAnchors.__begin_, v4->_scrollAnchors.__end_, v4->_scrollAnchors.__end_ - v4->_scrollAnchors.__begin_);
        sub_1412B0(&v6->_logicalScrollAnchors, v4->_logicalScrollAnchors.__begin_, v4->_logicalScrollAnchors.__end_, (v4->_logicalScrollAnchors.__end_ - v4->_logicalScrollAnchors.__begin_) >> 4);
        sub_1412B0(&v6->_verticalTriggerAnchors, v4->_verticalTriggerAnchors.__begin_, v4->_verticalTriggerAnchors.__end_, (v4->_verticalTriggerAnchors.__end_ - v4->_verticalTriggerAnchors.__begin_) >> 4);
        sub_1412B0(&v6->_horizontalTriggerAnchors, v4->_horizontalTriggerAnchors.__begin_, v4->_horizontalTriggerAnchors.__end_, (v4->_horizontalTriggerAnchors.__end_ - v4->_horizontalTriggerAnchors.__begin_) >> 4);
      }
    }
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TUIMutableAnchorSet alloc];

  return [(TUIAnchorSet *)v4 initWithAnchorSet:self];
}

- (CGPoint)proposeAnchorOffsetWithScrollView:(id)a3 velocity:(CGPoint)a4 target:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = a3;
  [v8 contentInset];
  v11 = v9;
  v12 = v10;
  v14 = v13;
  v16 = v15;
  v60 = y + v9;
  v61 = x + v10;
  if (self->_axis == 1)
  {
    v17 = x + v10;
  }

  else
  {
    v17 = y + v9;
  }

  [v8 contentSize];
  v62 = v18;
  v20 = v19;
  [v8 bounds];
  v23 = v22;
  axis = self->_axis;
  if (axis == 1)
  {
    v25 = v21;
    v26 = [v8 effectiveUserInterfaceLayoutDirection];
    v27 = v25 - (v12 + v16);
    axis = self->_axis;
    v28 = axis == 1;
    v29 = v26 == &dword_0 + 1;
    v30 = v62 - v17;
    if (v26 == &dword_0 + 1)
    {
      v31 = v62 - v17;
    }

    else
    {
      v31 = v17;
    }

    if (v26 != &dword_0 + 1 && axis == 1)
    {
      if (v17 == 0.0 || v17 == v62 - v27)
      {
        goto LABEL_79;
      }

      v29 = 0;
      v17 = v31;
      goto LABEL_30;
    }

    if (v26 == &dword_0 + 1 && axis == 1)
    {
      if (v30 == v27 || v30 == v62)
      {
        goto LABEL_78;
      }

      v28 = 1;
      v17 = v31;
      v29 = 1;
      goto LABEL_30;
    }

    v17 = v31;
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  if (axis == 2 && (v17 == 0.0 || v17 == v20 - (v23 - (v11 + v14))))
  {
    goto LABEL_77;
  }

LABEL_30:
  begin = self->_scrollAnchors.__begin_;
  end = self->_scrollAnchors.__end_;
  v37 = end - begin;
  if (!v37)
  {
    goto LABEL_77;
  }

  if (v37 == 1)
  {
    v30 = *begin;
    goto LABEL_74;
  }

  v38 = v61;
  if (v28)
  {
    v39 = a4.x;
  }

  else
  {
    v38 = v60;
    v39 = a4.y;
  }

  if (v29)
  {
    v40 = v62 - v38;
  }

  else
  {
    v40 = v38;
  }

  if (v29)
  {
    v41 = -v39;
  }

  else
  {
    v41 = v39;
  }

  if (end == begin)
  {
    v42 = self->_scrollAnchors.__end_;
  }

  else
  {
    v42 = self->_scrollAnchors.__begin_;
    do
    {
      v43 = v37 >> 1;
      v44 = &v42[v37 >> 1];
      v46 = *v44;
      v45 = v44 + 1;
      v38 = v46;
      v37 += ~(v37 >> 1);
      if (v46 < v40)
      {
        v42 = v45;
      }

      else
      {
        v37 = v43;
      }
    }

    while (v37);
  }

  if (end == v42)
  {
    v30 = *(end - 1);
    goto LABEL_74;
  }

  if (begin == v42)
  {
    v30 = *v42;
    goto LABEL_74;
  }

  v47 = *(v42 - 1);
  v17 = *v42;
  if (v28)
  {
    [v8 contentSize];
    v49 = v48;
  }

  else
  {
    [v8 contentSize];
    v49 = v50;
  }

  if (self->_axis == 1)
  {
    [v8 contentOffset];
  }

  else
  {
    [v8 contentOffset];
    v51 = v52;
  }

  if (v41 > 0.0 || v51 + v41 * 1000.0 > v49)
  {
LABEL_77:
    v30 = v17;
    v31 = v17;
    if (!v29)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if (v41 >= 0.0 && v17 > v49 && v40 == v49)
  {
    v17 = v40;
    goto LABEL_77;
  }

  if (v39 != 0.0)
  {
    v17 = v47;
    goto LABEL_77;
  }

  if (v40 <= (v47 + v17) * 0.5)
  {
    v30 = v47;
  }

  else
  {
    v30 = v17;
  }

LABEL_74:
  v31 = v30;
  if (v29)
  {
LABEL_78:
    v31 = v62 - v30;
  }

LABEL_79:
  v54 = v61;
  if (self->_axis == 1)
  {
    v54 = v31;
    v31 = v60;
  }

  v55 = v54 - v12;
  v56 = v31 - v11;

  v57 = v55;
  v58 = v56;
  result.y = v58;
  result.x = v57;
  return result;
}

- (id)scrollAnchorWithScrollView:(id)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = v7;
  if (self->_axis == 1)
  {
    v9 = x;
  }

  else
  {
    v9 = y;
  }

  [v7 contentSize];
  v11 = v10;
  v13 = v12;
  [v8 contentScaleFactor];
  v15 = TUISizeRoundedForScale(v11, v13, v14);
  v17 = v16;
  [v8 bounds];
  axis = self->_axis;
  if (axis == 1)
  {
    v17 = v15;
    v21 = v18;
  }

  else
  {
    v21 = v19;
  }

  if (axis == 1 && [v8 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1)
  {
    v9 = v15 - v9;
  }

  begin = self->_logicalScrollAnchors.__begin_;
  if (begin == self->_logicalScrollAnchors.__end_)
  {
    goto LABEL_35;
  }

  v23 = 0;
  v24 = v21 + v9;
  v25 = v9 + v21 * 0.5;
  v36 = 0.0;
  v26 = 1.79769313e308;
  while (1)
  {
    v27 = [begin[1] position];
    if (v9 <= 0.0 && v27 == 0)
    {
      if (v9 <= *begin)
      {
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    if (v24 >= v17 && v27 == &dword_0 + 1)
    {
      break;
    }

    if (v27 == &dword_0 + 2)
    {
      v30 = *begin;
      v31 = vabdd_f64(*begin, v25);
      if (v31 < v26)
      {
        v32 = begin[1];

        if (v21 <= 0.0)
        {
          v33 = 0.0;
        }

        else
        {
          v33 = (v30 - v25 + v30 - v25) / v21;
        }

        v36 = v33;
        goto LABEL_28;
      }
    }

LABEL_27:
    v32 = v23;
    v31 = v26;
LABEL_28:
    begin += 2;
    v26 = v31;
    v23 = v32;
    if (begin == self->_logicalScrollAnchors.__end_)
    {
      goto LABEL_33;
    }
  }

  if (v24 < *begin)
  {
    goto LABEL_27;
  }

LABEL_32:
  v32 = begin[1];

  v36 = 0.0;
LABEL_33:
  if (v32)
  {
    v34 = [[TUIScrollAnchor alloc] initWithAnchor:v32 relativeDistance:v36];

    goto LABEL_36;
  }

LABEL_35:
  v34 = 0;
LABEL_36:

  return v34;
}

- (id)feedNotVisibleTriggerStatesForAxis:(unint64_t)a3
{
  v5 = objc_alloc_init(TUIMutableTriggerStateUpdate);
  v6 = 32;
  if (a3 == 1)
  {
    v6 = 56;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_141580(&v11, *(&self->super.isa + v6), *(&self->_scrollAnchors.__begin_ + v6), (*(&self->_scrollAnchors.__begin_ + v6) - *(&self->super.isa + v6)) >> 4);
  for (i = v11; i != v12; i += 16)
  {
    v8 = *(i + 8);
    [(TUIMutableTriggerStateUpdate *)v5 addUpdateForTrigger:v8 state:4];
  }

  v9 = [[TUITriggerStateUpdate alloc] initWithTriggerStateUpdate:v5];
  v14 = &v11;
  sub_141610(&v14);

  return v9;
}

- (id)computeTriggerStatesInScrollView:(id)a3 axis:(unint64_t)a4
{
  v6 = a3;
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if ([v6 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1)
  {
    [v6 contentSize];
    v16 = v15;
    v32.origin.x = v8;
    v32.origin.y = v10;
    v32.size.width = v12;
    v32.size.height = v14;
    v8 = v16 - CGRectGetMinX(v32) - v12;
  }

  if (a4 == 1)
  {
    v10 = v8;
  }

  else
  {
    v12 = v14;
  }

  v17 = objc_alloc_init(TUIMutableTriggerStateUpdate);
  v18 = 32;
  if (a4 == 1)
  {
    v18 = 56;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  sub_141580(&v27, *(&self->super.isa + v18), *(&self->_scrollAnchors.__begin_ + v18), (*(&self->_scrollAnchors.__begin_ + v18) - *(&self->super.isa + v18)) >> 4);
  for (i = v27; i != v28; i += 16)
  {
    v20 = *i;
    v21 = *(i + 8);
    v22 = v20 - v10;
    if (v22 >= v12)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 0.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 3;
    }

    [(TUIMutableTriggerStateUpdate *)v17 addUpdateForTrigger:v21 state:v24];
    if ([v21 observationMode] == &dword_0 + 3)
    {
      [(TUIMutableTriggerStateUpdate *)v17 addUpdateForTrigger:v21 value:v22 / v12];
    }
  }

  v25 = [[TUITriggerStateUpdate alloc] initWithTriggerStateUpdate:v17];
  v30 = &v27;
  sub_141610(&v30);

  return v25;
}

- (double)offsetForTriggerWithName:(id)a3 inScrollView:(id)a4
{
  v6 = a3;
  v7 = a4;
  for (i = self->_verticalTriggerAnchors.__begin_; i != self->_verticalTriggerAnchors.__end_; i += 2)
  {
    v9 = *i;
    v10 = i[1];
    v11 = [v10 name];
    v12 = [v11 isEqualToString:v6];

    if (v12)
    {
      goto LABEL_6;
    }
  }

  v9 = NAN;
LABEL_6:

  return v9;
}

- (void)appendTriggerAnchorsToSet:(id)a3 forAxis:(unint64_t)a4
{
  v6 = a3;
  v7 = 32;
  if (a4 == 1)
  {
    v7 = 56;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_141580(&v11, *(&self->super.isa + v7), *(&self->_scrollAnchors.__begin_ + v7), (*(&self->_scrollAnchors.__begin_ + v7) - *(&self->super.isa + v7)) >> 4);
  for (i = v11; i != v12; i += 16)
  {
    v9 = *i;
    v10 = *(i + 8);
    [v6 appendTriggerAnchorWithOffset:v10 trigger:a4 axis:v9];
  }

  v14 = &v11;
  sub_141610(&v14);
}

- (id)plainScrollAnchors
{
  v3 = objc_alloc_init(NSMutableArray);
  for (i = self->_scrollAnchors.__begin_; i != self->_scrollAnchors.__end_; ++i)
  {
    v5 = [NSNumber numberWithDouble:*i];
    [v3 addObject:v5];
  }

  v6 = [v3 copy];

  return v6;
}

- (id)plainVerticalTriggerAnchors
{
  v3 = objc_alloc_init(NSMutableArray);
  for (i = self->_verticalTriggerAnchors.__begin_; i != self->_verticalTriggerAnchors.__end_; i += 2)
  {
    v5 = [NSNumber numberWithDouble:*i];
    [v3 addObject:v5];
  }

  v6 = [v3 copy];

  return v6;
}

- (id)plainHorizontalTriggerAnchors
{
  v3 = objc_alloc_init(NSMutableArray);
  for (i = self->_horizontalTriggerAnchors.__begin_; i != self->_horizontalTriggerAnchors.__end_; i += 2)
  {
    v5 = [NSNumber numberWithDouble:*i];
    [v3 addObject:v5];
  }

  v6 = [v3 copy];

  return v6;
}

- (id).cxx_construct
{
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end
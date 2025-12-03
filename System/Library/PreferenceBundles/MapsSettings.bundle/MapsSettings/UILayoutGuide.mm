@interface UILayoutGuide
- (id)_maps_constraintsEqualToEdges:(unint64_t)edges ofLayoutGuide:(id)guide priority:(float)priority;
- (id)_maps_constraintsEqualToEdges:(unint64_t)edges ofView:(id)view priority:(float)priority;
- (id)_maps_flexibleConstraintsForLayoutGuide:(id)guide insideEdges:(unint64_t)edges withFillingPriority:(float)priority;
- (id)_maps_flexibleLayoutGuideInsideEdges:(unint64_t)edges withFillingPriority:(float)priority;
- (id)_maps_layoutGuidePinnedToEdgesWithRelation:(int64_t)relation withPriority:(float)priority;
@end

@implementation UILayoutGuide

- (id)_maps_flexibleLayoutGuideInsideEdges:(unint64_t)edges withFillingPriority:(float)priority
{
  owningView = [(UILayoutGuide *)self owningView];
  if (owningView)
  {
    v8 = objc_alloc_init(UILayoutGuide);
    [owningView addLayoutGuide:v8];
    *&v9 = priority;
    v10 = [(UILayoutGuide *)self _maps_flexibleConstraintsForLayoutGuide:v8 insideEdges:edges withFillingPriority:v9];
    [NSLayoutConstraint activateConstraints:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_maps_flexibleConstraintsForLayoutGuide:(id)guide insideEdges:(unint64_t)edges withFillingPriority:(float)priority
{
  guideCopy = guide;
  if (edges)
  {
    v9 = objc_alloc_init(NSMutableArray);
    if (priority >= 1000.0)
    {
      sub_3B3D0();
    }

    LODWORD(v10) = 1148829696;
    if (priority <= 999.0)
    {
      *&v10 = priority;
    }

    v11 = [guideCopy _maps_constraintsEqualToEdges:edges ofLayoutGuide:self priority:v10];
    allConstraints = [v11 allConstraints];
    [v9 addObjectsFromArray:allConstraints];

    if (edges)
    {
      topAnchor = [guideCopy topAnchor];
      topAnchor2 = [(UILayoutGuide *)self topAnchor];
      v20 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
      [v9 addObject:v20];

      if ((edges & 2) == 0)
      {
LABEL_8:
        if ((edges & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }
    }

    else if ((edges & 2) == 0)
    {
      goto LABEL_8;
    }

    leadingAnchor = [guideCopy leadingAnchor];
    leadingAnchor2 = [(UILayoutGuide *)self leadingAnchor];
    v23 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    [v9 addObject:v23];

    if ((edges & 4) == 0)
    {
LABEL_9:
      if ((edges & 8) == 0)
      {
LABEL_11:
        v16 = [v9 copy];

        goto LABEL_13;
      }

LABEL_10:
      trailingAnchor = [(UILayoutGuide *)self trailingAnchor];
      trailingAnchor2 = [guideCopy trailingAnchor];
      v15 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
      [v9 addObject:v15];

      goto LABEL_11;
    }

LABEL_18:
    bottomAnchor = [(UILayoutGuide *)self bottomAnchor];
    bottomAnchor2 = [guideCopy bottomAnchor];
    v26 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
    [v9 addObject:v26];

    if ((edges & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v16 = &__NSArray0__struct;
LABEL_13:

  return v16;
}

- (id)_maps_layoutGuidePinnedToEdgesWithRelation:(int64_t)relation withPriority:(float)priority
{
  owningView = [(UILayoutGuide *)self owningView];
  if (owningView)
  {
    v7 = objc_alloc_init(UILayoutGuide);
    [owningView addLayoutGuide:v7];
    topAnchor = [(UILayoutGuide *)self topAnchor];
    topAnchor2 = [v7 topAnchor];
    *&v8 = priority;
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0 priority:v8];
    v26[0] = v23;
    leadingAnchor = [(UILayoutGuide *)self leadingAnchor];
    leadingAnchor2 = [v7 leadingAnchor];
    *&v9 = priority;
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0 priority:v9];
    v26[1] = v10;
    bottomAnchor = [v7 bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self bottomAnchor];
    *&v13 = priority;
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0 priority:v13];
    v26[2] = v14;
    trailingAnchor = [v7 trailingAnchor];
    trailingAnchor2 = [(UILayoutGuide *)self trailingAnchor];
    *&v17 = priority;
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0 priority:v17];
    v26[3] = v18;
    v19 = [NSArray arrayWithObjects:v26 count:4];
    [NSLayoutConstraint activateConstraints:v19];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_maps_constraintsEqualToEdges:(unint64_t)edges ofView:(id)view priority:(float)priority
{
  edgesCopy = edges;
  viewCopy = view;
  if (!viewCopy)
  {
    v22 = 0;
    goto LABEL_17;
  }

  if (edgesCopy)
  {
    topAnchor = [(UILayoutGuide *)self topAnchor];
    topAnchor2 = [viewCopy topAnchor];
    v30 = topAnchor;
    *&v24 = priority;
    v10 = [topAnchor constraintEqualToAnchor:0.0 constant:v24 priority:?];
    if ((edgesCopy & 2) != 0)
    {
LABEL_4:
      leadingAnchor = [(UILayoutGuide *)self leadingAnchor];
      leadingAnchor2 = [viewCopy leadingAnchor];
      v28 = leadingAnchor;
      *&v12 = priority;
      v13 = [leadingAnchor constraintEqualToAnchor:0.0 constant:v12 priority:?];
      if ((edgesCopy & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
    if ((edgesCopy & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  v13 = 0;
  if ((edgesCopy & 4) != 0)
  {
LABEL_5:
    bottomAnchor = [viewCopy bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self bottomAnchor];
    v26 = bottomAnchor;
    *&v15 = priority;
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0 priority:v15];
    if ((edgesCopy & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v22 = [MapsEdgeConstraints edgeConstraintsWithTop:v10 leading:v13 bottom:v16 trailing:0];
    if ((edgesCopy & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  v16 = 0;
  if ((edgesCopy & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [(UILayoutGuide *)self trailingAnchor];
  *&v19 = priority;
  [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0 priority:v19];
  v21 = v20 = v10;
  v22 = [MapsEdgeConstraints edgeConstraintsWithTop:v20 leading:v13 bottom:v16 trailing:v21];

  v10 = v20;
  if ((edgesCopy & 4) != 0)
  {
LABEL_13:
  }

LABEL_14:
  if ((edgesCopy & 2) == 0)
  {
    if ((edgesCopy & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (edgesCopy)
  {
LABEL_16:
  }

LABEL_17:

  return v22;
}

- (id)_maps_constraintsEqualToEdges:(unint64_t)edges ofLayoutGuide:(id)guide priority:(float)priority
{
  edgesCopy = edges;
  guideCopy = guide;
  if (!guideCopy)
  {
    v22 = 0;
    goto LABEL_17;
  }

  if (edgesCopy)
  {
    topAnchor = [(UILayoutGuide *)self topAnchor];
    topAnchor2 = [guideCopy topAnchor];
    v30 = topAnchor;
    *&v24 = priority;
    v10 = [topAnchor constraintEqualToAnchor:0.0 constant:v24 priority:?];
    if ((edgesCopy & 2) != 0)
    {
LABEL_4:
      leadingAnchor = [(UILayoutGuide *)self leadingAnchor];
      leadingAnchor2 = [guideCopy leadingAnchor];
      v28 = leadingAnchor;
      *&v12 = priority;
      v13 = [leadingAnchor constraintEqualToAnchor:0.0 constant:v12 priority:?];
      if ((edgesCopy & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
    if ((edgesCopy & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  v13 = 0;
  if ((edgesCopy & 4) != 0)
  {
LABEL_5:
    bottomAnchor = [guideCopy bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self bottomAnchor];
    v26 = bottomAnchor;
    *&v15 = priority;
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0 priority:v15];
    if ((edgesCopy & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v22 = [MapsEdgeConstraints edgeConstraintsWithTop:v10 leading:v13 bottom:v16 trailing:0];
    if ((edgesCopy & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  v16 = 0;
  if ((edgesCopy & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  trailingAnchor = [guideCopy trailingAnchor];
  trailingAnchor2 = [(UILayoutGuide *)self trailingAnchor];
  *&v19 = priority;
  [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0 priority:v19];
  v21 = v20 = v10;
  v22 = [MapsEdgeConstraints edgeConstraintsWithTop:v20 leading:v13 bottom:v16 trailing:v21];

  v10 = v20;
  if ((edgesCopy & 4) != 0)
  {
LABEL_13:
  }

LABEL_14:
  if ((edgesCopy & 2) == 0)
  {
    if ((edgesCopy & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (edgesCopy)
  {
LABEL_16:
  }

LABEL_17:

  return v22;
}

@end
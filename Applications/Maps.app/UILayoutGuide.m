@interface UILayoutGuide
- (NSLayoutXAxisAnchor)_maps_leftRHDAnchor;
- (NSLayoutXAxisAnchor)_maps_rightRHDAnchor;
- (id)_maps_constraintsEqualToEdges:(unint64_t)a3 ofLayoutGuide:(id)a4 priority:(float)a5;
- (id)_maps_constraintsEqualToEdges:(unint64_t)a3 ofView:(id)a4 priority:(float)a5;
- (id)_maps_flexibleConstraintsForLayoutGuide:(id)a3 insideEdges:(unint64_t)a4 withFillingPriority:(float)a5;
- (id)_maps_flexibleLayoutGuideInsideEdges:(unint64_t)a3 withFillingPriority:(float)a4;
- (id)_maps_layoutGuidePinnedToEdgesWithRelation:(int64_t)a3 withPriority:(float)a4;
@end

@implementation UILayoutGuide

- (NSLayoutXAxisAnchor)_maps_rightRHDAnchor
{
  v3 = [(UILayoutGuide *)self owningView];
  v4 = [v3 window];
  if ([v4 _car_isHybridInstrumentCluster])
  {
    v5 = [(UILayoutGuide *)self owningView];
    v6 = [v5 window];
    v7 = [v6 _car_hybridInstrumentClusterAlignment] == 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = +[MapsExternalDevice sharedInstance];
  v9 = [v8 rightHandDrive];

  if ((v9 & 1) != 0 || v7)
  {
    v10 = [(UILayoutGuide *)self leftAnchor];
  }

  else
  {
    v10 = [(UILayoutGuide *)self rightAnchor];
  }

  return v10;
}

- (id)_maps_constraintsEqualToEdges:(unint64_t)a3 ofLayoutGuide:(id)a4 priority:(float)a5
{
  v7 = a3;
  v9 = a4;
  if (!v9)
  {
    v22 = 0;
    goto LABEL_17;
  }

  if (v7)
  {
    v23 = [(UILayoutGuide *)self topAnchor];
    v29 = [v9 topAnchor];
    v30 = v23;
    *&v24 = a5;
    v10 = [v23 constraintEqualToAnchor:0.0 constant:v24 priority:?];
    if ((v7 & 2) != 0)
    {
LABEL_4:
      v11 = [(UILayoutGuide *)self leadingAnchor];
      v27 = [v9 leadingAnchor];
      v28 = v11;
      *&v12 = a5;
      v13 = [v11 constraintEqualToAnchor:0.0 constant:v12 priority:?];
      if ((v7 & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
    if ((v7 & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  v13 = 0;
  if ((v7 & 4) != 0)
  {
LABEL_5:
    v14 = [v9 bottomAnchor];
    v5 = [(UILayoutGuide *)self bottomAnchor];
    v26 = v14;
    *&v15 = a5;
    v16 = [v14 constraintEqualToAnchor:v5 constant:0.0 priority:v15];
    if ((v7 & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v22 = [MapsEdgeConstraints edgeConstraintsWithTop:v10 leading:v13 bottom:v16 trailing:0];
    if ((v7 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  v16 = 0;
  if ((v7 & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v17 = [v9 trailingAnchor];
  v18 = [(UILayoutGuide *)self trailingAnchor];
  *&v19 = a5;
  [v17 constraintEqualToAnchor:v18 constant:0.0 priority:v19];
  v21 = v20 = v10;
  v22 = [MapsEdgeConstraints edgeConstraintsWithTop:v20 leading:v13 bottom:v16 trailing:v21];

  v10 = v20;
  if ((v7 & 4) != 0)
  {
LABEL_13:
  }

LABEL_14:
  if ((v7 & 2) == 0)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v7)
  {
LABEL_16:
  }

LABEL_17:

  return v22;
}

- (id)_maps_constraintsEqualToEdges:(unint64_t)a3 ofView:(id)a4 priority:(float)a5
{
  v7 = a3;
  v9 = a4;
  if (!v9)
  {
    v22 = 0;
    goto LABEL_17;
  }

  if (v7)
  {
    v23 = [(UILayoutGuide *)self topAnchor];
    v29 = [v9 topAnchor];
    v30 = v23;
    *&v24 = a5;
    v10 = [v23 constraintEqualToAnchor:0.0 constant:v24 priority:?];
    if ((v7 & 2) != 0)
    {
LABEL_4:
      v11 = [(UILayoutGuide *)self leadingAnchor];
      v27 = [v9 leadingAnchor];
      v28 = v11;
      *&v12 = a5;
      v13 = [v11 constraintEqualToAnchor:0.0 constant:v12 priority:?];
      if ((v7 & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
    if ((v7 & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  v13 = 0;
  if ((v7 & 4) != 0)
  {
LABEL_5:
    v14 = [v9 bottomAnchor];
    v5 = [(UILayoutGuide *)self bottomAnchor];
    v26 = v14;
    *&v15 = a5;
    v16 = [v14 constraintEqualToAnchor:v5 constant:0.0 priority:v15];
    if ((v7 & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v22 = [MapsEdgeConstraints edgeConstraintsWithTop:v10 leading:v13 bottom:v16 trailing:0];
    if ((v7 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  v16 = 0;
  if ((v7 & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v17 = [v9 trailingAnchor];
  v18 = [(UILayoutGuide *)self trailingAnchor];
  *&v19 = a5;
  [v17 constraintEqualToAnchor:v18 constant:0.0 priority:v19];
  v21 = v20 = v10;
  v22 = [MapsEdgeConstraints edgeConstraintsWithTop:v20 leading:v13 bottom:v16 trailing:v21];

  v10 = v20;
  if ((v7 & 4) != 0)
  {
LABEL_13:
  }

LABEL_14:
  if ((v7 & 2) == 0)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v7)
  {
LABEL_16:
  }

LABEL_17:

  return v22;
}

- (id)_maps_layoutGuidePinnedToEdgesWithRelation:(int64_t)a3 withPriority:(float)a4
{
  v6 = [(UILayoutGuide *)self owningView];
  if (v6)
  {
    v7 = objc_alloc_init(UILayoutGuide);
    [v6 addLayoutGuide:v7];
    v25 = [(UILayoutGuide *)self topAnchor];
    v24 = [v7 topAnchor];
    *&v8 = a4;
    v23 = [v25 constraintEqualToAnchor:v24 constant:0.0 priority:v8];
    v26[0] = v23;
    v22 = [(UILayoutGuide *)self leadingAnchor];
    v21 = [v7 leadingAnchor];
    *&v9 = a4;
    v10 = [v22 constraintEqualToAnchor:v21 constant:0.0 priority:v9];
    v26[1] = v10;
    v11 = [v7 bottomAnchor];
    v12 = [(UILayoutGuide *)self bottomAnchor];
    *&v13 = a4;
    v14 = [v11 constraintEqualToAnchor:v12 constant:0.0 priority:v13];
    v26[2] = v14;
    v15 = [v7 trailingAnchor];
    v16 = [(UILayoutGuide *)self trailingAnchor];
    *&v17 = a4;
    v18 = [v15 constraintEqualToAnchor:v16 constant:0.0 priority:v17];
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

- (id)_maps_flexibleConstraintsForLayoutGuide:(id)a3 insideEdges:(unint64_t)a4 withFillingPriority:(float)a5
{
  v8 = a3;
  if (a4)
  {
    v9 = objc_alloc_init(NSMutableArray);
    if (a5 >= 1000.0)
    {
      v27 = sub_10006D178();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = [NSString stringWithFormat:@"fillingPriority Required is not supported and will be clamped to Required - 1"];
        v31 = 136316162;
        v32 = "[UILayoutGuide(UIKitExtras) _maps_flexibleConstraintsForLayoutGuide:insideEdges:withFillingPriority:]";
        v33 = 2080;
        v34 = "UIKitExtras.m";
        v35 = 1024;
        v36 = 815;
        v37 = 2080;
        v38 = "fillingPriority < UILayoutPriorityRequired";
        v39 = 2112;
        v40 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v31, 0x30u);
      }

      if (sub_100E03634())
      {
        v29 = sub_10006D178();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = +[NSThread callStackSymbols];
          v31 = 138412290;
          v32 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", &v31, 0xCu);
        }
      }
    }

    *&v10 = fminf(a5, 999.0);
    v11 = [v8 _maps_constraintsEqualToEdges:a4 ofLayoutGuide:self priority:v10];
    v12 = [v11 allConstraints];
    [v9 addObjectsFromArray:v12];

    if (a4)
    {
      v18 = [v8 topAnchor];
      v19 = [(UILayoutGuide *)self topAnchor];
      v20 = [v18 constraintGreaterThanOrEqualToAnchor:v19];
      [v9 addObject:v20];

      if ((a4 & 2) == 0)
      {
LABEL_5:
        if ((a4 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      }
    }

    else if ((a4 & 2) == 0)
    {
      goto LABEL_5;
    }

    v21 = [v8 leadingAnchor];
    v22 = [(UILayoutGuide *)self leadingAnchor];
    v23 = [v21 constraintGreaterThanOrEqualToAnchor:v22];
    [v9 addObject:v23];

    if ((a4 & 4) == 0)
    {
LABEL_6:
      if ((a4 & 8) == 0)
      {
LABEL_8:
        v16 = [v9 copy];

        goto LABEL_10;
      }

LABEL_7:
      v13 = [(UILayoutGuide *)self trailingAnchor];
      v14 = [v8 trailingAnchor];
      v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14];
      [v9 addObject:v15];

      goto LABEL_8;
    }

LABEL_15:
    v24 = [(UILayoutGuide *)self bottomAnchor];
    v25 = [v8 bottomAnchor];
    v26 = [v24 constraintGreaterThanOrEqualToAnchor:v25];
    [v9 addObject:v26];

    if ((a4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v16 = &__NSArray0__struct;
LABEL_10:

  return v16;
}

- (id)_maps_flexibleLayoutGuideInsideEdges:(unint64_t)a3 withFillingPriority:(float)a4
{
  v7 = [(UILayoutGuide *)self owningView];
  if (v7)
  {
    v8 = objc_alloc_init(UILayoutGuide);
    [v7 addLayoutGuide:v8];
    *&v9 = a4;
    v10 = [(UILayoutGuide *)self _maps_flexibleConstraintsForLayoutGuide:v8 insideEdges:a3 withFillingPriority:v9];
    [NSLayoutConstraint activateConstraints:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSLayoutXAxisAnchor)_maps_leftRHDAnchor
{
  v3 = [(UILayoutGuide *)self owningView];
  v4 = [v3 window];
  if ([v4 _car_isHybridInstrumentCluster])
  {
    v5 = [(UILayoutGuide *)self owningView];
    v6 = [v5 window];
    v7 = [v6 _car_hybridInstrumentClusterAlignment] == 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = +[MapsExternalDevice sharedInstance];
  v9 = [v8 rightHandDrive];

  if ((v9 & 1) != 0 || v7)
  {
    v10 = [(UILayoutGuide *)self rightAnchor];
  }

  else
  {
    v10 = [(UILayoutGuide *)self leftAnchor];
  }

  return v10;
}

@end
@interface CarFocusContainerGuideController
- (CarFocusContainerGuideController)initWithHostView:(id)view;
- (NSDictionary)focusContainerGuidesByEdge;
- (id)_addGuideForEdge:(unint64_t)edge;
- (void)setActiveEdges:(unint64_t)edges;
@end

@implementation CarFocusContainerGuideController

- (NSDictionary)focusContainerGuidesByEdge
{
  focusContainerGuidesByEdge = self->_focusContainerGuidesByEdge;
  if (!focusContainerGuidesByEdge)
  {
    v11[0] = &off_1016E8168;
    v4 = [(CarFocusContainerGuideController *)self _addGuideForEdge:1];
    v12[0] = v4;
    v11[1] = &off_1016E8180;
    v5 = [(CarFocusContainerGuideController *)self _addGuideForEdge:2];
    v12[1] = v5;
    v11[2] = &off_1016E8198;
    v6 = [(CarFocusContainerGuideController *)self _addGuideForEdge:8];
    v12[2] = v6;
    v11[3] = &off_1016E81B0;
    v7 = [(CarFocusContainerGuideController *)self _addGuideForEdge:4];
    v12[3] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
    v9 = self->_focusContainerGuidesByEdge;
    self->_focusContainerGuidesByEdge = v8;

    focusContainerGuidesByEdge = self->_focusContainerGuidesByEdge;
  }

  return focusContainerGuidesByEdge;
}

- (void)setActiveEdges:(unint64_t)edges
{
  if (self->_activeEdges != edges)
  {
    edgesCopy = edges;
    self->_activeEdges = edges;
    focusContainerGuidesByEdge = [(CarFocusContainerGuideController *)self focusContainerGuidesByEdge];
    v7 = [focusContainerGuidesByEdge objectForKeyedSubscript:&off_1016E8168];
    [v7 setEnabled:edgesCopy & 1];

    v8 = (self->_activeEdges >> 1) & 1;
    focusContainerGuidesByEdge2 = [(CarFocusContainerGuideController *)self focusContainerGuidesByEdge];
    v10 = [focusContainerGuidesByEdge2 objectForKeyedSubscript:&off_1016E8180];
    [v10 setEnabled:v8];

    v11 = (self->_activeEdges >> 3) & 1;
    focusContainerGuidesByEdge3 = [(CarFocusContainerGuideController *)self focusContainerGuidesByEdge];
    v13 = [focusContainerGuidesByEdge3 objectForKeyedSubscript:&off_1016E8198];
    [v13 setEnabled:v11];

    v14 = (self->_activeEdges >> 2) & 1;
    focusContainerGuidesByEdge4 = [(CarFocusContainerGuideController *)self focusContainerGuidesByEdge];
    v15 = [focusContainerGuidesByEdge4 objectForKeyedSubscript:&off_1016E81B0];
    [v15 setEnabled:v14];
  }
}

- (id)_addGuideForEdge:(unint64_t)edge
{
  v5 = objc_alloc_init(CarFocusContainerGuide);
  WeakRetained = objc_loadWeakRetained(&self->_hostView);
  [WeakRetained addLayoutGuide:v5];

  v7 = objc_loadWeakRetained(&self->_hostView);
  safeAreaLayoutGuide = [v7 safeAreaLayoutGuide];

  v9 = +[NSMutableArray array];
  if (edge > 3)
  {
    if (edge == 4)
    {
      leftAnchor = [(CarFocusContainerGuide *)v5 leftAnchor];
      leftAnchor2 = [safeAreaLayoutGuide leftAnchor];
      v33 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v38[0] = v33;
      rightAnchor = [(CarFocusContainerGuide *)v5 rightAnchor];
      rightAnchor2 = [safeAreaLayoutGuide rightAnchor];
      v30 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      v38[1] = v30;
      bottomAnchor = [(CarFocusContainerGuide *)v5 bottomAnchor];
      bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
      v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v38[2] = v12;
      heightAnchor = [(CarFocusContainerGuide *)v5 heightAnchor];
      v14 = [heightAnchor constraintEqualToConstant:30.0];
      v38[3] = v14;
      v15 = v38;
      goto LABEL_12;
    }

    if (edge == 8)
    {
      leftAnchor = [(CarFocusContainerGuide *)v5 topAnchor];
      leftAnchor2 = [safeAreaLayoutGuide topAnchor];
      v33 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v39[0] = v33;
      rightAnchor = [(CarFocusContainerGuide *)v5 rightAnchor];
      rightAnchor2 = [safeAreaLayoutGuide rightAnchor];
      v30 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      v39[1] = v30;
      bottomAnchor = [(CarFocusContainerGuide *)v5 bottomAnchor];
      bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
      v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v39[2] = v12;
      heightAnchor = [(CarFocusContainerGuide *)v5 widthAnchor];
      v14 = [heightAnchor constraintEqualToConstant:30.0];
      v39[3] = v14;
      v15 = v39;
      goto LABEL_12;
    }
  }

  else
  {
    if (edge == 1)
    {
      topAnchor = [(CarFocusContainerGuide *)v5 topAnchor];
      leftAnchor2 = [safeAreaLayoutGuide topAnchor];
      v33 = [topAnchor constraintEqualToAnchor:leftAnchor2];
      v41[0] = v33;
      rightAnchor = [(CarFocusContainerGuide *)v5 leftAnchor];
      rightAnchor2 = [safeAreaLayoutGuide leftAnchor];
      v30 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      v41[1] = v30;
      bottomAnchor = [(CarFocusContainerGuide *)v5 rightAnchor];
      bottomAnchor2 = [safeAreaLayoutGuide rightAnchor];
      v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v41[2] = v17;
      heightAnchor2 = [(CarFocusContainerGuide *)v5 heightAnchor];
      v19 = [heightAnchor2 constraintEqualToConstant:30.0];
      v41[3] = v19;
      v20 = [NSArray arrayWithObjects:v41 count:4];
      [v9 addObjectsFromArray:v20];

      v16 = topAnchor;
LABEL_13:

      goto LABEL_14;
    }

    if (edge == 2)
    {
      leftAnchor = [(CarFocusContainerGuide *)v5 topAnchor];
      leftAnchor2 = [safeAreaLayoutGuide topAnchor];
      v33 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v40[0] = v33;
      rightAnchor = [(CarFocusContainerGuide *)v5 leftAnchor];
      rightAnchor2 = [safeAreaLayoutGuide leftAnchor];
      v30 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      v40[1] = v30;
      bottomAnchor = [(CarFocusContainerGuide *)v5 bottomAnchor];
      bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
      v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v40[2] = v12;
      heightAnchor = [(CarFocusContainerGuide *)v5 widthAnchor];
      v14 = [heightAnchor constraintEqualToConstant:30.0];
      v40[3] = v14;
      v15 = v40;
LABEL_12:
      v21 = [NSArray arrayWithObjects:v15 count:4];
      [v9 addObjectsFromArray:v21];

      v16 = leftAnchor;
      goto LABEL_13;
    }
  }

  v16 = sub_100006E1C();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Tried to create focus container guide for invalid edge.", buf, 2u);
  }

LABEL_14:

  v22 = objc_loadWeakRetained(&self->_hostView);
  [v22 addConstraints:v9];

  v23 = +[NSUserDefaults standardUserDefaults];
  v24 = [v23 BOOLForKey:@"__internal_CarVisualizeFocusGuidesDebug"];

  if (v24)
  {
    v25 = objc_loadWeakRetained(&self->_hostView);
    debugView = [(CarFocusContainerGuide *)v5 debugView];
    [v25 addSubview:debugView];

    v27 = objc_loadWeakRetained(&self->_hostView);
    activationConstraints = [(CarFocusContainerGuide *)v5 activationConstraints];
    [v27 addConstraints:activationConstraints];
  }

  return v5;
}

- (CarFocusContainerGuideController)initWithHostView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = CarFocusContainerGuideController;
  v5 = [(CarFocusContainerGuideController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_hostView, viewCopy);
  }

  return v6;
}

@end
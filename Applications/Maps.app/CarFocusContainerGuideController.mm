@interface CarFocusContainerGuideController
- (CarFocusContainerGuideController)initWithHostView:(id)a3;
- (NSDictionary)focusContainerGuidesByEdge;
- (id)_addGuideForEdge:(unint64_t)a3;
- (void)setActiveEdges:(unint64_t)a3;
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

- (void)setActiveEdges:(unint64_t)a3
{
  if (self->_activeEdges != a3)
  {
    v4 = a3;
    self->_activeEdges = a3;
    v6 = [(CarFocusContainerGuideController *)self focusContainerGuidesByEdge];
    v7 = [v6 objectForKeyedSubscript:&off_1016E8168];
    [v7 setEnabled:v4 & 1];

    v8 = (self->_activeEdges >> 1) & 1;
    v9 = [(CarFocusContainerGuideController *)self focusContainerGuidesByEdge];
    v10 = [v9 objectForKeyedSubscript:&off_1016E8180];
    [v10 setEnabled:v8];

    v11 = (self->_activeEdges >> 3) & 1;
    v12 = [(CarFocusContainerGuideController *)self focusContainerGuidesByEdge];
    v13 = [v12 objectForKeyedSubscript:&off_1016E8198];
    [v13 setEnabled:v11];

    v14 = (self->_activeEdges >> 2) & 1;
    v16 = [(CarFocusContainerGuideController *)self focusContainerGuidesByEdge];
    v15 = [v16 objectForKeyedSubscript:&off_1016E81B0];
    [v15 setEnabled:v14];
  }
}

- (id)_addGuideForEdge:(unint64_t)a3
{
  v5 = objc_alloc_init(CarFocusContainerGuide);
  WeakRetained = objc_loadWeakRetained(&self->_hostView);
  [WeakRetained addLayoutGuide:v5];

  v7 = objc_loadWeakRetained(&self->_hostView);
  v8 = [v7 safeAreaLayoutGuide];

  v9 = +[NSMutableArray array];
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v35 = [(CarFocusContainerGuide *)v5 leftAnchor];
      v34 = [v8 leftAnchor];
      v33 = [v35 constraintEqualToAnchor:v34];
      v38[0] = v33;
      v32 = [(CarFocusContainerGuide *)v5 rightAnchor];
      v31 = [v8 rightAnchor];
      v30 = [v32 constraintEqualToAnchor:v31];
      v38[1] = v30;
      v10 = [(CarFocusContainerGuide *)v5 bottomAnchor];
      v11 = [v8 bottomAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      v38[2] = v12;
      v13 = [(CarFocusContainerGuide *)v5 heightAnchor];
      v14 = [v13 constraintEqualToConstant:30.0];
      v38[3] = v14;
      v15 = v38;
      goto LABEL_12;
    }

    if (a3 == 8)
    {
      v35 = [(CarFocusContainerGuide *)v5 topAnchor];
      v34 = [v8 topAnchor];
      v33 = [v35 constraintEqualToAnchor:v34];
      v39[0] = v33;
      v32 = [(CarFocusContainerGuide *)v5 rightAnchor];
      v31 = [v8 rightAnchor];
      v30 = [v32 constraintEqualToAnchor:v31];
      v39[1] = v30;
      v10 = [(CarFocusContainerGuide *)v5 bottomAnchor];
      v11 = [v8 bottomAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      v39[2] = v12;
      v13 = [(CarFocusContainerGuide *)v5 widthAnchor];
      v14 = [v13 constraintEqualToConstant:30.0];
      v39[3] = v14;
      v15 = v39;
      goto LABEL_12;
    }
  }

  else
  {
    if (a3 == 1)
    {
      v36 = [(CarFocusContainerGuide *)v5 topAnchor];
      v34 = [v8 topAnchor];
      v33 = [v36 constraintEqualToAnchor:v34];
      v41[0] = v33;
      v32 = [(CarFocusContainerGuide *)v5 leftAnchor];
      v31 = [v8 leftAnchor];
      v30 = [v32 constraintEqualToAnchor:v31];
      v41[1] = v30;
      v10 = [(CarFocusContainerGuide *)v5 rightAnchor];
      v11 = [v8 rightAnchor];
      v17 = [v10 constraintEqualToAnchor:v11];
      v41[2] = v17;
      v18 = [(CarFocusContainerGuide *)v5 heightAnchor];
      v19 = [v18 constraintEqualToConstant:30.0];
      v41[3] = v19;
      v20 = [NSArray arrayWithObjects:v41 count:4];
      [v9 addObjectsFromArray:v20];

      v16 = v36;
LABEL_13:

      goto LABEL_14;
    }

    if (a3 == 2)
    {
      v35 = [(CarFocusContainerGuide *)v5 topAnchor];
      v34 = [v8 topAnchor];
      v33 = [v35 constraintEqualToAnchor:v34];
      v40[0] = v33;
      v32 = [(CarFocusContainerGuide *)v5 leftAnchor];
      v31 = [v8 leftAnchor];
      v30 = [v32 constraintEqualToAnchor:v31];
      v40[1] = v30;
      v10 = [(CarFocusContainerGuide *)v5 bottomAnchor];
      v11 = [v8 bottomAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      v40[2] = v12;
      v13 = [(CarFocusContainerGuide *)v5 widthAnchor];
      v14 = [v13 constraintEqualToConstant:30.0];
      v40[3] = v14;
      v15 = v40;
LABEL_12:
      v21 = [NSArray arrayWithObjects:v15 count:4];
      [v9 addObjectsFromArray:v21];

      v16 = v35;
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
    v26 = [(CarFocusContainerGuide *)v5 debugView];
    [v25 addSubview:v26];

    v27 = objc_loadWeakRetained(&self->_hostView);
    v28 = [(CarFocusContainerGuide *)v5 activationConstraints];
    [v27 addConstraints:v28];
  }

  return v5;
}

- (CarFocusContainerGuideController)initWithHostView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CarFocusContainerGuideController;
  v5 = [(CarFocusContainerGuideController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_hostView, v4);
  }

  return v6;
}

@end
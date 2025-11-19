@interface TransportTypePicker
- (NSArray)types;
- (TransportTypePicker)initWithCoder:(id)a3;
- (TransportTypePicker)initWithFrame:(CGRect)a3;
- (TransportTypePickerDelegate)delegate;
- (id)_types;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_customInit;
- (void)_didSelectSegment:(id)a3;
- (void)_didSelectSegmentInControl:(id)a3;
- (void)_didSelectType:(int64_t)a3;
- (void)_updateSegmentsForSelectedTransportType:(int64_t)a3;
- (void)_updateSubviews;
- (void)dealloc;
- (void)offlineStatusChanged:(id)a3;
- (void)setSelectedType:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TransportTypePicker

- (TransportTypePickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateSegmentsForSelectedTransportType:(int64_t)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(TransportTypePicker *)self segments];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v9) setSelected:{objc_msgSend(*(*(&v12 + 1) + 8 * v9), "transportType") == a3}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [(TransportTypePicker *)self types];
  v11 = [NSNumber numberWithInteger:a3];
  -[UISegmentedControl setSelectedSegmentIndex:](self->_segmentedControl, "setSelectedSegmentIndex:", [v10 indexOfObject:v11]);
}

- (void)_didSelectType:(int64_t)a3
{
  [(TransportTypePicker *)self setSelectedType:?];
  v5 = [(TransportTypePicker *)self delegate];
  [v5 transportTypePicker:self typeSelected:a3];
}

- (void)_didSelectSegmentInControl:(id)a3
{
  v4 = [a3 selectedSegmentIndex];
  v5 = [(TransportTypePicker *)self types];
  v6 = [v5 objectAtIndexedSubscript:v4];
  v7 = [v6 integerValue];

  [(TransportTypePicker *)self _didSelectType:v7];
}

- (void)_didSelectSegment:(id)a3
{
  v4 = [a3 transportType];

  [(TransportTypePicker *)self _didSelectType:v4];
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = a4;
  v6 = [v5 identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v5 identifier];
    v9 = [v8 unsignedIntegerValue];
    if (v9 >= [(NSMutableArray *)self->_segments count])
    {
      v14 = 0;
    }

    else
    {
      v10 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:v9];
      v11 = [[UITargetedPreview alloc] initWithView:v10];
      v12 = [UIPointerEffect effectWithPreview:v11];
      [v10 frame];
      v13 = [UIPointerShape shapeWithRoundedRect:?];
      v14 = [UIPointerStyle styleWithEffect:v12 shape:v13];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a4;
  v7 = [(NSMutableArray *)self->_segments count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      v10 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:v9];
      [v10 frame];
      v23 = CGRectInset(v22, -2.5, -2.5);
      x = v23.origin.x;
      y = v23.origin.y;
      width = v23.size.width;
      height = v23.size.height;
      [v6 location];
      v21.x = v15;
      v21.y = v16;
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      if (CGRectContainsPoint(v24, v21))
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_5;
      }
    }

    v18 = [NSNumber numberWithUnsignedInteger:v9];
    v17 = [UIPointerRegion regionWithRect:v18 identifier:x, y, width, height];
  }

  else
  {
LABEL_5:
    v17 = 0;
  }

  return v17;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TransportTypePicker;
  [(TransportTypePicker *)&v12 traitCollectionDidChange:v4];
  v5 = [(TransportTypePicker *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];
  if (v6 == [v4 userInterfaceIdiom])
  {
    v7 = [(TransportTypePicker *)self traitCollection];
    [v7 displayScale];
    v9 = v8;
    [v4 displayScale];
    v11 = v10;

    if (v9 == v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(TransportTypePicker *)self _updateSubviews];
LABEL_6:
}

- (void)offlineStatusChanged:(id)a3
{
  types = self->_types;
  self->_types = 0;

  [(TransportTypePicker *)self _updateSubviews];
}

- (void)setSelectedType:(int64_t)a3
{
  if (self->_selectedType != a3)
  {
    self->_selectedType = a3;
    [(TransportTypePicker *)self _updateSegmentsForSelectedTransportType:?];
  }
}

- (id)_types
{
  v2 = [[NSMutableArray alloc] initWithObjects:{&off_1016E9BC0, &off_1016E9BD8, &off_1016E9BF0, &off_1016E9C08, 0}];
  v3 = sub_100016C50();
  v4 = +[MapsOfflineUIHelper sharedHelper];
  v5 = [v4 isUsingOfflineMaps];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    [v2 addObject:&off_1016E9C20];
  }

  v7 = [v2 copy];

  return v7;
}

- (NSArray)types
{
  types = self->_types;
  if (!types)
  {
    v4 = [(TransportTypePicker *)self _types];
    v5 = self->_types;
    self->_types = v4;

    types = self->_types;
  }

  return types;
}

- (void)_updateSubviews
{
  if ((_UISolariumEnabled() & 1) != 0 || sub_10000FA08(self) == 5)
  {
    segments = self->_segments;
    self->_segments = 0;

    [(UIStackView *)self->_segmentStackView removeFromSuperview];
    segmentStackView = self->_segmentStackView;
    self->_segmentStackView = 0;

    v5 = [(TransportTypePicker *)self types];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100D66B48;
    v34[3] = &unk_101652D40;
    v34[4] = self;
    v6 = sub_100021DB0(v5, v34);

    segmentedControl = self->_segmentedControl;
    if (segmentedControl)
    {
      [(UISegmentedControl *)segmentedControl removeAllSegments];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100D66DB8;
      v33[3] = &unk_101652D68;
      v33[4] = self;
      [v6 enumerateObjectsUsingBlock:v33];
    }

    else
    {
      v8 = [[UISegmentedControl alloc] initWithItems:v6];
      v9 = self->_segmentedControl;
      self->_segmentedControl = v8;

      [(UISegmentedControl *)self->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UISegmentedControl *)self->_segmentedControl setControlSize:2];
      LODWORD(v10) = 1148846080;
      [(UISegmentedControl *)self->_segmentedControl setContentCompressionResistancePriority:1 forAxis:v10];
      [(UISegmentedControl *)self->_segmentedControl addTarget:self action:"_didSelectSegmentInControl:" forControlEvents:4096];
      [(UISegmentedControl *)self->_segmentedControl setAccessibilityIdentifier:@"TransportTypePickerSegementedControl"];
      if ((_UISolariumEnabled() & 1) == 0)
      {
        v35 = NSForegroundColorAttributeName;
        v11 = +[UIColor secondaryLabelColor];
        v36 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];

        [(UISegmentedControl *)self->_segmentedControl setTitleTextAttributes:v12 forState:0];
      }

      [(TransportTypePicker *)self addSubview:self->_segmentedControl];
      v13 = objc_alloc_init(NSMutableArray);
      LODWORD(v14) = 1148846080;
      v15 = [(UISegmentedControl *)self->_segmentedControl _maps_constraintsEqualToEdgesOfView:self priority:v14];
      v16 = [v15 allConstraints];
      [v13 addObjectsFromArray:v16];

      [NSLayoutConstraint activateConstraints:v13];
    }

    [(TransportTypePicker *)self _updateSegmentsForSelectedTransportType:self->_selectedType];
  }

  else
  {
    [(UISegmentedControl *)self->_segmentedControl removeFromSuperview];
    v17 = self->_segmentedControl;
    self->_segmentedControl = 0;

    v18 = +[NSMutableArray array];
    v19 = self->_segments;
    self->_segments = v18;

    v20 = [(TransportTypePicker *)self types];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100D66DD8;
    v32[3] = &unk_101652D90;
    v32[4] = self;
    [v20 enumerateObjectsUsingBlock:v32];

    v21 = self->_segmentStackView;
    if (v21)
    {
      [(UIStackView *)v21 _maps_setArrangedSubviews:self->_segments];
    }

    else
    {
      v22 = [[UIStackView alloc] initWithArrangedSubviews:self->_segments];
      v23 = self->_segmentStackView;
      self->_segmentStackView = v22;

      [(UIStackView *)self->_segmentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIStackView *)self->_segmentStackView setAxis:0];
      [(UIStackView *)self->_segmentStackView setDistribution:1];
      [(UIStackView *)self->_segmentStackView setAlignment:0];
      [(UIStackView *)self->_segmentStackView setSpacing:10.0];
      LODWORD(v24) = 1144750080;
      [(UIStackView *)self->_segmentStackView setContentHuggingPriority:1 forAxis:v24];
      LODWORD(v25) = 1132068864;
      [(UIStackView *)self->_segmentStackView setContentHuggingPriority:0 forAxis:v25];
      LODWORD(v26) = 1148846080;
      [(UIStackView *)self->_segmentStackView setContentCompressionResistancePriority:1 forAxis:v26];
      LODWORD(v27) = 1132068864;
      [(UIStackView *)self->_segmentStackView setContentCompressionResistancePriority:0 forAxis:v27];
      [(TransportTypePicker *)self addSubview:self->_segmentStackView];
      v28 = objc_alloc_init(NSMutableArray);
      LODWORD(v29) = 1148846080;
      v30 = [(UIStackView *)self->_segmentStackView _maps_constraintsEqualToEdgesOfView:self priority:v29];
      v31 = [v30 allConstraints];
      [v28 addObjectsFromArray:v31];

      [NSLayoutConstraint activateConstraints:v28];
    }

    [(TransportTypePicker *)self _updateSegmentsForSelectedTransportType:self->_selectedType];
  }
}

- (void)_customInit
{
  [(TransportTypePicker *)self _mapkit_addPointerInteractionWithDelegate:self];
  v3 = objc_opt_new();
  [(TransportTypePicker *)self addInteraction:v3];

  [(TransportTypePicker *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = +[UIColor clearColor];
  v5 = [v4 CGColor];
  v6 = [(TransportTypePicker *)self layer];
  [v6 setBackgroundColor:v5];

  LODWORD(v7) = 1148846080;
  [(TransportTypePicker *)self setContentCompressionResistancePriority:1 forAxis:v7];
  self->_selectedType = 0;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [(TransportTypePicker *)self setAccessibilityIdentifier:v9];

  [(TransportTypePicker *)self _updateSubviews];
  [(TransportTypePicker *)self _updateSegmentsForSelectedTransportType:[(TransportTypePicker *)self selectedType]];
  if (sub_100016C50())
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"offlineStatusChanged:" name:@"UsingOfflineMapsStateChangedNotification" object:0];
  }
}

- (TransportTypePicker)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TransportTypePicker;
  v3 = [(TransportTypePicker *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(TransportTypePicker *)v3 _customInit];
  }

  return v4;
}

- (TransportTypePicker)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TransportTypePicker;
  v3 = [(TransportTypePicker *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TransportTypePicker *)v3 _customInit];
  }

  return v4;
}

- (void)dealloc
{
  GEOConfigRemoveBlockListener();
  GEOConfigRemoveBlockListener();
  authBlockListener = self->_authBlockListener;
  self->_authBlockListener = 0;

  featureBlockListener = self->_featureBlockListener;
  self->_featureBlockListener = 0;

  v5.receiver = self;
  v5.super_class = TransportTypePicker;
  [(TransportTypePicker *)&v5 dealloc];
}

@end
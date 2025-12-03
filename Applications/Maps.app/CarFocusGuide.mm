@interface CarFocusGuide
- (CarFocusGuide)initWithOriginView:(id)view toDestinationFocusEnvironments:(id)environments forDirection:(unint64_t)direction;
- (id)description;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation CarFocusGuide

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = CarFocusGuide;
  [(CarFocusGuide *)&v6 setEnabled:?];
  debugView = [(CarFocusGuide *)self debugView];
  [debugView setUserInteractionEnabled:enabledCopy];
}

- (id)description
{
  v3 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  activationConstraints = [(CarFocusGuide *)self activationConstraints];
  v5 = [activationConstraints countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v5)
  {
    v6 = *v30;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(activationConstraints);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        if ([v3 length])
        {
          [v3 appendString:{@", "}];
        }

        [v3 appendFormat:@"%p", v8];
      }

      v5 = [activationConstraints countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v5);
  }

  v9 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_originView);
  preferredFocusEnvironments = [(CarFocusGuide *)self preferredFocusEnvironments];
  direction = self->_direction;
  if (direction)
  {
    v13 = +[NSMutableString string];
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v37 = 0;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100AE377C;
    v33[3] = &unk_101637870;
    v14 = v13;
    v34 = v14;
    v35 = v36;
    v15 = objc_retainBlock(v33);
    v16 = v15;
    if (direction)
    {
      (v15[2])(v15, @"Up");
    }

    if ((direction & 2) != 0)
    {
      (v16)[2](v16, @"Down");
    }

    if ((direction & 4) != 0)
    {
      (v16)[2](v16, @"Left");
    }

    if ((direction & 8) != 0)
    {
      (v16)[2](v16, @"Right");
    }

    if ((direction & 0x20) != 0)
    {
      (v16)[2](v16, @"Previous");
    }

    if ((direction & 0x10) != 0)
    {
      (v16)[2](v16, @"Next");
    }

    v17 = v14;

    _Block_object_dispose(v36, 8);
  }

  else
  {
    v17 = @"None";
  }

  if ([(CarFocusGuide *)self isEnabled])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  [(CarFocusGuide *)self layoutFrame];
  v20 = v19;
  [(CarFocusGuide *)self layoutFrame];
  v22 = v21;
  [(CarFocusGuide *)self layoutFrame];
  v24 = v23;
  [(CarFocusGuide *)self layoutFrame];
  v26 = [NSString stringWithFormat:@"(%.1fh %.1fw)(%.1fx %.1fy)", v20, v22, v24, v25];
  v27 = [NSString stringWithFormat:@"<%@: %p guidedView=%p: preferredFocusEnvironments=%p; focusHeading=%@ enabled=%@ layoutFrame=%@ constraints=[%@]>", v9, self, WeakRetained, preferredFocusEnvironments, v17, v18, v26, v3];;

  return v27;
}

- (CarFocusGuide)initWithOriginView:(id)view toDestinationFocusEnvironments:(id)environments forDirection:(unint64_t)direction
{
  viewCopy = view;
  environmentsCopy = environments;
  if ([CarFocusGuide _validateDirection:direction])
  {
    v54.receiver = self;
    v54.super_class = CarFocusGuide;
    v10 = [(CarFocusGuide *)&v54 init];
    self = v10;
    if (!v10)
    {
LABEL_35:
      self = self;
      selfCopy = self;
      goto LABEL_36;
    }

    v10->_direction = direction;
    v52 = environmentsCopy;
    [(CarFocusGuide *)v10 setPreferredFocusEnvironments:environmentsCopy];
    v11 = +[NSMutableArray array];
    widthAnchor = [(CarFocusGuide *)self widthAnchor];
    widthAnchor2 = [viewCopy widthAnchor];
    v14 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v59[0] = v14;
    heightAnchor = [(CarFocusGuide *)self heightAnchor];
    v53 = viewCopy;
    heightAnchor2 = [viewCopy heightAnchor];
    v17 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v59[1] = v17;
    v18 = [NSArray arrayWithObjects:v59 count:2];
    [v11 addObjectsFromArray:v18];

    if (direction > 3)
    {
      if (direction == 4)
      {
        topAnchor = [(CarFocusGuide *)self topAnchor];
        topAnchor2 = [v53 topAnchor];
        v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v56[0] = v21;
        rightAnchor = [(CarFocusGuide *)self rightAnchor];
        leftAnchor = [v53 leftAnchor];
        v24 = [rightAnchor constraintEqualToAnchor:leftAnchor];
        v56[1] = v24;
        v25 = v56;
        goto LABEL_32;
      }

      viewCopy = v53;
      if (direction == 8)
      {
        topAnchor = [(CarFocusGuide *)self topAnchor];
        topAnchor2 = [v53 topAnchor];
        v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v55[0] = v21;
        rightAnchor = [(CarFocusGuide *)self leftAnchor];
        leftAnchor = [v53 rightAnchor];
        v24 = [rightAnchor constraintEqualToAnchor:leftAnchor];
        v55[1] = v24;
        v25 = v55;
        goto LABEL_32;
      }
    }

    else
    {
      if (direction == 1)
      {
        topAnchor = [(CarFocusGuide *)self bottomAnchor];
        topAnchor2 = [v53 topAnchor];
        v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v57[0] = v21;
        rightAnchor = [(CarFocusGuide *)self leftAnchor];
        leftAnchor = [v53 leftAnchor];
        v24 = [rightAnchor constraintEqualToAnchor:leftAnchor];
        v57[1] = v24;
        v25 = v57;
        goto LABEL_32;
      }

      viewCopy = v53;
      if (direction == 2)
      {
        topAnchor = [(CarFocusGuide *)self topAnchor];
        topAnchor2 = [v53 bottomAnchor];
        v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v58[0] = v21;
        rightAnchor = [(CarFocusGuide *)self leftAnchor];
        leftAnchor = [v53 leftAnchor];
        v24 = [rightAnchor constraintEqualToAnchor:leftAnchor];
        v58[1] = v24;
        v25 = v58;
LABEL_32:
        v41 = [NSArray arrayWithObjects:v25 count:2];
        [v11 addObjectsFromArray:v41];

        v42 = +[NSUserDefaults standardUserDefaults];
        v43 = [v42 BOOLForKey:@"__internal_CarVisualizeFocusGuidesDebug"];

        if (v43)
        {
          v44 = [[CarFocusGuideDebugView alloc] initWithDirection:direction];
          debugView = self->_debugView;
          self->_debugView = v44;

          [(CarFocusGuideDebugView *)self->_debugView setTranslatesAutoresizingMaskIntoConstraints:0];
          LODWORD(v46) = 1148846080;
          v47 = [(CarFocusGuideDebugView *)self->_debugView _maps_constraintsEqualToEdgesOfLayoutGuide:self priority:v46];
          allConstraints = [v47 allConstraints];
          [v11 addObjectsFromArray:allConstraints];
        }

        v49 = [v11 copy];
        activationConstraints = self->_activationConstraints;
        self->_activationConstraints = v49;

        environmentsCopy = v52;
        viewCopy = v53;
        goto LABEL_35;
      }
    }

    v34 = sub_10008AA10();
    environmentsCopy = v52;
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    selfCopy2 = self;
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    if (objc_opt_respondsToSelector())
    {
      v38 = [(CarFocusGuide *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v39 = v38;
      if (v38 && ![v38 isEqualToString:v37])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v37, selfCopy2, v39];

        goto LABEL_28;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v37, selfCopy2];
LABEL_28:

    *buf = 138543362;
    v61 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "[%{public}@] CarMapsFocusGuide tried to add focus guide for unsupported direction.", buf, 0xCu);

LABEL_29:
    goto LABEL_21;
  }

  v26 = sub_10008AA10();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    selfCopy3 = self;
    if (!selfCopy3)
    {
      selfCopy3 = @"<nil>";
      goto LABEL_19;
    }

    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    if (objc_opt_respondsToSelector())
    {
      v30 = [(CarFocusGuide *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v31 = v30;
      if (v30 && ![v30 isEqualToString:v29])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v29, selfCopy3, v31];

        goto LABEL_14;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v29, selfCopy3];
LABEL_14:

LABEL_19:
    *buf = 138543362;
    v61 = selfCopy3;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[%{public}@] Tried to create focusGuide with unsupported heading.", buf, 0xCu);
  }

LABEL_21:
  selfCopy = 0;
LABEL_36:

  return selfCopy;
}

@end
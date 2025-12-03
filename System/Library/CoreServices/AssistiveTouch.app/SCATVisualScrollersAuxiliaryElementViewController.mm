@interface SCATVisualScrollersAuxiliaryElementViewController
- (SCATVisualScrollersAuxiliaryElementViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SCATVisualScrollersAuxiliaryElementViewControllerDelegate)scrollDelegate;
- (id)viewsRequiringStateUpdate;
- (void)_addConstraint:(id)constraint priority:(float)priority;
- (void)setTransitioningToOrFromActive:(BOOL)active;
- (void)updateWithContextElement:(id)element;
- (void)viewDidLoad;
@end

@implementation SCATVisualScrollersAuxiliaryElementViewController

- (SCATVisualScrollersAuxiliaryElementViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = SCATVisualScrollersAuxiliaryElementViewController;
  v4 = [(SCATVisualScrollersAuxiliaryElementViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [[SCATVisualScrollerContainerView alloc] initWithAxis:0];
    [(SCATVisualScrollersAuxiliaryElementViewController *)v4 setVerticalScroller:v5];
    v6 = [[SCATVisualScrollerContainerView alloc] initWithAxis:1];

    [(SCATVisualScrollersAuxiliaryElementViewController *)v4 setHorizontalScroller:v6];
  }

  return v4;
}

- (void)viewDidLoad
{
  view = [(SCATVisualScrollersAuxiliaryElementViewController *)self view];
  layer = [view layer];
  [layer setAllowsGroupOpacity:0];

  horizontalScroller = [(SCATVisualScrollersAuxiliaryElementViewController *)self horizontalScroller];
  [view addSubview:horizontalScroller];

  verticalScroller = [(SCATVisualScrollersAuxiliaryElementViewController *)self verticalScroller];
  [view addSubview:verticalScroller];

  v7 = +[NSMutableArray array];
  [(SCATVisualScrollersAuxiliaryElementViewController *)self setScrollerConstraints:v7];

  [(SCATVisualScrollersAuxiliaryElementViewController *)self updateWithContextElement:0];
  v8.receiver = self;
  v8.super_class = SCATVisualScrollersAuxiliaryElementViewController;
  [(SCATAuxiliaryElementManagerViewController *)&v8 viewDidLoad];
}

- (void)_addConstraint:(id)constraint priority:(float)priority
{
  constraintCopy = constraint;
  *&v6 = priority;
  [constraintCopy setPriority:v6];
  [*(&self->_horizontalScroller + 1) addObject:constraintCopy];
}

- (void)updateWithContextElement:(id)element
{
  elementCopy = element;
  scrollerConstraints = [(SCATVisualScrollersAuxiliaryElementViewController *)self scrollerConstraints];
  [NSLayoutConstraint deactivateConstraints:scrollerConstraints];

  scrollerConstraints2 = [(SCATVisualScrollersAuxiliaryElementViewController *)self scrollerConstraints];
  [scrollerConstraints2 removeAllObjects];

  view = [(SCATVisualScrollersAuxiliaryElementViewController *)self view];
  verticalScroller = [(SCATVisualScrollersAuxiliaryElementViewController *)self verticalScroller];
  horizontalScroller = [(SCATVisualScrollersAuxiliaryElementViewController *)self horizontalScroller];
  positionRelativeToContextElement = [(SCATVisualScrollersAuxiliaryElementViewController *)self positionRelativeToContextElement];
  if (elementCopy && positionRelativeToContextElement)
  {
    [horizontalScroller systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v12 = v11 * 2.0 + 10.0;
    [elementCopy frame];
    v127 = CGRectInset(v126, -20.0, -20.0);
    x = v127.origin.x;
    y = v127.origin.y;
    width = v127.size.width;
    height = v127.size.height;
    MinX = CGRectGetMinX(v127);
    v128.origin.x = x;
    v128.origin.y = y;
    v128.size.width = width;
    v128.size.height = height;
    MaxX = CGRectGetMaxX(v128);
    v129.origin.x = x;
    v129.origin.y = y;
    v129.size.width = width;
    v129.size.height = height;
    MinY = CGRectGetMinY(v129);
    v130.origin.x = x;
    v130.origin.y = y;
    v130.size.width = width;
    v130.size.height = height;
    MaxY = CGRectGetMaxY(v130);
    v131.origin.x = x;
    v131.origin.y = y;
    v131.size.width = width;
    v131.size.height = height;
    v19 = CGRectGetWidth(v131);
    v132.origin.x = x;
    v132.origin.y = y;
    v132.size.width = width;
    v132.size.height = height;
    v20 = CGRectGetHeight(v132);
    topAnchor = [horizontalScroller topAnchor];
    topAnchor2 = [view topAnchor];
    v23 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:50.0];

    LODWORD(v24) = 1148846080;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v23 priority:v24];
    bottomAnchor = [horizontalScroller bottomAnchor];
    bottomAnchor2 = [view bottomAnchor];
    v27 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-50.0];

    LODWORD(v28) = 1148846080;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v27 priority:v28];
    leftAnchor = [horizontalScroller leftAnchor];
    leftAnchor2 = [view leftAnchor];
    v31 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2 constant:50.0];

    LODWORD(v32) = 1148846080;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v31 priority:v32];
    rightAnchor = [horizontalScroller rightAnchor];
    rightAnchor2 = [view rightAnchor];
    v35 = [rightAnchor constraintLessThanOrEqualToAnchor:rightAnchor2 constant:-50.0];

    LODWORD(v36) = 1148846080;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v35 priority:v36];
    topAnchor3 = [verticalScroller topAnchor];
    topAnchor4 = [view topAnchor];
    v39 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:50.0];

    LODWORD(v40) = 1148846080;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v39 priority:v40];
    bottomAnchor3 = [verticalScroller bottomAnchor];
    bottomAnchor4 = [view bottomAnchor];
    v43 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4 constant:-50.0];

    LODWORD(v44) = 1148846080;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v43 priority:v44];
    leftAnchor3 = [verticalScroller leftAnchor];
    leftAnchor4 = [view leftAnchor];
    v47 = [leftAnchor3 constraintGreaterThanOrEqualToAnchor:leftAnchor4 constant:50.0];

    LODWORD(v48) = 1148846080;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v47 priority:v48];
    rightAnchor3 = [verticalScroller rightAnchor];
    rightAnchor4 = [view rightAnchor];
    v51 = [rightAnchor3 constraintLessThanOrEqualToAnchor:rightAnchor4 constant:-50.0];

    LODWORD(v52) = 1148846080;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v51 priority:v52];
    widthAnchor = [horizontalScroller widthAnchor];
    v54 = [widthAnchor constraintGreaterThanOrEqualToConstant:v12];

    LODWORD(v55) = 1148846080;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v54 priority:v55];
    heightAnchor = [verticalScroller heightAnchor];
    v57 = [heightAnchor constraintGreaterThanOrEqualToConstant:v12];

    LODWORD(v58) = 1148846080;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v57 priority:v58];
    leftAnchor5 = [horizontalScroller leftAnchor];
    rightAnchor5 = [verticalScroller rightAnchor];
    v61 = [leftAnchor5 constraintLessThanOrEqualToAnchor:rightAnchor5 constant:-10.0];

    LODWORD(v62) = 1148829696;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v61 priority:v62];
    widthAnchor2 = [horizontalScroller widthAnchor];
    v64 = [widthAnchor2 constraintLessThanOrEqualToConstant:v19];

    LODWORD(v65) = 1148813312;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v64 priority:v65];
    heightAnchor2 = [verticalScroller heightAnchor];
    v67 = [heightAnchor2 constraintLessThanOrEqualToConstant:v20];

    LODWORD(v68) = 1148813312;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v67 priority:v68];
    widthAnchor3 = [horizontalScroller widthAnchor];
    v70 = [widthAnchor3 constraintEqualToConstant:v19];

    LODWORD(v71) = 1148796928;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v70 priority:v71];
    heightAnchor3 = [verticalScroller heightAnchor];
    v73 = [heightAnchor3 constraintEqualToConstant:v20];

    LODWORD(v74) = 1148796928;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v73 priority:v74];
    topAnchor5 = [horizontalScroller topAnchor];
    topAnchor6 = [view topAnchor];
    v77 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:MaxY];

    LODWORD(v78) = 1148780544;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v77 priority:v78];
    leftAnchor6 = [horizontalScroller leftAnchor];
    leftAnchor7 = [view leftAnchor];
    v81 = [leftAnchor6 constraintEqualToAnchor:leftAnchor7 constant:MinX];

    LODWORD(v82) = 1148780544;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v81 priority:v82];
    topAnchor7 = [verticalScroller topAnchor];
    topAnchor8 = [view topAnchor];
    v85 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:MinY];

    LODWORD(v86) = 1148780544;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v85 priority:v86];
    leftAnchor8 = [verticalScroller leftAnchor];
    leftAnchor9 = [view leftAnchor];
    v89 = [leftAnchor8 constraintEqualToAnchor:leftAnchor9 constant:MaxX];

    LODWORD(v90) = 1148780544;
    [(SCATVisualScrollersAuxiliaryElementViewController *)self _addConstraint:v89 priority:v90];
  }

  else
  {
    v91 = +[UIScreen mainScreen];
    [v91 overscanCompensationInsets];
    v93 = v92;
    v95 = v94;

    bottomAnchor5 = [horizontalScroller bottomAnchor];
    bottomAnchor6 = [view bottomAnchor];
    v98 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-v93];

    scrollerConstraints3 = [(SCATVisualScrollersAuxiliaryElementViewController *)self scrollerConstraints];
    [scrollerConstraints3 addObject:v98];

    centerXAnchor = [horizontalScroller centerXAnchor];
    centerXAnchor2 = [view centerXAnchor];
    v102 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    scrollerConstraints4 = [(SCATVisualScrollersAuxiliaryElementViewController *)self scrollerConstraints];
    [scrollerConstraints4 addObject:v102];

    widthAnchor4 = [horizontalScroller widthAnchor];
    v105 = [widthAnchor4 constraintEqualToConstant:600.0];

    scrollerConstraints5 = [(SCATVisualScrollersAuxiliaryElementViewController *)self scrollerConstraints];
    [scrollerConstraints5 addObject:v105];

    rightAnchor6 = [verticalScroller rightAnchor];
    rightAnchor7 = [view rightAnchor];
    v109 = [rightAnchor6 constraintEqualToAnchor:rightAnchor7 constant:-v95];

    scrollerConstraints6 = [(SCATVisualScrollersAuxiliaryElementViewController *)self scrollerConstraints];
    [scrollerConstraints6 addObject:v109];

    centerYAnchor = [verticalScroller centerYAnchor];
    centerYAnchor2 = [view centerYAnchor];
    v113 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    scrollerConstraints7 = [(SCATVisualScrollersAuxiliaryElementViewController *)self scrollerConstraints];
    [scrollerConstraints7 addObject:v113];

    heightAnchor4 = [verticalScroller heightAnchor];
    v89 = [heightAnchor4 constraintEqualToConstant:600.0];

    scrollerConstraints8 = [(SCATVisualScrollersAuxiliaryElementViewController *)self scrollerConstraints];
    [scrollerConstraints8 addObject:v89];
  }

  scrollerConstraints9 = [(SCATVisualScrollersAuxiliaryElementViewController *)self scrollerConstraints];
  [NSLayoutConstraint activateConstraints:scrollerConstraints9];

  objc_initWeak(&location, self);
  v122[0] = _NSConcreteStackBlock;
  v122[1] = 3221225472;
  v122[2] = sub_1000B7634;
  v122[3] = &unk_1001D3438;
  objc_copyWeak(&v124, &location);
  v118 = elementCopy;
  v123 = v118;
  v119 = objc_retainBlock(v122);
  if ([(SCATAuxiliaryElementManagerViewController *)self isTransitioningToOrFromActive])
  {
    [(SCATVisualScrollersAuxiliaryElementViewController *)self setPostTransitionUpdateBlock:v119];
  }

  else
  {
    (v119[2])(v119);
  }

  objc_destroyWeak(&v124);
  objc_destroyWeak(&location);
}

- (void)setTransitioningToOrFromActive:(BOOL)active
{
  v7.receiver = self;
  v7.super_class = SCATVisualScrollersAuxiliaryElementViewController;
  [(SCATAuxiliaryElementManagerViewController *)&v7 setTransitioningToOrFromActive:?];
  if (!active)
  {
    postTransitionUpdateBlock = [(SCATVisualScrollersAuxiliaryElementViewController *)self postTransitionUpdateBlock];

    if (postTransitionUpdateBlock)
    {
      postTransitionUpdateBlock2 = [(SCATVisualScrollersAuxiliaryElementViewController *)self postTransitionUpdateBlock];
      postTransitionUpdateBlock2[2]();

      [(SCATVisualScrollersAuxiliaryElementViewController *)self setPostTransitionUpdateBlock:0];
    }
  }
}

- (id)viewsRequiringStateUpdate
{
  if ([(SCATVisualScrollersAuxiliaryElementViewController *)self isViewLoaded])
  {
    verticalScroller = [(SCATVisualScrollersAuxiliaryElementViewController *)self verticalScroller];
    v15[0] = verticalScroller;
    horizontalScroller = [(SCATVisualScrollersAuxiliaryElementViewController *)self horizontalScroller];
    v15[1] = horizontalScroller;
    verticalScroller2 = [(SCATVisualScrollersAuxiliaryElementViewController *)self verticalScroller];
    scrollUpView = [verticalScroller2 scrollUpView];
    v15[2] = scrollUpView;
    verticalScroller3 = [(SCATVisualScrollersAuxiliaryElementViewController *)self verticalScroller];
    scrollDownView = [verticalScroller3 scrollDownView];
    v15[3] = scrollDownView;
    horizontalScroller2 = [(SCATVisualScrollersAuxiliaryElementViewController *)self horizontalScroller];
    scrollLeftView = [horizontalScroller2 scrollLeftView];
    v15[4] = scrollLeftView;
    horizontalScroller3 = [(SCATVisualScrollersAuxiliaryElementViewController *)self horizontalScroller];
    scrollRightView = [horizontalScroller3 scrollRightView];
    v15[5] = scrollRightView;
    v12 = [NSArray arrayWithObjects:v15 count:6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (SCATVisualScrollersAuxiliaryElementViewControllerDelegate)scrollDelegate
{
  WeakRetained = objc_loadWeakRetained((&self->_positionRelativeToContextElement + 1));

  return WeakRetained;
}

@end
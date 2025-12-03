@interface _BKEndOfBookCardTransitionSnapshotView
- (_BKEndOfBookCardTransitionSnapshotView)initWithCompactViewController:(id)controller;
- (void)setupConstraintsToSuperview;
@end

@implementation _BKEndOfBookCardTransitionSnapshotView

- (_BKEndOfBookCardTransitionSnapshotView)initWithCompactViewController:(id)controller
{
  controllerCopy = controller;
  v82.receiver = self;
  v82.super_class = _BKEndOfBookCardTransitionSnapshotView;
  v5 = [(_BKEndOfBookToastBlurEffectView *)&v82 init];
  if (v5)
  {
    feedViewController = [controllerCopy feedViewController];
    view = [feedViewController view];
    backgroundColor = [view backgroundColor];

    view2 = [feedViewController view];
    [view2 setBackgroundColor:0];

    view3 = [feedViewController view];
    v11 = [view3 snapshotViewAfterScreenUpdates:0];
    snapshot = v5->_snapshot;
    v5->_snapshot = v11;

    view4 = [feedViewController view];
    [view4 setBackgroundColor:backgroundColor];

    [(UIView *)v5->_snapshot setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = v5->_snapshot;
    if (v14)
    {
      [(UIView *)v14 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
    }

    else
    {
      view5 = [feedViewController view];
      [view5 bounds];
      v16 = v24;
      v18 = v25;
      v20 = v26;
      v22 = v27;
    }

    v79 = feedViewController;
    v80 = controllerCopy;
    v85.origin.x = v16;
    v85.origin.y = v18;
    v85.size.width = v20;
    v85.size.height = v22;
    Height = CGRectGetHeight(v85);
    v86.origin.x = v16;
    v86.origin.y = v18;
    v86.size.width = v20;
    v86.size.height = v22;
    Width = CGRectGetWidth(v86);
    [(_BKEndOfBookCardTransitionSnapshotView *)v5 setFrame:v16, v18, v20, v22];
    v30 = [[UIView alloc] initWithFrame:{v16, v18, v20, v22}];
    backgroundView = v5->_backgroundView;
    v5->_backgroundView = v30;

    [(UIView *)v5->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v78 = backgroundColor;
    [(UIView *)v5->_backgroundView setBackgroundColor:backgroundColor];
    v32 = [BCCardGripperView cardGripperViewWithStyle:1];
    closeButtonView = v5->_closeButtonView;
    v5->_closeButtonView = v32;

    [(UIView *)v5->_closeButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_BKEndOfBookCardTransitionSnapshotView *)v5 addSubview:v5->_backgroundView];
    if (v5->_snapshot)
    {
      [(_BKEndOfBookCardTransitionSnapshotView *)v5 addSubview:?];
    }

    [(_BKEndOfBookCardTransitionSnapshotView *)v5 addSubview:v5->_closeButtonView];
    topAnchor = [(UIView *)v5->_snapshot topAnchor];
    superview = [(UIView *)v5->_snapshot superview];
    topAnchor2 = [superview topAnchor];
    v37 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    snapshotTopConstraint = v5->_snapshotTopConstraint;
    v5->_snapshotTopConstraint = v37;

    v81 = +[NSMutableArray array];
    v39 = v5->_snapshot;
    if (v39 && v5->_snapshotTopConstraint)
    {
      v84[0] = v5->_snapshotTopConstraint;
      leftAnchor = [(UIView *)v39 leftAnchor];
      superview2 = [(UIView *)v5->_snapshot superview];
      leftAnchor2 = [superview2 leftAnchor];
      v70 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v84[1] = v70;
      rightAnchor = [(UIView *)v5->_snapshot rightAnchor];
      superview3 = [(UIView *)v5->_snapshot superview];
      rightAnchor2 = [superview3 rightAnchor];
      v41 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      v84[2] = v41;
      heightAnchor = [(UIView *)v5->_snapshot heightAnchor];
      widthAnchor = [(UIView *)v5->_snapshot widthAnchor];
      width = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:Height / Width];
      v84[3] = width;
      v45 = [NSArray arrayWithObjects:v84 count:4];
      [v81 addObjectsFromArray:v45];
    }

    topAnchor3 = [(UIView *)v5->_backgroundView topAnchor];
    superview4 = [(UIView *)v5->_backgroundView superview];
    topAnchor4 = [superview4 topAnchor];
    v71 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v83[0] = v71;
    leftAnchor3 = [(UIView *)v5->_backgroundView leftAnchor];
    superview5 = [(UIView *)v5->_backgroundView superview];
    leftAnchor4 = [superview5 leftAnchor];
    v64 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    v83[1] = v64;
    rightAnchor3 = [(UIView *)v5->_backgroundView rightAnchor];
    superview6 = [(UIView *)v5->_backgroundView superview];
    rightAnchor4 = [superview6 rightAnchor];
    v60 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    v83[2] = v60;
    bottomAnchor = [(UIView *)v5->_backgroundView bottomAnchor];
    superview7 = [(UIView *)v5->_backgroundView superview];
    bottomAnchor2 = [superview7 bottomAnchor];
    v56 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v83[3] = v56;
    topAnchor5 = [(UIView *)v5->_closeButtonView topAnchor];
    superview8 = [(UIView *)v5->_closeButtonView superview];
    topAnchor6 = [superview8 topAnchor];
    v48 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:15.0];
    v83[4] = v48;
    trailingAnchor = [(UIView *)v5->_closeButtonView trailingAnchor];
    superview9 = [(UIView *)v5->_closeButtonView superview];
    trailingAnchor2 = [superview9 trailingAnchor];
    v52 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-14.5];
    v83[5] = v52;
    v53 = [NSArray arrayWithObjects:v83 count:6];
    [v81 addObjectsFromArray:v53];

    [NSLayoutConstraint activateConstraints:v81];
    controllerCopy = v80;
  }

  return v5;
}

- (void)setupConstraintsToSuperview
{
  [(_BKEndOfBookCardTransitionSnapshotView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [(_BKEndOfBookCardTransitionSnapshotView *)self topAnchor];
  superview = [(_BKEndOfBookCardTransitionSnapshotView *)self superview];
  topAnchor2 = [superview topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v20[0] = v16;
  bottomAnchor = [(_BKEndOfBookCardTransitionSnapshotView *)self bottomAnchor];
  superview2 = [(_BKEndOfBookCardTransitionSnapshotView *)self superview];
  bottomAnchor2 = [superview2 bottomAnchor];
  v3 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v20[1] = v3;
  leftAnchor = [(_BKEndOfBookCardTransitionSnapshotView *)self leftAnchor];
  superview3 = [(_BKEndOfBookCardTransitionSnapshotView *)self superview];
  leftAnchor2 = [superview3 leftAnchor];
  v7 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v20[2] = v7;
  rightAnchor = [(_BKEndOfBookCardTransitionSnapshotView *)self rightAnchor];
  superview4 = [(_BKEndOfBookCardTransitionSnapshotView *)self superview];
  rightAnchor2 = [superview4 rightAnchor];
  v11 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v20[3] = v11;
  v12 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

@end
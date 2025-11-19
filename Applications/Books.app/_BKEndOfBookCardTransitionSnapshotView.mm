@interface _BKEndOfBookCardTransitionSnapshotView
- (_BKEndOfBookCardTransitionSnapshotView)initWithCompactViewController:(id)a3;
- (void)setupConstraintsToSuperview;
@end

@implementation _BKEndOfBookCardTransitionSnapshotView

- (_BKEndOfBookCardTransitionSnapshotView)initWithCompactViewController:(id)a3
{
  v4 = a3;
  v82.receiver = self;
  v82.super_class = _BKEndOfBookCardTransitionSnapshotView;
  v5 = [(_BKEndOfBookToastBlurEffectView *)&v82 init];
  if (v5)
  {
    v6 = [v4 feedViewController];
    v7 = [v6 view];
    v8 = [v7 backgroundColor];

    v9 = [v6 view];
    [v9 setBackgroundColor:0];

    v10 = [v6 view];
    v11 = [v10 snapshotViewAfterScreenUpdates:0];
    snapshot = v5->_snapshot;
    v5->_snapshot = v11;

    v13 = [v6 view];
    [v13 setBackgroundColor:v8];

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
      v23 = [v6 view];
      [v23 bounds];
      v16 = v24;
      v18 = v25;
      v20 = v26;
      v22 = v27;
    }

    v79 = v6;
    v80 = v4;
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
    v78 = v8;
    [(UIView *)v5->_backgroundView setBackgroundColor:v8];
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
    v34 = [(UIView *)v5->_snapshot topAnchor];
    v35 = [(UIView *)v5->_snapshot superview];
    v36 = [v35 topAnchor];
    v37 = [v34 constraintEqualToAnchor:v36 constant:0.0];
    snapshotTopConstraint = v5->_snapshotTopConstraint;
    v5->_snapshotTopConstraint = v37;

    v81 = +[NSMutableArray array];
    v39 = v5->_snapshot;
    if (v39 && v5->_snapshotTopConstraint)
    {
      v84[0] = v5->_snapshotTopConstraint;
      v74 = [(UIView *)v39 leftAnchor];
      v76 = [(UIView *)v5->_snapshot superview];
      v72 = [v76 leftAnchor];
      v70 = [v74 constraintEqualToAnchor:v72];
      v84[1] = v70;
      v66 = [(UIView *)v5->_snapshot rightAnchor];
      v68 = [(UIView *)v5->_snapshot superview];
      v40 = [v68 rightAnchor];
      v41 = [v66 constraintEqualToAnchor:v40];
      v84[2] = v41;
      v42 = [(UIView *)v5->_snapshot heightAnchor];
      v43 = [(UIView *)v5->_snapshot widthAnchor];
      v44 = [v42 constraintEqualToAnchor:v43 multiplier:Height / Width];
      v84[3] = v44;
      v45 = [NSArray arrayWithObjects:v84 count:4];
      [v81 addObjectsFromArray:v45];
    }

    v75 = [(UIView *)v5->_backgroundView topAnchor];
    v77 = [(UIView *)v5->_backgroundView superview];
    v73 = [v77 topAnchor];
    v71 = [v75 constraintEqualToAnchor:v73];
    v83[0] = v71;
    v67 = [(UIView *)v5->_backgroundView leftAnchor];
    v69 = [(UIView *)v5->_backgroundView superview];
    v65 = [v69 leftAnchor];
    v64 = [v67 constraintEqualToAnchor:v65];
    v83[1] = v64;
    v62 = [(UIView *)v5->_backgroundView rightAnchor];
    v63 = [(UIView *)v5->_backgroundView superview];
    v61 = [v63 rightAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v83[2] = v60;
    v58 = [(UIView *)v5->_backgroundView bottomAnchor];
    v59 = [(UIView *)v5->_backgroundView superview];
    v57 = [v59 bottomAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v83[3] = v56;
    v55 = [(UIView *)v5->_closeButtonView topAnchor];
    v46 = [(UIView *)v5->_closeButtonView superview];
    v47 = [v46 topAnchor];
    v48 = [v55 constraintEqualToAnchor:v47 constant:15.0];
    v83[4] = v48;
    v49 = [(UIView *)v5->_closeButtonView trailingAnchor];
    v50 = [(UIView *)v5->_closeButtonView superview];
    v51 = [v50 trailingAnchor];
    v52 = [v49 constraintEqualToAnchor:v51 constant:-14.5];
    v83[5] = v52;
    v53 = [NSArray arrayWithObjects:v83 count:6];
    [v81 addObjectsFromArray:v53];

    [NSLayoutConstraint activateConstraints:v81];
    v4 = v80;
  }

  return v5;
}

- (void)setupConstraintsToSuperview
{
  [(_BKEndOfBookCardTransitionSnapshotView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [(_BKEndOfBookCardTransitionSnapshotView *)self topAnchor];
  v19 = [(_BKEndOfBookCardTransitionSnapshotView *)self superview];
  v17 = [v19 topAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v20[0] = v16;
  v14 = [(_BKEndOfBookCardTransitionSnapshotView *)self bottomAnchor];
  v15 = [(_BKEndOfBookCardTransitionSnapshotView *)self superview];
  v13 = [v15 bottomAnchor];
  v3 = [v14 constraintEqualToAnchor:v13];
  v20[1] = v3;
  v4 = [(_BKEndOfBookCardTransitionSnapshotView *)self leftAnchor];
  v5 = [(_BKEndOfBookCardTransitionSnapshotView *)self superview];
  v6 = [v5 leftAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v20[2] = v7;
  v8 = [(_BKEndOfBookCardTransitionSnapshotView *)self rightAnchor];
  v9 = [(_BKEndOfBookCardTransitionSnapshotView *)self superview];
  v10 = [v9 rightAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v20[3] = v11;
  v12 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

@end
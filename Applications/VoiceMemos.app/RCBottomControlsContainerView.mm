@interface RCBottomControlsContainerView
- (RCBottomControlsContainerView)initWithFrame:(CGRect)a3;
- (void)_setupContainerSubviews;
@end

@implementation RCBottomControlsContainerView

- (void)_setupContainerSubviews
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(RCBottomControlsContainerView *)self setLeadingContainerView:v7];

  v8 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(RCBottomControlsContainerView *)self setCenterContainerView:v8];

  v9 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(RCBottomControlsContainerView *)self setTrailingContainerView:v9];

  v10 = [(RCBottomControlsContainerView *)self leadingContainerView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(RCBottomControlsContainerView *)self leadingContainerView];
  [(RCBottomControlsContainerView *)self addSubview:v11];

  v12 = [(RCBottomControlsContainerView *)self leadingContainerView];
  LODWORD(v13) = 1148846080;
  [v12 setContentHuggingPriority:0 forAxis:v13];

  v14 = [(RCBottomControlsContainerView *)self leadingContainerView];
  LODWORD(v15) = 1148846080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v15];

  v16 = [(RCBottomControlsContainerView *)self trailingContainerView];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [(RCBottomControlsContainerView *)self trailingContainerView];
  [(RCBottomControlsContainerView *)self addSubview:v17];

  v18 = [(RCBottomControlsContainerView *)self trailingContainerView];
  LODWORD(v19) = 1148846080;
  [v18 setContentHuggingPriority:0 forAxis:v19];

  v20 = [(RCBottomControlsContainerView *)self trailingContainerView];
  LODWORD(v21) = 1148846080;
  [v20 setContentCompressionResistancePriority:0 forAxis:v21];

  v22 = [(RCBottomControlsContainerView *)self centerContainerView];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = [(RCBottomControlsContainerView *)self centerContainerView];
  [(RCBottomControlsContainerView *)self addSubview:v23];

  v24 = [(RCBottomControlsContainerView *)self centerContainerView];
  LODWORD(v25) = 1148846080;
  [v24 setContentHuggingPriority:0 forAxis:v25];

  v26 = [(RCBottomControlsContainerView *)self centerContainerView];
  LODWORD(v27) = 1148846080;
  [v26 setContentCompressionResistancePriority:0 forAxis:v27];

  v28 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v28 bottomControlsContainerLeadingTrailingPadding];
  v30 = v29;

  v77 = [(RCBottomControlsContainerView *)self leadingContainerView];
  v76 = [v77 leadingAnchor];
  v75 = [(RCBottomControlsContainerView *)self leadingAnchor];
  v74 = [v76 constraintEqualToAnchor:v75 constant:v30];
  v78[0] = v74;
  v73 = [(RCBottomControlsContainerView *)self leadingContainerView];
  v72 = [v73 topAnchor];
  v71 = [(RCBottomControlsContainerView *)self topAnchor];
  v70 = [v72 constraintEqualToAnchor:v71];
  v78[1] = v70;
  v69 = [(RCBottomControlsContainerView *)self leadingContainerView];
  v68 = [v69 bottomAnchor];
  v67 = [(RCBottomControlsContainerView *)self bottomAnchor];
  v66 = [v68 constraintEqualToAnchor:v67];
  v78[2] = v66;
  v65 = [(RCBottomControlsContainerView *)self trailingContainerView];
  v64 = [v65 trailingAnchor];
  v63 = [(RCBottomControlsContainerView *)self trailingAnchor];
  v62 = [v64 constraintEqualToAnchor:v63 constant:-v30];
  v78[3] = v62;
  v61 = [(RCBottomControlsContainerView *)self trailingContainerView];
  v60 = [v61 topAnchor];
  v59 = [(RCBottomControlsContainerView *)self topAnchor];
  v58 = [v60 constraintEqualToAnchor:v59];
  v78[4] = v58;
  v57 = [(RCBottomControlsContainerView *)self trailingContainerView];
  v56 = [v57 bottomAnchor];
  v55 = [(RCBottomControlsContainerView *)self bottomAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v78[5] = v54;
  v53 = [(RCBottomControlsContainerView *)self centerContainerView];
  v52 = [v53 centerXAnchor];
  v51 = [(RCBottomControlsContainerView *)self centerXAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v78[6] = v50;
  v49 = [(RCBottomControlsContainerView *)self centerContainerView];
  v48 = [v49 topAnchor];
  v47 = [(RCBottomControlsContainerView *)self topAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v78[7] = v46;
  v45 = [(RCBottomControlsContainerView *)self centerContainerView];
  v44 = [v45 bottomAnchor];
  v43 = [(RCBottomControlsContainerView *)self bottomAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v78[8] = v42;
  v41 = [(RCBottomControlsContainerView *)self leadingContainerView];
  v31 = [v41 trailingAnchor];
  v32 = [(RCBottomControlsContainerView *)self centerContainerView];
  v33 = [v32 leadingAnchor];
  v34 = [v31 constraintLessThanOrEqualToAnchor:v33];
  v78[9] = v34;
  v35 = [(RCBottomControlsContainerView *)self trailingContainerView];
  v36 = [v35 leadingAnchor];
  v37 = [(RCBottomControlsContainerView *)self centerContainerView];
  v38 = [v37 trailingAnchor];
  v39 = [v36 constraintGreaterThanOrEqualToAnchor:v38];
  v78[10] = v39;
  v40 = [NSArray arrayWithObjects:v78 count:11];
  [NSLayoutConstraint activateConstraints:v40];
}

- (RCBottomControlsContainerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = RCBottomControlsContainerView;
  v3 = [(RCBottomControlsContainerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(RCBottomControlsContainerView *)v3 _setupContainerSubviews];
  }

  return v4;
}

@end
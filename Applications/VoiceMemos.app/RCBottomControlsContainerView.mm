@interface RCBottomControlsContainerView
- (RCBottomControlsContainerView)initWithFrame:(CGRect)frame;
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

  leadingContainerView = [(RCBottomControlsContainerView *)self leadingContainerView];
  [leadingContainerView setTranslatesAutoresizingMaskIntoConstraints:0];

  leadingContainerView2 = [(RCBottomControlsContainerView *)self leadingContainerView];
  [(RCBottomControlsContainerView *)self addSubview:leadingContainerView2];

  leadingContainerView3 = [(RCBottomControlsContainerView *)self leadingContainerView];
  LODWORD(v13) = 1148846080;
  [leadingContainerView3 setContentHuggingPriority:0 forAxis:v13];

  leadingContainerView4 = [(RCBottomControlsContainerView *)self leadingContainerView];
  LODWORD(v15) = 1148846080;
  [leadingContainerView4 setContentCompressionResistancePriority:0 forAxis:v15];

  trailingContainerView = [(RCBottomControlsContainerView *)self trailingContainerView];
  [trailingContainerView setTranslatesAutoresizingMaskIntoConstraints:0];

  trailingContainerView2 = [(RCBottomControlsContainerView *)self trailingContainerView];
  [(RCBottomControlsContainerView *)self addSubview:trailingContainerView2];

  trailingContainerView3 = [(RCBottomControlsContainerView *)self trailingContainerView];
  LODWORD(v19) = 1148846080;
  [trailingContainerView3 setContentHuggingPriority:0 forAxis:v19];

  trailingContainerView4 = [(RCBottomControlsContainerView *)self trailingContainerView];
  LODWORD(v21) = 1148846080;
  [trailingContainerView4 setContentCompressionResistancePriority:0 forAxis:v21];

  centerContainerView = [(RCBottomControlsContainerView *)self centerContainerView];
  [centerContainerView setTranslatesAutoresizingMaskIntoConstraints:0];

  centerContainerView2 = [(RCBottomControlsContainerView *)self centerContainerView];
  [(RCBottomControlsContainerView *)self addSubview:centerContainerView2];

  centerContainerView3 = [(RCBottomControlsContainerView *)self centerContainerView];
  LODWORD(v25) = 1148846080;
  [centerContainerView3 setContentHuggingPriority:0 forAxis:v25];

  centerContainerView4 = [(RCBottomControlsContainerView *)self centerContainerView];
  LODWORD(v27) = 1148846080;
  [centerContainerView4 setContentCompressionResistancePriority:0 forAxis:v27];

  v28 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v28 bottomControlsContainerLeadingTrailingPadding];
  v30 = v29;

  leadingContainerView5 = [(RCBottomControlsContainerView *)self leadingContainerView];
  leadingAnchor = [leadingContainerView5 leadingAnchor];
  leadingAnchor2 = [(RCBottomControlsContainerView *)self leadingAnchor];
  v74 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v30];
  v78[0] = v74;
  leadingContainerView6 = [(RCBottomControlsContainerView *)self leadingContainerView];
  topAnchor = [leadingContainerView6 topAnchor];
  topAnchor2 = [(RCBottomControlsContainerView *)self topAnchor];
  v70 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v78[1] = v70;
  leadingContainerView7 = [(RCBottomControlsContainerView *)self leadingContainerView];
  bottomAnchor = [leadingContainerView7 bottomAnchor];
  bottomAnchor2 = [(RCBottomControlsContainerView *)self bottomAnchor];
  v66 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v78[2] = v66;
  trailingContainerView5 = [(RCBottomControlsContainerView *)self trailingContainerView];
  trailingAnchor = [trailingContainerView5 trailingAnchor];
  trailingAnchor2 = [(RCBottomControlsContainerView *)self trailingAnchor];
  v62 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v30];
  v78[3] = v62;
  trailingContainerView6 = [(RCBottomControlsContainerView *)self trailingContainerView];
  topAnchor3 = [trailingContainerView6 topAnchor];
  topAnchor4 = [(RCBottomControlsContainerView *)self topAnchor];
  v58 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v78[4] = v58;
  trailingContainerView7 = [(RCBottomControlsContainerView *)self trailingContainerView];
  bottomAnchor3 = [trailingContainerView7 bottomAnchor];
  bottomAnchor4 = [(RCBottomControlsContainerView *)self bottomAnchor];
  v54 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v78[5] = v54;
  centerContainerView5 = [(RCBottomControlsContainerView *)self centerContainerView];
  centerXAnchor = [centerContainerView5 centerXAnchor];
  centerXAnchor2 = [(RCBottomControlsContainerView *)self centerXAnchor];
  v50 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v78[6] = v50;
  centerContainerView6 = [(RCBottomControlsContainerView *)self centerContainerView];
  topAnchor5 = [centerContainerView6 topAnchor];
  topAnchor6 = [(RCBottomControlsContainerView *)self topAnchor];
  v46 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v78[7] = v46;
  centerContainerView7 = [(RCBottomControlsContainerView *)self centerContainerView];
  bottomAnchor5 = [centerContainerView7 bottomAnchor];
  bottomAnchor6 = [(RCBottomControlsContainerView *)self bottomAnchor];
  v42 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v78[8] = v42;
  leadingContainerView8 = [(RCBottomControlsContainerView *)self leadingContainerView];
  trailingAnchor3 = [leadingContainerView8 trailingAnchor];
  centerContainerView8 = [(RCBottomControlsContainerView *)self centerContainerView];
  leadingAnchor3 = [centerContainerView8 leadingAnchor];
  v34 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor3];
  v78[9] = v34;
  trailingContainerView8 = [(RCBottomControlsContainerView *)self trailingContainerView];
  leadingAnchor4 = [trailingContainerView8 leadingAnchor];
  centerContainerView9 = [(RCBottomControlsContainerView *)self centerContainerView];
  trailingAnchor4 = [centerContainerView9 trailingAnchor];
  v39 = [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:trailingAnchor4];
  v78[10] = v39;
  v40 = [NSArray arrayWithObjects:v78 count:11];
  [NSLayoutConstraint activateConstraints:v40];
}

- (RCBottomControlsContainerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = RCBottomControlsContainerView;
  v3 = [(RCBottomControlsContainerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RCBottomControlsContainerView *)v3 _setupContainerSubviews];
  }

  return v4;
}

@end
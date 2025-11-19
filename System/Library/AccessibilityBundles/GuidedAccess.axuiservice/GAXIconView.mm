@interface GAXIconView
- (GAXIconView)initWithIcon:(id)a3 styleProvider:(id)a4;
@end

@implementation GAXIconView

- (GAXIconView)initWithIcon:(id)a3 styleProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v43.receiver = self;
  v43.super_class = GAXIconView;
  v8 = [(GAXIconView *)&v43 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v8)
  {
    v9 = [UIVisualEffectView alloc];
    [v7 featureViewOptionsBlurEffect];
    v10 = v41 = v7;
    v11 = [UIVibrancyEffect effectForBlurEffect:v10 style:0];
    v12 = [v9 initWithEffect:v11];

    v13 = v12;
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GAXIconView *)v8 addSubview:v12];
    v14 = [[UIImageView alloc] initWithImage:v6];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setContentMode:1];
    v39 = v12;
    v15 = [v12 contentView];
    [v15 addSubview:v14];

    v42 = +[NSMutableArray array];
    v16 = [NSLayoutConstraint ax_constraintsToMakeView:v13 sameDimensionsAsView:v8];
    [v42 addObjectsFromArray:v16];

    v17 = [v13 contentView];
    v38 = [v14 leadingAnchor];
    v37 = [v17 leadingAnchor];
    v36 = [v38 constraintGreaterThanOrEqualToAnchor:v37];
    v44[0] = v36;
    v35 = [v14 trailingAnchor];
    v34 = [v17 trailingAnchor];
    v33 = [v35 constraintLessThanOrEqualToAnchor:v34];
    v44[1] = v33;
    v32 = [v14 topAnchor];
    v31 = [v17 topAnchor];
    v30 = [v32 constraintGreaterThanOrEqualToAnchor:v31];
    v44[2] = v30;
    v29 = [v14 bottomAnchor];
    v28 = [v17 bottomAnchor];
    v27 = [v29 constraintLessThanOrEqualToAnchor:v28];
    v44[3] = v27;
    v18 = [v14 centerXAnchor];
    v19 = [v17 centerXAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v44[4] = v20;
    [v14 centerYAnchor];
    v40 = v8;
    v22 = v21 = v6;
    v23 = [v17 centerYAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v44[5] = v24;
    v25 = [NSArray arrayWithObjects:v44 count:6];
    [v42 addObjectsFromArray:v25];

    v6 = v21;
    v8 = v40;

    v7 = v41;
    [NSLayoutConstraint activateConstraints:v42];
    [(GAXIconView *)v40 setIcon:v6];
  }

  return v8;
}

@end
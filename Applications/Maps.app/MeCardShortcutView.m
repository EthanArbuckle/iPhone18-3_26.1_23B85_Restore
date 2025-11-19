@interface MeCardShortcutView
- (MeCardShortcutView)initWithContact:(id)a3;
- (void)_createViews;
@end

@implementation MeCardShortcutView

- (void)_createViews
{
  v3 = [UIImageView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UIImageView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[UIColor clearColor];
  [(UIImageView *)v7 setBackgroundColor:v8];

  v9 = +[UIColor blackColor];
  v10 = [v9 colorWithAlphaComponent:0.140000001];
  v11 = [v10 CGColor];
  v12 = [(UIImageView *)v7 layer];
  [v12 setShadowColor:v11];

  v13 = [(UIImageView *)v7 layer];
  [v13 setShadowOffset:{0.0, 10.0}];

  v14 = [(UIImageView *)v7 layer];
  [v14 setShadowRadius:4.0];

  v15 = [(UIImageView *)v7 layer];
  LODWORD(v16) = 0.25;
  [v15 setShadowOpacity:v16];

  [(MeCardShortcutView *)self addSubview:v7];
  schoolImageview = self->_schoolImageview;
  self->_schoolImageview = v7;
  v18 = v7;

  v19 = [UIImageView alloc];
  v20 = [v19 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UIImageView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = +[UIColor clearColor];
  [(UIImageView *)v20 setBackgroundColor:v21];

  v22 = +[UIColor blackColor];
  v23 = [v22 colorWithAlphaComponent:0.140000001];
  v24 = [v23 CGColor];
  v25 = [(UIImageView *)v20 layer];
  [v25 setShadowColor:v24];

  v26 = [(UIImageView *)v20 layer];
  [v26 setShadowOffset:{0.0, 10.0}];

  v27 = [(UIImageView *)v20 layer];
  [v27 setShadowRadius:4.0];

  v28 = [(UIImageView *)v20 layer];
  LODWORD(v29) = 0.25;
  [v28 setShadowOpacity:v29];

  [(MeCardShortcutView *)self addSubview:v20];
  workImageview = self->_workImageview;
  self->_workImageview = v20;
  v31 = v20;

  v32 = [UIImageView alloc];
  v33 = [v32 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = +[UIColor clearColor];
  [v33 setBackgroundColor:v34];

  v35 = +[UIColor blackColor];
  v36 = [v35 colorWithAlphaComponent:0.140000001];
  v37 = [v36 CGColor];
  v38 = [v33 layer];
  [v38 setShadowColor:v37];

  v39 = [v33 layer];
  [v39 setShadowOffset:{0.0, 10.0}];

  v40 = [v33 layer];
  [v40 setShadowRadius:4.0];

  v41 = [v33 layer];
  LODWORD(v42) = 0.25;
  [v41 setShadowOpacity:v42];

  [(MeCardShortcutView *)self addSubview:v33];
  p_homeImageview = &self->_homeImageview;
  v101 = v33;
  objc_storeStrong(&self->_homeImageview, v33);
  v44 = [(MeCardShortcutView *)self traitCollection];
  v45 = [v44 userInterfaceIdiom];

  v46 = [(MeCardShortcutView *)self traitCollection];
  v47 = [v46 userInterfaceIdiom];

  v48 = [(MeCardShortcutView *)self traitCollection];
  v49 = [v48 userInterfaceIdiom];

  if (sub_10000FA08(self) == 5)
  {
    v50 = [(UIImageView *)*p_homeImageview leadingAnchor];
    v51 = [(MeCardShortcutView *)self leadingAnchor];
    [v50 constraintEqualToAnchor:v51 constant:17.0];
  }

  else
  {
    v50 = [(UIImageView *)self->_workImageview centerXAnchor];
    v51 = [(MeCardShortcutView *)self centerXAnchor];
    [v50 constraintEqualToAnchor:v51];
  }
  v102 = ;

  if (v49 == 5)
  {
    v52 = 6.0;
  }

  else
  {
    v52 = 10.0;
  }

  if (v47 == 5)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = 14.0;
  }

  if (v45 == 5)
  {
    v54 = 41.0;
  }

  else
  {
    v54 = 60.0;
  }

  v100 = [(UIImageView *)*p_homeImageview topAnchor];
  v99 = [(UIImageView *)self->_workImageview topAnchor];
  v98 = [v100 constraintEqualToAnchor:v99];
  v106[0] = v98;
  v97 = [(UIImageView *)*p_homeImageview bottomAnchor];
  v96 = [(UIImageView *)self->_workImageview bottomAnchor];
  v95 = [v97 constraintEqualToAnchor:v96];
  v106[1] = v95;
  v94 = [(UIImageView *)*p_homeImageview widthAnchor];
  v93 = [v94 constraintEqualToConstant:v54];
  v106[2] = v93;
  v92 = [(UIImageView *)*p_homeImageview heightAnchor];
  v91 = [(UIImageView *)*p_homeImageview widthAnchor];
  v90 = [v92 constraintEqualToAnchor:v91];
  v106[3] = v90;
  v89 = [(UIImageView *)*p_homeImageview trailingAnchor];
  v88 = [(UIImageView *)self->_workImageview leadingAnchor];
  v87 = [v89 constraintEqualToAnchor:v88 constant:v52];
  v106[4] = v87;
  v86 = [(UIImageView *)self->_workImageview topAnchor];
  v85 = [(MeCardShortcutView *)self topAnchor];
  v84 = [v86 constraintEqualToAnchor:v85 constant:v53];
  v106[5] = v84;
  v83 = [(UIImageView *)self->_workImageview bottomAnchor];
  v82 = [(MeCardShortcutView *)self bottomAnchor];
  v81 = [v83 constraintEqualToAnchor:v82 constant:-v53];
  v106[6] = v81;
  v80 = [(UIImageView *)self->_workImageview widthAnchor];
  v79 = [v80 constraintEqualToConstant:v54];
  v106[7] = v79;
  v78 = [(UIImageView *)self->_workImageview widthAnchor];
  v77 = [(UIImageView *)self->_workImageview heightAnchor];
  v76 = [v78 constraintEqualToAnchor:v77];
  v106[8] = v76;
  v75 = [(UIImageView *)self->_schoolImageview topAnchor];
  v74 = [(UIImageView *)self->_workImageview topAnchor];
  v73 = [v75 constraintEqualToAnchor:v74];
  v106[9] = v73;
  v72 = [(UIImageView *)self->_schoolImageview bottomAnchor];
  v71 = [(UIImageView *)self->_workImageview bottomAnchor];
  v70 = [v72 constraintEqualToAnchor:v71];
  v106[10] = v70;
  v55 = [(UIImageView *)self->_schoolImageview widthAnchor];
  v56 = [v55 constraintEqualToConstant:v54];
  v106[11] = v56;
  v57 = [(UIImageView *)self->_schoolImageview widthAnchor];
  v58 = [(UIImageView *)self->_schoolImageview heightAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];
  v106[12] = v59;
  v60 = [(UIImageView *)self->_schoolImageview leadingAnchor];
  v61 = [(UIImageView *)self->_workImageview trailingAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:-v52];
  v106[13] = v62;
  v106[14] = v102;
  v63 = [NSArray arrayWithObjects:v106 count:15];
  [NSLayoutConstraint activateConstraints:v63];

  v64 = +[MapsUIImageCache sharedCache];
  v65 = +[GEOFeatureStyleAttributes homeStyleAttributes];
  v105[0] = _NSConcreteStackBlock;
  v105[1] = 3221225472;
  v105[2] = sub_100CB1148;
  v105[3] = &unk_1016519B0;
  v105[4] = self;
  [v64 getImageForStyleAttributes:v65 completion:v105];

  v66 = +[MapsUIImageCache sharedCache];
  v67 = +[GEOFeatureStyleAttributes workStyleAttributes];
  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_100CB1160;
  v104[3] = &unk_1016519B0;
  v104[4] = self;
  [v66 getImageForStyleAttributes:v67 completion:v104];

  v68 = +[MapsUIImageCache sharedCache];
  v69 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
  v103[0] = _NSConcreteStackBlock;
  v103[1] = 3221225472;
  v103[2] = sub_100CB1178;
  v103[3] = &unk_1016519B0;
  v103[4] = self;
  [v68 getImageForStyleAttributes:v69 completion:v103];
}

- (MeCardShortcutView)initWithContact:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MeCardShortcutView;
  v6 = [(MeCardShortcutView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, a3);
    [(MeCardShortcutView *)v7 _createViews];
  }

  return v7;
}

@end
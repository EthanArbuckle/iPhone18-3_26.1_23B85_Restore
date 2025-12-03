@interface MeCardShortcutView
- (MeCardShortcutView)initWithContact:(id)contact;
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
  cGColor = [v10 CGColor];
  layer = [(UIImageView *)v7 layer];
  [layer setShadowColor:cGColor];

  layer2 = [(UIImageView *)v7 layer];
  [layer2 setShadowOffset:{0.0, 10.0}];

  layer3 = [(UIImageView *)v7 layer];
  [layer3 setShadowRadius:4.0];

  layer4 = [(UIImageView *)v7 layer];
  LODWORD(v16) = 0.25;
  [layer4 setShadowOpacity:v16];

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
  cGColor2 = [v23 CGColor];
  layer5 = [(UIImageView *)v20 layer];
  [layer5 setShadowColor:cGColor2];

  layer6 = [(UIImageView *)v20 layer];
  [layer6 setShadowOffset:{0.0, 10.0}];

  layer7 = [(UIImageView *)v20 layer];
  [layer7 setShadowRadius:4.0];

  layer8 = [(UIImageView *)v20 layer];
  LODWORD(v29) = 0.25;
  [layer8 setShadowOpacity:v29];

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
  cGColor3 = [v36 CGColor];
  layer9 = [v33 layer];
  [layer9 setShadowColor:cGColor3];

  layer10 = [v33 layer];
  [layer10 setShadowOffset:{0.0, 10.0}];

  layer11 = [v33 layer];
  [layer11 setShadowRadius:4.0];

  layer12 = [v33 layer];
  LODWORD(v42) = 0.25;
  [layer12 setShadowOpacity:v42];

  [(MeCardShortcutView *)self addSubview:v33];
  p_homeImageview = &self->_homeImageview;
  v101 = v33;
  objc_storeStrong(&self->_homeImageview, v33);
  traitCollection = [(MeCardShortcutView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  traitCollection2 = [(MeCardShortcutView *)self traitCollection];
  userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

  traitCollection3 = [(MeCardShortcutView *)self traitCollection];
  userInterfaceIdiom3 = [traitCollection3 userInterfaceIdiom];

  if (sub_10000FA08(self) == 5)
  {
    leadingAnchor = [(UIImageView *)*p_homeImageview leadingAnchor];
    leadingAnchor2 = [(MeCardShortcutView *)self leadingAnchor];
    [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:17.0];
  }

  else
  {
    leadingAnchor = [(UIImageView *)self->_workImageview centerXAnchor];
    leadingAnchor2 = [(MeCardShortcutView *)self centerXAnchor];
    [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  }
  v102 = ;

  if (userInterfaceIdiom3 == 5)
  {
    v52 = 6.0;
  }

  else
  {
    v52 = 10.0;
  }

  if (userInterfaceIdiom2 == 5)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = 14.0;
  }

  if (userInterfaceIdiom == 5)
  {
    v54 = 41.0;
  }

  else
  {
    v54 = 60.0;
  }

  topAnchor = [(UIImageView *)*p_homeImageview topAnchor];
  topAnchor2 = [(UIImageView *)self->_workImageview topAnchor];
  v98 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v106[0] = v98;
  bottomAnchor = [(UIImageView *)*p_homeImageview bottomAnchor];
  bottomAnchor2 = [(UIImageView *)self->_workImageview bottomAnchor];
  v95 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v106[1] = v95;
  widthAnchor = [(UIImageView *)*p_homeImageview widthAnchor];
  v93 = [widthAnchor constraintEqualToConstant:v54];
  v106[2] = v93;
  heightAnchor = [(UIImageView *)*p_homeImageview heightAnchor];
  widthAnchor2 = [(UIImageView *)*p_homeImageview widthAnchor];
  v90 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v106[3] = v90;
  trailingAnchor = [(UIImageView *)*p_homeImageview trailingAnchor];
  leadingAnchor3 = [(UIImageView *)self->_workImageview leadingAnchor];
  v87 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:v52];
  v106[4] = v87;
  topAnchor3 = [(UIImageView *)self->_workImageview topAnchor];
  topAnchor4 = [(MeCardShortcutView *)self topAnchor];
  v84 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:v53];
  v106[5] = v84;
  bottomAnchor3 = [(UIImageView *)self->_workImageview bottomAnchor];
  bottomAnchor4 = [(MeCardShortcutView *)self bottomAnchor];
  v81 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-v53];
  v106[6] = v81;
  widthAnchor3 = [(UIImageView *)self->_workImageview widthAnchor];
  v79 = [widthAnchor3 constraintEqualToConstant:v54];
  v106[7] = v79;
  widthAnchor4 = [(UIImageView *)self->_workImageview widthAnchor];
  heightAnchor2 = [(UIImageView *)self->_workImageview heightAnchor];
  v76 = [widthAnchor4 constraintEqualToAnchor:heightAnchor2];
  v106[8] = v76;
  topAnchor5 = [(UIImageView *)self->_schoolImageview topAnchor];
  topAnchor6 = [(UIImageView *)self->_workImageview topAnchor];
  v73 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v106[9] = v73;
  bottomAnchor5 = [(UIImageView *)self->_schoolImageview bottomAnchor];
  bottomAnchor6 = [(UIImageView *)self->_workImageview bottomAnchor];
  v70 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v106[10] = v70;
  widthAnchor5 = [(UIImageView *)self->_schoolImageview widthAnchor];
  v56 = [widthAnchor5 constraintEqualToConstant:v54];
  v106[11] = v56;
  widthAnchor6 = [(UIImageView *)self->_schoolImageview widthAnchor];
  heightAnchor3 = [(UIImageView *)self->_schoolImageview heightAnchor];
  v59 = [widthAnchor6 constraintEqualToAnchor:heightAnchor3];
  v106[12] = v59;
  leadingAnchor4 = [(UIImageView *)self->_schoolImageview leadingAnchor];
  trailingAnchor2 = [(UIImageView *)self->_workImageview trailingAnchor];
  v62 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2 constant:-v52];
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

- (MeCardShortcutView)initWithContact:(id)contact
{
  contactCopy = contact;
  v9.receiver = self;
  v9.super_class = MeCardShortcutView;
  v6 = [(MeCardShortcutView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, contact);
    [(MeCardShortcutView *)v7 _createViews];
  }

  return v7;
}

@end
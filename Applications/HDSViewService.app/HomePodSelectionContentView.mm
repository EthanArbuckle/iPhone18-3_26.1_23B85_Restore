@interface HomePodSelectionContentView
- (HomePodSelectionContentView)initWithTitle:(id)title allowsRandomVoiceSelection:(BOOL)selection;
- (void)_setupConstraintsToSize;
- (void)_setupContentWithTitle:(id)title;
- (void)dealloc;
@end

@implementation HomePodSelectionContentView

- (HomePodSelectionContentView)initWithTitle:(id)title allowsRandomVoiceSelection:(BOOL)selection
{
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = HomePodSelectionContentView;
  v7 = [(HomePodSelectionContentView *)&v12 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v7)
  {
    v8 = +[VTUIStyle sharedStyle];
    vtStyle = v7->_vtStyle;
    v7->_vtStyle = v8;

    v7->_allowsRandomVoiceSelection = selection;
    [(HomePodSelectionContentView *)v7 _setupContentWithTitle:titleCopy];
    [(HomePodSelectionContentView *)v7 _setupConstraintsToSize];
    v10 = +[UIColor clearColor];
    [(HomePodSelectionContentView *)v7 setBackgroundColor:v10];
  }

  return v7;
}

- (void)dealloc
{
  [(SUICOrbView *)self->_orbView invalidate];
  v3.receiver = self;
  v3.super_class = HomePodSelectionContentView;
  [(HomePodSelectionContentView *)&v3 dealloc];
}

- (void)_setupContentWithTitle:(id)title
{
  titleCopy = title;
  v5 = [SUICOrbView alloc];
  [(VTUIStyle *)self->_vtStyle orbLength];
  v7 = v6;
  [(VTUIStyle *)self->_vtStyle orbLength];
  v9 = [v5 initWithFrame:{0.0, 0.0, v7, v8}];
  orbView = self->_orbView;
  self->_orbView = v9;

  [(SUICOrbView *)self->_orbView setMode:3];
  [(HomePodSelectionContentView *)self addSubview:self->_orbView];
  v11 = objc_alloc_init(UILabel);
  selectionLabel = self->_selectionLabel;
  self->_selectionLabel = v11;

  [(UILabel *)self->_selectionLabel setNumberOfLines:3];
  [(UILabel *)self->_selectionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = self->_selectionLabel;
  proxHeaderFont = [(VTUIStyle *)self->_vtStyle proxHeaderFont];
  [(UILabel *)v13 setFont:proxHeaderFont];

  v15 = self->_selectionLabel;
  proxHeaderColor = [(VTUIStyle *)self->_vtStyle proxHeaderColor];
  [(UILabel *)v15 setTextColor:proxHeaderColor];

  [(UILabel *)self->_selectionLabel setTextAlignment:1];
  [(UILabel *)self->_selectionLabel setText:titleCopy];

  [(UILabel *)self->_selectionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HomePodSelectionContentView *)self addSubview:self->_selectionLabel];
  v17 = objc_alloc_init(HomePodVoiceSelectionOptionsView);
  [(HomePodVoiceSelectionOptionsView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HomePodSelectionContentView *)self setVoiceOptionsView:v17];
  [(HomePodSelectionContentView *)self addSubview:v17];
}

- (void)_setupConstraintsToSize
{
  v41 = +[NSMutableArray array];
  firstBaselineAnchor = [(SUICOrbView *)self->_orbView firstBaselineAnchor];
  topAnchor = [(HomePodSelectionContentView *)self topAnchor];
  [(VTUIStyle *)self->_vtStyle orbOffsetFromTopEnrollment];
  v32 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  v44[0] = v32;
  centerXAnchor = [(SUICOrbView *)self->_orbView centerXAnchor];
  centerXAnchor2 = [(HomePodSelectionContentView *)self centerXAnchor];
  v4 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v44[1] = v4;
  widthAnchor = [(SUICOrbView *)self->_orbView widthAnchor];
  [(VTUIStyle *)self->_vtStyle orbLength];
  v6 = [widthAnchor constraintEqualToConstant:?];
  v44[2] = v6;
  heightAnchor = [(SUICOrbView *)self->_orbView heightAnchor];
  [(VTUIStyle *)self->_vtStyle orbLength];
  v8 = [heightAnchor constraintEqualToConstant:?];
  v44[3] = v8;
  v9 = [NSArray arrayWithObjects:v44 count:4];
  [v41 addObjectsFromArray:v9];

  topAnchor2 = [(UILabel *)self->_selectionLabel topAnchor];
  bottomAnchor = [(SUICOrbView *)self->_orbView bottomAnchor];
  [(VTUIStyle *)self->_vtStyle titleOffsetFromOrb];
  v33 = [topAnchor2 constraintEqualToAnchor:bottomAnchor constant:?];
  v43[0] = v33;
  leadingAnchor = [(UILabel *)self->_selectionLabel leadingAnchor];
  leadingAnchor2 = [(HomePodSelectionContentView *)self leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v43[1] = v11;
  trailingAnchor = [(UILabel *)self->_selectionLabel trailingAnchor];
  trailingAnchor2 = [(HomePodSelectionContentView *)self trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
  v43[2] = v14;
  heightAnchor2 = [(UILabel *)self->_selectionLabel heightAnchor];
  v16 = [heightAnchor2 constraintEqualToConstant:50.0];
  v43[3] = v16;
  v17 = [NSArray arrayWithObjects:v43 count:4];
  [v41 addObjectsFromArray:v17];

  topAnchor3 = [(HomePodVoiceSelectionOptionsView *)self->_voiceOptionsView topAnchor];
  bottomAnchor2 = [(UILabel *)self->_selectionLabel bottomAnchor];
  v34 = [topAnchor3 constraintEqualToAnchor:bottomAnchor2 constant:0.0];
  v42[0] = v34;
  trailingAnchor3 = [(HomePodVoiceSelectionOptionsView *)self->_voiceOptionsView trailingAnchor];
  trailingAnchor4 = [(HomePodSelectionContentView *)self trailingAnchor];
  v18 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:0.0];
  v42[1] = v18;
  leadingAnchor3 = [(HomePodVoiceSelectionOptionsView *)self->_voiceOptionsView leadingAnchor];
  leadingAnchor4 = [(HomePodSelectionContentView *)self leadingAnchor];
  v21 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:0.0];
  v42[2] = v21;
  bottomAnchor3 = [(HomePodVoiceSelectionOptionsView *)self->_voiceOptionsView bottomAnchor];
  bottomAnchor4 = [(HomePodSelectionContentView *)self bottomAnchor];
  v24 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:0.0];
  v42[3] = v24;
  v25 = [NSArray arrayWithObjects:v42 count:4];
  [v41 addObjectsFromArray:v25];

  [NSLayoutConstraint activateConstraints:v41];
  v26 = [NSArray arrayWithArray:v41];
  constraints = self->_constraints;
  self->_constraints = v26;
}

@end
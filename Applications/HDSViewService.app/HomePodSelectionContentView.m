@interface HomePodSelectionContentView
- (HomePodSelectionContentView)initWithTitle:(id)a3 allowsRandomVoiceSelection:(BOOL)a4;
- (void)_setupConstraintsToSize;
- (void)_setupContentWithTitle:(id)a3;
- (void)dealloc;
@end

@implementation HomePodSelectionContentView

- (HomePodSelectionContentView)initWithTitle:(id)a3 allowsRandomVoiceSelection:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = HomePodSelectionContentView;
  v7 = [(HomePodSelectionContentView *)&v12 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v7)
  {
    v8 = +[VTUIStyle sharedStyle];
    vtStyle = v7->_vtStyle;
    v7->_vtStyle = v8;

    v7->_allowsRandomVoiceSelection = a4;
    [(HomePodSelectionContentView *)v7 _setupContentWithTitle:v6];
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

- (void)_setupContentWithTitle:(id)a3
{
  v4 = a3;
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
  v14 = [(VTUIStyle *)self->_vtStyle proxHeaderFont];
  [(UILabel *)v13 setFont:v14];

  v15 = self->_selectionLabel;
  v16 = [(VTUIStyle *)self->_vtStyle proxHeaderColor];
  [(UILabel *)v15 setTextColor:v16];

  [(UILabel *)self->_selectionLabel setTextAlignment:1];
  [(UILabel *)self->_selectionLabel setText:v4];

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
  v38 = [(SUICOrbView *)self->_orbView firstBaselineAnchor];
  v35 = [(HomePodSelectionContentView *)self topAnchor];
  [(VTUIStyle *)self->_vtStyle orbOffsetFromTopEnrollment];
  v32 = [v38 constraintEqualToAnchor:v35 constant:?];
  v44[0] = v32;
  v29 = [(SUICOrbView *)self->_orbView centerXAnchor];
  v3 = [(HomePodSelectionContentView *)self centerXAnchor];
  v4 = [v29 constraintEqualToAnchor:v3];
  v44[1] = v4;
  v5 = [(SUICOrbView *)self->_orbView widthAnchor];
  [(VTUIStyle *)self->_vtStyle orbLength];
  v6 = [v5 constraintEqualToConstant:?];
  v44[2] = v6;
  v7 = [(SUICOrbView *)self->_orbView heightAnchor];
  [(VTUIStyle *)self->_vtStyle orbLength];
  v8 = [v7 constraintEqualToConstant:?];
  v44[3] = v8;
  v9 = [NSArray arrayWithObjects:v44 count:4];
  [v41 addObjectsFromArray:v9];

  v39 = [(UILabel *)self->_selectionLabel topAnchor];
  v36 = [(SUICOrbView *)self->_orbView bottomAnchor];
  [(VTUIStyle *)self->_vtStyle titleOffsetFromOrb];
  v33 = [v39 constraintEqualToAnchor:v36 constant:?];
  v43[0] = v33;
  v30 = [(UILabel *)self->_selectionLabel leadingAnchor];
  v10 = [(HomePodSelectionContentView *)self leadingAnchor];
  v11 = [v30 constraintEqualToAnchor:v10 constant:0.0];
  v43[1] = v11;
  v12 = [(UILabel *)self->_selectionLabel trailingAnchor];
  v13 = [(HomePodSelectionContentView *)self trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:0.0];
  v43[2] = v14;
  v15 = [(UILabel *)self->_selectionLabel heightAnchor];
  v16 = [v15 constraintEqualToConstant:50.0];
  v43[3] = v16;
  v17 = [NSArray arrayWithObjects:v43 count:4];
  [v41 addObjectsFromArray:v17];

  v40 = [(HomePodVoiceSelectionOptionsView *)self->_voiceOptionsView topAnchor];
  v37 = [(UILabel *)self->_selectionLabel bottomAnchor];
  v34 = [v40 constraintEqualToAnchor:v37 constant:0.0];
  v42[0] = v34;
  v31 = [(HomePodVoiceSelectionOptionsView *)self->_voiceOptionsView trailingAnchor];
  v28 = [(HomePodSelectionContentView *)self trailingAnchor];
  v18 = [v31 constraintEqualToAnchor:v28 constant:0.0];
  v42[1] = v18;
  v19 = [(HomePodVoiceSelectionOptionsView *)self->_voiceOptionsView leadingAnchor];
  v20 = [(HomePodSelectionContentView *)self leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:0.0];
  v42[2] = v21;
  v22 = [(HomePodVoiceSelectionOptionsView *)self->_voiceOptionsView bottomAnchor];
  v23 = [(HomePodSelectionContentView *)self bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:0.0];
  v42[3] = v24;
  v25 = [NSArray arrayWithObjects:v42 count:4];
  [v41 addObjectsFromArray:v25];

  [NSLayoutConstraint activateConstraints:v41];
  v26 = [NSArray arrayWithArray:v41];
  constraints = self->_constraints;
  self->_constraints = v26;
}

@end
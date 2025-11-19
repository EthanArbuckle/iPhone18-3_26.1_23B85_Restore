@interface MapsRadioButton
+ (id)buttonWithGroupIdentifier:(id)a3;
- (CGSize)intrinsicContentSize;
- (MapsRadioButton)initWithFrame:(CGRect)a3;
- (UILabel)associatedLabel;
- (double)sizingLength;
- (void)_fireAction;
- (void)_otherButtonDidChange:(id)a3;
- (void)setAssociatedLabel:(id)a3;
- (void)setControlSize:(int)a3;
- (void)setGroupIdentifier:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation MapsRadioButton

- (UILabel)associatedLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedLabel);

  return WeakRetained;
}

- (CGSize)intrinsicContentSize
{
  [(MapsRadioButton *)self sizingLength];
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)sizingLength
{
  if ([(MapsRadioButton *)self controlSize])
  {
    return 14;
  }

  else
  {
    return 16;
  }
}

- (void)setAssociatedLabel:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_associatedLabel);

  if (WeakRetained != obj)
  {
    if (self->_labelTapGesture)
    {
      v5 = objc_loadWeakRetained(&self->_associatedLabel);

      if (v5)
      {
        v6 = objc_loadWeakRetained(&self->_associatedLabel);
        [v6 removeGestureRecognizer:self->_labelTapGesture];
      }
    }

    v7 = objc_storeWeak(&self->_associatedLabel, obj);

    if (obj)
    {
      if (!self->_labelTapGesture)
      {
        v8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_labelTapped"];
        labelTapGesture = self->_labelTapGesture;
        self->_labelTapGesture = v8;
      }

      v10 = objc_loadWeakRetained(&self->_associatedLabel);
      [v10 setUserInteractionEnabled:1];

      v11 = objc_loadWeakRetained(&self->_associatedLabel);
      [v11 addGestureRecognizer:self->_labelTapGesture];
    }
  }
}

- (void)_fireAction
{
  [(MapsRadioButton *)self setSelected:1];

  [(MapsRadioButton *)self sendActionsForControlEvents:4096];
}

- (void)_otherButtonDidChange:(id)a3
{
  v8 = a3;
  v4 = [v8 object];
  if (v4 && [(MapsRadioButton *)self isSelected])
  {
    v5 = [v8 object];
    v6 = [v5 isEqual:self->_groupIdentifier];

    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = [v8 userInfo];
    v4 = [v7 objectForKeyedSubscript:@"button"];

    if (v4 != self)
    {
      [(MapsRadioButton *)self setSelected:0];
    }
  }

LABEL_7:
}

- (void)setGroupIdentifier:(id)a3
{
  v4 = a3;
  groupIdentifier = self->_groupIdentifier;
  v13 = v4;
  v6 = groupIdentifier;
  v7 = v13;
  if (v13 | v6)
  {
    v8 = [v13 isEqual:v6];

    v7 = v13;
    if ((v8 & 1) == 0)
    {
      if (self->_groupIdentifier)
      {
        v9 = +[NSNotificationCenter defaultCenter];
        [v9 removeObserver:self name:@"MapsRadioButtonDidChangeNotification" object:self->_groupIdentifier];
      }

      v10 = [v13 copyWithZone:0];
      v11 = self->_groupIdentifier;
      self->_groupIdentifier = v10;

      v7 = v13;
      if (self->_groupIdentifier)
      {
        v12 = +[NSNotificationCenter defaultCenter];
        [v12 addObserver:self selector:"_otherButtonDidChange:" name:@"MapsRadioButtonDidChangeNotification" object:self->_groupIdentifier];

        v7 = v13;
      }
    }
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(UIButton *)self->_button isSelected]!= a3)
  {
    [(UIButton *)self->_button setSelected:v3];
    if (v3)
    {
      v5 = +[NSNotificationCenter defaultCenter];
      v6 = [(MapsRadioButton *)self groupIdentifier];
      v8 = @"button";
      v9 = self;
      v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      [v5 postNotificationName:@"MapsRadioButtonDidChangeNotification" object:v6 userInfo:v7];
    }
  }
}

- (void)setControlSize:(int)a3
{
  if (self->_controlSize != a3)
  {
    self->_controlSize = a3;
    [(MapsRadioButton *)self invalidateIntrinsicContentSize];
  }
}

- (MapsRadioButton)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = MapsRadioButton;
  v3 = [(MapsRadioButton *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIButton buttonWithType:0];
    button = v3->_button;
    v3->_button = v4;

    [(UIButton *)v3->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [UIImage imageNamed:@"RadioButton-Unselected"];
    [(UIButton *)v3->_button setImage:v6 forState:0];
    [(MapsRadioButton *)v3 sizingLength];
    v7 = [UIImageSymbolConfiguration configurationWithPointSize:?];
    v8 = [UIImage systemImageNamed:@"smallcircle.fill.circle.fill" withConfiguration:v7];
    v9 = [v8 imageWithRenderingMode:2];

    [(UIButton *)v3->_button setImage:v9 forState:4];
    [(UIButton *)v3->_button addTarget:v3 action:"_buttonTapped:" forControlEvents:64];
    [(MapsRadioButton *)v3 addSubview:v3->_button];
    LODWORD(v10) = 1148846080;
    v11 = [(UIButton *)v3->_button _maps_constraintsEqualToEdgesOfView:v3 priority:v10];
    v12 = [v11 allConstraints];
    [NSLayoutConstraint activateConstraints:v12];

    v13 = [(MapsRadioButton *)v3 heightAnchor];
    v14 = [(MapsRadioButton *)v3 widthAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v19 = v15;
    v16 = [NSArray arrayWithObjects:&v19 count:1];
    [NSLayoutConstraint activateConstraints:v16];
  }

  return v3;
}

+ (id)buttonWithGroupIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v5 setGroupIdentifier:v4];

  return v5;
}

@end
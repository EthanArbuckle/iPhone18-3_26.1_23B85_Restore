@interface MapsRadioButton
+ (id)buttonWithGroupIdentifier:(id)identifier;
- (CGSize)intrinsicContentSize;
- (MapsRadioButton)initWithFrame:(CGRect)frame;
- (UILabel)associatedLabel;
- (double)sizingLength;
- (void)_fireAction;
- (void)_otherButtonDidChange:(id)change;
- (void)setAssociatedLabel:(id)label;
- (void)setControlSize:(int)size;
- (void)setGroupIdentifier:(id)identifier;
- (void)setSelected:(BOOL)selected;
@end

@implementation MapsRadioButton

+ (id)buttonWithGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v5 setGroupIdentifier:identifierCopy];

  return v5;
}

- (MapsRadioButton)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = MapsRadioButton;
  v3 = [(MapsRadioButton *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    allConstraints = [v11 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];

    heightAnchor = [(MapsRadioButton *)v3 heightAnchor];
    widthAnchor = [(MapsRadioButton *)v3 widthAnchor];
    v15 = [heightAnchor constraintEqualToAnchor:widthAnchor];
    v19 = v15;
    v16 = [NSArray arrayWithObjects:&v19 count:1];
    [NSLayoutConstraint activateConstraints:v16];
  }

  return v3;
}

- (void)setControlSize:(int)size
{
  if (self->_controlSize != size)
  {
    self->_controlSize = size;
    [(MapsRadioButton *)self invalidateIntrinsicContentSize];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(UIButton *)self->_button isSelected]!= selected)
  {
    [(UIButton *)self->_button setSelected:selectedCopy];
    if (selectedCopy)
    {
      v5 = +[NSNotificationCenter defaultCenter];
      groupIdentifier = [(MapsRadioButton *)self groupIdentifier];
      v8 = @"button";
      selfCopy = self;
      v7 = [NSDictionary dictionaryWithObjects:&selfCopy forKeys:&v8 count:1];
      [v5 postNotificationName:@"MapsRadioButtonDidChangeNotification" object:groupIdentifier userInfo:v7];
    }
  }
}

- (void)setGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  groupIdentifier = self->_groupIdentifier;
  v13 = identifierCopy;
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

- (void)_otherButtonDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  if (object && [(MapsRadioButton *)self isSelected])
  {
    object2 = [changeCopy object];
    v6 = [object2 isEqual:self->_groupIdentifier];

    if (!v6)
    {
      goto LABEL_7;
    }

    userInfo = [changeCopy userInfo];
    object = [userInfo objectForKeyedSubscript:@"button"];

    if (object != self)
    {
      [(MapsRadioButton *)self setSelected:0];
    }
  }

LABEL_7:
}

- (void)_fireAction
{
  [(MapsRadioButton *)self setSelected:1];

  [(MapsRadioButton *)self sendActionsForControlEvents:4096];
}

- (void)setAssociatedLabel:(id)label
{
  obj = label;
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

- (CGSize)intrinsicContentSize
{
  [(MapsRadioButton *)self sizingLength];
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UILabel)associatedLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedLabel);

  return WeakRetained;
}

@end
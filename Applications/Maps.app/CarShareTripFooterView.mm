@interface CarShareTripFooterView
- (CarShareTripFooterView)initWithFrame:(CGRect)frame;
- (void)setHandleText:(id)text;
- (void)setNameText:(id)text;
@end

@implementation CarShareTripFooterView

- (void)setHandleText:(id)text
{
  if (!text)
  {
    text = &stru_1016631F0;
  }

  [(UILabel *)self->_handleLabel setText:text];
}

- (void)setNameText:(id)text
{
  if (!text)
  {
    text = &stru_1016631F0;
  }

  [(UILabel *)self->_nameLabel setText:text];
}

- (CarShareTripFooterView)initWithFrame:(CGRect)frame
{
  v37.receiver = self;
  v37.super_class = CarShareTripFooterView;
  v3 = [(CarShareTripFooterView *)&v37 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarShareTripFooterView *)v3 setAccessibilityIdentifier:@"CarShareTripFooterView"];
    v5 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v9 setAccessibilityIdentifier:@"HeaderLabel"];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v10) = 1148846080;
    [v9 setContentCompressionResistancePriority:1 forAxis:v10];
    LODWORD(v11) = 1148846080;
    [v9 setContentHuggingPriority:1 forAxis:v11];
    v12 = +[UIColor _carSystemPrimaryColor];
    [v9 setTextColor:v12];

    v13 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightRegular];
    [v9 setFont:v13];

    [v9 setNumberOfLines:0];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"CarPlay_ShareTrip_SenderInfo_Footer" value:@"localized string not found" table:0];
    [v9 setText:v15];

    [(CarShareTripFooterView *)v4 addSubview:v9];
    v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(UILabel *)v16 setAccessibilityIdentifier:@"NameLabel"];
    [(UILabel *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v17) = 1148846080;
    [(UILabel *)v16 setContentCompressionResistancePriority:1 forAxis:v17];
    LODWORD(v18) = 1144750080;
    [v9 setContentHuggingPriority:1 forAxis:v18];
    v19 = +[UIColor _carSystemPrimaryColor];
    [(UILabel *)v16 setTextColor:v19];

    v20 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightRegular];
    [(UILabel *)v16 setFont:v20];

    [(UILabel *)v16 setNumberOfLines:0];
    [(UILabel *)v16 setText:&stru_1016631F0];
    [(CarShareTripFooterView *)v4 addSubview:v16];
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v16;
    v22 = v16;

    v23 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(UILabel *)v23 setAccessibilityIdentifier:@"HandleLabel"];
    [(UILabel *)v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v24) = 1148846080;
    [(UILabel *)v23 setContentCompressionResistancePriority:1 forAxis:v24];
    LODWORD(v25) = 1144750080;
    [v9 setContentHuggingPriority:1 forAxis:v25];
    v26 = +[UIColor _carSystemSecondaryColor];
    [(UILabel *)v23 setTextColor:v26];

    v27 = [UIFont systemFontOfSize:10.0];
    [(UILabel *)v23 setFont:v27];

    [(UILabel *)v23 setLineBreakMode:5];
    [(UILabel *)v23 setText:&stru_1016631F0];
    [(CarShareTripFooterView *)v4 addSubview:v23];
    handleLabel = v4->_handleLabel;
    v4->_handleLabel = v23;
    v29 = v23;

    v30 = _NSDictionaryOfVariableBindings(@"headerLabel, nameLabel, handleLabel", v9, v22, v29, 0);
    v38[0] = @"v";
    v31 = [NSNumber numberWithDouble:*&qword_10193E350];
    v38[1] = @"h";
    v39[0] = v31;
    v39[1] = &off_1016E99F8;
    v32 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];

    v33 = objc_alloc_init(NSMutableArray);
    v34 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-v-[headerLabel][nameLabel][handleLabel]-v-|", 96, v32, v30);
    [v33 addObjectsFromArray:v34];

    v35 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-h-[headerLabel]-h-|", 0, v32, v30);
    [v33 addObjectsFromArray:v35];

    [NSLayoutConstraint activateConstraints:v33];
  }

  return v4;
}

@end
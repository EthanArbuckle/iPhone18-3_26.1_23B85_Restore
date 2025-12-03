@interface RAPInstructionIncorrectView
- (RAPInstructionIncorrectView)initWithFrame:(CGRect)frame;
- (void)setDisplayMode:(int)mode;
- (void)viewTapped;
@end

@implementation RAPInstructionIncorrectView

- (void)setDisplayMode:(int)mode
{
  if (self->_displayMode != mode)
  {
    self->_displayMode = mode;
    if (mode <= 1)
    {
      if (mode)
      {
        if (mode != 1)
        {
          return;
        }

        [(RAPInstructionIncorrectView *)self setUserInteractionEnabled:?];
        [(UIImageView *)self->_chevronView setAccessibilityIdentifier:@"Expand instructions"];
        v4 = [UIImage systemImageNamed:@"chevron.forward.2"];
        [(UIImageView *)self->_chevronView setImage:v4];

        CGAffineTransformMakeRotation(&v10, 0.0);
        chevronView = self->_chevronView;
        v11 = *&v10.a;
        v12 = *&v10.c;
        v6 = *&v10.tx;
      }

      else
      {
        v7 = [UIImage systemImageNamed:@"chevron.forward"];
        [(UIImageView *)self->_chevronView setImage:v7];

        [(RAPInstructionIncorrectView *)self setUserInteractionEnabled:0];
        [(UIImageView *)self->_chevronView setAccessibilityIdentifier:0];
        CGAffineTransformMakeRotation(&v14, 0.0);
        chevronView = self->_chevronView;
        v11 = *&v14.a;
        v12 = *&v14.c;
        v6 = *&v14.tx;
      }

      goto LABEL_13;
    }

    if (mode == 2)
    {
      [(RAPInstructionIncorrectView *)self setUserInteractionEnabled:1];
      [(UIImageView *)self->_chevronView setAccessibilityIdentifier:@"Collapse instructions"];
      v8 = [UIImage systemImageNamed:@"chevron.forward.2"];
      [(UIImageView *)self->_chevronView setImage:v8];

      CGAffineTransformMakeRotation(&v9, 1.57079633);
      chevronView = self->_chevronView;
      v11 = *&v9.a;
      v12 = *&v9.c;
      v6 = *&v9.tx;
LABEL_13:
      v13 = v6;
      [(UIImageView *)chevronView setTransform:&v11];
      return;
    }

    if (mode == 3)
    {
      [(UIImageView *)self->_chevronView setHidden:1];

      [(RAPInstructionIncorrectView *)self setUserInteractionEnabled:0];
    }
  }
}

- (void)viewTapped
{
  if (self->_tapblock)
  {
    if (self->_displayMode == 1)
    {
      v3 = 10107;
    }

    else
    {
      v3 = 10106;
    }

    if (self->_displayMode == 1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    [(RAPInstructionIncorrectView *)self setDisplayMode:v4];
    [GEOAPPortal captureUserAction:v3 target:1101 value:0];
    v5 = *(self->_tapblock + 2);

    v5();
  }
}

- (RAPInstructionIncorrectView)initWithFrame:(CGRect)frame
{
  v30.receiver = self;
  v30.super_class = RAPInstructionIncorrectView;
  v3 = [(RAPInstructionIncorrectView *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIImageView alloc];
    v5 = [UIImage systemImageNamed:@"flag.fill"];
    v6 = [v4 initWithImage:v5];
    flagView = v3->_flagView;
    v3->_flagView = v6;

    v8 = +[UIColor systemRedColor];
    [(UIImageView *)v3->_flagView setTintColor:v8];

    [(UIImageView *)v3->_flagView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RAPInstructionIncorrectView *)v3 addSubview:v3->_flagView];
    v9 = objc_alloc_init(UIImageView);
    chevronView = v3->_chevronView;
    v3->_chevronView = v9;

    v11 = [UIImage systemImageNamed:@"chevron.forward"];
    [(UIImageView *)v3->_chevronView setImage:v11];

    v12 = +[UIColor tertiaryLabelColor];
    [(UIImageView *)v3->_chevronView setTintColor:v12];

    [(UIImageView *)v3->_chevronView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RAPInstructionIncorrectView *)v3 addSubview:v3->_chevronView];
    v13 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:"viewTapped"];
    [(RAPInstructionIncorrectView *)v3 addGestureRecognizer:v13];
    v14 = +[NSMutableArray array];
    v15 = _NSDictionaryOfVariableBindings(@"_flagView, _chevronView", v3->_flagView, v3->_chevronView, 0);
    centerYAnchor = [(UIImageView *)v3->_flagView centerYAnchor];
    centerYAnchor2 = [(UIImageView *)v3->_chevronView centerYAnchor];
    v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v14 addObject:v18];

    centerYAnchor3 = [(UIImageView *)v3->_chevronView centerYAnchor];
    centerYAnchor4 = [(RAPInstructionIncorrectView *)v3 centerYAnchor];
    v21 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v14 addObject:v21];

    widthAnchor = [(RAPInstructionIncorrectView *)v3 widthAnchor];
    v23 = [widthAnchor constraintEqualToConstant:44.0];
    [v14 addObject:v23];

    heightAnchor = [(RAPInstructionIncorrectView *)v3 heightAnchor];
    v25 = [heightAnchor constraintEqualToConstant:44.0];
    [v14 addObject:v25];

    v26 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|->=0-[_flagView]-4-[_chevronView]-0-|", 0, 0, v15);
    [v14 addObjectsFromArray:v26];

    v27 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|->=0-[_flagView]->=0-|", 0, 0, v15);
    [v14 addObjectsFromArray:v27];

    v28 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|->=0-[_chevronView]->=0-|", 0, 0, v15);
    [v14 addObjectsFromArray:v28];

    [NSLayoutConstraint activateConstraints:v14];
  }

  return v3;
}

@end
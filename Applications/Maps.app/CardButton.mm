@interface CardButton
- (CardButton)initWithConfiguration:(id)configuration;
- (id)_cardButtonTypeAsString:(unint64_t)string;
- (id)_customInitWithType:(unint64_t)type blurred:(BOOL)blurred tintColor:(id)color insets:(UIEdgeInsets)insets systemImageName:(id)name toolTip:(id)tip hoverBackgroundColor:(id)backgroundColor;
- (void)setBottomMargin:(double)margin;
@end

@implementation CardButton

- (id)_cardButtonTypeAsString:(unint64_t)string
{
  if (string > 0xC)
  {
    return @"<?>";
  }

  else
  {
    return *(&off_1016504C0 + string);
  }
}

- (void)setBottomMargin:(double)margin
{
  [(NSLayoutConstraint *)self->_bottomMarginConstraint setConstant:-margin];
  if (sub_10000FA08(self) != 5)
  {
    [(UIButton *)self->_actionButton _touchInsets];
    actionButton = self->_actionButton;

    [(UIButton *)actionButton _setTouchInsets:?];
  }
}

- (id)_customInitWithType:(unint64_t)type blurred:(BOOL)blurred tintColor:(id)color insets:(UIEdgeInsets)insets systemImageName:(id)name toolTip:(id)tip hoverBackgroundColor:(id)backgroundColor
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  LODWORD(leadingAnchor) = blurred;
  colorCopy = color;
  nameCopy = name;
  tipCopy = tip;
  v144 = colorCopy;
  backgroundColorCopy = backgroundColor;
  v22 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  v142 = tipCopy;
  v143 = nameCopy;
  if (self)
  {
    self->_type = type;
    v23 = [(CardButton *)self _cardButtonTypeAsString:type];
    [(CardButton *)self setAccessibilityIdentifier:v23];

    type = self->_type;
    selfCopy = self;
    v140 = leadingAnchor;
    if (type > 5)
    {
      if ((type - 9) < 4)
      {
        traitCollection = [(CardButton *)self traitCollection];
        userInterfaceIdiom = [traitCollection userInterfaceIdiom];

        if (userInterfaceIdiom == 5)
        {
          v27 = [UIButton buttonWithType:0];
          actionButton = self->_actionButton;
          self->_actionButton = v27;

          v29 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:14.0];
          if (nameCopy)
          {
            v30 = [UIImage systemImageNamed:nameCopy withConfiguration:v29];
            v31 = [v30 imageWithRenderingMode:2];
          }

          else
          {
            v31 = 0;
            v61 = self->_type;
            if (v61 > 10)
            {
              if (v61 == 11)
              {
                v30 = [UIImage systemImageNamed:@"point.forward.to.point.capsulepath.fill" withConfiguration:v29];
                v31 = [v30 imageWithRenderingMode:2];
                goto LABEL_7;
              }

              if (v61 != 12)
              {
                goto LABEL_8;
              }

              v62 = @"point.bottomleft.forward.to.arrowtriangle.uturn.scurvepath.fill";
            }

            else
            {
              if (v61 == 9)
              {
                v30 = +[UIImage _maps_radar_symbolCircleFilled];
                v133 = [v30 imageWithConfiguration:v29];
                v31 = [v133 imageWithRenderingMode:2];

                goto LABEL_7;
              }

              if (v61 != 10)
              {
                goto LABEL_8;
              }

              v62 = @"arrow.up.arrow.down";
            }

            v30 = [UIImage systemImageNamed:v62 withConfiguration:v29];
            v31 = [v30 imageWithRenderingMode:2];
          }

LABEL_7:

          v22 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
LABEL_8:
          [(UIButton *)self->_actionButton setImage:v31 forState:0];
          if (colorCopy)
          {
            [(UIButton *)self->_actionButton setTintColor:colorCopy];
          }

          else
          {
            v63 = +[UIColor secondaryLabelColor];
            [(UIButton *)self->_actionButton setTintColor:v63];
          }

          v64 = +[UIColor blackColor];
          cGColor = [v64 CGColor];
          layer = [(UIButton *)self->_actionButton layer];
          [layer setShadowColor:cGColor];

          layer2 = [(UIButton *)self->_actionButton layer];
          [layer2 setShadowOffset:{0.0, 0.0}];

          layer3 = [(UIButton *)self->_actionButton layer];
          LODWORD(v69) = 0.25;
          [layer3 setShadowOpacity:v69];
LABEL_56:

LABEL_57:
LABEL_58:

          goto LABEL_59;
        }

        v45 = [UIButton buttonWithType:7];
        v46 = self->_actionButton;
        self->_actionButton = v45;

        v29 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:2 scale:15.0];
        if (nameCopy)
        {
          v47 = [UIImage systemImageNamed:nameCopy withConfiguration:v29];
          v31 = [v47 imageWithRenderingMode:2];
LABEL_29:

          v22 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
          goto LABEL_30;
        }

        v31 = 0;
        v70 = self->_type;
        if (v70 > 10)
        {
          if (v70 == 11)
          {
            v47 = [UIImage systemImageNamed:@"point.forward.to.point.capsulepath.fill" withConfiguration:v29];
            v31 = [v47 imageWithRenderingMode:2];
            goto LABEL_29;
          }

          if (v70 == 12)
          {
            v71 = @"point.bottomleft.forward.to.arrowtriangle.uturn.scurvepath.fill";
            goto LABEL_80;
          }
        }

        else
        {
          if (v70 == 9)
          {
            v47 = +[UIImage _maps_radar_symbolFilled];
            v134 = [v47 imageWithConfiguration:v29];
            v31 = [v134 imageWithRenderingMode:2];

            goto LABEL_29;
          }

          if (v70 == 10)
          {
            v71 = @"arrow.up.arrow.down";
LABEL_80:
            v47 = [UIImage systemImageNamed:v71 withConfiguration:v29];
            v31 = [v47 imageWithRenderingMode:2];
            goto LABEL_29;
          }
        }

LABEL_30:
        [(UIButton *)self->_actionButton setImage:v31 forState:0];
        if (self->_type == 9)
        {
          [(UIButton *)self->_actionButton setAccessibilityLabel:@"Tap-To-Radar"];
        }

        goto LABEL_57;
      }

      if ((type - 6) < 2)
      {
        goto LABEL_65;
      }

      if (type != 8)
      {
        goto LABEL_59;
      }

      v32 = [MapsAddButton alloc];
      v33 = +[NSBundle mainBundle];
      v34 = [v33 localizedStringForKey:@"[RouteCreation] Route Library Create" value:@"localized string not found" table:0];
      v35 = [(MapsAddButton *)v32 initWithTitle:v34];
      v36 = self->_actionButton;
      self->_actionButton = v35;

      goto LABEL_39;
    }

    if (type <= 1)
    {
      if (type)
      {
        if (type != 1)
        {
          goto LABEL_59;
        }

        traitCollection2 = [(CardButton *)self traitCollection];
        userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

        if (userInterfaceIdiom2 != 5)
        {
          if (leadingAnchor)
          {
            v112 = [UIButton buttonWithType:0];
            v113 = self->_actionButton;
            self->_actionButton = v112;

            if (nameCopy)
            {
              v114 = nameCopy;
            }

            else
            {
              v114 = @"xmark";
            }

            v115 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:15.0];
            v116 = [UIImage systemImageNamed:v114 withConfiguration:v115];

            v139 = [v116 imageWithRenderingMode:2];

            [(UIButton *)self->_actionButton setImage:v139 forState:0];
            v117 = self->_actionButton;
            v118 = +[UIColor whiteColor];
            [(UIButton *)v117 setTintColor:v118];

            heightAnchor = [(UIButton *)self->_actionButton heightAnchor];
            v120 = [heightAnchor constraintEqualToConstant:20.0];
            v152[0] = v120;
            widthAnchor = [(UIButton *)self->_actionButton widthAnchor];
            v122 = [widthAnchor constraintEqualToConstant:20.0];
            v152[1] = v122;
            v123 = [NSArray arrayWithObjects:v152 count:2];
            [NSLayoutConstraint activateConstraints:v123];

            v22 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
            top = 24.0;
            left = 24.0;
            bottom = 24.0;
            right = 24.0;
          }

          else
          {
            v124 = [UIButton buttonWithType:7];
            v125 = self->_actionButton;
            self->_actionButton = v124;
          }

          goto LABEL_59;
        }

        v39 = [UIButton buttonWithType:0];
        v40 = self->_actionButton;
        self->_actionButton = v39;

        if (nameCopy)
        {
          v41 = nameCopy;
        }

        else
        {
          v41 = @"xmark.circle.fill";
        }

        v42 = [UIImage systemImageNamed:v41];
        v29 = [v42 imageWithRenderingMode:2];

        [(UIButton *)self->_actionButton setImage:v29 forState:0];
        v43 = self->_actionButton;
        v44 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:14.0];
        [(UIButton *)v43 setPreferredSymbolConfiguration:v44 forImageInState:0];

        if (colorCopy)
        {
          [(UIButton *)self->_actionButton setTintColor:colorCopy];
        }

        else
        {
          v126 = +[UIColor secondaryLabelColor];
          [(UIButton *)self->_actionButton setTintColor:v126];
        }

        v127 = +[UIColor blackColor];
        cGColor2 = [v127 CGColor];
        layer4 = [(UIButton *)self->_actionButton layer];
        [layer4 setShadowColor:cGColor2];

        layer5 = [(UIButton *)self->_actionButton layer];
        [layer5 setShadowOffset:{0.0, 0.0}];

        layer6 = [(UIButton *)self->_actionButton layer];
        LODWORD(v132) = 0.25;
        [layer6 setShadowOpacity:v132];

        goto LABEL_58;
      }

      v48 = [UIButton buttonWithType:0];
      v49 = self->_actionButton;
      self->_actionButton = v48;

      heightAnchor2 = [(UIButton *)self->_actionButton heightAnchor];
      v51 = [heightAnchor2 constraintEqualToConstant:0.0];
      v150[0] = v51;
      widthAnchor2 = [(UIButton *)self->_actionButton widthAnchor];
      v53 = [widthAnchor2 constraintEqualToConstant:0.0];
      v150[1] = v53;
      v54 = [NSArray arrayWithObjects:v150 count:2];
      [NSLayoutConstraint activateConstraints:v54];

LABEL_59:
      [(UIButton *)self->_actionButton setPointerInteractionEnabled:1];
      [(UIButton *)self->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v81) = 1148846080;
      [(UIButton *)self->_actionButton setContentCompressionResistancePriority:0 forAxis:v81];
      LODWORD(v82) = 1148846080;
      [(UIButton *)self->_actionButton setContentHuggingPriority:0 forAxis:v82];
      LODWORD(v83) = 1148846080;
      [(UIButton *)self->_actionButton setContentCompressionResistancePriority:1 forAxis:v83];
      LODWORD(v84) = 1148846080;
      [(UIButton *)self->_actionButton setContentHuggingPriority:1 forAxis:v84];
      v85 = -bottom;
      v86 = -right;
      if (sub_10000FA08(self) != 5)
      {
        [(UIButton *)self->_actionButton _setTouchInsets:-top, -left, v85, v86];
      }

      [(CardButton *)self addSubview:self->_actionButton];
      bottomAnchor = [(UIButton *)self->_actionButton bottomAnchor];
      bottomAnchor2 = [(CardButton *)self bottomAnchor];
      v89 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v85];
      bottomMarginConstraint = self->_bottomMarginConstraint;
      self->_bottomMarginConstraint = v89;

      v135 = v22[433];
      topAnchor = [(UIButton *)self->_actionButton topAnchor];
      topAnchor2 = [(CardButton *)self topAnchor];
      v92 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:top];
      v149[0] = v92;
      leadingAnchor = [(UIButton *)self->_actionButton leadingAnchor];
      leadingAnchor2 = [(CardButton *)self leadingAnchor];
      v94 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:left];
      v149[1] = v94;
      trailingAnchor = [(UIButton *)selfCopy->_actionButton trailingAnchor];
      trailingAnchor2 = [(CardButton *)selfCopy trailingAnchor];
      v97 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v86];
      v98 = selfCopy->_bottomMarginConstraint;
      v149[2] = v97;
      v149[3] = v98;
      v99 = [NSArray arrayWithObjects:v149 count:4];
      [v135 activateConstraints:v99];

      self = selfCopy;
      [(UIButton *)selfCopy->_actionButton sizeToFit];
      [(UIButton *)selfCopy->_actionButton bounds];
      [(UIButton *)selfCopy->_actionButton _setCornerRadius:CGRectGetWidth(v154) * 0.5];
      nameCopy = v143;
      colorCopy = v144;
      tipCopy = v142;
      LOBYTE(leadingAnchor) = v140;
      goto LABEL_62;
    }

    if ((type - 2) >= 2)
    {
      if (type == 4)
      {
        v55 = [UIButton buttonWithType:7];
        v56 = self->_actionButton;
        self->_actionButton = v55;

        if (nameCopy)
        {
          v57 = nameCopy;
        }

        else
        {
          v57 = @"square.and.arrow.up";
        }

        v58 = [UIImageSymbolConfiguration configurationWithPointSize:15.0];
        v59 = [UIImage systemImageNamed:v57 withConfiguration:v58];

        v33 = [v59 imageWithRenderingMode:2];

        [(UIButton *)self->_actionButton setImage:v33 forState:0];
        v60 = +[UIColor secondaryLabelColor];
        [(UIButton *)self->_actionButton setTintColor:v60];

LABEL_39:
        goto LABEL_59;
      }

      if (type != 5)
      {
        goto LABEL_59;
      }
    }

    if (nameCopy)
    {
      v29 = nameCopy;
    }

    else if (type - 2 > 3)
    {
      v29 = 0;
    }

    else
    {
      v29 = off_1016504A0[type - 2];
    }

    v72 = [UIButton buttonWithType:0];
    v73 = self->_actionButton;
    self->_actionButton = v72;

    v74 = [UIImageSymbolConfiguration configurationWithPointSize:15.0];
    v75 = [UIImage systemImageNamed:v29 withConfiguration:v74];

    v31 = [v75 imageWithRenderingMode:2];

    [(UIButton *)self->_actionButton setImage:v31 forState:0];
    if (colorCopy)
    {
      [(UIButton *)self->_actionButton setTintColor:colorCopy];
    }

    else
    {
      v76 = +[UIColor secondaryLabelColor];
      [(UIButton *)self->_actionButton setTintColor:v76];
    }

    [(UIButton *)self->_actionButton setAdjustsImageWhenHighlighted:0];
    [(UIButton *)self->_actionButton setContextMenuInteractionEnabled:1];
    [(UIButton *)self->_actionButton setShowsMenuAsPrimaryAction:1];
    layer3 = [(UIButton *)self->_actionButton heightAnchor];
    v77 = [layer3 constraintEqualToConstant:24.0];
    v151[0] = v77;
    widthAnchor3 = [(UIButton *)self->_actionButton widthAnchor];
    v79 = [widthAnchor3 constraintEqualToConstant:24.0];
    v151[1] = v79;
    v80 = [NSArray arrayWithObjects:v151 count:2];
    [NSLayoutConstraint activateConstraints:v80];

    v22 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    goto LABEL_56;
  }

LABEL_62:
  if (leadingAnchor)
  {
    v100 = [UIVisualEffectView alloc];
    v101 = [UIBlurEffect effectWithStyle:16];
    v102 = [v100 initWithEffect:v101];

    [v102 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v102 _setCornerRadius:14.0];
    [(CardButton *)self insertSubview:v102 belowSubview:self->_actionButton];
    centerXAnchor = [v102 centerXAnchor];
    centerXAnchor2 = [(UIButton *)self->_actionButton centerXAnchor];
    v138 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v148[0] = v138;
    centerYAnchor = [v102 centerYAnchor];
    centerYAnchor2 = [(UIButton *)self->_actionButton centerYAnchor];
    v104 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v148[1] = v104;
    heightAnchor3 = [v102 heightAnchor];
    v106 = [heightAnchor3 constraintEqualToConstant:28.0];
    v148[2] = v106;
    widthAnchor4 = [v102 widthAnchor];
    v108 = [widthAnchor4 constraintEqualToConstant:28.0];
    v148[3] = v108;
    v109 = [NSArray arrayWithObjects:v148 count:4];
    [NSLayoutConstraint activateConstraints:v109];

    tipCopy = v142;
    nameCopy = v143;

    colorCopy = v144;
  }

  [(UIButton *)self->_actionButton setAccessibilityIdentifier:@"CardButtonActionButton"];
  [(UIButton *)self->_actionButton setToolTip:tipCopy];
LABEL_65:
  selfCopy2 = self;

  return self;
}

- (CardButton)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v23.receiver = self;
  v23.super_class = CardButton;
  v5 = [(CardButton *)&v23 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    [(CardButton *)v5 setConfiguration:configurationCopy];
    type = [configurationCopy type];
    blurred = [configurationCopy blurred];
    tintColor = [configurationCopy tintColor];
    [configurationCopy insets];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    systemImageName = [configurationCopy systemImageName];
    toolTip = [configurationCopy toolTip];
    hoverBackgroundColor = [configurationCopy hoverBackgroundColor];
    v21 = [(CardButton *)v6 _customInitWithType:type blurred:blurred tintColor:tintColor insets:systemImageName systemImageName:toolTip toolTip:hoverBackgroundColor hoverBackgroundColor:v11, v13, v15, v17];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end
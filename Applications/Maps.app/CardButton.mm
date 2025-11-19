@interface CardButton
- (CardButton)initWithConfiguration:(id)a3;
- (id)_cardButtonTypeAsString:(unint64_t)a3;
- (id)_customInitWithType:(unint64_t)a3 blurred:(BOOL)a4 tintColor:(id)a5 insets:(UIEdgeInsets)a6 systemImageName:(id)a7 toolTip:(id)a8 hoverBackgroundColor:(id)a9;
- (void)setBottomMargin:(double)a3;
@end

@implementation CardButton

- (id)_cardButtonTypeAsString:(unint64_t)a3
{
  if (a3 > 0xC)
  {
    return @"<?>";
  }

  else
  {
    return *(&off_1016504C0 + a3);
  }
}

- (void)setBottomMargin:(double)a3
{
  [(NSLayoutConstraint *)self->_bottomMarginConstraint setConstant:-a3];
  if (sub_10000FA08(self) != 5)
  {
    [(UIButton *)self->_actionButton _touchInsets];
    actionButton = self->_actionButton;

    [(UIButton *)actionButton _setTouchInsets:?];
  }
}

- (id)_customInitWithType:(unint64_t)a3 blurred:(BOOL)a4 tintColor:(id)a5 insets:(UIEdgeInsets)a6 systemImageName:(id)a7 toolTip:(id)a8 hoverBackgroundColor:(id)a9
{
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  LODWORD(v16) = a4;
  v19 = a5;
  v20 = a7;
  v21 = a8;
  v144 = v19;
  v145 = a9;
  v22 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  v142 = v21;
  v143 = v20;
  if (self)
  {
    self->_type = a3;
    v23 = [(CardButton *)self _cardButtonTypeAsString:a3];
    [(CardButton *)self setAccessibilityIdentifier:v23];

    type = self->_type;
    v146 = self;
    v140 = v16;
    if (type > 5)
    {
      if ((type - 9) < 4)
      {
        v25 = [(CardButton *)self traitCollection];
        v26 = [v25 userInterfaceIdiom];

        if (v26 == 5)
        {
          v27 = [UIButton buttonWithType:0];
          actionButton = self->_actionButton;
          self->_actionButton = v27;

          v29 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:14.0];
          if (v20)
          {
            v30 = [UIImage systemImageNamed:v20 withConfiguration:v29];
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
          if (v19)
          {
            [(UIButton *)self->_actionButton setTintColor:v19];
          }

          else
          {
            v63 = +[UIColor secondaryLabelColor];
            [(UIButton *)self->_actionButton setTintColor:v63];
          }

          v64 = +[UIColor blackColor];
          v65 = [v64 CGColor];
          v66 = [(UIButton *)self->_actionButton layer];
          [v66 setShadowColor:v65];

          v67 = [(UIButton *)self->_actionButton layer];
          [v67 setShadowOffset:{0.0, 0.0}];

          v68 = [(UIButton *)self->_actionButton layer];
          LODWORD(v69) = 0.25;
          [v68 setShadowOpacity:v69];
LABEL_56:

LABEL_57:
LABEL_58:

          goto LABEL_59;
        }

        v45 = [UIButton buttonWithType:7];
        v46 = self->_actionButton;
        self->_actionButton = v45;

        v29 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:2 scale:15.0];
        if (v20)
        {
          v47 = [UIImage systemImageNamed:v20 withConfiguration:v29];
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

        v37 = [(CardButton *)self traitCollection];
        v38 = [v37 userInterfaceIdiom];

        if (v38 != 5)
        {
          if (v16)
          {
            v112 = [UIButton buttonWithType:0];
            v113 = self->_actionButton;
            self->_actionButton = v112;

            if (v20)
            {
              v114 = v20;
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

            v119 = [(UIButton *)self->_actionButton heightAnchor];
            v120 = [v119 constraintEqualToConstant:20.0];
            v152[0] = v120;
            v121 = [(UIButton *)self->_actionButton widthAnchor];
            v122 = [v121 constraintEqualToConstant:20.0];
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

        if (v20)
        {
          v41 = v20;
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

        if (v19)
        {
          [(UIButton *)self->_actionButton setTintColor:v19];
        }

        else
        {
          v126 = +[UIColor secondaryLabelColor];
          [(UIButton *)self->_actionButton setTintColor:v126];
        }

        v127 = +[UIColor blackColor];
        v128 = [v127 CGColor];
        v129 = [(UIButton *)self->_actionButton layer];
        [v129 setShadowColor:v128];

        v130 = [(UIButton *)self->_actionButton layer];
        [v130 setShadowOffset:{0.0, 0.0}];

        v131 = [(UIButton *)self->_actionButton layer];
        LODWORD(v132) = 0.25;
        [v131 setShadowOpacity:v132];

        goto LABEL_58;
      }

      v48 = [UIButton buttonWithType:0];
      v49 = self->_actionButton;
      self->_actionButton = v48;

      v50 = [(UIButton *)self->_actionButton heightAnchor];
      v51 = [v50 constraintEqualToConstant:0.0];
      v150[0] = v51;
      v52 = [(UIButton *)self->_actionButton widthAnchor];
      v53 = [v52 constraintEqualToConstant:0.0];
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
      v87 = [(UIButton *)self->_actionButton bottomAnchor];
      v88 = [(CardButton *)self bottomAnchor];
      v89 = [v87 constraintEqualToAnchor:v88 constant:v85];
      bottomMarginConstraint = self->_bottomMarginConstraint;
      self->_bottomMarginConstraint = v89;

      v135 = v22[433];
      v137 = [(UIButton *)self->_actionButton topAnchor];
      v91 = [(CardButton *)self topAnchor];
      v92 = [v137 constraintEqualToAnchor:v91 constant:top];
      v149[0] = v92;
      v16 = [(UIButton *)self->_actionButton leadingAnchor];
      v93 = [(CardButton *)self leadingAnchor];
      v94 = [v16 constraintEqualToAnchor:v93 constant:left];
      v149[1] = v94;
      v95 = [(UIButton *)v146->_actionButton trailingAnchor];
      v96 = [(CardButton *)v146 trailingAnchor];
      v97 = [v95 constraintEqualToAnchor:v96 constant:v86];
      v98 = v146->_bottomMarginConstraint;
      v149[2] = v97;
      v149[3] = v98;
      v99 = [NSArray arrayWithObjects:v149 count:4];
      [v135 activateConstraints:v99];

      self = v146;
      [(UIButton *)v146->_actionButton sizeToFit];
      [(UIButton *)v146->_actionButton bounds];
      [(UIButton *)v146->_actionButton _setCornerRadius:CGRectGetWidth(v154) * 0.5];
      v20 = v143;
      v19 = v144;
      v21 = v142;
      LOBYTE(v16) = v140;
      goto LABEL_62;
    }

    if ((type - 2) >= 2)
    {
      if (type == 4)
      {
        v55 = [UIButton buttonWithType:7];
        v56 = self->_actionButton;
        self->_actionButton = v55;

        if (v20)
        {
          v57 = v20;
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

    if (v20)
    {
      v29 = v20;
    }

    else if (a3 - 2 > 3)
    {
      v29 = 0;
    }

    else
    {
      v29 = off_1016504A0[a3 - 2];
    }

    v72 = [UIButton buttonWithType:0];
    v73 = self->_actionButton;
    self->_actionButton = v72;

    v74 = [UIImageSymbolConfiguration configurationWithPointSize:15.0];
    v75 = [UIImage systemImageNamed:v29 withConfiguration:v74];

    v31 = [v75 imageWithRenderingMode:2];

    [(UIButton *)self->_actionButton setImage:v31 forState:0];
    if (v19)
    {
      [(UIButton *)self->_actionButton setTintColor:v19];
    }

    else
    {
      v76 = +[UIColor secondaryLabelColor];
      [(UIButton *)self->_actionButton setTintColor:v76];
    }

    [(UIButton *)self->_actionButton setAdjustsImageWhenHighlighted:0];
    [(UIButton *)self->_actionButton setContextMenuInteractionEnabled:1];
    [(UIButton *)self->_actionButton setShowsMenuAsPrimaryAction:1];
    v68 = [(UIButton *)self->_actionButton heightAnchor];
    v77 = [v68 constraintEqualToConstant:24.0];
    v151[0] = v77;
    v78 = [(UIButton *)self->_actionButton widthAnchor];
    v79 = [v78 constraintEqualToConstant:24.0];
    v151[1] = v79;
    v80 = [NSArray arrayWithObjects:v151 count:2];
    [NSLayoutConstraint activateConstraints:v80];

    v22 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    goto LABEL_56;
  }

LABEL_62:
  if (v16)
  {
    v100 = [UIVisualEffectView alloc];
    v101 = [UIBlurEffect effectWithStyle:16];
    v102 = [v100 initWithEffect:v101];

    [v102 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v102 _setCornerRadius:14.0];
    [(CardButton *)self insertSubview:v102 belowSubview:self->_actionButton];
    v147 = [v102 centerXAnchor];
    v141 = [(UIButton *)self->_actionButton centerXAnchor];
    v138 = [v147 constraintEqualToAnchor:v141];
    v148[0] = v138;
    v136 = [v102 centerYAnchor];
    v103 = [(UIButton *)self->_actionButton centerYAnchor];
    v104 = [v136 constraintEqualToAnchor:v103];
    v148[1] = v104;
    v105 = [v102 heightAnchor];
    v106 = [v105 constraintEqualToConstant:28.0];
    v148[2] = v106;
    v107 = [v102 widthAnchor];
    v108 = [v107 constraintEqualToConstant:28.0];
    v148[3] = v108;
    v109 = [NSArray arrayWithObjects:v148 count:4];
    [NSLayoutConstraint activateConstraints:v109];

    v21 = v142;
    v20 = v143;

    v19 = v144;
  }

  [(UIButton *)self->_actionButton setAccessibilityIdentifier:@"CardButtonActionButton"];
  [(UIButton *)self->_actionButton setToolTip:v21];
LABEL_65:
  v110 = self;

  return self;
}

- (CardButton)initWithConfiguration:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CardButton;
  v5 = [(CardButton *)&v23 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    [(CardButton *)v5 setConfiguration:v4];
    v7 = [v4 type];
    v8 = [v4 blurred];
    v9 = [v4 tintColor];
    [v4 insets];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v4 systemImageName];
    v19 = [v4 toolTip];
    v20 = [v4 hoverBackgroundColor];
    v21 = [(CardButton *)v6 _customInitWithType:v7 blurred:v8 tintColor:v9 insets:v18 systemImageName:v19 toolTip:v20 hoverBackgroundColor:v11, v13, v15, v17];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end
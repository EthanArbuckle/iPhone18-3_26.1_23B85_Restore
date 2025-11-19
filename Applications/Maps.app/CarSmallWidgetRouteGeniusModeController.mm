@interface CarSmallWidgetRouteGeniusModeController
- (BOOL)_isHomeOrWorkSuggestion:(id)a3;
- (CarSmallWidgetRouteGeniusModeController)initWithSuggestion:(id)a3;
- (ChromeViewController)chromeViewController;
- (id)_car_smallWidgetName;
- (id)_etaStringFromRoute:(id)a3;
- (void)_setupRouteGeniusCardIfNeeded;
- (void)_updateRouteGeniusCardContents;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)dealloc;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)setCurrentSuggestion:(id)a3;
@end

@implementation CarSmallWidgetRouteGeniusModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)setCurrentSuggestion:(id)a3
{
  v5 = a3;
  v6 = sub_100C0B3F8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 134349314;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Got new RG suggestion: %@", &v8, 0x16u);
  }

  objc_storeStrong(&self->_currentSuggestion, a3);
  if (self->_currentSuggestion)
  {
    [(CarSmallWidgetRouteGeniusModeController *)self _updateRouteGeniusCardContents];
  }

  else
  {
    v7 = +[CarChromeModeCoordinator sharedInstance];
    [v7 endRouteGenius];
  }
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v5 = [CarRouteGeniusService sharedService:a3];
  [v5 unregisterObserver:self];

  v7 = +[CarDisplayController sharedInstance];
  v6 = [v7 routeGeniusManager];
  [v6 deactivateForAllChromes];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C0B584;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [a4 addPreparation:v4];
}

- (id)_car_smallWidgetName
{
  v3 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
  v4 = [v3 geoMapItem];
  v5 = [v4 name];

  LOBYTE(v3) = [(CarSmallWidgetRouteGeniusModeController *)self _isHomeOrWorkSuggestion:self->_currentSuggestion];
  v6 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
  v7 = v6;
  if ((v3 & 1) != 0 || !v5)
  {
    v9 = [v6 title];
  }

  else
  {
    v8 = [v6 geoMapItem];
    v9 = [v8 name];
  }

  return v9;
}

- (BOOL)_isHomeOrWorkSuggestion:(id)a3
{
  v3 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
  v4 = [v3 type];

  return (v4 < 7) & (0x46u >> v4);
}

- (id)_etaStringFromRoute:(id)a3
{
  v5 = a3;
  v6 = [v5 route];
  v7 = [GuidanceETA alloc];
  [v5 etaInSeconds];
  v9 = v8;

  [v6 distance];
  v11 = v10;
  v12 = [v6 isEVRoute];
  if (v12)
  {
    v3 = [v6 lastEVStep];
    v4 = [v3 evInfo];
    v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 remainingBatteryPercentage]);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v6 destination];
  v15 = [v14 timezone];
  v16 = -[GuidanceETA initWithRemainingTime:remainingDistance:arrivalBatteryCharge:destinationTimeZone:transportType:](v7, "initWithRemainingTime:remainingDistance:arrivalBatteryCharge:destinationTimeZone:transportType:", v13, v15, [v6 transportType], v9, v11);

  if (v12)
  {
  }

  v17 = [(GuidanceETA *)v16 arrivalAMPMTimeString];

  return v17;
}

- (void)_updateRouteGeniusCardContents
{
  [(CarSmallWidgetRouteGeniusModeController *)self _setupRouteGeniusCardIfNeeded];
  v5 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
  v6 = +[MapsUIImageCache sharedCarCache];
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_100C0BF30;
  v61[3] = &unk_1016519B0;
  v61[4] = self;
  [v6 getImageForCarSmallWidget:v5 completion:v61];

  [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion etaInSeconds];
  LODWORD(v2) = vcvtpd_u64_f64(v7 * 0.0166666667);
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"CarPlay Widget [Delimiter]" value:@"localized string not found" table:0];

  v10 = [NSString _navigation_stringWithMinutes:v2 andAbbreviationType:1];
  if (v2)
  {
    if (MapsFeature_IsEnabled_LocationIntelligenceMaps() && self->_currentSuggestion)
    {
      v11 = [(CarSmallWidgetRouteGeniusModeController *)self _car_smallWidgetName];
      v12 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
      [v12 setText:v11];

      v13 = [(CarSmallWidgetRouteGeniusModeController *)self _etaStringFromRoute:self->_currentSuggestion];
      v58 = 0;
      if (v13 && v10)
      {
        v14 = +[NSBundle mainBundle];
        v15 = [v14 localizedStringForKey:@"[CarPlay Widget] Route Genius Description" value:@"localized string not found" table:0];

        v60 = 0;
        v16 = [NSString localizedStringWithValidatedFormat:v15 validFormatSpecifiers:@"%@ %@ %@" error:&v60, v13, v9, v10];
        v17 = v60;
        v58 = v16;
        if (![v16 length] || v17)
        {
          [NSString localizedStringWithFormat:@"%@", v10];
          v19 = v18 = v9;

          v58 = v19;
          v9 = v18;
        }
      }

      v57 = v9;
      v20 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
      v21 = v58;
      [v20 setText:v58];

      v22 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion route];
      v23 = [v22 mutableData];
      v24 = [v23 routeOverviewDescriptionStrings];

      if ([v24 count] && MapsFeature_IsEnabled_LocationIntelligenceMaps())
      {
        if (qword_10195EB58 != -1)
        {
          dispatch_once(&qword_10195EB58, &stru_10164DB30);
        }

        v55 = v10;
        v56 = v5;
        v25 = qword_10195EB50;
        v53 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
        [v53 frame];
        v27 = v26;
        v28 = v24;
        v29 = v25;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        obj = v28;
        v30 = [obj countByEnumeratingWithState:&v62 objects:buf count:16];
        v54 = v24;
        if (v30)
        {
          v31 = v30;
          v32 = 0;
          v33 = *v63;
LABEL_16:
          v34 = 0;
          v35 = v32;
          while (1)
          {
            if (*v63 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v62 + 1) + 8 * v34);
            v37 = [NSAttributedString alloc];
            v38 = [v36 stringWithDefaultOptions];
            v32 = [v37 initWithString:v38 attributes:v29];

            [v32 boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
            if (v39 < v27)
            {
              break;
            }

            v34 = v34 + 1;
            v35 = v32;
            if (v31 == v34)
            {
              v31 = [obj countByEnumeratingWithState:&v62 objects:buf count:16];
              if (v31)
              {
                goto LABEL_16;
              }

              break;
            }
          }
        }

        else
        {
          v32 = 0;
        }

        v52 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
        [v52 setAttributedText:v32];

        v10 = v55;
        v5 = v56;
        v21 = v58;
        v24 = v54;
      }

      v9 = v57;
    }

    else
    {
      v40 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
      [v40 setText:v10];

      v13 = [(CarSmallWidgetRouteGeniusModeController *)self _car_smallWidgetName];
      v41 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
      [v41 setText:v13];
    }
  }

  else
  {
    v42 = v9;
    v43 = [(CarSmallWidgetRouteGeniusModeController *)self _car_smallWidgetName];
    v44 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    [v44 setText:v43];

    v45 = [(CarSmallWidgetRouteGeniusModeController *)self _isHomeOrWorkSuggestion:self->_currentSuggestion];
    if (v45)
    {
      v46 = &stru_1016631F0;
    }

    else
    {
      v44 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
      v3 = [v44 geoMapItem];
      v46 = [v3 shortAddress];
    }

    v47 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
    [v47 setText:v46];

    if ((v45 & 1) == 0)
    {
    }

    v13 = sub_100C0B3F8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v48 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
      v49 = [v48 text];
      v50 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
      v51 = [v50 text];
      *buf = 134349570;
      v67 = self;
      v68 = 2112;
      v69 = v49;
      v70 = 2112;
      v71 = v51;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Updated titlte: %@, subtitle: %@", buf, 0x20u);
    }

    v9 = v42;
  }
}

- (void)_setupRouteGeniusCardIfNeeded
{
  v3 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
  if (v3)
  {
    v4 = v3;
    v5 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    if (v5)
    {
      v6 = v5;
      v7 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];

      if (v7)
      {
        return;
      }
    }

    else
    {
    }
  }

  v8 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  [v8 setAccessibilityIdentifier:@"CarSmallWidgetRouteGeniusView"];

  v9 = [UIImageView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CarSmallWidgetRouteGeniusModeController *)self setImageView:v13];

  v14 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
  [v15 setAccessibilityIdentifier:@"ImageView"];

  v16 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  v17 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
  [v16 addSubview:v17];

  v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CarSmallWidgetRouteGeniusModeController *)self setTitleLabel:v18];

  v19 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = +[UIColor labelColor];
  v21 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
  [v21 setTextColor:v20];

  v22 = [UIFont _preferredFontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightSemibold];
  v23 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
  [v23 setFont:v22];

  v24 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
  [v24 setAdjustsFontForContentSizeCategory:1];

  v25 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
  [v25 setAccessibilityIdentifier:@"TitleLabel"];

  v26 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  v27 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
  [v26 addSubview:v27];

  v28 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CarSmallWidgetRouteGeniusModeController *)self setSubtitleLabel:v28];

  v29 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = [UIFont _preferredFontForTextStyle:UIFontTextStyleCaption1 weight:UIFontWeightRegular];
  v31 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
  [v31 setFont:v30];

  v32 = +[UIColor labelColor];
  v33 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
  [v33 setTextColor:v32];

  v34 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
  [v34 setAdjustsFontForContentSizeCategory:1];

  v35 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
  [v35 setAccessibilityIdentifier:@"SubtitleLabel"];

  v36 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  v37 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
  [v36 addSubview:v37];

  IsEnabled_LocationIntelligenceMaps = MapsFeature_IsEnabled_LocationIntelligenceMaps();
  if (IsEnabled_LocationIntelligenceMaps)
  {
    v38 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(CarSmallWidgetRouteGeniusModeController *)self setDescriptionLabel:v38];

    v39 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

    v40 = [UIFont _preferredFontForTextStyle:UIFontTextStyleCaption1 variant:256];
    v41 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
    [v41 setFont:v40];

    v42 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
    [v42 setAdjustsFontForContentSizeCategory:1];

    v43 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
    [v43 setAccessibilityIdentifier:@"DescriptionLabel"];

    v44 = [(CarSmallWidgetRouteGeniusModeController *)self view];
    v45 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
    [v44 addSubview:v45];

    v46 = +[UIColor secondaryLabelColor];
    v47 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
    [v47 setTextColor:v46];
  }

  v48 = objc_alloc_init(UILayoutGuide);
  v49 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  [v49 addLayoutGuide:v48];

  v183 = +[NSMutableArray array];
  v177 = [v48 leadingAnchor];
  v181 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  v173 = [v181 safeAreaLayoutGuide];
  v163 = [v173 leadingAnchor];
  v158 = [v177 constraintEqualToAnchor:v163];
  v189[0] = v158;
  v151 = [v48 topAnchor];
  v154 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  v149 = [v154 safeAreaLayoutGuide];
  v147 = [v149 topAnchor];
  v145 = [v151 constraintGreaterThanOrEqualToAnchor:v147];
  v189[1] = v145;
  v143 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  v141 = [v143 safeAreaLayoutGuide];
  v139 = [v141 trailingAnchor];
  v137 = [v48 trailingAnchor];
  v135 = [v139 constraintEqualToAnchor:v137];
  v189[2] = v135;
  v133 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  v131 = [v133 safeAreaLayoutGuide];
  v129 = [v131 bottomAnchor];
  v127 = [v48 bottomAnchor];
  v125 = [v129 constraintGreaterThanOrEqualToAnchor:v127];
  v189[3] = v125;
  v50 = [v48 heightAnchor];
  v51 = [v50 constraintEqualToConstant:65.0];
  v189[4] = v51;
  v52 = [v48 centerYAnchor];
  v53 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  v54 = [v53 safeAreaLayoutGuide];
  v55 = [v54 centerYAnchor];
  v56 = [v52 constraintEqualToAnchor:v55];
  v189[5] = v56;
  v57 = [NSArray arrayWithObjects:v189 count:6];
  [v183 addObjectsFromArray:v57];

  v174 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
  v58 = [v174 leadingAnchor];
  v182 = v48;
  v59 = [v48 leadingAnchor];
  v178 = v59;
  if (IsEnabled_LocationIntelligenceMaps)
  {
    v169 = [v58 constraintEqualToAnchor:v59 constant:8.0];
    v188[0] = v169;
    v164 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
    v159 = [v164 widthAnchor];
    v60 = [v159 constraintEqualToConstant:self->_imageWidth];
    v188[1] = v60;
    v61 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
    v62 = [v61 heightAnchor];
    v63 = [v62 constraintEqualToConstant:self->_imageWidth];
    v188[2] = v63;
    v64 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
    v65 = [v64 centerYAnchor];
    v66 = [v182 centerYAnchor];
    [v65 constraintEqualToAnchor:v66];
    v67 = v155 = v58;
    v188[3] = v67;
    v68 = [NSArray arrayWithObjects:v188 count:4];
    [v183 addObjectsFromArray:v68];

    v179 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    v175 = [v179 topAnchor];
    v170 = [v182 topAnchor];
    v165 = [v175 constraintEqualToAnchor:v170 constant:6.0];
    v187[0] = v165;
    v160 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    v69 = [v160 leadingAnchor];
    v70 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
    v71 = [v70 trailingAnchor];
    v72 = [v69 constraintEqualToAnchor:v71 constant:6.0];
    v187[1] = v72;
    v73 = [v182 trailingAnchor];
    v74 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    v75 = [v74 trailingAnchor];
    v76 = [v73 constraintEqualToAnchor:v75 constant:6.0];
    v187[2] = v76;
    v77 = [NSArray arrayWithObjects:v187 count:3];
    [v183 addObjectsFromArray:v77];

    v180 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
    v171 = [v180 leadingAnchor];
    v176 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    v166 = [v176 leadingAnchor];
    v161 = [v171 constraintEqualToAnchor:v166];
    v186[0] = v161;
    v156 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
    v152 = [v156 trailingAnchor];
    v78 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    v79 = [v78 trailingAnchor];
    v80 = [v152 constraintEqualToAnchor:v79];
    v186[1] = v80;
    v81 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
    v82 = [v81 topAnchor];
    v83 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    v84 = [v83 bottomAnchor];
    v85 = [v82 constraintEqualToAnchor:v84 constant:2.0];
    v186[2] = v85;
    v86 = [NSArray arrayWithObjects:v186 count:3];
    [v183 addObjectsFromArray:v86];

    v87 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
    v88 = [v87 leadingAnchor];
    v89 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    v90 = [v89 leadingAnchor];
    v91 = [v88 constraintEqualToAnchor:v90];
    v185[0] = v91;
    v92 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
    v93 = [v92 trailingAnchor];
    v94 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    v95 = [v94 trailingAnchor];
    v172 = [v93 constraintEqualToAnchor:v95];
    v185[1] = v172;
    v167 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
    v96 = [v167 topAnchor];
    v97 = self;
    v98 = v96;
    v162 = [(CarSmallWidgetRouteGeniusModeController *)v97 subtitleLabel];
    v157 = [v162 bottomAnchor];
    v153 = [v98 constraintEqualToAnchor:2.0 constant:?];
    v185[2] = v153;
    v150 = [NSArray arrayWithObjects:v185 count:3];
    [v183 addObjectsFromArray:?];
  }

  else
  {
    v140 = [v58 constraintEqualToAnchor:v59 constant:13.0];
    v184[0] = v140;
    v146 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
    v144 = [v146 centerYAnchor];
    v136 = [v48 centerYAnchor];
    v128 = [v144 constraintEqualToAnchor:v136];
    v184[1] = v128;
    v132 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
    v172 = [v132 widthAnchor];
    v167 = [v172 constraintEqualToConstant:40.0];
    v184[2] = v167;
    v123 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
    v99 = [v123 heightAnchor];
    v157 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
    [v157 widthAnchor];
    v153 = v162 = v99;
    v150 = [v99 constraintEqualToAnchor:?];
    v184[3] = v150;
    v148 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    v142 = [v148 firstBaselineAnchor];
    v138 = [v182 topAnchor];
    v134 = [v142 constraintEqualToAnchor:v138 constant:30.0];
    v184[4] = v134;
    v130 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    v124 = [v130 leadingAnchor];
    v126 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
    v122 = [v126 trailingAnchor];
    v121 = [v124 constraintEqualToAnchor:v122 constant:8.0];
    v184[5] = v121;
    v119 = [v182 trailingAnchor];
    v120 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    v118 = [v120 trailingAnchor];
    v117 = [v119 constraintEqualToAnchor:v118 constant:8.0];
    v184[6] = v117;
    v116 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
    v114 = [v116 firstBaselineAnchor];
    v115 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    v113 = [v115 lastBaselineAnchor];
    v112 = [v114 constraintEqualToAnchor:v113 constant:17.0];
    v184[7] = v112;
    v111 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
    v110 = [v111 leadingAnchor];
    v100 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    v101 = [v100 leadingAnchor];
    v102 = [v110 constraintEqualToAnchor:v101];
    v184[8] = v102;
    v103 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
    v104 = [v103 trailingAnchor];
    v105 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    v106 = [v105 trailingAnchor];
    [v104 constraintEqualToAnchor:v106];
    v108 = v107 = v58;
    v184[9] = v108;
    v109 = [NSArray arrayWithObjects:v184 count:10];
    [v183 addObjectsFromArray:v109];

    v94 = v128;
    v88 = v107;
    v90 = v140;

    v98 = v123;
    v89 = v178;

    v93 = v136;
    v95 = v132;

    v92 = v144;
    v91 = v146;

    v87 = v174;
  }

  [NSLayoutConstraint activateConstraints:v183];
}

- (void)dealloc
{
  v3 = sub_100C0B3F8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CarSmallWidgetRouteGeniusModeController;
  [(CarSmallWidgetRouteGeniusModeController *)&v4 dealloc];
}

- (CarSmallWidgetRouteGeniusModeController)initWithSuggestion:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CarSmallWidgetRouteGeniusModeController;
  v6 = [(CarSmallWidgetRouteGeniusModeController *)&v10 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = sub_100C0B3F8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeStrong(&v6->_currentSuggestion, a3);
    v8 = +[CarRouteGeniusService sharedService];
    [v8 registerObserver:v6];

    v6->_imageWidth = 35.0;
  }

  return v6;
}

@end
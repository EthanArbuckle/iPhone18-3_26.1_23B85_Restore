@interface NavTrafficIncidentViewComposer
+ (id)imageForMNTrafficIncidentAlert:(id)a3 view:(id)a4;
+ (void)configureDetailsView:(id)a3 withGEORouteIncident:(id)a4;
+ (void)configureDetailsView:(id)a3 withTrafficIncidentAlert:(id)a4;
+ (void)configureDetailsView:(id)a3 withTrafficIncidentFeature:(id)a4;
+ (void)configureHeaderView:(id)a3 withTrafficIncidentAlert:(id)a4;
+ (void)configureHeaderView:(id)a3 withTrafficIncidentFeature:(id)a4;
@end

@implementation NavTrafficIncidentViewComposer

+ (void)configureDetailsView:(id)a3 withGEORouteIncident:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 info];
    [v10 setPrimaryLabelText:v7];

    if (qword_10195DCD8 != -1)
    {
      dispatch_once(&qword_10195DCD8, &stru_10162E100);
    }

    v8 = [[NSDate alloc] initWithTimeIntervalSince1970:{objc_msgSend(v6, "updateTime") * 0.001}];
    v9 = [qword_10195DCD0 lastUpdatedUIStringForDate:v8];
    [v10 setSecondaryLabelText:v9];
  }

  else
  {
    [v10 setPrimaryLabelText:0];
    [v10 setSecondaryLabelText:0];
  }
}

+ (void)configureDetailsView:(id)a3 withTrafficIncidentFeature:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = [v5 info];
  [v11 setPrimaryLabelText:v6];

  v7 = [v5 lastUpdatedDate];

  if (v7)
  {
    if (qword_10195DCC8 != -1)
    {
      dispatch_once(&qword_10195DCC8, &stru_10162E0E0);
    }

    v8 = qword_10195DCC0;
    v9 = [v5 lastUpdatedDate];
    v10 = [v8 lastUpdatedUIStringForDate:v9];
    [v11 setSecondaryLabelText:v10];
  }

  else
  {
    [v11 setSecondaryLabelText:0];
  }
}

+ (void)configureDetailsView:(id)a3 withTrafficIncidentAlert:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v6 bannerDescription];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [v6 bannerDescription];
    [v11 setPrimaryLabelText:v9];
  }

  else
  {
    v10 = [v6 incident];

    if (!v10)
    {
      goto LABEL_6;
    }

    v9 = [v6 incident];
    [a1 configureDetailsView:v11 withGEORouteIncident:v9];
  }

LABEL_6:
}

+ (void)configureHeaderView:(id)a3 withTrafficIncidentFeature:(id)a4
{
  v27 = a3;
  v5 = a4;
  if ([v5 isRestrictionIncident])
  {
    v6 = [v5 restrictionTitle];
    v7 = [v27 primaryLabel];
    [v7 setText:v6];

    v8 = [v5 restrictionCombinedDetails];
LABEL_5:
    v13 = v8;
    v14 = [v27 secondaryLabel];
    [v14 setText:v13];

    goto LABEL_6;
  }

  v9 = [v5 title];
  v10 = [v27 primaryLabel];
  [v10 setText:v9];

  v11 = [v5 subtitle];
  v12 = [v11 length];

  if (v12)
  {
    v8 = [v5 subtitle];
    goto LABEL_5;
  }

  v13 = [v27 secondaryLabel];
  [v13 setText:0];
LABEL_6:

  v15 = [v5 artwork];

  if (v15)
  {
    v16 = [v5 artwork];
    v17 = [v27 traitCollection];
    v18 = ImageForArtwork();
    [v27 setImageSource:v18];
  }

  else
  {
    v19 = v27;
    v20 = [v19 window];
    v21 = [v20 screen];
    if (v21)
    {
      v22 = [v19 window];
      v23 = [v22 screen];
      [v23 nativeScale];
      v25 = v24;
    }

    else
    {
      v22 = +[UIScreen mainScreen];
      [v22 nativeScale];
      v25 = v26;
    }

    v16 = sub_10095510C(v5, 4, v25);
    [v19 setImageSource:v16];
  }

  [v27 setShowDismissButton:1];
}

+ (void)configureHeaderView:(id)a3 withTrafficIncidentAlert:(id)a4
{
  v22 = a3;
  v5 = a4;
  v6 = [v5 alertTitles];
  v7 = [v6 firstObject];
  v8 = [v22 primaryLabel];
  [v8 setText:v7];

  v9 = [v5 alertDescriptions];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [v5 alertDescriptions];
    v12 = [v11 firstObject];
    v13 = [v22 secondaryLabel];
    [v13 setText:v12];
  }

  else
  {
    v11 = [v22 secondaryLabel];
    [v11 setText:0];
  }

  v14 = [NavTrafficIncidentViewComposer imageForMNTrafficIncidentAlert:v5 view:v22];
  [v22 setImageSource:v14];

  [v22 setShowDismissButton:{objc_msgSend(v5, "includeDismissButton")}];
  v15 = [v5 defaultButtonInfo];
  if (v15)
  {
    v16 = 1;
  }

  else
  {
    [v5 alertDisplayDuration];
    v16 = v17 == 0.0;
  }

  v18 = [v22 dismissButton];
  [v18 setProgressionHidden:v16];

  [v5 alertDisplayDuration];
  v20 = v19;
  v21 = [v22 dismissButton];
  [v21 setAnimationDuration:v20];
}

+ (id)imageForMNTrafficIncidentAlert:(id)a3 view:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 artwork];

  if (v8)
  {
    v9 = sub_1008EB5E0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 artwork];
      v41 = 134349314;
      v42 = a1;
      v43 = 2112;
      v44 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Initializing using artwork %@", &v41, 0x16u);
    }

    v11 = [v6 artwork];
    v12 = [v7 traitCollection];
    v13 = ImageForArtwork();
    goto LABEL_5;
  }

  v15 = [v6 incident];

  if (v15)
  {
    v16 = sub_1008EB5E0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v6 incident];
      v41 = 134349314;
      v42 = a1;
      v43 = 2112;
      v44 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] Initializing using incident type %@", &v41, 0x16u);
    }

    v11 = [v6 incident];
    v18 = v7;
    v19 = [v18 window];
    v20 = [v19 screen];
    if (v20)
    {
      v21 = [v18 window];
      v22 = [v21 screen];
      [v22 nativeScale];
      v24 = v23;
    }

    else
    {
      v21 = +[UIScreen mainScreen];
      [v21 nativeScale];
      v24 = v35;
    }

    v14 = sub_100955280(v11, v24);
    goto LABEL_20;
  }

  v25 = [v6 originalRoute];
  if ([v25 isEVRoute])
  {
    v26 = [v6 alertType];

    if (v26 != 6)
    {
      v27 = sub_1008EB5E0();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v41 = 134349056;
        v42 = a1;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[%{public}p] Initializing using VKTrafficIncidentTypeBatteryReroute", &v41, 0xCu);
      }

      v28 = v7;
      v29 = [v28 window];
      v30 = [v29 screen];
      if (v30)
      {
        v31 = [v28 window];
        v32 = [v31 screen];
        [v32 nativeScale];
        v34 = v33;
      }

      else
      {
        v31 = +[UIScreen mainScreen];
        [v31 nativeScale];
        v34 = v38;
      }

      v39 = [v6 artwork];
      v11 = [v39 icon];

      v12 = [v11 styleAttributes];
      if (v12)
      {
        v40 = [[GEOFeatureStyleAttributes alloc] initWithGEOStyleAttributes:v12];
        v14 = [MKIconManager imageForStyle:v40 size:4 forScale:0 format:v34];

        if (v14)
        {
          goto LABEL_6;
        }
      }

      v13 = sub_100955208(0xCuLL, 4);
LABEL_5:
      v14 = v13;
LABEL_6:

LABEL_20:
      goto LABEL_21;
    }
  }

  else
  {
  }

  v37 = sub_1008EB5E0();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v41 = 134349312;
    v42 = a1;
    v43 = 2048;
    v44 = v6;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "[%{public}p] No GEORouteIncident to configure header for MNTrafficIncidentAlert %p", &v41, 0x16u);
  }

  v14 = [UIImage imageNamed:@"alert-big"];
LABEL_21:

  return v14;
}

@end
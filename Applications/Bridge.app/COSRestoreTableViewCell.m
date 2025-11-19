@interface COSRestoreTableViewCell
- (COSRestoreTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (unsigned)_NRWatchVersionFromBackup:(id)a3;
- (void)layoutSubviews;
- (void)setRestoreDetailsFromBackup:(id)a3;
- (void)setRestoreDetailsFromDevice:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation COSRestoreTableViewCell

- (COSRestoreTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v76.receiver = self;
  v76.super_class = COSRestoreTableViewCell;
  v4 = [(COSRestoreTableViewCell *)&v76 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[COSWatchView alloc] initWithStyle:3];
    watchView = v4->_watchView;
    v4->_watchView = v5;

    [(COSRestoreTableViewCell *)v4 addSubview:v4->_watchView];
    v81 = &off_100281A50;
    v82 = &off_100281EA0;
    v7 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    __asm { FMOV            V1.2D, #17.0 }

    v67 = _Q1;
    v70 = _Q1;
    v73 = _Q1;
    BPSScreenValueGetRelevantZoomValue();
    v14 = v13;

    v79 = &off_100281A50;
    v80 = &off_100281EB0;
    v15 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1, 0x4030000000000000, 0x4031000000000000, v67, v70, v73];
    __asm { FMOV            V1.2D, #14.0 }

    v68 = _Q1;
    v71 = _Q1;
    v74 = _Q1;
    BPSScreenValueGetRelevantZoomValue();
    v18 = v17;

    v77 = &off_100281A50;
    v78 = &off_100281EC0;
    v19 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1, 0x402A000000000000, 0x402C000000000000, v68, v71, v74];
    __asm { FMOV            V1.2D, #12.0 }

    v69 = _Q1;
    v72 = _Q1;
    v75 = _Q1;
    BPSScreenValueGetRelevantZoomValue();
    v22 = v21;

    v23 = [UIFont systemFontOfSize:v14, 0x4024000000000000, 0x4026000000000000, v69, v72, v75];
    v24 = [UIFont systemFontOfSize:v18 weight:UIFontWeightMedium];
    v25 = [UIFont systemFontOfSize:v22 weight:UIFontWeightMedium];
    v26 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v30 = [v26 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    deviceTitleLabel = v4->_deviceTitleLabel;
    v4->_deviceTitleLabel = v30;

    [(UILabel *)v4->_deviceTitleLabel setFont:v23];
    v32 = v4->_deviceTitleLabel;
    v33 = +[UIColor clearColor];
    [(UILabel *)v32 setBackgroundColor:v33];

    v34 = v4->_deviceTitleLabel;
    v35 = BPSTextColor();
    [(UILabel *)v34 setTextColor:v35];

    [(UILabel *)v4->_deviceTitleLabel setTextAlignment:4];
    [(UILabel *)v4->_deviceTitleLabel setNumberOfLines:0];
    [(COSRestoreTableViewCell *)v4 addSubview:v4->_deviceTitleLabel];
    v36 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    pairedStatusLabel = v4->_pairedStatusLabel;
    v4->_pairedStatusLabel = v36;

    [(UILabel *)v4->_pairedStatusLabel setFont:v24];
    v38 = v4->_pairedStatusLabel;
    v39 = +[UIColor clearColor];
    [(UILabel *)v38 setBackgroundColor:v39];

    v40 = v4->_pairedStatusLabel;
    v41 = BPSTextColor();
    [(UILabel *)v40 setTextColor:v41];

    [(UILabel *)v4->_pairedStatusLabel setTextAlignment:4];
    [(UILabel *)v4->_pairedStatusLabel setNumberOfLines:0];
    [(COSRestoreTableViewCell *)v4 addSubview:v4->_pairedStatusLabel];
    v42 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    deviceMaterialLabel = v4->_deviceMaterialLabel;
    v4->_deviceMaterialLabel = v42;

    [(UILabel *)v4->_deviceMaterialLabel setFont:v24];
    v44 = v4->_deviceMaterialLabel;
    v45 = +[UIColor clearColor];
    [(UILabel *)v44 setBackgroundColor:v45];

    v46 = v4->_deviceMaterialLabel;
    v47 = +[UIColor systemGrayColor];
    [(UILabel *)v46 setTextColor:v47];

    [(UILabel *)v4->_deviceMaterialLabel setTextAlignment:4];
    [(UILabel *)v4->_deviceMaterialLabel setNumberOfLines:0];
    [(COSRestoreTableViewCell *)v4 addSubview:v4->_deviceMaterialLabel];
    v48 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    deviceCaseSizeLabel = v4->_deviceCaseSizeLabel;
    v4->_deviceCaseSizeLabel = v48;

    [(UILabel *)v4->_deviceCaseSizeLabel setFont:v24];
    [(UILabel *)v4->_deviceCaseSizeLabel setAdjustsFontSizeToFitWidth:1];
    v50 = v4->_deviceCaseSizeLabel;
    v51 = +[UIColor clearColor];
    [(UILabel *)v50 setBackgroundColor:v51];

    v52 = v4->_deviceCaseSizeLabel;
    v53 = +[UIColor systemGrayColor];
    [(UILabel *)v52 setTextColor:v53];

    [(UILabel *)v4->_deviceCaseSizeLabel setTextAlignment:4];
    [(COSRestoreTableViewCell *)v4 addSubview:v4->_deviceCaseSizeLabel];
    v54 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    deviceLastBackupDetailLabel = v4->_deviceLastBackupDetailLabel;
    v4->_deviceLastBackupDetailLabel = v54;

    [(UILabel *)v4->_deviceLastBackupDetailLabel setFont:v25];
    [(UILabel *)v4->_deviceLastBackupDetailLabel setAdjustsFontSizeToFitWidth:1];
    v56 = v4->_deviceLastBackupDetailLabel;
    v57 = +[UIColor clearColor];
    [(UILabel *)v56 setBackgroundColor:v57];

    v58 = v4->_deviceLastBackupDetailLabel;
    v59 = +[UIColor systemGrayColor];
    [(UILabel *)v58 setTextColor:v59];

    [(UILabel *)v4->_deviceLastBackupDetailLabel setTextAlignment:4];
    [(UILabel *)v4->_deviceLastBackupDetailLabel setNumberOfLines:0];
    [(UILabel *)v4->_deviceLastBackupDetailLabel setLineBreakMode:0];
    [(COSRestoreTableViewCell *)v4 addSubview:v4->_deviceLastBackupDetailLabel];
    v60 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    updateRequiredLabel = v4->_updateRequiredLabel;
    v4->_updateRequiredLabel = v60;

    [(UILabel *)v4->_updateRequiredLabel setFont:v25];
    [(UILabel *)v4->_updateRequiredLabel setAdjustsFontSizeToFitWidth:1];
    v62 = v4->_updateRequiredLabel;
    v63 = +[UIColor clearColor];
    [(UILabel *)v62 setBackgroundColor:v63];

    v64 = v4->_updateRequiredLabel;
    v65 = +[UIColor systemRedColor];
    [(UILabel *)v64 setTextColor:v65];

    [(UILabel *)v4->_updateRequiredLabel setTextAlignment:4];
    [(COSRestoreTableViewCell *)v4 addSubview:v4->_updateRequiredLabel];
    [(COSRestoreTableViewCell *)v4 setSelectionStyle:0];
  }

  return v4;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = COSRestoreTableViewCell;
  [(COSRestoreTableViewCell *)&v6 setSelected:?];
  if (v3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [(COSRestoreTableViewCell *)self setAccessoryType:v5];
}

- (void)setRestoreDetailsFromBackup:(id)a3
{
  v4 = a3;
  deviceTitleLabel = self->_deviceTitleLabel;
  v6 = [v4 name];
  [(UILabel *)deviceTitleLabel setText:v6];

  v41 = [v4 housingColor];
  v7 = [v41 integerValue];
  if (!v7 || (v8 = [PBBridgeWatchAttributeController _materialForCLHSValue:v7]) == 0)
  {
    v9 = [v4 topEnclosureMaterial];
    v8 = [v9 integerValue];
  }

  deviceMaterialLabel = self->_deviceMaterialLabel;
  v11 = BPSLocalizedNameForMaterial();
  [(UILabel *)deviceMaterialLabel setText:v11];

  deviceCaseSizeLabel = self->_deviceCaseSizeLabel;
  v13 = [v4 productType];
  v14 = BPSLocalizedVariantSizeForProductType();
  [(UILabel *)deviceCaseSizeLabel setText:v14];

  v15 = objc_alloc_init(NSDateFormatter);
  [v15 setTimeStyle:1];
  [v15 setDateStyle:1];
  [v15 setDoesRelativeDateFormatting:1];
  v16 = [v4 marketingVersion];
  if (!v16)
  {
    v16 = [v4 systemVersion];
  }

  v17 = [v4 lastModificationDate];
  v18 = [v15 stringFromDate:v17];

  if (v18)
  {
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"DATE_AND_OS_%@_%@" value:&stru_10026E598 table:@"Localizable"];
    v21 = [NSString stringWithFormat:v20, v18, v16];
  }

  else
  {
    v21 = v16;
  }

  v40 = v21;
  [(UILabel *)self->_deviceLastBackupDetailLabel setText:v21];
  v22 = [v4 productType];
  v23 = BPSVariantSizeForProductType();

  [(COSWatchView *)self->_watchView overrideMaterial:v8 size:v23];
  [(UILabel *)self->_pairedStatusLabel setText:&stru_10026E598];
  v24 = [v4 activeWatchFaceFileURL];
  v25 = v24;
  if (v24 && [v24 isFileURL])
  {
    v26 = [v25 path];
  }

  else
  {
    v26 = 0;
  }

  v27 = [v4 watchFaceData];

  if (v27)
  {
    v28 = [v4 watchFaceData];
    v29 = [UIImage imageWithData:v28];
    [(COSWatchView *)self->_watchView setStaticSnapShot:v29];

    v30 = pbb_setupflow_log();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v31 = "Setting up snapshot for backup with data from backup";
  }

  else if (v26)
  {
    [(COSWatchView *)self->_watchView setWatchFaceFilePath:v26];
    v30 = pbb_setupflow_log();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v31 = "Setting up snapshot from file in backup";
  }

  else
  {
    v30 = pbb_setupflow_log();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v31 = "No watch face data, nor watch face file.  Watch will be blank";
  }

  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 2u);
LABEL_22:

  v32 = +[COSBackupManager sharedBackupManager];
  v33 = [v32 minWatchOSVersion];
  v34 = NRWatchOSVersion();

  [(COSRestoreTableViewCell *)self _NRWatchVersionFromBackup:v4];
  LOBYTE(v33) = NRVersionIsGreaterThanOrEqual();
  v35 = pbb_setupflow_log();
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
  if (v33)
  {
    if (v36)
    {
      *buf = 138412546;
      v43 = v16;
      v44 = 1024;
      v45 = v34;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "found compatible backup: %@ - %u", buf, 0x12u);
    }
  }

  else
  {
    if (v36)
    {
      *buf = 138412546;
      v43 = v16;
      v44 = 1024;
      v45 = v34;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "found incompatible backup: %@ - %u", buf, 0x12u);
    }

    updateRequiredLabel = self->_updateRequiredLabel;
    v38 = +[NSBundle mainBundle];
    v39 = [v38 localizedStringForKey:@"BACKUP_UPDATE_REQUIRED" value:&stru_10026E598 table:@"Localizable"];
    [(UILabel *)updateRequiredLabel setText:v39];

    self->_updateRequired = 1;
  }

  [(COSRestoreTableViewCell *)self setNeedsLayout];
}

- (unsigned)_NRWatchVersionFromBackup:(id)a3
{
  v3 = a3;
  v4 = [v3 systemVersion];
  v5 = [v3 productName];

  if (!v5)
  {
    v6 = [v4 hasPrefix:@"8.2"];
    v7 = @"Watch OS";
    if (v6)
    {
      v7 = @"iPhone OS";
    }

    v5 = v7;
  }

  v8 = NRWatchOSVersion();

  return v8;
}

- (void)setRestoreDetailsFromDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForProperty:NRDevicePropertyName];
  v6 = [v4 valueForProperty:NRDevicePropertyProductType];
  v7 = [v4 valueForProperty:NRDevicePropertySystemVersion];
  v32 = [PBBridgeWatchAttributeController materialFromDevice:v4];
  v8 = [v4 valueForProperty:NRDevicePropertyLastActiveDate];
  v35 = v5;
  [(UILabel *)self->_deviceTitleLabel setText:v5];
  deviceMaterialLabel = self->_deviceMaterialLabel;
  v10 = BPSLocalizedNameForMaterial();
  [(UILabel *)deviceMaterialLabel setText:v10];

  deviceCaseSizeLabel = self->_deviceCaseSizeLabel;
  v12 = BPSLocalizedVariantSizeForProductType();
  [(UILabel *)deviceCaseSizeLabel setText:v12];

  v13 = objc_alloc_init(NSDateFormatter);
  [v13 setTimeStyle:1];
  [v13 setDateStyle:1];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"DATE_AND_OS_%@_%@" value:&stru_10026E598 table:@"Localizable"];
  v33 = v8;
  v16 = [v13 stringFromDate:v8];
  v34 = v7;
  v17 = [NSString stringWithFormat:v15, v16, v7];

  v18 = v6;
  [(UILabel *)self->_deviceLastBackupDetailLabel setText:v17];
  [(COSWatchView *)self->_watchView overrideMaterial:v32 size:BPSVariantSizeForProductType()];
  [(COSWatchView *)self->_watchView setAssociatedDevice:v4];
  pairedStatusLabel = self->_pairedStatusLabel;
  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"CURRENTLY_PAIRED_TITLE" value:&stru_10026E598 table:@"Localizable"];
  [(UILabel *)pairedStatusLabel setText:v21];

  v22 = +[COSBackupManager sharedBackupManager];
  v23 = [v22 minWatchOSVersion];
  v24 = NRWatchOSVersion();

  v25 = NRWatchOSVersionForRemoteDevice();
  LOBYTE(v22) = NRVersionIsGreaterThanOrEqual();
  v26 = pbb_setupflow_log();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v27)
    {
      v28 = [v4 valueForProperty:NRDevicePropertyPairingID];
      *buf = 67109634;
      v37 = v25;
      v38 = 1024;
      v39 = v24;
      v40 = 2112;
      v41 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "found compatible device: %u - %u - %@", buf, 0x18u);
    }
  }

  else
  {
    if (v27)
    {
      *buf = 67109376;
      v37 = v25;
      v38 = 1024;
      v39 = v24;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "found incompatible device: %u - %u", buf, 0xEu);
    }

    updateRequiredLabel = self->_updateRequiredLabel;
    v30 = +[NSBundle mainBundle];
    v31 = [v30 localizedStringForKey:@"BACKUP_UPDATE_REQUIRED" value:&stru_10026E598 table:@"Localizable"];
    [(UILabel *)updateRequiredLabel setText:v31];

    self->_updateRequired = 1;
  }

  [(COSRestoreTableViewCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v79.receiver = self;
  v79.super_class = COSRestoreTableViewCell;
  [(COSRestoreTableViewCell *)&v79 layoutSubviews];
  [(COSRestoreTableViewCell *)self bounds];
  v4 = v3;
  v85 = &off_100281A50;
  v86 = &off_100281ED0;
  v5 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
  __asm { FMOV            V1.2D, #25.0 }

  *buf = xmmword_1001C69A0;
  *&buf[16] = _Q1;
  v83 = _Q1;
  v84 = _Q1;
  BPSScreenValueGetRelevantZoomValue();
  v12 = v11;

  v80 = &off_100281A50;
  v81 = &off_100281EE0;
  v13 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
  __asm { FMOV            V1.2D, #24.0 }

  *buf = xmmword_1001C69B0;
  *&buf[16] = _Q1;
  v83 = _Q1;
  v84 = _Q1;
  BPSScreenValueGetRelevantZoomValue();
  v16 = v15;

  [(COSWatchView *)self->_watchView sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  v18 = v17;
  v20 = v19;
  v21 = [(COSRestoreTableViewCell *)self _shouldReverseLayoutDirection];
  v22 = v4 - v12 - v18;
  if (!v21)
  {
    v22 = v12;
  }

  v72 = v22;
  v23 = (148.0 - v20) * 0.5;
  v70 = floorf(v23);
  v71 = v20;
  v69 = v18;
  [(COSWatchView *)self->_watchView setFrame:?];
  v68 = v16;
  v24 = v4 + v16 * -2.0 - v18 + -44.0;
  [(UILabel *)self->_deviceTitleLabel sizeThatFits:?];
  v78 = v25;
  [(UILabel *)self->_pairedStatusLabel sizeThatFits:v24, 0.0];
  v76 = v26;
  v77 = v27;
  [(UILabel *)self->_deviceMaterialLabel sizeThatFits:v24, 0.0];
  v29 = v28;
  [(UILabel *)self->_deviceCaseSizeLabel sizeThatFits:v24, 0.0];
  v31 = v30;
  [(UILabel *)self->_deviceLastBackupDetailLabel sizeThatFits:v24, 0.0];
  v33 = v32;
  [(UILabel *)self->_updateRequiredLabel sizeThatFits:v24, 0.0];
  v35 = v34;
  v37 = v36;
  __asm { FMOV            V0.2D, #6.0 }

  *buf = _Q0;
  *&buf[16] = _Q0;
  v83 = _Q0;
  v84 = _Q0;
  BPSScreenValueGetRelevantValue();
  v40 = v39;
  __asm { FMOV            V0.2D, #1.0 }

  *buf = _Q0;
  *&buf[16] = _Q0;
  v83 = _Q0;
  v84 = _Q0;
  BPSScreenValueGetRelevantValue();
  v74 = v42;
  v43 = v71;
  v75 = v31;
  v73 = v40;
  v44 = v33 + v40 + v31 + v29 + v78 + v40 + v42;
  v45 = v77;
  if (v76 <= 0.0)
  {
    v45 = 0.0;
  }

  v46 = v45 + v44;
  if (v35 <= 0.0)
  {
    v47 = 0.0;
  }

  else
  {
    v47 = v37;
  }

  v48 = v47 + v46;
  v49 = v72;
  v50 = v70;
  v51 = v69;
  if (v48 > CGRectGetHeight(*(&v43 - 3)))
  {
    v52 = pbb_setupflow_log();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = [(UILabel *)self->_deviceTitleLabel text];
      v54 = [(UILabel *)self->_deviceMaterialLabel text];
      v55 = [(UILabel *)self->_deviceCaseSizeLabel text];
      v56 = [(UILabel *)self->_deviceLastBackupDetailLabel text];
      *buf = 138413058;
      *&buf[4] = v53;
      *&buf[12] = 2112;
      *&buf[14] = v54;
      *&buf[22] = 2112;
      *&buf[24] = v55;
      LOWORD(v83) = 2112;
      *(&v83 + 2) = v56;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Back text group is too tall. %@ // %@ // %@ // %@", buf, 0x2Au);
    }
  }

  if (([(COSRestoreTableViewCell *)self _shouldReverseLayoutDirection]& 1) == 0)
  {
    v87.origin.x = v72;
    v87.origin.y = v70;
    v87.size.width = v69;
    v87.size.height = v71;
    v12 = v68 + CGRectGetMaxX(v87);
  }

  v88.origin.x = v72;
  v88.origin.y = v70;
  v88.size.width = v69;
  v88.size.height = v71;
  v57 = (CGRectGetHeight(v88) - v48) * 0.5;
  v58 = floorf(v57);
  v89.origin.x = v72;
  v89.origin.y = v70;
  v89.size.width = v69;
  v89.size.height = v71;
  v59 = CGRectGetMinY(v89) + v58;
  [(UILabel *)self->_deviceTitleLabel setFrame:v12, v59, v24 + 44.0, v78];
  v90.origin.x = v12;
  v90.origin.y = v59;
  v90.size.width = v24 + 44.0;
  v90.size.height = v78;
  v60 = v74 + CGRectGetMaxY(v90);
  [(UILabel *)self->_pairedStatusLabel setFrame:v12, v60, v24, v77];
  if (v76 <= 0.0)
  {
    v61 = v78;
  }

  else
  {
    v61 = v77;
  }

  if (v76 <= 0.0)
  {
    v62 = v24 + 44.0;
  }

  else
  {
    v62 = v24;
  }

  if (v76 <= 0.0)
  {
    v63 = v59;
  }

  else
  {
    v63 = v60;
  }

  v64 = v12;
  v65 = v73 + CGRectGetMaxY(*(&v61 - 3));
  [(UILabel *)self->_deviceMaterialLabel setFrame:v12, v65, v24, v29];
  v91.origin.x = v12;
  v91.origin.y = v65;
  v91.size.width = v24;
  v91.size.height = v29;
  v66 = v74 + CGRectGetMaxY(v91);
  [(UILabel *)self->_deviceCaseSizeLabel setFrame:v12, v66, v24, v75];
  v92.origin.x = v12;
  v92.origin.y = v66;
  v92.size.width = v24;
  v92.size.height = v75;
  v67 = v74 + CGRectGetMaxY(v92);
  [(UILabel *)self->_deviceLastBackupDetailLabel setFrame:v12, v67, v24, v33];
  v93.origin.x = v12;
  v93.origin.y = v67;
  v93.size.width = v24;
  v93.size.height = v33;
  [(UILabel *)self->_updateRequiredLabel setFrame:v12, v74 + CGRectGetMaxY(v93), v24, v37];
}

@end
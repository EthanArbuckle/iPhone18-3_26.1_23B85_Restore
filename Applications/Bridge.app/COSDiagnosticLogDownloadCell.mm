@interface COSDiagnosticLogDownloadCell
- (COSDiagnosticLogDownloadCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)checkForFileTransferProgress;
- (void)dealloc;
- (void)layoutSubviews;
- (void)listenForLogTransferProgress;
- (void)notifyDownload:(id)download;
- (void)updateProgress:(unint64_t)progress;
@end

@implementation COSDiagnosticLogDownloadCell

- (COSDiagnosticLogDownloadCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v26.receiver = self;
  v26.super_class = COSDiagnosticLogDownloadCell;
  v9 = [(COSDiagnosticLogDownloadCell *)&v26 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = [specifierCopy propertyForKey:@"DiagnosticLogOriginalPathKey"];
    fileName = v9->_fileName;
    v9->_fileName = v10;

    v12 = +[UIColor systemOrangeColor];
    enabledColor = v9->_enabledColor;
    v9->_enabledColor = v12;

    v14 = OBJC_IVAR___PSTableCell__specifier;
    objc_storeWeak(&v9->BPSLinkCell_opaque[OBJC_IVAR___PSTableCell__specifier], specifierCopy);
    v15 = [UIButton buttonWithType:1];
    downloadIconButton = v9->_downloadIconButton;
    v9->_downloadIconButton = v15;

    v17 = v9->_downloadIconButton;
    v18 = [UIImage systemImageNamed:@"arrow.down.doc"];
    [(UIButton *)v17 setImage:v18 forState:0];

    [(UIButton *)v9->_downloadIconButton setTitleColor:v9->_enabledColor forState:0];
    [(UIButton *)v9->_downloadIconButton setContentEdgeInsets:5.0, 5.0, 5.0, 5.0];
    [(UIButton *)v9->_downloadIconButton setAlpha:1.0];
    [(UIButton *)v9->_downloadIconButton addTarget:v9 action:"notifyDownload:" forEvents:64];
    contentView = [(COSDiagnosticLogDownloadCell *)v9 contentView];
    [contentView addSubview:v9->_downloadIconButton];

    v20 = objc_alloc_init(COSLogTransferSpinnerButton);
    logTransferSpinnerButton = v9->_logTransferSpinnerButton;
    v9->_logTransferSpinnerButton = v20;

    v22 = v9->_logTransferSpinnerButton;
    WeakRetained = objc_loadWeakRetained(&v9->BPSLinkCell_opaque[v14]);
    [(COSLogTransferSpinnerButton *)v22 setSpecifier:WeakRetained];

    contentView2 = [(COSDiagnosticLogDownloadCell *)v9 contentView];
    [contentView2 addSubview:v9->_logTransferSpinnerButton];

    [(COSDiagnosticLogDownloadCell *)v9 listenForLogTransferProgress];
  }

  return v9;
}

- (void)notifyDownload:(id)download
{
  v4 = +[NSNotificationCenter defaultCenter];
  v7 = @"Specifier";
  WeakRetained = objc_loadWeakRetained(&self->BPSLinkCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v8 = WeakRetained;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v4 postNotificationName:@"DiagnosticLogTransferTapped" object:0 userInfo:v6];
}

- (void)dealloc
{
  nssManager = self->_nssManager;
  if (nssManager)
  {
    self->_nssManager = 0;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, NSSFileTransferProgressChangedNotification, 0);
  v5.receiver = self;
  v5.super_class = COSDiagnosticLogDownloadCell;
  [(COSDiagnosticLogDownloadCell *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v78.receiver = self;
  v78.super_class = COSDiagnosticLogDownloadCell;
  [(COSDiagnosticLogDownloadCell *)&v78 layoutSubviews];
  _shouldReverseLayoutDirection = [(COSDiagnosticLogDownloadCell *)self _shouldReverseLayoutDirection];
  v4 = OBJC_IVAR___PSTableCell__specifier;
  WeakRetained = objc_loadWeakRetained(&self->BPSLinkCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v6 = [WeakRetained propertyForKey:@"DiagnosticLogDownloadingKey"];
  bOOLValue = [v6 BOOLValue];

  v8 = objc_loadWeakRetained(&self->BPSLinkCell_opaque[v4]);
  v9 = [v8 propertyForKey:@"FileDownloadedKey"];
  bOOLValue2 = [v9 BOOLValue];

  [(COSDiagnosticLogDownloadCell *)self bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  textLabel = [(COSDiagnosticLogDownloadCell *)self textLabel];
  detailTextLabel = [(COSDiagnosticLogDownloadCell *)self detailTextLabel];
  [textLabel frame];
  v22 = v21;
  v76 = v24;
  v77 = v23;
  v26 = v25;
  p_downloadIconButton = &self->_downloadIconButton;
  [(UIButton *)self->_downloadIconButton sizeToFit];
  [(UIButton *)self->_downloadIconButton frame];
  v29 = v28;
  v31 = v30 + 5.0;
  v79.origin.x = v12;
  v79.origin.y = v14;
  v74 = v18;
  v75 = v16;
  v79.size.width = v16;
  v79.size.height = v18;
  v32 = (CGRectGetHeight(v79) - v29) * 0.5;
  v33 = 15.0;
  if ((_shouldReverseLayoutDirection & 1) == 0)
  {
    v80.origin.x = v12;
    v80.origin.y = v14;
    v80.size.height = v18;
    v80.size.width = v75;
    v33 = CGRectGetWidth(v80) - (v31 + 15.0);
  }

  [(UIButton *)*p_downloadIconButton setFrame:v33, v32, v31, v29];
  [(UIButton *)*p_downloadIconButton frame];
  v35 = v34;
  v37 = v36;
  [(UIButton *)*p_downloadIconButton center];
  p_logTransferSpinnerButton = &self->_logTransferSpinnerButton;
  [(COSLogTransferSpinnerButton *)self->_logTransferSpinnerButton setCenter:?];
  [(UIButton *)*p_downloadIconButton frame];
  if (_shouldReverseLayoutDirection)
  {
    MinX = CGRectGetMinX(*&v39);
  }

  else
  {
    MaxX = CGRectGetMaxX(*&v39);
    [(COSLogTransferSpinnerButton *)*p_logTransferSpinnerButton size];
    MinX = MaxX - v45;
  }

  v72 = v14;
  [(COSLogTransferSpinnerButton *)*p_logTransferSpinnerButton setFrame:MinX, v35, v37, v37];
  contentView = [(COSDiagnosticLogDownloadCell *)self contentView];
  [contentView addSubview:*p_logTransferSpinnerButton];

  v47 = *p_downloadIconButton;
  v73 = v12;
  v48 = v26;
  if (bOOLValue2)
  {
    [(UIButton *)v47 setHidden:1];
    [(COSLogTransferSpinnerButton *)*p_logTransferSpinnerButton setHidden:1];
    [(COSDiagnosticLogDownloadCell *)self setAccessoryType:0];
LABEL_13:
    v50 = detailTextLabel;
    [v50 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
    v52 = v54;
    v53 = 35.0;
    goto LABEL_14;
  }

  if (bOOLValue)
  {
    v49 = &self->_logTransferSpinnerButton;
  }

  else
  {
    v49 = &self->_downloadIconButton;
  }

  [(UIButton *)v47 setHidden:bOOLValue];
  [(COSLogTransferSpinnerButton *)*p_logTransferSpinnerButton setHidden:bOOLValue ^ 1];
  v50 = *v49;
  [(COSDiagnosticLogDownloadCell *)self setAccessoryType:0];
  if (!v50)
  {
    goto LABEL_13;
  }

  [v50 size];
  v52 = v51;
  v53 = 15.0;
LABEL_14:
  [v50 frame];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  traitCollection = [(COSDiagnosticLogDownloadCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (v50)
  {
    v81.origin.x = v56;
    v81.origin.y = v58;
    v81.size.width = v60;
    v81.size.height = v62;
    if (CGRectGetWidth(v81) > 0.0 && !IsAccessibilityCategory)
    {
      if (_shouldReverseLayoutDirection)
      {
        v82.origin.x = v22;
        v82.size.height = v76;
        v82.origin.y = v77;
        v82.size.width = v48;
        v66 = CGRectGetMinX(v82);
        v83.origin.x = v56;
        v83.origin.y = v58;
        v83.size.width = v60;
        v83.size.height = v62;
        v67 = v66 - CGRectGetMaxX(v83);
        if (v67 < 0.0)
        {
          v68 = v67 + -6.0;
          v48 = v48 + v68;
          v22 = v22 - v68;
        }
      }

      else
      {
        v71 = v53;
        v84.origin.x = v56;
        v84.origin.y = v58;
        v84.size.width = v60;
        v84.size.height = v62;
        v69 = CGRectGetMaxX(v84) - v52;
        v85.origin.x = v22;
        v85.size.height = v76;
        v85.origin.y = v77;
        v85.size.width = v48;
        v70 = v69 - (CGRectGetMaxX(v85) + 6.0);
        if (v70 < 0.0)
        {
          v48 = v48 + v70;
          v86.origin.y = v72;
          v86.origin.x = v73;
          v86.size.height = v74;
          v86.size.width = v75;
          v56 = CGRectGetWidth(v86) - (v71 + v52);
          v60 = v52;
        }
      }
    }
  }

  [v50 setFrame:{v56, v58, v60, v62}];
  [textLabel setFrame:{v22, v77, v48, v76}];
}

- (void)listenForLogTransferProgress
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = NSSFileTransferProgressChangedNotification;

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1000700DC, v4, 0, 1024);
}

- (void)checkForFileTransferProgress
{
  WeakRetained = objc_loadWeakRetained(&self->BPSLinkCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v4 = [WeakRetained propertyForKey:@"DiagnosticLogDownloadingKey"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    if (!self->_nssManager)
    {
      v6 = [[NSSManager alloc] initWithQueue:&_dispatch_main_q];
      nssManager = self->_nssManager;
      self->_nssManager = v6;
    }

    fileName = [(COSDiagnosticLogDownloadCell *)self fileName];
    lastPathComponent = [fileName lastPathComponent];

    v10 = pbb_bridge_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = lastPathComponent;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "checking transfer progress for %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    nssManager = [(COSDiagnosticLogDownloadCell *)self nssManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000702FC;
    v13[3] = &unk_100269AA8;
    objc_copyWeak(&v16, buf);
    v12 = lastPathComponent;
    v14 = v12;
    selfCopy = self;
    [nssManager retrieveDiagnosticLogTransferProgress:v12 withProgress:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

- (void)updateProgress:(unint64_t)progress
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100070540;
  v3[3] = &unk_100268220;
  v3[4] = self;
  v3[5] = progress;
  dispatch_async(&_dispatch_main_q, v3);
}

@end
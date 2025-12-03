@interface AIAudiogramEnrollmentViewController
- (AIAudiogramConfirmResultsViewControllerDelegate)audiogramConfirmationDelegate;
- (AIAudiogramEnrollmentViewController)init;
- (AIAudiogramEnrollmentViewController)initWithDelegate:(id)delegate;
- (id)_imagesFromPDF:(id)f;
- (id)getNextFrequency:(id)frequency;
- (void)_addDebugToolbarItemToController:(id)controller;
- (void)_addInitialSensitivityPointAtFrequency:(id)frequency;
- (void)_cameraAccessisAuthorizedForHealth:(id)health;
- (void)_cancelTapped:(id)tapped;
- (void)_importAudiogramImage;
- (void)_importTapped:(id)tapped;
- (void)_manuallyImportAudiogram;
- (void)_openCamera;
- (void)_openCameraTapped:(id)tapped;
- (void)_openDocumentsTapped:(id)tapped;
- (void)_openPhotosTapped:(id)tapped;
- (void)_openTapToRadarWithAttachment:(BOOL)attachment;
- (void)_prepareToImportAudiogramImages:(id)images;
- (void)_showCameraAuthorizationInSetting;
- (void)_showCameraTips:(id)tips;
- (void)_showDebugViewForImage:(id)image debugInfo:(id)info;
- (void)_showNonCameraOptions:(id)options;
- (void)_showResultsForAudiogram:(id)audiogram;
- (void)_showTapToRadarAlert;
- (void)_showWelcome;
- (void)_showWelcomeV2;
- (void)_startManualEntryV2;
- (void)_tryAgainTapped:(id)tapped;
- (void)didSelectNodeToAddWithSelectedFrequency:(id)frequency;
- (void)didSelectNodeToEditWithSelectedFrequency:(id)frequency;
- (void)dismissCurrentFrequencyInputViewControllerWithAudiogram:(id)audiogram;
- (void)documentCameraViewController:(id)controller didFailWithError:(id)error;
- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan;
- (void)documentCameraViewControllerDidCancel:(id)cancel;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)picker:(id)picker didFinishPicking:(id)picking;
- (void)refreshFinalConfirmationView;
- (void)setHealthStore:(id)store unitPreferenceController:(id)controller initialDate:(id)date;
- (void)showIndividualFirstSensitivityPointInputViewController;
- (void)showNextFrequencyInputViewControllerWithAudiogram:(id)audiogram previousFrequency:(id)frequency;
- (void)updateAudiogramDate:(id)date;
- (void)updateFrequencyViewControllers;
- (void)updateSelectedFrequenciesWithSelectedFrequencies:(id)frequencies;
- (void)updateSelectedSymbolsWithSelectedSymbols:(id)symbols;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation AIAudiogramEnrollmentViewController

- (AIAudiogramEnrollmentViewController)init
{
  v5.receiver = self;
  v5.super_class = AIAudiogramEnrollmentViewController;
  v2 = [(AIAudiogramEnrollmentViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AIAudiogramEnrollmentViewController *)v2 setAnalyticsClient:0];
  }

  return v3;
}

- (AIAudiogramEnrollmentViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(AIAudiogramEnrollmentViewController *)self init];
  v6 = v5;
  if (v5)
  {
    [(AIAudiogramEnrollmentViewController *)v5 setAudiogramConfirmationDelegate:delegateCopy];
  }

  return v6;
}

- (void)setHealthStore:(id)store unitPreferenceController:(id)controller initialDate:(id)date
{
  dateCopy = date;
  controllerCopy = controller;
  [(AIAudiogramEnrollmentViewController *)self setHealthStore:store];
  [(AIAudiogramEnrollmentViewController *)self setUnitPreferenceController:controllerCopy];

  [(AIAudiogramEnrollmentViewController *)self setInitialDate:dateCopy];
}

- (void)viewDidLoad
{
  v11 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = AIAudiogramEnrollmentViewController;
  [(OBNavigationController *)&v8 viewDidLoad];
  v3 = [[AIAudiogramIngestionEngine alloc] initWithDelegate:self];
  audiogramEngine = self->_audiogramEngine;
  self->_audiogramEngine = v3;

  self->_isCameraAvailable = [MEMORY[0x277D755C8] isSourceTypeAvailable:1];
  isAvailable = [(AIAudiogramIngestionEngine *)self->_audiogramEngine isAvailable];
  v6 = AXLogAudiogram();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v10 = isAvailable;
    _os_log_impl(&dword_24179B000, v6, OS_LOG_TYPE_INFO, "Starting audiogram ingestion. Is model is available? %d", buf, 8u);
  }

  if (!isAvailable)
  {
    [(AIAudiogramIngestionEngine *)self->_audiogramEngine startRetrievingLatestModelSilently];
  }

  presentationController = [(AIAudiogramEnrollmentViewController *)self presentationController];
  [presentationController setDelegate:self];

  if (_os_feature_enabled_impl())
  {
    [(AIAudiogramEnrollmentViewController *)self _showWelcomeV2];
  }

  else
  {
    [(AIAudiogramEnrollmentViewController *)self _showWelcome];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = AIAudiogramEnrollmentViewController;
  [(AIAudiogramEnrollmentViewController *)&v7 viewDidAppear:appear];
  view = [(AIAudiogramEnrollmentViewController *)self view];
  if (view)
  {
    v5 = view;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [v5 superview];

      v5 = superview;
      if (!superview)
      {
        return;
      }
    }

    [v5 setAccessibilityViewIsModal:1];
  }
}

- (id)_imagesFromPDF:(id)f
{
  v26 = *MEMORY[0x277D85DE8];
  fCopy = f;
  v4 = fCopy;
  if (!fCopy)
  {
    v22 = AXLogAudiogram();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [AIAudiogramEnrollmentViewController _imagesFromPDF:];
    }

    goto LABEL_24;
  }

  v5 = CGPDFDocumentCreateWithURL(fCopy);
  if (!v5)
  {
    v22 = AXLogAudiogram();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [AIAudiogramEnrollmentViewController _imagesFromPDF:];
    }

LABEL_24:

    v7 = 0;
    goto LABEL_25;
  }

  v6 = v5;
  v7 = objc_opt_new();
  NumberOfPages = CGPDFDocumentGetNumberOfPages(v6);
  if (NumberOfPages >= 1)
  {
    v9 = NumberOfPages;
    v10 = 1;
    do
    {
      Page = CGPDFDocumentGetPage(v6, v10);
      if (Page)
      {
        v12 = Page;
        RotationAngle = CGPDFPageGetRotationAngle(Page);
        v14 = AXLogAudiogram();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v25 = RotationAngle;
          _os_log_impl(&dword_24179B000, v14, OS_LOG_TYPE_INFO, "PDF page angle %i", buf, 8u);
        }

        BoxRect = CGPDFPageGetBoxRect(v12, kCGPDFMediaBox);
        BoxRect.origin.x = BoxRect.size.width * 4.16666651;
        v15 = BoxRect.size.height * 4.16666651;
        BoxRect.origin.y = BoxRect.size.height * 4.16666651;
        UIGraphicsBeginImageContext(BoxRect.origin);
        CurrentContext = UIGraphicsGetCurrentContext();
        CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationHigh);
        CGContextTranslateCTM(CurrentContext, 0.0, v15);
        CGContextScaleCTM(CurrentContext, 4.16666651, -4.16666651);
        CGContextSaveGState(CurrentContext);
        CGContextDrawPDFPage(CurrentContext, v12);
        CGContextRestoreGState(CurrentContext);
        v17 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        v18 = 1;
        if ((RotationAngle - 136) >= 0x5A)
        {
          v18 = 2 * ((RotationAngle - 226) < 0x5A);
        }

        if ((RotationAngle - 46) >= 0x5A)
        {
          v19 = v18;
        }

        else
        {
          v19 = 3;
        }

        v20 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(v17 scale:"CGImage") orientation:{v19, 1.0}];

        [v7 addObject:v20];
      }

      else
      {
        v20 = AXLogAudiogram();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v25 = v10;
          _os_log_error_impl(&dword_24179B000, v20, OS_LOG_TYPE_ERROR, "Unable to get page (%i) from document", buf, 8u);
        }
      }

      if (v10 > 2)
      {
        break;
      }
    }

    while (v9 > v10++);
  }

  CFRelease(v4);
  CFRelease(v6);
LABEL_25:

  return v7;
}

- (void)_showWelcome
{
  v3 = [MEMORY[0x277D755B8] _systemImageNamed:@"waveform.path"];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v31 = [v3 imageWithTintColor:systemBlueColor renderingMode:1];

  v5 = objc_alloc(MEMORY[0x277D37698]);
  v6 = aiLocString(@"AudiogramIngestionWelcomeTitle");
  v7 = aiLocString(@"AudiogramIngestionWelcomeDetailText");
  v8 = [v5 initWithTitle:v6 detailText:v7 icon:v31];

  headerView = [v8 headerView];
  LODWORD(v10) = 1036831949;
  [headerView setTitleHyphenationFactor:v10];

  if ([(AIAudiogramEnrollmentViewController *)self isCameraAvailable])
  {
    v11 = [MEMORY[0x277D755B8] _systemImageNamed:@"camera"];
    systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];
    v13 = [v11 imageWithTintColor:systemBlueColor2 renderingMode:1];

    v14 = aiLocString(@"AudiogramIngestionOptionCameraTitle");
    v15 = aiLocString(@"AudiogramIngestionOptionCameraDescription");
    [v8 addBulletedListItemWithTitle:v14 description:v15 image:v13];
  }

  v16 = [MEMORY[0x277D755B8] _systemImageNamed:@"photo.on.rectangle.angled"];
  systemBlueColor3 = [MEMORY[0x277D75348] systemBlueColor];
  v18 = [v16 imageWithTintColor:systemBlueColor3 renderingMode:1];

  v19 = aiLocString(@"AudiogramIngestionOptionPhotosTitle");
  v20 = aiLocString(@"AudiogramIngestionOptionPhotosDescription");
  [v8 addBulletedListItemWithTitle:v19 description:v20 image:v18];

  v21 = [MEMORY[0x277D755B8] _systemImageNamed:@"folder"];
  systemBlueColor4 = [MEMORY[0x277D75348] systemBlueColor];
  v23 = [v21 imageWithTintColor:systemBlueColor4 renderingMode:1];

  v24 = aiLocString(@"AudiogramIngestionOptionFilesTitle");
  v25 = aiLocString(@"AudiogramIngestionOptionFilesDescription");
  [v8 addBulletedListItemWithTitle:v24 description:v25 image:v23];

  boldButton = [MEMORY[0x277D37618] boldButton];
  v27 = aiLocString(@"AudiogramIngestionImportButton");
  [boldButton setTitle:v27 forState:0];

  [boldButton addTarget:self action:sel__importTapped_ forControlEvents:64];
  buttonTray = [v8 buttonTray];
  [buttonTray addButton:boldButton];

  v29 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelTapped_];
  navigationItem = [v8 navigationItem];
  [navigationItem setRightBarButtonItem:v29];

  [(OBNavigationController *)self pushViewController:v8 animated:1];
}

- (void)_showWelcomeV2
{
  v23 = [MEMORY[0x277D755B8] _systemImageNamed:@"chart.line.text.clipboard"];
  v3 = objc_alloc(MEMORY[0x277D37698]);
  v4 = aiLocString(@"AudiogramIngestionWelcomeTitleV2");
  v5 = aiLocString(@"AudiogramIngestionWelcomeDetailTextV2");
  v6 = [v3 initWithTitle:v4 detailText:v5 icon:v23];

  headerView = [v6 headerView];
  LODWORD(v8) = 1036831949;
  [headerView setTitleHyphenationFactor:v8];

  v9 = [MEMORY[0x277D755B8] _systemImageNamed:@"xmark.triangle.circle.square"];
  v10 = aiLocString(@"AudiogramIngestionOptionSymbolsTitle");
  v11 = aiLocString(@"AudiogramIngestionOptionSymbolsDescription");
  [v6 addBulletedListItemWithTitle:v10 description:v11 image:v9];

  v12 = [MEMORY[0x277D755B8] _systemImageNamed:@"lines.audiogram"];
  v13 = aiLocString(@"AudiogramIngestionOptionFrequenciesTitle");
  v14 = aiLocString(@"AudiogramIngestionOptionFrequenciesDescription");
  [v6 addBulletedListItemWithTitle:v13 description:v14 image:v12];

  if ([(AIAudiogramEnrollmentViewController *)self isCameraAvailable])
  {
    boldButton = [MEMORY[0x277D37618] boldButton];
    v16 = aiLocString(@"AudiogramIngestionScanWithCameraButton");
    [boldButton setTitle:v16 forState:0];

    [boldButton addTarget:self action:sel__showCameraTips_ forControlEvents:64];
    buttonTray = [v6 buttonTray];
    [buttonTray addButton:boldButton];
  }

  linkButton = [MEMORY[0x277D37650] linkButton];
  v19 = aiLocString(@"AudiogramIngestionEnterManuallyButton");
  [linkButton setTitle:v19 forState:0];

  [linkButton addTarget:self action:sel__showNonCameraOptions_ forControlEvents:64];
  buttonTray2 = [v6 buttonTray];
  [buttonTray2 addButton:linkButton];

  v21 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelTapped_];
  navigationItem = [v6 navigationItem];
  [navigationItem setRightBarButtonItem:v21];

  [(OBNavigationController *)self pushViewController:v6 animated:1];
}

- (void)_startManualEntryV2
{
  [(AIAudiogramEnrollmentViewController *)self setAnalyticsImportSource:0];
  [(AIAudiogramEnrollmentViewController *)self setAudiogram:0];
  [(AIAudiogramEnrollmentViewController *)self setSelectedFrequencies:0];
  date = [MEMORY[0x277CBEAA8] date];
  [(AIAudiogramEnrollmentViewController *)self setPickedDate:date];

  [(AIAudiogramEnrollmentViewController *)self setSelectedSymbols:0];

  [(AIAudiogramEnrollmentViewController *)self showSymbolSelectionViewController];
}

void __60__AIAudiogramEnrollmentViewController__showValidationFailed__block_invoke(uint64_t a1)
{
  v66[4] = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v2 = [*(a1 + 32) audiogramEngine];
    v3 = [v2 failureMode];

    if ((v3 - 1) > 3)
    {
      v4 = 0;
    }

    else
    {
      v4 = aiLocString(off_278CED110[v3 - 1]);
    }

    v9 = aiLocString(@"AudiogramIngestionValidationFailedDescriptionV2");
    v10 = v9;
    if (v4)
    {
      v11 = aiLocString(@"AudiogramIngestionValidationFailedWithReasonFormat");
      v51 = v4;
      v52 = v10;
      v12 = AXCFormattedString();
    }

    else
    {
      v12 = v9;
    }

    v13 = objc_alloc(MEMORY[0x277D37688]);
    v14 = aiLocString(@"AudiogramIngestionValidationFailedTitleV2");
    v15 = [v13 initWithTitle:v14 detailText:v12 icon:0 contentLayout:2];
    [*(a1 + 32) setValidationFailedController:v15];

    v16 = [*(a1 + 32) validationFailedController];
    v17 = [v16 headerView];
    v18 = [v17 customIconContainerView];

    if (v18)
    {
      v19 = [*(a1 + 32) audiogramImages];
      v20 = [v19 firstObject];

      if (v20)
      {
        v21 = objc_alloc(MEMORY[0x277D755E8]);
        v22 = [*(a1 + 32) audiogramImages];
        [v22 firstObject];
        v23 = v63 = v12;
        v64 = v10;
        v24 = [v21 initWithImage:v23];

        [v24 setContentMode:1];
        [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v18 addSubview:v24];
        [v18 setClipsToBounds:0];
        v56 = MEMORY[0x277CCAAD0];
        v62 = [v24 centerXAnchor];
        v61 = [v18 centerXAnchor];
        v60 = [v62 constraintEqualToAnchor:v61];
        v66[0] = v60;
        v59 = [v24 centerYAnchor];
        v58 = [v18 centerYAnchor];
        v57 = [v59 constraintEqualToAnchor:v58];
        v66[1] = v57;
        v55 = [v24 heightAnchor];
        v54 = [v18 heightAnchor];
        v53 = [v55 constraintEqualToAnchor:v54];
        v66[2] = v53;
        v25 = [v18 superview];
        v26 = [v25 heightAnchor];
        v27 = [*(a1 + 32) validationFailedController];
        [v27 view];
        v28 = v65 = v4;
        v29 = [v28 heightAnchor];
        v30 = [v26 constraintEqualToAnchor:v29 multiplier:0.2];
        v66[3] = v30;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:4];
        [v56 activateConstraints:v31];

        v4 = v65;
        v12 = v63;

        v10 = v64;
      }
    }
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277D37688]);
    v6 = aiLocString(@"AudiogramIngestionValidationFailedTitle");
    v7 = aiLocString(@"AudiogramIngestionValidationFailedDescription");
    v8 = [v5 initWithTitle:v6 detailText:v7 symbolName:0 contentLayout:2];
    [*(a1 + 32) setValidationFailedController:v8];
  }

  v32 = [*(a1 + 32) validationFailedController];
  v33 = [v32 headerView];
  LODWORD(v34) = 1036831949;
  [v33 setTitleHyphenationFactor:v34];

  v35 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:*(a1 + 32) action:sel__cancelTapped_];
  v36 = [*(a1 + 32) validationFailedController];
  v37 = [v36 navigationItem];
  [v37 setRightBarButtonItem:v35];

  LODWORD(v37) = _os_feature_enabled_impl();
  v38 = [MEMORY[0x277D37618] boldButton];
  if (v37)
  {
    v39 = aiLocString(@"AudiogramIngestionValidationFailedTryAgain");
    [v38 setTitle:v39 forState:0];

    [v38 addTarget:*(a1 + 32) action:sel__tryAgainTapped_ forControlEvents:64];
    v40 = [*(a1 + 32) validationFailedController];
    v41 = [v40 buttonTray];
    [v41 addButton:v38];

    v42 = [MEMORY[0x277D37650] linkButton];
    v43 = aiLocString(@"AudiogramIngestionEnterManuallyButton");
    [v42 setTitle:v43 forState:0];

    [v42 addTarget:*(a1 + 32) action:sel__startManualEntryV2 forControlEvents:64];
    v44 = [*(a1 + 32) validationFailedController];
    v45 = [v44 buttonTray];
    [v45 addButton:v42];
  }

  else
  {
    v46 = aiLocString(@"AudiogramIngestionManualImportButton");
    [v38 setTitle:v46 forState:0];

    [v38 addTarget:*(a1 + 32) action:sel__manuallyImportAudiogram forControlEvents:64];
    v42 = [*(a1 + 32) validationFailedController];
    v44 = [v42 buttonTray];
    [v44 addButton:v38];
  }

  [*(a1 + 32) _hideAnalyzingAudiogram];
  v47 = [*(a1 + 32) topViewController];
  v48 = [*(a1 + 32) validationFailedController];

  if (v47 != v48)
  {
    v49 = *(a1 + 32);
    v50 = [v49 validationFailedController];
    [v49 pushViewController:v50 animated:0];

    if ([MEMORY[0x277D12B60] isInternalInstall])
    {
      if (_os_feature_enabled_impl())
      {
        AXPerformBlockOnMainThreadAfterDelay();
      }
    }
  }
}

void __60__AIAudiogramEnrollmentViewController__showValidationFailed__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 validationFailedController];
  [v1 _addDebugToolbarItemToController:v2];
}

void __64__AIAudiogramEnrollmentViewController__showDownloadingAudiogram__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) topViewController];
  v3 = [*(a1 + 32) loadingController];

  if (v2 != v3)
  {
    v4 = [AIAudiogramLoadingViewController alloc];
    v5 = aiLocString(@"AudiogramIngestionDownloadingTitle");
    v6 = [(AIAudiogramLoadingViewController *)v4 initWithTitle:v5 style:0];
    [*(a1 + 32) setLoadingController:v6];

    v7 = *(a1 + 32);
    v8 = [v7 loadingController];
    [v7 pushViewController:v8 animated:1];
  }
}

void __62__AIAudiogramEnrollmentViewController__showAnalyzingAudiogram__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) topViewController];
  v3 = [*(a1 + 32) loadingController];

  if (v2 != v3)
  {
    v4 = [[AIAudiogramLoadingViewController alloc] initWithTitle:&stru_28535F0B0 style:1];
    [*(a1 + 32) setLoadingController:v4];

    v5 = *(a1 + 32);
    v6 = [v5 loadingController];
    [v5 pushViewController:v6 animated:0];
  }
}

void __62__AIAudiogramEnrollmentViewController__hideAnalyzingAudiogram__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) topViewController];
  v3 = [*(a1 + 32) loadingController];

  if (v2 == v3)
  {
    v4 = [*(a1 + 32) popViewControllerAnimated:0];
  }
}

- (void)_showResultsForAudiogram:(id)audiogram
{
  audiogramCopy = audiogram;
  v3 = audiogramCopy;
  AXPerformBlockOnMainThread();
}

void __64__AIAudiogramEnrollmentViewController__showResultsForAudiogram___block_invoke(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = [*(a1 + 32) topViewController];
    v3 = [*(a1 + 32) loadingController];

    if (v2 == v3)
    {
      [*(a1 + 32) _hideAnalyzingAudiogram];
      v44 = 0;
      v45 = &v44;
      v46 = 0x2020000000;
      v47 = 0;
      v40 = 0;
      v41 = &v40;
      v42 = 0x2020000000;
      v43 = 0;
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__7;
      v38 = __Block_byref_object_dispose__7;
      v39 = [MEMORY[0x277CBEB58] set];
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__7;
      v32 = __Block_byref_object_dispose__7;
      v33 = [MEMORY[0x277CBEB18] array];
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v4 = [*(a1 + 40) sensitivityPoints];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __64__AIAudiogramEnrollmentViewController__showResultsForAudiogram___block_invoke_444;
      v19[3] = &unk_278CECE00;
      v19[4] = &v44;
      v19[5] = &v34;
      v19[6] = &v20;
      v19[7] = &v40;
      v19[8] = &v24;
      v19[9] = &v28;
      [v4 enumerateObjectsUsingBlock:v19];

      [*(a1 + 32) setSelectedFrequencies:v29[5]];
      [*(a1 + 32) setAudiogram:*(a1 + 40)];
      [*(a1 + 32) setHasRightSymbols:*(v41 + 24)];
      [*(a1 + 32) setHasLeftSymbols:*(v45 + 24)];
      v5 = [MEMORY[0x277CBEAA8] date];
      [*(a1 + 32) setPickedDate:v5];

      v6 = [v35[5] allObjects];
      [*(a1 + 32) setSelectedSymbols:v6];

      [*(a1 + 32) setHasRightMaskedSymbol:*(v25 + 24)];
      [*(a1 + 32) setHasLeftMaskedSymbol:*(v21 + 24)];
      v7 = [AIAudiogramFinalResultViewController alloc];
      v8 = v29[5];
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) audiogramConfirmationDelegate];
      v11 = [(AIAudiogramFinalResultViewController *)v7 initWithAudiogram:v9 selectedFrequencies:v8 audiogramConfirmationDelegate:v10 audiogramManualIngestionDelegate:*(a1 + 32)];

      -[AIAudiogramFinalResultViewController setAnalyticsImportSource:](v11, "setAnalyticsImportSource:", [*(a1 + 32) analyticsImportSource]);
      -[AIAudiogramFinalResultViewController setAnalyticsClient:](v11, "setAnalyticsClient:", [*(a1 + 32) analyticsClient]);
      [*(a1 + 32) pushViewController:v11 animated:0];
      [*(a1 + 32) setFinalResultViewController:v11];
      if ([MEMORY[0x277D12B60] isInternalInstall])
      {
        v18 = v11;
        AXPerformBlockOnMainThreadAfterDelay();
      }

      _Block_object_dispose(&v20, 8);
      _Block_object_dispose(&v24, 8);
      _Block_object_dispose(&v28, 8);

      _Block_object_dispose(&v34, 8);
      _Block_object_dispose(&v40, 8);
      _Block_object_dispose(&v44, 8);
    }
  }

  else
  {
    v12 = [AIAudiogramResultsViewController alloc];
    v13 = [*(a1 + 32) audiogramConfirmationDelegate];
    v17 = [(AIAudiogramResultsViewController *)v12 initWithDelegate:v13 audiogram:*(a1 + 40)];

    v14 = [*(a1 + 32) healthStore];
    [(AIAudiogramResultsViewController *)v17 setHealthStore:v14];

    v15 = [*(a1 + 32) unitPreferenceController];
    [(AIAudiogramResultsViewController *)v17 setUnitPreferenceController:v15];

    v16 = [*(a1 + 32) initialDate];
    [(AIAudiogramResultsViewController *)v17 setInitialDate:v16];

    [(AIAudiogramResultsViewController *)v17 setAnalyticsDidCompleteIngestion:*(a1 + 40) != 0];
    -[AIAudiogramResultsViewController setAnalyticsImportSource:](v17, "setAnalyticsImportSource:", [*(a1 + 32) analyticsImportSource]);
    -[AIAudiogramResultsViewController setAnalyticsClient:](v17, "setAnalyticsClient:", [*(a1 + 32) analyticsClient]);
    [*(a1 + 32) pushViewController:v17 animated:0];
  }
}

void __64__AIAudiogramEnrollmentViewController__showResultsForAudiogram___block_invoke_444(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = a2;
  v3 = [v18 tests];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        if ([v8 side])
        {
          if ([v8 side] != 1)
          {
            continue;
          }

          v10 = a1 + 64;
          v9 = a1 + 56;
          v11 = &unk_285365848;
          v12 = &unk_285365860;
        }

        else
        {
          v9 = a1 + 32;
          v11 = &unk_285365818;
          v10 = a1 + 48;
          v12 = &unk_285365830;
        }

        *(*(*v9 + 8) + 24) = 1;
        [*(*(*(a1 + 40) + 8) + 40) addObject:v11];
        *(*(*v10 + 8) + 24) = 1;
        [*(*(*(a1 + 40) + 8) + 40) addObject:v12];
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v13 = *(*(*(a1 + 72) + 8) + 40);
  v14 = MEMORY[0x277CCABB0];
  v15 = [v18 frequency];
  v16 = [getHKUnitClass_3() hertzUnit];
  [v15 doubleValueForUnit:v16];
  v17 = [v14 numberWithDouble:?];
  [v13 addObject:v17];
}

- (void)_addDebugToolbarItemToController:(id)controller
{
  v35[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if ([MEMORY[0x277D12B60] isInternalInstall])
  {
    if (_os_feature_enabled_impl())
    {
      navigationItem = [controllerCopy navigationItem];
      rightBarButtonItems = [navigationItem rightBarButtonItems];
      v7 = [rightBarButtonItems count];

      if (v7 <= 1)
      {
        objc_initWeak(&location, self);
        v8 = MEMORY[0x277D75710];
        v9 = MEMORY[0x277D750C8];
        v10 = [MEMORY[0x277D755B8] _systemImageNamed:@"rectangle.3.group"];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __72__AIAudiogramEnrollmentViewController__addDebugToolbarItemToController___block_invoke;
        v32[3] = &unk_278CECE50;
        objc_copyWeak(&v33, &location);
        v11 = [v9 actionWithTitle:@"Debug View" image:v10 identifier:@"debug" handler:v32];
        v35[0] = v11;
        v12 = MEMORY[0x277D750C8];
        v13 = [MEMORY[0x277D755B8] _systemImageNamed:@"ant"];
        v27 = MEMORY[0x277D85DD0];
        v28 = 3221225472;
        v29 = __72__AIAudiogramEnrollmentViewController__addDebugToolbarItemToController___block_invoke_3;
        v30 = &unk_278CECE50;
        objc_copyWeak(&v31, &location);
        v14 = [v12 actionWithTitle:@"File Radar" image:v13 identifier:@"radar" handler:&v27];
        v35[1] = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:{2, v27, v28, v29, v30}];
        v16 = [v8 menuWithTitle:@"[Internal Only]" children:v15];

        v17 = objc_alloc(MEMORY[0x277D751E0]);
        v18 = [MEMORY[0x277D755B8] _systemImageNamed:@"ant.fill"];
        v19 = [v17 initWithImage:v18 menu:v16];

        navigationItem2 = [controllerCopy navigationItem];
        rightBarButtonItems2 = [navigationItem2 rightBarButtonItems];
        v22 = [rightBarButtonItems2 mutableCopy];
        v23 = v22;
        if (v22)
        {
          array = v22;
        }

        else
        {
          array = [MEMORY[0x277CBEB18] array];
        }

        v25 = array;

        [v25 addObject:v19];
        navigationItem3 = [controllerCopy navigationItem];
        [navigationItem3 setRightBarButtonItems:v25];

        objc_destroyWeak(&v31);
        objc_destroyWeak(&v33);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __72__AIAudiogramEnrollmentViewController__addDebugToolbarItemToController___block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__AIAudiogramEnrollmentViewController__addDebugToolbarItemToController___block_invoke_2;
  block[3] = &unk_278CECE28;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void __72__AIAudiogramEnrollmentViewController__addDebugToolbarItemToController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [WeakRetained audiogramEngine];
    v3 = [v6[191] firstObject];
    v4 = [v2 audiogramDetectorResultsFromImage:v3];

    v5 = [v6[191] firstObject];
    [v6 _showDebugViewForImage:v5 debugInfo:v4];

    WeakRetained = v6;
  }
}

void __72__AIAudiogramEnrollmentViewController__addDebugToolbarItemToController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showTapToRadarAlert];
}

- (void)_showDebugViewForImage:(id)image debugInfo:(id)info
{
  imageCopy = image;
  infoCopy = info;
  v6 = infoCopy;
  v7 = imageCopy;
  AXPerformBlockOnMainThread();
}

void __72__AIAudiogramEnrollmentViewController__showDebugViewForImage_debugInfo___block_invoke(uint64_t a1)
{
  v2 = [[_TtC18AudiogramIngestion28AudiogramDebugViewController alloc] initWithImage:*(a1 + 32) debugInfo:*(a1 + 40)];
  [*(a1 + 48) pushViewController:v2 animated:1];
}

- (void)_showTapToRadarAlert
{
  v3 = [MEMORY[0x277D75110] alertControllerWithTitle:@"File Radar" message:@"Attach image of audiogram for easier debugging?" preferredStyle:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__AIAudiogramEnrollmentViewController__showTapToRadarAlert__block_invoke;
  v8[3] = &unk_278CECEA0;
  v8[4] = self;
  v4 = [MEMORY[0x277D750F8] actionWithTitle:@"Attach" style:0 handler:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__AIAudiogramEnrollmentViewController__showTapToRadarAlert__block_invoke_2;
  v7[3] = &unk_278CECEA0;
  v7[4] = self;
  v5 = [MEMORY[0x277D750F8] actionWithTitle:@"Do not attach" style:0 handler:v7];
  v6 = [MEMORY[0x277D750F8] actionWithTitle:@"Cancel" style:1 handler:&__block_literal_global_1];
  [v3 addAction:v4];
  [v3 addAction:v5];
  [v3 addAction:v6];
  [(AIAudiogramEnrollmentViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)_openTapToRadarWithAttachment:(BOOL)attachment
{
  attachmentCopy = attachment;
  v40[11] = *MEMORY[0x277D85DE8];
  v24 = objc_opt_new();
  [v24 setDateFormat:@"yyyy.MM.dd_HH-mm-ss"];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__7;
  v38 = __Block_byref_object_dispose__7;
  array = [MEMORY[0x277CBEB18] array];
  if (attachmentCopy)
  {
    v5 = MEMORY[0x277CBEBC0];
    v6 = NSTemporaryDirectory();
    v7 = [v5 fileURLWithPath:v6];

    audiogramImages = [(AIAudiogramEnrollmentViewController *)self audiogramImages];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __69__AIAudiogramEnrollmentViewController__openTapToRadarWithAttachment___block_invoke;
    v31[3] = &unk_278CECEE8;
    v9 = v7;
    v32 = v9;
    v33 = &v34;
    [audiogramImages enumerateObjectsUsingBlock:v31];
  }

  v10 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v10 setScheme:@"tap-to-radar"];
  [v10 setHost:@"new"];
  v30 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentID" value:@"1105897"];
  v40[0] = v30;
  v29 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentName" value:@"Hearing Accessibility"];
  v40[1] = v29;
  v28 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentVersion" value:@"iOS"];
  v40[2] = v28;
  v27 = [MEMORY[0x277CCAD18] queryItemWithName:@"Classification" value:@"Other Bug"];
  v40[3] = v27;
  v26 = [MEMORY[0x277CCAD18] queryItemWithName:@"Reproducibility" value:@"I Didn't Try"];
  v40[4] = v26;
  v25 = [MEMORY[0x277CCAD18] queryItemWithName:@"Title" value:@"Audiogram Ingestion Accuracy Issue"];
  v40[5] = v25;
  v11 = [MEMORY[0x277CCAD18] queryItemWithName:@"Description" value:{@"Please share some information on what went wrong (symbols were not identified, had wrong values, etc)"}];
  v40[6] = v11;
  v12 = MEMORY[0x277CCAD18];
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = [v24 stringFromDate:v13];
  v15 = [v12 queryItemWithName:@"TimeOfIssue" value:v14];
  v40[7] = v15;
  v16 = MEMORY[0x277CCAD18];
  v17 = [v35[5] componentsJoinedByString:{@", "}];
  v18 = [v16 queryItemWithName:@"Attachments" value:v17];
  v40[8] = v18;
  v19 = [MEMORY[0x277CCAD18] queryItemWithName:@"DeleteOnAttach" value:@"1"];
  v40[9] = v19;
  v20 = [MEMORY[0x277CCAD18] queryItemWithName:@"IncludeDevicePrefixInTitle" value:@"1"];
  v40[10] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:11];
  [v10 setQueryItems:v21];

  v22 = [v10 URL];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openURL:v22 withOptions:0];

  _Block_object_dispose(&v34, 8);
}

void __69__AIAudiogramEnrollmentViewController__openTapToRadarWithAttachment___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCACA8];
  v7 = a2;
  v8 = [v6 stringWithFormat:@"Image%lu.jpeg", a3];
  v12 = [v5 URLByAppendingPathComponent:v8];

  v9 = UIImageJPEGRepresentation(v7, 1.0);

  [v9 writeToURL:v12 atomically:1];
  v10 = *(*(*(a1 + 40) + 8) + 40);
  v11 = [v12 path];
  [v10 addObject:v11];
}

- (void)_manuallyImportAudiogram
{
  if (_os_feature_enabled_impl())
  {

    [(AIAudiogramEnrollmentViewController *)self _startManualEntryV2];
  }

  else
  {
    [(AIAudiogramEnrollmentViewController *)self setAnalyticsImportSource:0];

    [(AIAudiogramEnrollmentViewController *)self _showResultsForAudiogram:0];
  }
}

- (void)_cameraAccessisAuthorizedForHealth:(id)health
{
  v21 = *MEMORY[0x277D85DE8];
  healthCopy = health;
  if ([MEMORY[0x277D12B60] currentProcessIsHealth])
  {
    v4 = *MEMORY[0x277CE5EA8];
    v5 = [MEMORY[0x277CE5AC8] authorizationStatusForMediaType:v4];
    v6 = AXLogAudiogram();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v20 = v5;
      _os_log_impl(&dword_24179B000, v6, OS_LOG_TYPE_INFO, "The authorization status of camera access in Health app audiogram ingestion: %i", buf, 8u);
    }

    if ((v5 - 1) >= 3)
    {
      if (!v5)
      {
        v10 = MEMORY[0x277CE5AC8];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __74__AIAudiogramEnrollmentViewController__cameraAccessisAuthorizedForHealth___block_invoke_2;
        v14[3] = &unk_278CECF60;
        v7 = &v16;
        v16 = healthCopy;
        v15 = v4;
        [v10 requestAccessForMediaType:v15 completionHandler:v14];

LABEL_12:
        goto LABEL_13;
      }

      v11 = AXLogAudiogram();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v20 = v5;
        _os_log_impl(&dword_24179B000, v11, OS_LOG_TYPE_INFO, "Unexpected authorization status of camera access in Health app audiogram ingestion: %i", buf, 8u);
      }

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __74__AIAudiogramEnrollmentViewController__cameraAccessisAuthorizedForHealth___block_invoke_581;
      v12[3] = &unk_278CECF10;
      v7 = v13;
      v13[0] = healthCopy;
      v13[1] = v5;
      v8 = MEMORY[0x277D85CD0];
      v9 = v12;
    }

    else
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __74__AIAudiogramEnrollmentViewController__cameraAccessisAuthorizedForHealth___block_invoke;
      v17[3] = &unk_278CECF10;
      v7 = v18;
      v18[0] = healthCopy;
      v18[1] = v5;
      v8 = MEMORY[0x277D85CD0];
      v9 = v17;
    }

    dispatch_async(v8, v9);
    goto LABEL_12;
  }

LABEL_13:
}

void __74__AIAudiogramEnrollmentViewController__cameraAccessisAuthorizedForHealth___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __74__AIAudiogramEnrollmentViewController__cameraAccessisAuthorizedForHealth___block_invoke_3;
  v2[3] = &unk_278CECF38;
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __74__AIAudiogramEnrollmentViewController__cameraAccessisAuthorizedForHealth___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x277CE5AC8] authorizationStatusForMediaType:*(a1 + 32)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void __83__AIAudiogramEnrollmentViewController__presentCameraAuthorizationStatusDeniedAlert__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75110];
  v3 = aiLocString(@"AudiogramIngestionTCCCameraDeniedTitle");
  v4 = aiLocString(@"AudiogramIngestionTCCCameraDeniedMessage");
  v5 = [v2 alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = MEMORY[0x277D750F8];
  v7 = aiLocString(@"AudiogramIngestionTCCCameraDeniedCancelAction");
  v8 = [v6 actionWithTitle:v7 style:1 handler:0];

  v9 = MEMORY[0x277D750F8];
  v10 = aiLocString(@"AudiogramIngestionTCCCameraDeniedDefaultAction");
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__AIAudiogramEnrollmentViewController__presentCameraAuthorizationStatusDeniedAlert__block_invoke_2;
  v12[3] = &unk_278CECEA0;
  v12[4] = *(a1 + 32);
  v11 = [v9 actionWithTitle:v10 style:0 handler:v12];

  [v5 addAction:v8];
  [v5 addAction:v11];
  [v5 setPreferredAction:v11];
  [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
}

- (void)_showCameraAuthorizationInSetting
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=HEALTH"];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v3 withOptions:0];
}

- (void)_importTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = MEMORY[0x277D75110];
  v6 = aiLocString(@"AudiogramIngestionImportTitle");
  v7 = [v5 alertControllerWithTitle:v6 message:0 preferredStyle:0];

  if ([(AIAudiogramEnrollmentViewController *)self isCameraAvailable])
  {
    v8 = MEMORY[0x277D750F8];
    v9 = aiLocString(@"AudiogramIngestionImportOptionCamera");
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __53__AIAudiogramEnrollmentViewController__importTapped___block_invoke;
    v27[3] = &unk_278CECEA0;
    v27[4] = self;
    v10 = [v8 actionWithTitle:v9 style:0 handler:v27];

    [v7 addAction:v10];
  }

  v11 = MEMORY[0x277D750F8];
  v12 = aiLocString(@"AudiogramIngestionImportOptionPhotos");
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __53__AIAudiogramEnrollmentViewController__importTapped___block_invoke_2;
  v26[3] = &unk_278CECEA0;
  v26[4] = self;
  v13 = [v11 actionWithTitle:v12 style:0 handler:v26];

  v14 = MEMORY[0x277D750F8];
  v15 = aiLocString(@"AudiogramIngestionImportOptionFiles");
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __53__AIAudiogramEnrollmentViewController__importTapped___block_invoke_3;
  v25[3] = &unk_278CECEA0;
  v25[4] = self;
  v16 = [v14 actionWithTitle:v15 style:0 handler:v25];

  v17 = MEMORY[0x277D750F8];
  v18 = aiLocString(@"AudiogramIngestionImportOptionCancel");
  v19 = [v17 actionWithTitle:v18 style:1 handler:0];

  [v7 addAction:v13];
  [v7 addAction:v16];
  [v7 addAction:v19];
  if (_os_feature_enabled_impl())
  {
    popoverPresentationController = [v7 popoverPresentationController];
    if (popoverPresentationController)
    {
      v21 = popoverPresentationController;
      v22 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        popoverPresentationController2 = [v7 popoverPresentationController];
        [popoverPresentationController2 setSourceView:tappedCopy];
      }
    }
  }

  [(AIAudiogramEnrollmentViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_openCameraTapped:(id)tapped
{
  if ([MEMORY[0x277D12B60] currentProcessIsHealth])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __57__AIAudiogramEnrollmentViewController__openCameraTapped___block_invoke;
    v4[3] = &unk_278CECF88;
    v4[4] = self;
    [(AIAudiogramEnrollmentViewController *)self _cameraAccessisAuthorizedForHealth:v4];
  }

  else
  {

    [(AIAudiogramEnrollmentViewController *)self _openCamera];
  }
}

uint64_t __57__AIAudiogramEnrollmentViewController__openCameraTapped___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 == 2)
  {
    return [*(result + 32) _presentCameraAuthorizationStatusDeniedAlert];
  }

  if (a2 == 3)
  {
    return [*(result + 32) _openCamera];
  }

  return result;
}

- (void)_openCamera
{
  v3 = objc_opt_new();
  [v3 setDelegate:self];
  [(AIAudiogramEnrollmentViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)_openPhotosTapped:(id)tapped
{
  tappedCopy = tapped;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v5 = getPHPickerConfigurationClass_softClass;
  v25 = getPHPickerConfigurationClass_softClass;
  if (!getPHPickerConfigurationClass_softClass)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __getPHPickerConfigurationClass_block_invoke;
    v20 = &unk_278CEC150;
    v21 = &v22;
    __getPHPickerConfigurationClass_block_invoke(&v17);
    v5 = v23[3];
  }

  v6 = v5;
  _Block_object_dispose(&v22, 8);
  v7 = [v5 alloc];
  mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedPhotoLibrary];
  v9 = [v7 initWithPhotoLibrary:mEMORY[0x277CD9948]];

  [v9 setSelectionLimit:1];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v10 = getPHPickerFilterClass_softClass;
  v25 = getPHPickerFilterClass_softClass;
  if (!getPHPickerFilterClass_softClass)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __getPHPickerFilterClass_block_invoke;
    v20 = &unk_278CEC150;
    v21 = &v22;
    __getPHPickerFilterClass_block_invoke(&v17);
    v10 = v23[3];
  }

  v11 = v10;
  _Block_object_dispose(&v22, 8);
  imagesFilter = [v10 imagesFilter];
  [v9 setFilter:imagesFilter];

  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v13 = getPHPickerViewControllerClass_softClass;
  v25 = getPHPickerViewControllerClass_softClass;
  if (!getPHPickerViewControllerClass_softClass)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __getPHPickerViewControllerClass_block_invoke;
    v20 = &unk_278CEC150;
    v21 = &v22;
    __getPHPickerViewControllerClass_block_invoke(&v17);
    v13 = v23[3];
  }

  v14 = v13;
  _Block_object_dispose(&v22, 8);
  v15 = [[v13 alloc] initWithConfiguration:v9];
  [v15 setDelegate:self];
  presentationController = [v15 presentationController];
  [presentationController setDelegate:self];

  [(AIAudiogramEnrollmentViewController *)self presentViewController:v15 animated:1 completion:0];
}

- (void)_openDocumentsTapped:(id)tapped
{
  v9[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D75458]);
  v5 = *MEMORY[0x277CE1E08];
  v9[0] = *MEMORY[0x277CE1DB0];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v7 = [v4 initForOpeningContentTypes:v6 asCopy:1];

  [v7 setAllowsMultipleSelection:0];
  [v7 setDelegate:self];
  presentationController = [v7 presentationController];
  [presentationController setDelegate:self];

  [(AIAudiogramEnrollmentViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_cancelTapped:(id)tapped
{
  if (self->_analyticsIngestionAttempted)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__AIAudiogramEnrollmentViewController__cancelTapped___block_invoke;
    block[3] = &unk_278CEC280;
    block[4] = self;
    dispatch_async(v4, block);
  }

  [(AIAudiogramEnrollmentViewController *)self dismissViewControllerAnimated:1 completion:0];
}

void __53__AIAudiogramEnrollmentViewController__cancelTapped___block_invoke(uint64_t a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v8[0] = @"adjusted";
  v8[1] = @"completed";
  v9[0] = MEMORY[0x277CBEC28];
  v9[1] = MEMORY[0x277CBEC28];
  v8[2] = @"import_source";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "analyticsImportSource")}];
  v9[2] = v2;
  v8[3] = @"client";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "analyticsClient")}];
  v9[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  v5 = AXLogAggregate();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_24179B000, v5, OS_LOG_TYPE_INFO, "Audiogram Ingestion canceled: %@", &v6, 0xCu);
  }

  AnalyticsSendEvent();
}

- (void)_prepareToImportAudiogramImages:(id)images
{
  v9 = *MEMORY[0x277D85DE8];
  imagesCopy = images;
  self->_analyticsIngestionAttempted = 1;
  objc_storeStrong(&self->_audiogramImages, images);
  isAvailable = [(AIAudiogramIngestionEngine *)self->_audiogramEngine isAvailable];
  v7 = AXLogAudiogram();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = isAvailable;
    _os_log_impl(&dword_24179B000, v7, OS_LOG_TYPE_INFO, "Preparing to import audiogram image. Is model is available? %d", v8, 8u);
  }

  if (isAvailable)
  {
    [(AIAudiogramEnrollmentViewController *)self _showAnalyzingAudiogram];
    [(AIAudiogramEnrollmentViewController *)self _importAudiogramImage];
  }

  else
  {
    [(AIAudiogramIngestionEngine *)self->_audiogramEngine startRetrievingLatestModel];
    [(AIAudiogramEnrollmentViewController *)self _showDownloadingAudiogram];
  }
}

- (void)_importAudiogramImage
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __60__AIAudiogramEnrollmentViewController__importAudiogramImage__block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 32);

    return [v3 _showResultsForAudiogram:a2];
  }

  else
  {
    v5 = AXLogAudiogram();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) audiogramEngine];
      v7 = 134217984;
      v8 = [v6 failureMode];
      _os_log_impl(&dword_24179B000, v5, OS_LOG_TYPE_INFO, "Audiogram is invalid. Failure mode from ingestion engine is %lu", &v7, 0xCu);
    }

    return [*(a1 + 32) _showValidationFailed];
  }
}

void __87__AIAudiogramEnrollmentViewController_audiogramIngestionEngineModelDownloadProgressed___block_invoke(uint64_t a1)
{
  v2 = AXLogAudiogram();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_24179B000, v2, OS_LOG_TYPE_INFO, "Loading controller received progress update", v5, 2u);
  }

  v3 = [*(a1 + 32) loadingController];
  LODWORD(v4) = *(a1 + 40);
  [v3 setProgress:v4];
}

uint64_t __84__AIAudiogramEnrollmentViewController_audiogramIngestionEngineModelDownloadComplete__block_invoke(uint64_t a1)
{
  v2 = AXLogAudiogram();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24179B000, v2, OS_LOG_TYPE_INFO, "Loading controller received download complete", buf, 2u);
  }

  v3 = [*(a1 + 32) loadingController];
  LODWORD(v4) = 1.0;
  [v3 setProgress:v4];

  return AXPerformBlockOnMainThreadAfterDelay();
}

uint64_t __84__AIAudiogramEnrollmentViewController_audiogramIngestionEngineModelDownloadComplete__block_invoke_634(uint64_t a1)
{
  v2 = [*(a1 + 32) popViewControllerAnimated:0];
  [*(a1 + 32) _showAnalyzingAudiogram];
  v3 = *(a1 + 32);

  return [v3 _importAudiogramImage];
}

void __83__AIAudiogramEnrollmentViewController_audiogramIngestionEngineModelDownloadFailed___block_invoke(uint64_t a1)
{
  v2 = AXLogAudiogram();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_24179B000, v2, OS_LOG_TYPE_INFO, "Loading controller received download failed", v6, 2u);
  }

  v3 = [*(a1 + 32) loadingController];
  [v3 loadViewIfNeeded];

  v4 = [*(a1 + 32) loadingController];
  v5 = aiLocString(@"AudiogramIngestionLoadingError");
  [v4 showLoadingMessage:v5];
}

- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan
{
  controllerCopy = controller;
  scanCopy = scan;
  v8 = AXLogAudiogram();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24179B000, v8, OS_LOG_TYPE_INFO, "Audiogram imported via document camera", buf, 2u);
  }

  v9 = controllerCopy;
  AXPerformBlockOnMainThread();
  v10 = objc_opt_new();
  if ([scanCopy pageCount])
  {
    v11 = 0;
    do
    {
      v12 = [scanCopy imageOfPageAtIndex:v11];
      if (v12)
      {
        [v10 addObject:v12];
      }

      pageCount = [scanCopy pageCount];
      if (v11 > 1)
      {
        break;
      }

      ++v11;
    }

    while (pageCount > v11);
  }

  [(AIAudiogramEnrollmentViewController *)self _prepareToImportAudiogramImages:v10];
  [(AIAudiogramEnrollmentViewController *)self setAnalyticsImportSource:3];
}

- (void)documentCameraViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  v4 = AXLogAudiogram();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24179B000, v4, OS_LOG_TYPE_INFO, "Audiogram scan cancelled", buf, 2u);
  }

  v6 = cancelCopy;
  v5 = cancelCopy;
  AXPerformBlockOnMainThread();
}

- (void)documentCameraViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  v7 = AXLogAudiogram();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [AIAudiogramEnrollmentViewController documentCameraViewController:didFailWithError:];
  }

  v9 = controllerCopy;
  v8 = controllerCopy;
  AXPerformBlockOnMainThread();
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  pickerCopy = picker;
  pickingCopy = picking;
  v8 = AXLogAudiogram();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24179B000, v8, OS_LOG_TYPE_INFO, "Audiogram imported via photo picker", buf, 2u);
  }

  v14[5] = MEMORY[0x277D85DD0];
  v14[6] = 3221225472;
  v14[7] = __63__AIAudiogramEnrollmentViewController_picker_didFinishPicking___block_invoke;
  v14[8] = &unk_278CEC280;
  v15 = pickerCopy;
  v9 = pickerCopy;
  AXPerformBlockOnMainThread();
  firstObject = [pickingCopy firstObject];

  itemProvider = [firstObject itemProvider];

  v12 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__AIAudiogramEnrollmentViewController_picker_didFinishPicking___block_invoke_2;
  v14[3] = &unk_278CED000;
  v14[4] = self;
  v13 = [itemProvider loadObjectOfClass:v12 completionHandler:v14];
}

void __63__AIAudiogramEnrollmentViewController_picker_didFinishPicking___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AXLogAudiogram();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__AIAudiogramEnrollmentViewController_picker_didFinishPicking___block_invoke_2_cold_1();
    }

LABEL_7:

    v5 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = AXLogAudiogram();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__AIAudiogramEnrollmentViewController_picker_didFinishPicking___block_invoke_2_cold_2();
    }

    goto LABEL_7;
  }

LABEL_8:
  v8 = v5;
  v9 = objc_opt_new();
  [v9 axSafelyAddObject:v8];
  [*(a1 + 32) _prepareToImportAudiogramImages:v9];
  [*(a1 + 32) setAnalyticsImportSource:1];
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  pickerCopy = picker;
  lsCopy = ls;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __77__AIAudiogramEnrollmentViewController_documentPicker_didPickDocumentsAtURLs___block_invoke;
  v17 = &unk_278CECBA0;
  v18 = pickerCopy;
  selfCopy = self;
  v8 = pickerCopy;
  AXPerformBlockOnMainThread();
  v9 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__AIAudiogramEnrollmentViewController_documentPicker_didPickDocumentsAtURLs___block_invoke_2;
  v11[3] = &unk_278CECBA0;
  v12 = lsCopy;
  selfCopy2 = self;
  v10 = lsCopy;
  dispatch_async(v9, v11);
}

uint64_t __77__AIAudiogramEnrollmentViewController_documentPicker_didPickDocumentsAtURLs___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(a1 + 40);

  return [v2 _showAnalyzingAudiogram];
}

void __77__AIAudiogramEnrollmentViewController_documentPicker_didPickDocumentsAtURLs___block_invoke_2(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) firstObject];
  v3 = [v2 path];
  if (v3)
  {
    v4 = *MEMORY[0x277CBE7B8];
    v20[0] = *MEMORY[0x277CBE7B8];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v18 = 0;
    v6 = [v2 resourceValuesForKeys:v5 error:&v18];
    v7 = v18;

    if (v7)
    {
      v8 = AXLogAudiogram();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __77__AIAudiogramEnrollmentViewController_documentPicker_didPickDocumentsAtURLs___block_invoke_2_cold_1();
      }

      [*(a1 + 40) _showValidationFailed];
    }

    else
    {
      v10 = [v6 objectForKeyedSubscript:v4];
      if ([v10 conformsToType:*MEMORY[0x277CE1DB0]])
      {
        v11 = AXLogAudiogram();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v17 = 0;
          _os_log_impl(&dword_24179B000, v11, OS_LOG_TYPE_INFO, "Audiogram image imported via document picker", v17, 2u);
        }

        v12 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:v3];
        v13 = v12;
        if (v12)
        {
          v19 = v12;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
        }

        else
        {
          v14 = 0;
        }
      }

      else if ([v10 conformsToType:*MEMORY[0x277CE1E08]])
      {
        v15 = AXLogAudiogram();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *v17 = 0;
          _os_log_impl(&dword_24179B000, v15, OS_LOG_TYPE_INFO, "Audiogram PDF imported via document picker", v17, 2u);
        }

        v14 = [*(a1 + 40) _imagesFromPDF:v2];
      }

      else
      {
        v14 = 0;
      }

      if ([v14 count])
      {
        [*(a1 + 40) _prepareToImportAudiogramImages:v14];
        [*(a1 + 40) setAnalyticsImportSource:2];
      }

      else
      {
        v16 = AXLogAudiogram();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __77__AIAudiogramEnrollmentViewController_documentPicker_didPickDocumentsAtURLs___block_invoke_2_cold_2();
        }

        [*(a1 + 40) _showValidationFailed];
      }
    }
  }

  else
  {
    v9 = AXLogAudiogram();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __77__AIAudiogramEnrollmentViewController_documentPicker_didPickDocumentsAtURLs___block_invoke_2_cold_3();
    }

    [*(a1 + 40) _showValidationFailed];
  }
}

- (void)_showCameraTips:(id)tips
{
  v45[4] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D37698]);
  v5 = aiLocString(@"AudiogramIngestionCameraTipTitle");
  v6 = [v4 initWithTitle:v5 detailText:0 icon:0];

  headerView = [v6 headerView];
  LODWORD(v8) = 1036831949;
  [headerView setTitleHyphenationFactor:v8];

  headerView2 = [v6 headerView];
  customIconContainerView = [headerView2 customIconContainerView];

  if (customIconContainerView)
  {
    v11 = objc_alloc(MEMORY[0x277D755E8]);
    audiogramIngestionImageNamed(@"camera_scan_illustration");
    v12 = v44 = self;
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v14 = [v12 imageWithTintColor:systemBlueColor];
    v15 = [v11 initWithImage:v14];

    [v15 setContentMode:1];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [customIconContainerView addSubview:v15];
    [customIconContainerView setClipsToBounds:0];
    v36 = MEMORY[0x277CCAAD0];
    centerXAnchor = [v15 centerXAnchor];
    centerXAnchor2 = [customIconContainerView centerXAnchor];
    v40 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v45[0] = v40;
    centerYAnchor = [v15 centerYAnchor];
    centerYAnchor2 = [customIconContainerView centerYAnchor];
    v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v45[1] = v37;
    heightAnchor = [v15 heightAnchor];
    heightAnchor2 = [customIconContainerView heightAnchor];
    v17 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v45[2] = v17;
    superview = [customIconContainerView superview];
    [superview heightAnchor];
    v19 = v43 = customIconContainerView;
    view = [v6 view];
    heightAnchor3 = [view heightAnchor];
    v22 = [v19 constraintEqualToAnchor:heightAnchor3 multiplier:0.3];
    v45[3] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
    [v36 activateConstraints:v23];

    customIconContainerView = v43;
    self = v44;
  }

  v24 = aiLocString(@"AudiogramIngestionCameraTipChart");
  systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];
  [v6 addBulletedListItemWithTitle:v24 description:&stru_28535F0B0 symbolName:@"chart.dots.scatter" tintColor:systemBlueColor2];

  v26 = aiLocString(@"AudiogramIngestionCameraTipLight");
  systemBlueColor3 = [MEMORY[0x277D75348] systemBlueColor];
  [v6 addBulletedListItemWithTitle:v26 description:&stru_28535F0B0 symbolName:@"lightbulb.max" tintColor:systemBlueColor3];

  v28 = aiLocString(@"AudiogramIngestionCameraTipSteady");
  systemBlueColor4 = [MEMORY[0x277D75348] systemBlueColor];
  [v6 addBulletedListItemWithTitle:v28 description:&stru_28535F0B0 symbolName:@"camera" tintColor:systemBlueColor4];

  boldButton = [MEMORY[0x277D37618] boldButton];
  v31 = aiLocString(@"AudiogramIngestionCameraTipButtonTitle");
  [boldButton setTitle:v31 forState:0];

  [boldButton addTarget:self action:sel__openCameraTapped_ forControlEvents:64];
  buttonTray = [v6 buttonTray];
  [buttonTray addButton:boldButton];

  v33 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelTapped_];
  navigationItem = [v6 navigationItem];
  [navigationItem setRightBarButtonItem:v33];

  [(OBNavigationController *)self pushViewController:v6 animated:1];
}

- (void)_showNonCameraOptions:(id)options
{
  optionsCopy = options;
  v5 = MEMORY[0x277D75110];
  v6 = aiLocString(@"AudiogramIngestionImportTitleV2");
  v7 = [v5 alertControllerWithTitle:v6 message:0 preferredStyle:0];

  v8 = MEMORY[0x277D750F8];
  v9 = aiLocString(@"AudiogramIngestionImportOptionPhotosV2");
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __61__AIAudiogramEnrollmentViewController__showNonCameraOptions___block_invoke;
  v27[3] = &unk_278CECEA0;
  v27[4] = self;
  v10 = [v8 actionWithTitle:v9 style:0 handler:v27];

  v11 = MEMORY[0x277D750F8];
  v12 = aiLocString(@"AudiogramIngestionImportOptionFilesV2");
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __61__AIAudiogramEnrollmentViewController__showNonCameraOptions___block_invoke_2;
  v26[3] = &unk_278CECEA0;
  v26[4] = self;
  v13 = [v11 actionWithTitle:v12 style:0 handler:v26];

  v14 = MEMORY[0x277D750F8];
  v15 = aiLocString(@"AudiogramIngestionImportOptionManualV2");
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__AIAudiogramEnrollmentViewController__showNonCameraOptions___block_invoke_3;
  v25[3] = &unk_278CECEA0;
  v25[4] = self;
  v16 = [v14 actionWithTitle:v15 style:0 handler:v25];

  v17 = MEMORY[0x277D750F8];
  v18 = aiLocString(@"AudiogramIngestionImportOptionCancel");
  v19 = [v17 actionWithTitle:v18 style:1 handler:0];

  [v7 addAction:v10];
  [v7 addAction:v13];
  [v7 addAction:v16];
  [v7 addAction:v19];
  popoverPresentationController = [v7 popoverPresentationController];
  if (popoverPresentationController)
  {
    v21 = popoverPresentationController;
    v22 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      popoverPresentationController2 = [v7 popoverPresentationController];
      [popoverPresentationController2 setSourceView:optionsCopy];
    }
  }

  [(AIAudiogramEnrollmentViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_tryAgainTapped:(id)tapped
{
  tappedCopy = tapped;
  topViewController = [(AIAudiogramEnrollmentViewController *)self topViewController];
  validationFailedController = [(AIAudiogramEnrollmentViewController *)self validationFailedController];

  if (topViewController == validationFailedController)
  {
    v6 = [(AIAudiogramEnrollmentViewController *)self popViewControllerAnimated:0];
  }

  if ([(AIAudiogramEnrollmentViewController *)self analyticsImportSource]== 3)
  {
    analyticsImportSource = [(AIAudiogramEnrollmentViewController *)self _openCameraTapped:tappedCopy];
  }

  else if ([(AIAudiogramEnrollmentViewController *)self analyticsImportSource]== 1)
  {
    analyticsImportSource = [(AIAudiogramEnrollmentViewController *)self _openPhotosTapped:tappedCopy];
  }

  else
  {
    analyticsImportSource = [(AIAudiogramEnrollmentViewController *)self analyticsImportSource];
    v8 = tappedCopy;
    if (analyticsImportSource != 2)
    {
      goto LABEL_10;
    }

    analyticsImportSource = [(AIAudiogramEnrollmentViewController *)self _openDocumentsTapped:tappedCopy];
  }

  v8 = tappedCopy;
LABEL_10:

  MEMORY[0x2821F96F8](analyticsImportSource, v8);
}

- (void)updateSelectedSymbolsWithSelectedSymbols:(id)symbols
{
  symbolsCopy = symbols;
  v4 = [symbolsCopy copy];
  [(AIAudiogramEnrollmentViewController *)self setSelectedSymbols:v4];

  if (([symbolsCopy containsObject:&unk_285365818] & 1) != 0 || objc_msgSend(symbolsCopy, "containsObject:", &unk_285365830))
  {
    v5 = 1;
    [(AIAudiogramEnrollmentViewController *)self setHasLeftSymbols:1];
    if (([symbolsCopy containsObject:&unk_285365830] & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [(AIAudiogramEnrollmentViewController *)self setHasLeftSymbols:0];
    v5 = 0;
  }

  [(AIAudiogramEnrollmentViewController *)self setHasLeftMaskedSymbol:v5];
LABEL_7:
  if (([symbolsCopy containsObject:&unk_285365860] & 1) == 0 && !objc_msgSend(symbolsCopy, "containsObject:", &unk_285365848))
  {
    [(AIAudiogramEnrollmentViewController *)self setHasRightSymbols:0];
    v6 = 0;
    goto LABEL_12;
  }

  v6 = 1;
  [(AIAudiogramEnrollmentViewController *)self setHasRightSymbols:1];
  if ([symbolsCopy containsObject:&unk_285365860])
  {
LABEL_12:
    [(AIAudiogramEnrollmentViewController *)self setHasRightMaskedSymbol:v6];
  }
}

void __72__AIAudiogramEnrollmentViewController_showSymbolSelectionViewController__block_invoke(uint64_t a1)
{
  v2 = [_TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController alloc];
  v3 = aiYodelLocString(@"AudiogramIngestionSymbolSelectionTitle");
  v4 = *(a1 + 32);
  v5 = [v4 selectedSymbols];
  v6 = [(AIAudiogramSymbolsSelectionViewController *)v2 initWithTitle:v3 delegate:v4 selectedSymbols:v5];

  [*(a1 + 32) pushViewController:v6 animated:1];
}

void __75__AIAudiogramEnrollmentViewController_showFrequencySelectionViewController__block_invoke(uint64_t a1)
{
  v2 = [AIAudiogramFrequencySelectionViewController alloc];
  v3 = aiLocString(@"AudiogramFrequencySelectionTitle");
  v4 = [*(a1 + 32) selectedFrequencies];
  v5 = [(AIAudiogramFrequencySelectionViewController *)v2 initWithTitle:v3 detailText:&stru_28535F0B0 selectedFrequencies:v4 delegate:*(a1 + 32) isModal:0];

  [*(a1 + 32) pushViewController:v5 animated:1];
}

- (void)updateSelectedFrequenciesWithSelectedFrequencies:(id)frequencies
{
  v4 = [frequencies sortedArrayUsingComparator:&__block_literal_global_687];
  [(AIAudiogramEnrollmentViewController *)self setSelectedFrequencies:v4];

  [(AIAudiogramEnrollmentViewController *)self updateFrequencyViewControllers];

  [(AIAudiogramEnrollmentViewController *)self refreshFinalConfirmationView];
}

- (void)updateFrequencyViewControllers
{
  audiogram = [(AIAudiogramEnrollmentViewController *)self audiogram];

  if (audiogram)
  {
    audiogram2 = [(AIAudiogramEnrollmentViewController *)self audiogram];
    array = [MEMORY[0x277CBEB18] array];
    audiogram3 = [(AIAudiogramEnrollmentViewController *)self audiogram];
    sensitivityPoints = [audiogram3 sensitivityPoints];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__AIAudiogramEnrollmentViewController_updateFrequencyViewControllers__block_invoke;
    v23[3] = &unk_278CED048;
    v23[4] = self;
    v8 = array;
    v24 = v8;
    [sensitivityPoints enumerateObjectsUsingBlock:v23];

    if ([v8 count])
    {
      HKAudiogramSampleClass_0 = getHKAudiogramSampleClass_0();
      startDate = [audiogram2 startDate];
      endDate = [audiogram2 endDate];
      v12 = metadataForHKAudiogramSample();
      v13 = [HKAudiogramSampleClass_0 audiogramSampleWithSensitivityPoints:v8 startDate:startDate endDate:endDate metadata:v12];
    }

    else
    {
      v13 = 0;
    }

    [(AIAudiogramEnrollmentViewController *)self setAudiogram:v13];
    array2 = [MEMORY[0x277CBEB18] array];
    childViewControllers = [(AIAudiogramEnrollmentViewController *)self childViewControllers];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __69__AIAudiogramEnrollmentViewController_updateFrequencyViewControllers__block_invoke_2;
    v20 = &unk_278CED070;
    selfCopy = self;
    v22 = array2;
    v16 = array2;
    [childViewControllers enumerateObjectsUsingBlock:&v17];

    [(OBNavigationController *)self setViewControllers:v16, v17, v18, v19, v20, selfCopy];
  }
}

void __69__AIAudiogramEnrollmentViewController_updateFrequencyViewControllers__block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 frequency];
  v4 = [getHKUnitClass_3() hertzUnit];
  [v3 doubleValueForUnit:v4];
  v6 = v5;

  v7 = [*(a1 + 32) selectedFrequencies];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  if ([v7 containsObject:v8])
  {
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    LOBYTE(v9) = [v9 containsObject:v10];

    if ((v9 & 1) == 0)
    {
      [*(a1 + 40) addObject:v13];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = [*(a1 + 32) frequenciesWithConfiguredInitialPoints];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  [v11 removeObject:v12];

LABEL_6:
}

void __69__AIAudiogramEnrollmentViewController_updateFrequencyViewControllers__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([*(a1 + 32) selectedFrequencies], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "currentFrequency"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "containsObject:", v4), v4, v3, v5))
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (void)refreshFinalConfirmationView
{
  finalResultViewController = [(AIAudiogramEnrollmentViewController *)self finalResultViewController];

  if (finalResultViewController)
  {
    finalResultViewController2 = [(AIAudiogramEnrollmentViewController *)self finalResultViewController];
    selectedFrequencies = [(AIAudiogramEnrollmentViewController *)self selectedFrequencies];
    [finalResultViewController2 updateFrequencies:selectedFrequencies];

    finalResultViewController3 = [(AIAudiogramEnrollmentViewController *)self finalResultViewController];
    audiogram = [(AIAudiogramEnrollmentViewController *)self audiogram];
    [finalResultViewController3 reloadAudiogram:audiogram];
  }
}

- (void)showIndividualFirstSensitivityPointInputViewController
{
  selectedFrequencies = [(AIAudiogramEnrollmentViewController *)self selectedFrequencies];
  firstObject = [selectedFrequencies firstObject];
  if (firstObject)
  {
    v5 = firstObject;
    frequenciesWithConfiguredInitialPoints = [(AIAudiogramEnrollmentViewController *)self frequenciesWithConfiguredInitialPoints];
    selectedFrequencies2 = [(AIAudiogramEnrollmentViewController *)self selectedFrequencies];
    firstObject2 = [selectedFrequencies2 firstObject];
    v9 = [frequenciesWithConfiguredInitialPoints containsObject:firstObject2];

    if (v9)
    {
      goto LABEL_5;
    }

    selectedFrequencies = [(AIAudiogramEnrollmentViewController *)self selectedFrequencies];
    firstObject3 = [selectedFrequencies firstObject];
    [(AIAudiogramEnrollmentViewController *)self _addInitialSensitivityPointAtFrequency:firstObject3];
  }

LABEL_5:
  audiogram = [(AIAudiogramEnrollmentViewController *)self audiogram];

  if (audiogram)
  {
    v12 = [AIAudiogramIndividualFrequencyInputViewController alloc];
    audiogramConfirmationDelegate = [(AIAudiogramEnrollmentViewController *)self audiogramConfirmationDelegate];
    audiogram2 = [(AIAudiogramEnrollmentViewController *)self audiogram];
    selectedFrequencies3 = [(AIAudiogramEnrollmentViewController *)self selectedFrequencies];
    firstObject4 = [selectedFrequencies3 firstObject];
    selectedSymbols = [(AIAudiogramEnrollmentViewController *)self selectedSymbols];
    v24 = [(AIAudiogramIndividualFrequencyInputViewController *)v12 initWithDelegate:self audiogramConfirmationDelegate:audiogramConfirmationDelegate audiogram:audiogram2 currentFrequency:firstObject4 isModalViewController:0 selectedSymbols:selectedSymbols];

    v18 = MEMORY[0x277CCACA8];
    v19 = aiLocString(@"AudiogramIngestionAddValuesTitle");
    selectedFrequencies4 = [(AIAudiogramEnrollmentViewController *)self selectedFrequencies];
    firstObject5 = [selectedFrequencies4 firstObject];
    v22 = [v18 stringWithFormat:v19, firstObject5];
    frequencyTitleLabel = [(AIAudiogramIndividualFrequencyInputViewController *)v24 frequencyTitleLabel];
    [frequencyTitleLabel setText:v22];

    [(OBNavigationController *)self pushViewController:v24 animated:1];
  }
}

- (void)showNextFrequencyInputViewControllerWithAudiogram:(id)audiogram previousFrequency:(id)frequency
{
  frequencyCopy = frequency;
  [(AIAudiogramEnrollmentViewController *)self setAudiogram:audiogram];
  v27 = [(AIAudiogramEnrollmentViewController *)self getNextFrequency:frequencyCopy];

  if (v27)
  {
    frequenciesWithConfiguredInitialPoints = [(AIAudiogramEnrollmentViewController *)self frequenciesWithConfiguredInitialPoints];
    v8 = [frequenciesWithConfiguredInitialPoints containsObject:v27];

    if ((v8 & 1) == 0)
    {
      [(AIAudiogramEnrollmentViewController *)self _addInitialSensitivityPointAtFrequency:v27];
    }

    v9 = [AIAudiogramIndividualFrequencyInputViewController alloc];
    audiogramConfirmationDelegate = [(AIAudiogramEnrollmentViewController *)self audiogramConfirmationDelegate];
    audiogram = [(AIAudiogramEnrollmentViewController *)self audiogram];
    selectedSymbols = [(AIAudiogramEnrollmentViewController *)self selectedSymbols];
    finalResultViewController3 = [(AIAudiogramIndividualFrequencyInputViewController *)v9 initWithDelegate:self audiogramConfirmationDelegate:audiogramConfirmationDelegate audiogram:audiogram currentFrequency:v27 isModalViewController:0 selectedSymbols:selectedSymbols];

    v14 = MEMORY[0x277CCACA8];
    v15 = aiLocString(@"AudiogramIngestionAddValuesTitle");
    v16 = [v14 stringWithFormat:v15, v27];
    frequencyTitleLabel = [(AIAudiogramIndividualFrequencyInputViewController *)finalResultViewController3 frequencyTitleLabel];
    [frequencyTitleLabel setText:v16];
  }

  else
  {
    v18 = [AIAudiogramFinalResultViewController alloc];
    audiogram2 = [(AIAudiogramEnrollmentViewController *)self audiogram];
    selectedFrequencies = [(AIAudiogramEnrollmentViewController *)self selectedFrequencies];
    audiogramConfirmationDelegate2 = [(AIAudiogramEnrollmentViewController *)self audiogramConfirmationDelegate];
    v22 = [(AIAudiogramFinalResultViewController *)v18 initWithAudiogram:audiogram2 selectedFrequencies:selectedFrequencies audiogramConfirmationDelegate:audiogramConfirmationDelegate2 audiogramManualIngestionDelegate:self];
    [(AIAudiogramEnrollmentViewController *)self setFinalResultViewController:v22];

    analyticsImportSource = [(AIAudiogramEnrollmentViewController *)self analyticsImportSource];
    finalResultViewController = [(AIAudiogramEnrollmentViewController *)self finalResultViewController];
    [finalResultViewController setAnalyticsImportSource:analyticsImportSource];

    analyticsClient = [(AIAudiogramEnrollmentViewController *)self analyticsClient];
    finalResultViewController2 = [(AIAudiogramEnrollmentViewController *)self finalResultViewController];
    [finalResultViewController2 setAnalyticsClient:analyticsClient];

    finalResultViewController3 = [(AIAudiogramEnrollmentViewController *)self finalResultViewController];
  }

  [(OBNavigationController *)self pushViewController:finalResultViewController3 animated:1];
}

- (void)_addInitialSensitivityPointAtFrequency:(id)frequency
{
  frequencyCopy = frequency;
  frequenciesWithConfiguredInitialPoints = [(AIAudiogramEnrollmentViewController *)self frequenciesWithConfiguredInitialPoints];

  if (!frequenciesWithConfiguredInitialPoints)
  {
    v6 = objc_opt_new();
    [(AIAudiogramEnrollmentViewController *)self setFrequenciesWithConfiguredInitialPoints:v6];
  }

  frequenciesWithConfiguredInitialPoints2 = [(AIAudiogramEnrollmentViewController *)self frequenciesWithConfiguredInitialPoints];
  [frequenciesWithConfiguredInitialPoints2 addObject:frequencyCopy];

  decibelHearingLevelUnit = [getHKUnitClass_3() decibelHearingLevelUnit];
  hertzUnit = [getHKUnitClass_3() hertzUnit];
  HKQuantityClass_2 = getHKQuantityClass_2();
  [frequencyCopy doubleValue];
  v11 = [HKQuantityClass_2 quantityWithUnit:hertzUnit doubleValue:?];
  v12 = MEMORY[0x277CBEB18];
  audiogram = [(AIAudiogramEnrollmentViewController *)self audiogram];
  sensitivityPoints = [audiogram sensitivityPoints];
  v15 = sensitivityPoints;
  if (sensitivityPoints)
  {
    v16 = sensitivityPoints;
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v17 = [v12 arrayWithArray:v16];

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __78__AIAudiogramEnrollmentViewController__addInitialSensitivityPointAtFrequency___block_invoke;
  v48[3] = &unk_278CED098;
  v18 = hertzUnit;
  v49 = v18;
  v19 = frequencyCopy;
  v50 = v19;
  if ([v17 indexOfObjectPassingTest:v48] == 0x7FFFFFFFFFFFFFFFLL)
  {
    array = [MEMORY[0x277CBEB18] array];
    v42 = v11;
    if ([(AIAudiogramEnrollmentViewController *)self hasLeftSymbols])
    {
      v21 = objc_alloc(getHKAudiogramSensitivityTestClass_1());
      v22 = decibelHearingLevelUnit;
      v23 = [getHKQuantityClass_2() quantityWithUnit:decibelHearingLevelUnit doubleValue:0.0];
      selectedSymbols = [(AIAudiogramEnrollmentViewController *)self selectedSymbols];
      v47 = 0;
      v25 = [v21 initWithSensitivity:v23 type:0 masked:objc_msgSend(selectedSymbols side:"containsObject:" clampingRange:&unk_285365818) ^ 1 error:{0, 0, &v47}];
      v26 = v47;

      if (v25 && !v26)
      {
        [array addObject:v25];
      }

      decibelHearingLevelUnit = v22;
      v11 = v42;
    }

    else
    {
      v26 = 0;
    }

    if ([(AIAudiogramEnrollmentViewController *)self hasRightSymbols])
    {

      v27 = objc_alloc(getHKAudiogramSensitivityTestClass_1());
      v41 = decibelHearingLevelUnit;
      v28 = [getHKQuantityClass_2() quantityWithUnit:decibelHearingLevelUnit doubleValue:0.0];
      selectedSymbols2 = [(AIAudiogramEnrollmentViewController *)self selectedSymbols];
      v46 = 0;
      v30 = [v27 initWithSensitivity:v28 type:0 masked:objc_msgSend(selectedSymbols2 side:"containsObject:" clampingRange:&unk_285365848) ^ 1 error:{1, 0, &v46}];
      v26 = v46;

      if (v30 && !v26)
      {
        [array addObject:v30];
      }

      decibelHearingLevelUnit = v41;
      v11 = v42;
    }

    if ([array count])
    {
      v52 = 0;
      v53 = &v52;
      v54 = 0x2050000000;
      v31 = getHKAudiogramSensitivityPointClass_softClass_2;
      v55 = getHKAudiogramSensitivityPointClass_softClass_2;
      if (!getHKAudiogramSensitivityPointClass_softClass_2)
      {
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __getHKAudiogramSensitivityPointClass_block_invoke_2;
        v51[3] = &unk_278CEC150;
        v51[4] = &v52;
        __getHKAudiogramSensitivityPointClass_block_invoke_2(v51);
        v31 = v53[3];
      }

      v32 = v31;
      _Block_object_dispose(&v52, 8);
      v45 = v26;
      v33 = [v31 sensitivityPointWithFrequency:v11 tests:array error:&v45];
      v34 = v45;

      [v17 addObject:v33];
      v26 = v34;
    }

    if ([v17 count])
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __78__AIAudiogramEnrollmentViewController__addInitialSensitivityPointAtFrequency___block_invoke_2;
      v43[3] = &unk_278CED0C0;
      v44 = v18;
      v35 = [v17 sortedArrayUsingComparator:v43];
      v36 = [v35 mutableCopy];

      pickedDate = [(AIAudiogramEnrollmentViewController *)self pickedDate];
      HKAudiogramSampleClass_0 = getHKAudiogramSampleClass_0();
      v39 = metadataForHKAudiogramSample();
      v40 = [HKAudiogramSampleClass_0 audiogramSampleWithSensitivityPoints:v36 startDate:pickedDate endDate:pickedDate metadata:v39];
      [(AIAudiogramEnrollmentViewController *)self setAudiogram:v40];

      v17 = v36;
    }

    v11 = v42;
  }

  else
  {
    v26 = 0;
  }
}

BOOL __78__AIAudiogramEnrollmentViewController__addInitialSensitivityPointAtFrequency___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 frequency];
  [v6 doubleValueForUnit:*(a1 + 32)];
  v8 = v7;
  [*(a1 + 40) doubleValue];
  v10 = v9;

  if (v8 == v10)
  {
    *a4 = 1;
  }

  return v8 == v10;
}

uint64_t __78__AIAudiogramEnrollmentViewController__addInitialSensitivityPointAtFrequency___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 frequency];
  [v6 doubleValueForUnit:*(a1 + 32)];
  v8 = v7;
  v9 = [v5 frequency];

  [v9 doubleValueForUnit:*(a1 + 32)];
  v11 = v10;

  if (v8 >= v11)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)getNextFrequency:(id)frequency
{
  frequencyCopy = frequency;
  selectedFrequencies = [(AIAudiogramEnrollmentViewController *)self selectedFrequencies];
  v6 = [selectedFrequencies indexOfObject:frequencyCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v7 = v6 + 1, -[AIAudiogramEnrollmentViewController selectedFrequencies](self, "selectedFrequencies"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7 >= v9))
  {
    v11 = 0;
  }

  else
  {
    selectedFrequencies2 = [(AIAudiogramEnrollmentViewController *)self selectedFrequencies];
    v11 = [selectedFrequencies2 objectAtIndex:v7];
  }

  return v11;
}

- (void)updateAudiogramDate:(id)date
{
  dateCopy = date;
  [(AIAudiogramEnrollmentViewController *)self setPickedDate:?];
  audiogram = [(AIAudiogramEnrollmentViewController *)self audiogram];
  sensitivityPoints = [audiogram sensitivityPoints];
  v6 = [sensitivityPoints count];

  if (v6)
  {
    HKAudiogramSampleClass_0 = getHKAudiogramSampleClass_0();
    audiogram2 = [(AIAudiogramEnrollmentViewController *)self audiogram];
    sensitivityPoints2 = [audiogram2 sensitivityPoints];
    v10 = metadataForHKAudiogramSample();
    v11 = [HKAudiogramSampleClass_0 audiogramSampleWithSensitivityPoints:sensitivityPoints2 startDate:dateCopy endDate:dateCopy metadata:v10];
    [(AIAudiogramEnrollmentViewController *)self setAudiogram:v11];

    [(AIAudiogramEnrollmentViewController *)self updateFrequencyViewControllers];
    [(AIAudiogramEnrollmentViewController *)self refreshFinalConfirmationView];
  }
}

- (void)didSelectNodeToEditWithSelectedFrequency:(id)frequency
{
  frequencyCopy = frequency;
  frequenciesWithConfiguredInitialPoints = [(AIAudiogramEnrollmentViewController *)self frequenciesWithConfiguredInitialPoints];
  v5 = [frequenciesWithConfiguredInitialPoints containsObject:frequencyCopy];

  if ((v5 & 1) == 0)
  {
    [(AIAudiogramEnrollmentViewController *)self _addInitialSensitivityPointAtFrequency:frequencyCopy];
  }

  v6 = [AIAudiogramIndividualFrequencyInputViewController alloc];
  audiogramConfirmationDelegate = [(AIAudiogramEnrollmentViewController *)self audiogramConfirmationDelegate];
  audiogram = [(AIAudiogramEnrollmentViewController *)self audiogram];
  selectedSymbols = [(AIAudiogramEnrollmentViewController *)self selectedSymbols];
  v10 = [(AIAudiogramIndividualFrequencyInputViewController *)v6 initWithDelegate:self audiogramConfirmationDelegate:audiogramConfirmationDelegate audiogram:audiogram currentFrequency:frequencyCopy isModalViewController:1 selectedSymbols:selectedSymbols];

  v11 = MEMORY[0x277CCACA8];
  v12 = aiLocString(@"AudiogramIngestionEditValuesTitle");
  frequencyCopy = [v11 stringWithFormat:v12, frequencyCopy];
  frequencyTitleLabel = [(AIAudiogramIndividualFrequencyInputViewController *)v10 frequencyTitleLabel];
  [frequencyTitleLabel setText:frequencyCopy];

  v15 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10];
  [(AIAudiogramEnrollmentViewController *)self presentViewController:v15 animated:1 completion:0];
}

- (void)didSelectNodeToAddWithSelectedFrequency:(id)frequency
{
  frequencyCopy = frequency;
  frequenciesWithConfiguredInitialPoints = [(AIAudiogramEnrollmentViewController *)self frequenciesWithConfiguredInitialPoints];
  v5 = [frequenciesWithConfiguredInitialPoints containsObject:frequencyCopy];

  if ((v5 & 1) == 0)
  {
    [(AIAudiogramEnrollmentViewController *)self _addInitialSensitivityPointAtFrequency:frequencyCopy];
  }

  v6 = [AIAudiogramIndividualFrequencyInputViewController alloc];
  audiogramConfirmationDelegate = [(AIAudiogramEnrollmentViewController *)self audiogramConfirmationDelegate];
  audiogram = [(AIAudiogramEnrollmentViewController *)self audiogram];
  selectedSymbols = [(AIAudiogramEnrollmentViewController *)self selectedSymbols];
  v10 = [(AIAudiogramIndividualFrequencyInputViewController *)v6 initWithDelegate:self audiogramConfirmationDelegate:audiogramConfirmationDelegate audiogram:audiogram currentFrequency:frequencyCopy isModalViewController:1 selectedSymbols:selectedSymbols];

  [(AIAudiogramIndividualFrequencyInputViewController *)v10 setUserAddedFrequencyAfterOptical:1];
  v11 = MEMORY[0x277CCACA8];
  v12 = aiLocString(@"AudiogramIngestionAddValuesTitle");
  frequencyCopy = [v11 stringWithFormat:v12, frequencyCopy];
  frequencyTitleLabel = [(AIAudiogramIndividualFrequencyInputViewController *)v10 frequencyTitleLabel];
  [frequencyTitleLabel setText:frequencyCopy];

  v15 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10];
  [(AIAudiogramEnrollmentViewController *)self dismissViewControllerAnimated:0 completion:0];
  [(AIAudiogramEnrollmentViewController *)self presentViewController:v15 animated:1 completion:0];
}

- (void)dismissCurrentFrequencyInputViewControllerWithAudiogram:(id)audiogram
{
  audiogramCopy = audiogram;
  [(AIAudiogramEnrollmentViewController *)self setAudiogram:audiogramCopy];
  [(AIAudiogramEnrollmentViewController *)self dismissViewControllerAnimated:1 completion:0];
  finalResultViewController = [(AIAudiogramEnrollmentViewController *)self finalResultViewController];
  [finalResultViewController reloadAudiogram:audiogramCopy];
}

- (AIAudiogramConfirmResultsViewControllerDelegate)audiogramConfirmationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_audiogramConfirmationDelegate);

  return WeakRetained;
}

- (void)_imagesFromPDF:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_imagesFromPDF:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)documentCameraViewController:didFailWithError:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __63__AIAudiogramEnrollmentViewController_picker_didFinishPicking___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __63__AIAudiogramEnrollmentViewController_picker_didFinishPicking___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __77__AIAudiogramEnrollmentViewController_documentPicker_didPickDocumentsAtURLs___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __77__AIAudiogramEnrollmentViewController_documentPicker_didPickDocumentsAtURLs___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __77__AIAudiogramEnrollmentViewController_documentPicker_didPickDocumentsAtURLs___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end
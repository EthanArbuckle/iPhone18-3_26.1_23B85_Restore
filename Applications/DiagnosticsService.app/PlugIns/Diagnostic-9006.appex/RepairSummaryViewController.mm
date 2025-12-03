@interface RepairSummaryViewController
- (BOOL)shouldPresentInHostApp;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancel;
- (void)cancelTapped:(id)tapped;
- (void)continueTapped:(id)tapped;
- (void)endTestWithStatusCode:(int64_t)code error:(id)error;
- (void)handleButtonEvent:(unint64_t)event;
- (void)initRepairSummaryTable;
- (void)moveToNextViewController;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)teardown;
- (void)updateViewWithRepairSummary;
- (void)viewDidLoad;
@end

@implementation RepairSummaryViewController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  inputsCopy = inputs;
  responderCopy = responder;
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[RepairSummaryViewController setupWithInputs:responder:]";
    *&buf[12] = 2112;
    *&buf[14] = inputsCopy;
    *&buf[22] = 2112;
    v30 = responderCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", buf, 0x20u);
  }

  [(RepairSummaryViewController *)self setInputs:inputsCopy];
  inputs = [(RepairSummaryViewController *)self inputs];
  v10 = inputs == 0;

  if (v10)
  {
    result = [(RepairSummaryViewController *)self result];
    [result setStatusCode:&off_10000C8F8];

    [(RepairSummaryViewController *)self setFinished:1];
  }

  v12 = handleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Register physical button events", buf, 2u);
  }

  if (!sub_100004E58())
  {
    v13 = handleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000505C();
    }

    result2 = [(RepairSummaryViewController *)self result];
    [result2 setStatusCode:&off_10000C910];

    [(RepairSummaryViewController *)self setFinished:1];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v15 = qword_1000116C8;
  v28 = qword_1000116C8;
  if (!qword_1000116C8)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100004F9C;
    v30 = &unk_10000C378;
    v31 = &v25;
    sub_100004F9C(buf);
    v15 = v26[3];
  }

  v16 = v15;
  _Block_object_dispose(&v25, 8);
  v17 = objc_opt_new();
  [(RepairSummaryViewController *)self setButtonEventMonitor:v17];

  buttonEventMonitor = [(RepairSummaryViewController *)self buttonEventMonitor];
  LODWORD(v17) = buttonEventMonitor == 0;

  if (v17)
  {
    v19 = handleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100005090();
    }

    result3 = [(RepairSummaryViewController *)self result];
    [result3 setStatusCode:&off_10000C910];

    [(RepairSummaryViewController *)self setFinished:1];
  }

  objc_initWeak(buf, self);
  buttonEventMonitor2 = [(RepairSummaryViewController *)self buttonEventMonitor];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000172C;
  v23[3] = &unk_10000C2A0;
  objc_copyWeak(&v24, buf);
  [buttonEventMonitor2 startWithPriority:200 completion:v23];

  v22 = dispatch_semaphore_create(0);
  [(RepairSummaryViewController *)self setUiNeededKnownSemaphore:v22];

  [(RepairSummaryViewController *)self setRepairSummaryNeeded:0];
  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (void)start
{
  result = [(RepairSummaryViewController *)self result];
  [result setStatusCode:&off_10000C928];

  v4 = MGGetBoolAnswer();
  v5 = MGGetBoolAnswer();
  v6 = dispatch_semaphore_create(0);
  if (v4 & 1) != 0 || (v5)
  {
    v8 = [CRRepairStatus isServicePartWithError:0];
    v9 = v8;
    if (v8 && [v8 isEqual:@"1"])
    {
      v10 = CRErrorDomain;
      v17 = NSLocalizedDescriptionKey;
      v18 = @"Service part mTub/MLB not supported";
      v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v12 = [NSError errorWithDomain:v10 code:-72 userInfo:v11];

      uiNeededKnownSemaphore = [(RepairSummaryViewController *)self uiNeededKnownSemaphore];
      dispatch_semaphore_signal(uiNeededKnownSemaphore);

      [(RepairSummaryViewController *)self endTestWithStatusCode:-72 error:v12];
    }

    else
    {
      v14 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000019E0;
      block[3] = &unk_10000C318;
      block[4] = self;
      v16 = v6;
      dispatch_async(v14, block);
    }
  }

  else
  {
    uiNeededKnownSemaphore2 = [(RepairSummaryViewController *)self uiNeededKnownSemaphore];
    dispatch_semaphore_signal(uiNeededKnownSemaphore2);

    [(RepairSummaryViewController *)self endTestWithStatusCode:-6 error:0];
  }
}

- (void)cancel
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[RepairSummaryViewController cancel]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(RepairSummaryViewController *)self setFinished:1];
}

- (void)teardown
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[RepairSummaryViewController teardown]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  buttonEventMonitor = [(RepairSummaryViewController *)self buttonEventMonitor];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000020E4;
  v5[3] = &unk_10000C2F0;
  v5[4] = self;
  [buttonEventMonitor stopWithCompletion:v5];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = RepairSummaryViewController;
  [(RepairSummaryViewController *)&v4 viewDidLoad];
  [(RepairSummaryViewController *)self setShouldShowPressHomeLabel:0];
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[RepairSummaryViewController viewDidLoad]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }
}

- (void)initRepairSummaryTable
{
  preflightResults = [(RepairSummaryViewController *)self preflightResults];
  v4 = [CRPreflightUtils spcResults:preflightResults];

  preflightResults2 = [(RepairSummaryViewController *)self preflightResults];
  v6 = [preflightResults2 objectForKeyedSubscript:@"keyBlob"];
  [(RepairSummaryViewController *)self setPreflightRIK:v6];

  v7 = [v4 objectForKeyedSubscript:@"pass"];
  [(RepairSummaryViewController *)self setPassSPCs:v7];

  v8 = [v4 objectForKeyedSubscript:@"fail"];
  [(RepairSummaryViewController *)self setFailSPCs:v8];

  v9 = [v4 objectForKeyedSubscript:@"lock"];
  [(RepairSummaryViewController *)self setLockSPCs:v9];

  v10 = [v4 objectForKeyedSubscript:@"unauth"];
  [(RepairSummaryViewController *)self setUnauthSPCs:v10];

  v11 = [v4 objectForKeyedSubscript:@"lost"];
  [(RepairSummaryViewController *)self setLostSPCs:v11];

  v12 = [v4 objectForKeyedSubscript:@"denied"];
  [(RepairSummaryViewController *)self setDeniedSPCs:v12];

  v122 = v4;
  v13 = [v4 objectForKeyedSubscript:@"sealed"];
  [(RepairSummaryViewController *)self setSealedSPCs:v13];

  v14 = objc_opt_new();
  [(RepairSummaryViewController *)self setTableDataText:v14];

  v15 = objc_opt_new();
  [(RepairSummaryViewController *)self setTableDataText2:v15];

  v16 = objc_opt_new();
  [(RepairSummaryViewController *)self setTableImage:v16];

  v17 = objc_opt_new();
  [(RepairSummaryViewController *)self setTableImageColor:v17];

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  passSPCs = [(RepairSummaryViewController *)self passSPCs];
  v19 = [passSPCs countByEnumeratingWithState:&v147 objects:v159 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v148;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v148 != v21)
        {
          objc_enumerationMutation(passSPCs);
        }

        v23 = *(*(&v147 + 1) + 8 * i);
        v24 = [(RepairSummaryViewController *)self getComponentString:v23];
        if (v24)
        {
          tableDataText = [(RepairSummaryViewController *)self tableDataText];
          [tableDataText addObject:v24];

          tableDataText2 = [(RepairSummaryViewController *)self tableDataText2];
          v27 = +[NSBundle mainBundle];
          v28 = [v27 localizedStringForKey:@"TEXT_PASS" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];
          [tableDataText2 addObject:v28];

          tableImage = [(RepairSummaryViewController *)self tableImage];
          v30 = [UIImage systemImageNamed:@"checkmark.seal.fill"];
          [tableImage addObject:v30];

          tableImageColor = [(RepairSummaryViewController *)self tableImageColor];
          v32 = +[UIColor systemGreenColor];
          [tableImageColor addObject:v32];
        }

        else
        {
          tableImageColor = handleForCategory();
          if (os_log_type_enabled(tableImageColor, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v158 = v23;
            _os_log_error_impl(&_mh_execute_header, tableImageColor, OS_LOG_TYPE_ERROR, "Unknown SPC: %@", buf, 0xCu);
          }
        }
      }

      v20 = [passSPCs countByEnumeratingWithState:&v147 objects:v159 count:16];
    }

    while (v20);
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  failSPCs = [(RepairSummaryViewController *)self failSPCs];
  v34 = [failSPCs countByEnumeratingWithState:&v143 objects:v156 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v144;
    do
    {
      for (j = 0; j != v35; j = j + 1)
      {
        if (*v144 != v36)
        {
          objc_enumerationMutation(failSPCs);
        }

        v38 = *(*(&v143 + 1) + 8 * j);
        v39 = [(RepairSummaryViewController *)self getComponentString:v38];
        if (v39)
        {
          tableDataText3 = [(RepairSummaryViewController *)self tableDataText];
          [tableDataText3 addObject:v39];

          tableDataText22 = [(RepairSummaryViewController *)self tableDataText2];
          v42 = +[NSBundle mainBundle];
          v43 = [v42 localizedStringForKey:@"TEXT_UNKNOWN" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];
          [tableDataText22 addObject:v43];

          tableImage2 = [(RepairSummaryViewController *)self tableImage];
          v45 = [UIImage systemImageNamed:@"exclamationmark.triangle.fill"];
          [tableImage2 addObject:v45];

          tableImageColor2 = [(RepairSummaryViewController *)self tableImageColor];
          v47 = +[UIColor systemYellowColor];
          [tableImageColor2 addObject:v47];
        }

        else
        {
          tableImageColor2 = handleForCategory();
          if (os_log_type_enabled(tableImageColor2, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v158 = v38;
            _os_log_error_impl(&_mh_execute_header, tableImageColor2, OS_LOG_TYPE_ERROR, "Unknown SPC: %@", buf, 0xCu);
          }
        }
      }

      v35 = [failSPCs countByEnumeratingWithState:&v143 objects:v156 count:16];
    }

    while (v35);
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  lockSPCs = [(RepairSummaryViewController *)self lockSPCs];
  v49 = [lockSPCs countByEnumeratingWithState:&v139 objects:v155 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v140;
    do
    {
      for (k = 0; k != v50; k = k + 1)
      {
        if (*v140 != v51)
        {
          objc_enumerationMutation(lockSPCs);
        }

        v53 = *(*(&v139 + 1) + 8 * k);
        v54 = [(RepairSummaryViewController *)self getComponentString:v53];
        if (v54)
        {
          tableDataText4 = [(RepairSummaryViewController *)self tableDataText];
          [tableDataText4 addObject:v54];

          tableDataText23 = [(RepairSummaryViewController *)self tableDataText2];
          v57 = +[NSBundle mainBundle];
          v58 = [v57 localizedStringForKey:@"TEXT_LOCK" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];
          [tableDataText23 addObject:v58];

          tableImage3 = [(RepairSummaryViewController *)self tableImage];
          v60 = [UIImage systemImageNamed:@"lock.circle.fill"];
          [tableImage3 addObject:v60];

          tableImageColor3 = [(RepairSummaryViewController *)self tableImageColor];
          v62 = +[UIColor blackColor];
          [tableImageColor3 addObject:v62];
        }

        else
        {
          tableImageColor3 = handleForCategory();
          if (os_log_type_enabled(tableImageColor3, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v158 = v53;
            _os_log_error_impl(&_mh_execute_header, tableImageColor3, OS_LOG_TYPE_ERROR, "Unknown SPC: %@", buf, 0xCu);
          }
        }
      }

      v50 = [lockSPCs countByEnumeratingWithState:&v139 objects:v155 count:16];
    }

    while (v50);
  }

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  unauthSPCs = [(RepairSummaryViewController *)self unauthSPCs];
  v64 = [unauthSPCs countByEnumeratingWithState:&v135 objects:v154 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v136;
    do
    {
      for (m = 0; m != v65; m = m + 1)
      {
        if (*v136 != v66)
        {
          objc_enumerationMutation(unauthSPCs);
        }

        v68 = *(*(&v135 + 1) + 8 * m);
        v69 = [(RepairSummaryViewController *)self getComponentString:v68];
        if (v69)
        {
          tableDataText5 = [(RepairSummaryViewController *)self tableDataText];
          [tableDataText5 addObject:v69];

          tableDataText24 = [(RepairSummaryViewController *)self tableDataText2];
          v72 = +[NSBundle mainBundle];
          v73 = [v72 localizedStringForKey:@"TEXT_UNKNOWN" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];
          [tableDataText24 addObject:v73];

          tableImage4 = [(RepairSummaryViewController *)self tableImage];
          v75 = [UIImage systemImageNamed:@"exclamationmark.triangle.fill"];
          [tableImage4 addObject:v75];

          tableImageColor4 = [(RepairSummaryViewController *)self tableImageColor];
          v77 = +[UIColor systemYellowColor];
          [tableImageColor4 addObject:v77];
        }

        else
        {
          tableImageColor4 = handleForCategory();
          if (os_log_type_enabled(tableImageColor4, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v158 = v68;
            _os_log_error_impl(&_mh_execute_header, tableImageColor4, OS_LOG_TYPE_ERROR, "Unknown SPC: %@", buf, 0xCu);
          }
        }
      }

      v65 = [unauthSPCs countByEnumeratingWithState:&v135 objects:v154 count:16];
    }

    while (v65);
  }

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  lostSPCs = [(RepairSummaryViewController *)self lostSPCs];
  v79 = [lostSPCs countByEnumeratingWithState:&v131 objects:v153 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v132;
    do
    {
      for (n = 0; n != v80; n = n + 1)
      {
        if (*v132 != v81)
        {
          objc_enumerationMutation(lostSPCs);
        }

        v83 = *(*(&v131 + 1) + 8 * n);
        v84 = [(RepairSummaryViewController *)self getComponentString:v83];
        if (v84)
        {
          tableDataText6 = [(RepairSummaryViewController *)self tableDataText];
          [tableDataText6 addObject:v84];

          tableDataText25 = [(RepairSummaryViewController *)self tableDataText2];
          v87 = +[NSBundle mainBundle];
          v88 = [v87 localizedStringForKey:@"TEXT_LOST" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];
          [tableDataText25 addObject:v88];

          tableImage5 = [(RepairSummaryViewController *)self tableImage];
          v90 = [UIImage _systemImageNamed:@"findmy"];
          [tableImage5 addObject:v90];

          tableImageColor5 = [(RepairSummaryViewController *)self tableImageColor];
          v92 = +[UIColor systemBlueColor];
          [tableImageColor5 addObject:v92];
        }

        else
        {
          tableImageColor5 = handleForCategory();
          if (os_log_type_enabled(tableImageColor5, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v158 = v83;
            _os_log_error_impl(&_mh_execute_header, tableImageColor5, OS_LOG_TYPE_ERROR, "Unknown SPC: %@", buf, 0xCu);
          }
        }
      }

      v80 = [lostSPCs countByEnumeratingWithState:&v131 objects:v153 count:16];
    }

    while (v80);
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  deniedSPCs = [(RepairSummaryViewController *)self deniedSPCs];
  v94 = [deniedSPCs countByEnumeratingWithState:&v127 objects:v152 count:16];
  if (v94)
  {
    v95 = v94;
    v96 = *v128;
    do
    {
      for (ii = 0; ii != v95; ii = ii + 1)
      {
        if (*v128 != v96)
        {
          objc_enumerationMutation(deniedSPCs);
        }

        v98 = *(*(&v127 + 1) + 8 * ii);
        v99 = [(RepairSummaryViewController *)self getComponentString:v98];
        if (v99)
        {
          tableDataText7 = [(RepairSummaryViewController *)self tableDataText];
          [tableDataText7 addObject:v99];

          tableDataText26 = [(RepairSummaryViewController *)self tableDataText2];
          v102 = +[NSBundle mainBundle];
          v103 = [v102 localizedStringForKey:@"TEXT_DENIED" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];
          [tableDataText26 addObject:v103];

          tableImage6 = [(RepairSummaryViewController *)self tableImage];
          v105 = [UIImage _systemImageNamed:@"findmy"];
          [tableImage6 addObject:v105];

          tableImageColor6 = [(RepairSummaryViewController *)self tableImageColor];
          v107 = +[UIColor systemBlueColor];
          [tableImageColor6 addObject:v107];
        }

        else
        {
          tableImageColor6 = handleForCategory();
          if (os_log_type_enabled(tableImageColor6, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v158 = v98;
            _os_log_error_impl(&_mh_execute_header, tableImageColor6, OS_LOG_TYPE_ERROR, "Unknown SPC: %@", buf, 0xCu);
          }
        }
      }

      v95 = [deniedSPCs countByEnumeratingWithState:&v127 objects:v152 count:16];
    }

    while (v95);
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  sealedSPCs = [(RepairSummaryViewController *)self sealedSPCs];
  v109 = [sealedSPCs countByEnumeratingWithState:&v123 objects:v151 count:16];
  if (v109)
  {
    v110 = v109;
    v111 = *v124;
    do
    {
      for (jj = 0; jj != v110; jj = jj + 1)
      {
        if (*v124 != v111)
        {
          objc_enumerationMutation(sealedSPCs);
        }

        v113 = *(*(&v123 + 1) + 8 * jj);
        v114 = [(RepairSummaryViewController *)self getComponentString:v113];
        if (v114)
        {
          tableDataText8 = [(RepairSummaryViewController *)self tableDataText];
          [tableDataText8 addObject:v114];

          tableDataText27 = [(RepairSummaryViewController *)self tableDataText2];
          v114 = [NSString stringWithFormat:@"A new %@ was detected and must be repaired", v114];
          [tableDataText27 addObject:v114];

          tableImage7 = [(RepairSummaryViewController *)self tableImage];
          v119 = [UIImage systemImageNamed:@"checkmark.seal.fill"];
          [tableImage7 addObject:v119];

          tableImageColor7 = [(RepairSummaryViewController *)self tableImageColor];
          v121 = +[UIColor systemGreenColor];
          [tableImageColor7 addObject:v121];
        }

        else
        {
          tableImageColor7 = handleForCategory();
          if (os_log_type_enabled(tableImageColor7, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v158 = v113;
            _os_log_error_impl(&_mh_execute_header, tableImageColor7, OS_LOG_TYPE_ERROR, "Unknown SPC: %@", buf, 0xCu);
          }
        }
      }

      v110 = [sealedSPCs countByEnumeratingWithState:&v123 objects:v151 count:16];
    }

    while (v110);
  }
}

- (void)updateViewWithRepairSummary
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v95 = "[RepairSummaryViewController updateViewWithRepairSummary]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = objc_opt_new();
  [(RepairSummaryViewController *)self setViewControllers:v4];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"TEST_TITLE" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"TEST_DETAILS" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];

  v9 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v9 userInterfaceIdiom];
  v11 = @"iphone.and.screwdriver";
  if (userInterfaceIdiom == 1)
  {
    v11 = @"ipad.and.screwdriver";
  }

  v12 = v11;

  v83 = v6;
  v13 = [[OBTableWelcomeController alloc] initWithTitle:v6 detailText:v8 symbolName:v12 adoptTableViewScrollView:1];
  [(RepairSummaryViewController *)self setContentViewController:v13];

  contentViewController = [(RepairSummaryViewController *)self contentViewController];
  [contentViewController setScrollingDisabled:0];

  contentViewController2 = [(RepairSummaryViewController *)self contentViewController];
  buttonTray = [contentViewController2 buttonTray];
  [buttonTray setHidden:0];

  [(RepairSummaryViewController *)self initRepairSummaryTable];
  v17 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  contentViewController3 = [(RepairSummaryViewController *)self contentViewController];
  [contentViewController3 setTableView:v17];

  v19 = +[UIColor clearColor];
  contentViewController4 = [(RepairSummaryViewController *)self contentViewController];
  tableView = [contentViewController4 tableView];
  [tableView setBackgroundColor:v19];

  contentViewController5 = [(RepairSummaryViewController *)self contentViewController];
  tableView2 = [contentViewController5 tableView];
  [tableView2 setBackgroundView:0];

  contentViewController6 = [(RepairSummaryViewController *)self contentViewController];
  tableView3 = [contentViewController6 tableView];
  [tableView3 setDelegate:self];

  contentViewController7 = [(RepairSummaryViewController *)self contentViewController];
  tableView4 = [contentViewController7 tableView];
  [tableView4 setDataSource:self];

  contentViewController8 = [(RepairSummaryViewController *)self contentViewController];
  tableView5 = [contentViewController8 tableView];
  [tableView5 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];

  contentViewController9 = [(RepairSummaryViewController *)self contentViewController];
  tableView6 = [contentViewController9 tableView];
  [tableView6 reloadData];

  v32 = +[OBBoldTrayButton boldButton];
  [(RepairSummaryViewController *)self setBoldButton:v32];

  boldButton = [(RepairSummaryViewController *)self boldButton];
  v34 = +[NSBundle mainBundle];
  v35 = [v34 localizedStringForKey:@"CONTINUE" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];
  [boldButton setTitle:v35 forState:0];

  boldButton2 = [(RepairSummaryViewController *)self boldButton];
  [boldButton2 addTarget:self action:"continueTapped:" forControlEvents:64];

  contentViewController10 = [(RepairSummaryViewController *)self contentViewController];
  buttonTray2 = [contentViewController10 buttonTray];
  boldButton3 = [(RepairSummaryViewController *)self boldButton];
  [buttonTray2 addButton:boldButton3];

  v40 = +[OBLinkTrayButton linkButton];
  [(RepairSummaryViewController *)self setLinkButton:v40];

  linkButton = [(RepairSummaryViewController *)self linkButton];
  v42 = +[NSBundle mainBundle];
  v43 = [v42 localizedStringForKey:@"CANCEL" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];
  [linkButton setTitle:v43 forState:0];

  linkButton2 = [(RepairSummaryViewController *)self linkButton];
  [linkButton2 addTarget:self action:"cancelTapped:" forControlEvents:64];

  contentViewController11 = [(RepairSummaryViewController *)self contentViewController];
  buttonTray3 = [contentViewController11 buttonTray];
  linkButton3 = [(RepairSummaryViewController *)self linkButton];
  [buttonTray3 addButton:linkButton3];

  viewControllers = [(RepairSummaryViewController *)self viewControllers];
  contentViewController12 = [(RepairSummaryViewController *)self contentViewController];
  [viewControllers addObject:contentViewController12];

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  failSPCs = [(RepairSummaryViewController *)self failSPCs];
  v51 = [failSPCs countByEnumeratingWithState:&v88 objects:v93 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v89;
    do
    {
      v54 = 0;
      do
      {
        if (*v89 != v53)
        {
          objc_enumerationMutation(failSPCs);
        }

        v55 = [[UnknownPartViewController alloc] initWithSPC:*(*(&v88 + 1) + 8 * v54)];
        v56 = v55;
        if (v55)
        {
          [(UnknownPartViewController *)v55 setCoordinator:self];
          viewControllers2 = [(RepairSummaryViewController *)self viewControllers];
          [viewControllers2 addObject:v56];
        }

        v54 = v54 + 1;
      }

      while (v52 != v54);
      v52 = [failSPCs countByEnumeratingWithState:&v88 objects:v93 count:16];
    }

    while (v52);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  unauthSPCs = [(RepairSummaryViewController *)self unauthSPCs];
  v59 = [unauthSPCs countByEnumeratingWithState:&v84 objects:v92 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v85;
    do
    {
      v62 = 0;
      do
      {
        if (*v85 != v61)
        {
          objc_enumerationMutation(unauthSPCs);
        }

        v63 = [[UnknownPartViewController alloc] initWithSPC:*(*(&v84 + 1) + 8 * v62)];
        v64 = v63;
        if (v63)
        {
          [(UnknownPartViewController *)v63 setCoordinator:self];
          viewControllers3 = [(RepairSummaryViewController *)self viewControllers];
          [viewControllers3 addObject:v64];
        }

        v62 = v62 + 1;
      }

      while (v60 != v62);
      v60 = [unauthSPCs countByEnumeratingWithState:&v84 objects:v92 count:16];
    }

    while (v60);
  }

  v66 = objc_opt_new();
  [(RepairSummaryViewController *)self setNavigationController:v66];

  view = [(RepairSummaryViewController *)self view];
  [view bounds];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  navigationController = [(RepairSummaryViewController *)self navigationController];
  view2 = [navigationController view];
  [view2 setFrame:{v69, v71, v73, v75}];

  view3 = [(RepairSummaryViewController *)self view];
  navigationController2 = [(RepairSummaryViewController *)self navigationController];
  view4 = [navigationController2 view];
  [view3 addSubview:view4];

  navigationController3 = [(RepairSummaryViewController *)self navigationController];
  [(RepairSummaryViewController *)self addChildViewController:navigationController3];

  [(RepairSummaryViewController *)self moveToNextViewController];
  navigationController4 = [(RepairSummaryViewController *)self navigationController];
  [navigationController4 didMoveToParentViewController:self];
}

- (void)moveToNextViewController
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[RepairSummaryViewController moveToNextViewController]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  viewControllers = [(RepairSummaryViewController *)self viewControllers];
  v5 = [viewControllers count];

  v6 = handleForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Move to next view", &v12, 2u);
    }

    navigationController = [(RepairSummaryViewController *)self navigationController];
    viewControllers2 = [(RepairSummaryViewController *)self viewControllers];
    v10 = [viewControllers2 objectAtIndexedSubscript:0];
    [navigationController pushViewController:v10 animated:1];

    viewControllers3 = [(RepairSummaryViewController *)self viewControllers];
    [viewControllers3 removeObjectAtIndex:0];
  }

  else
  {
    if (v7)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No more views.", &v12, 2u);
    }

    [(RepairSummaryViewController *)self endTestWithStatusCode:0 error:0];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(RepairSummaryViewController *)self tableDataText:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:pathCopy];
  defaultContentConfiguration = [v7 defaultContentConfiguration];
  tableDataText = [(RepairSummaryViewController *)self tableDataText];
  v10 = [tableDataText objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  [defaultContentConfiguration setText:v10];

  tableDataText2 = [(RepairSummaryViewController *)self tableDataText2];
  v12 = [tableDataText2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  [defaultContentConfiguration setSecondaryText:v12];

  tableImage = [(RepairSummaryViewController *)self tableImage];
  v14 = [tableImage objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  [defaultContentConfiguration setImage:v14];

  tableImageColor = [(RepairSummaryViewController *)self tableImageColor];
  v16 = [pathCopy row];

  v17 = [tableImageColor objectAtIndexedSubscript:v16];
  imageProperties = [defaultContentConfiguration imageProperties];
  [imageProperties setTintColor:v17];

  textProperties = [defaultContentConfiguration textProperties];
  font = [textProperties font];
  [font pointSize];
  v21 = [UIFont boldSystemFontOfSize:?];
  textProperties2 = [defaultContentConfiguration textProperties];
  [textProperties2 setFont:v21];

  [v7 setContentConfiguration:defaultContentConfiguration];
  v23 = +[UIColor systemGroupedBackgroundColor];
  contentView = [v7 contentView];
  [contentView setBackgroundColor:v23];

  return v7;
}

- (void)continueTapped:(id)tapped
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Continue button tapped", v5, 2u);
  }

  [(RepairSummaryViewController *)self moveToNextViewController];
}

- (void)cancelTapped:(id)tapped
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cancel button tapped", v5, 2u);
  }

  [(RepairSummaryViewController *)self endTestWithStatusCode:-82 error:0];
}

- (void)handleButtonEvent:(unint64_t)event
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    eventCopy = event;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Physical button event: %ld", &v5, 0xCu);
  }
}

- (BOOL)shouldPresentInHostApp
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[RepairSummaryViewController shouldPresentInHostApp]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  uiNeededKnownSemaphore = [(RepairSummaryViewController *)self uiNeededKnownSemaphore];
  dispatch_semaphore_wait(uiNeededKnownSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  return [(RepairSummaryViewController *)self repairSummaryNeeded];
}

- (void)endTestWithStatusCode:(int64_t)code error:(id)error
{
  errorCopy = error;
  if (code)
  {
    v9 = [NSNumber numberWithInteger:code];
    result = [(RepairSummaryViewController *)self result];
    [result setStatusCode:v9];

    v11 = [errorCopy description];
    v12 = v11;
    if (!v11)
    {
      v12 = +[NSNull null];
    }

    v51[1] = @"errorCode";
    v52[0] = v12;
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    v14 = v13;
    if (!v13)
    {
      v14 = +[NSNull null];
    }

    v52[1] = v14;
    v15 = v52;
    v16 = v51;
LABEL_23:
    v25 = [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:2];
    result2 = [(RepairSummaryViewController *)self result];
    [result2 setData:v25];

    if (!v13)
    {
    }

    if (!v11)
    {
    }

    [(RepairSummaryViewController *)self setFinished:1];
    goto LABEL_28;
  }

  lockSPCs = [(RepairSummaryViewController *)self lockSPCs];
  if (lockSPCs)
  {
    lockSPCs2 = [(RepairSummaryViewController *)self lockSPCs];
    if ([lockSPCs2 count])
    {

LABEL_18:
      v23 = [NSNumber numberWithInteger:0];
      result3 = [(RepairSummaryViewController *)self result];
      [result3 setStatusCode:v23];

      v57[0] = @"error";
      v11 = [errorCopy description];
      v12 = v11;
      if (!v11)
      {
        v12 = +[NSNull null];
      }

      v58[0] = v12;
      v57[1] = @"errorCode";
      v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
      v14 = v13;
      if (!v13)
      {
        v14 = +[NSNull null];
      }

      v58[1] = v14;
      v15 = v58;
      v16 = v57;
      goto LABEL_23;
    }
  }

  lostSPCs = [(RepairSummaryViewController *)self lostSPCs];
  if (lostSPCs)
  {
    lostSPCs2 = [(RepairSummaryViewController *)self lostSPCs];
    if ([lostSPCs2 count])
    {
      v19 = 1;
      goto LABEL_15;
    }
  }

  deniedSPCs = [(RepairSummaryViewController *)self deniedSPCs];
  if (deniedSPCs)
  {
    v21 = deniedSPCs;
    deniedSPCs2 = [(RepairSummaryViewController *)self deniedSPCs];
    v19 = [deniedSPCs2 count] != 0;

    if (!lostSPCs)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v19 = 0;
  if (lostSPCs)
  {
LABEL_15:
  }

LABEL_16:
  if (lockSPCs)
  {

    if (v19)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v19)
    {
      goto LABEL_18;
    }
  }

  passSPCs = [(RepairSummaryViewController *)self passSPCs];
  v28 = [passSPCs mutableCopy];

  sealedSPCs = [(RepairSummaryViewController *)self sealedSPCs];
  if (sealedSPCs)
  {
    v30 = sealedSPCs;
    sealedSPCs2 = [(RepairSummaryViewController *)self sealedSPCs];
    v32 = [sealedSPCs2 count];

    if (v32)
    {
      [v28 addObject:@"RECOVER"];
    }
  }

  preflightRIK = [(RepairSummaryViewController *)self preflightRIK];

  if (preflightRIK && (-[RepairSummaryViewController preflightRIK](self, "preflightRIK"), v34 = objc_claimAutoreleasedReturnValue(), [v34 base64EncodedStringWithOptions:0], preflightRIK = objc_claimAutoreleasedReturnValue(), v34, !preflightRIK))
  {
    v36 = handleForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1000050C4();
    }

    preflightRIK = 0;
    v35 = -87;
    if (!v28)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v35 = 0;
    if (!v28)
    {
      goto LABEL_43;
    }
  }

  if (![v28 count])
  {
LABEL_43:
    v37 = handleForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1000050F8();
    }

    v35 = -88;
  }

  if (v28 && preflightRIK && [v28 count])
  {
    v38 = [NSNumber numberWithInteger:v35];
    result4 = [(RepairSummaryViewController *)self result];
    [result4 setStatusCode:v38];

    v55[0] = @"error";
    v40 = [errorCopy description];
    v41 = v40;
    if (!v40)
    {
      v41 = +[NSNull null];
    }

    v56[0] = v41;
    v55[1] = @"errorCode";
    v42 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    v43 = v42;
    if (!v42)
    {
      v43 = +[NSNull null];
    }

    v56[1] = v43;
    v56[2] = preflightRIK;
    v55[2] = @"preflightRIK";
    v55[3] = @"preflightPartSPC";
    v56[3] = v28;
    v44 = v56;
    v45 = v55;
    v46 = 4;
  }

  else
  {
    v47 = [NSNumber numberWithInteger:v35];
    result5 = [(RepairSummaryViewController *)self result];
    [result5 setStatusCode:v47];

    v53[0] = @"error";
    v40 = [errorCopy description];
    v41 = v40;
    if (!v40)
    {
      v41 = +[NSNull null];
    }

    v53[1] = @"errorCode";
    v54[0] = v41;
    v42 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    v43 = v42;
    if (!v42)
    {
      v43 = +[NSNull null];
    }

    v54[1] = v43;
    v44 = v54;
    v45 = v53;
    v46 = 2;
  }

  v49 = [NSDictionary dictionaryWithObjects:v44 forKeys:v45 count:v46];
  result6 = [(RepairSummaryViewController *)self result];
  [result6 setData:v49];

  if (!v42)
  {
  }

  if (!v40)
  {
  }

  [(RepairSummaryViewController *)self setFinished:1];
LABEL_28:
}

@end
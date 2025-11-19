@interface RepairSummaryViewController
- (BOOL)shouldPresentInHostApp;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancel;
- (void)cancelTapped:(id)a3;
- (void)continueTapped:(id)a3;
- (void)endTestWithStatusCode:(int64_t)a3 error:(id)a4;
- (void)handleButtonEvent:(unint64_t)a3;
- (void)initRepairSummaryTable;
- (void)moveToNextViewController;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)teardown;
- (void)updateViewWithRepairSummary;
- (void)viewDidLoad;
@end

@implementation RepairSummaryViewController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[RepairSummaryViewController setupWithInputs:responder:]";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", buf, 0x20u);
  }

  [(RepairSummaryViewController *)self setInputs:v6];
  v9 = [(RepairSummaryViewController *)self inputs];
  v10 = v9 == 0;

  if (v10)
  {
    v11 = [(RepairSummaryViewController *)self result];
    [v11 setStatusCode:&off_10000C8F8];

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

    v14 = [(RepairSummaryViewController *)self result];
    [v14 setStatusCode:&off_10000C910];

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

  v18 = [(RepairSummaryViewController *)self buttonEventMonitor];
  LODWORD(v17) = v18 == 0;

  if (v17)
  {
    v19 = handleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100005090();
    }

    v20 = [(RepairSummaryViewController *)self result];
    [v20 setStatusCode:&off_10000C910];

    [(RepairSummaryViewController *)self setFinished:1];
  }

  objc_initWeak(buf, self);
  v21 = [(RepairSummaryViewController *)self buttonEventMonitor];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000172C;
  v23[3] = &unk_10000C2A0;
  objc_copyWeak(&v24, buf);
  [v21 startWithPriority:200 completion:v23];

  v22 = dispatch_semaphore_create(0);
  [(RepairSummaryViewController *)self setUiNeededKnownSemaphore:v22];

  [(RepairSummaryViewController *)self setRepairSummaryNeeded:0];
  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (void)start
{
  v3 = [(RepairSummaryViewController *)self result];
  [v3 setStatusCode:&off_10000C928];

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

      v13 = [(RepairSummaryViewController *)self uiNeededKnownSemaphore];
      dispatch_semaphore_signal(v13);

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
    v7 = [(RepairSummaryViewController *)self uiNeededKnownSemaphore];
    dispatch_semaphore_signal(v7);

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

  v4 = [(RepairSummaryViewController *)self buttonEventMonitor];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000020E4;
  v5[3] = &unk_10000C2F0;
  v5[4] = self;
  [v4 stopWithCompletion:v5];
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
  v3 = [(RepairSummaryViewController *)self preflightResults];
  v4 = [CRPreflightUtils spcResults:v3];

  v5 = [(RepairSummaryViewController *)self preflightResults];
  v6 = [v5 objectForKeyedSubscript:@"keyBlob"];
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
  v18 = [(RepairSummaryViewController *)self passSPCs];
  v19 = [v18 countByEnumeratingWithState:&v147 objects:v159 count:16];
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
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v147 + 1) + 8 * i);
        v24 = [(RepairSummaryViewController *)self getComponentString:v23];
        if (v24)
        {
          v25 = [(RepairSummaryViewController *)self tableDataText];
          [v25 addObject:v24];

          v26 = [(RepairSummaryViewController *)self tableDataText2];
          v27 = +[NSBundle mainBundle];
          v28 = [v27 localizedStringForKey:@"TEXT_PASS" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];
          [v26 addObject:v28];

          v29 = [(RepairSummaryViewController *)self tableImage];
          v30 = [UIImage systemImageNamed:@"checkmark.seal.fill"];
          [v29 addObject:v30];

          v31 = [(RepairSummaryViewController *)self tableImageColor];
          v32 = +[UIColor systemGreenColor];
          [v31 addObject:v32];
        }

        else
        {
          v31 = handleForCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v158 = v23;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Unknown SPC: %@", buf, 0xCu);
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v147 objects:v159 count:16];
    }

    while (v20);
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v33 = [(RepairSummaryViewController *)self failSPCs];
  v34 = [v33 countByEnumeratingWithState:&v143 objects:v156 count:16];
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
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v143 + 1) + 8 * j);
        v39 = [(RepairSummaryViewController *)self getComponentString:v38];
        if (v39)
        {
          v40 = [(RepairSummaryViewController *)self tableDataText];
          [v40 addObject:v39];

          v41 = [(RepairSummaryViewController *)self tableDataText2];
          v42 = +[NSBundle mainBundle];
          v43 = [v42 localizedStringForKey:@"TEXT_UNKNOWN" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];
          [v41 addObject:v43];

          v44 = [(RepairSummaryViewController *)self tableImage];
          v45 = [UIImage systemImageNamed:@"exclamationmark.triangle.fill"];
          [v44 addObject:v45];

          v46 = [(RepairSummaryViewController *)self tableImageColor];
          v47 = +[UIColor systemYellowColor];
          [v46 addObject:v47];
        }

        else
        {
          v46 = handleForCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v158 = v38;
            _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Unknown SPC: %@", buf, 0xCu);
          }
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v143 objects:v156 count:16];
    }

    while (v35);
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v48 = [(RepairSummaryViewController *)self lockSPCs];
  v49 = [v48 countByEnumeratingWithState:&v139 objects:v155 count:16];
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
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v139 + 1) + 8 * k);
        v54 = [(RepairSummaryViewController *)self getComponentString:v53];
        if (v54)
        {
          v55 = [(RepairSummaryViewController *)self tableDataText];
          [v55 addObject:v54];

          v56 = [(RepairSummaryViewController *)self tableDataText2];
          v57 = +[NSBundle mainBundle];
          v58 = [v57 localizedStringForKey:@"TEXT_LOCK" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];
          [v56 addObject:v58];

          v59 = [(RepairSummaryViewController *)self tableImage];
          v60 = [UIImage systemImageNamed:@"lock.circle.fill"];
          [v59 addObject:v60];

          v61 = [(RepairSummaryViewController *)self tableImageColor];
          v62 = +[UIColor blackColor];
          [v61 addObject:v62];
        }

        else
        {
          v61 = handleForCategory();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v158 = v53;
            _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "Unknown SPC: %@", buf, 0xCu);
          }
        }
      }

      v50 = [v48 countByEnumeratingWithState:&v139 objects:v155 count:16];
    }

    while (v50);
  }

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v63 = [(RepairSummaryViewController *)self unauthSPCs];
  v64 = [v63 countByEnumeratingWithState:&v135 objects:v154 count:16];
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
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v135 + 1) + 8 * m);
        v69 = [(RepairSummaryViewController *)self getComponentString:v68];
        if (v69)
        {
          v70 = [(RepairSummaryViewController *)self tableDataText];
          [v70 addObject:v69];

          v71 = [(RepairSummaryViewController *)self tableDataText2];
          v72 = +[NSBundle mainBundle];
          v73 = [v72 localizedStringForKey:@"TEXT_UNKNOWN" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];
          [v71 addObject:v73];

          v74 = [(RepairSummaryViewController *)self tableImage];
          v75 = [UIImage systemImageNamed:@"exclamationmark.triangle.fill"];
          [v74 addObject:v75];

          v76 = [(RepairSummaryViewController *)self tableImageColor];
          v77 = +[UIColor systemYellowColor];
          [v76 addObject:v77];
        }

        else
        {
          v76 = handleForCategory();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v158 = v68;
            _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "Unknown SPC: %@", buf, 0xCu);
          }
        }
      }

      v65 = [v63 countByEnumeratingWithState:&v135 objects:v154 count:16];
    }

    while (v65);
  }

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v78 = [(RepairSummaryViewController *)self lostSPCs];
  v79 = [v78 countByEnumeratingWithState:&v131 objects:v153 count:16];
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
          objc_enumerationMutation(v78);
        }

        v83 = *(*(&v131 + 1) + 8 * n);
        v84 = [(RepairSummaryViewController *)self getComponentString:v83];
        if (v84)
        {
          v85 = [(RepairSummaryViewController *)self tableDataText];
          [v85 addObject:v84];

          v86 = [(RepairSummaryViewController *)self tableDataText2];
          v87 = +[NSBundle mainBundle];
          v88 = [v87 localizedStringForKey:@"TEXT_LOST" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];
          [v86 addObject:v88];

          v89 = [(RepairSummaryViewController *)self tableImage];
          v90 = [UIImage _systemImageNamed:@"findmy"];
          [v89 addObject:v90];

          v91 = [(RepairSummaryViewController *)self tableImageColor];
          v92 = +[UIColor systemBlueColor];
          [v91 addObject:v92];
        }

        else
        {
          v91 = handleForCategory();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v158 = v83;
            _os_log_error_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "Unknown SPC: %@", buf, 0xCu);
          }
        }
      }

      v80 = [v78 countByEnumeratingWithState:&v131 objects:v153 count:16];
    }

    while (v80);
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v93 = [(RepairSummaryViewController *)self deniedSPCs];
  v94 = [v93 countByEnumeratingWithState:&v127 objects:v152 count:16];
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
          objc_enumerationMutation(v93);
        }

        v98 = *(*(&v127 + 1) + 8 * ii);
        v99 = [(RepairSummaryViewController *)self getComponentString:v98];
        if (v99)
        {
          v100 = [(RepairSummaryViewController *)self tableDataText];
          [v100 addObject:v99];

          v101 = [(RepairSummaryViewController *)self tableDataText2];
          v102 = +[NSBundle mainBundle];
          v103 = [v102 localizedStringForKey:@"TEXT_DENIED" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];
          [v101 addObject:v103];

          v104 = [(RepairSummaryViewController *)self tableImage];
          v105 = [UIImage _systemImageNamed:@"findmy"];
          [v104 addObject:v105];

          v106 = [(RepairSummaryViewController *)self tableImageColor];
          v107 = +[UIColor systemBlueColor];
          [v106 addObject:v107];
        }

        else
        {
          v106 = handleForCategory();
          if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v158 = v98;
            _os_log_error_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "Unknown SPC: %@", buf, 0xCu);
          }
        }
      }

      v95 = [v93 countByEnumeratingWithState:&v127 objects:v152 count:16];
    }

    while (v95);
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v108 = [(RepairSummaryViewController *)self sealedSPCs];
  v109 = [v108 countByEnumeratingWithState:&v123 objects:v151 count:16];
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
          objc_enumerationMutation(v108);
        }

        v113 = *(*(&v123 + 1) + 8 * jj);
        v114 = [(RepairSummaryViewController *)self getComponentString:v113];
        if (v114)
        {
          v115 = [(RepairSummaryViewController *)self tableDataText];
          [v115 addObject:v114];

          v116 = [(RepairSummaryViewController *)self tableDataText2];
          v117 = [NSString stringWithFormat:@"A new %@ was detected and must be repaired", v114];
          [v116 addObject:v117];

          v118 = [(RepairSummaryViewController *)self tableImage];
          v119 = [UIImage systemImageNamed:@"checkmark.seal.fill"];
          [v118 addObject:v119];

          v120 = [(RepairSummaryViewController *)self tableImageColor];
          v121 = +[UIColor systemGreenColor];
          [v120 addObject:v121];
        }

        else
        {
          v120 = handleForCategory();
          if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v158 = v113;
            _os_log_error_impl(&_mh_execute_header, v120, OS_LOG_TYPE_ERROR, "Unknown SPC: %@", buf, 0xCu);
          }
        }
      }

      v110 = [v108 countByEnumeratingWithState:&v123 objects:v151 count:16];
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
  v10 = [v9 userInterfaceIdiom];
  v11 = @"iphone.and.screwdriver";
  if (v10 == 1)
  {
    v11 = @"ipad.and.screwdriver";
  }

  v12 = v11;

  v83 = v6;
  v13 = [[OBTableWelcomeController alloc] initWithTitle:v6 detailText:v8 symbolName:v12 adoptTableViewScrollView:1];
  [(RepairSummaryViewController *)self setContentViewController:v13];

  v14 = [(RepairSummaryViewController *)self contentViewController];
  [v14 setScrollingDisabled:0];

  v15 = [(RepairSummaryViewController *)self contentViewController];
  v16 = [v15 buttonTray];
  [v16 setHidden:0];

  [(RepairSummaryViewController *)self initRepairSummaryTable];
  v17 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v18 = [(RepairSummaryViewController *)self contentViewController];
  [v18 setTableView:v17];

  v19 = +[UIColor clearColor];
  v20 = [(RepairSummaryViewController *)self contentViewController];
  v21 = [v20 tableView];
  [v21 setBackgroundColor:v19];

  v22 = [(RepairSummaryViewController *)self contentViewController];
  v23 = [v22 tableView];
  [v23 setBackgroundView:0];

  v24 = [(RepairSummaryViewController *)self contentViewController];
  v25 = [v24 tableView];
  [v25 setDelegate:self];

  v26 = [(RepairSummaryViewController *)self contentViewController];
  v27 = [v26 tableView];
  [v27 setDataSource:self];

  v28 = [(RepairSummaryViewController *)self contentViewController];
  v29 = [v28 tableView];
  [v29 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];

  v30 = [(RepairSummaryViewController *)self contentViewController];
  v31 = [v30 tableView];
  [v31 reloadData];

  v32 = +[OBBoldTrayButton boldButton];
  [(RepairSummaryViewController *)self setBoldButton:v32];

  v33 = [(RepairSummaryViewController *)self boldButton];
  v34 = +[NSBundle mainBundle];
  v35 = [v34 localizedStringForKey:@"CONTINUE" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];
  [v33 setTitle:v35 forState:0];

  v36 = [(RepairSummaryViewController *)self boldButton];
  [v36 addTarget:self action:"continueTapped:" forControlEvents:64];

  v37 = [(RepairSummaryViewController *)self contentViewController];
  v38 = [v37 buttonTray];
  v39 = [(RepairSummaryViewController *)self boldButton];
  [v38 addButton:v39];

  v40 = +[OBLinkTrayButton linkButton];
  [(RepairSummaryViewController *)self setLinkButton:v40];

  v41 = [(RepairSummaryViewController *)self linkButton];
  v42 = +[NSBundle mainBundle];
  v43 = [v42 localizedStringForKey:@"CANCEL" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];
  [v41 setTitle:v43 forState:0];

  v44 = [(RepairSummaryViewController *)self linkButton];
  [v44 addTarget:self action:"cancelTapped:" forControlEvents:64];

  v45 = [(RepairSummaryViewController *)self contentViewController];
  v46 = [v45 buttonTray];
  v47 = [(RepairSummaryViewController *)self linkButton];
  [v46 addButton:v47];

  v48 = [(RepairSummaryViewController *)self viewControllers];
  v49 = [(RepairSummaryViewController *)self contentViewController];
  [v48 addObject:v49];

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v50 = [(RepairSummaryViewController *)self failSPCs];
  v51 = [v50 countByEnumeratingWithState:&v88 objects:v93 count:16];
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
          objc_enumerationMutation(v50);
        }

        v55 = [[UnknownPartViewController alloc] initWithSPC:*(*(&v88 + 1) + 8 * v54)];
        v56 = v55;
        if (v55)
        {
          [(UnknownPartViewController *)v55 setCoordinator:self];
          v57 = [(RepairSummaryViewController *)self viewControllers];
          [v57 addObject:v56];
        }

        v54 = v54 + 1;
      }

      while (v52 != v54);
      v52 = [v50 countByEnumeratingWithState:&v88 objects:v93 count:16];
    }

    while (v52);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v58 = [(RepairSummaryViewController *)self unauthSPCs];
  v59 = [v58 countByEnumeratingWithState:&v84 objects:v92 count:16];
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
          objc_enumerationMutation(v58);
        }

        v63 = [[UnknownPartViewController alloc] initWithSPC:*(*(&v84 + 1) + 8 * v62)];
        v64 = v63;
        if (v63)
        {
          [(UnknownPartViewController *)v63 setCoordinator:self];
          v65 = [(RepairSummaryViewController *)self viewControllers];
          [v65 addObject:v64];
        }

        v62 = v62 + 1;
      }

      while (v60 != v62);
      v60 = [v58 countByEnumeratingWithState:&v84 objects:v92 count:16];
    }

    while (v60);
  }

  v66 = objc_opt_new();
  [(RepairSummaryViewController *)self setNavigationController:v66];

  v67 = [(RepairSummaryViewController *)self view];
  [v67 bounds];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = [(RepairSummaryViewController *)self navigationController];
  v77 = [v76 view];
  [v77 setFrame:{v69, v71, v73, v75}];

  v78 = [(RepairSummaryViewController *)self view];
  v79 = [(RepairSummaryViewController *)self navigationController];
  v80 = [v79 view];
  [v78 addSubview:v80];

  v81 = [(RepairSummaryViewController *)self navigationController];
  [(RepairSummaryViewController *)self addChildViewController:v81];

  [(RepairSummaryViewController *)self moveToNextViewController];
  v82 = [(RepairSummaryViewController *)self navigationController];
  [v82 didMoveToParentViewController:self];
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

  v4 = [(RepairSummaryViewController *)self viewControllers];
  v5 = [v4 count];

  v6 = handleForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Move to next view", &v12, 2u);
    }

    v8 = [(RepairSummaryViewController *)self navigationController];
    v9 = [(RepairSummaryViewController *)self viewControllers];
    v10 = [v9 objectAtIndexedSubscript:0];
    [v8 pushViewController:v10 animated:1];

    v11 = [(RepairSummaryViewController *)self viewControllers];
    [v11 removeObjectAtIndex:0];
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(RepairSummaryViewController *)self tableDataText:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:v6];
  v8 = [v7 defaultContentConfiguration];
  v9 = [(RepairSummaryViewController *)self tableDataText];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
  [v8 setText:v10];

  v11 = [(RepairSummaryViewController *)self tableDataText2];
  v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
  [v8 setSecondaryText:v12];

  v13 = [(RepairSummaryViewController *)self tableImage];
  v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
  [v8 setImage:v14];

  v15 = [(RepairSummaryViewController *)self tableImageColor];
  v16 = [v6 row];

  v17 = [v15 objectAtIndexedSubscript:v16];
  v18 = [v8 imageProperties];
  [v18 setTintColor:v17];

  v19 = [v8 textProperties];
  v20 = [v19 font];
  [v20 pointSize];
  v21 = [UIFont boldSystemFontOfSize:?];
  v22 = [v8 textProperties];
  [v22 setFont:v21];

  [v7 setContentConfiguration:v8];
  v23 = +[UIColor systemGroupedBackgroundColor];
  v24 = [v7 contentView];
  [v24 setBackgroundColor:v23];

  return v7;
}

- (void)continueTapped:(id)a3
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Continue button tapped", v5, 2u);
  }

  [(RepairSummaryViewController *)self moveToNextViewController];
}

- (void)cancelTapped:(id)a3
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cancel button tapped", v5, 2u);
  }

  [(RepairSummaryViewController *)self endTestWithStatusCode:-82 error:0];
}

- (void)handleButtonEvent:(unint64_t)a3
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a3;
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

  v4 = [(RepairSummaryViewController *)self uiNeededKnownSemaphore];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  return [(RepairSummaryViewController *)self repairSummaryNeeded];
}

- (void)endTestWithStatusCode:(int64_t)a3 error:(id)a4
{
  v8 = a4;
  if (a3)
  {
    v9 = [NSNumber numberWithInteger:a3];
    v10 = [(RepairSummaryViewController *)self result];
    [v10 setStatusCode:v9];

    v11 = [v8 description];
    v12 = v11;
    if (!v11)
    {
      v12 = +[NSNull null];
    }

    v51[1] = @"errorCode";
    v52[0] = v12;
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
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
    v26 = [(RepairSummaryViewController *)self result];
    [v26 setData:v25];

    if (!v13)
    {
    }

    if (!v11)
    {
    }

    [(RepairSummaryViewController *)self setFinished:1];
    goto LABEL_28;
  }

  v17 = [(RepairSummaryViewController *)self lockSPCs];
  if (v17)
  {
    v4 = [(RepairSummaryViewController *)self lockSPCs];
    if ([v4 count])
    {

LABEL_18:
      v23 = [NSNumber numberWithInteger:0];
      v24 = [(RepairSummaryViewController *)self result];
      [v24 setStatusCode:v23];

      v57[0] = @"error";
      v11 = [v8 description];
      v12 = v11;
      if (!v11)
      {
        v12 = +[NSNull null];
      }

      v58[0] = v12;
      v57[1] = @"errorCode";
      v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
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

  v18 = [(RepairSummaryViewController *)self lostSPCs];
  if (v18)
  {
    v5 = [(RepairSummaryViewController *)self lostSPCs];
    if ([v5 count])
    {
      v19 = 1;
      goto LABEL_15;
    }
  }

  v20 = [(RepairSummaryViewController *)self deniedSPCs];
  if (v20)
  {
    v21 = v20;
    v22 = [(RepairSummaryViewController *)self deniedSPCs];
    v19 = [v22 count] != 0;

    if (!v18)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v19 = 0;
  if (v18)
  {
LABEL_15:
  }

LABEL_16:
  if (v17)
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

  v27 = [(RepairSummaryViewController *)self passSPCs];
  v28 = [v27 mutableCopy];

  v29 = [(RepairSummaryViewController *)self sealedSPCs];
  if (v29)
  {
    v30 = v29;
    v31 = [(RepairSummaryViewController *)self sealedSPCs];
    v32 = [v31 count];

    if (v32)
    {
      [v28 addObject:@"RECOVER"];
    }
  }

  v33 = [(RepairSummaryViewController *)self preflightRIK];

  if (v33 && (-[RepairSummaryViewController preflightRIK](self, "preflightRIK"), v34 = objc_claimAutoreleasedReturnValue(), [v34 base64EncodedStringWithOptions:0], v33 = objc_claimAutoreleasedReturnValue(), v34, !v33))
  {
    v36 = handleForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1000050C4();
    }

    v33 = 0;
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

  if (v28 && v33 && [v28 count])
  {
    v38 = [NSNumber numberWithInteger:v35];
    v39 = [(RepairSummaryViewController *)self result];
    [v39 setStatusCode:v38];

    v55[0] = @"error";
    v40 = [v8 description];
    v41 = v40;
    if (!v40)
    {
      v41 = +[NSNull null];
    }

    v56[0] = v41;
    v55[1] = @"errorCode";
    v42 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
    v43 = v42;
    if (!v42)
    {
      v43 = +[NSNull null];
    }

    v56[1] = v43;
    v56[2] = v33;
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
    v48 = [(RepairSummaryViewController *)self result];
    [v48 setStatusCode:v47];

    v53[0] = @"error";
    v40 = [v8 description];
    v41 = v40;
    if (!v40)
    {
      v41 = +[NSNull null];
    }

    v53[1] = @"errorCode";
    v54[0] = v41;
    v42 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
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
  v50 = [(RepairSummaryViewController *)self result];
  [v50 setData:v49];

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
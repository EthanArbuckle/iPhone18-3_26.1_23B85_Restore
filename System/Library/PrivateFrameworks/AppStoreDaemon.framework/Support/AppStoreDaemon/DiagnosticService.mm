@interface DiagnosticService
- (DiagnosticService)init;
- (void)_handlePingMessage:(id)message fromDevice:(id)device;
- (void)addSubscriberWithEndpoint:(id)endpoint;
- (void)pingWithReplyHandler:(id)handler;
- (void)sendCommandWithDetailedReplyHandler:(int64_t)handler handler:(id)a4;
- (void)sendCommandWithReplyHandler:(int64_t)handler handler:(id)a4;
@end

@implementation DiagnosticService

- (DiagnosticService)init
{
  v9.receiver = self;
  v9.super_class = DiagnosticService;
  v2 = [(DiagnosticService *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    listenerConnections = v2->_listenerConnections;
    v2->_listenerConnections = v3;

    v5 = objc_alloc_init(UnfairLock);
    listenerLock = v2->_listenerLock;
    v2->_listenerLock = v5;

    v7 = sub_1002EB36C();
    sub_1002EB6D8(v7, v2, "_handlePingMessage:fromDevice:", 1);
  }

  return v2;
}

- (void)addSubscriberWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  listenerLock = self->_listenerLock;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10030D108;
  v7[3] = &unk_10051B570;
  v8 = endpointCopy;
  selfCopy = self;
  v6 = endpointCopy;
  sub_100379C5C(listenerLock, v7);
}

- (void)pingWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v4 = sub_1002C0D84();
  sub_1002C13BC(v4, 2048);

  [NSMutableString stringWithString:@"\nExisting coordinators:"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10030D6E8;
  v5 = v14[3] = &unk_10051E6A0;
  v15 = v5;
  [IXAppInstallCoordinator enumerateCoordinatorsWithError:0 usingBlock:v14];
  [v5 appendFormat:@"\n  ~ END ~"];
  [v5 appendString:@"\n\nActive installations:"];
  v6 = sub_1003C27BC();
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10030D71C;
  v12 = &unk_10051FC80;
  v7 = v5;
  v13 = v7;
  [v6 readUsingSession:&v9];

  [v7 appendFormat:@"\n  ~ END ~", v9, v10, v11, v12];
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "->> %{public}@", buf, 0xCu);
  }

  handlerCopy[2](handlerCopy);
}

- (void)sendCommandWithReplyHandler:(int64_t)handler handler:(id)a4
{
  v6 = a4;
  if (!os_variant_has_internal_content())
  {
    goto LABEL_132;
  }

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v125 = objc_opt_class();
    *&v125[8] = 2048;
    handlerCopy = handler;
    v8 = *v125;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@]: Recieved command: %ld", buf, 0x16u);
  }

  if (handler > 719)
  {
    if (handler <= 743)
    {
      if (handler > 739)
      {
        if (handler > 741)
        {
          if (handler == 742)
          {
            objc_opt_self();
            qword_1005ABBE8 = -2;
            v9 = ASDLogHandleForCategory();
            if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v27 = "Cleared out activation record override";
              goto LABEL_87;
            }

            goto LABEL_131;
          }

          objc_opt_self();
          qword_1005ABBE8 = 1;
          v9 = ASDLogHandleForCategory();
          if (!os_log_type_enabled(&v9->super, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_131;
          }

          *buf = 0;
          v27 = "Set HRN activation record override on";
        }

        else
        {
          if (handler == 740)
          {
            v9 = ASDLogHandleForCategory();
            if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_DEFAULT))
            {
              v57 = sub_100383448();
              *buf = 67109120;
              *v125 = v57;
              v27 = "HRNMode: %d";
              p_super = &v9->super;
              v59 = 8;
LABEL_88:
              _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, v27, buf, v59);
              goto LABEL_131;
            }

            goto LABEL_131;
          }

          sub_100383988();
          v9 = ASDLogHandleForCategory();
          if (!os_log_type_enabled(&v9->super, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_131;
          }

          *buf = 0;
          v27 = "Invalidated HRN cache";
        }

LABEL_87:
        p_super = &v9->super;
        v59 = 2;
        goto LABEL_88;
      }

      if (handler > 721)
      {
        if (handler != 722)
        {
          if (handler != 730)
          {
            goto LABEL_67;
          }

          v30 = [AnonymousPingTask alloc];
          v31 = [NSURL URLWithString:@"https://xp.apple.com/report/2/xp_app_buy?clientId=0&sf=143441&adamId=123"];
          v123 = v31;
          v32 = [NSArray arrayWithObjects:&v123 count:1];
          ams_activeiTunesAccount2 = sub_100402FDC(v30, v32);

          v33 = sub_100284B90();
          v122 = ams_activeiTunesAccount2;
          present = [NSArray arrayWithObjects:&v122 count:1];
          if (v33)
          {
            [(objc_class *)v33[1].isa addOperations:present waitUntilFinished:1];
          }

          goto LABEL_81;
        }

        v10 = [NSURL URLWithString:@"http://www.apple.com"];
        v11 = @"Some app";
        v55 = v10;
        v56 = 2;
      }

      else
      {
        [NSURL URLWithString:@"http://www.apple.com"];
        if (handler == 720)
          v10 = {;
          v11 = &stru_100529300;
        }

        else
          v10 = {;
          v11 = @"Some app";
        }

        v55 = v10;
        v56 = 1;
      }

      ams_activeiTunesAccount2 = sub_1002C61F4(UPPManifestDialogRequest, v55, v11, v56);

      v33 = [[AMSSystemAlertDialogTask alloc] initWithRequest:ams_activeiTunesAccount2];
      present = [v33 present];
      [present waitUntilFinishedWithTimeout:120.0];
LABEL_81:

      goto LABEL_135;
    }

    if (handler <= 902)
    {
      if (handler > 900)
      {
        if (handler != 901)
        {
          ams_activeiTunesAccount2 = objc_alloc_init(_TtC9appstored6LogKey);
          v35 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v125 = ams_activeiTunesAccount2;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%@] Removing stale Katana supplemental account data for active account", buf, 0xCu);
          }

          ams_activeiTunesAccount3 = +[_TtC9appstored29KatanaSubscriptionCoordinator shared];
          v36 = [(LogKey *)ams_activeiTunesAccount3 removeStaleSubscriptionInfoWithLogKey:ams_activeiTunesAccount2];
          v19 = ASDLogHandleForCategory();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_46;
          }

          *buf = 138412546;
          *v125 = ams_activeiTunesAccount2;
          *&v125[8] = 1024;
          LODWORD(handlerCopy) = v36;
          v24 = "[%@] Removed stale Katana subscription info with success: %{BOOL}d";
          v25 = v19;
          v26 = 18;
          goto LABEL_45;
        }

        v66 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Testing Katana Arcade Entitlement Updates", buf, 2u);
        }

        v67 = objc_alloc_init(_TtC9appstored6LogKey);
        v68 = +[_TtC9appstored29KatanaSubscriptionCoordinator shared];
        v69 = +[ACAccountStore ams_sharedAccountStore];
        ams_activeiTunesAccount = [v69 ams_activeiTunesAccount];

        v112 = 0;
        v71 = sub_10030F358(self, ams_activeiTunesAccount, &v112);
        v72 = v112;
        v73 = +[BagService appstoredService];
        v106[0] = _NSConcreteStackBlock;
        v106[1] = 3221225472;
        v106[2] = sub_10030F5D0;
        v106[3] = &unk_100522C78;
        v107 = v68;
        v108 = v71;
        v109 = ams_activeiTunesAccount;
        v110 = v67;
        v111 = v6;
        v74 = v67;
        v75 = ams_activeiTunesAccount;
        v76 = v71;
        v77 = v68;
        [v73 recentBagWithCompletionHandler:v106];

LABEL_111:
        goto LABEL_137;
      }

      if (handler == 744)
      {
        objc_opt_self();
        qword_1005ABBE8 = -1;
        v9 = ASDLogHandleForCategory();
        if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v27 = "Set HRN activation record override off";
          goto LABEL_87;
        }

        goto LABEL_131;
      }

      if (handler == 745)
      {
        v12 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Set converting install to factory ledger event", buf, 2u);
        }

        v13 = sub_1002AB1B0();
        sub_1002AC6A0(v13, &off_100549500);

        ams_activeiTunesAccount2 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.Pages" allowPlaceholder:0 error:0];
        ams_activeiTunesAccount3 = objc_alloc_init(_TtC9appstored6LogKey);
        v16 = sub_1003BB60C([AppLedgerEvent alloc], ams_activeiTunesAccount2, ams_activeiTunesAccount3);
        v17 = sub_1002AB1B0();
        v121 = v16;
        v18 = [NSArray arrayWithObjects:&v121 count:1];
        sub_1002ABA10(v17, v18);

        goto LABEL_94;
      }

LABEL_67:
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v27 = "Command not supported";
        goto LABEL_87;
      }

LABEL_131:

LABEL_132:
      v6[2](v6);
      goto LABEL_137;
    }

    if (handler > 998)
    {
      if (handler != 999)
      {
        if (handler == 1001)
        {
          v37 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Checking for one account", buf, 2u);
          }

          v38 = objc_alloc_init(_TtC9appstored6LogKey);
          v39 = +[ACAccountStore ams_sharedAccountStore];
          ams_activeiTunesAccount2 = [v39 ams_activeiTunesAccount];

          v40 = +[AMSAccountCachedServerData sharedInstance];
          v103[0] = _NSConcreteStackBlock;
          v103[1] = 3221225472;
          v103[2] = sub_10030F6A8;
          v103[3] = &unk_100522CA0;
          v104 = v38;
          v105 = v6;
          ams_activeiTunesAccount3 = v38;
          [v40 intForKey:3 account:ams_activeiTunesAccount2 logKey:ams_activeiTunesAccount3 staleValueAcceptable:0 completionHandler:v103];

          goto LABEL_95;
        }

        goto LABEL_67;
      }

      v78 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Checking app intents", buf, 2u);
      }

      ams_activeiTunesAccount2 = objc_alloc_init(_TtC9appstored6LogKey);
      v79 = [NSDateInterval alloc];
      v80 = +[NSDate distantPast];
      v81 = +[NSDate distantFuture];
      ams_activeiTunesAccount3 = [v79 initWithStartDate:v80 endDate:v81];

      v82 = [_TtC9appstored7Intents alloc];
      v16 = [(Intents *)v82 intentUsageWithDateInterval:ams_activeiTunesAccount3 logKey:ams_activeiTunesAccount2];

      v17 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
LABEL_94:

        v6[2](v6);
        goto LABEL_95;
      }

      v83 = [v16 count];
      *buf = 134217984;
      *v125 = v83;
      v63 = "Checked app intents returned: %lu launches";
      v64 = v17;
      v65 = 12;
    }

    else
    {
      if (handler != 903)
      {
        if (handler == 904)
        {
          v28 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Sending arcade account event", buf, 2u);
          }

          v29 = sub_100355E58();
          sub_10035D09C(v29);

          v9 = ASDLogHandleForCategory();
          if (!os_log_type_enabled(&v9->super, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_131;
          }

          *buf = 0;
          v27 = "Sent arcade account event";
          goto LABEL_87;
        }

        goto LABEL_67;
      }

      ams_activeiTunesAccount2 = objc_alloc_init(_TtC9appstored6LogKey);
      v60 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v125 = ams_activeiTunesAccount2;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "[%@] Migrating Katana supplemental account data for active account", buf, 0xCu);
      }

      v61 = +[ACAccountStore ams_sharedAccountStore];
      ams_activeiTunesAccount3 = [v61 ams_activeiTunesAccount];

      v16 = +[_TtC9appstored29KatanaSubscriptionCoordinator shared];
      v62 = [v16 migrateSubscriptionStateWithAccount:ams_activeiTunesAccount3 logKey:ams_activeiTunesAccount2];
      v17 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_94;
      }

      *buf = 138412546;
      *v125 = ams_activeiTunesAccount2;
      *&v125[8] = 1024;
      LODWORD(handlerCopy) = v62;
      v63 = "[%@] Migrated Katana subscription info with success: %{BOOL}d";
      v64 = v17;
      v65 = 18;
    }

    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, v63, buf, v65);
    goto LABEL_94;
  }

  if (handler > 299)
  {
    switch(handler)
    {
      case 601:
        v9 = sub_1002C0D84();
        sub_1002C13BC(v9, 256);
        goto LABEL_131;
      case 602:
        v92 = +[ACAccountStore ams_sharedAccountStore];
        ams_activeiTunesAccount4 = [v92 ams_activeiTunesAccount];

        v94 = +[BagService appstoredService];
        v113[0] = _NSConcreteStackBlock;
        v113[1] = 3221225472;
        v113[2] = sub_10030F0A8;
        v113[3] = &unk_10051D998;
        v114 = ams_activeiTunesAccount4;
        v115 = v6;
        v77 = ams_activeiTunesAccount4;
        [v94 recentBagWithCompletionHandler:v113];

        goto LABEL_111;
      case 603:
        v9 = sub_1002856D4();
        sub_10028E378(v9, &off_100549840);
        goto LABEL_131;
      case 604:
        v95 = sub_1002856D4();
        v9 = v95;
        v96 = &off_100547F08;
        goto LABEL_122;
      case 605:
        v95 = sub_1002856D4();
        v9 = v95;
        v96 = &off_100547F20;
LABEL_122:
        sub_100287648(v95, v96);
        goto LABEL_131;
      case 606:
        v9 = sub_1002856D4();
        sub_10028EC60(v9);
        goto LABEL_131;
      case 607:
      case 608:
      case 609:
        goto LABEL_67;
      case 610:
        v90 = sub_1002856D4();
        v9 = v90;
        v91 = 1;
        goto LABEL_119;
      case 611:
        v9 = sub_1002856D4();
        sub_100285DDC(v9, 1);
        goto LABEL_131;
      case 612:
        v9 = sub_1002856D4();
        sub_10028BD74(v9, 1u);
        goto LABEL_131;
      case 613:
        v87 = +[ACAccountStore ams_sharedAccountStore];
        ams_activeiTunesAccount2 = [v87 ams_activeiTunesAccount];

        v88 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v125 = ams_activeiTunesAccount2;
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Kicking retry restores for  %@", buf, 0xCu);
        }

        v33 = sub_1002856D4();
        sub_1002898BC(v33, ams_activeiTunesAccount2, 0);
        goto LABEL_135;
      case 614:
        v85 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Logging commonly usage apps", buf, 2u);
        }

        v9 = objc_alloc_init(AppUsageManager);
        v86 = sub_10029E758(v9);
        goto LABEL_131;
      case 615:
        v89 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Persisting commonly usage apps", buf, 2u);
        }

        v9 = objc_alloc_init(AppUsageManager);
        sub_10029E8DC(v9);
        goto LABEL_131;
      case 616:
        v102 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Install distributor if needed - with app", buf, 2u);
        }

        ams_activeiTunesAccount2 = objc_alloc_init(_TtC9appstored6LogKey);
        v98 = sub_1002856D4();
        v33 = v98;
        v100 = @"com.dreamgames.royalmatch";
        v99 = ams_activeiTunesAccount2;
        goto LABEL_128;
      case 617:
        v97 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "Install distributor if needed - generic", buf, 2u);
        }

        ams_activeiTunesAccount2 = objc_alloc_init(_TtC9appstored6LogKey);
        v98 = sub_1002856D4();
        v33 = v98;
        v99 = ams_activeiTunesAccount2;
        v100 = 0;
LABEL_128:
        sub_1002878E0(v98, v99, v100, 0);
        goto LABEL_135;
      case 618:
        v84 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Retrying restores requiring distributor", buf, 2u);
        }

        v9 = sub_1002856D4();
        sub_100289F24(v9);
        goto LABEL_131;
      case 619:
        v101 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "Bootstrap Restores", buf, 2u);
        }

        v90 = sub_1002856D4();
        v9 = v90;
        v91 = 0;
LABEL_119:
        sub_1002870A8(v90, @"Diagnostic", 0, v91);
        goto LABEL_131;
      default:
        if (handler == 300)
        {
          v41 = sub_1001DFF60();
          v9 = v41;
          v42 = 0;
        }

        else
        {
          if (handler != 301)
          {
            goto LABEL_67;
          }

          v41 = sub_1001DFF60();
          v9 = v41;
          v42 = 1;
        }

        [(AppUsageManager *)v41 checkStoreQueue:v42 withReason:4];
        break;
    }

    goto LABEL_131;
  }

  if (handler != 1)
  {
    if (handler != 2)
    {
      if (handler == 100)
      {
        ams_activeiTunesAccount2 = sub_10032C390();
        ams_activeiTunesAccount3 = sub_100227468();
        v19 = ASDLogHandleForCategory();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
LABEL_46:

          v6[2](v6);
LABEL_95:

LABEL_136:
          goto LABEL_137;
        }

        isConnected = [(LogKey *)ams_activeiTunesAccount3 isConnected];
        isExpensive = [(LogKey *)ams_activeiTunesAccount3 isExpensive];
        isConstrained = [(LogKey *)ams_activeiTunesAccount3 isConstrained];
        v23 = sub_10032C78C(ams_activeiTunesAccount2);
        *buf = 67109888;
        *v125 = isConnected;
        *&v125[4] = 1024;
        *&v125[6] = isExpensive;
        LOWORD(handlerCopy) = 1024;
        *(&handlerCopy + 2) = isConstrained;
        HIWORD(handlerCopy) = 1024;
        v127 = v23;
        v24 = "NETWORK: isConnected = %{BOOL}d, isExpensive = %{BOOL}d, isConstrained = %{BOOL}d, isRoaming = %{BOOL}d";
        v25 = v19;
        v26 = 26;
LABEL_45:
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
        goto LABEL_46;
      }

      goto LABEL_67;
    }

    v43 = sub_1002EB36C();
    v44 = sub_1002B0154();
    ams_activeiTunesAccount2 = sub_1002B0280(v44);

    if (ams_activeiTunesAccount2)
    {
      v45 = objc_alloc_init(XDCPingMessage);
      v46 = +[NSUUID UUID];
      uUIDString = [v46 UUIDString];
      sub_100268B54(v45, uUIDString);

      v48 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        if (v45)
        {
          uuid = v45->_uuid;
        }

        else
        {
          uuid = 0;
        }

        v50 = uuid;
        *buf = 138543362;
        *v125 = v50;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}@ >> SENDING PING", buf, 0xCu);
      }

      v51 = sub_1003420C0([XDCMessage alloc], v45, 1);
      v52 = sub_1002EB36C();
      v116[0] = _NSConcreteStackBlock;
      v116[1] = 3221225472;
      v116[2] = sub_10030EED4;
      v116[3] = &unk_100522398;
      v117 = v45;
      v118 = v6;
      v53 = v45;
      if (v52)
      {
        sub_1002EB834(v52, v51, ams_activeiTunesAccount2, 1, v116);
      }

      goto LABEL_136;
    }

    v33 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "No active paired device is available", buf, 2u);
    }

LABEL_135:

    v6[2](v6);
    goto LABEL_136;
  }

  v54 = +[BagService appstoredService];
  v119[0] = _NSConcreteStackBlock;
  v119[1] = 3221225472;
  v119[2] = sub_10030EEC4;
  v119[3] = &unk_100522C50;
  v120 = v6;
  [v54 upToDateBagWithCompletionHandler:v119];

LABEL_137:
}

- (void)sendCommandWithDetailedReplyHandler:(int64_t)handler handler:(id)a4
{
  v71 = a4;
  if ((os_variant_has_internal_content() & 1) == 0)
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client not supported", &buf, 2u);
    }
  }

  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = handler;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Recieved detailed command: %ld", &buf, 0xCu);
  }

  if (handler <= 804)
  {
    if (handler > 612)
    {
      if (handler > 615)
      {
        if (handler != 616)
        {
          if (handler != 617)
          {
            goto LABEL_89;
          }

          v29 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Testing sbsync if subscribed", &buf, 2u);
          }

          v30 = +[ACAccountStore ams_sharedAccountStore];
          ams_activeiTunesAccount = [v30 ams_activeiTunesAccount];

          v32 = sub_100355E58();
          v76[0] = _NSConcreteStackBlock;
          v76[1] = 3221225472;
          v76[2] = sub_100310A18;
          v76[3] = &unk_10051D1B0;
          v77 = v71;
          sub_100359E70(v32, ams_activeiTunesAccount, v76);

          goto LABEL_90;
        }

        v62 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Testing Arcade times", &buf, 2u);
        }

        sub_1001E74A0();
        v19 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Testing Arcade times complete", &buf, 2u);
        }
      }

      else
      {
        if (handler == 613)
        {
          v45 = sub_1001E5E74();
          v46 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v45;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
          }

          v47 = sub_1001E71EC(v45);
          (*(v71 + 2))(v71, v47);

          goto LABEL_90;
        }

        if (handler != 615)
        {
          goto LABEL_89;
        }

        v16 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Terminating Arcade apps", &buf, 2u);
        }

        v17 = sub_100355E58();
        v18 = v17;
        if (v17)
        {
          sub_10035D794(v17);
        }

        v19 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Terminating Arcade apps request complete", &buf, 2u);
        }
      }

      (*(v71 + 2))(v71, &__NSDictionary0__struct);
      goto LABEL_90;
    }

    if (handler <= 411)
    {
      if (handler == 100)
      {
        v82[0] = _NSConcreteStackBlock;
        v82[1] = 3221225472;
        v82[2] = sub_100310968;
        v82[3] = &unk_100522CC8;
        v83 = v71;
        [_TtC9appstored8QALogger serializeLedgerWithCompletionHandler:v82];

        goto LABEL_90;
      }

      if (handler == 411)
      {
        v105 = @"installs";
        v11 = sub_1002C0D84();
        v12 = sub_1002C1A74(v11);
        v106 = v12;
        v13 = [NSDictionary dictionaryWithObjects:&v106 forKeys:&v105 count:1];
        (*(v71 + 2))(v71, v13);

        goto LABEL_90;
      }

      goto LABEL_89;
    }

    if (handler != 412)
    {
      if (handler == 600)
      {
        v98[0] = @"restore";
        v24 = sub_1002856D4();
        v25 = sub_100289324(v24);
        v98[1] = @"installs";
        v99[0] = v25;
        v26 = sub_1002C0D84();
        v27 = sub_1002C1A74(v26);
        v99[1] = v27;
        v28 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:2];
        (*(v71 + 2))(v71, v28);

        goto LABEL_90;
      }

      goto LABEL_89;
    }

    v73 = objc_alloc_init(NSMutableDictionary);
    v70 = sub_100227468();
    v103[0] = @"isConnected";
    v48 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v70 isConnected]);
    v104[0] = v48;
    v103[1] = @"isConstrained";
    v49 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v70 isConstrained]);
    v104[1] = v49;
    v103[2] = @"isExpensive";
    v50 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v70 isExpensive]);
    v104[2] = v50;
    v103[3] = @"interfaceType";
    v51 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v70 interfaceType]);
    v104[3] = v51;
    v52 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:4];
    [v73 setObject:v52 forKeyedSubscript:@"default"];

    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    v78 = 0u;
    v53 = [&off_100549518 countByEnumeratingWithState:&v78 objects:v102 count:16];
    if (v53)
    {
      v72 = *v79;
      do
      {
        for (i = 0; i != v53; i = i + 1)
        {
          if (*v79 != v72)
          {
            objc_enumerationMutation(&off_100549518);
          }

          v55 = *(*(&v78 + 1) + 8 * i);
          v56 = sub_100227688(NetworkMonitor, v55);
          v100[0] = @"isConnected";
          v57 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v56 isConnected]);
          v101[0] = v57;
          v100[1] = @"isConstrained";
          v58 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v56 isConstrained]);
          v101[1] = v58;
          v100[2] = @"isExpensive";
          v59 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v56 isExpensive]);
          v101[2] = v59;
          v100[3] = @"interfaceType";
          v60 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v56 interfaceType]);
          v101[3] = v60;
          v61 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:4];
          [v73 setObject:v61 forKeyedSubscript:v55];
        }

        v53 = [&off_100549518 countByEnumeratingWithState:&v78 objects:v102 count:16];
      }

      while (v53);
    }

    (*(v71 + 2))(v71, v73);
  }

  else if (handler <= 820)
  {
    if (handler <= 809)
    {
      if (handler == 805)
      {
        v38 = objc_alloc_init(AppPurgeCoordinator);
        sub_1001ECFD8(v38);
        (*(v71 + 2))(v71, &__NSDictionary0__struct);

        goto LABEL_90;
      }

      if (handler == 806)
      {
        v14 = objc_alloc_init(AppPurgeCoordinator);
        v15 = sub_1001E7C04(v14, 1);
        (*(v71 + 2))(v71, v15);

        goto LABEL_90;
      }

      goto LABEL_89;
    }

    if (handler == 810)
    {
      v39 = objc_alloc_init(AppPurgeCoordinator);
      v40 = +[NSMutableDictionary dictionary];
      sub_1001E9DE8(v39, v40, 1);
      (*(v71 + 2))(v71, v40);

      goto LABEL_90;
    }

    if (handler != 820)
    {
      goto LABEL_89;
    }

    v20 = objc_alloc_init(VerifyReceiptsTask);
    v21 = v20;
    if (v20)
    {
      v20->_refreshStoreOriginated = 1;
    }

    v22 = sub_100284B90();
    v23 = v22;
    if (v22)
    {
      [*(v22 + 8) addOperation:v21];
    }

    (*(v71 + 2))(v71, &__NSDictionary0__struct);
  }

  else if (handler <= 869)
  {
    if (handler == 821)
    {
      v67 = sub_10039EFBC([HandleInvalidReceiptTask alloc], @"com.shazam.Shazam");
      v68 = sub_100284B90();
      v97 = v67;
      v69 = [NSArray arrayWithObjects:&v97 count:1];
      if (v68)
      {
        [v68[1] addOperations:v69 waitUntilFinished:1];
      }

      (*(v71 + 2))(v71, &__NSDictionary0__struct);
    }

    else
    {
      if (handler != 860)
      {
        goto LABEL_89;
      }

      v33 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Clearing optimal download windows from automatic updates", &buf, 2u);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v93 = 0x3032000000;
      v94 = sub_10030F77C;
      v95 = sub_10030F78C;
      v96 = objc_opt_new();
      v34 = sub_1003C27BC();
      v75[0] = _NSConcreteStackBlock;
      v75[1] = 3221225472;
      v75[2] = sub_100310AA0;
      v75[3] = &unk_100522CF0;
      v75[4] = &buf;
      [v34 modifyUsingTransaction:v75];

      if ([*(*(&buf + 1) + 40) count])
      {
        v35 = sub_1002C0D84();
        sub_1002C13BC(v35, 128);
      }

      v36 = *(*(&buf + 1) + 40);
      v90 = @"optimalDownloadWindowsCleared";
      v91 = v36;
      v37 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      (*(v71 + 2))(v71, v37);

      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    switch(handler)
    {
      case 870:
        v63 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Expiring app asset download URLs", &buf, 2u);
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v93 = 0x3032000000;
        v94 = sub_10030F77C;
        v95 = sub_10030F78C;
        v96 = &__NSArray0__struct;
        v64 = sub_1003C27BC();
        v74[0] = _NSConcreteStackBlock;
        v74[1] = 3221225472;
        v74[2] = sub_100310D6C;
        v74[3] = &unk_100522CF0;
        v74[4] = &buf;
        [v64 modifyUsingTransaction:v74];

        v65 = *(*(&buf + 1) + 40);
        v88 = @"assetDownloadsExpired";
        v89 = v65;
        v66 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
        (*(v71 + 2))(v71, v66);

        _Block_object_dispose(&buf, 8);
        break;
      case 900:
        v41 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Running RemoteAppLibrary ensureZoneExists", &buf, 2u);
        }

        v42 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Cannot run this command", &buf, 2u);
        }

        v86 = @"Success";
        v43 = [NSNumber numberWithBool:0];
        v87 = v43;
        v44 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        (*(v71 + 2))(v71, v44);

        break;
      case 901:
        v7 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Running RemoteAppLibrary ensureAllAppsAreSynced", &buf, 2u);
        }

        v8 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cannot run this command", &buf, 2u);
        }

        v84 = @"Success";
        v9 = [NSNumber numberWithBool:0];
        v85 = v9;
        v10 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        (*(v71 + 2))(v71, v10);

        break;
      default:
LABEL_89:
        (*(v71 + 2))(v71, &__NSDictionary0__struct);
        break;
    }
  }

LABEL_90:
}

- (void)_handlePingMessage:(id)message fromDevice:(id)device
{
  messageCopy = message;
  deviceCopy = device;
  v8 = [XDCPingMessage alloc];
  if (messageCopy)
  {
    Property = objc_getProperty(messageCopy, v7, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v11 = [(XDCPingMessage *)v8 initWithData:v10];

  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (v11)
    {
      uuid = v11->_uuid;
    }

    else
    {
      uuid = 0;
    }

    v14 = uuid;
    v21 = 138543618;
    v22 = v14;
    v23 = 2114;
    v24 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ >> RECEIVED PING FROM %{public}@", &v21, 0x16u);
  }

  v15 = objc_alloc_init(XDCPingMessage);
  if (v11)
  {
    v16 = v11->_uuid;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  sub_100268B54(v15, v17);

  v18 = sub_100342264(messageCopy, v15, 1);
  v19 = sub_1002EB36C();
  v20 = v19;
  if (v19)
  {
    sub_1002EB834(v19, v18, deviceCopy, 0, 0);
  }
}

@end
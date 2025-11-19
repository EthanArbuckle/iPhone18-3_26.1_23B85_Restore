void sub_1000010A4(id a1)
{
  qword_100012988 = objc_alloc_init(IOUIAngelServer);

  _objc_release_x1();
}

void sub_1000011B8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDomain:@"com.apple.IOUIAngel"];
  [v3 setService:@"com.apple.IOUIAngel.LDCM-service"];
  [v3 setDelegate:*(a1 + 32)];
}

void sub_100001348(id a1)
{
  v4 = [BSMutableServiceInterface interfaceWithIdentifier:@"com.apple.IOUIAngel.LDCM-service"];
  v1 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___IOUIAngelServiceServerInterface];
  [v4 setServer:v1];

  [v4 setClientMessagingExpectation:0];
  v2 = [v4 copy];
  v3 = qword_100012998;
  qword_100012998 = v2;
}

void sub_1000015D4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 32))
  {
    [v5 setUserInfo:?];
  }

  v3 = +[IOUIAngelServer serviceInterface];
  [v5 setInterface:v3];

  [v5 setInterfaceTarget:*(a1 + 40)];
  v4 = +[BSServiceQuality userInitiated];
  [v5 setServiceQuality:v4];

  [v5 setInvalidationHandler:&stru_10000C3F0];
}

void sub_1000018D8(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100001A70;
  v15 = sub_100001A80;
  v16 = 0;
  if ((*(*(a1 + 32) + 20) & 1) == 0)
  {
    v2 = objc_opt_new();
    v3 = [v2 uiSceneSessionRole];
    v4 = [UISceneSessionActivationRequest requestWithRole:v3];

    v5 = +[UIApplication sharedApplication];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001A88;
    v8[3] = &unk_10000C440;
    v6 = v4;
    v9 = v6;
    v10 = &v11;
    [v5 activateSceneSessionForRequest:v6 errorHandler:v8];

    *(*(a1 + 32) + 20) = 1;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v12[5]);
  }

  _Block_object_dispose(&v11, 8);
}

void sub_100001A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001A70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001A88(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100005474(a1, v4);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Activated scene! (request: %@)", &v6, 0xCu);
  }
}

void sub_100001CC8(uint64_t a1)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100001A70;
  v30 = sub_100001A80;
  v31 = 0;
  if (*(*(a1 + 32) + 20) == 1)
  {
    v19 = a1;
    v1 = +[UIApplication sharedApplication];
    v2 = [v1 connectedScenes];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v2;
    v3 = [obj countByEnumeratingWithState:&v22 objects:v36 count:16];
    if (v3)
    {
      v5 = *v23;
      *&v4 = 138412546;
      v18 = v4;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v23 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v22 + 1) + 8 * i);
          v8 = [v7 session];
          v9 = [v8 role];
          v10 = objc_opt_new();
          v11 = [v10 uiSceneSessionRole];
          v12 = [v9 isEqual:v11];

          if (v12)
          {
            v13 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v14 = [v7 session];
              *buf = v18;
              v33 = v7;
              v34 = 2112;
              v35 = v14;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Destroying scene session... (scene: %@, scene.session: %@)", buf, 0x16u);
            }

            v15 = +[UIApplication sharedApplication];
            v16 = [v7 session];
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_10000202C;
            v21[3] = &unk_10000C490;
            v21[4] = v7;
            v21[5] = &v26;
            [v15 requestSceneSessionDestruction:v16 options:0 errorHandler:v21];

            *(*(v19 + 32) + 20) = 0;
          }
        }

        v3 = [obj countByEnumeratingWithState:&v22 objects:v36 count:16];
      }

      while (v3);
    }

    a1 = v19;
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v27[5]);
  }

  _Block_object_dispose(&v26, 8);
}

void sub_10000202C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100005504(v4);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) session];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Destroyed scene session! (scene.session: %@)", &v6, 0xCu);
  }
}

void sub_1000028A8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100002BA8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 handleButtonAction:*(a1 + 32)];
  }
}

id sub_100002CA0(void *a1, void *a2)
{
  v3 = qword_1000129B0;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    sub_100005824();
  }

  v6 = +[UITraitCollection currentTraitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = [qword_1000129A8 indexOfObject:v7];
  v9 = [qword_1000129A8 indexOfObject:v4];

  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = [qword_1000129A8 objectAtIndexedSubscript:v10];
  v12 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v11];
  v13 = [UIFont preferredFontForTextStyle:v5 compatibleWithTraitCollection:v12];

  return v13;
}

void sub_100002DB8(id a1)
{
  v3[0] = UIContentSizeCategoryExtraSmall;
  v3[1] = UIContentSizeCategorySmall;
  v3[2] = UIContentSizeCategoryMedium;
  v3[3] = UIContentSizeCategoryLarge;
  v3[4] = UIContentSizeCategoryExtraLarge;
  v3[5] = UIContentSizeCategoryExtraExtraLarge;
  v3[6] = UIContentSizeCategoryExtraExtraExtraLarge;
  v3[7] = UIContentSizeCategoryAccessibilityMedium;
  v3[8] = UIContentSizeCategoryAccessibilityLarge;
  v3[9] = UIContentSizeCategoryAccessibilityExtraLarge;
  v3[10] = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v3[11] = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v3[12] = UIContentSizeCategoryUnspecified;
  v1 = [NSArray arrayWithObjects:v3 count:13];
  v2 = qword_1000129A8;
  qword_1000129A8 = v1;
}

void sub_1000038FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100005838(v3);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else if (v3)
  {
LABEL_3:
    [v3 setDelegate:*(a1 + 32)];
    [v3 setModalPresentationStyle:0];
    [v3 setModalTransitionStyle:2];
    [*(a1 + 32) setEmergencyCallHostVC:v3];
    v4 = *(a1 + 32);
    v5 = [v4 emergencyCallHostVC];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100003A24;
    v6[3] = &unk_10000C500;
    v6[4] = *(a1 + 32);
    [v4 presentViewController:v5 animated:1 completion:v6];

    goto LABEL_7;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000058B8();
  }

LABEL_7:
}

void sub_100003A24(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Presented emergency call view controller!", v5, 2u);
  }

  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 emergencyDialerWasPresented:*(a1 + 32)];
  }
}

void sub_100003B88(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Dismissed emergency call view controller!", v5, 2u);
  }

  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 emergencyDialerWasDismissed:*(a1 + 32)];
  }
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = +[IOUIAngelServer sharedServer];
  [v7 activate];

  objc_autoreleasePoolPop(v4);
  v8 = UIApplicationMain(a1, a2, 0, v6);

  return v8;
}

void sub_1000053D8(uint64_t a1, uint64_t a2)
{
  v2 = 136315650;
  v3 = "[IOUIAngelServer listener:didReceiveConnection:withContext:]";
  v4 = 2112;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Rejecting connection: %@ (process does not have entitlement: %@)", &v2, 0x20u);
}

void sub_100005474(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = 138412546;
  v4 = v2;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error activating scene! (request: %@, error: %@)", &v3, 0x16u);
}

void sub_100005504(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error destroying scene session: %@", &v1, 0xCu);
}

void sub_100005838(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "requestEmergencyCallControllerWithCompletion: (emergencyCallController: %@)", &v1, 0xCu);
}
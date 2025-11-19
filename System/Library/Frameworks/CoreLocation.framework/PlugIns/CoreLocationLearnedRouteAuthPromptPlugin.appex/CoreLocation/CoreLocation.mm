void sub_1000013B8(uint64_t a1)
{
  LODWORD(v6) = 0;
  v2 = [[RTLearnedRouteFetchOptions alloc] initWithBundlePath:*(a1 + 32) routeOriginLocation:0 routeDestinationLocation:0 routeDate:0 routeFetchType:6 fetchAllRouteLocations:1 routeOriginType:v6];
  if (qword_1000118A8 != -1)
  {
    sub_100005DD0();
  }

  v3 = qword_1000118B0;
  if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Fetching learned route…", buf, 2u);
  }

  v4 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000014E4;
  v7[3] = &unk_10000C340;
  v5 = *(a1 + 56);
  v7[4] = *(a1 + 48);
  v8 = v5;
  [v4 fetchLearnedRoutesWithOptions:v2 handler:v7];
}

void sub_1000014E4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    if (v6)
    {
      if ([v6 count] != 1)
      {
        v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Fetched %lu learned routes, but RTLearnedRouteFetchType_Any must always return exactly 1", [v6 count]);
        goto LABEL_3;
      }

      v13 = [v6 firstObject];
      if (qword_1000118A8 != -1)
      {
        sub_100005DD0();
      }

      v14 = qword_1000118B0;
      if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Fetched learned route.", buf, 2u);
      }

      v15 = [v13 travelModeRoutes];
      if (v15)
      {
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v16 = [v13 travelModeRoutes];
        v17 = [v16 countByEnumeratingWithState:&v75 objects:v94 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v76;
LABEL_13:
          v20 = 0;
          while (1)
          {
            if (*v76 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v75 + 1) + 8 * v20);
            if ([v21 routeTravelMode] == 2)
            {
              break;
            }

            if (v18 == ++v20)
            {
              v18 = [v16 countByEnumeratingWithState:&v75 objects:v94 count:16];
              if (v18)
              {
                goto LABEL_13;
              }

              goto LABEL_19;
            }
          }

          v23 = v21;

          if (!v23)
          {
            goto LABEL_52;
          }

          v24 = [v23 learnedRouteLocations];
          if ([v24 count])
          {
            if (qword_1000118A8 != -1)
            {
              sub_100005DE4();
            }

            v25 = qword_1000118B0;
            if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Fetched learned route travel mode route… route?", buf, 2u);
            }

            v68 = v13;
            if (qword_1000118A8 != -1)
            {
              sub_100005DE4();
            }

            v66 = v15;
            v67 = a1;
            v69 = v6;
            v26 = qword_1000118B0;
            if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Converting that thing to an array of lat/longs.", buf, 2u);
            }

            v70 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v24 count]);
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            v65 = v24;
            v27 = v24;
            v28 = [v27 countByEnumeratingWithState:&v71 objects:v93 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v72;
              do
              {
                for (i = 0; i != v29; i = i + 1)
                {
                  if (*v72 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v71 + 1) + 8 * i);
                  [v32 latitude];
                  v34 = v33;
                  [v32 longitude];
                  v36 = v35;
                  v91[0] = @"latitude";
                  v37 = [NSNumber numberWithDouble:v34];
                  v91[1] = @"longitude";
                  v92[0] = v37;
                  v38 = [NSNumber numberWithDouble:v36];
                  v92[1] = v38;
                  v39 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:2];
                  [v70 addObject:v39];
                }

                v29 = [v27 countByEnumeratingWithState:&v71 objects:v93 count:16];
              }

              while (v29);
            }

            v64 = [v70 copy];
            v40 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
            v13 = v68;
            v41 = [v68 learnedRouteIdentifier];
            v63 = v40;
            v42 = [v41 compare:v40];

            if (qword_1000118A8 != -1)
            {
              sub_100005DE4();
            }

            v43 = qword_1000118B0;
            if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Constructing payload.", buf, 2u);
            }

            v44 = v42 == 0;
            v89[0] = @"originCoordinate";
            v87[0] = @"latitude";
            v62 = [v27 firstObject];
            [v62 latitude];
            v61 = [NSNumber numberWithDouble:?];
            v87[1] = @"longitude";
            v88[0] = v61;
            v60 = [v27 firstObject];
            [v60 longitude];
            v59 = [NSNumber numberWithDouble:?];
            v88[1] = v59;
            v58 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:2];
            v90[0] = v58;
            v89[1] = @"destinationCoordinate";
            v85[0] = @"latitude";
            v57 = [v27 lastObject];
            [v57 latitude];
            v45 = [NSNumber numberWithDouble:?];
            v85[1] = @"longitude";
            v86[0] = v45;
            v46 = [v27 lastObject];
            [v46 longitude];
            v47 = [NSNumber numberWithDouble:?];
            v86[1] = v47;
            v48 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:2];
            v90[1] = v48;
            v90[2] = v64;
            v89[2] = @"route";
            v89[3] = @"isMockRoute";
            v49 = [NSNumber numberWithBool:v44];
            v90[3] = v49;
            v50 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:4];

            if (qword_1000118A8 != -1)
            {
              sub_100005DE4();
            }

            v8 = 0;
            v6 = v69;
            v15 = v66;
            v51 = qword_1000118B0;
            if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
            {
              *buf = 68289283;
              v80 = 0;
              v81 = 2082;
              v82 = "";
              v83 = 2117;
              v84 = v50;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Sending payload:, payload:%{sensitive, location:escape_only}@}", buf, 0x1Cu);
            }

            if (qword_1000118A8 != -1)
            {
              sub_100005DE4();
            }

            v24 = v65;
            v52 = qword_1000118B0;
            if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "Success!", buf, 2u);
            }

            (*(*(v67 + 40) + 16))();

            v53 = v70;
          }

          else
          {
            v56 = *(a1 + 40);
            v53 = [*(a1 + 32) errorWithReason:{@"Docs state learnedRouteLocations are only null when mode of transportation is non-driving, but got null"}];
            (*(v56 + 16))(v56, 0, v53);
          }
        }

        else
        {
LABEL_19:

LABEL_52:
          v23 = [NSString stringWithFormat:@"RTLearnedRouteFetchType_Any should always return a driving route, but got nil"];
          v54 = *(a1 + 40);
          v24 = [*(a1 + 32) errorWithReason:v23];
          (*(v54 + 16))(v54, 0, v24);
        }
      }

      else
      {
        v55 = *(a1 + 40);
        v23 = [*(a1 + 32) errorWithReason:{@"travelModeRoutes is annotated as nonnull, but ended up null anyways"}];
        (*(v55 + 16))(v55, 0, v23);
      }
    }

    else
    {
      v22 = *(a1 + 40);
      v13 = [*(a1 + 32) errorWithReason:{@"Fetching learned route returned no error, but the data was nil"}];
      (*(v22 + 16))(v22, 0, v13);
    }

    goto LABEL_59;
  }

  v9 = [v7 localizedDescription];
  v10 = [NSString stringWithFormat:@"Failed to fetch typical learned route: %@", v9];

LABEL_3:
  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) errorWithReason:v10];
  (*(v11 + 16))(v11, 0, v12);

LABEL_59:
}

void sub_100001EBC(id a1)
{
  qword_1000118B0 = os_log_create("com.apple.corelocation.CoreLocationIntelligenceAuthPromptPlugins", "Intelligence");

  _objc_release_x1();
}

void sub_100002F14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) extensionInputItems];
    v8 = [v7 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [*(a1 + 32) extensionInputItems];
      v10 = [v9 firstObject];

      if (v10)
      {
        [v10 setUserInfo:v5];
      }
    }

    else
    {

      v10 = 0;
    }
  }

  else
  {
    if (qword_1000118A8 != -1)
    {
      sub_100005E0C();
    }

    v11 = qword_1000118B0;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v6 localizedDescription];
      v13 = v12;
      v14 = @"no error provided";
      if (v12)
      {
        v14 = v12;
      }

      *buf = 138412290;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to fetch learned route payload: %@", buf, 0xCu);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003164;
  block[3] = &unk_10000C3D0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100003164(uint64_t a1)
{
  [*(a1 + 32) configureProperties];
  v2 = *(a1 + 32);

  return [v2 configureMapView];
}

void sub_1000036BC(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_10000520C(id a1)
{
  qword_1000118B0 = os_log_create("com.apple.corelocation.CoreLocationIntelligenceAuthPromptPlugins", "Intelligence");

  _objc_release_x1();
}

void sub_100005268(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000052C4(exception, a1);
}

std::logic_error *sub_1000052C4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_1000052F8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100005340();
}

void sub_100005340()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}
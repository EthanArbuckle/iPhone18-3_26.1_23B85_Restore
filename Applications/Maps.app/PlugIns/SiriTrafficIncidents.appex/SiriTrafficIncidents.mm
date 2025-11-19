void sub_100001018(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000010DC;
  v6[3] = &unk_1000081F8;
  v7 = *(a1 + 32);
  v8 = v3;
  v4 = *(a1 + 48);
  v9 = *(a1 + 40);
  v10 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_1000010DC(uint64_t a1)
{
  v2 = [*(a1 + 32) incidentType];
  v3 = +[TrafficIncidentIntentSupport incidentTypeForINTrafficIncidentType:](TrafficIncidentIntentSupport, "incidentTypeForINTrafficIncidentType:", [v2 type]);

  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) isClear];
    if ([v4 BOOLValue])
    {

LABEL_5:
      v7 = [*(a1 + 32) incidentType];
      if (!v7)
      {
LABEL_8:
        v10 = [[INSupportedTrafficIncidentType alloc] initWithType:0 localizedDisplayString:0];
        v11 = [INReportIncidentIncidentTypeResolutionResult successWithResolvedSupportedTrafficIncidentType:v10];
LABEL_15:
        v14 = v11;

        goto LABEL_19;
      }

      v8 = v7;
      if (v3)
      {
        v9 = [*(a1 + 40) isIncidentTypeSupported:v3];

        if (v9)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

LABEL_13:
      v10 = [*(a1 + 48) _supportedIncidentTypesForIncidentLayout:*(a1 + 40)];
      v11 = [INReportIncidentIncidentTypeResolutionResult resolutionResultUnsupportedWithReason:2 alternativeItems:v10];
      goto LABEL_15;
    }

    v5 = [*(a1 + 32) additionalDetails];
    v6 = [v5 isEqual:@"update"];

    if (v6)
    {
      goto LABEL_5;
    }

    v12 = [*(a1 + 32) incidentType];

    if (!v12)
    {
      v10 = [*(a1 + 48) _supportedIncidentTypesForIncidentLayout:*(a1 + 40)];
      v11 = [INReportIncidentIncidentTypeResolutionResult disambiguationWithSupportedTrafficIncidentTypesToDisambiguate:v10];
      goto LABEL_15;
    }

    if ([*(a1 + 40) isIncidentTypeSupported:v3])
    {
      v13 = [*(a1 + 32) incidentType];
      v14 = [INReportIncidentIncidentTypeResolutionResult successWithResolvedSupportedTrafficIncidentType:v13];

      goto LABEL_19;
    }

    if (![*(a1 + 40) isIncidentTypeSupported:v3] || !v3)
    {
      goto LABEL_13;
    }
  }

  v14 = [INReportIncidentIncidentTypeResolutionResult unsupportedForReason:1];
LABEL_19:
  (*(*(a1 + 56) + 16))();
}

id MAPSGetIncidentsReportingLog()
{
  if (qword_10000CED0 != -1)
  {
    sub_100002C88();
  }

  v1 = qword_10000CEC8;

  return v1;
}

void sub_100001504(id a1)
{
  qword_10000CEC8 = os_log_create("com.apple.Maps", "IncidentsReporting");

  _objc_release_x1();
}

void sub_100001704(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = [(TrafficIncidentLayout *)v6 feedbackResult];
  v10 = [v9 layoutConfigResult];
  v11 = [v10 forms];

  v12 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v30 = v8;
    v31 = v7;
    v32 = v6;
    v14 = 0;
    v15 = *v35;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        v18 = [v17 formType];
        v19 = [*(a1 + 32) feedbackRequestParameters];
        v20 = [v19 layoutConfigParameters];
        v21 = [v20 formType];

        if (v18 == v21)
        {
          v22 = v17;

          v14 = v22;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v13);

    v7 = v31;
    v6 = v32;
    v8 = v30;
    if (v14)
    {
      v23 = [[TrafficIncidentLayout alloc] initWithLayoutFormConfig:v14 location:*(a1 + 40)];
      v24 = *(a1 + 56);
      if (v24 == 7)
      {
        v25 = +[TrafficIncidentLayoutStorage sharedInstance];
        [v25 saveIncidentLayout:v23];
      }

      else
      {
        if (v24 != 9)
        {
LABEL_21:
          v28 = MAPSGetIncidentsReportingLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v39 = v23;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "LayoutItem %@", buf, 0xCu);
          }

          v29 = *(a1 + 48);
          if (v29)
          {
            (*(v29 + 16))(v29, v23);
          }

          goto LABEL_26;
        }

        v25 = +[TrafficIncidentLayoutStorage sharedInstance];
        [v25 saveIncidentVotingLayout:v23];
      }

      goto LABEL_21;
    }
  }

  else
  {
  }

  v26 = MAPSGetIncidentsReportingLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v39 = v6;
    v40 = 2112;
    v41 = v8;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Error: Layout config not included in response: %@ error: %@", buf, 0x16u);
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    (*(v27 + 16))(v27, 0);
  }

LABEL_26:
}

void sub_100001AE0(id a1)
{
  qword_10000CEE0 = objc_alloc_init(TrafficIncidentLayoutStorage);

  _objc_release_x1();
}

uint64_t sub_1000022A0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}
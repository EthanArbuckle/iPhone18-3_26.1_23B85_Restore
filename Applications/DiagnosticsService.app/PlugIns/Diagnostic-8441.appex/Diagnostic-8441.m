void sub_100000D84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 description];
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Diagnostic-8441 CoreODI session getAssesment failed with error %@.", buf, 0xCu);
    }

    v9 = &off_100004128;
LABEL_5:
    v10 = 1;
    goto LABEL_10;
  }

  v11 = DiagnosticLogHandleForCategory();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Diagnostic-8441 CoreODI session returns no assesment.", buf, 2u);
    }

    v9 = &off_100004140;
    goto LABEL_5;
  }

  if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Diagnostic-8441 CoreODI session getAssesment successful.", buf, 2u);
  }

  v16 = @"ArmandValidationObject";
  v17 = v5;
  v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v14 = [*(a1 + 32) result];
  [v14 setData:v13];

  v10 = 0;
  v9 = &off_100004158;
LABEL_10:
  v15 = [*(a1 + 32) result];
  [v15 setStatusCode:v9];

  [*(a1 + 40) provideFeedbackOnPayloadOutcome:v10];
  [*(a1 + 32) setFinished:1];
}

void sub_100000FF0(uint64_t a1, NSObject *a2)
{
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cancelling [%@]", &v4, 0xCu);
}
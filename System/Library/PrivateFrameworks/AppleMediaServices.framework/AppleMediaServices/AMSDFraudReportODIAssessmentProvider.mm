@interface AMSDFraudReportODIAssessmentProvider
- (AMSDFraudReportODIAssessmentProvider)initWithError:(id *)error;
- (void)provideFeedbackWithOutcome:(unint64_t)outcome;
@end

@implementation AMSDFraudReportODIAssessmentProvider

- (AMSDFraudReportODIAssessmentProvider)initWithError:(id *)error
{
  v17.receiver = self;
  v17.super_class = AMSDFraudReportODIAssessmentProvider;
  v4 = [(AMSDFraudReportODIAssessmentProvider *)&v17 init];
  if (!v4)
  {
    goto LABEL_8;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v5 = qword_1002E3200;
  v26 = qword_1002E3200;
  if (!qword_1002E3200)
  {
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1000597A0;
    v21 = &unk_1002B0728;
    v22 = &v23;
    sub_1000597A0(&v18);
    v5 = v24[3];
  }

  v6 = v5;
  _Block_object_dispose(&v23, 8);
  v7 = [v5 alloc];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v8 = qword_1002E3210;
  v26 = qword_1002E3210;
  if (!qword_1002E3210)
  {
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10005996C;
    v21 = &unk_1002B0728;
    v22 = &v23;
    v9 = sub_1000597F8();
    v10 = dlsym(v9, "ODIServiceProviderIdTDMTrustedInference");
    *(v22[1] + 24) = v10;
    qword_1002E3210 = *(v22[1] + 24);
    v8 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v8)
  {
    v16 = sub_10021B19C();
    _Block_object_dispose(&v23, 8);
    _Unwind_Resume(v16);
  }

  v11 = *v8;
  v12 = [v7 initWithServiceIdentifier:v11 forDSIDType:2];
  session = v4->_session;
  v4->_session = v12;

  if (!v4->_session)
  {
    if (error)
    {
      AMSError();
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
LABEL_8:
    v14 = v4;
  }

  return v14;
}

- (void)provideFeedbackWithOutcome:(unint64_t)outcome
{
  if (outcome >= 3)
  {
    v6 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Unhandled outcome type" userInfo:0, v3, v4];
    objc_exception_throw(v6);
  }

  session = self->_session;

  [(ODISession *)session provideFeedbackOnPayloadOutcome:?];
}

@end
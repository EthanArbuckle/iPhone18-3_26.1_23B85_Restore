@interface MFShareAsEMLTriageInteraction
+ (id)log;
- (id)title;
- (void)_dispatchInteractionWithCompletion:(id)a3;
@end

@implementation MFShareAsEMLTriageInteraction

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100216B88;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD668 != -1)
  {
    dispatch_once(&qword_1006DD668, block);
  }

  v2 = qword_1006DD660;

  return v2;
}

- (void)_dispatchInteractionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[MFShareAsEMLTriageInteraction log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Performing share as eml interaction", buf, 2u);
  }

  v6 = [(MFTriageInteraction *)self messageListItemSelection];
  v7 = [v6 messageListItems];
  v8 = [v7 firstObject];
  v9 = [v8 displayMessage];
  v10 = [v9 result];

  v11 = [EMContentRequestOptions optionsWithRequestedRepresentationType:EMContentRepresentationTypeRaw networkUsage:2];
  objc_initWeak(buf, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100216E2C;
  v14[3] = &unk_100655AA8;
  objc_copyWeak(&v16, buf);
  v12 = v4;
  v15 = v12;
  v13 = [v10 requestRepresentationWithOptions:v11 completionHandler:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (id)title
{
  [(MFShareAsEMLTriageInteraction *)self forTriageTeam];
  v2 = _EFLocalizedString();

  return v2;
}

@end
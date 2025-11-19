@interface CLEmergencyEnablementAssertion
+ (id)newAssertionForBundle:(id)a3 withReason:(id)a4;
+ (id)newAssertionForBundleIdentifier:(id)a3 withReason:(id)a4;
+ (id)newAssertionWithReason:(id)a3;
@end

@implementation CLEmergencyEnablementAssertion

+ (id)newAssertionWithReason:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B660);
  }

  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
  {
    v8 = 68289026;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Non-specific CLEmergencyEnablementAssertion is no longer supported #CLEEA}", &v8, 0x12u);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B660);
    }
  }

  v5 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    v8 = 68289026;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Non-specific CLEmergencyEnablementAssertion is no longer supported #CLEEA", "{msg%{public}.0s:Non-specific CLEmergencyEnablementAssertion is no longer supported #CLEEA}", &v8, 0x12u);
  }

  result = sub_19B8943FC(&stru_1F0E6F140, &stru_1F0E6F140, a3, 0);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)newAssertionForBundleIdentifier:(id)a3 withReason:(id)a4
{
  v5 = [a3 copy];

  return sub_19B8943FC(v5, &stru_1F0E6F140, a4, 0);
}

+ (id)newAssertionForBundle:(id)a3 withReason:(id)a4
{
  v5 = [objc_msgSend(a3 "bundlePath")];

  return sub_19B8943FC(&stru_1F0E6F140, v5, a4, 0);
}

@end
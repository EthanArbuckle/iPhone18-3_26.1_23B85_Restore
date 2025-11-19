@interface CLPlacemarkInternal
- (CLPlacemarkInternal)init;
@end

@implementation CLPlacemarkInternal

- (CLPlacemarkInternal)init
{
  v17 = *MEMORY[0x1E69E9840];
  if (!objc_opt_class())
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E538);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "[GEOLocation class]";
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Do not use CLPlaceMark when GeoServices is missing, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E538);
      }
    }

    v6 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "[GEOLocation class]";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Do not use CLPlaceMark when GeoServices is missing", "{msg%{public}.0s:Do not use CLPlaceMark when GeoServices is missing, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E538);
      }
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "[GEOLocation class]";
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Do not use CLPlaceMark when GeoServices is missing, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  v8.receiver = self;
  v8.super_class = CLPlacemarkInternal;
  result = [(CLPlacemarkInternal *)&v8 init];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

@end
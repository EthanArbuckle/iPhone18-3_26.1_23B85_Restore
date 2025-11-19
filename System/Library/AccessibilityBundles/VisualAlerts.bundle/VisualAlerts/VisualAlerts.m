void sub_EF0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(a1);
    v13 = +[AXSubsystemVisualAlerts sharedInstance];
    v14 = [v13 ignoreLogging];

    if ((v14 & 1) == 0)
    {
      v15 = +[AXSubsystemVisualAlerts identifier];
      v16 = AXLoggerForFacility();

      v17 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = AXColorizeFormatLog();
        v20 = *(v11 + 8);
        v19 = _AXStringForArgs();
        if (os_log_type_enabled(v16, v17))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v19;
          _os_log_impl(&dword_0, v16, v17, "%{public}@", &buf, 0xCu);
        }
      }
    }

    objc_end_catch();
    JUMPOUT(0xDE8);
  }

  _Unwind_Resume(a1);
}

void sub_12A8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(a1);
    v13 = +[AXSubsystemVisualAlerts sharedInstance];
    v14 = [v13 ignoreLogging];

    if ((v14 & 1) == 0)
    {
      v15 = +[AXSubsystemVisualAlerts identifier];
      v16 = AXLoggerForFacility();

      v17 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = AXColorizeFormatLog();
        v20 = *(v11 + 8);
        v19 = _AXStringForArgs();
        if (os_log_type_enabled(v16, v17))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v19;
          _os_log_impl(&dword_0, v16, v17, "%{public}@", &buf, 0xCu);
        }
      }
    }

    objc_end_catch();
    JUMPOUT(0x11A0);
  }

  _Unwind_Resume(a1);
}
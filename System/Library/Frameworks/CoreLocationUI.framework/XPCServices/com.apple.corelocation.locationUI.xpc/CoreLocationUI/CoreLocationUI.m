int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_10000215C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_100002178(uint64_t a1)
{
  v2 = [*(a1 + 32) tintColor];

  if (v2)
  {
    v3 = [*(a1 + 32) tintColor];
    Components = CGColorGetComponents([v3 CGColor]);

    v5 = [*(a1 + 32) tintColor];
    NumberOfComponents = CGColorGetNumberOfComponents([v5 CGColor]);

    if (NumberOfComponents >= 4)
    {
      v9 = Components[1];
      v8 = Components[2];
      v7 = 3;
    }

    else
    {
      v7 = 1;
      v8 = *Components;
      v9 = *Components;
    }

    v11 = Components[v7];
    v12 = *Components * 255.0;
    v13 = llroundf(v12);
    v14 = v9 * 255.0;
    v15 = llroundf(v14);
    v16 = v8 * 255.0;
    v17 = llroundf(v16);
    v18 = v11 * 255.0;
    v10 = [NSString stringWithFormat:@"#%02lX%02lX%02lX%02lX", v13, v15, v17, llroundf(v18)];
  }

  else
  {
    v10 = @"Invalid";
  }

  v19 = [*(a1 + 32) backgroundColor];

  if (v19)
  {
    v20 = [*(a1 + 32) backgroundColor];
    v21 = CGColorGetComponents([v20 CGColor]);

    v22 = [*(a1 + 32) backgroundColor];
    v23 = CGColorGetNumberOfComponents([v22 CGColor]);

    if (v23 >= 4)
    {
      v26 = v21[1];
      v25 = v21[2];
      v24 = 3;
    }

    else
    {
      v24 = 1;
      v25 = *v21;
      v26 = *v21;
    }

    v28 = v21[v24];
    v29 = *v21 * 255.0;
    v30 = llroundf(v29);
    v31 = v26 * 255.0;
    v32 = llroundf(v31);
    v33 = v25 * 255.0;
    v34 = llroundf(v33);
    v35 = v28 * 255.0;
    v27 = [NSString stringWithFormat:@"#%02lX%02lX%02lX%02lX", v30, v32, v34, llroundf(v35)];
  }

  else
  {
    v27 = @"Invalid";
  }

  v45[0] = @"ClientKey";
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v46[0] = WeakRetained;
  v45[1] = @"Icon";
  v37 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) icon]);
  v46[1] = v37;
  v45[2] = @"Label";
  v38 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) label]);
  v46[2] = v38;
  v45[3] = @"CornerRadius";
  [*(a1 + 32) cornerRadius];
  v39 = [NSNumber numberWithDouble:?];
  v46[3] = v39;
  v45[4] = @"Width";
  [*(a1 + 32) buttonWidth];
  v40 = [NSNumber numberWithDouble:?];
  v46[4] = v40;
  v45[5] = @"Height";
  [*(a1 + 32) buttonHeight];
  v41 = [NSNumber numberWithDouble:?];
  v46[5] = v41;
  v45[6] = @"FontSize";
  [*(a1 + 32) fontSize];
  v42 = [NSNumber numberWithDouble:?];
  v46[6] = v42;
  v46[7] = v10;
  v45[7] = @"TintColor";
  v45[8] = @"BackgroundColor";
  v46[8] = v27;
  v43 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:9];

  return v43;
}

uint64_t sub_100002880@<X0>(uint64_t result@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  *(a3 + 134) = a2;
  *(a3 + 154) = result;
  return result;
}

uint64_t *sub_1000028BC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  v4 = result[1];
  v5 = result[2];
  v6 = result[3];
  v7 = result[4];
  v8 = result[5];
  v9 = result[6];
  v10 = result[7];
  v12 = result[8];
  v11 = result[9];
  return result;
}

uint64_t CLCommonCalculateGcd(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a1;
  }

  do
  {
    v2 = a2;
    a2 = a1 % a2;
    LODWORD(a1) = v2;
  }

  while (a2);
  return v2;
}

double CLCommonConvertTicksToSeconds(unint64_t a1)
{
  v2 = *&qword_10000CD38;
  if (*&qword_10000CD38 == 0.0)
  {
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v5 = denom;
        denom = numer % denom;
        numer = v5;
      }

      while (denom);
    }

    else
    {
      v5 = info.numer;
    }

    v6 = 1000000000;
    v7 = info.numer / v5;
    do
    {
      v8 = v7;
      v7 = v6;
      v6 = v8 % v6;
    }

    while (v6);
    v2 = (info.numer / v5 / v7) / (0x3B9ACA00 / v7 * (info.denom / v5));
    *&qword_10000CD38 = v2;
  }

  return v2 * a1;
}

double CLCommonGetMachTime()
{
  v0 = mach_absolute_time();

  return CLCommonConvertTicksToSeconds(v0);
}

double CLCommonGetMachContinuousTime()
{
  v0 = mach_continuous_time();

  return CLCommonConvertTicksToSeconds(v0);
}

void sub_100002A38(void *a1)
{
  v1 = [a1 debugDescription];
  sub_1000028DC();
  sub_100002874();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100002AC8(void *a1)
{
  [a1 pid];
  sub_100002874();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100002C08(void *a1)
{
  [a1 versionedPID];
  sub_1000028DC();
  sub_100002874();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100002C9C(void *a1)
{
  [a1 context];
  sub_1000028DC();
  sub_100002874();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100002D18(void *a1, void *a2)
{
  [a1 slotId];
  [a2 targetSlotID];
  sub_100002874();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100002ED0(uint64_t a1)
{
  v1 = [*(a1 + 16) identifier];
  sub_1000028DC();
  sub_100002874();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100002F64()
{
  _AXFeatureSupportsNonSightedUsage();
  _AXSCommandAndControlEnabled();
  _AXSFullKeyboardAccessEnabled();
  _AXSAutomationEnabled();
  sub_100002874();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Au);
}

void sub_100003024(void *a1)
{
  [a1 timestamp];
  sub_1000028E8();
  sub_100002874();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_1000030C0(void *a1)
{
  [a1 timestamp];
  sub_1000028E8();
  sub_100002874();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100003148(uint64_t *a1)
{
  v1 = sub_1000028BC(a1, __stack_chk_guard);
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[14];
  sub_100002880(v1[15], v1[13], v6);
  sub_100002874();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0xA2u);
}

void sub_100003218(uint64_t *a1)
{
  v1 = sub_1000028BC(a1, __stack_chk_guard);
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[14];
  sub_100002880(v1[15], v1[13], v6);
  sub_100002874();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0xA2u);
}

void sub_1000032E8()
{
  sub_1000028DC();
  sub_100002874();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10000336C(void *a1)
{
  v1 = [a1 debugDescription];
  sub_1000028DC();
  sub_100002874();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}
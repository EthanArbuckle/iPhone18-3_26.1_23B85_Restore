@interface ARDaemonStatusLogger
- (id)generateStringFromStatusDictionary:(id)a3 forServerObject:(id)a4 andProcessName:(id)a5;
- (void)_logOrGenerateString:(id)a3 fromDictionary:(id)a4 forServerObject:(id)a5 andProcessName:(id)a6;
- (void)_logProcessInformationFromDictionary:(id)a3 forServerObject:(id)a4 andProcessName:(id)a5 generatedTestString:(id)a6;
- (void)_logSystemInformationFromDictionary:(id)a3 forServerObject:(id)a4 generatedTestString:(id)a5;
@end

@implementation ARDaemonStatusLogger

- (id)generateStringFromStatusDictionary:(id)a3 forServerObject:(id)a4 andProcessName:(id)a5
{
  v8 = MEMORY[0x1E696AD60];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(v8);
  [(ARDaemonStatusLogger *)self _logOrGenerateString:v12 fromDictionary:v11 forServerObject:v10 andProcessName:v9];

  return v12;
}

- (void)_logOrGenerateString:(id)a3 fromDictionary:(id)a4 forServerObject:(id)a5 andProcessName:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _ARLogGeneral_48();
  v15 = v14;
  if (!v10)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v42 = v12;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] START", buf, 0xCu);
    }

    v16 = _ARLogGeneral_48();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v42 = v12;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] {", buf, 0xCu);
    }

    goto LABEL_6;
  }

  *buf = 134349056;
  v42 = v12;
  LODWORD(v39) = 12;
  v20 = _os_log_send_and_compose_impl();

  v21 = 0x1E696A000uLL;
  if (v20)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] START", buf, v39}];
    v23 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v23 numberOfMatchesInString:v22 options:0 range:{0, objc_msgSend(v22, "length")}])
    {
      v24 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v22];

      v21 = 0x1E696A000;
    }

    else
    {

      v21 = 0x1E696A000uLL;
      v24 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:4];
    }

    [v10 appendString:v24];
    [v10 appendString:@"\n"];
    free(v20);
  }

  v29 = _ARLogGeneral_48();
  *buf = 134349056;
  v42 = v12;
  LODWORD(v39) = 12;
  v38 = buf;
  v30 = _os_log_send_and_compose_impl();

  if (v30)
  {
    v31 = [*(v21 + 3776) stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] {", buf, v39}];
    v32 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v32 numberOfMatchesInString:v31 options:0 range:{0, objc_msgSend(v31, "length")}])
    {
      [@"Privacy annotation missing:\n\t" stringByAppendingString:v31];
      v16 = v33 = v31;
    }

    else
    {

      v16 = [*(v21 + 3776) stringWithCString:v30 encoding:4];
    }

    [v10 appendString:v16];
    [v10 appendString:@"\n"];
    free(v30);
LABEL_6:
  }

  [(ARDaemonStatusLogger *)self _logProcessInformationFromDictionary:v11 forServerObject:v12 andProcessName:v13 generatedTestString:v10, v38, v39];
  [(ARDaemonStatusLogger *)self _logSystemInformationFromDictionary:v11 forServerObject:v12 generatedTestString:v10];
  v17 = _ARLogGeneral_48();
  v18 = v17;
  if (!v10)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v42 = v12;
      _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] }", buf, 0xCu);
    }

    v19 = _ARLogGeneral_48();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v42 = v12;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] END", buf, 0xCu);
    }

    goto LABEL_12;
  }

  *buf = 134349056;
  v42 = v12;
  LODWORD(v40) = 12;
  v25 = _os_log_send_and_compose_impl();

  if (v25)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] }", buf, v40}];
    v27 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v27 numberOfMatchesInString:v26 options:0 range:{0, objc_msgSend(v26, "length")}])
    {
      v28 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v26];
    }

    else
    {

      v28 = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:4];
    }

    [v10 appendString:v28];
    [v10 appendString:@"\n"];
    free(v25);
  }

  v34 = _ARLogGeneral_48();
  *buf = 134349056;
  v42 = v12;
  LODWORD(v40) = 12;
  v35 = _os_log_send_and_compose_impl();

  if (v35)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] END", buf, v40}];
    v37 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v37 numberOfMatchesInString:v36 options:0 range:{0, objc_msgSend(v36, "length")}])
    {
      v19 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v36];
    }

    else
    {

      v19 = [MEMORY[0x1E696AEC0] stringWithCString:v35 encoding:4];
    }

    [v10 appendString:v19];
    [v10 appendString:@"\n"];
    free(v35);
LABEL_12:
  }
}

- (void)_logProcessInformationFromDictionary:(id)a3 forServerObject:(id)a4 andProcessName:(id)a5 generatedTestString:(id)a6
{
  v68 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 objectForKey:v11];
  v14 = _ARLogGeneral_48();
  v15 = v14;
  if (!v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = [v13 objectForKey:@"pid"];
      *buf = 134349570;
      v63 = v10;
      v64 = 2114;
      v65 = v11;
      v66 = 2114;
      v67 = v16;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@: {pid: %{public}@},", buf, 0x20u);
    }

    v17 = _ARLogGeneral_48();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_spawn_time", v11];
      v19 = [v9 objectForKey:v18];
      *buf = 134349570;
      v63 = v10;
      v64 = 2114;
      v65 = v11;
      v66 = 2114;
      v67 = v19;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@_spawn_time: %{public}@,", buf, 0x20u);
    }

    v20 = _ARLogGeneral_48();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_up_time", v11];
      v22 = [v9 objectForKey:v21];
      *buf = 134349570;
      v63 = v10;
      v64 = 2114;
      v65 = v11;
      v66 = 2114;
      v67 = v22;
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@_up_time: %{public}@,", buf, 0x20u);
    }

    v23 = _ARLogGeneral_48();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_up_time_including_sleep", v11];
      v25 = [v9 objectForKey:v24];
      *buf = 134349570;
      v63 = v10;
      v64 = 2114;
      v65 = v11;
      v66 = 2114;
      v67 = v25;
      _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@_up_time_including_sleep: %{public}@,", buf, 0x20u);
    }

    v26 = _ARLogGeneral_48();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_up_time_including_sleep_and_drift_correction", v11];
      v28 = [v9 objectForKey:v27];
      *buf = 134349570;
      v63 = v10;
      v64 = 2114;
      v65 = v11;
      v66 = 2114;
      v67 = v28;
      _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@_up_time_including_sleep_and_drift_correction: %{public}@,", buf, 0x20u);
    }

    goto LABEL_12;
  }

  [v13 objectForKey:@"pid"];
  *buf = 134349570;
  v63 = v10;
  v64 = 2114;
  v65 = v11;
  v67 = v66 = 2114;
  LODWORD(v61) = 32;
  v29 = _os_log_send_and_compose_impl();

  if (v29)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] \t%{public}@: {pid: %{public}@}, ", buf, v61}];
    v31 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v31 numberOfMatchesInString:v30 options:0 range:{0, objc_msgSend(v30, "length")}])
    {
      v32 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v30];
    }

    else
    {

      v32 = [MEMORY[0x1E696AEC0] stringWithCString:v29 encoding:4];
    }

    [v12 appendString:v32];
    [v12 appendString:@"\n"];
    free(v29);
  }

  v33 = _ARLogGeneral_48();
  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_spawn_time", v11];
  v35 = [v9 objectForKey:v34];
  *buf = 134349570;
  v63 = v10;
  v64 = 2114;
  v65 = v11;
  v66 = 2114;
  v67 = v35;
  LODWORD(v61) = 32;
  v36 = _os_log_send_and_compose_impl();

  if (v36)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] \t%{public}@_spawn_time: %{public}@, ", buf, v61}];
    v38 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v38 numberOfMatchesInString:v37 options:0 range:{0, objc_msgSend(v37, "length")}])
    {
      v39 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v37];
    }

    else
    {

      v39 = [MEMORY[0x1E696AEC0] stringWithCString:v36 encoding:4];
    }

    [v12 appendString:v39];
    [v12 appendString:@"\n"];
    free(v36);
  }

  v40 = _ARLogGeneral_48();
  v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_up_time", v11];
  v42 = [v9 objectForKey:v41];
  *buf = 134349570;
  v63 = v10;
  v64 = 2114;
  v65 = v11;
  v66 = 2114;
  v67 = v42;
  LODWORD(v61) = 32;
  v43 = _os_log_send_and_compose_impl();

  if (v43)
  {
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] \t%{public}@_up_time: %{public}@, ", buf, v61}];
    v45 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v45 numberOfMatchesInString:v44 options:0 range:{0, objc_msgSend(v44, "length")}])
    {
      v46 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v44];
    }

    else
    {

      v46 = [MEMORY[0x1E696AEC0] stringWithCString:v43 encoding:4];
    }

    [v12 appendString:v46];
    [v12 appendString:@"\n"];
    free(v43);
  }

  v47 = _ARLogGeneral_48();
  v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_up_time_including_sleep", v11];
  v49 = [v9 objectForKey:v48];
  *buf = 134349570;
  v63 = v10;
  v64 = 2114;
  v65 = v11;
  v66 = 2114;
  v67 = v49;
  LODWORD(v61) = 32;
  v50 = _os_log_send_and_compose_impl();

  if (v50)
  {
    v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] \t%{public}@_up_time_including_sleep: %{public}@, ", buf, v61}];
    v52 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v52 numberOfMatchesInString:v51 options:0 range:{0, objc_msgSend(v51, "length")}])
    {
      v53 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v51];
    }

    else
    {

      v53 = [MEMORY[0x1E696AEC0] stringWithCString:v50 encoding:4];
    }

    [v12 appendString:v53];
    [v12 appendString:@"\n"];
    free(v50);
  }

  v54 = _ARLogGeneral_48();
  v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_up_time_including_sleep_and_drift_correction", v11];
  v56 = [v9 objectForKey:v55];
  *buf = 134349570;
  v63 = v10;
  v64 = 2114;
  v65 = v11;
  v66 = 2114;
  v67 = v56;
  LODWORD(v61) = 32;
  v57 = _os_log_send_and_compose_impl();

  if (v57)
  {
    v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] \t%{public}@_up_time_including_sleep_and_drift_correction: %{public}@, ", buf, v61}];
    v59 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v59 numberOfMatchesInString:v58 options:0 range:{0, objc_msgSend(v58, "length")}])
    {
      [@"Privacy annotation missing:\n\t" stringByAppendingString:v58];
      v26 = v60 = v58;
    }

    else
    {

      v26 = [MEMORY[0x1E696AEC0] stringWithCString:v57 encoding:4];
    }

    [v12 appendString:v26];
    [v12 appendString:@"\n"];
    free(v57);
LABEL_12:
  }
}

- (void)_logSystemInformationFromDictionary:(id)a3 forServerObject:(id)a4 generatedTestString:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _ARLogGeneral_48();
  v11 = v10;
  if (!v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [v7 objectForKey:@"system_boot_time"];
      *buf = 134349314;
      v44 = v8;
      v45 = 2114;
      v46 = v12;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \tsystem_boot_time: %{public}@,", buf, 0x16u);
    }

    v13 = _ARLogGeneral_48();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v7 objectForKey:@"system_up_time"];
      *buf = 134349314;
      v44 = v8;
      v45 = 2114;
      v46 = v14;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \tsystem_up_time: %{public}@,", buf, 0x16u);
    }

    v15 = _ARLogGeneral_48();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v7 objectForKey:@"system_up_time_including_sleep"];
      *buf = 134349314;
      v44 = v8;
      v45 = 2114;
      v46 = v16;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \tsystem_up_time_including_sleep: %{public}@,", buf, 0x16u);
    }

    v17 = _ARLogGeneral_48();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v7 objectForKey:@"system_up_time_including_sleep_and_drift_correction"];
      *buf = 134349314;
      v44 = v8;
      v45 = 2114;
      v46 = v18;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \tsystem_up_time_including_sleep_and_drift_correction: %{public}@,", buf, 0x16u);
    }

    goto LABEL_10;
  }

  [v7 objectForKey:@"system_boot_time"];
  *buf = 134349314;
  v44 = v8;
  v46 = v45 = 2114;
  LODWORD(v42) = 22;
  v19 = _os_log_send_and_compose_impl();

  v20 = 0x1E696A000uLL;
  if (v19)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] \tsystem_boot_time: %{public}@, ", buf, v42}];
    v22 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v22 numberOfMatchesInString:v21 options:0 range:{0, objc_msgSend(v21, "length")}])
    {
      v23 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v21];

      v20 = 0x1E696A000;
    }

    else
    {

      v20 = 0x1E696A000uLL;
      v23 = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:4];
    }

    [v9 appendString:v23];
    [v9 appendString:@"\n"];
    free(v19);
  }

  v24 = _ARLogGeneral_48();
  v25 = [v7 objectForKey:@"system_up_time"];
  *buf = 134349314;
  v44 = v8;
  v45 = 2114;
  v46 = v25;
  LODWORD(v42) = 22;
  v26 = _os_log_send_and_compose_impl();

  if (v26)
  {
    v27 = [*(v20 + 3776) stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] \tsystem_up_time: %{public}@, ", buf, v42}];
    v28 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v28 numberOfMatchesInString:v27 options:0 range:{0, objc_msgSend(v27, "length")}])
    {
      v29 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v27];

      v20 = 0x1E696A000;
    }

    else
    {

      v20 = 0x1E696A000uLL;
      v29 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:4];
    }

    [v9 appendString:v29];
    [v9 appendString:@"\n"];
    free(v26);
  }

  v30 = _ARLogGeneral_48();
  v31 = [v7 objectForKey:@"system_up_time_including_sleep"];
  *buf = 134349314;
  v44 = v8;
  v45 = 2114;
  v46 = v31;
  LODWORD(v42) = 22;
  v32 = _os_log_send_and_compose_impl();

  if (v32)
  {
    v33 = [*(v20 + 3776) stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] \tsystem_up_time_including_sleep: %{public}@, ", buf, v42}];
    v34 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v34 numberOfMatchesInString:v33 options:0 range:{0, objc_msgSend(v33, "length")}])
    {
      v35 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v33];

      v20 = 0x1E696A000;
    }

    else
    {

      v20 = 0x1E696A000uLL;
      v35 = [MEMORY[0x1E696AEC0] stringWithCString:v32 encoding:4];
    }

    [v9 appendString:v35];
    [v9 appendString:@"\n"];
    free(v32);
  }

  v36 = _ARLogGeneral_48();
  v37 = [v7 objectForKey:@"system_up_time_including_sleep_and_drift_correction"];
  *buf = 134349314;
  v44 = v8;
  v45 = 2114;
  v46 = v37;
  LODWORD(v42) = 22;
  v38 = _os_log_send_and_compose_impl();

  if (v38)
  {
    v39 = [*(v20 + 3776) stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] \tsystem_up_time_including_sleep_and_drift_correction: %{public}@, ", buf, v42}];
    v40 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v40 numberOfMatchesInString:v39 options:0 range:{0, objc_msgSend(v39, "length")}])
    {
      [@"Privacy annotation missing:\n\t" stringByAppendingString:v39];
      v17 = v41 = v39;
    }

    else
    {

      v17 = [*(v20 + 3776) stringWithCString:v38 encoding:4];
    }

    [v9 appendString:v17];
    [v9 appendString:@"\n"];
    free(v38);
LABEL_10:
  }
}

@end
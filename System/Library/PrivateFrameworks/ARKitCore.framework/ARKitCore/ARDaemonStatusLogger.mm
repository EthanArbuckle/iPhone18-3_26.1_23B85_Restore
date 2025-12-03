@interface ARDaemonStatusLogger
- (id)generateStringFromStatusDictionary:(id)dictionary forServerObject:(id)object andProcessName:(id)name;
- (void)_logOrGenerateString:(id)string fromDictionary:(id)dictionary forServerObject:(id)object andProcessName:(id)name;
- (void)_logProcessInformationFromDictionary:(id)dictionary forServerObject:(id)object andProcessName:(id)name generatedTestString:(id)string;
- (void)_logSystemInformationFromDictionary:(id)dictionary forServerObject:(id)object generatedTestString:(id)string;
@end

@implementation ARDaemonStatusLogger

- (id)generateStringFromStatusDictionary:(id)dictionary forServerObject:(id)object andProcessName:(id)name
{
  v8 = MEMORY[0x1E696AD60];
  nameCopy = name;
  objectCopy = object;
  dictionaryCopy = dictionary;
  v12 = objc_alloc_init(v8);
  [(ARDaemonStatusLogger *)self _logOrGenerateString:v12 fromDictionary:dictionaryCopy forServerObject:objectCopy andProcessName:nameCopy];

  return v12;
}

- (void)_logOrGenerateString:(id)string fromDictionary:(id)dictionary forServerObject:(id)object andProcessName:(id)name
{
  v43 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  dictionaryCopy = dictionary;
  objectCopy = object;
  nameCopy = name;
  v14 = _ARLogGeneral_48();
  v15 = v14;
  if (!stringCopy)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v42 = objectCopy;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] START", buf, 0xCu);
    }

    v16 = _ARLogGeneral_48();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v42 = objectCopy;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] {", buf, 0xCu);
    }

    goto LABEL_6;
  }

  *buf = 134349056;
  v42 = objectCopy;
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

    [stringCopy appendString:v24];
    [stringCopy appendString:@"\n"];
    free(v20);
  }

  v29 = _ARLogGeneral_48();
  *buf = 134349056;
  v42 = objectCopy;
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

    [stringCopy appendString:v16];
    [stringCopy appendString:@"\n"];
    free(v30);
LABEL_6:
  }

  [(ARDaemonStatusLogger *)self _logProcessInformationFromDictionary:dictionaryCopy forServerObject:objectCopy andProcessName:nameCopy generatedTestString:stringCopy, v38, v39];
  [(ARDaemonStatusLogger *)self _logSystemInformationFromDictionary:dictionaryCopy forServerObject:objectCopy generatedTestString:stringCopy];
  v17 = _ARLogGeneral_48();
  v18 = v17;
  if (!stringCopy)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v42 = objectCopy;
      _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] }", buf, 0xCu);
    }

    v19 = _ARLogGeneral_48();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v42 = objectCopy;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] END", buf, 0xCu);
    }

    goto LABEL_12;
  }

  *buf = 134349056;
  v42 = objectCopy;
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

    [stringCopy appendString:v28];
    [stringCopy appendString:@"\n"];
    free(v25);
  }

  v34 = _ARLogGeneral_48();
  *buf = 134349056;
  v42 = objectCopy;
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

    [stringCopy appendString:v19];
    [stringCopy appendString:@"\n"];
    free(v35);
LABEL_12:
  }
}

- (void)_logProcessInformationFromDictionary:(id)dictionary forServerObject:(id)object andProcessName:(id)name generatedTestString:(id)string
{
  v68 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objectCopy = object;
  nameCopy = name;
  stringCopy = string;
  v13 = [dictionaryCopy objectForKey:nameCopy];
  v14 = _ARLogGeneral_48();
  v15 = v14;
  if (!stringCopy)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = [v13 objectForKey:@"pid"];
      *buf = 134349570;
      v63 = objectCopy;
      v64 = 2114;
      v65 = nameCopy;
      v66 = 2114;
      v67 = v16;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@: {pid: %{public}@},", buf, 0x20u);
    }

    v17 = _ARLogGeneral_48();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_spawn_time", nameCopy];
      v19 = [dictionaryCopy objectForKey:nameCopy];
      *buf = 134349570;
      v63 = objectCopy;
      v64 = 2114;
      v65 = nameCopy;
      v66 = 2114;
      v67 = v19;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@_spawn_time: %{public}@,", buf, 0x20u);
    }

    v20 = _ARLogGeneral_48();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      nameCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_up_time", nameCopy];
      v22 = [dictionaryCopy objectForKey:nameCopy2];
      *buf = 134349570;
      v63 = objectCopy;
      v64 = 2114;
      v65 = nameCopy;
      v66 = 2114;
      v67 = v22;
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@_up_time: %{public}@,", buf, 0x20u);
    }

    v23 = _ARLogGeneral_48();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      nameCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_up_time_including_sleep", nameCopy];
      v25 = [dictionaryCopy objectForKey:nameCopy3];
      *buf = 134349570;
      v63 = objectCopy;
      v64 = 2114;
      v65 = nameCopy;
      v66 = 2114;
      v67 = v25;
      _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@_up_time_including_sleep: %{public}@,", buf, 0x20u);
    }

    v26 = _ARLogGeneral_48();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      nameCopy4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_up_time_including_sleep_and_drift_correction", nameCopy];
      v28 = [dictionaryCopy objectForKey:nameCopy4];
      *buf = 134349570;
      v63 = objectCopy;
      v64 = 2114;
      v65 = nameCopy;
      v66 = 2114;
      v67 = v28;
      _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@_up_time_including_sleep_and_drift_correction: %{public}@,", buf, 0x20u);
    }

    goto LABEL_12;
  }

  [v13 objectForKey:@"pid"];
  *buf = 134349570;
  v63 = objectCopy;
  v64 = 2114;
  v65 = nameCopy;
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

    [stringCopy appendString:v32];
    [stringCopy appendString:@"\n"];
    free(v29);
  }

  v33 = _ARLogGeneral_48();
  nameCopy5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_spawn_time", nameCopy];
  v35 = [dictionaryCopy objectForKey:nameCopy5];
  *buf = 134349570;
  v63 = objectCopy;
  v64 = 2114;
  v65 = nameCopy;
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

    [stringCopy appendString:v39];
    [stringCopy appendString:@"\n"];
    free(v36);
  }

  v40 = _ARLogGeneral_48();
  nameCopy6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_up_time", nameCopy];
  v42 = [dictionaryCopy objectForKey:nameCopy6];
  *buf = 134349570;
  v63 = objectCopy;
  v64 = 2114;
  v65 = nameCopy;
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

    [stringCopy appendString:v46];
    [stringCopy appendString:@"\n"];
    free(v43);
  }

  v47 = _ARLogGeneral_48();
  nameCopy7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_up_time_including_sleep", nameCopy];
  v49 = [dictionaryCopy objectForKey:nameCopy7];
  *buf = 134349570;
  v63 = objectCopy;
  v64 = 2114;
  v65 = nameCopy;
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

    [stringCopy appendString:v53];
    [stringCopy appendString:@"\n"];
    free(v50);
  }

  v54 = _ARLogGeneral_48();
  nameCopy8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_up_time_including_sleep_and_drift_correction", nameCopy];
  v56 = [dictionaryCopy objectForKey:nameCopy8];
  *buf = 134349570;
  v63 = objectCopy;
  v64 = 2114;
  v65 = nameCopy;
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

    [stringCopy appendString:v26];
    [stringCopy appendString:@"\n"];
    free(v57);
LABEL_12:
  }
}

- (void)_logSystemInformationFromDictionary:(id)dictionary forServerObject:(id)object generatedTestString:(id)string
{
  v47 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objectCopy = object;
  stringCopy = string;
  v10 = _ARLogGeneral_48();
  v11 = v10;
  if (!stringCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [dictionaryCopy objectForKey:@"system_boot_time"];
      *buf = 134349314;
      v44 = objectCopy;
      v45 = 2114;
      v46 = v12;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \tsystem_boot_time: %{public}@,", buf, 0x16u);
    }

    v13 = _ARLogGeneral_48();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [dictionaryCopy objectForKey:@"system_up_time"];
      *buf = 134349314;
      v44 = objectCopy;
      v45 = 2114;
      v46 = v14;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \tsystem_up_time: %{public}@,", buf, 0x16u);
    }

    v15 = _ARLogGeneral_48();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [dictionaryCopy objectForKey:@"system_up_time_including_sleep"];
      *buf = 134349314;
      v44 = objectCopy;
      v45 = 2114;
      v46 = v16;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \tsystem_up_time_including_sleep: %{public}@,", buf, 0x16u);
    }

    v17 = _ARLogGeneral_48();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [dictionaryCopy objectForKey:@"system_up_time_including_sleep_and_drift_correction"];
      *buf = 134349314;
      v44 = objectCopy;
      v45 = 2114;
      v46 = v18;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \tsystem_up_time_including_sleep_and_drift_correction: %{public}@,", buf, 0x16u);
    }

    goto LABEL_10;
  }

  [dictionaryCopy objectForKey:@"system_boot_time"];
  *buf = 134349314;
  v44 = objectCopy;
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

    [stringCopy appendString:v23];
    [stringCopy appendString:@"\n"];
    free(v19);
  }

  v24 = _ARLogGeneral_48();
  v25 = [dictionaryCopy objectForKey:@"system_up_time"];
  *buf = 134349314;
  v44 = objectCopy;
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

    [stringCopy appendString:v29];
    [stringCopy appendString:@"\n"];
    free(v26);
  }

  v30 = _ARLogGeneral_48();
  v31 = [dictionaryCopy objectForKey:@"system_up_time_including_sleep"];
  *buf = 134349314;
  v44 = objectCopy;
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

    [stringCopy appendString:v35];
    [stringCopy appendString:@"\n"];
    free(v32);
  }

  v36 = _ARLogGeneral_48();
  v37 = [dictionaryCopy objectForKey:@"system_up_time_including_sleep_and_drift_correction"];
  *buf = 134349314;
  v44 = objectCopy;
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

    [stringCopy appendString:v17];
    [stringCopy appendString:@"\n"];
    free(v38);
LABEL_10:
  }
}

@end
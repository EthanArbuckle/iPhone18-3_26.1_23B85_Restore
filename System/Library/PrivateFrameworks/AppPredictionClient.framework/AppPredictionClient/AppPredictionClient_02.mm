void swapMethodImplementations()
{
  v0 = objc_opt_class();
  ClassMethod = class_getClassMethod(v0, "now");
  v2 = class_getClassMethod(v0, sel__atx_now);
  method_exchangeImplementations(ClassMethod, v2);
  v3 = class_getClassMethod(v0, sel_date);
  v4 = class_getClassMethod(v0, sel__atx_date);
  method_exchangeImplementations(v3, v4);
  v5 = class_getClassMethod(v0, sel_dateWithTimeIntervalSinceNow_);
  v6 = class_getClassMethod(v0, sel__atx_dateWithTimeIntervalSinceNow_);
  method_exchangeImplementations(v5, v6);
  v7 = class_getClassMethod(v0, sel_timeIntervalSinceReferenceDate);
  v8 = class_getClassMethod(v0, sel__atx_timeIntervalSinceReferenceDate);
  method_exchangeImplementations(v7, v8);
  InstanceMethod = class_getInstanceMethod(v0, sel_timeIntervalSinceNow);
  v10 = class_getInstanceMethod(v0, sel__atx_timeIntervalSinceNow);

  method_exchangeImplementations(InstanceMethod, v10);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __dateManipulationQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.AppPredictionClient.DateManipulationQueue", v2);
  v1 = dateManipulationQueue_dateManipulationQueue;
  dateManipulationQueue_dateManipulationQueue = v0;
}

uint64_t ATXPBInterruptionManagerTuningSuggestionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 3)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id ATXNotificationCategorizationXPCInterface()
{
  v37[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3E691C0];
  v1 = MEMORY[0x1E695DFD8];
  v37[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_rankUserNotificationWithRequest_completion_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v36 = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_rankUserNotificationWithRequest_completion_ argumentIndex:0 ofReply:1];

  v7 = MEMORY[0x1E695DFD8];
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_collectDynamicBreakthroughFeaturesForNotification_completion_ argumentIndex:0 ofReply:0];

  v10 = MEMORY[0x1E695DFD8];
  v34 = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v12 = [v10 setWithArray:v11];
  [v0 setClasses:v12 forSelector:sel_collectDynamicBreakthroughFeaturesForNotification_completion_ argumentIndex:0 ofReply:1];

  v13 = MEMORY[0x1E695DFD8];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v15 = [v13 setWithArray:v14];
  [v0 setClasses:v15 forSelector:sel_collectCoreAnalyticsJsonForNotification_completion_ argumentIndex:0 ofReply:0];

  v16 = MEMORY[0x1E695DFD8];
  v32 = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v18 = [v16 setWithArray:v17];
  [v0 setClasses:v18 forSelector:sel_collectCoreAnalyticsJsonForNotification_completion_ argumentIndex:0 ofReply:1];

  v19 = objc_autoreleasePoolPush();
  v20 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v19);
  [v0 setClasses:v20 forSelector:sel_fetchContextForNotificationWithRequest_completion_ argumentIndex:0 ofReply:0];

  v21 = objc_autoreleasePoolPush();
  v22 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v21);
  [v0 setClasses:v22 forSelector:sel_fetchContextForNotificationWithRequest_completion_ argumentIndex:0 ofReply:1];

  v23 = objc_autoreleasePoolPush();
  v24 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v23);
  [v0 setClasses:v24 forSelector:sel_fetchContextForMailWithRequest_completion_ argumentIndex:0 ofReply:0];

  v25 = objc_autoreleasePoolPush();
  v26 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v25);
  [v0 setClasses:v26 forSelector:sel_fetchContextForMailWithRequest_completion_ argumentIndex:0 ofReply:1];

  v27 = objc_autoreleasePoolPush();
  v28 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v27);
  [v0 setClasses:v28 forSelector:sel_fetchContextForMessageWithRequest_completion_ argumentIndex:0 ofReply:0];

  v29 = objc_autoreleasePoolPush();
  v30 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v29);
  [v0 setClasses:v30 forSelector:sel_fetchContextForMessageWithRequest_completion_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_1BF6B4910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ATXSlotSetsSerialize(void *a1, void *a2)
{
  v99[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  context = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v6 = v4;
  obj = v6;
  v70 = [v6 countByEnumeratingWithState:&v90 objects:v98 count:16];
  v64 = v3;
  if (v70)
  {
    v7 = 0;
    v65 = 0;
    v68 = *v91;
    v8 = 8;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v91 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v90 + 1) + 8 * v9);

        v11 = v8 + 1;
        v12 = [v7 parameters];

        if (v12)
        {
          v13 = [v7 parameters];
          v11 += [v13 count];

          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v14 = [v7 parameters];
          v15 = [v14 countByEnumeratingWithState:&v86 objects:v97 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v87;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v87 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v86 + 1) + 8 * i);
                v20 = [v5 count];
                [v5 addObject:v19];
                if (v20 != [v5 count])
                {
                  v11 += strlen([v19 UTF8String]);
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v86 objects:v97 count:16];
            }

            while (v16);
          }
        }

        else
        {
          v65 = 1;
        }

        v21 = [v7 uuid];

        if (v21)
        {
          v8 = v11 + 16;
        }

        else
        {
          v8 = v11;
        }

        v9 = v9 + 1;
        v10 = v7;
      }

      while (v9 != v70);
      v70 = [obj countByEnumeratingWithState:&v90 objects:v98 count:16];
    }

    while (v70);

    v22 = v65;
    if (!v65 || [obj count] == 1)
    {
      v3 = v64;
      goto LABEL_28;
    }

    ATXSlotSetsSerialize_cold_1(v99);
    v6 = v99[0];
    v3 = v64;
  }

  else
  {
    v22 = 0;
    v8 = 8;
  }

LABEL_28:
  v23 = [v5 count];
  v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  if ([v5 count] >= 0xFF)
  {
    ATXSlotSetsSerialize_cold_2();
  }

  v25 = objc_autoreleasePoolPush();
  v26 = objc_autoreleasePoolPush();
  v85 = 0;
  v27 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v85];
  v28 = v85;
  objc_autoreleasePoolPop(v26);
  if (v27)
  {
    v29 = v8 + 2 * v23;
    v30 = [v27 length] - 8;
    v31 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v29 + v30];
    LODWORD(v99[0]) = 0;
    [v31 appendBytes:v99 length:4];
    LODWORD(v99[0]) = [v5 count] | ((v30 & 0x7FFFFF) << 8) | (v22 << 31);
    [v31 appendBytes:v99 length:4];
    [v31 appendBytes:objc_msgSend(v27 length:{"bytes") + 8, v30}];

    objc_autoreleasePoolPop(v25);
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v71 = v5;
    v32 = [v71 countByEnumeratingWithState:&v81 objects:v96 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = 0;
      v35 = *v82;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v82 != v35)
          {
            objc_enumerationMutation(v71);
          }

          v37 = *(*(&v81 + 1) + 8 * j);
          v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v34];
          [v24 setObject:v38 forKeyedSubscript:v37];

          v39 = v37;
          v40 = v31;
          v41 = [v37 UTF8String];
          v42 = strlen(v41);
          v43 = v42;
          if (v42 >= 0xFFFF)
          {
            ATXSlotSetsSerialize_cold_3();
          }

          LOWORD(v99[0]) = v43;
          [v40 appendBytes:v99 length:2];
          [v40 appendBytes:v41 length:strlen(v41)];

          ++v34;
        }

        v33 = [v71 countByEnumeratingWithState:&v81 objects:v96 count:16];
      }

      while (v33);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v66 = obj;
    v72 = [v66 countByEnumeratingWithState:&v77 objects:v95 count:16];
    if (v72)
    {
      v44 = 0;
      v69 = *v78;
      do
      {
        v45 = 0;
        v46 = v44;
        do
        {
          if (*v78 != v69)
          {
            objc_enumerationMutation(v66);
          }

          v44 = *(*(&v77 + 1) + 8 * v45);

          v47 = [v44 uuid];

          v48 = [v44 parameters];
          v49 = [v48 count];

          LOBYTE(v99[0]) = v49 | ((v47 != 0) << 7);
          [v31 appendBytes:v99 length:1];
          if (v47)
          {
            v50 = [v44 uuid];
            v99[0] = 0;
            v99[1] = 0;
            v51 = v31;
            [v50 getUUIDBytes:v99];
            [v51 appendBytes:v99 length:16];
          }

          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v52 = [v44 parameters];
          v53 = [v52 countByEnumeratingWithState:&v73 objects:v94 count:16];
          if (v53)
          {
            v54 = v53;
            v55 = *v74;
            do
            {
              for (k = 0; k != v54; ++k)
              {
                if (*v74 != v55)
                {
                  objc_enumerationMutation(v52);
                }

                v57 = [v24 objectForKeyedSubscript:*(*(&v73 + 1) + 8 * k)];
                LOBYTE(v99[0]) = [v57 unsignedCharValue];
                [v31 appendBytes:v99 length:1];
              }

              v54 = [v52 countByEnumeratingWithState:&v73 objects:v94 count:16];
            }

            while (v54);
          }

          v45 = v45 + 1;
          v46 = v44;
        }

        while (v45 != v72);
        v72 = [v66 countByEnumeratingWithState:&v77 objects:v95 count:16];
      }

      while (v72);
    }

    v58 = adler32(0, ([v31 bytes] + 4), objc_msgSend(v31, "length") - 4);
    *[v31 mutableBytes] = v58;
    v59 = [v31 copy];

    v3 = v64;
  }

  else
  {
    v60 = __atxlog_handle_default();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      ATXSlotSetsSerialize_cold_4(v3, v28, v60);
    }

    objc_autoreleasePoolPop(v25);
    v59 = 0;
  }

  objc_autoreleasePoolPop(contexta);

  return v59;
}

void __getAVRoutingSessionManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVRoutingSessionManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXAVFoundationWrapper.m" lineNumber:15 description:{@"Unable to find class %s", "AVRoutingSessionManager"}];

  __break(1u);
}

void AVFoundationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXAVFoundationWrapper.m" lineNumber:14 description:{@"%s", *a1}];

  __break(1u);
}

void __getAVOutputDeviceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVOutputDeviceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXAVFoundationWrapper.m" lineNumber:26 description:{@"Unable to find class %s", "AVOutputDevice"}];

  __break(1u);
}

void ATXUnarchiverZip()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1BF549000, v0, OS_LOG_TYPE_ERROR, "ATXUnarchiver: unable to open non-file URL %@.", v1, 0xCu);
}

{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

{
  archive_error_string();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  archive_error_string();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  archive_error_string();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PPCreateReadArchive_cold_1()
{
  archive_error_string();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PPCreateReadArchive_cold_2()
{
  archive_error_string();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PPZipUnarchive_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1BF549000, v1, OS_LOG_TYPE_ERROR, "ATXUnarchiver: failed to create directory at %@ - %@.", v2, 0x16u);
}

void PPZipUnarchive_cold_2()
{
  archive_error_string();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PPZipUnarchive_cold_3()
{
  archive_error_string();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PPZipUnarchive_cold_4()
{
  archive_error_string();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PPZipUnarchive_cold_5()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void PPZipUnarchive_cold_7()
{
  archive_error_string();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PPZipUnarchive_cold_8()
{
  archive_error_string();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PPZipUnarchive_cold_10()
{
  archive_error_string();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PPZipUnarchive_cold_11()
{
  archive_error_string();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void NSStringForATXWidgetEngagementType_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "invalid input ATXWidgetEngagementType: %d", v2, 8u);
}

void _decodeOrFail_cold_2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1BF549000, v1, OS_LOG_TYPE_ERROR, "Unable to decode %@ for ATXAction: %@", v2, 0x16u);
}

uint64_t ATXPBHomeScreenEventMetadataReadFrom_cold_1()
{
  OUTLINED_FUNCTION_11();
  v4 = objc_alloc_init(ATXPBHomeScreenWidgetIdentifiable);
  [(ATXPBHomeScreenEventMetadata *)v3 addWidgetInStackIdentifiables:v4];
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_8();
  if (PBReaderPlaceMark() && ATXPBHomeScreenWidgetIdentifiableReadFrom(v4, v2))
  {
    OUTLINED_FUNCTION_8();
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    result = 0;
    *v0 = 0;
  }

  return result;
}

uint64_t ATXPBHomeScreenEventMetadataReadFrom_cold_2()
{
  OUTLINED_FUNCTION_11();
  v4 = objc_alloc_init(ATXPBHomeScreenWidgetIdentifiable);
  [(ATXPBHomeScreenEventMetadata *)v3 addWidgetIdentifiables:v4];
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_8();
  if (PBReaderPlaceMark() && ATXPBHomeScreenWidgetIdentifiableReadFrom(v4, v2))
  {
    OUTLINED_FUNCTION_8();
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    result = 0;
    *v0 = 0;
  }

  return result;
}

void NSStringForATXHomeScreenWidgetExplicitFeedback_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "invalid input ATXHomeScreenWidgetExplicitFeedback: %d", v2, 8u);
}

void NSStringForATXHomeScreenStackChangeReason_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "invalid input ATXHomeScreenStackChangeReason: %d", v2, 8u);
}

void getMGBool_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool _MGGetBoolAnswer(CFStringRef)"];
  [v0 handleFailureInFunction:v1 file:@"ATXActionCriteria.m" lineNumber:28 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getMGGetBoolAnswerSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *libMobileGestaltLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXActionCriteria.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
}

void SystemConfigurationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SystemConfigurationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXActionCriteria.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

uint64_t ATXPBFaceGalleryConfigurationReadFrom_cold_1(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = objc_alloc_init(ATXPBFaceGallerySection);
  [(ATXPBFaceGalleryConfiguration *)a1 addSections:v8];
  *a2 = 0;
  a2[1] = 0;
  if (PBReaderPlaceMark() && ATXPBFaceGallerySectionReadFrom(v8, a3))
  {
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    result = 0;
    *a4 = 0;
  }

  return result;
}

void AppPredictionUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppPredictionUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXActionSearchResult.m" lineNumber:59 description:{@"%s", *a1}];

  __break(1u);
}

void __getCRSCardRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCRSCardRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXActionSearchResult.m" lineNumber:56 description:{@"Unable to find class %s", "CRSCardRequest"}];

  __break(1u);
}

void __getCRSCardRequestClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXActionSearchResult.m" lineNumber:55 description:{@"%s", *a1}];

  __break(1u);
}

void __getATXProactiveSuggestionBuilderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getATXProactiveSuggestionBuilderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXActionSearchResult.m" lineNumber:393 description:{@"Unable to find class %s", "ATXProactiveSuggestionBuilder"}];

  __break(1u);
}

void AppPredictionInternalLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppPredictionInternalLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXActionSearchResult.m" lineNumber:391 description:{@"%s", *a1}];

  __break(1u);
}

void ATXUserEducationSuggestionTypeToString_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "NSString * _Nonnull ATXUserEducationSuggestionTypeToString(ATXUserEducationSuggestionType)";
  v4 = 2048;
  v5 = a1;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%s: unrecognized suggestionType: %ld", &v2, 0x16u);
}

void ATXUserEducationSuggestionEventTypeToString_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "NSString * _Nonnull ATXUserEducationSuggestionEventTypeToString(ATXUserEducationSuggestionEventType)";
  v4 = 2048;
  v5 = a1;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%s: unrecognized eventType: %ld", &v2, 0x16u);
}

uint64_t ATXPBFaceGalleryEventReadFrom_cold_1(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = objc_alloc_init(ATXPBFaceGalleryItem);
  [(ATXPBFaceGalleryEvent *)a1 addItems:v8];
  *a2 = 0;
  a2[1] = 0;
  if (PBReaderPlaceMark() && ATXPBFaceGalleryItemReadFrom(v8, a3))
  {
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    result = 0;
    *a4 = 0;
  }

  return result;
}

void ATXUserEducationSuggestionFeedbackTypeToString_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "NSString * _Nonnull ATXUserEducationSuggestionFeedbackTypeToString(ATXUserEducationSuggestionFeedbackType)";
  v4 = 2048;
  v5 = a1;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%s: unrecognized feedbackType: %ld", &v2, 0x16u);
}

void ATXExecutableIdentifierForSuggestion_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "ATXExecutableIdentifierForSuggestion: unsupported class: %@", &v2, 0xCu);
}

void loadIntentWithBundleIdAndName_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1BF549000, v0, OS_LOG_TYPE_ERROR, "Unable to load schema for bundle: '%@'", v1, 0xCu);
}

void __getMTUpdateAlarmIntentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMTUpdateAlarmIntentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXAction+Factory.m" lineNumber:29 description:{@"Unable to find class %s", "MTUpdateAlarmIntent"}];

  __break(1u);
}

void MobileTimerLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileTimerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXAction+Factory.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
}

void __getMTCreateAlarmIntentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMTCreateAlarmIntentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXAction+Factory.m" lineNumber:28 description:{@"Unable to find class %s", "MTCreateAlarmIntent"}];

  __break(1u);
}

void ATXStackLayoutSizeForNSString_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "ATXStringForStackLayoutSize: unknown string provided: %@", &v2, 0xCu);
}

void __getAVSystemControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVSystemControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXAVRoutingUtils.m" lineNumber:18 description:{@"Unable to find class %s", "AVSystemController"}];

  __break(1u);
}

void __getAVSystemControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaExperienceLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXAVRoutingUtils.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getINUISearchFoundationImageAdapterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINUISearchFoundationImageAdapterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXSpotlightClient.m" lineNumber:59 description:{@"Unable to find class %s", "INUISearchFoundationImageAdapter"}];

  __break(1u);
}

void __getINUISearchFoundationImageAdapterClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntentsUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXSpotlightClient.m" lineNumber:58 description:{@"%s", *a1}];

  __break(1u);
}

void __getSPSearchSuggestionResultClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSPSearchSuggestionResultClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXSpotlightHidingUIController.m" lineNumber:36 description:{@"Unable to find class %s", "SPSearchSuggestionResult"}];

  __break(1u);
}

void SpotlightServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpotlightServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXSpotlightHidingUIController.m" lineNumber:35 description:{@"%s", *a1}];

  __break(1u);
}

void __getSPSearchContactEntityClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSPSearchContactEntityClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXSpotlightHidingUIController.m" lineNumber:37 description:{@"Unable to find class %s", "SPSearchContactEntity"}];

  __break(1u);
}

void loadLazyOrRegularPlist_cold_1_0()
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(&dword_1BF549000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error parsing plist %@: %@", v0, 0x16u);
}

void loadLazyOrRegularPlist_cold_2_0()
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(&dword_1BF549000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error loading plist %@: %@", v0, 0x16u);
}

void NSStringForATXModeConfigurationType_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Invalid input passed to NSStringForATXModeConfigurationType: %d", v2, 8u);
}

void ATXSlotSetsSerialize_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  *a1 = v2;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSData * _Nullable ATXSlotSetsSerialize(ATXAction *__strong _Nonnull, NSSet<ATXSlotSet *> *__strong _Nonnull)"}];
  [v2 handleFailureInFunction:v3 file:@"ATXSlotSet.m" lineNumber:182 description:@"If there is an opaque slot set then it can be the only slot set in the set of slot sets. There cannot be an opaque slot set amongst other slot sets. This fact is leveraged in the deserialization code."];
}

void ATXSlotSetsSerialize_cold_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSData * _Nullable ATXSlotSetsSerialize(ATXAction *__strong _Nonnull, NSSet<ATXSlotSet *> *__strong _Nonnull)"}];
  [v0 handleFailureInFunction:v1 file:@"ATXSlotSet.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"referencedParams.count < UINT8_MAX"}];
}

void ATXSlotSetsSerialize_cold_3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void appendStr(NSMutableData *__strong, NSString *__strong)"}];
  [v0 handleFailureInFunction:v1 file:@"ATXSlotSet.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"len < UINT16_MAX"}];
}

void ATXSlotSetsSerialize_cold_4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "Error serializing action %@: %@", &v3, 0x16u);
}

void ATXSlotSetsDeserialize_cold_1(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "Checksum mismatch: found %u, computed %u", v3, 0xEu);
}

void ATXSlotSetsDeserialize_cold_3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Error decoding: %@", &v2, 0xCu);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x1EEDC70A0](aString);
  result.length = v2;
  result.location = v1;
  return result;
}
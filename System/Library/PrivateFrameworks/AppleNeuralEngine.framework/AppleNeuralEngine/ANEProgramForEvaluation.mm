@interface ANEProgramForEvaluation
@end

@implementation ANEProgramForEvaluation

void __100___ANEProgramForEvaluation_processRequest_model_qos_qIndex_modelStringID_options_returnValue_error___block_invoke(uint64_t a1, unsigned int *a2)
{
  v81 = *MEMORY[0x1E69E9840];
  v4 = +[_ANELog common];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v75 = NSStringFromSelector(*(a1 + 96));
    v77 = *a2;
    v76 = a2[1];
    v78 = *(a1 + 120);
    *buf = 138413058;
    *v80 = v75;
    *&v80[8] = 1024;
    *&v80[10] = v76;
    *&v80[14] = 1024;
    *&v80[16] = v77;
    *&v80[20] = 1024;
    *&v80[22] = v78;
    _os_log_debug_impl(&dword_1AD246000, v4, OS_LOG_TYPE_DEBUG, "-----> %@: ANEProgramProcessRequestDirect() status=0x%x : statusType=0x%x : qos=0x%x", buf, 0x1Eu);
  }

  if (*a2 != 8)
  {
    if (*a2 == 19)
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
      v5 = *(a2 + 1);
      v6 = MEMORY[0x1E696AEC0];
      v7 = NSStringFromSelector(*(a1 + 96));
      v8 = v7;
      if (v5)
      {
        v9 = [v6 stringWithFormat:@"%@: 0x%x", v7, *v5];

        v10 = [_ANEErrors programInferenceOverflowErrorForMethod:v9];
        v11 = *(*(a1 + 72) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        [_ANEDataReporter addValue:1 forScalarKey:@"InferenceOverflowed"];
LABEL_39:

        goto LABEL_40;
      }

      v23 = [v6 stringWithFormat:@"%@: Expecting EventPayLoad 0x%x", v7, *a2];

      v30 = [_ANEErrors programInferenceOtherErrorForMethod:v23];
      v31 = *(*(a1 + 72) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;

      [_ANEDataReporter addValue:1 forScalarKey:@"ModelFailsToRun"];
      v29 = +[_ANELog common];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(*(a1 + 96));
        objc_claimAutoreleasedReturnValue();
        __100___ANEProgramForEvaluation_processRequest_model_qos_qIndex_modelStringID_options_returnValue_error___block_invoke_cold_1();
      }

      v24 = 0;
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v23 = NSStringFromSelector(*(a1 + 96));
      v27 = [v26 programInferenceOtherErrorForMessage:a2 model:v25 methodName:v23];
      v28 = *(*(a1 + 72) + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v27;
      v24 = 1;
    }

    v22 = 0;
    goto LABEL_21;
  }

  if (a2[1])
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0 && !*(*(*(a1 + 72) + 8) + 40))
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = NSStringFromSelector(*(a1 + 96));
    v16 = [v14 programInferenceOtherErrorForMessage:a2 model:v13 methodName:v15];
    v17 = *(*(a1 + 72) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  if (*(*(*(a1 + 80) + 8) + 24))
  {
    v19 = [_ANEPerformanceStats statsWithRequestPerformanceBuffer:a2 + 4 statsBufferSize:a2 + 12];
    [*(a1 + 48) setPerfStats:v19];

    v20 = [*(a1 + 48) perfStats];
    LOBYTE(v19) = v20 == 0;

    if ((v19 & 1) == 0)
    {
      v21 = [*(a1 + 48) perfStats];
      v22 = [v21 hwExecutionTime];

      v23 = [*(a1 + 48) perfStats];
      [v23 emitPerfcounterSignpostsWithModelStringID:*(a1 + 104)];
      v24 = 1;
LABEL_21:

      goto LABEL_22;
    }
  }

  v22 = 0;
  v24 = 1;
LABEL_22:
  v33 = *(a1 + 120);
  v34 = *(a1 + 104);
  v35 = *(a1 + 48);
  v36 = *(a1 + 56);
  kdebug_trace();
  v37 = +[_ANELog common];
  v38 = v37;
  v39 = *(a1 + 112);
  if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    v40 = *(a1 + 120);
    v41 = *(a1 + 104);
    v42 = *(a1 + 48);
    v43 = MEMORY[0x1B26F37D0](*(a1 + 56));
    *buf = 67109888;
    *v80 = v40;
    *&v80[4] = 2048;
    *&v80[6] = v42;
    *&v80[14] = 2048;
    *&v80[16] = v41;
    *&v80[24] = 2048;
    *&v80[26] = v43;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v38, OS_SIGNPOST_EVENT, v39, "_ANEF_MODEL_EVAL_DRIVER_REQUEST", "qos:%u r:%p modelStringID:%llu completion:%p", buf, 0x26u);
  }

  if (*(a1 + 124) == 1)
  {
    v44 = *(a1 + 120);
    v45 = *(a1 + 48);
    v46 = *(a1 + 104);
    kdebug_trace();
    v47 = +[_ANELog common];
    v9 = v47;
    v48 = *(a1 + 112);
    if (v48 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v47))
    {
      goto LABEL_39;
    }

    v49 = *(a1 + 120);
    v50 = *(a1 + 48);
    v51 = *(a1 + 104);
    *buf = 67109888;
    *v80 = v49;
    *&v80[4] = 2048;
    *&v80[6] = v50;
    *&v80[14] = 2048;
    *&v80[16] = v51;
    *&v80[24] = 2048;
    *&v80[26] = v22;
    v52 = "qos:%u r:%p modelStringID:%llu hwExecutionNS:%lu";
    goto LABEL_38;
  }

  if (v24)
  {
    v53 = *(*(*(a1 + 64) + 8) + 24);
    v54 = *(*(*(a1 + 72) + 8) + 40);
    (*(*(a1 + 56) + 16))();
  }

  v55 = *(a1 + 120);
  v56 = *(a1 + 48);
  v57 = *(a1 + 104);
  kdebug_trace();
  v58 = +[_ANELog common];
  v59 = v58;
  v60 = *(a1 + 112);
  if (v60 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
  {
    v61 = *(a1 + 120);
    v62 = *(a1 + 48);
    v63 = *(a1 + 104);
    *buf = 67109888;
    *v80 = v61;
    *&v80[4] = 2048;
    *&v80[6] = v62;
    *&v80[14] = 2048;
    *&v80[16] = v63;
    *&v80[24] = 2048;
    *&v80[26] = v22;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v59, OS_SIGNPOST_EVENT, v60, "_ANEF_MODEL_EVAL_DRIVER_REQUEST", "qos:%u r:%p modelStringID:%llu hwExecutionNS:%lu", buf, 0x26u);
  }

  *(*(*(a1 + 88) + 8) + 24) = 1;
  v64 = [*(a1 + 40) requestsInFlight];
  dispatch_semaphore_signal(v64);

  [*(a1 + 40) setCurrentAsyncRequestsInFlight:{objc_msgSend(*(a1 + 40), "currentAsyncRequestsInFlight") - 1}];
  v65 = [_ANEQoSMapper queueIndexForQoS:*(a1 + 120)];
  if (kdebug_is_enabled())
  {
    v66 = v65 | (*(a1 + 120) << 32);
    v67 = *(a1 + 48);
    v68 = *(a1 + 104);
    v69 = *(*(*(a1 + 64) + 8) + 24);
    kdebug_trace();
    v70 = +[_ANELog common];
    v9 = v70;
    v48 = *(a1 + 112);
    if (v48 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v70))
    {
      goto LABEL_39;
    }

    v71 = *(a1 + 48);
    v72 = *(a1 + 104);
    v73 = *(*(*(a1 + 64) + 8) + 24);
    *buf = 134218752;
    *v80 = v71;
    *&v80[8] = 2048;
    *&v80[10] = v66;
    *&v80[18] = 2048;
    *&v80[20] = v72;
    *&v80[28] = 1024;
    *&v80[30] = v73;
    v52 = " r:%p packedQOSandQID:%llu modelStringID:%llu ok:%u";
LABEL_38:
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v9, OS_SIGNPOST_EVENT, v48, "_ANEF_MODEL_EVAL_DRIVER_REQUEST", v52, buf, 0x26u);
    goto LABEL_39;
  }

LABEL_40:
  v74 = *MEMORY[0x1E69E9840];
}

void __100___ANEProgramForEvaluation_processRequest_model_qos_qIndex_modelStringID_options_returnValue_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  v2 = *(v1 + 32);
  *v3 = 138412546;
  *(v3 + 4) = v4;
  *(v3 + 12) = 2112;
  *(v3 + 14) = v2;
  _os_log_error_impl(&dword_1AD246000, v6, OS_LOG_TYPE_ERROR, "%@: Expecting EventPayLoad lModel=%@", v5, 0x16u);
}

@end
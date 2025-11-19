@interface ATXFeedback
@end

@implementation ATXFeedback

void __51___ATXFeedback_initWithDataStore_histogramManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeFeedbackForBundles:v3];
}

void __30___ATXFeedback_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_25;
  sharedInstance__pasExprOnceResult_25 = v1;

  objc_autoreleasePoolPop(v0);
}

void __49___ATXFeedback_loadHistogramsInMemoryIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 48);
  v4 = a2;
  v5 = [v3 categoricalHistogramForLaunchType:45];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:46];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:47];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:48];
  v12 = v4[4];
  v4[4] = v11;

  v13 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:53];
  v14 = v4[5];
  v4[5] = v13;

  v15 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:54];
  v16 = v4[6];
  v4[6] = v15;

  v17 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:55];
  v18 = v4[7];
  v4[7] = v17;

  v19 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:56];
  v20 = v4[8];
  v4[8] = v19;

  v21 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:57];
  v22 = v4[9];
  v4[9] = v21;

  v23 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:58];
  v24 = v4[10];
  v4[10] = v23;

  v25 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:59];
  v26 = v4[11];
  v4[11] = v25;

  v27 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:60];
  v28 = v4[12];
  v4[12] = v27;

  v29 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:87];
  v30 = v4[13];
  v4[13] = v29;

  v31 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:63];
  v32 = v4[14];
  v4[14] = v31;

  v33 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:64];
  v34 = v4[15];
  v4[15] = v33;

  v35 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:65];
  v36 = v4[16];
  v4[16] = v35;

  v37 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:66];
  v38 = v4[17];
  v4[17] = v37;

  v39 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:67];
  v40 = v4[18];
  v4[18] = v39;

  v41 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:68];
  v42 = v4[19];
  v4[19] = v41;

  v43 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:69];
  v44 = v4[20];
  v4[20] = v43;

  v45 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:70];
  v46 = v4[21];
  v4[21] = v45;

  v47 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:71];
  v48 = v4[22];
  v4[22] = v47;

  v49 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:72];
  v50 = v4[23];
  v4[23] = v49;

  v51 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:73];
  v52 = v4[24];
  v4[24] = v51;

  v53 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:74];
  v54 = v4[25];
  v4[25] = v53;

  v55 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:88];
  v56 = v4[26];
  v4[26] = v55;

  v57 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:75];
  v58 = v4[27];
  v4[27] = v57;

  v59 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:76];
  v60 = v4[28];
  v4[28] = v59;

  v61 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:77];
  v62 = v4[29];
  v4[29] = v61;

  v63 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:78];
  v64 = v4[30];
  v4[30] = v63;

  v65 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:79];
  v66 = v4[31];
  v4[31] = v65;

  v67 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:80];
  v68 = v4[32];
  v4[32] = v67;

  v69 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:81];
  v70 = v4[33];
  v4[33] = v69;

  v71 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:82];
  v72 = v4[34];
  v4[34] = v71;

  v73 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:83];
  v74 = v4[35];
  v4[35] = v73;

  v75 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:84];
  v76 = v4[36];
  v4[36] = v75;

  v77 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:85];
  v78 = v4[37];
  v4[37] = v77;

  v79 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:86];
  v80 = v4[38];
  v4[38] = v79;

  v81 = [*(*(a1 + 32) + 48) categoricalHistogramForLaunchType:89];
  v82 = v4[39];
  v4[39] = v81;
}

void __38___ATXFeedback_unloadCachedHistograms__block_invoke(uint64_t a1, void *a2)
{
  v43 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = v43[1];
  v43[1] = 0;

  v5 = v43[2];
  v43[2] = 0;

  v6 = v43[3];
  v43[3] = 0;

  v7 = v43[4];
  v43[4] = 0;

  v8 = v43[5];
  v43[5] = 0;

  v9 = v43[6];
  v43[6] = 0;

  v10 = v43[7];
  v43[7] = 0;

  v11 = v43[8];
  v43[8] = 0;

  v12 = v43[9];
  v43[9] = 0;

  v13 = v43[10];
  v43[10] = 0;

  v14 = v43[11];
  v43[11] = 0;

  v15 = v43[12];
  v43[12] = 0;

  v16 = v43[13];
  v43[13] = 0;

  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:45];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:46];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:47];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:48];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:53];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:54];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:55];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:56];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:57];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:58];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:59];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:60];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:87];
  v17 = v43[14];
  v43[14] = 0;

  v18 = v43[15];
  v43[15] = 0;

  v19 = v43[16];
  v43[16] = 0;

  v20 = v43[17];
  v43[17] = 0;

  v21 = v43[18];
  v43[18] = 0;

  v22 = v43[19];
  v43[19] = 0;

  v23 = v43[20];
  v43[20] = 0;

  v24 = v43[21];
  v43[21] = 0;

  v25 = v43[22];
  v43[22] = 0;

  v26 = v43[23];
  v43[23] = 0;

  v27 = v43[24];
  v43[24] = 0;

  v28 = v43[25];
  v43[25] = 0;

  v29 = v43[26];
  v43[26] = 0;

  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:63];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:64];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:65];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:66];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:67];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:68];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:69];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:70];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:71];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:72];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:73];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:74];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:88];
  v30 = v43[27];
  v43[27] = 0;

  v31 = v43[28];
  v43[28] = 0;

  v32 = v43[29];
  v43[29] = 0;

  v33 = v43[30];
  v43[30] = 0;

  v34 = v43[31];
  v43[31] = 0;

  v35 = v43[32];
  v43[32] = 0;

  v36 = v43[33];
  v43[33] = 0;

  v37 = v43[34];
  v43[34] = 0;

  v38 = v43[35];
  v43[35] = 0;

  v39 = v43[36];
  v43[36] = 0;

  v40 = v43[37];
  v43[37] = 0;

  v41 = v43[38];
  v43[38] = 0;

  v42 = v43[39];
  v43[39] = 0;

  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:75];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:76];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:77];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:78];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:79];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:80];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:81];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:82];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:83];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:84];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:85];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:86];
  [*(*(a1 + 32) + 48) purgeHistogramForLaunchType:89];
  objc_autoreleasePoolPop(v3);
}

void __30___ATXFeedback_doDecayAtTime___block_invoke(uint64_t a1, double *a2)
{
  v4 = *(a1 + 40);
  v5 = v4 - *a2;
  if (*a2 > 0.0 && v5 > 30.0)
  {
    +[_ATXFeedbackConstants decayHalfLifeSeconds];
    *(*(*(a1 + 32) + 8) + 24) = exp2(-v5 / v7);
    v4 = *(a1 + 40);
  }

  *a2 = v4;
  v8 = a2[2];
  a2[1] = *(*(*(a1 + 32) + 8) + 24) * a2[1];
  a2[2] = *(*(*(a1 + 32) + 8) + 24) * v8;
}

double __30___ATXFeedback_doDecayAtTime___block_invoke_2(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = a3[1];
  *a3 = *(*(*(a1 + 32) + 8) + 24) * *a3;
  result = *(*(*(a1 + 32) + 8) + 24) * v3;
  a3[1] = result;
  return result;
}

void __97___ATXFeedback_feedbackLaunchedWithConsumerType_forBundleId_rejected_explicitlyRejected_context___block_invoke(uint64_t a1, void *a2, double *a3)
{
  v13 = a2;
  if ([*(a1 + 32) isEqualToString:?])
  {
    v5 = *(a1 + 40);
    if ([objc_opt_class() isWidgetOrSpotlight:*(a1 + 88)])
    {
      *a3 = *a3 + 1.0;
      ++*(*(*(a1 + 64) + 8) + 24);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v7 = WeakRetained;
    v8 = *(a1 + 88);
    v9 = *(a1 + 48);
    v10 = v13;
    v11 = 0;
  }

  else if ([*(a1 + 56) containsObject:v13])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v7 = WeakRetained;
    v8 = *(a1 + 88);
    v9 = *(a1 + 48);
    v10 = v13;
    v11 = 2;
  }

  else
  {
    v12 = *(a1 + 40);
    if ([objc_opt_class() isWidgetOrSpotlight:*(a1 + 88)])
    {
      a3[1] = a3[1] + 1.0;
      ++*(*(*(a1 + 72) + 8) + 24);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v7 = WeakRetained;
    v8 = *(a1 + 88);
    v9 = *(a1 + 48);
    v10 = v13;
    v11 = 1;
  }

  [WeakRetained populateFeedbackForConsumerType:v8 forBundleId:v10 withContext:v9 forFeedbackCategory:v11];
}

double __97___ATXFeedback_feedbackLaunchedWithConsumerType_forBundleId_rejected_explicitlyRejected_context___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a2 + 8) = *(a2 + 8) + *(*(*(a1 + 32) + 8) + 24);
  result = v2 + *(*(*(a1 + 40) + 8) + 24);
  *(a2 + 16) = result;
  return result;
}

void __92___ATXFeedback_populateFeedbackForConsumerType_forBundleId_withContext_forFeedbackCategory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 96);
  if ((v5 - 1) < 2)
  {
    v7 = (a1 + 104);
    v29 = *(a1 + 104);
    if (v29 != 2)
    {
      if (v29 == 1)
      {
        v72 = v3[3];
        v73 = *(a1 + 32);
        v74 = [*(a1 + 40) timeContext];
        v75 = [v74 date];
        [v72 addLaunchWithBundleId:v73 date:v75 category:*(a1 + 48)];

        v76 = v4[4];
        v77 = *(a1 + 32);
        v78 = [*(a1 + 40) timeContext];
        v79 = [v78 date];
        [v76 addLaunchWithBundleId:v77 date:v79 category:*(a1 + 56)];

        v80 = v4[6];
        v81 = *(a1 + 32);
        v82 = [*(a1 + 40) timeContext];
        v83 = [v82 date];
        [v80 addLaunchWithBundleId:v81 date:v83 category:*(a1 + 64)];

        v84 = v4[8];
        v85 = *(a1 + 32);
        v86 = [*(a1 + 40) timeContext];
        v87 = [v86 date];
        [v84 addLaunchWithBundleId:v85 date:v87 category:*(a1 + 72)];

        v88 = v4[10];
        v89 = *(a1 + 32);
        v90 = [*(a1 + 40) timeContext];
        v91 = [v90 date];
        [v88 addLaunchWithBundleId:v89 date:v91 category:*(a1 + 80)];

        v28 = v4[12];
        goto LABEL_26;
      }

      if (!v29)
      {
        v30 = v3[1];
        v31 = *(a1 + 32);
        v32 = [*(a1 + 40) timeContext];
        v33 = [v32 date];
        [v30 addLaunchWithBundleId:v31 date:v33 category:*(a1 + 48)];

        v34 = v4[2];
        v35 = *(a1 + 32);
        v36 = [*(a1 + 40) timeContext];
        v37 = [v36 date];
        [v34 addLaunchWithBundleId:v35 date:v37 category:*(a1 + 56)];

        v38 = v4[5];
        v39 = *(a1 + 32);
        v40 = [*(a1 + 40) timeContext];
        v41 = [v40 date];
        [v38 addLaunchWithBundleId:v39 date:v41 category:*(a1 + 64)];

        v42 = v4[7];
        v43 = *(a1 + 32);
        v44 = [*(a1 + 40) timeContext];
        v45 = [v44 date];
        [v42 addLaunchWithBundleId:v43 date:v45 category:*(a1 + 72)];

        v46 = v4[9];
        v47 = *(a1 + 32);
        v48 = [*(a1 + 40) timeContext];
        v49 = [v48 date];
        [v46 addLaunchWithBundleId:v47 date:v49 category:*(a1 + 80)];

        v28 = v4[11];
        goto LABEL_26;
      }

      v92 = __atxlog_handle_default();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v28 = v3[13];
    goto LABEL_29;
  }

  if (v5 == 15)
  {
    v7 = (a1 + 104);
    v50 = *(a1 + 104);
    if (v50 != 2)
    {
      if (v50 == 1)
      {
        v113 = __atxlog_handle_feedback();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
        {
          __92___ATXFeedback_populateFeedbackForConsumerType_forBundleId_withContext_forFeedbackCategory___block_invoke_cold_2(a1);
        }

        v114 = v4[33];
        v115 = *(a1 + 32);
        v116 = [*(a1 + 40) timeContext];
        v117 = [v116 date];
        [v114 addLaunchWithBundleId:v115 date:v117 category:*(a1 + 48)];

        v118 = v4[34];
        v119 = *(a1 + 32);
        v120 = [*(a1 + 40) timeContext];
        v121 = [v120 date];
        [v118 addLaunchWithBundleId:v119 date:v121 category:*(a1 + 56)];

        v122 = v4[35];
        v123 = *(a1 + 32);
        v124 = [*(a1 + 40) timeContext];
        v125 = [v124 date];
        [v122 addLaunchWithBundleId:v123 date:v125 category:*(a1 + 64)];

        v126 = v4[36];
        v127 = *(a1 + 32);
        v128 = [*(a1 + 40) timeContext];
        v129 = [v128 date];
        [v126 addLaunchWithBundleId:v127 date:v129 category:*(a1 + 72)];

        v130 = v4[37];
        v131 = *(a1 + 32);
        v132 = [*(a1 + 40) timeContext];
        v133 = [v132 date];
        [v130 addLaunchWithBundleId:v131 date:v133 category:*(a1 + 80)];

        v28 = v4[38];
        goto LABEL_26;
      }

      if (!v50)
      {
        v51 = __atxlog_handle_feedback();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          __92___ATXFeedback_populateFeedbackForConsumerType_forBundleId_withContext_forFeedbackCategory___block_invoke_cold_3(a1);
        }

        v52 = v4[27];
        v53 = *(a1 + 32);
        v54 = [*(a1 + 40) timeContext];
        v55 = [v54 date];
        [v52 addLaunchWithBundleId:v53 date:v55 category:*(a1 + 48)];

        v56 = v4[28];
        v57 = *(a1 + 32);
        v58 = [*(a1 + 40) timeContext];
        v59 = [v58 date];
        [v56 addLaunchWithBundleId:v57 date:v59 category:*(a1 + 56)];

        v60 = v4[29];
        v61 = *(a1 + 32);
        v62 = [*(a1 + 40) timeContext];
        v63 = [v62 date];
        [v60 addLaunchWithBundleId:v61 date:v63 category:*(a1 + 64)];

        v64 = v4[30];
        v65 = *(a1 + 32);
        v66 = [*(a1 + 40) timeContext];
        v67 = [v66 date];
        [v64 addLaunchWithBundleId:v65 date:v67 category:*(a1 + 72)];

        v68 = v4[31];
        v69 = *(a1 + 32);
        v70 = [*(a1 + 40) timeContext];
        v71 = [v70 date];
        [v68 addLaunchWithBundleId:v69 date:v71 category:*(a1 + 80)];

        v28 = v4[32];
        goto LABEL_26;
      }

      v92 = __atxlog_handle_default();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
LABEL_34:
        __92___ATXFeedback_populateFeedbackForConsumerType_forBundleId_withContext_forFeedbackCategory___block_invoke_cold_1(v7);
      }

LABEL_35:

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"populateFeedbackForConsumerType called with invalid _ATXFeedbackCategory value of %lu", *v7}];
      goto LABEL_36;
    }

    v28 = v3[39];
LABEL_29:
    v134 = *(a1 + 32);
    v135 = [*(a1 + 40) timeContext];
    v136 = [v135 date];
    v137 = *(a1 + 48);
    goto LABEL_30;
  }

  if (v5 == 14)
  {
    v7 = (a1 + 104);
    v6 = *(a1 + 104);
    if (v6 != 2)
    {
      if (v6 == 1)
      {
        v93 = v3[20];
        v94 = *(a1 + 32);
        v95 = [*(a1 + 40) timeContext];
        v96 = [v95 date];
        [v93 addLaunchWithBundleId:v94 date:v96 category:*(a1 + 48)];

        v97 = v4[21];
        v98 = *(a1 + 32);
        v99 = [*(a1 + 40) timeContext];
        v100 = [v99 date];
        [v97 addLaunchWithBundleId:v98 date:v100 category:*(a1 + 56)];

        v101 = v4[22];
        v102 = *(a1 + 32);
        v103 = [*(a1 + 40) timeContext];
        v104 = [v103 date];
        [v101 addLaunchWithBundleId:v102 date:v104 category:*(a1 + 64)];

        v105 = v4[23];
        v106 = *(a1 + 32);
        v107 = [*(a1 + 40) timeContext];
        v108 = [v107 date];
        [v105 addLaunchWithBundleId:v106 date:v108 category:*(a1 + 72)];

        v109 = v4[24];
        v110 = *(a1 + 32);
        v111 = [*(a1 + 40) timeContext];
        v112 = [v111 date];
        [v109 addLaunchWithBundleId:v110 date:v112 category:*(a1 + 80)];

        v28 = v4[25];
        goto LABEL_26;
      }

      if (!v6)
      {
        v8 = v3[14];
        v9 = *(a1 + 32);
        v10 = [*(a1 + 40) timeContext];
        v11 = [v10 date];
        [v8 addLaunchWithBundleId:v9 date:v11 category:*(a1 + 48)];

        v12 = v4[15];
        v13 = *(a1 + 32);
        v14 = [*(a1 + 40) timeContext];
        v15 = [v14 date];
        [v12 addLaunchWithBundleId:v13 date:v15 category:*(a1 + 56)];

        v16 = v4[16];
        v17 = *(a1 + 32);
        v18 = [*(a1 + 40) timeContext];
        v19 = [v18 date];
        [v16 addLaunchWithBundleId:v17 date:v19 category:*(a1 + 64)];

        v20 = v4[17];
        v21 = *(a1 + 32);
        v22 = [*(a1 + 40) timeContext];
        v23 = [v22 date];
        [v20 addLaunchWithBundleId:v21 date:v23 category:*(a1 + 72)];

        v24 = v4[18];
        v25 = *(a1 + 32);
        v26 = [*(a1 + 40) timeContext];
        v27 = [v26 date];
        [v24 addLaunchWithBundleId:v25 date:v27 category:*(a1 + 80)];

        v28 = v4[19];
LABEL_26:
        v134 = *(a1 + 32);
        v135 = [*(a1 + 40) timeContext];
        v136 = [v135 date];
        v137 = *(a1 + 88);
LABEL_30:
        [v28 addLaunchWithBundleId:v134 date:v136 category:v137];

        goto LABEL_36;
      }

      v92 = __atxlog_handle_default();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v28 = v3[26];
    goto LABEL_29;
  }

LABEL_36:
}

double __69___ATXFeedback_putFeedbackScoresForApps_intoScores_confirms_rejects___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 32) + 24) = *(a1 + 40) * ((*(a1 + 48) + *(a2 + 8)) / (*(a1 + 40) + *(a2 + 8) + *(a2 + 16)));
  v2 = *(a1 + 32);
  result = *(a1 + 40) - *(v2 + 24);
  *(v2 + 32) = result;
  return result;
}

void __69___ATXFeedback_putFeedbackScoresForApps_intoScores_confirms_rejects___block_invoke_2(void *a1, void *a2, double *a3)
{
  v5 = a2;
  [_ATXFeedbackConstants alphaForBundleId:v5];
  v7 = v6;
  [_ATXFeedbackConstants betaForBundleId:v5];
  v9 = v8;

  v10 = _ATXFeedbackComputeBetaMean(v7 + *(a1[4] + 24), v9 + *(a1[4] + 32));
  v11 = _ATXFeedbackComputeBetaMean(v7 + *a3 + *(a1[4] + 24), v9 + a3[1] + *(a1[4] + 32));
  if (a1[8])
  {
    v12 = *(a1[5] + 8);
    v13 = *(v12 + 24);
    *v13 = v11 / v10;
    *(v12 + 24) = v13 + 1;
  }

  if (a1[9])
  {
    v14 = *(a1[6] + 8);
    v15 = *(v14 + 24);
    *v15 = *a3;
    *(v14 + 24) = v15 + 1;
  }

  if (a1[10])
  {
    v16 = *(a1[7] + 8);
    v17 = *(v16 + 24);
    *v17 = *(a3 + 1);
    *(v16 + 24) = v17 + 1;
  }
}

void __92___ATXFeedback_populateFeedbackForConsumerType_forBundleId_withContext_forFeedbackCategory___block_invoke_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v2, v3, "populateFeedbackForConsumerType called with invalid _ATXFeedbackCategory value of %lu", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __92___ATXFeedback_populateFeedbackForConsumerType_forBundleId_withContext_forFeedbackCategory___block_invoke_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEBUG, "ATXConsumerTypeAppDirectory got reject for %@", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __92___ATXFeedback_populateFeedbackForConsumerType_forBundleId_withContext_forFeedbackCategory___block_invoke_cold_3(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEBUG, "ATXConsumerTypeAppDirectory got confirm for %@", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end
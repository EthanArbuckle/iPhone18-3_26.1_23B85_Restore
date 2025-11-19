@interface HKCardioFitnessClassificationUtilities
+ (id)_cardioFitnessLevelTransitionDatesForDateInterval:(id)a3 biologicalSex:(int64_t)a4 dateOfBirth:(id)a5;
+ (id)_cardioFitnessLevels;
+ (id)_flattenedThresholdsForLevelData:(id)a3;
+ (id)_parseCoreMotionClassificationData:(id)a3;
+ (id)_queryCoreMotionClassifications;
+ (id)_queryCoreMotionClassificationsForBiologicalSex:(int64_t)a3 age:(int64_t)a4;
+ (id)_stubbedCardioFitnessLevelData;
+ (id)analyticsStringForLevel:(int64_t)a3;
+ (id)cardioFitnessDataForBiologicalSex:(int64_t)a3;
+ (id)cardioFitnessDataForBiologicalSex:(int64_t)a3 age:(int64_t)a4;
+ (id)cardioFitnessDataForLevel:(int64_t)a3 biologicalSex:(int64_t)a4 age:(int64_t)a5;
+ (id)cardioFitnessDataForLevel:(int64_t)a3 date:(id)a4 healthStore:(id)a5;
+ (id)cardioFitnessDataForVO2Max:(double)a3 biologicalSex:(int64_t)a4 age:(int64_t)a5;
+ (id)cardioFitnessLevelDateIntervalsWithDateInterval:(id)a3 healthStore:(id)a4;
+ (id)cardioFitnessPropertiesForDate:(id)a3 healthStore:(id)a4;
+ (id)flattenedCardioFitnessDataForBiologicalSex:(int64_t)a3;
+ (int64_t)cardioFitnessLevelForVO2Max:(double)a3 biologicalSex:(int64_t)a4 age:(int64_t)a5;
+ (int64_t)cardioFitnessLevelForVO2MaxSample:(id)a3 inHealthStore:(id)a4;
+ (void)_cardioFitnessLevels;
@end

@implementation HKCardioFitnessClassificationUtilities

+ (id)_cardioFitnessLevels
{
  v3 = _cardioFitnessLookupTable;
  if (!_cardioFitnessLookupTable)
  {
    v4 = [a1 _queryCoreMotionClassifications];
    if (v4)
    {
      objc_storeStrong(&_cardioFitnessLookupTable, v4);
    }

    else
    {
      _HKInitializeLogging();
      v5 = HKLogDefault;
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
      {
        +[(HKCardioFitnessClassificationUtilities *)a1];
      }

      v6 = [a1 _stubbedCardioFitnessLevelData];
      v7 = _cardioFitnessLookupTable;
      _cardioFitnessLookupTable = v6;
    }

    v3 = _cardioFitnessLookupTable;
  }

  return v3;
}

+ (id)_stubbedCardioFitnessLevelData
{
  v120[3] = *MEMORY[0x1E69E9840];
  v119[0] = &unk_1F0684650;
  v117[0] = &unk_1F0684668;
  v115[0] = &unk_1F0684680;
  v68 = [HKCardioFitnessLevelData initWithCardioFitnessLevel:"initWithCardioFitnessLevel:biologicalSex:ageLowerBound:ageUpperBound:vo2MaxLowerBound:vo2MaxUpperBound:" biologicalSex:0 ageLowerBound:1 ageUpperBound:20 vo2MaxLowerBound:29 vo2MaxUpperBound:?];
  v116[0] = v68;
  v115[1] = &unk_1F0684650;
  v67 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:1 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:45.0 vo2MaxUpperBound:?];
  v116[1] = v67;
  v115[2] = &unk_1F0684698;
  v66 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:1 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:55.0 vo2MaxUpperBound:?];
  v116[2] = v66;
  v115[3] = &unk_1F06846B0;
  v65 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:1 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:65.0 vo2MaxUpperBound:?];
  v116[3] = v65;
  v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:4];
  v118[0] = v64;
  v117[1] = &unk_1F06846C8;
  v113[0] = &unk_1F0684680;
  v63 = [HKCardioFitnessLevelData initWithCardioFitnessLevel:"initWithCardioFitnessLevel:biologicalSex:ageLowerBound:ageUpperBound:vo2MaxLowerBound:vo2MaxUpperBound:" biologicalSex:0 ageLowerBound:1 ageUpperBound:30 vo2MaxLowerBound:39 vo2MaxUpperBound:?];
  v114[0] = v63;
  v113[1] = &unk_1F0684650;
  v62 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:1 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:44.0 vo2MaxUpperBound:?];
  v114[1] = v62;
  v113[2] = &unk_1F0684698;
  v61 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:1 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:54.0 vo2MaxUpperBound:?];
  v114[2] = v61;
  v113[3] = &unk_1F06846B0;
  v60 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:1 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:64.0 vo2MaxUpperBound:?];
  v114[3] = v60;
  v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:4];
  v118[1] = v59;
  v117[2] = &unk_1F06846E0;
  v111[0] = &unk_1F0684680;
  v58 = [HKCardioFitnessLevelData initWithCardioFitnessLevel:"initWithCardioFitnessLevel:biologicalSex:ageLowerBound:ageUpperBound:vo2MaxLowerBound:vo2MaxUpperBound:" biologicalSex:0 ageLowerBound:1 ageUpperBound:40 vo2MaxLowerBound:49 vo2MaxUpperBound:?];
  v112[0] = v58;
  v111[1] = &unk_1F0684650;
  v57 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:1 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:43.0 vo2MaxUpperBound:53.0];
  v112[1] = v57;
  v111[2] = &unk_1F0684698;
  v56 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:1 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:53.0 vo2MaxUpperBound:63.0];
  v112[2] = v56;
  v111[3] = &unk_1F06846B0;
  v55 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:1 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:63.0 vo2MaxUpperBound:?];
  v112[3] = v55;
  v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:v111 count:4];
  v118[2] = v54;
  v117[3] = &unk_1F06846F8;
  v109[0] = &unk_1F0684680;
  v53 = [HKCardioFitnessLevelData initWithCardioFitnessLevel:"initWithCardioFitnessLevel:biologicalSex:ageLowerBound:ageUpperBound:vo2MaxLowerBound:vo2MaxUpperBound:" biologicalSex:0 ageLowerBound:1 ageUpperBound:50 vo2MaxLowerBound:59 vo2MaxUpperBound:?];
  v110[0] = v53;
  v109[1] = &unk_1F0684650;
  v52 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:1 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:42.0 vo2MaxUpperBound:52.0];
  v110[1] = v52;
  v109[2] = &unk_1F0684698;
  v51 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:1 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:52.0 vo2MaxUpperBound:62.0];
  v110[2] = v51;
  v109[3] = &unk_1F06846B0;
  v50 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:1 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:62.0 vo2MaxUpperBound:?];
  v110[3] = v50;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:4];
  v118[3] = v49;
  v117[4] = &unk_1F0684710;
  v107[0] = &unk_1F0684680;
  v48 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:1 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:31.0 vo2MaxUpperBound:41.0];
  v108[0] = v48;
  v107[1] = &unk_1F0684650;
  v47 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:1 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:41.0 vo2MaxUpperBound:51.0];
  v108[1] = v47;
  v107[2] = &unk_1F0684698;
  v46 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:1 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:51.0 vo2MaxUpperBound:61.0];
  v108[2] = v46;
  v107[3] = &unk_1F06846B0;
  v45 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:1 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:61.0 vo2MaxUpperBound:?];
  v108[3] = v45;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:4];
  v118[4] = v44;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:5];
  v120[0] = v43;
  v119[1] = &unk_1F0684698;
  v105[0] = &unk_1F0684668;
  v103[0] = &unk_1F0684680;
  v42 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:2 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:35.0 vo2MaxUpperBound:45.0];
  v104[0] = v42;
  v103[1] = &unk_1F0684650;
  v41 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:2 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:45.0 vo2MaxUpperBound:55.0];
  v104[1] = v41;
  v103[2] = &unk_1F0684698;
  v40 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:2 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:55.0 vo2MaxUpperBound:65.0];
  v104[2] = v40;
  v103[3] = &unk_1F06846B0;
  v39 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:2 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:65.0 vo2MaxUpperBound:75.0];
  v104[3] = v39;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:4];
  v106[0] = v38;
  v105[1] = &unk_1F06846C8;
  v101[0] = &unk_1F0684680;
  v37 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:2 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:34.0 vo2MaxUpperBound:44.0];
  v102[0] = v37;
  v101[1] = &unk_1F0684650;
  v36 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:2 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:44.0 vo2MaxUpperBound:54.0];
  v102[1] = v36;
  v101[2] = &unk_1F0684698;
  v35 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:2 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:54.0 vo2MaxUpperBound:64.0];
  v102[2] = v35;
  v101[3] = &unk_1F06846B0;
  v34 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:2 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:64.0 vo2MaxUpperBound:74.0];
  v102[3] = v34;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:4];
  v106[1] = v33;
  v105[2] = &unk_1F06846E0;
  v99[0] = &unk_1F0684680;
  v32 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:2 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:33.0 vo2MaxUpperBound:43.0];
  v100[0] = v32;
  v99[1] = &unk_1F0684650;
  v31 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:2 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:43.0 vo2MaxUpperBound:53.0];
  v100[1] = v31;
  v99[2] = &unk_1F0684698;
  v30 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:2 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:53.0 vo2MaxUpperBound:63.0];
  v100[2] = v30;
  v99[3] = &unk_1F06846B0;
  v29 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:2 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:63.0 vo2MaxUpperBound:73.0];
  v100[3] = v29;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:4];
  v106[2] = v28;
  v105[3] = &unk_1F06846F8;
  v97[0] = &unk_1F0684680;
  v27 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:2 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:32.0 vo2MaxUpperBound:42.0];
  v98[0] = v27;
  v97[1] = &unk_1F0684650;
  v26 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:2 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:42.0 vo2MaxUpperBound:52.0];
  v98[1] = v26;
  v97[2] = &unk_1F0684698;
  v25 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:2 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:52.0 vo2MaxUpperBound:62.0];
  v98[2] = v25;
  v97[3] = &unk_1F06846B0;
  v24 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:2 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:62.0 vo2MaxUpperBound:72.0];
  v98[3] = v24;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:4];
  v106[3] = v23;
  v105[4] = &unk_1F0684710;
  v95[0] = &unk_1F0684680;
  v22 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:2 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:31.0 vo2MaxUpperBound:41.0];
  v96[0] = v22;
  v95[1] = &unk_1F0684650;
  v21 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:2 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:41.0 vo2MaxUpperBound:51.0];
  v96[1] = v21;
  v95[2] = &unk_1F0684698;
  v20 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:2 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:51.0 vo2MaxUpperBound:61.0];
  v96[2] = v20;
  v95[3] = &unk_1F06846B0;
  v19 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:2 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:61.0 vo2MaxUpperBound:71.0];
  v96[3] = v19;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:4];
  v106[4] = v18;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:5];
  v120[1] = v17;
  v119[2] = &unk_1F06846B0;
  v93[0] = &unk_1F0684668;
  v91[0] = &unk_1F0684680;
  v82 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:3 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:35.0 vo2MaxUpperBound:45.0];
  v92[0] = v82;
  v91[1] = &unk_1F0684650;
  v16 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:3 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:45.0 vo2MaxUpperBound:55.0];
  v92[1] = v16;
  v91[2] = &unk_1F0684698;
  v75 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:3 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:55.0 vo2MaxUpperBound:65.0];
  v92[2] = v75;
  v91[3] = &unk_1F06846B0;
  v81 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:3 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:65.0 vo2MaxUpperBound:75.0];
  v92[3] = v81;
  v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:4];
  v94[0] = v74;
  v93[1] = &unk_1F06846C8;
  v89[0] = &unk_1F0684680;
  v80 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:3 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:34.0 vo2MaxUpperBound:44.0];
  v90[0] = v80;
  v89[1] = &unk_1F0684650;
  v73 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:3 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:44.0 vo2MaxUpperBound:54.0];
  v90[1] = v73;
  v89[2] = &unk_1F0684698;
  v72 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:3 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:54.0 vo2MaxUpperBound:64.0];
  v90[2] = v72;
  v89[3] = &unk_1F06846B0;
  v79 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:3 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:64.0 vo2MaxUpperBound:74.0];
  v90[3] = v79;
  v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:4];
  v94[1] = v71;
  v93[2] = &unk_1F06846E0;
  v87[0] = &unk_1F0684680;
  v78 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:3 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:33.0 vo2MaxUpperBound:43.0];
  v88[0] = v78;
  v87[1] = &unk_1F0684650;
  v70 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:3 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:43.0 vo2MaxUpperBound:53.0];
  v88[1] = v70;
  v87[2] = &unk_1F0684698;
  v69 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:3 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:53.0 vo2MaxUpperBound:63.0];
  v88[2] = v69;
  v87[3] = &unk_1F06846B0;
  v77 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:3 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:63.0 vo2MaxUpperBound:73.0];
  v88[3] = v77;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:4];
  v94[2] = v15;
  v93[3] = &unk_1F06846F8;
  v85[0] = &unk_1F0684680;
  v76 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:3 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:32.0 vo2MaxUpperBound:42.0];
  v86[0] = v76;
  v85[1] = &unk_1F0684650;
  v14 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:3 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:42.0 vo2MaxUpperBound:52.0];
  v86[1] = v14;
  v85[2] = &unk_1F0684698;
  v2 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:3 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:52.0 vo2MaxUpperBound:62.0];
  v86[2] = v2;
  v85[3] = &unk_1F06846B0;
  v3 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:3 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:62.0 vo2MaxUpperBound:72.0];
  v86[3] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:4];
  v94[3] = v4;
  v93[4] = &unk_1F0684710;
  v83[0] = &unk_1F0684680;
  v5 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:3 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:31.0 vo2MaxUpperBound:41.0];
  v84[0] = v5;
  v83[1] = &unk_1F0684650;
  v6 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:3 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:41.0 vo2MaxUpperBound:51.0];
  v84[1] = v6;
  v83[2] = &unk_1F0684698;
  v7 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:3 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:51.0 vo2MaxUpperBound:61.0];
  v84[2] = v7;
  v83[3] = &unk_1F06846B0;
  v8 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:3 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:61.0 vo2MaxUpperBound:71.0];
  v84[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:4];
  v94[4] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:5];
  v120[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:v119 count:3];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)_parseCoreMotionClassificationData:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 count])
  {
    v6 = [v5 firstObject];
    v7 = [v6 biologicalSex];
    v8 = v7 - 4;
    if ((v7 - 4) >= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v10 = [v5 firstObject];
    v11 = [v10 ageLowerBound];
    if (v11 <= 59)
    {
      if (v11 <= 49)
      {
        if (v11 <= 39)
        {
          if (v11 <= 29)
          {
            if (v11 >= 20)
            {
              v12 = 20;
            }

            else
            {
              v12 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v12 = 30;
          }
        }

        else
        {
          v12 = 40;
        }
      }

      else
      {
        v12 = 50;
      }
    }

    else
    {
      v12 = 60;
    }

    v13 = 0;
    if (v8 >= 0xFFFFFFFFFFFFFFFDLL && v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v50 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
      v54 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
      v56 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v49 = v5;
      obj = v5;
      v14 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (v14)
      {
        v15 = v14;
        v47 = a1;
        v48 = a2;
        v53 = *v58;
        do
        {
          v16 = 0;
          v17 = v12;
          v51 = v15;
          do
          {
            if (*v58 != v53)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v57 + 1) + 8 * v16);
            context = objc_autoreleasePoolPush();
            v19 = [v18 biologicalSex];
            if ((v19 - 1) >= 3)
            {
              v20 = 0;
            }

            else
            {
              v20 = v19;
            }

            v21 = [v18 ageLowerBound];
            v22 = 20;
            if (v21 < 20)
            {
              v22 = 0x7FFFFFFFFFFFFFFFLL;
            }

            if (v21 > 29)
            {
              v22 = 30;
            }

            if (v21 > 39)
            {
              v22 = 40;
            }

            if (v21 > 49)
            {
              v22 = 50;
            }

            if (v21 <= 59)
            {
              v12 = v22;
            }

            else
            {
              v12 = 60;
            }

            if (v20 != v9)
            {
              if (v20 <= v9)
              {
                [(HKCardioFitnessClassificationUtilities *)v48 _parseCoreMotionClassificationData:v47];
              }

              v23 = [v56 copy];
              v24 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
              [v54 setObject:v23 forKeyedSubscript:v24];

              [v56 removeAllObjects];
              v25 = [v54 copy];
              v26 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
              [v50 setObject:v25 forKeyedSubscript:v26];

              [v54 removeAllObjects];
              v17 = v12;
              v9 = v20;
              v15 = v51;
            }

            if (v12 != v17)
            {
              if (v12 <= v17)
              {
                [(HKCardioFitnessClassificationUtilities *)v48 _parseCoreMotionClassificationData:v47];
              }

              v27 = [v56 copy];
              v28 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
              [v54 setObject:v27 forKeyedSubscript:v28];

              [v56 removeAllObjects];
            }

            v29 = [v18 classificationType];
            if (v29 >= 4)
            {
              v30 = -1;
            }

            else
            {
              v30 = v29;
            }

            v31 = [HKCardioFitnessLevelData alloc];
            v32 = v9;
            v33 = [v18 ageLowerBound];
            v34 = [v18 ageUpperBound];
            [v18 vo2MaxLowerBound];
            v36 = v35;
            [v18 vo2MaxUpperBound];
            v37 = v33;
            v9 = v32;
            v39 = [(HKCardioFitnessLevelData *)v31 initWithCardioFitnessLevel:v30 biologicalSex:v20 ageLowerBound:v37 ageUpperBound:v34 vo2MaxLowerBound:v36 vo2MaxUpperBound:v38];
            v40 = [MEMORY[0x1E696AD98] numberWithInteger:v30];
            [v56 setObject:v39 forKeyedSubscript:v40];

            objc_autoreleasePoolPop(context);
            ++v16;
            v17 = v12;
          }

          while (v15 != v16);
          v15 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
        }

        while (v15);
      }

      v41 = [v56 copy];
      v42 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
      [v54 setObject:v41 forKeyedSubscript:v42];

      v43 = [v54 copy];
      v44 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
      [v50 setObject:v43 forKeyedSubscript:v44];

      v13 = [v50 copy];
      v5 = v49;
    }
  }

  else
  {
    v13 = 0;
  }

  v45 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)_queryCoreMotionClassifications
{
  v3 = objc_alloc_init(MEMORY[0x1E6963508]);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__35;
  v11 = __Block_byref_object_dispose__35;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__HKCardioFitnessClassificationUtilities__queryCoreMotionClassifications__block_invoke;
  v6[3] = &unk_1E7380B28;
  v6[4] = &v7;
  v6[5] = a1;
  [v3 queryAllClassificationsWithHandler:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __73__HKCardioFitnessClassificationUtilities__queryCoreMotionClassifications__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    _HKInitializeLogging();
    v7 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_INFO, "%{public}@: Retrieved all cardio fitness classifications", &v14, 0xCu);
    }

    v9 = [*(a1 + 40) _parseCoreMotionClassificationData:v5];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      __73__HKCardioFitnessClassificationUtilities__queryCoreMotionClassifications__block_invoke_cold_1(a1, v12, v6);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)_queryCoreMotionClassificationsForBiologicalSex:(int64_t)a3 age:(int64_t)a4
{
  v7 = objc_alloc_init(MEMORY[0x1E6963508]);
  v8 = v7;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__35;
  v17 = __Block_byref_object_dispose__35;
  v18 = 0;
  if ((a3 - 1) >= 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__HKCardioFitnessClassificationUtilities__queryCoreMotionClassificationsForBiologicalSex_age___block_invoke;
  v12[3] = &unk_1E7380B50;
  v12[6] = a3;
  v12[7] = a4;
  v12[4] = &v13;
  v12[5] = a1;
  [v7 queryClassificationForBiologicalSex:v9 age:a4 handler:v12];
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __94__HKCardioFitnessClassificationUtilities__queryCoreMotionClassificationsForBiologicalSex_age___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    _HKInitializeLogging();
    v7 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v16 = 138543875;
      v17 = v8;
      v18 = 2049;
      v19 = v9;
      v20 = 2049;
      v21 = v10;
      _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_INFO, "%{public}@: Retrieved cardio fitness classifications for biological sex: %{private}ld, age: %{private}ld", &v16, 0x20u);
    }

    v11 = [*(a1 + 40) _parseCoreMotionClassificationData:v5];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    _HKInitializeLogging();
    v14 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      __73__HKCardioFitnessClassificationUtilities__queryCoreMotionClassifications__block_invoke_cold_1(a1, v14, v6);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)_flattenedThresholdsForLevelData:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [v3 allKeys];
  v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count") + 1}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v3 hk_sortedKeys];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v3 objectForKeyedSubscript:*(*(&v19 + 1) + 8 * i)];
        if (![v12 cardioFitnessLevel])
        {
          v13 = MEMORY[0x1E696AD98];
          [v12 vo2MaxLowerBound];
          v14 = [v13 numberWithDouble:?];
          [v6 addObject:v14];
        }

        v15 = MEMORY[0x1E696AD98];
        [v12 vo2MaxUpperBound];
        v16 = [v15 numberWithDouble:?];
        [v6 addObject:v16];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)flattenedCardioFitnessDataForBiologicalSex:(int64_t)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [a1 _cardioFitnessLevels];
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = 3;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v7 = [v4 objectForKeyedSubscript:v6];

  v8 = [v7 hk_sortedKeys];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __85__HKCardioFitnessClassificationUtilities_flattenedCardioFitnessDataForBiologicalSex___block_invoke;
  v29[3] = &unk_1E7380B78;
  v9 = v7;
  v30 = v9;
  v10 = [v8 hk_map:v29];

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = objc_opt_class();
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17, "rangeValue", v25)}];
        v20 = [v9 objectForKeyedSubscript:v19];
        v21 = [v18 _flattenedThresholdsForLevelData:v20];
        [v11 addObject:v21];
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v14);
  }

  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v12];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

id __85__HKCardioFitnessClassificationUtilities_flattenedCardioFitnessDataForBiologicalSex___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = [v2 objectForKeyedSubscript:&unk_1F0684680];

  v4 = [MEMORY[0x1E696B098] valueWithRange:{objc_msgSend(v3, "ageLowerBound"), objc_msgSend(v3, "ageUpperBound") - objc_msgSend(v3, "ageLowerBound")}];

  return v4;
}

+ (id)cardioFitnessDataForBiologicalSex:(int64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [a1 _cardioFitnessLevels];
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = 3;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v7 = [v4 objectForKeyedSubscript:v6];

  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [v7 allKeys];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [v7 objectForKeyedSubscript:v14];
        v16 = [v15 hk_allValuesBySortedKeys];
        [v8 setObject:v16 forKeyedSubscript:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_cardioFitnessLevelTransitionDatesForDateInterval:(id)a3 biologicalSex:(int64_t)a4 dateOfBirth:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a5;
  [v6 duration];
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v7 year];
    v11 = v7;
    v12 = [MEMORY[0x1E695DEE8] currentCalendar];
    v18 = xmmword_191DCD130;
    v19 = xmmword_191DCD140;
    v20 = 60;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (i = 0; i != 40; i += 8)
    {
      [v11 setYear:{*(&v18 + i) + v10, v18, v19, v20, v21}];
      v15 = [v12 dateFromComponents:v11];
      if ([v6 containsDate:v15])
      {
        [v13 addObject:v15];
      }
    }

    v9 = [v13 sortedArrayUsingSelector:sel_compare_];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)cardioFitnessPropertiesForDate:(id)a3 healthStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16 = 0;
  v7 = [v6 biologicalSexWithError:&v16];
  v8 = v16;
  if (!v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
    {
      +[HKCardioFitnessClassificationUtilities cardioFitnessPropertiesForDate:healthStore:];
    }
  }

  v15 = v8;
  v9 = [v6 dateOfBirthComponentsWithError:&v15];
  v10 = v15;

  if (v9)
  {
    if (v7)
    {
      v11 = [v7 biologicalSex];
      v12 = [v9 hk_ageWithCurrentDate:v5];
      v13 = objc_alloc_init(HKCardioFitnessLookupProperties);
      [(HKCardioFitnessLookupProperties *)v13 setAge:v12];
      [(HKCardioFitnessLookupProperties *)v13 setBiologicalSex:v11];
      goto LABEL_10;
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
    {
      +[HKCardioFitnessClassificationUtilities cardioFitnessPropertiesForDate:healthStore:];
    }
  }

  v13 = 0;
LABEL_10:

  return v13;
}

+ (id)cardioFitnessDataForBiologicalSex:(int64_t)a3 age:(int64_t)a4
{
  if (a4 <= 59)
  {
    if (a4 <= 49)
    {
      if (a4 <= 39)
      {
        if (a4 <= 29)
        {
          v5 = 20;
          if (a4 <= 19)
          {
            v11 = 0;
            goto LABEL_15;
          }
        }

        else
        {
          v5 = 30;
        }
      }

      else
      {
        v5 = 40;
      }
    }

    else
    {
      v5 = 50;
    }
  }

  else
  {
    v5 = 60;
  }

  v6 = [a1 _cardioFitnessLevels];
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v9 = [v6 objectForKeyedSubscript:v8];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = v11;
  }

LABEL_15:

  return v11;
}

+ (id)cardioFitnessDataForVO2Max:(double)a3 biologicalSex:(int64_t)a4 age:(int64_t)a5
{
  v6 = [a1 cardioFitnessDataForBiologicalSex:a4 age:a5];
  v7 = v6;
  if (v6)
  {
    v8 = &unk_1F0684680;
    v9 = [v6 objectForKeyedSubscript:&unk_1F0684680];
    [v9 vo2MaxUpperBound];
    v11 = v10;

    if (v11 <= a3)
    {
      v8 = &unk_1F0684650;
      v12 = [v7 objectForKeyedSubscript:&unk_1F0684650];
      [v12 vo2MaxUpperBound];
      v14 = v13;

      if (v14 <= a3)
      {
        v8 = &unk_1F0684698;
        v15 = [v7 objectForKeyedSubscript:&unk_1F0684698];
        [v15 vo2MaxUpperBound];
        v17 = v16;

        if (v17 <= a3)
        {
          v8 = &unk_1F06846B0;
          v18 = [v7 objectForKeyedSubscript:&unk_1F06846B0];
          [v18 vo2MaxUpperBound];
        }
      }
    }

    v19 = [v7 objectForKeyedSubscript:v8];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)cardioFitnessDataForLevel:(int64_t)a3 biologicalSex:(int64_t)a4 age:(int64_t)a5
{
  v6 = [a1 cardioFitnessDataForBiologicalSex:a4 age:a5];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  return v8;
}

+ (id)cardioFitnessDataForLevel:(int64_t)a3 date:(id)a4 healthStore:(id)a5
{
  v7 = [a1 cardioFitnessPropertiesForDate:a4 healthStore:a5];
  v8 = v7;
  if (v7)
  {
    v9 = [a1 cardioFitnessDataForLevel:a3 biologicalSex:objc_msgSend(v7 age:{"biologicalSex"), objc_msgSend(v7, "age")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (int64_t)cardioFitnessLevelForVO2Max:(double)a3 biologicalSex:(int64_t)a4 age:(int64_t)a5
{
  v5 = [a1 cardioFitnessDataForVO2Max:a4 biologicalSex:a5 age:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 cardioFitnessLevel];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (int64_t)cardioFitnessLevelForVO2MaxSample:(id)a3 inHealthStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 endDate];
  v9 = [a1 cardioFitnessPropertiesForDate:v8 healthStore:v7];

  if (v9)
  {
    v10 = [v6 quantity];
    v11 = [v6 quantityType];
    v12 = [v11 canonicalUnit];
    [v10 doubleValueForUnit:v12];
    v14 = [a1 cardioFitnessLevelForVO2Max:objc_msgSend(v9 biologicalSex:"biologicalSex") age:{objc_msgSend(v9, "age"), v13}];
  }

  else
  {
    v14 = -1;
  }

  return v14;
}

+ (id)cardioFitnessLevelDateIntervalsWithDateInterval:(id)a3 healthStore:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v36 = 0;
  v8 = [v7 biologicalSexWithError:&v36];
  v9 = v36;
  if (!v8)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
    {
      +[HKCardioFitnessClassificationUtilities cardioFitnessPropertiesForDate:healthStore:];
    }
  }

  v35 = v9;
  v10 = [v7 dateOfBirthComponentsWithError:&v35];
  v11 = v35;

  if (!v10)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
    {
      +[HKCardioFitnessClassificationUtilities cardioFitnessPropertiesForDate:healthStore:];
    }

    goto LABEL_16;
  }

  if (!v8)
  {
LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  v30 = v7;
  v28 = v10;
  v12 = [a1 _cardioFitnessLevelTransitionDatesForDateInterval:v6 biologicalSex:objc_msgSend(v8 dateOfBirth:{"biologicalSex"), v10}];
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = [v6 startDate];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v31 objects:v37 count:16];
  v29 = v11;
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      v19 = 0;
      v20 = v14;
      do
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v31 + 1) + 8 * v19);
        v22 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v20 endDate:v21];
        [v13 addObject:v22];
        v14 = v21;

        ++v19;
        v20 = v14;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v17);
  }

  v23 = objc_alloc(MEMORY[0x1E696AB80]);
  v24 = [v6 endDate];
  v25 = [v23 initWithStartDate:v14 endDate:v24];

  [v13 addObject:v25];
  v11 = v29;
  v7 = v30;
  v10 = v28;
LABEL_17:

  v26 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)analyticsStringForLevel:(int64_t)a3
{
  if ((a3 + 1) > 4)
  {
    return &stru_1F05FF230;
  }

  else
  {
    return off_1E7380B98[a3 + 1];
  }
}

+ (void)_cardioFitnessLevels
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "%{public}@: falling back to stubbed cardio fitness level data", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_parseCoreMotionClassificationData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCardioFitnessClassificationUtilities.m" lineNumber:303 description:@"HKCardioFitnessUtilities: CMVO2MaxClassificationData array must be sorted by biological sex ascending"];
}

+ (void)_parseCoreMotionClassificationData:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCardioFitnessClassificationUtilities.m" lineNumber:320 description:@"HKCardioFitnessUtilities: CMVO2MaxClassificationData array must be sorted by age ascending: item != current"];
}

void __73__HKCardioFitnessClassificationUtilities__queryCoreMotionClassifications__block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [a3 localizedDescription];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_3_3(&dword_19197B000, v7, v8, "%{public}@: Error retrieving cardio fitness classifications from Core Motion: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x1E69E9840];
}

+ (void)cardioFitnessPropertiesForDate:healthStore:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1(&dword_19197B000, v0, v1, "%{public}@: Unable to retrieve biological sex: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)cardioFitnessPropertiesForDate:healthStore:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1(&dword_19197B000, v0, v1, "%{public}@: Unable to retrieve date of birth: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end
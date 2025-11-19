id sub_1400(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_D5E8);
  if (qword_D5F0)
  {
    v3 = qword_D5F0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_D5F8))
  {
    qword_D5F0 = v2;
    qword_D5F8 = [v2 version];
    v5 = sub_14C0(qword_D5F8, v2);
    v6 = qword_D5E0;
    qword_D5E0 = v5;
  }

  v7 = qword_D5E0;
  os_unfair_lock_unlock(&unk_D5E8);

  return v7;
}

id sub_14C0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];

  [v4 scaledValue:24.0];
  v6 = v5;
  v7 = [NSNumber numberWithDouble:?];
  v8 = [NSNumber numberWithInteger:CLKComplicationFamilyCircularMedium];
  [v3 setObject:v7 forKeyedSubscript:v8];

  [v3 setObject:v7 forKeyedSubscript:&off_83A8];
  [v3 setObject:v7 forKeyedSubscript:&off_83C0];
  v9 = +[CLKDevice currentDevice];
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v11 = v10;

  v12 = [NSNumber numberWithDouble:v6 * v11];

  [v3 setObject:v12 forKeyedSubscript:&off_83D8];
  [v4 scaledValue:70.0];
  v13 = [NSNumber numberWithDouble:?];
  [v3 setObject:v13 forKeyedSubscript:&off_83F0];

  [v4 scaledValue:14.0];
  v14 = [NSNumber numberWithDouble:?];
  [v3 setObject:v14 forKeyedSubscript:&off_8408];

  [v4 scaledValue:18.5];
  v15 = [NSNumber numberWithDouble:?];
  [v3 setObject:v15 forKeyedSubscript:&off_8420];

  [v4 scaledValue:21.0];
  v16 = [NSNumber numberWithDouble:?];

  [v3 setObject:v16 forKeyedSubscript:&off_8438];
  [v3 setObject:v16 forKeyedSubscript:&off_8450];
  v17 = [v3 copy];

  return v17;
}

id sub_17D0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_D608);
  if (qword_D610)
  {
    v3 = qword_D610 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_D618))
  {
    qword_D610 = v2;
    qword_D618 = [v2 version];
    v5 = sub_1890(qword_D618, v2);
    v6 = qword_D600;
    qword_D600 = v5;
  }

  v7 = qword_D600;
  os_unfair_lock_unlock(&unk_D608);

  return v7;
}

id sub_1890(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];

  [v4 setRoundingBehavior:3];
  v5 = objc_alloc_init(NTKExplorerDotLayoutConstraints);
  v91[0] = &off_8468;
  v91[1] = &off_8480;
  v92[0] = &off_84B0;
  v92[1] = &off_84C0;
  v6 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:2];
  [v4 scaledValue:v6 withOverrides:6.0];
  [v5 setDotDiameter:?];

  v89[0] = &off_8468;
  v89[1] = &off_8480;
  v90[0] = &off_84D0;
  v90[1] = &off_84E0;
  v7 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:2];
  [v4 scaledValue:v7 withOverrides:1.0];
  [v5 setDotBorderWidth:?];

  v87[0] = &off_8468;
  v87[1] = &off_8480;
  v88[0] = &off_84F0;
  v88[1] = &off_8500;
  v8 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:2];
  [v4 scaledValue:v8 withOverrides:3.0];
  [v5 setDotSpacing:?];

  v85[0] = &off_8468;
  v85[1] = &off_8480;
  v86[0] = &off_8510;
  v86[1] = &off_8520;
  v9 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:2];
  [v4 scaledValue:v9 withOverrides:1.5];
  [v5 setNoServiceDotHeight:?];

  v10 = [NSNumber numberWithInteger:CLKComplicationFamilyCircularMedium];
  [v3 setObject:v5 forKeyedSubscript:v10];

  [v3 setObject:v5 forKeyedSubscript:&off_83A8];
  [v3 setObject:v5 forKeyedSubscript:&off_83C0];
  [v4 setRoundingBehavior:0];
  v11 = objc_alloc_init(NTKExplorerDotLayoutConstraints);

  v12 = +[CLKDevice currentDevice];
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v14 = v13;

  v83[0] = &off_8468;
  v83[1] = &off_8480;
  v84[0] = &off_84B0;
  v84[1] = &off_84C0;
  v15 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:2];
  [v4 scaledValue:v15 withOverrides:6.0];
  [v11 setDotDiameter:v14 * v16];

  v81[0] = &off_8468;
  v81[1] = &off_8480;
  v82[0] = &off_84D0;
  v82[1] = &off_84E0;
  v17 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:2];
  [v4 scaledValue:v17 withOverrides:1.0];
  [v11 setDotBorderWidth:v14 * v18];

  v79[0] = &off_8468;
  v79[1] = &off_8480;
  v80[0] = &off_84F0;
  v80[1] = &off_8500;
  v19 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:2];
  [v4 scaledValue:v19 withOverrides:3.0];
  [v11 setDotSpacing:v14 * v20];

  v77[0] = &off_8468;
  v77[1] = &off_8480;
  v78[0] = &off_8510;
  v78[1] = &off_8520;
  v21 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:2];
  [v4 scaledValue:v21 withOverrides:1.5];
  [v11 setNoServiceDotHeight:v14 * v22];

  [v3 setObject:v11 forKeyedSubscript:&off_83D8];
  [v4 setRoundingBehavior:3];
  v23 = objc_alloc_init(NTKExplorerDotLayoutConstraints);

  v75[0] = &off_8468;
  v75[1] = &off_8480;
  v76[0] = &off_84F0;
  v76[1] = &off_8500;
  v24 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:2];
  [v4 scaledValue:v24 withOverrides:3.0];
  [v23 setDotDiameter:?];

  v73[0] = &off_8468;
  v73[1] = &off_8480;
  v74[0] = &off_8530;
  v74[1] = &off_8540;
  v25 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:2];
  [v4 scaledValue:v25 withOverrides:0.5];
  [v23 setDotBorderWidth:?];

  v71[0] = &off_8468;
  v71[1] = &off_8480;
  v72[0] = &off_8550;
  v72[1] = &off_8560;
  v26 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];
  [v4 scaledValue:v26 withOverrides:2.0];
  [v23 setDotSpacing:?];

  v69[0] = &off_8468;
  v69[1] = &off_8480;
  v70[0] = &off_84D0;
  v70[1] = &off_84E0;
  v27 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:2];
  [v4 scaledValue:v27 withOverrides:1.0];
  [v23 setNoServiceDotHeight:?];

  [v3 setObject:v23 forKeyedSubscript:&off_8408];
  v28 = objc_alloc_init(NTKExplorerDotLayoutConstraints);

  v67[0] = &off_8468;
  v67[1] = &off_8480;
  v68[0] = &off_84B0;
  v68[1] = &off_84C0;
  v29 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:2];
  [v4 scaledValue:v29 withOverrides:6.0];
  [v28 setDotDiameter:?];

  v65[0] = &off_8468;
  v65[1] = &off_8498;
  v66[0] = &off_8570;
  v66[1] = &off_8580;
  v65[2] = &off_8480;
  v66[2] = &off_8590;
  v30 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:3];
  [v4 scaledValue:v30 withOverrides:1.125];
  [v28 setDotBorderWidth:?];

  v63[0] = &off_8468;
  v63[1] = &off_8480;
  v64[0] = &off_84F0;
  v64[1] = &off_8500;
  v31 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:2];
  [v4 scaledValue:v31 withOverrides:3.0];
  [v28 setDotSpacing:?];

  v61[0] = &off_8468;
  v61[1] = &off_8480;
  v62[0] = &off_8510;
  v62[1] = &off_8520;
  v32 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:2];
  [v4 scaledValue:v32 withOverrides:1.5];
  [v28 setNoServiceDotHeight:?];

  [v3 setObject:v28 forKeyedSubscript:&off_8420];
  v33 = objc_alloc_init(NTKExplorerDotLayoutConstraints);

  v59[0] = &off_8468;
  v59[1] = &off_8480;
  v60[0] = &off_85A0;
  v60[1] = &off_85B0;
  v34 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:2];
  [v4 scaledValue:v34 withOverrides:4.0];
  [v33 setDotDiameter:?];

  v57[0] = &off_8468;
  v57[1] = &off_8498;
  v58[0] = &off_85C0;
  v58[1] = &off_85D0;
  v57[2] = &off_8480;
  v58[2] = &off_85E0;
  v35 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:3];
  [v4 scaledValue:v35 withOverrides:0.75];
  [v33 setDotBorderWidth:?];

  v55[0] = &off_8468;
  v55[1] = &off_8480;
  v56[0] = &off_8550;
  v56[1] = &off_8560;
  v36 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];
  [v4 scaledValue:v36 withOverrides:2.0];
  [v33 setDotSpacing:?];

  v53[0] = &off_8468;
  v53[1] = &off_8480;
  v54[0] = &off_84D0;
  v54[1] = &off_84E0;
  v37 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];
  [v4 scaledValue:v37 withOverrides:1.0];
  [v33 setNoServiceDotHeight:?];

  [v3 setObject:v33 forKeyedSubscript:&off_8438];
  [v3 setObject:v33 forKeyedSubscript:&off_8450];
  v38 = objc_alloc_init(NTKExplorerDotLayoutConstraints);

  v51[0] = &off_8468;
  v51[1] = &off_8480;
  v52[0] = &off_85F0;
  v52[1] = &off_8600;
  v39 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
  [v4 scaledValue:v39 withOverrides:17.5];
  [v38 setDotDiameter:?];

  v49[0] = &off_8468;
  v49[1] = &off_8480;
  v50[0] = &off_8610;
  v50[1] = &off_8620;
  v40 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
  [v4 scaledValue:v40 withOverrides:2.5];
  [v38 setDotBorderWidth:?];

  v47[0] = &off_8468;
  v47[1] = &off_8480;
  v48[0] = &off_8630;
  v48[1] = &off_8640;
  v41 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
  [v4 scaledValue:v41 withOverrides:8.0];
  [v38 setDotSpacing:?];

  v45[0] = &off_8468;
  v45[1] = &off_8480;
  v46[0] = &off_8650;
  v46[1] = &off_8660;
  v42 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
  [v4 scaledValue:v42 withOverrides:4.5];
  [v38 setNoServiceDotHeight:?];

  [v3 setObject:v38 forKeyedSubscript:&off_83F0];
  v43 = [v3 copy];

  return v43;
}

CDComplicationImageView *__cdecl sub_2D18(id a1, CGSize a2)
{
  v2 = [[NTKCellularConnectivityImageView alloc] initWithFrame:0.0, 0.0, a2.width, a2.height];

  return v2;
}

CDComplicationImageView *__cdecl sub_2DD0(id a1, CGSize a2)
{
  v2 = [[NTKCellularConnectivityImageView alloc] initWithFrame:0.0, 0.0, a2.width, a2.height];

  return v2;
}

id sub_3C00(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 _reevaluateSignalState];
}
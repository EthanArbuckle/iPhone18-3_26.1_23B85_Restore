@interface CLReductiveFilterSuite
+ (double)rangeForReductiveFilterOptions:(id)a3;
+ (double)rangeForTransmitPower:(double)a3;
+ (id)applyFilterToLocationObservations:(id)a3 options:(id)a4;
+ (id)applyFilterToLocationTrace:(id)a3 options:(id)a4;
+ (id)deriveLocationFromLocations:(id)a3;
+ (id)deriveLocationFromLocations:(id)a3 options:(id)a4;
+ (id)filterOutliers:(id)a3;
+ (id)filterOutliers:(id)a3 options:(id)a4;
@end

@implementation CLReductiveFilterSuite

+ (double)rangeForReductiveFilterOptions:(id)a3
{
  [a3 applyRangeEstimation];
  if (v4 == 0.0)
  {
    return 0.0;
  }

  [a3 transmitPower];

  MEMORY[0x1EEE66B58](CLReductiveFilterSuite, sel_rangeForTransmitPower_);
  return result;
}

+ (double)rangeForTransmitPower:(double)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  if (a3 < 4.0 || a3 > 20.0)
  {
    if (qword_1EAFE4768 != -1)
    {
      dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
    }

    v5 = qword_1EAFE4770;
    if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_FAULT))
    {
      v11 = 68289282;
      v12 = 2082;
      v13 = "";
      v14 = 2050;
      v15 = v3;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:rangeForTransmitPower: invalid range of transmit power, transmitPower_dBm:%{public}.6f}", &v11, 0x1Cu);
      if (qword_1EAFE4768 != -1)
      {
        dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
      }
    }

    v6 = qword_1EAFE4770;
    if (os_signpost_enabled(qword_1EAFE4770))
    {
      v11 = 68289282;
      v12 = 2082;
      v13 = "";
      v14 = 2050;
      v15 = v3;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "rangeForTransmitPower: invalid range of transmit power", "{msg%{public}.0s:rangeForTransmitPower: invalid range of transmit power, transmitPower_dBm:%{public}.6f}", &v11, 0x1Cu);
    }

    v7 = 4.0;
    if (v3 >= 4.0)
    {
      v7 = v3;
    }

    v3 = fmin(v7, 20.0);
  }

  v8 = __exp10(v3 / 10.0);
  v9 = *MEMORY[0x1E69E9840];
  return sqrt(v8 / 1000.0) * 199.526231;
}

+ (id)filterOutliers:(id)a3
{
  v5 = objc_alloc_init(CLReductiveFilterOptions);

  return [a1 filterOutliers:a3 options:v5];
}

+ (id)filterOutliers:(id)a3 options:(id)a4
{
  v98 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a1 rangeForReductiveFilterOptions:a4];
  v8 = v7;
  if ([a3 count])
  {
    v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = [a3 reverseObjectEnumerator];
    v9 = [obj countByEnumeratingWithState:&v82 objects:v97 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v83;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v83 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v82 + 1) + 8 * i);
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v14 = [v61 countByEnumeratingWithState:&v78 objects:v96 count:16];
          if (!v14)
          {
            goto LABEL_22;
          }

          v15 = v14;
          v16 = 0;
          v17 = *v79;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v79 != v17)
              {
                objc_enumerationMutation(v61);
              }

              v19 = *(*(&v78 + 1) + 8 * j);
              v20 = [v19 firstObject];
              [v13 distanceFromLocation:v20];
              v22 = v21;
              [v13 horizontalAccuracy];
              v24 = v22 - v23;
              [v20 horizontalAccuracy];
              v26 = v24 - v25;
              [objc_msgSend(v20 "timestamp")];
              v28 = v27;
              [objc_msgSend(v13 "timestamp")];
              if (v26 <= v8)
              {
                goto LABEL_18;
              }

              v30 = v28 - v29;
              if (v30 < 5.0)
              {
                v30 = 5.0;
              }

              if (fmax(v26, 0.0) / v30 <= 250.0)
              {
LABEL_18:
                [v19 insertObject:v13 atIndex:0];
                v16 = 1;
              }
            }

            v15 = [v61 countByEnumeratingWithState:&v78 objects:v96 count:16];
          }

          while (v15);
          if ((v16 & 1) == 0)
          {
LABEL_22:
            v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v31 addObject:v13];
            [v61 addObject:v31];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v82 objects:v97 count:16];
      }

      while (v10);
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v32 = [v61 countByEnumeratingWithState:&v74 objects:v95 count:16];
    if (v32)
    {
      v33 = v32;
      v58 = 0;
      v34 = 0;
      v35 = *v75;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v75 != v35)
          {
            objc_enumerationMutation(v61);
          }

          v37 = *(*(&v74 + 1) + 8 * k);
          if ([v37 count] > v34)
          {
            v34 = [v37 count];
            v58 = v37;
          }
        }

        v33 = [v61 countByEnumeratingWithState:&v74 objects:v95 count:16];
      }

      while (v33);
    }

    else
    {
      v58 = 0;
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v57 = [v61 countByEnumeratingWithState:&v70 objects:v94 count:16];
    if (v57)
    {
      v56 = *v71;
      do
      {
        v38 = 0;
        do
        {
          if (*v71 != v56)
          {
            objc_enumerationMutation(v61);
          }

          v59 = v38;
          v39 = *(*(&v70 + 1) + 8 * v38);
          if (v58 == v39)
          {
            v68 = 0uLL;
            v69 = 0uLL;
            v66 = 0uLL;
            v67 = 0uLL;
            v47 = [v39 countByEnumeratingWithState:&v66 objects:v93 count:16];
            if (v47)
            {
              v48 = v47;
              v49 = *v67;
              do
              {
                v50 = 0;
                do
                {
                  if (*v67 != v49)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v51 = *(*(&v66 + 1) + 8 * v50);
                  if (qword_1EAFE4768 != -1)
                  {
                    dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
                  }

                  v52 = qword_1EAFE4770;
                  if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_DEBUG))
                  {
                    v53 = [objc_msgSend(v51 "description")];
                    *buf = 68289283;
                    v88 = 0;
                    v89 = 2082;
                    v90 = "";
                    v91 = 2081;
                    v92 = v53;
                    _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Selected location, loc:%{private, location:escape_only}s}", buf, 0x1Cu);
                  }

                  ++v50;
                }

                while (v48 != v50);
                v48 = [v39 countByEnumeratingWithState:&v66 objects:v93 count:16];
              }

              while (v48);
            }
          }

          else
          {
            v64 = 0uLL;
            v65 = 0uLL;
            v62 = 0uLL;
            v63 = 0uLL;
            v40 = [v39 countByEnumeratingWithState:&v62 objects:v86 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v63;
              do
              {
                v43 = 0;
                do
                {
                  if (*v63 != v42)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v44 = *(*(&v62 + 1) + 8 * v43);
                  if (qword_1EAFE4768 != -1)
                  {
                    dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
                  }

                  v45 = qword_1EAFE4770;
                  if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_DEBUG))
                  {
                    v46 = [objc_msgSend(v44 "description")];
                    *buf = 68289283;
                    v88 = 0;
                    v89 = 2082;
                    v90 = "";
                    v91 = 2081;
                    v92 = v46;
                    _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Removed location, loc:%{private, location:escape_only}s}", buf, 0x1Cu);
                  }

                  ++v43;
                }

                while (v41 != v43);
                v41 = [v39 countByEnumeratingWithState:&v62 objects:v86 count:16];
              }

              while (v41);
            }
          }

          v38 = v59 + 1;
        }

        while (v59 + 1 != v57);
        v57 = [v61 countByEnumeratingWithState:&v70 objects:v94 count:16];
      }

      while (v57);
    }
  }

  else
  {
    v58 = 0;
  }

  v54 = *MEMORY[0x1E69E9840];
  return v58;
}

+ (id)deriveLocationFromLocations:(id)a3
{
  v5 = objc_alloc_init(CLReductiveFilterOptions);

  return [a1 deriveLocationFromLocations:a3 options:v5];
}

+ (id)deriveLocationFromLocations:(id)a3 options:(id)a4
{
  v132 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  result = [a3 count];
  if (!result)
  {
    goto LABEL_57;
  }

  [a1 rangeForReductiveFilterOptions:a4];
  v9 = v8;
  v10 = [MEMORY[0x1E695DF00] now];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v71 = a3;
  v11 = [a3 reverseObjectEnumerator];
  v12 = [v11 countByEnumeratingWithState:&v94 objects:v131 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *v95;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v95 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v94 + 1) + 8 * i);
        [v18 horizontalAccuracy];
        v15 |= v19 <= 500.0;
        v14 |= [objc_msgSend(v18 "timestamp")] != 1;
        if (v15 & 1) != 0 && (v14)
        {
          v14 = 1;
          v15 = 1;
          goto LABEL_16;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v94 objects:v131 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

LABEL_16:
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = [a3 reverseObjectEnumerator];
  v20 = [obj countByEnumeratingWithState:&v90 objects:v130 count:16];
  if (!v20)
  {
    v75 = 0;
    v76 = 0;
    v73 = 0;
    v79 = 0;
    v74 = 0;
    v25 = 0.0;
    v84 = 0.0;
    v85 = 0.0;
    v82 = 0.0;
    v83 = 0.0;
    v26 = 0.0;
    goto LABEL_52;
  }

  v21 = v20;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v79 = 0;
  v74 = 0;
  v22 = 0;
  v23 = *v91;
  v24 = 1;
  v25 = 0.0;
  v84 = 0.0;
  v85 = 0.0;
  v82 = 0.0;
  v83 = 0.0;
  v26 = 0.0;
  v72 = v9;
  while (2)
  {
    v86 = v26;
    for (j = 0; j != v21; ++j)
    {
      if (*v91 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v90 + 1) + 8 * j);
      if (v15)
      {
        [*(*(&v90 + 1) + 8 * j) horizontalAccuracy];
        if (v29 > 500.0)
        {
          ++v76;
          continue;
        }
      }

      if ((v14 & 1) != 0 && [objc_msgSend(v28 "timestamp")] == 1)
      {
        ++v75;
        continue;
      }

      [v28 coordinate];
      v31 = v30;
      [v28 coordinate];
      v33 = v32;
      v34 = __sincos_stret(v31 * 0.0174532925);
      v35 = __sincos_stret(v33 * 0.0174532925);
      v36 = 6378137.0 / sqrt(v34.__sinval * -0.00669437999 * v34.__sinval + 1.0);
      v37 = v34.__cosval * (v36 + 0.0);
      v38 = v35.__cosval * v37;
      v39 = v35.__sinval * v37;
      v40 = v34.__sinval * (v36 * 0.99330562 + 0.0);
      [v28 horizontalAccuracy];
      v81 = v41;
      [a4 biasRateInMeasurement];
      v80 = v42;
      [v28 horizontalAccuracy];
      v44 = v43;
      [a4 biasRateInMeasurement];
      v46 = v45;
      [v28 horizontalAccuracy];
      v48 = v47;
      if (v24)
      {
        v74 = [v28 timestamp];
LABEL_32:
        v24 = 0;
        v22 = 0;
        v53 = 1.0 / ((v9 + v81) * (v9 + v81));
        ++v79;
        v82 = v82 + v38 * v53;
        v83 = v83 + v39 * v53;
        v84 = v84 + v40 * v53;
        v85 = v85 + v80 * v44 * v53;
        v25 = v25 + (1.0 - v46) * v48 * ((1.0 - v46) * v48) * (v53 * v53);
        v86 = v86 + v53;
        continue;
      }

      if (v86 <= 0.0)
      {
        if (qword_1EAFE4768 != -1)
        {
          dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
        }

        v54 = qword_1EAFE4770;
        if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_FAULT, "Reductive filtering: Sum of weights <= 0 after at least one point added.", buf, 2u);
        }

        v55 = sub_19B87DD40();
        if ((*(v55 + 160) & 0x80000000) == 0 || (*(v55 + 164) & 0x80000000) == 0 || (*(v55 + 168) & 0x80000000) == 0 || *(v55 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4768 != -1)
          {
            dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
          }

          LOWORD(v89[0]) = 0;
          v56 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "+[CLReductiveFilterSuite deriveLocationFromLocations:options:]", "CoreLocation: %s\n", v56);
          if (v56 != buf)
          {
            free(v56);
          }
        }

        result = 0;
        goto LABEL_57;
      }

      v77 = v25;
      v49 = v9 + v85 / v86 + sqrt(v25 / (v86 * v86));
      [v28 horizontalAccuracy];
      v51 = v50;
      [v28 horizontalAccuracy];
      if ((v39 - v83 / v86) * (v39 - v83 / v86) + (v38 - v82 / v86) * (v38 - v82 / v86) + (v40 - v84 / v86) * (v40 - v84 / v86) < (v49 * v49 + v51 * v52) * 2.9957)
      {
        v9 = v72;
        v25 = v77;
        goto LABEL_32;
      }

      ++v73;
      if (v22)
      {
        v9 = v72;
        v25 = v77;
        v26 = v86;
        goto LABEL_52;
      }

      v24 = 0;
      v22 = 1;
      v9 = v72;
      v25 = v77;
    }

    v21 = [obj countByEnumeratingWithState:&v90 objects:v130 count:16];
    v26 = v86;
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_52:
  v88 = 0.0;
  v89[0] = 0.0;
  v87 = 0;
  v57 = v26;
  sub_19B9C7BD0(v89, &v88, &v87, v82 / v26, v83 / v26, v84 / v26);
  v58 = v88;
  v59 = v89[0];
  v60 = CLLocationCoordinate2DMake(v89[0], v88);
  v61 = v85 / v57 + sqrt(v25 / (v57 * v57));
  v62 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v62 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSS"];
  if (qword_1EAFE4768 != -1)
  {
    dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
  }

  v63 = v9 + v61;
  v64 = qword_1EAFE4770;
  if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_DEBUG))
  {
    v65 = [v71 count];
    [a4 transmitPower];
    v66 = v9;
    v68 = v67;
    v69 = [objc_msgSend(v62 stringFromDate:{v74), "UTF8String"}];
    *buf = 68292611;
    v99 = 0;
    v100 = 2082;
    v101 = "";
    v102 = 1026;
    v103 = v65;
    v104 = 1026;
    v105 = v73;
    v106 = 1026;
    v107 = v79;
    v108 = 2050;
    v109 = v68;
    v110 = 2050;
    v111 = v66;
    v112 = 2053;
    v113 = v59;
    v114 = 2053;
    v115 = v58;
    v116 = 2049;
    v117 = v63;
    v118 = 2082;
    v119 = v69;
    v120 = 1026;
    v121 = v15 & 1;
    v122 = 1026;
    v123 = v14 & 1;
    v124 = 1026;
    v125 = v76 != 0;
    v126 = 1026;
    v127 = v75 != 0;
    v128 = 1026;
    v129 = v76 + v75;
    _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Reductive filtering, input:%{public}d, outliers:%{public}d, used:%{public}d, transmitPower:%{public}.6f, rangeOfBeacon:%{public}.6f, lat:%{sensitive}.08f, lon:%{sensitive}.08f, hunc:%{private}f, timestamp:%{public, location:escape_only}s, isAccurateLocationAvailable:%{public}hhd, isPastLocationAvailable:%{public}hhd, nLowAccuracyLocations:%{public}hhd, nFutureLocations:%{public}hhd, filtered:%{public}d}", buf, 0x7Eu);
  }

  result = [objc_alloc(MEMORY[0x1E6985C40]) initWithCoordinate:v74 altitude:v60.latitude horizontalAccuracy:v60.longitude verticalAccuracy:0.0 timestamp:{v63, -1.0}];
LABEL_57:
  v70 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)applyFilterToLocationObservations:(id)a3 options:(id)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  if ([a3 count])
  {
    v34[0] = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"timestamp" ascending:1];
    v6 = [a3 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v34, 1)}];
    v7 = [a3 count];
    v8 = [CLReductiveFilterSuite filterOutliers:v6 options:a4];
    v9 = [v8 count];
    v10 = [CLReductiveFilterSuite deriveLocationFromLocations:v8 options:a4];
    if (qword_1EAFE4768 != -1)
    {
      dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
    }

    v11 = qword_1EAFE4770;
    if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [a4 beaconType];
      [a4 transmitPower];
      v14 = v13;
      [a4 biasRateInMeasurement];
      v16 = v15;
      [a4 applyRangeEstimation];
      v22 = 68290050;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2050;
      v27 = v12;
      v28 = 2050;
      v29 = v14;
      v30 = 2050;
      v31 = v16;
      v32 = 1026;
      v33 = v17 != 0.0;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Reductive filtering - options, beaconType:%{public}lu, transmitPower:%{public}.6f, biasRate:%{public}.6f, applyRangeEstimation:%{public}hhd}", &v22, 0x36u);
      if (qword_1EAFE4768 != -1)
      {
        dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
      }
    }

    v18 = qword_1EAFE4770;
    if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [objc_msgSend(v10 "description")];
      v22 = 68289795;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2050;
      v27 = v7;
      v28 = 2050;
      v29 = v9;
      v30 = 2081;
      v31 = v19;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Reductive filtering - location observations, countInput:%{public}lu, countFiltered:%{public}lu, loc:%{private, location:escape_only}s}", &v22, 0x30u);
    }
  }

  else
  {
    v10 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)applyFilterToLocationTrace:(id)a3 options:(id)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  if ([a3 count])
  {
    [a4 setBiasRateInMeasurement:1.0];
    [a4 setApplyRangeEstimation:0.0];
    v34[0] = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"timestamp" ascending:1];
    v6 = [a3 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v34, 1)}];
    v7 = [a3 count];
    v8 = [CLReductiveFilterSuite filterOutliers:v6 options:a4];
    v9 = [v8 count];
    v10 = [CLReductiveFilterSuite deriveLocationFromLocations:v8 options:a4];
    if (qword_1EAFE4768 != -1)
    {
      dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
    }

    v11 = qword_1EAFE4770;
    if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [a4 beaconType];
      [a4 transmitPower];
      v14 = v13;
      [a4 biasRateInMeasurement];
      v16 = v15;
      [a4 applyRangeEstimation];
      v22 = 68290050;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2050;
      v27 = v12;
      v28 = 2050;
      v29 = v14;
      v30 = 2050;
      v31 = v16;
      v32 = 1026;
      v33 = v17 != 0.0;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Reductive filtering - options, beaconType:%{public}lu, transmitPower:%{public}.6f, biasRate:%{public}.6f, applyRangeEstimation:%{public}hhd}", &v22, 0x36u);
      if (qword_1EAFE4768 != -1)
      {
        dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
      }
    }

    v18 = qword_1EAFE4770;
    if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [objc_msgSend(v10 "description")];
      v22 = 68289795;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2050;
      v27 = v7;
      v28 = 2050;
      v29 = v9;
      v30 = 2081;
      v31 = v19;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Reductive filtering - location trace, countInput:%{public}lu, countFiltered:%{public}lu, loc:%{private, location:escape_only}s}", &v22, 0x30u);
    }
  }

  else
  {
    v10 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

@end
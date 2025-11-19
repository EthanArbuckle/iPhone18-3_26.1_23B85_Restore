uint64_t sub_100001EE0(uint64_t a1, mach_port_name_t a2, int a3, uint64_t *a4, unsigned int a5, _OWORD *a6)
{
  v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    sub_100030D40(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  v19 = a6[1];
  v22[0] = *a6;
  v22[1] = v19;
  v20 = sub_1000020F0(0, 0, 0, -1, a2, a3, a4, a5, 1u, 0, 0, v22);
  if (!v20)
  {
    mach_port_deallocate(mach_task_self_, a2);
  }

  return v20;
}

uint64_t sub_100001FA8(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 20) == 1091)
  {
    sub_100002960();
    audit_trailer = os_mach_msg_get_audit_trailer();
    v5 = *(audit_trailer + 36);
    *v7.val = *(audit_trailer + 20);
    *&v7.val[4] = v5;
    if (audit_token_to_pid(&v7))
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      a2[2] = 0;
      [qword_100054200 increment:"gpu_event"];
      return sub_100023F84((a1 + 24), *(a1 + 4) - 24);
    }
  }

  else
  {

    return sub_100002060(a1, a2);
  }
}

uint64_t sub_100002060(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 2412) >= 0xFFFFFFF9 && (v5 = *(&off_100045BA8 + 5 * (v4 - 2405) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t sub_1000020F0(mach_port_t a1, task_id_token_t a2, uint64_t a3, uint64_t a4, mach_port_name_t a5, int a6, uint64_t *a7, unsigned int a8, unsigned int a9, uint64_t a10, int a11, _OWORD *a12)
{
  v20 = [qword_100054200 increment:"event"];
  if (!dword_10005420C)
  {
    sub_100002960();
  }

  v21 = a12[1];
  *atoken = *a12;
  *&atoken[16] = v21;
  task_port = 0;
  if (audit_token_to_pid(atoken))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *atoken = 0;
      v22 = "Will not report from invalid source";
      v23 = 2;
LABEL_16:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v22, atoken, v23);
      return 5;
    }

    return 5;
  }

  if (a6 != 13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *atoken = 67240192;
      *&atoken[4] = a6;
      v22 = "Will not write report for unsupported exception: %{public}i";
      v23 = 8;
      goto LABEL_16;
    }

    return 5;
  }

  object_addr = 0;
  object_type = 0;
  if (a2)
  {
    if (a1)
    {
      sub_100030B50();
    }

    v24 = 5;
    if (!mach_port_kernel_object(mach_task_self_, a2, &object_type, &object_addr) && object_type == 50)
    {
      v24 = task_identity_token_get_task_port(a2, 0, &task_port);
      if (v24)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100030B7C(v24);
        }
      }
    }

    goto LABEL_36;
  }

  if (!a5)
  {
    if (mach_port_kernel_object(mach_task_self_, a1, &object_type, &object_addr))
    {
      v27 = 0;
    }

    else
    {
      v27 = object_type == 2;
    }

    if (v27 && !mach_port_kernel_object(mach_task_self_, a3, &object_type, &object_addr) && object_type == 1)
    {
      task_port = a1;
      v24 = 5;
      if (!a1)
      {
        return v24;
      }

LABEL_37:
      if (v20 < 6)
      {
        v26 = 0;
        goto LABEL_39;
      }

      x[0] = -1;
      goto LABEL_45;
    }

    v24 = 5;
LABEL_36:
    a1 = task_port;
    if (!task_port)
    {
      return v24;
    }

    goto LABEL_37;
  }

  v24 = mach_port_kernel_object(mach_task_self_, a5, &object_type, &object_addr);
  if (v24 || object_type != 52)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v29 = mach_error_string(v24);
      *atoken = 67109634;
      *&atoken[4] = v24;
      *&atoken[8] = 2080;
      *&atoken[10] = v29;
      *&atoken[18] = 1024;
      *&atoken[20] = object_type;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "object check returned 0x%x (%s) type %u (expected IKOT_KCDATA)", atoken, 0x18u);
    }

    goto LABEL_36;
  }

  if (v20 < 6)
  {
    v24 = 0;
    v26 = 1;
LABEL_39:
    v30 = objc_autoreleasePoolPush();
    v31 = +[NSThread currentThread];
    v52 = [v31 threadDictionary];

    if (task_port)
    {
      if (a8 < 2)
      {
        v34 = a10;
        if (a8)
        {
          v32 = *a7;
        }

        else
        {
          v32 = 13;
        }

        v33 = v52;
      }

      else
      {
        v32 = *a7;
        v33 = v52;
        v34 = a10;
        if (*a7 == 10)
        {
          if (a7[1] == 0x100000007)
          {
            v32 = 11;
          }

          else
          {
            v32 = 10;
          }
        }
      }

      v45 = [OSACrashReport alloc];
      LODWORD(v51) = a11;
      v46 = [(OSACrashReport *)v45 initWithTask:task_port exceptionType:v32 thread:a3 threadId:a4 threadStateFlavor:a9 threadState:v34 threadStateCount:v51];
      [(OSACrashReport *)v46 autopsyCorpse];
      if (v46)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          if ([(OSACrashReport *)v46 isSimulated])
          {
            v47 = "simulated";
          }

          else
          {
            v47 = "fatal";
          }

          v48 = [(OSACrashReport *)v46 proc_id];
          v49 = [(OSACrashReport *)v46 procName];
          *atoken = 136446978;
          *&atoken[4] = v47;
          *&atoken[12] = 2080;
          *&atoken[14] = "corpse";
          *&atoken[22] = 1024;
          *&atoken[24] = v48;
          *&atoken[28] = 2114;
          *&atoken[30] = v49;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Formulating %{public}s 309 report for %s[%d] %{public}@", atoken, 0x26u);
        }

        [v33 setObject:v46 forKeyedSubscript:@"OSACrashReport"];
      }

      v24 = 0;
    }

    else if (v26)
    {
      kcd_size = 0;
      *x = 0;
      v39 = task_map_kcdata_object_64(mach_task_self_, a5, x, &kcd_size);
      if (*x && kcd_size)
      {
        if (qword_100054218 != -1)
        {
          sub_100030C14();
        }

        v33 = v52;
        if (byte_100054210 == 1)
        {
          v40 = [NSData dataWithBytes:*x length:kcd_size];
          [v40 writeToFile:@"/tmp/lw_kcdata.bin" atomically:1];

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *atoken = 134218240;
            *&atoken[4] = *x;
            *&atoken[12] = 2048;
            *&atoken[14] = kcd_size;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "*** saved lightweight corpse at 0X%llX size %llu as /tmp/lw_kcdata.bin", atoken, 0x16u);
          }
        }

        LODWORD(v51) = a11;
        v41 = [[OSACrashReport alloc] initWithTask:0 exceptionType:13 thread:0 threadId:-1 threadStateFlavor:a9 threadState:a10 threadStateCount:v51];
        [(OSACrashReport *)v41 autopsyLightweightCorpse:*x size:kcd_size];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          if ([(OSACrashReport *)v41 isSimulated])
          {
            v42 = "simulated";
          }

          else
          {
            v42 = "fatal";
          }

          v43 = [(OSACrashReport *)v41 proc_id];
          v44 = [(OSACrashReport *)v41 procName];
          *atoken = 136446978;
          *&atoken[4] = v42;
          *&atoken[12] = 2080;
          *&atoken[14] = "corpse";
          *&atoken[22] = 1024;
          *&atoken[24] = v43;
          *&atoken[28] = 2114;
          *&atoken[30] = v44;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Formulating %{public}s 308 report for %s[%d] %{public}@", atoken, 0x26u);
        }

        [v52 setObject:v41 forKeyedSubscript:@"OSACrashReport"];
        mach_vm_deallocate(mach_task_self_, *x, kcd_size);
      }

      else
      {
        v33 = v52;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v50 = mach_error_string(v39);
          *atoken = 67109378;
          *&atoken[4] = v39;
          *&atoken[8] = 2080;
          *&atoken[10] = v50;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "unable to map kcdata object 0x%x (%s)", atoken, 0x12u);
        }
      }
    }

    else
    {
      v33 = v52;
    }

    objc_autoreleasePoolPop(v30);
    goto LABEL_82;
  }

  a1 = task_port;
  x[0] = -1;
  if (!task_port)
  {
    v24 = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *atoken = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Too many events in rapid succession! (pid unavailable for lw-corpse)", atoken, 2u);
      v24 = 0;
    }

    goto LABEL_82;
  }

  v24 = 0;
LABEL_45:
  v35 = pid_for_task(a1, x);
  v36 = x[0];
  v37 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v35 || v36 == -1)
  {
    if (v37)
    {
      *atoken = 67109120;
      *&atoken[4] = v35;
      v38 = "Too many events in rapid succession! (pid retrieval failed: %d)";
      goto LABEL_51;
    }
  }

  else if (v37)
  {
    *atoken = 67109120;
    *&atoken[4] = x[0];
    v38 = "Too many events in rapid succession! pid %d";
LABEL_51:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v38, atoken, 8u);
  }

LABEL_82:
  if (a2 && task_port)
  {
    mach_port_deallocate(mach_task_self_, task_port);
  }

  return v24;
}

BOOL sub_100002960()
{
  v4 = 0;
  memset(&v5, 0, sizeof(v5));
  v0 = pthread_attr_init(&v5);
  v1 = pthread_attr_setdetachstate(&v5, 2) | v0;
  v2 = v1 | pthread_create(&v4, &v5, sub_100002A30, 0);
  pthread_attr_destroy(&v5);
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100030A84();
  }

  return v2 == 0;
}

uint64_t sub_100002A30()
{
  v0 = objc_autoreleasePoolPush();
  v1 = mach_msg_server_once(sub_100001FA8, 0x8000u, dword_100054208, 50331648);
  if (v1)
  {
    v2 = v1;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *&buf[4] = v2;
      LOWORD(v115) = 2080;
      *(&v115 + 2) = mach_error_string(v2);
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "mach_msg_server_once() failed with error %d: %s", buf, 0x12u);
    }

    goto LABEL_75;
  }

  v3 = +[NSThread currentThread];
  v4 = [v3 threadDictionary];

  v5 = [v4 objectForKeyedSubscript:@"OSACrashReport"];
  v6 = v5;
  if (v5)
  {
    [v5 loadBundleInfo];
    v7 = [v6 getNotificationInfo];
    if (v7)
    {
      if (([v6 needsUrgentSubmission] & 1) != 0 || (objc_msgSend(v6, "isSimulated") & 1) == 0 && (objc_msgSend(v7, "visibleName"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "maintaining thread qos for (possibly) time-sensitive report", buf, 2u);
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  __qos_class[0] = QOS_CLASS_UNSPECIFIED;
  v94[0] = QOS_CLASS_UNSPECIFIED;
  __relative_priority[0] = 0;
  v9 = pthread_self();
  pthread_get_qos_class_np(v9, __qos_class, __relative_priority);
  pthread_set_qos_class_self_np(QOS_CLASS_UTILITY, 0);
  v10 = pthread_self();
  pthread_get_qos_class_np(v10, v94, __relative_priority);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = __qos_class[0];
    LOWORD(v115) = 1024;
    *(&v115 + 2) = v94[0];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "post-exception thread qos drop %d -> %d", buf, 0xEu);
  }

  if (!v6)
  {
    goto LABEL_72;
  }

LABEL_15:
  v11 = objc_opt_new();
  if (qword_1000541F8)
  {
    [v6 setApplicationSpecificInformation:{objc_msgSend(qword_1000541F8, "bytes")}];
  }

  if (qword_1000541F0)
  {
    [v11 setObject:qword_1000541F0 forKeyedSubscript:kOSALogOptionOverridePath];
  }

  v12 = [v6 getObserverInfo];
  if (v12)
  {
    [v11 setObject:v12 forKeyedSubscript:kOSALogOptionObserverInfo];
  }

  v73 = v12;
  v74 = v11;
  v86 = v7;
  v75 = v4;
  v76 = v0;
  v13 = [v6 saveWithOptions:v11];
  [_TtC11ReportCrash19ReportingOperations postReportOperations:v6 wasSaved:v13];
  if (+[_TtC11ReportCrash11Environment isRestore])
  {
    v14 = [v6 problemType];
    v15 = [v14 isEqualToString:@"309"];

    if (v15)
    {
      [v6 writeReportToSerial];
    }
  }

  v16 = [v6 terminationReason];
  v17 = [v16 objectForKeyedSubscript:@"namespace"];

  [v6 donateToBiome];
  v78 = [v6 exceptionType];
  v18 = [v6 procName];
  v90 = [v6 bundle_id];
  v92 = [v6 short_vers];
  v71 = [v6 decode_exceptionCodes];
  v70 = [v71 allValues];
  v19 = [v70 componentsJoinedByString:&stru_1000463C0];
  v72 = v17;
  if (!v17)
  {
    v17 = @"<none>";
  }

  v20 = [v6 terminationReasonExceptionCode];
  v85 = v13;
  if (v13)
  {
    v82 = [v6 logfile];
  }

  else
  {
    v82 = 0;
  }

  v67 = [v6 crashingAddress];
  v66 = [v6 sharedCacheAddress];
  v21 = [v6 incidentID];
  v22 = [v6 responsibleProc];
  v23 = [v6 coalitionName];
  v24 = [v6 logWritingSignature];
  v69 = v22;
  if (v85)
  {
    v25 = [v6 oldLogFile];
  }

  else
  {
    v25 = 0;
  }

  v26 = v6;
  v84 = v18;
  v89 = v90;
  v88 = v92;
  v93 = v19;
  v83 = v17;
  v91 = v20;
  v79 = v82;
  v27 = v21;
  v81 = v23;
  v7 = v86;
  v80 = v24;
  v77 = v25;
  v28 = [v26 isSimulated];
  v29 = v25;
  if (v78 != 11 && (v28 & 1) == 0)
  {
    v68 = v25;
    v30 = v84;
    if (OSARTCIsProcessOfInterest())
    {
      v129[0] = @"crk";
      v31 = +[OSASystemConfiguration sharedInstance];
      v32 = [v31 crashReporterKey];
      v33 = v32;
      v34 = @"<unknown>";
      v35 = v93;
      if (!v93)
      {
        v35 = @"<unknown>";
      }

      *__relative_priority = v32;
      v131 = v35;
      v129[1] = @"exceptionCodes";
      v129[2] = @"process";
      if (v84)
      {
        v36 = v84;
      }

      else
      {
        v36 = @"<unknown>";
      }

      if (v91)
      {
        v34 = v91;
      }

      v132 = v36;
      v133 = v34;
      v129[3] = @"terminationReasonExceptionCode";
      v129[4] = @"terminationReasonNamespace";
      v134 = v83;
      [NSDictionary dictionaryWithObjects:__relative_priority forKeys:v129 count:5];
      v38 = v37 = v7;
      rtcsc_send();

      v7 = v37;
    }

    *buf = _NSConcreteStackBlock;
    *&v115 = 3221225472;
    *(&v115 + 1) = sub_10000DAC0;
    v116 = &unk_100045AF0;
    v65 = v84;
    v117 = v65;
    v39 = v79;
    v118 = v39;
    v40 = v27;
    v119 = v40;
    v41 = v89;
    v120 = v41;
    v121 = v88;
    v87 = v7;
    v42 = v7;
    v122 = v42;
    v43 = v93;
    v123 = v43;
    v124 = v91;
    v125 = v83;
    v64 = v81;
    v126 = v64;
    v127 = v80;
    v44 = v26;
    v128 = v44;
    AnalyticsSendEventLazyHighPriority();
    if (v78 == 1 && (v67 & 0xFFFFFFFFFFFFFFLL) - 0x180000000 <= &_mh_execute_header)
    {
      *v94 = _NSConcreteStackBlock;
      v95 = 3221225472;
      v96 = sub_100024AF4;
      v97 = &unk_100045B18;
      v98 = v65;
      v100 = v67;
      v101 = v66;
      v99 = v43;
      AnalyticsSendEventLazy();
    }

    v45 = [v42 isBeta];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      __qos_class[0] = 67240450;
      __qos_class[1] = v45;
      LOWORD(v103) = 2114;
      *(&v103 + 2) = v39;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "recordCrashEvent; isBeta %{public}d, log: '%{public}@'", __qos_class, 0x12u);
    }

    if ([v39 length])
    {
      v46 = [v44 needsUrgentSubmission];
      if (v41)
      {
        v47 = v45;
      }

      else
      {
        v47 = QOS_CLASS_UNSPECIFIED;
      }

      if (v46 && v47)
      {
        DistributedCenter = CFNotificationCenterGetDistributedCenter();
        v112[0] = @"bundleID";
        v112[1] = @"incidentID";
        v113[0] = v41;
        v113[1] = v40;
        v49 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:2];
        CFNotificationCenterPostNotification(DistributedCenter, @"com.apple.ReportCrash.beta.bulletin", 0, v49, 1u);
      }

      v50 = CFNotificationCenterGetDistributedCenter();
      v110 = @"logfiles";
      v111 = v39;
      v51 = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
      CFNotificationCenterPostNotification(v50, @"com.apple.ReportCrash.crash", 0, v51, 1u);
    }

    if (v41)
    {
      if (qword_100054228[0] != -1)
      {
        sub_100030A5C();
      }

      *__qos_class = _NSConcreteStackBlock;
      *&v103 = 3221225472;
      *(&v103 + 1) = sub_10000F0EC;
      v104 = &unk_100045B60;
      v105 = v65;
      v106 = v41;
      v107 = v77;
      v108 = v39;
      v109 = v42;
      OSAStabilityMonitorEvaluateStabilityForBundleID();

      v7 = v87;
    }

    else
    {
      if (v77)
      {
        v54 = v77;
      }

      else
      {
        v54 = v39;
      }

      sub_10000F064(v65, v54);
      v7 = v87;
    }

    goto LABEL_67;
  }

  v52 = [v7 faultingImage];
  v53 = [v52 length];

  v30 = v84;
  if (v53)
  {
    v68 = v29;
    *buf = _NSConcreteStackBlock;
    *&v115 = 3221225472;
    *(&v115 + 1) = sub_100024C50;
    v116 = &unk_100045B88;
    v117 = v84;
    v118 = v7;
    AnalyticsSendEventLazy();
LABEL_67:

    v29 = v68;
  }

  v55 = v80;
  v56 = v81;

  if (v85)
  {

    v55 = v81;
    v56 = v69;
    v57 = v27;
    v59 = v73;
    v58 = v74;
    v60 = v82;
  }

  else
  {
    v60 = v27;
    v59 = v73;
    v58 = v74;
    v57 = v69;
  }

  [v26 sendToCoreAnalyticsWithDidWriteReport:v85];
  [v26 updateCrashHistory];

  v4 = v75;
  v0 = v76;
LABEL_72:
  v61 = [v4 objectForKeyedSubscript:@"OSAGPUEventReport"];
  v62 = v61;
  if (v61)
  {
    [v61 saveWithOptions:0];
  }

LABEL_75:
  [qword_100054200 decrement:"complete"];
  objc_autoreleasePoolPop(v0);
  return 0;
}

uint64_t sub_10000369C(uint64_t a1, uint64_t a2, task_id_token_t a3, int a4, uint64_t *a5, unsigned int a6, _OWORD *a7)
{
  v13 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v13)
  {
    sub_100030D04(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  v21 = a7[1];
  v24[0] = *a7;
  v24[1] = v21;
  v22 = sub_1000020F0(0, a3, 0, a2, 0, a4, a5, a6, 1u, 0, 0, v24);
  if (!v22)
  {
    mach_port_deallocate(mach_task_self_, a3);
  }

  return v22;
}

id sub_100003790()
{
  if (qword_100054188 != -1)
  {
    sub_10003038C();
  }

  v1 = qword_100054180;

  return v1;
}

BOOL sub_1000037D4(uint64_t a1, unsigned int *a2)
{
  v4 = sub_10000391C(a2);
  v5 = v4;
  if (v4 < a1)
  {
    v6 = v4;
    if (qword_100053A90 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100026C90(v7, qword_100053BE0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109632;
      *(v10 + 4) = sub_10002762C(a2);
      *(v10 + 8) = 1024;
      *(v10 + 10) = v6;
      *(v10 + 14) = 2048;
      *(v10 + 16) = a1;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unexpected kcdata item size for type %u: %u < %ld", v10, 0x18u);
    }
  }

  return v5 >= a1;
}

uint64_t sub_10000391C(uint64_t a1)
{
  v1 = *a1;
  if ((*a1 & 0xFFFFFFF0) == 0x20)
  {
    v1 = 17;
  }

  if (v1 <= 2309)
  {
    if (v1 == 17 || v1 == 19)
    {
      return *(a1 + 4);
    }

LABEL_15:
    v4 = *(a1 + 4);
    goto LABEL_19;
  }

  if (v1 != 2310)
  {
    if (v1 == 2312)
    {
      v4 = *(a1 + 4);
      if (v4 == 32)
      {
        if ((*(a1 + 8) & 0x8F) == 0)
        {
          return 24;
        }

        v4 = 32;
      }

      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v4 = *(a1 + 4);
  if (v4 == 112)
  {
    if ((*(a1 + 8) & 0x8F) == 0)
    {
      return 104;
    }

    v4 = 112;
  }

LABEL_19:
  v5 = v4 >= (*(a1 + 8) & 0xFu);
  v6 = v4 - (*(a1 + 8) & 0xF);
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003A30(uint64_t result, unsigned int *a2)
{
  if (result == 2116)
  {
    result = sub_1000037D4(1, a2);
    if (result)
    {
      result = sub_10000600C(a2);
      *(v2 + OBJC_IVAR___KcdataParser_parsed + 9) = *result == 1;
    }
  }

  else if (result == 2115)
  {
    result = sub_1000037D4(8, a2);
    v4 = result;
    if (result)
    {
      result = sub_10000600C(a2);
      v5 = *result;
    }

    else
    {
      v5 = 0;
    }

    v6 = v2 + OBJC_IVAR___KcdataParser_parsed;
    *v6 = v5;
    *(v6 + 8) = (v4 & 1) == 0;
  }

  return result;
}

uint64_t sub_100005D54()
{
  result = [v0 taskOperator];
  if (result)
  {
    v2 = *(result + OBJC_IVAR___TaskOperator_extraction);

    if (v2 == 2 || (v2 & 1) == 0)
    {
      return 0;
    }

    else
    {
      result = [v0 problemType];
      if (result)
      {
        v3 = result;
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = v5;

        if (v4 == 3747891 && v6 == 0xE300000000000000)
        {

          return 1;
        }

        else
        {
          v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

          return v7 & 1;
        }
      }
    }
  }

  return result;
}

void sub_100006564()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 stashStatus:v1 note:0];

  [v0 validateProcName];
  [v0 extractTerminationReason];
  sub_100006CCC([v0 task], &v21);
  if ((v22 & 1) == 0)
  {
    v20 = v21;
    audit_token_to_pidversion(&v20);
    isa = Int32._bridgeToObjectiveC()().super.super.isa;
    [v0 setPidVersion:isa];
  }

  if ([v0 isFullCorpse])
  {
    [v0 finishExtractionUsingCorpse];
  }

  v3 = [v0 problemType];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (v5 == 3747891 && v7 == 0xE300000000000000)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
        return;
      }
    }

    v9 = [v0 kcdataParser];
    if (!v9)
    {
      __break(1u);
      goto LABEL_18;
    }

    v10 = v9[OBJC_IVAR___KcdataParser_parsed + 9];

    if (v10 != 2 && (v10 & 1) != 0)
    {
      v11 = [v0 task];
      v12 = [v0 procName];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = [v0 kcdataParser];
        if (v17)
        {
          v18 = *&v17[OBJC_IVAR___KcdataParser_parsed];
          v19 = v17[OBJC_IVAR___KcdataParser_parsed + 8];

          sub_100025404(v11, v14, v16, v18, v19);

          return;
        }

LABEL_19:
        __break(1u);
        return;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }
}

uint64_t sub_100006CCC@<X0>(task_name_t a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *task_info_out = 0u;
  v23 = 0u;
  task_info_outCnt = sub_100006F20();
  sub_100006F20();
  result = task_info(a1, 0xFu, task_info_out, &task_info_outCnt);
  v10 = result;
  if (!result)
  {
    v18 = *task_info_out;
    v19 = v23;
LABEL_8:
    *a2 = v18;
    *(a2 + 16) = v19;
    *(a2 + 32) = v10 != 0;
    return result;
  }

  Logger.init()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v11, v12))
  {

    result = (*(v5 + 8))(v8, v4);
    goto LABEL_7;
  }

  v20 = v4;
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v24 = v14;
  *v13 = 67109378;
  *(v13 + 4) = v10;
  *(v13 + 8) = 2080;
  result = strerror(v10);
  if (result)
  {
    v15 = String.init(cString:)();
    v17 = sub_10000750C(v15, v16, &v24);

    *(v13 + 10) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Error fetching the audit token: %d (%s)", v13, 0x12u);
    sub_100007740(v14);

    result = (*(v5 + 8))(v8, v20);
LABEL_7:
    v18 = 0uLL;
    v19 = 0uLL;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000750C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000075D8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000076E4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007740(v11);
  return v7;
}

unint64_t sub_1000075D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10002CF5C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1000076E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007740(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000077F8(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  if (*a3 == -1)
  {
    return *a4;
  }

  swift_once();
  return *a4;
}

unint64_t _s11ReportCrash21GenerativeModelsStateC17getGMAvailabilitySDySSypGyFZ_0()
{
  v0 = sub_100007A2C(&_swiftEmptyArrayStorage);
  if (qword_100053A98 != -1)
  {
    swift_once();
  }

  v1 = qword_100053C60;
  v2 = (qword_100053C60 + OBJC_IVAR____TtC11ReportCrash21GenerativeModelsState_currentState);
  swift_beginAccess();
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    v12 = &type metadata for String;
    *&v11 = v4;
    *(&v11 + 1) = v3;
    sub_100007B3C(&v11, v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v0;
    sub_100007B4C(v10, 0x6574617473, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v0 = v13;
  }

  v6 = OBJC_IVAR____TtC11ReportCrash21GenerativeModelsState_reasons;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16))
  {
    v12 = sub_100026CC8(&qword_100053CA8, &qword_10003C178);
    *&v11 = v7;
    sub_100007B3C(&v11, v10);

    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_100007B4C(v10, 0x736E6F73616572, 0xE700000000000000, v8);
  }

  return v0;
}

unint64_t sub_100007A2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026CC8(&qword_100053C58, &unk_10003C110);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002F108(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100007C9C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100007B3C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_100007B3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_100007B4C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100007C9C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100027D34();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100007D14(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100007C9C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100007740(v23);

    return sub_100007B3C(a1, v23);
  }

  else
  {
    sub_100008084(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_100007C9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100007FCC(a1, a2, v6);
}

uint64_t sub_100007D14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100026CC8(&qword_100053C58, &unk_10003C110);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100007B3C(v25, v37);
      }

      else
      {
        sub_1000076E4(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100007B3C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_100007FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_OWORD *sub_100008084(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100007B3C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_10000870C(uint64_t a1)
{
  if (!qword_1000540F8)
  {
    v2 = CFPreferencesCopyAppValue(@"TrialCache", @"com.apple.ReportCrash");
    v3 = qword_1000540F8;
    qword_1000540F8 = v2;

    if (!qword_1000540F8)
    {
      goto LABEL_9;
    }
  }

  [*(a1 + 32) capture_time];
  v5 = v4;
  v6 = [qword_1000540F8 objectForKeyedSubscript:@"lastCheckTime"];
  [v6 doubleValue];
  v8 = v5 - v7;

  if (v8 > 86400.0)
  {
    if (qword_1000540F8)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        [*(a1 + 32) capture_time];
        v10 = v9;
        v11 = [qword_1000540F8 objectForKeyedSubscript:@"lastCheckTime"];
        [v11 doubleValue];
        v13 = v12;
        [*(a1 + 32) capture_time];
        v15 = v14;
        v16 = [qword_1000540F8 objectForKeyedSubscript:@"lastCheckTime"];
        [v16 doubleValue];
        *buf = 134218752;
        v46 = v10;
        v47 = 2048;
        v48 = v13;
        v49 = 2048;
        v50 = v15 - v17;
        v51 = 2048;
        v52 = 0x40F5180000000000;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "trial data cache expired (%.1f - %.1f = %.1f [%.1f])", buf, 0x2Au);
      }

LABEL_11:
      v18 = objc_opt_new();
      [*(a1 + 32) capture_time];
      v19 = [NSNumber numberWithDouble:?];
      [v18 setObject:v19 forKeyedSubscript:@"lastCheckTime"];

      if (objc_opt_class())
      {
        v20 = objc_opt_new();
        v21 = +[TRIAllocationStatus defaultProvider];
        v22 = objc_opt_new();
        v23 = +[OSASystemConfiguration sharedInstance];
        v24 = [v23 crashReporterKey];
        v44 = 0;
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_10001FF3C;
        v42[3] = &unk_1000456A8;
        v25 = v22;
        v43 = v25;
        v26 = [v21 enumerateSampledActiveExperimentsForEnvironment:0 correlationID:v24 error:&v44 block:v42];
        v27 = v44;

        if (v26)
        {
          [v18 setObject:v25 forKeyedSubscript:@"experiments"];
        }

        else
        {
          v28 = [v27 localizedDescription];
          v29 = [NSString stringWithFormat:@"experiments query returned: %@", v28];
          [v20 addObject:v29];
        }

        v30 = objc_opt_new();
        v31 = +[OSASystemConfiguration sharedInstance];
        v32 = [v31 crashReporterKey];
        v41 = v27;
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_100020068;
        v39[3] = &unk_1000456D0;
        v33 = v30;
        v40 = v33;
        v34 = [v21 enumerateSampledActiveRolloutsForCorrelationID:v32 error:&v41 block:v39];
        v35 = v41;

        if (v34)
        {
          [v18 setObject:v33 forKeyedSubscript:@"rollouts"];
        }

        else
        {
          v36 = [v35 localizedDescription];
          v37 = [NSString stringWithFormat:@"rollout query returned: %@", v36];
          [v20 addObject:v37];
        }

        if ([v20 count])
        {
          [v18 setObject:v20 forKeyedSubscript:@"errors"];
        }

        CFPreferencesSetAppValue(@"TrialCache", v18, @"com.apple.ReportCrash");
        CFPreferencesAppSynchronize(@"com.apple.ReportCrash");
      }

      else
      {
        [v18 setObject:&off_10004E4F0 forKeyedSubscript:@"errors"];
      }

      v38 = qword_1000540F8;
      qword_1000540F8 = v18;

      return;
    }

LABEL_9:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "trial data initial fetch", buf, 2u);
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "trial data cache valid", buf, 2u);
  }
}

uint64_t sub_10000A51C()
{
  if ([v0 exceptionType])
  {
    result = [v0 exceptionCode];
    if (result)
    {
      if (*result == 262)
      {
        return 1;
      }

      result = [v0 exceptionCode];
      if (result)
      {
        return *result == 263;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else if (([v0 exceptionType] & 0xC) != 0 && (v1 = objc_msgSend(v0, "codeZeroForGuardException"), sub_10000A60C(v1) == 5))
  {
    v2 = sub_10000F824(v1);
    return (v2 - 200) < 3 || v2 == 7 || v2 == 64;
  }

  else
  {
    return 0;
  }

  return result;
}

void *sub_10000A614(vm_map_read_t a1, vm_address_t a2, vm_size_t a3)
{
  data = 0;
  dataCnt = 0;
  v6 = vm_read(a1, a2, a3, &data, &dataCnt);
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109888;
      v14 = a1;
      v15 = 1024;
      v16 = v7;
      v17 = 2048;
      v18 = a2;
      v19 = 2048;
      v20 = a3 + a2;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "vm_read failed for task %u, kr=%d, start_address = %p, end_address = %p", buf, 0x22u);
    }

    return 0;
  }

  else
  {
    v9 = malloc_type_calloc(dataCnt + 1, 1uLL, 0xA42CC255uLL);
    v8 = v9;
    if (v9)
    {
      memcpy(v9, data, dataCnt);
    }

    vm_deallocate(mach_task_self_, data, dataCnt);
  }

  return v8;
}

void sub_10000A758(id a1, NSMutableDictionary *a2)
{
  v3 = a2;
  v2 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:@"path"];
  if (v2)
  {
    [(NSMutableDictionary *)v3 setObject:v2 forKeyedSubscript:@"path"];
  }
}

uint64_t sub_10000AAE4()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v0 - 8);
  v62 = v0;
  v1 = *(v61 + 64);
  __chkstk_darwin(v0);
  v60 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = 0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v60 - v10;
  __chkstk_darwin(v9);
  v13 = &v60 - v12;
  v67 = 0;
  if (qword_100053AB8 != -1)
  {
    swift_once();
  }

  v14 = off_100053D78;
  if (off_100053D78)
  {
    v15 = *(off_100053D78 + 6);
  }

  else
  {
    v15 = 25;
  }

  Logger.init()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "Matching service crash/hang count: %ld", v18, 0xCu);
  }

  v19 = *(v4 + 8);
  v19(v13, v3);
  if (v15 >= 25)
  {
    Logger.init()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Exceeded max per-boot matching service failures.", v29, 2u);
    }

    v19(v11, v3);
    return 0;
  }

  v20 = v64;
  v21 = sub_10000B338(v64);
  if (!v21)
  {
    Logger.init()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Couldn't initialize match result", v33, 2u);
    }

    v19(v8, v3);
    goto LABEL_30;
  }

  v22 = OBJC_IVAR____TtC11ReportCrash23CrashPatternMatchResult_success;
  if (*(v21 + OBJC_IVAR____TtC11ReportCrash23CrashPatternMatchResult_success))
  {
LABEL_11:
    v23 = v21;
    v24 = sub_10002A3F8();
    sub_10002B808(v24);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v20 setPatternUUIDs:isa];

    v26 = sub_10002AB34();
    goto LABEL_31;
  }

  v34 = *(v21 + OBJC_IVAR____TtC11ReportCrash23CrashPatternMatchResult_errorMessage + 8);
  if (v34)
  {
    v35 = v21;
    v36 = *(v21 + OBJC_IVAR____TtC11ReportCrash23CrashPatternMatchResult_errorMessage) == 0xD000000000000015 && v34 == 0x800000010003BBA0;
    if (v36 || (v37 = *(v21 + OBJC_IVAR____TtC11ReportCrash23CrashPatternMatchResult_errorMessage), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (, v38._countAndFlagsBits = 0xD000000000000024, v38._object = 0x800000010003BBC0, v39 = String.hasPrefix(_:)(v38), , v39))
    {
      if (v14)
      {
        v40 = v14[4];
        v41 = v60;
        static DispatchWorkItemFlags.barrier.getter();
        v42 = v63;
        OS_dispatch_queue.sync<A>(flags:execute:)();
        v63 = v42;

        (*(v61 + 8))(v41, v62);
      }

      else
      {
      }

      goto LABEL_30;
    }

    v21 = v35;
    if (*(v35 + v22) == 1)
    {
      goto LABEL_11;
    }
  }

LABEL_30:
  v26 = 0;
LABEL_31:
  v43 = sub_10002B544();
  if ((v43 & 1) == 0 && (v26 & 1) == 0)
  {
    if (v67)
    {
      return 16;
    }

    return 0;
  }

  v44 = v43 ^ 1 | v26;
  if ([objc_opt_self() isInLDM])
  {
    goto LABEL_40;
  }

  if (qword_100053AA0 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v45 = off_100053D60;
    if (!off_100053D60)
    {
      goto LABEL_53;
    }

    result = [v20 procName];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v46 = result;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = *(v45 + 4);
    __chkstk_darwin(v51);
    *(&v60 - 4) = v45;
    *(&v60 - 3) = v47;
    *(&v60 - 2) = v49;
    OS_dispatch_queue.sync<A>(execute:)();

    if (aBlock[0])
    {
LABEL_40:
      v52 = sub_10002EC4C(0x15FuLL) + 75;
      v66 = v52;
      if ((v44 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
LABEL_53:
      v52 = 10;
      v66 = 10;
      if ((v44 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v53 = sub_10002EC4C(0x15uLL) + 15;
    if (v53 <= v52)
    {
      v53 = v52;
    }

    v66 = v53;
LABEL_44:
    if (qword_100053AB0 != -1)
    {
      swift_once();
    }

    v54 = qword_100053D70;
    v55 = swift_allocObject();
    v55[2] = &v66;
    v55[3] = &v67;
    v55[4] = v20;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_10002F7A8;
    *(v56 + 24) = v55;
    aBlock[4] = sub_10002F7B4;
    aBlock[5] = v56;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC40;
    aBlock[3] = &unk_100046058;
    v57 = _Block_copy(aBlock);
    v58 = v20;

    dispatch_sync(v54, v57);
    _Block_release(v57);
    LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

    if ((v57 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_56:
    swift_once();
  }

  v59 = v67;

  if (v59)
  {
    result = 17;
  }

  else
  {
    result = 0;
  }

  if (!(v44 & 1 | ((v59 & 1) == 0)))
  {
    return 16;
  }

  return result;
}

uint64_t sub_10000B2F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t *sub_10000B338(void *a1)
{
  v2 = [a1 problemType];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4 == 3747891 && v6 == 0xE300000000000000)
  {

    goto LABEL_9;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
LABEL_9:
    if (!&class metadata base offset for CrashPatternInfo || !&protocol conformance descriptor for CrashPatternInfo || !&protocol conformance descriptor for CrashPatternInfo || !&type metadata accessor for CrashPatternInfo || !&nominal type descriptor for CrashPatternInfo || !&type metadata for CrashPatternInfo || !&class metadata base offset for DiagnosticPatternMatching || !&type metadata accessor for DiagnosticPatternMatching || !&nominal type descriptor for DiagnosticPatternMatching || !&type metadata for DiagnosticPatternMatching || (v12 = [a1 patternInfo]) == 0)
    {
      v29 = objc_allocWithZone(type metadata accessor for CrashPatternMatchResult());
      v11 = 0x800000010003B980;
      v10 = 0xD000000000000020;
      return sub_10002A0D8(0, 0, v10, v11);
    }

    v13 = v12;
    v14 = objc_allocWithZone(type metadata accessor for DiagnosticPatternMatching());
    v15 = DiagnosticPatternMatching.init(type:)();
    if (v15)
    {
      v16 = v15;
      v17 = sub_100026CC8(&qword_100053D48, "Pc");
      v18 = *(v17 - 8);
      v19 = *(v18 + 64);
      __chkstk_darwin(v17);
      v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
      v21 = DiagnosticPatternMatching.lookForCrashPatternRemote(report:)();
      __chkstk_darwin(v21);
      v22 = (&v37 - v20);
      (*(v18 + 16))(&v37 - v20, &v37 - v20, v17);
      v23 = (*(v18 + 88))(&v37 - v20, v17);
      if (&enum case for PatternMatchResult.success<A>(_:) && v23 == enum case for PatternMatchResult.success<A>(_:))
      {
        (*(v18 + 96))(&v37 - v20, v17);
        v24 = *v22;
        objc_allocWithZone(type metadata accessor for CrashPatternMatchResult());
        v25 = 1;
        v26 = v24;
        v27 = 0;
        v28 = 0;
      }

      else
      {
        if (!&enum case for PatternMatchResult.failure<A>(_:) || v23 != enum case for PatternMatchResult.failure<A>(_:))
        {
          v35 = objc_allocWithZone(type metadata accessor for CrashPatternMatchResult());
          v33 = sub_10002A0D8(0, 0, 0xD000000000000024, 0x800000010003B9E0);

          v36 = *(v18 + 8);
          v36(&v37 - v20, v17);
          v36(v22, v17);
          return v33;
        }

        (*(v18 + 96))(&v37 - v20, v17);
        v31 = *v22;
        v32 = v22[1];
        objc_allocWithZone(type metadata accessor for CrashPatternMatchResult());
        v25 = 0;
        v26 = 0;
        v27 = v31;
        v28 = v32;
      }

      v33 = sub_10002A0D8(v25, v26, v27, v28);

      (*(v18 + 8))(&v37 - v20, v17);
    }

    else
    {
      v34 = objc_allocWithZone(type metadata accessor for CrashPatternMatchResult());
      v33 = sub_10002A0D8(0, 0, 0xD000000000000020, 0x800000010003B9B0);
    }

    return v33;
  }

LABEL_7:
  v9 = objc_allocWithZone(type metadata accessor for CrashPatternMatchResult());
  v10 = 0xD00000000000001ALL;
  v11 = 0x800000010003B960;
  return sub_10002A0D8(0, 0, v10, v11);
}

id sub_10000B7E0()
{
  result = 0;
  if (&class metadata base offset for CrashPatternInfo)
  {
    v2 = &protocol conformance descriptor for CrashPatternInfo == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2 && &protocol conformance descriptor for CrashPatternInfo != 0 && &type metadata accessor for CrashPatternInfo != 0 && &nominal type descriptor for CrashPatternInfo != 0 && &type metadata for CrashPatternInfo != 0)
  {
    v16 = &_swiftEmptyArrayStorage;
    v7 = [v0 threads];
    if (v7)
    {
      v8 = v7;
      sub_100026CC8(&qword_100053D50, &qword_10003C200);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000B9A8(v9, &v16);
    }

    v15 = &_swiftEmptyArrayStorage;
    v10 = [v0 usedImages];
    if (v10)
    {
      v11 = v10;
      sub_100026CC8(&qword_100053D50, &qword_10003C200);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000CEEC(v12, &v15);
    }

    result = [v0 procName];
    if (result)
    {
      v13 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = objc_allocWithZone(type metadata accessor for CrashPatternInfo());
      return CrashPatternInfo.init(procName:threads:usedImages:)();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10000B9A8(uint64_t result, void **a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 32); ; ++i)
    {
      v6 = *i;

      sub_10000BA30(&v6, a2);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10000BA30(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v40 = 0x73656D617266;
  v41 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16))
  {
    return sub_10000C198(v42);
  }

  v5 = sub_10000C030(v42);
  if ((v6 & 1) == 0)
  {
    return sub_10000C198(v42);
  }

  sub_1000076E4(*(v4 + 56) + 32 * v5, &v43);
  sub_10000C198(v42);
  sub_100026CC8(&qword_100053D58, &qword_10003C208);
  result = swift_dynamicCast();
  if (result)
  {
    v38[1] = v2;
    v39 = a2;
    v8 = *(v40 + 16);
    v38[0] = v40;
    if (v8)
    {
      v9 = v40 + 32;
      v10 = &_swiftEmptyArrayStorage;
      do
      {
        v11 = *v9;
        if (*(*v9 + 16))
        {
          v12 = *v9;

          v13 = sub_100007C9C(0x646E496567616D69, 0xEA00000000007865);
          if (v14 & 1) != 0 && (sub_1000076E4(*(v11 + 56) + 32 * v13, v42), (swift_dynamicCast()))
          {
            v15 = type metadata accessor for CrashPatternInfo.Frame();
            v45 = v38;
            v16 = *(v15 - 8);
            v17 = *(v16 + 64);
            __chkstk_darwin(v15);
            v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
            if (*(v11 + 16) && (v20 = sub_100007C9C(0x6C6F626D7973, 0xE600000000000000), (v21 & 1) != 0))
            {
              sub_1000076E4(*(v11 + 56) + 32 * v20, v42);

              swift_dynamicCast();
            }

            else
            {
            }

            CrashPatternInfo.Frame.init(symbol:imageIndex:)();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_10000C3C8(0, v10[2] + 1, 1, v10);
            }

            v23 = v10[2];
            v22 = v10[3];
            if (v23 >= v22 >> 1)
            {
              v10 = sub_10000C3C8(v22 > 1, v23 + 1, 1, v10);
            }

            v10[2] = v23 + 1;
            (*(v16 + 32))(v10 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v23, v19, v15);
          }

          else
          {
          }
        }

        v9 += 8;
        --v8;
      }

      while (v8);
    }

    v24 = type metadata accessor for CrashPatternInfo.Thread();
    v25 = *(v24 - 8);
    v26 = *(v25 + 64);
    __chkstk_darwin(v24);
    v28 = v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = 1701667182;
    v44 = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v29 = sub_10000C030(v42), (v30 & 1) != 0))
    {
      sub_1000076E4(*(v4 + 56) + 32 * v29, &v43);
      sub_10000C198(v42);
      swift_dynamicCast();
    }

    else
    {
      sub_10000C198(v42);
    }

    v43 = 0x6572656767697274;
    v44 = 0xE900000000000064;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v31 = sub_10000C030(v42), (v32 & 1) != 0))
    {
      sub_1000076E4(*(v4 + 56) + 32 * v31, &v43);
      sub_10000C198(v42);
      swift_dynamicCast();
    }

    else
    {
      sub_10000C198(v42);
    }

    CrashPatternInfo.Thread.init(frames:name:triggered:)();
    v33 = v39;
    v34 = *v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v33 = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_10000CEC0(0, v34[2] + 1, 1, v34);
      *v33 = v34;
    }

    v37 = v34[2];
    v36 = v34[3];
    if (v37 >= v36 >> 1)
    {
      v34 = sub_10000CEC0(v36 > 1, v37 + 1, 1, v34);
      *v39 = v34;
    }

    v34[2] = v37 + 1;
    return (*(v25 + 32))(v34 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v37, v28, v24);
  }

  return result;
}

unint64_t sub_10000C030(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000C0D0(a1, v4);
}

unint64_t sub_10000C0D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000C074(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000C198(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

size_t sub_10000C1EC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100026CC8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10000CEEC(uint64_t result, void **a2)
{
  v18 = a2;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = (result + 32);
    do
    {
      v4 = *v3;
      v19 = 1701667182;
      v20 = 0xE400000000000000;

      AnyHashable.init<A>(_:)();
      if (*(v4 + 16) && (v5 = sub_10000C030(v21), (v6 & 1) != 0))
      {
        sub_1000076E4(*(v4 + 56) + 32 * v5, v22);
        sub_10000C198(v21);
        if (swift_dynamicCast())
        {
          v7 = type metadata accessor for CrashPatternInfo.BinaryImage();
          v23 = &v17;
          v8 = *(v7 - 8);
          v9 = *(v8 + 64);
          __chkstk_darwin(v7);
          v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
          CrashPatternInfo.BinaryImage.init(name:)();
          v12 = v18;
          v13 = *v18;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v12 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v13 = sub_10000D1B8(0, v13[2] + 1, 1, v13);
            *v18 = v13;
          }

          v16 = v13[2];
          v15 = v13[3];
          if (v16 >= v15 >> 1)
          {
            v13 = sub_10000D1B8(v15 > 1, v16 + 1, 1, v13);
            *v18 = v13;
          }

          v13[2] = v16 + 1;
          (*(v8 + 32))(v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v11, v7);

          goto LABEL_5;
        }
      }

      else
      {
        sub_10000C198(v21);
      }

LABEL_5:
      ++v3;
      --v2;
    }

    while (v2);
  }

  return result;
}

id sub_10000D1D4(id result, char a2)
{
  if (a2)
  {
    v2 = result;
    result = [result needsUrgentSubmission];
    if (OSASubmissionClient && result != 0)
    {
      if (qword_100053AA8 != -1)
      {
        swift_once();
      }

      v21[2] = qword_100053D68;
      v4 = [v2 proc_id];
      v5 = [v2 pidVersion];
      v6 = [v2 sroute_id];
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v6;
      *(v7 + 32) = v2;
      *(v7 + 40) = v4;
      aBlock[4] = sub_10002FE64;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002FA4C;
      aBlock[3] = &unk_1000460F8;
      v8 = _Block_copy(aBlock);
      v9 = type metadata accessor for DispatchQoS();
      v21[1] = v21;
      v10 = *(v9 - 8);
      v11 = *(v10 + 64);
      __chkstk_darwin(v9);
      v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = v5;
      v15 = v2;
      static DispatchQoS.unspecified.getter();
      v16 = type metadata accessor for DispatchWorkItemFlags();
      v21[0] = v21;
      v17 = *(v16 - 8);
      v18 = *(v17 + 64);
      __chkstk_darwin(v16);
      v20 = v21 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21[3] = &_swiftEmptyArrayStorage;
      sub_10002FE78();
      sub_100026CC8(&qword_100053B08, &qword_10003BFB8);
      sub_10002FED0();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v8);

      (*(v17 + 8))(v20, v16);
      (*(v10 + 8))(v13, v9);
    }
  }

  return result;
}

uint64_t sub_10000D51C()
{

  return _swift_deallocObject(v0, 44, 7);
}

id sub_10000D580(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002335C;
  v11[3] = &unk_100045758;
  v6 = (1000 * a3);
  v14 = a1;
  v12 = a2;
  v7 = objc_alloc_init(NSMutableString);
  v13 = v7;
  v15 = a4;
  v8 = v12;
  if ([OSAReport executeWithTimeout:v6 Code:v11])
  {
    v9 = [NSString stringWithFormat:@"Timeout executing '%s'", a1];
  }

  else
  {

    v9 = v7;
  }

  return v9;
}

id sub_10000DAC0(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"process"];
  if (*(a1 + 40))
  {
    v3 = &off_10004DEB0;
  }

  else
  {
    v3 = &off_10004DEC8;
  }

  [v2 setObject:v3 forKeyedSubscript:@"logwritten"];
  [v2 setObject:*(a1 + 48) forKeyedSubscript:@"incidentID"];
  [v2 setObject:*(a1 + 56) forKeyedSubscript:@"bundleID"];
  [v2 setObject:*(a1 + 64) forKeyedSubscript:@"appVersion"];
  v4 = [*(a1 + 72) bundleVersion];
  [v2 setObject:v4 forKeyedSubscript:@"bundleVersion"];

  [v2 setObject:*(a1 + 80) forKeyedSubscript:@"exceptionCodes"];
  [v2 setObject:*(a1 + 88) forKeyedSubscript:@"terminationReasonExceptionCode"];
  [v2 setObject:*(a1 + 96) forKeyedSubscript:@"terminationReasonNamespace"];
  [v2 setObject:*(a1 + 104) forKeyedSubscript:@"coalitionName"];
  [v2 setObject:*(a1 + 112) forKeyedSubscript:@"logWritingSignature"];
  v5 = +[OSASystemConfiguration sharedInstance];
  v6 = [v5 isComputeController];

  if (v6)
  {
    [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"isComputeController"];
  }

  [*(a1 + 120) addFieldsToCrashEvent:v2];

  return v2;
}

void sub_10000DDA4()
{
  v1 = [v0 problemType];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == 3747891 && v5 == 0xE300000000000000)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        return;
      }
    }

    if ([v0 consecutiveCrashCount] || objc_msgSend(v0, "throttleTimeout"))
    {
      v8 = String._bridgeToObjectiveC()();
      v9 = swift_allocObject();
      *(v9 + 16) = v0;
      v12[4] = sub_10000E170;
      v12[5] = v9;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_10000DFD0;
      v12[3] = &unk_100045EF0;
      v10 = _Block_copy(v12);
      v11 = v0;

      AnalyticsSendEventLazy();
      _Block_release(v10);
    }
  }
}

uint64_t sub_10000DF44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DF8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DF9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DFAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DFBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Class sub_10000DFD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10000E6A8();
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

unint64_t sub_10000E05C(void *a1)
{
  v2 = sub_10000E178(&_swiftEmptyArrayStorage);
  if ([a1 consecutiveCrashCount])
  {
    [a1 consecutiveCrashCount];
    isa = UInt32._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000E27C(isa, 0xD000000000000015, 0x800000010003B7C0, isUniquelyReferenced_nonNull_native);
  }

  if ([a1 throttleTimeout])
  {
    [a1 throttleTimeout];
    v5 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_10000E27C(v5, 0x656C74746F726874, 0xEF74756F656D6954, v6);
  }

  return v2;
}

unint64_t sub_10000E178(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026CC8(&qword_100053C50, &qword_10003C108);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100007C9C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000E27C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100007C9C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000E3F4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100007C9C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100027ED8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_10000E3F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100026CC8(&qword_100053C50, &qword_10003C108);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_10000E6A8()
{
  result = qword_100053C30;
  if (!qword_100053C30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100053C30);
  }

  return result;
}

void sub_10000E718(char a1)
{
  v3 = [v1 exceptionCode];
  if (v3)
  {
    v4 = v3;
    if (sub_10000E890([v1 exceptionType], v3))
    {
      v5 = String._bridgeToObjectiveC()();
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v1;
      *(v6 + 32) = a1 & 1;
      v9[4] = sub_100027B10;
      v9[5] = v6;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_10000DFD0;
      v9[3] = &unk_100045EA0;
      v7 = _Block_copy(v9);
      v8 = v1;

      AnalyticsSendEventLazy();
      _Block_release(v7);
    }
  }
}

uint64_t sub_10000E848()
{

  return _swift_deallocObject(v0, 33, 7);
}

void sub_10000E8FC()
{
  if (&type metadata accessor for CrashHistory)
  {
    v1 = &nominal type descriptor for CrashHistory == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1 || &type metadata for CrashHistory == 0)
  {
    return;
  }

  v3 = [v0 cs_signing_id];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = [v0 procName];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if ([v0 isSimulated])
    {
      goto LABEL_18;
    }

    v7 = [v0 problemType];
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v9 == 3747891 && v11 == 0xE300000000000000)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    static CrashHistory.updateCrashDate(withProcName:codeSignId:)();
    goto LABEL_18;
  }

LABEL_19:
}

void sub_10000F064(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if ([v3 length])
  {
    if ([_TtC11ReportCrash8AppGroup isALE:v5])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    [OSADiagnosticsReporterSupport handleDiagnosticLog:v4 logPath:v3 completion:0];
  }
}

void sub_10000F0EC(void *a1, int a2)
{
  if (a2)
  {
    v3 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Skipping alerting because rollback was recommended.", v7, 2u);
    }
  }

  else
  {
    v5 = a1[4];
    v6 = a1[6];
    if (v6)
    {
    }

    else
    {
      v6 = a1[7];
    }

    sub_10000F064(v5, v6);
  }
}

Swift::Int sub_10000F210(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026CC8(&qword_100053BA8, &unk_10003C0B8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10000F378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10000F6AC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10000F6E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F71C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F75C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F798()
{

  return _swift_deallocObject(v0, 44, 7);
}

uint64_t sub_10000F7D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10000F82C()
{
  if (&kThreadContextExceptionPairOffset)
  {
    v1 = [NSNumber numberWithUnsignedInt:kThreadContextExceptionPairOffset];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_10000FB3C(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("com.apple.ReportCrash.GPUEventTailspinQueue", v3);
  v2 = qword_100054070;
  qword_100054070 = v1;
}

void sub_10000FBA4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 56) fileSystemRepresentation];
  if (qword_100054090 != -1)
  {
    sub_10002FFAC();
  }

  if (off_100054080)
  {
    v4 = open_dprotected_np(v3, 514, 4, 0, 420);
    v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if ((v4 & 0x80000000) != 0)
    {
      if (v5)
      {
        *buf = 136315138;
        v10 = v3;
        v8 = "GPURestartReport: Failed to create tailspin file (%s)";
        goto LABEL_12;
      }
    }

    else
    {
      if (v5)
      {
        *buf = 136315138;
        v10 = v3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "GPURestartReport: Saving tailspin output to %s", buf, 0xCu);
      }

      v6 = off_100054080(v4);
      close(v4);
      v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v7)
        {
          *buf = 136315138;
          v10 = v3;
          v8 = "GPURestartReport: Succesfully saved tailspin output to %s";
LABEL_12:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
        }
      }

      else
      {
        if (v7)
        {
          *buf = 136315138;
          v10 = v3;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "GPURestartReport: Failed to save tailspin output to %s", buf, 0xCu);
        }

        unlink(v3);
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10000FF80(id a1)
{
  v1 = dlopen("/usr/lib/libtailspin.dylib", 1);
  qword_100054088 = v1;
  if (!v1)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v2 = "GPURestartReport: libtailspin not available";
    v3 = buf;
    goto LABEL_7;
  }

  off_100054080 = dlsym(v1, "tailspin_dump_output_sync");
  if (!off_100054080 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 0;
    v2 = "GPURestartReport: tailspin_dump_output_sync not found";
    v3 = &v4;
LABEL_7:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v2, v3, 2u);
  }
}

void sub_100010BA8(uint64_t a1)
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.osanalytics"];
  v3 = [v2 objectForKey:@"SymbolicateCrashes"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v5 = 1;
  }

  dword_1000540C8 = v5;
  v6 = [v2 objectForKey:@"ExcDiagToolTimeout"];

  v7 = [v6 intValue];
  if (v7 >= 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = 20;
  }

  dword_1000540CC = v8;
  v9 = [v2 objectForKey:@"ExcDiagToolExtras"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v9;
    v10 = [NSArray arrayWithObjects:&v25 count:1];
    v11 = *(a1 + 32);
    v12 = *(v11 + 15984);
    *(v11 + 15984) = v10;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(a1 + 32) + 15984), v9);
    }
  }

  v13 = +[OSASystemConfiguration sharedInstance];
  v14 = [v13 getTaskingKey:@"disableDiagInfo"];

  byte_1000540D0 = [v14 BOOLValue];
  if ((byte_1000540D0 & 1) == 0)
  {
    v15 = +[OSASystemConfiguration sharedInstance];
    v16 = [v15 getTaskingKey:@"enableMemoryGraph"];

    byte_1000540D1 = [v16 BOOLValue];
    if (v16)
    {
      v17 = [v16 BOOLValue];
    }

    else
    {
      v17 = 0;
    }

    byte_1000540D2 = v17;
    v18 = +[OSASystemConfiguration sharedInstance];
    v19 = [v18 getTaskingKey:@"enableReportMemoryException"];

    if (v19)
    {
      v20 = [v19 BOOLValue];
    }

    else
    {
      v20 = 1;
    }

    byte_1000540D3 = v20;
  }

  v21 = +[OSASystemConfiguration sharedInstance];
  v22 = [v21 getTaskingKey:@"saveExtHangLogs"];
  byte_1000540D4 = [v22 BOOLValue];

  v23 = +[OSASystemConfiguration sharedInstance];
  v24 = [v23 getTaskingKey:@"disableLogQuery"];
  byte_1000540D5 = [v24 BOOLValue];
}

void sub_100010FC4(uint64_t a1)
{
  v2 = [NSString stringWithUTF8String:CSSymbolOwnerGetPath()];
  if (([v2 containsString:*(a1 + 32)] & 1) != 0 || objc_msgSend(v2, "containsString:", @"/usr/local/libexec/rosetta/runtime"))
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100013C70(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1[4];
  v8 = a1[5];
  v9 = a4;
  v10 = [v8 composeFrame:a2 info:a3];
  [v7 addObject:v10];

  v11 = a1[5];
  v12 = [v9 symbolInfo];

  [v11 updateLogWritingSignatureWithSymbol:v12 address:a1[6]];
}

id sub_100014208(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _findContainingTextSegmentRegion:*(a1 + 40) address:a2];
  v3 = [v2 path];

  return v3;
}

void sub_10001482C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 description];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Attempting to read data: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1000147D0);
  }

  _Unwind_Resume(a1);
}

void sub_100014A9C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 16368) objectForKeyedSubscript:v10];

  v7 = *(*(a1 + 32) + 16368);
  if (v6)
  {
    v8 = [v7 objectForKeyedSubscript:v10];
    v9 = [v8 arrayByAddingObjectsFromArray:v5];
    [*(*(a1 + 32) + 16368) setObject:v9 forKeyedSubscript:v10];
  }

  else
  {
    [v7 setObject:v5 forKeyedSubscript:v10];
  }
}

void sub_100014B7C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:v10];

  v7 = *(*(a1 + 32) + 120);
  if (v6)
  {
    v8 = [v7 objectForKeyedSubscript:v10];
    v9 = [v8 arrayByAddingObjectsFromArray:v5];
    [*(*(a1 + 32) + 120) setObject:v9 forKeyedSubscript:v10];
  }

  else
  {
    [v7 setObject:v5 forKeyedSubscript:v10];
  }
}

void sub_100014C5C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:v10];

  v7 = *(*(a1 + 32) + 128);
  if (v6)
  {
    v8 = [v7 objectForKeyedSubscript:v10];
    v9 = [v8 arrayByAddingObjectsFromArray:v5];
    [*(*(a1 + 32) + 128) setObject:v9 forKeyedSubscript:v10];
  }

  else
  {
    [v7 setObject:v5 forKeyedSubscript:v10];
  }
}

void sub_100014FD0(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ReportCrash"];
  qword_1000540D8 = [v1 integerForKey:@"AppSpecificBufferSize"];
}

void sub_100015030(uint64_t a1)
{
  v8 = 0;
  Name = CSRegionGetName();
  if (!strncmp(Name, "__DATA", 6uLL) && strstr(Name, "__crash_info"))
  {
    Range = CSRegionGetRange();
    v5 = [*(a1 + 32) _readDataAtAddress:Range size:v4];
    v6 = v5;
    if (v5)
    {
      memset(__src, 0, 328);
      [v5 bytes];
      [v6 length];
      __memcpy_chk();
      v7 = *(*(a1 + 32) + 16536);
      memcpy(__dst, __src, sizeof(__dst));
      [v7 processCrashReporterAnnotations:__dst];
    }
  }
}

uint64_t sub_100015744(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  [*(a1 + 32) _regionAtAddress:a2 immutableCheck:&v5 + 1 isInSharedCache:&v5];
  v3 = 0;
  if (HIBYTE(v5) == 1)
  {
    if (v5)
    {
      v3 = 1;
    }

    else
    {
      v3 = *(a1 + 40);
    }
  }

  return v3 & 1;
}

void sub_1000159E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100015C28;
  v20 = &unk_100045480;
  v21 = &v27;
  v22 = &v23;
  CSSymbolOwnerForeachSegment();
  if (v28[3] || v24[3])
  {
    Architecture = CSSymbolOwnerGetArchitecture();
    v8 = macho_arch_name_for_cpu_type(Architecture, SHIDWORD(Architecture));
    v9 = *(*(a1 + 32) + 104);
    v10 = v28[3];
    v11 = v24[3];
    Name = CSSymbolOwnerGetName();
    [v9 addImageLegacy:CFUUIDBytes address:v10 size:v11 - v10 + 1 name:Name path:CSSymbolOwnerGetPath() arch:{v8, _NSConcreteStackBlock, 3221225472, sub_100015C28, &unk_100045480, &v27, &v23}];
    v13 = *(a1 + 32);
    v14 = *(v13 + 16128);
    if (v28[3] < v14 || v24[3] >= *(v13 + 16136) + v14)
    {
      v15 = *(a1 + 40);
      v16 = [NSNumber numberWithUnsignedLongLong:?];
      [v15 addObject:v16];
    }
  }

  if (*(a1 + 48))
  {
    [*(a1 + 32) _extractCrashReporterAnnotationsFromSymbolOwner:a2 withMemory:a3];
  }

  [*(a1 + 32) _extractInfoPlistFromSymbolOwner:{a2, a3, v17, v18, v19, v20, v21, v22}];
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
}

void sub_100015BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_100015C28(uint64_t a1)
{
  Name = CSRegionGetName();
  if (!strncmp(Name, "__TEXT", 6uLL) || (result = strcmp(Name, "MACH_HEADER"), !result))
  {
    result = CSRegionGetRange();
    v5 = *(*(a1 + 32) + 8);
    if (*(v5 + 24) - 1 >= result)
    {
      *(v5 + 24) = result;
    }

    v6 = v4 + result - 1;
    v7 = *(*(a1 + 40) + 8);
    if (v6 > *(v7 + 24))
    {
      *(v7 + 24) = v6;
    }
  }

  return result;
}

void sub_100016364(uint64_t a1)
{
  if (dword_1000540C8 == 2 || (CSIsNull() & 1) != 0 || (Name = CSSymbolGetName()) == 0)
  {
    v4 = 0;
  }

  else
  {
    v3 = Name;
    v4 = objc_opt_new();
    v5 = [NSString stringWithUTF8String:v3];
    v6 = OSASanitizePath();
    [v4 setObject:v6 forKeyedSubscript:@"symbol"];

    v7 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40) - CSSymbolGetRange()];
    [v4 setObject:v7 forKeyedSubscript:@"symbolLocation"];

    if ((CSIsNull() & 1) == 0)
    {
      Filename = CSSourceInfoGetFilename();
      if (Filename)
      {
        v9 = [NSString stringWithUTF8String:Filename];
        [v4 setObject:v9 forKeyedSubscript:@"sourceFile"];
      }

      LineNumber = CSSourceInfoGetLineNumber();
      if (LineNumber)
      {
        v11 = [NSNumber numberWithUnsignedInt:LineNumber];
        [v4 setObject:v11 forKeyedSubscript:@"sourceLine"];
      }
    }
  }

  if ([*(a1 + 32) count])
  {
    if (!v4)
    {
      v4 = objc_opt_new();
    }

    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"inline"];
  }

  v12 = *(a1 + 32);
  v13 = [v4 count];
  v14 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  v15 = v14;
  if (v13)
  {
    v20 = v14;
    v21 = v4;
    v16 = &v20;
    v17 = 2;
  }

  else
  {
    v19 = v14;
    v16 = &v19;
    v17 = 1;
  }

  v18 = [NSArray arrayWithObjects:v16 count:v17, v19, v20, v21];
  [v12 addObject:v18];
}

void sub_100017114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001719C(uint64_t a1)
{
  if (CSIsNull())
  {
    result = 0;
  }

  else
  {
    result = CSSymbolOwnerGetCFUUIDBytes();
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1000171FC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 objectForKeyedSubscript:@"symbol"];
  v11 = v10;
  if (v10)
  {
    if (!*(a1 + 80) && *(*(a1 + 32) + 15760) == *(a1 + 84))
    {
      if ([v10 isEqualToString:@"___NEW_PROCESS_COULD_NOT_BE_EXECD___"])
      {
        [*(*(a1 + 32) + OBJC_IVAR___OSAReport__notes) addObject:@"process could not be executed"];
      }

      else if ([v11 isEqualToString:@"objc_msgSend"])
      {
        v12 = [*(a1 + 32) _objcSelectorNameForMessenger:v11];
        if ([v12 length])
        {
          v13 = *(a1 + 32);
          v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"objc_msgSend() selector name: %@", v12);
          [v13 _addASILine:v14 fromOwner:@"objc" isSafe:1];
        }
      }
    }

    if (*(*(a1 + 32) + 172) == 6 && (([v11 isEqualToString:@"abort"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"__abort")))
    {
      *(*(a1 + 32) + 15760) = *(a1 + 84);
      v15 = *(*(a1 + 32) + 16240);
      v16 = [NSString stringWithFormat:@"override via abort 0x%x ID(0x%llX)", *(a1 + 88), *(a1 + 64)];
      [v15 addObject:v16];

      *(*(*(a1 + 48) + 8) + 24) = *(a1 + 88);
      *(*(a1 + 32) + 15752) = *(a1 + 64);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(*(a1 + 32) + 15760);
        *buf = 67109120;
        v30 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Forcing thread index %d (SIGABRT)", buf, 8u);
      }
    }
  }

  v18 = *(a1 + 32);
  if (*(v18 + 15760) == *(a1 + 84))
  {
    if (!*(a1 + 80) && *(v18 + 16184) == 1)
    {
      if (v9)
      {
        v19 = *(*(*(a1 + 56) + 8) + 24);
        if (v19)
        {
          v20 = [v9 symbolInfo];
          v21 = &v20[OBJC_IVAR___OSASymbolInfo__uuid];
          v23 = *v21;
          v22 = *(v21 + 1);
          v25 = *v19 == v23 && v19[1] == v22;
          *(*(a1 + 32) + 16185) = v25;

          v18 = *(a1 + 32);
        }
      }
    }

    v26 = [v9 symbolInfo];
    [v18 updateLogWritingSignatureWithSymbol:v26 address:*(a1 + 72)];

    v18 = *(a1 + 32);
  }

  v27 = *(a1 + 40);
  v28 = [v18 composeFrame:v7 info:v8];
  [v27 addObject:v28];
}

void sub_100017580(id *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"inline"];
  v7 = [v6 isEqual:&__kCFBooleanTrue];

  if ((v7 & 1) == 0)
  {
    v8 = [a1[4] composeFrame:v10 info:v5];

    v9 = [a1[5] mutableCopy];
    [v9 removeObjectForKey:@"keyPC"];
    [v9 setObject:v8 forKey:@"keyFrame"];
    [a1[6] addObject:v9];

    v5 = v8;
  }
}

BOOL sub_100017724(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  v6 = [a2 range];
  result = [OSACrashReport isAddress:v5 inRange:v6, v7];
  *a4 = result;
  return result;
}

BOOL sub_100017838(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(v3 + OBJC_IVAR___VMUVMRegion_is_submap) & 1) != 0 || ([v3 type], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"__TEXT"), v5, !v6))
  {
    v10 = 0;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v4 range];
    v10 = [OSACrashReport isAddress:v7 inRange:v8, v9];
  }

  return v10;
}

void sub_100017E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) composeFrame:a2 info:a3];
  [v3 addObject:v4];
}

uint64_t sub_100019804(uint64_t a1)
{
  if (CSIsNull())
  {
    result = 0;
  }

  else
  {
    result = CSSymbolOwnerGetBaseAddress();
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10001A078(id a1)
{
  qword_1000540E8 = dispatch_semaphore_create(1);

  _objc_release_x1();
}

id sub_10001A0B0(uint64_t a1)
{
  v8[0] = &off_10004DA00;
  v8[1] = &off_10004D9E8;
  v9[0] = @"KERN_PROTECTION_FAILURE";
  v9[1] = @"KERN_INVALID_ADDRESS";
  v8[2] = &off_10004DE20;
  v8[3] = &off_10004DE38;
  v9[2] = @"EXC_ARM_DA_ALIGN";
  v9[3] = @"EXC_ARM_DA_DEBUG";
  v8[4] = &off_10004DE50;
  v8[5] = &off_10004DE68;
  v9[4] = @"EXC_ARM_SP_ALIGN";
  v9[5] = @"EXC_ARM_SWP";
  v8[6] = &off_10004DE80;
  v8[7] = &off_10004DE98;
  v9[6] = @"EXC_ARM_PAC_FAIL";
  v9[7] = @"EXC_ARM_MTE_TAGCHECK_FAIL";
  v8[8] = &off_10004DAC0;
  v9[8] = @"KERN_MEMORY_ERROR";
  v2 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:9];
  v3 = [NSNumber numberWithLongLong:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [NSString stringWithFormat:@"UNKNOWN_0x%llX", a1];
  }

  v6 = v5;

  return v6;
}

id sub_10001E22C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = @"namespace";
  v4[1] = @"problem";
  v5[0] = v1;
  v5[1] = @"truncated";
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

void sub_10001FCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001FCC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_10001FCDC(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(*(result[4] + 8) + 40) addEntriesFromDictionary:?];
  }

  return result;
}

void sub_10001FE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001FE48(uint64_t a1)
{
  result = CSRegionGetName();
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0 && result)
  {
    result = strncmp(result, "__OBJC_RO", 9uLL);
    if (!result)
    {
      result = CSRegionGetRange();
      v3 = *(*(a1 + 40) + 8);
      *(v3 + 32) = result;
      *(v3 + 40) = v4;
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

void sub_10001FED4(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("com.apple.ReportCrash.trialQueue", v3);
  v2 = qword_100054100;
  qword_100054100 = v1;
}

void sub_10001FF3C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v9[0] = @"experimentId";
  v3 = a2;
  v4 = [v3 experimentId];
  v10[0] = v4;
  v9[1] = @"deploymentId";
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 deploymentId]);
  v10[1] = v5;
  v9[2] = @"treatmentId";
  v6 = [v3 treatmentId];

  v7 = @"<unknown>";
  if (v6)
  {
    v7 = v6;
  }

  v10[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  [v2 addObject:v8];
}

void sub_100020068(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v9[0] = @"rolloutId";
  v3 = a2;
  v4 = [v3 rolloutId];
  v10[0] = v4;
  v9[1] = @"deploymentId";
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 deploymentId]);
  v10[1] = v5;
  v9[2] = @"factorPackIds";
  v6 = [v3 factorPackIds];

  v7 = [v6 allValues];
  v10[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  [v2 addObject:v8];
}

void sub_100022B0C(id a1)
{
  if (sub_1000235F0() && sub_100023734())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "loading MetricKit", &v21, 2u);
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v1 = qword_1000541A0;
    v29 = qword_1000541A0;
    if (!qword_1000541A0)
    {
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100023878;
      v24 = &unk_1000457D0;
      v25 = &v26;
      sub_100023878(&v21);
      v1 = v27[3];
    }

    v2 = v1;
    _Block_object_dispose(&v26, 8);
    qword_100054110 = v1;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v3 = qword_1000541A8;
    v29 = qword_1000541A8;
    if (!qword_1000541A8)
    {
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100023920;
      v24 = &unk_1000457D0;
      v25 = &v26;
      sub_100023920(&v21);
      v3 = v27[3];
    }

    v4 = v3;
    _Block_object_dispose(&v26, 8);
    qword_100054118 = v3;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v5 = qword_1000541B0;
    v29 = qword_1000541B0;
    if (!qword_1000541B0)
    {
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_1000239C8;
      v24 = &unk_1000457D0;
      v25 = &v26;
      sub_1000239C8(&v21);
      v5 = v27[3];
    }

    v6 = v5;
    _Block_object_dispose(&v26, 8);
    qword_100054120 = v5;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v7 = qword_1000541B8;
    v29 = qword_1000541B8;
    if (!qword_1000541B8)
    {
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100023A20;
      v24 = &unk_1000457D0;
      v25 = &v26;
      sub_100023A20(&v21);
      v7 = v27[3];
    }

    v8 = v7;
    _Block_object_dispose(&v26, 8);
    qword_100054128 = v7;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v9 = qword_1000541C0;
    v29 = qword_1000541C0;
    if (!qword_1000541C0)
    {
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100023A78;
      v24 = &unk_1000457D0;
      v25 = &v26;
      sub_100023A78(&v21);
      v9 = v27[3];
    }

    v10 = v9;
    _Block_object_dispose(&v26, 8);
    qword_100054130 = v9;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v11 = qword_1000541C8;
    v29 = qword_1000541C8;
    if (!qword_1000541C8)
    {
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100023AD0;
      v24 = &unk_1000457D0;
      v25 = &v26;
      sub_100023AD0(&v21);
      v11 = v27[3];
    }

    v12 = v11;
    _Block_object_dispose(&v26, 8);
    qword_100054138 = v11;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v13 = qword_1000541D0;
    v29 = qword_1000541D0;
    if (!qword_1000541D0)
    {
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100023B28;
      v24 = &unk_1000457D0;
      v25 = &v26;
      sub_100023B28(&v21);
      v13 = v27[3];
    }

    v14 = v13;
    _Block_object_dispose(&v26, 8);
    qword_100054140 = v13;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v15 = qword_1000541D8;
    v29 = qword_1000541D8;
    if (!qword_1000541D8)
    {
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100023B80;
      v24 = &unk_1000457D0;
      v25 = &v26;
      sub_100023B80(&v21);
      v15 = v27[3];
    }

    v16 = v15;
    _Block_object_dispose(&v26, 8);
    qword_100054148 = v15;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v17 = qword_1000541E0;
    v29 = qword_1000541E0;
    if (!qword_1000541E0)
    {
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100023BD8;
      v24 = &unk_1000457D0;
      v25 = &v26;
      sub_100023BD8(&v21);
      v17 = v27[3];
    }

    v18 = v17;
    _Block_object_dispose(&v26, 8);
    qword_100054150 = v17;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v19 = qword_1000541E8;
    v29 = qword_1000541E8;
    if (!qword_1000541E8)
    {
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100023C30;
      v24 = &unk_1000457D0;
      v25 = &v26;
      sub_100023C30(&v21);
      v19 = v27[3];
    }

    v20 = v19;
    _Block_object_dispose(&v26, 8);
    qword_100054158 = v19;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MetricKit is not available", &v21, 2u);
  }
}

void sub_10002317C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100023250(id a1)
{
  v1 = dlopen("/usr/lib/libMemoryResourceException.dylib", 5);
  qword_100054168 = v1;
  if (!v1)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v2 = "EXC_RESOURCE: libMemoryResourceException not found";
    v3 = buf;
    goto LABEL_7;
  }

  off_100054170 = dlsym(v1, "ReportMemoryExceptionFromTask");
  if (!off_100054170 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 0;
    v2 = "EXC_RESOURCE: ReportMemoryExceptionFromTask not found in libMemoryResourceException";
    v3 = &v4;
LABEL_7:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v2, v3, 2u);
  }
}

void sub_100023318(id a1)
{
  qword_100054180 = os_log_create("com.apple.osanalytics.ReportCrash", "performance");

  _objc_release_x1();
}

void sub_10002335C(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 32);
    *buf = 136315394;
    v18 = v2;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "invoking %s %@", buf, 0x16u);
  }

  v4 = *(a1 + 48);
  v5 = [NSString stringWithFormat:@"%s %@", v4, *(a1 + 32)];
  v6 = popen([v5 UTF8String], "r");
  if (!v6)
  {
    v13 = *(a1 + 40);
    [NSString stringWithFormat:@"Unable to open '%s' (errno %d)", *(a1 + 48), *__error()];
    v16 = LABEL_17:;
    [v13 setString:v16];

    goto LABEL_18;
  }

  v7 = v6;
  fflush(__stdoutp);
  v8 = fread(buf, 1uLL, 0x1000uLL, v7);
  if (v8)
  {
    v9 = @"\n===> TRUNCATED due to error converting diag output to NSString";
    while (1)
    {
      buf[v8] = 0;
      v10 = [NSString stringWithUTF8String:buf];
      if (!v10)
      {
        break;
      }

      v11 = *(a1 + 56);
      v12 = [*(a1 + 40) length] + v11;
      if ([v10 length] + v12 >= 0xE1000)
      {
        v9 = @"\n===> TRUNCATED due to max allowable diagnostic output";
        break;
      }

      [*(a1 + 40) appendString:v10];

      v8 = fread(buf, 1uLL, 0x1000uLL, v7);
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    [*(a1 + 40) appendString:v9];
  }

LABEL_13:
  if (ferror(v7))
  {
    v14 = *(a1 + 40);
    v15 = [NSString stringWithFormat:@"\nError reading output from '%s' (errno %d)", *(a1 + 48), *__error()];
    [v14 setString:v15];
  }

  if (pclose(v7) == -1)
  {
    v13 = *(a1 + 40);
    [NSString stringWithFormat:@"\nError closing pipe of '%s' (errno %d)", *(a1 + 48), *__error()];
    goto LABEL_17;
  }

LABEL_18:
}

uint64_t sub_1000235F0()
{
  if (!qword_100054190)
  {
    qword_100054190 = _sl_dlopen();
  }

  return qword_100054190;
}

uint64_t sub_1000236C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100054190 = result;
  return result;
}

uint64_t sub_100023734()
{
  if (!qword_100054198)
  {
    qword_100054198 = _sl_dlopen();
  }

  return qword_100054198;
}

uint64_t sub_100023804(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100054198 = result;
  return result;
}

void sub_100023878(uint64_t a1)
{
  sub_1000238D0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MXSourceUtilities");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000541A0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1000308CC();
    sub_1000238D0();
  }
}

void sub_1000238D0()
{
  if (!sub_100023734())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

void sub_100023920(uint64_t a1)
{
  sub_100023978();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MXCallStackThread");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000541A8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1000308F4();
    sub_100023978();
  }
}

void sub_100023978()
{
  if (!sub_1000235F0())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

Class sub_1000239C8(uint64_t a1)
{
  sub_100023978();
  result = objc_getClass("MXCallStackFrame");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000541B0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10003091C();
    return sub_100023A20(v3);
  }

  return result;
}

Class sub_100023A20(uint64_t a1)
{
  sub_100023978();
  result = objc_getClass("MXMetaData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000541B8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100030944();
    return sub_100023A78(v3);
  }

  return result;
}

Class sub_100023A78(uint64_t a1)
{
  sub_100023978();
  result = objc_getClass("MXCallStackTree");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000541C0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10003096C();
    return sub_100023AD0(v3);
  }

  return result;
}

Class sub_100023AD0(uint64_t a1)
{
  sub_100023978();
  result = objc_getClass("MXCrashDiagnostic");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000541C8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100030994();
    return sub_100023B28(v3);
  }

  return result;
}

Class sub_100023B28(uint64_t a1)
{
  sub_1000238D0();
  result = objc_getClass("MXReportCrashData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000541D0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1000309BC();
    return sub_100023B80(v3);
  }

  return result;
}

Class sub_100023B80(uint64_t a1)
{
  sub_1000238D0();
  result = objc_getClass("MXSourceManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000541D8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1000309E4();
    return sub_100023BD8(v3);
  }

  return result;
}

Class sub_100023BD8(uint64_t a1)
{
  sub_100023978();
  result = objc_getClass("MXSignpostRecord");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000541E0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100030A0C();
    return sub_100023C30(v3);
  }

  return result;
}

void sub_100023C30(uint64_t a1)
{
  sub_100023978();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MXCrashDiagnosticObjectiveCExceptionReason");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000541E8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100030A34();
    sub_100023C88();
  }
}

uint64_t sub_100023F84(const char *a1, unsigned int a2)
{
  v2 = 0;
  if (a1 && a2 >= 4)
  {
    v5 = *a1;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      LODWORD(v17[0]) = v5;
      WORD2(v17[0]) = 1024;
      *(v17 + 6) = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Handling GPU event version %u, %d bytes", buf, 0xEu);
    }

    if (v5 != 101)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v17[0]) = v5;
        v7 = "unrecognized version %d";
        v8 = 8;
        goto LABEL_11;
      }

      return 0;
    }

    if (a2 - 8 < *(a1 + 1))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 1);
        *buf = 67109376;
        LODWORD(v17[0]) = v6;
        WORD2(v17[0]) = 1024;
        *(v17 + 6) = a2;
        v7 = "invalid event length %d vs size %d";
        v8 = 14;
LABEL_11:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v7, buf, v8);
        return 0;
      }

      return 0;
    }

    v9 = objc_autoreleasePoolPush();
    errorString = 0;
    v10 = IOCFUnserializeBinary(a1 + 8, *(a1 + 1), kCFAllocatorDefault, 0, &errorString);
    if (v10)
    {
      v11 = [[OSAGPUEventReport alloc] initWithDictionary:v10];
      v12 = +[NSThread currentThread];
      v13 = [v12 threadDictionary];

      [v13 setObject:v11 forKeyedSubscript:@"OSAGPUEventReport"];
      v2 = 1;
    }

    else
    {
      v2 = 0;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17[0] = errorString;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "unable to deserialize event: %@", buf, 0xCu);
        v2 = 0;
      }
    }

    objc_autoreleasePoolPop(v9);
  }

  return v2;
}

uint64_t sub_100024220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218240;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "catch_sync_request(%lld, %lld)", &v11, 0x16u);
  }

  if (a2 == 1)
  {
    dword_10005420C = 1;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [qword_100054200 condition];
      v11 = 67109120;
      LODWORD(v12) = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "external sync request, waiting for %d active threads", &v11, 8u);
    }

    [qword_100054200 waitForAll];
    dword_10005420C = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [qword_100054200 total_count];
      v11 = 67109120;
      LODWORD(v12) = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "sync complete after %d total events", &v11, 8u);
    }

    v9 = [qword_100054200 total_count];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "unknown request", &v11, 2u);
    }

    v9 = -1;
  }

  *a4 = v9;
  sub_100002960();
  return 0;
}

uint64_t sub_100024404()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100030AC8();
  }

  return 5;
}

uint64_t sub_100024438()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100030B0C();
  }

  return 5;
}

void sub_10002446C(id a1)
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.osanalytics"];
  v1 = +[OSASystemConfiguration sharedInstance];
  v2 = [v1 appleInternal];
  if (v2)
  {
    LOBYTE(v2) = [v3 BOOLForKey:@"PersistLWCorpse"];
  }

  byte_100054210 = v2;
}

uint64_t sub_1000244F8(uint64_t a1, uint64_t a2, mach_port_t a3, int a4, uint64_t *a5, unsigned int a6, unsigned int *a7, uint64_t a8, unsigned int a9, uint64_t a10, int *a11, _OWORD *a12)
{
  v19 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v19)
  {
    sub_100030C3C(v19, v20, v21, v22, v23, v24, v25, v26);
  }

  v27 = *a7;
  v28 = a12[1];
  v33[0] = *a12;
  v33[1] = v28;
  v29 = sub_1000020F0(a3, 0, a2, -1, 0, a4, a5, a6, v27, a8, a9, v33);
  if (!v29)
  {
    if (*a11 == a9)
    {
      v30 = a9;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100030C78(a11);
      }

      v30 = *a11;
    }

    if (v30 >= a9)
    {
      v30 = a9;
    }

    *a11 = v30;
    if (v30)
    {
      v31 = 0;
      do
      {
        *(a10 + 4 * v31) = *(a8 + 4 * v31);
        ++v31;
      }

      while (v31 < *a11);
    }

    mach_port_deallocate(mach_task_self_, a2);
    mach_port_deallocate(mach_task_self_, a3);
  }

  return v29;
}

BOOL sub_10002465C(const char *a1)
{
  if (!strcmp(a1, "agent"))
  {
    v3 = "com.apple.ReportCrash";
  }

  else
  {
    if (strcmp(a1, "daemon"))
    {
      result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_100030D7C();
        return 0;
      }

      return result;
    }

    v3 = "com.apple.ReportCrash.DirectoryService";
  }

  v4 = bootstrap_check_in(bootstrap_port, v3, &dword_100054208);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100030DC0(v5);
  }

  result = 0;
  dword_100054208 = 0;
  return result;
}

void start(int a1, uint64_t a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (a1 == 2)
    {
      v4 = *(a2 + 8);
    }

    else
    {
      v4 = "unsupported";
    }

    buf = 136446210;
    v36 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ReportCrash (unified) launched in %{public}s mode", &buf, 0xCu);
  }

  v5 = objc_autoreleasePoolPush();
  if (a1 == 2 && sub_10002465C(*(a2 + 8)))
  {
    v6 = +[OSASystemConfiguration sharedInstance];
    v7 = [v6 appleInternal];

    if (v7)
    {
      +[OSADiagnosticsReporterSupport initAlertDelegate];
    }

    CRCreateDirectoryStructure();
    getpid();
    proc_disable_cpumon();
    if (+[_TtC11ReportCrash11Environment isRestore])
    {
      v8 = qword_1000541F0;
      qword_1000541F0 = @"/private/var/logs/ramrod";

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v9 = [&off_10004E5F8 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (!v9)
      {
        goto LABEL_26;
      }

      v10 = v9;
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(&off_10004E5F8);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          v14 = +[NSFileManager defaultManager];
          LODWORD(v13) = [v14 fileExistsAtPath:v13];

          if (v13)
          {
            v16 = qword_1000541F0;
            qword_1000541F0 = @"/private/var/logs/restored";

            goto LABEL_26;
          }
        }

        v10 = [&off_10004E5F8 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v10);
LABEL_26:
      buf = 0;
      if (!IOMainPort(bootstrap_port, &buf))
      {
        v17 = IORegistryEntryFromPath(buf, "IODeviceTree:/options");
        if (v17)
        {
          v18 = v17;
          CFProperty = IORegistryEntryCreateCFProperty(v17, @"ota-uuid", kCFAllocatorDefault, 0);
          if (CFProperty)
          {
            v20 = CFProperty;
            v21 = CFGetTypeID(CFProperty);
            if (v21 == CFDataGetTypeID())
            {
              v22 = [v20 mutableCopy];
              [v22 appendBytes:&unk_10003BF90 length:1];
              v23 = qword_1000541F8;
              qword_1000541F8 = v22;
            }

            CFRelease(v20);
          }

          IOObjectRelease(v18);
        }
      }
    }

    objc_autoreleasePoolPop(v5);
    v24 = +[OSASystemConfiguration sharedInstance];
    v25 = [v24 appleInternal];
    BoolValue = 0;
    if (v25)
    {
      BoolValue = OSAPreferencesGetBoolValue();
    }

    dword_10005420C = BoolValue;

    if (dword_10005420C && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SingleShot mode, will exit immediately after handling one exception", &buf, 2u);
    }

    v27 = objc_alloc_init(RCEventTracker);
    v28 = qword_100054200;
    qword_100054200 = v27;

    if (sub_100002960())
    {
      v29 = +[NSRunLoop currentRunLoop];
      [v29 run];

      v15 = 0;
LABEL_22:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ReportCrash is exiting", &buf, 2u);
      }

      exit(v15);
    }
  }

  else
  {
    objc_autoreleasePoolPop(v5);
  }

  v15 = 1;
  goto LABEL_22;
}

id sub_100024AF4(void *a1)
{
  v8[0] = a1[4];
  v7[0] = @"process";
  v7[1] = @"exceptionAddress";
  v2 = [[NSString alloc] initWithFormat:@"%llx", a1[6], @"process", @"exceptionAddress"];
  v8[1] = v2;
  v7[2] = @"sharedCache";
  v3 = [[NSString alloc] initWithFormat:@"%llx", a1[7]];
  v7[3] = @"exceptionDescription";
  v4 = a1[5];
  v8[2] = v3;
  v8[3] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

void sub_100024C10(id a1)
{
  qword_100054220 = dispatch_queue_create("com.apple.osanalytics.stabilityMonitorReply", 0);

  _objc_release_x1();
}

id sub_100024C50(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v6[0] = @"process";
  v6[1] = @"image";
  v7[0] = v2;
  v3 = [v1 faultingImage];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void sub_100024D04(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t sub_100024D20(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 2412) >= 0xFFFFFFF9)
  {
    return *(&off_100045BA8 + 5 * (v1 - 2405) + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100024D54(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 4);
  if (*(a1 + 24) != 2 || (v3 - 85) < 0xFFFFFFEF)
  {
    goto LABEL_6;
  }

  if (*(a1 + 38) << 16 != 1114112 || *(a1 + 50) << 16 != 1114112)
  {
    result = 4294966996;
    goto LABEL_7;
  }

  v6 = *(a1 + 64);
  if (v6 <= 2 && v6 <= (v3 - 68) >> 3 && v3 == ((8 * v6) | 0x44))
  {
    v7 = ((v3 + 3) & 0x7C) + a1;
    if (*v7 || *(v7 + 4) < 0x20u)
    {
      result = 4294966987;
    }

    else
    {
      v8 = *(a1 + 12);
      v9 = *(a1 + 28);
      v10 = *(a1 + 40);
      v11 = *(a1 + 60);
      v12 = *(v7 + 20);
      v13 = *(v7 + 36);
      result = sub_100024404();
    }
  }

  else
  {
LABEL_6:
    result = 4294966992;
  }

LABEL_7:
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_100024E5C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  v3 = result[1];
  if (v3 - 5249 < 0xFFFFEBAF)
  {
    goto LABEL_14;
  }

  v4 = result[9];
  if (v4 > 2)
  {
    goto LABEL_14;
  }

  v5 = 2 * v4;
  v6 = v4 <= (v3 - 48) >> 3 && v3 >= 8 * v4 + 48;
  if (!v6 || (v7 = &result[v5], v8 = v7[11], v8 > 0x510) || ((v9 = v3 - v5 * 4, v8 <= (v9 - 48) >> 2) ? (v10 = v9 == 4 * v8 + 48) : (v10 = 0), !v10))
  {
LABEL_14:
    v11 = -304;
LABEL_15:
    *(a2 + 32) = v11;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v12 = result + ((v3 + 3) & 0x3FFC);
  if (*v12 || *(v12 + 1) <= 0x1Fu)
  {
    v11 = -309;
    goto LABEL_15;
  }

  v13 = v7 - 4;
  *(a2 + 40) = 1296;
  v14 = result[3];
  v15 = result[8];
  v16 = *(v12 + 20);
  v17 = *(v12 + 36);
  result = sub_100024438();
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 36) = v13[14];
    *(a2 + 4) = 4 * *(a2 + 40) + 44;
  }

  return result;
}

uint64_t sub_100024FB4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(result + 4);
  if (*(result + 24) != 2 || v3 - 5277 < 0xFFFFEBAF)
  {
    goto LABEL_6;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 50) << 16 != 1114112)
  {
    v5 = -300;
    goto LABEL_7;
  }

  v6 = *(result + 64);
  if (v6 > 2)
  {
    goto LABEL_6;
  }

  v5 = -304;
  if (v6 > (v3 - 76) >> 3)
  {
    goto LABEL_7;
  }

  v7 = 8 * v6;
  if (v3 < 8 * v6 + 76)
  {
    goto LABEL_7;
  }

  v8 = result + v7;
  v9 = *(v8 + 72);
  if (v9 > 0x510 || (v10 = v3 - v7, v9 > (v10 - 76) >> 2) || v10 != 4 * v9 + 76)
  {
LABEL_6:
    v5 = -304;
LABEL_7:
    *(a2 + 32) = v5;
LABEL_8:
    *(a2 + 24) = NDR_record;
    return result;
  }

  v11 = ((v3 + 3) & 0x3FFC) + result;
  if (*v11 || *(v11 + 4) <= 0x1Fu)
  {
    *(a2 + 32) = -309;
    goto LABEL_8;
  }

  v12 = v8 - 16;
  *(a2 + 40) = 1296;
  v13 = *(result + 12);
  v14 = *(result + 28);
  v15 = *(result + 40);
  v16 = *(result + 60);
  v17 = *(v11 + 36);
  v18[0] = *(v11 + 20);
  v18[1] = v17;
  result = sub_1000244F8(v13, v14, v15, v16, (result + 68), v6, (v8 + 68), v8 + 76, v9, a2 + 44, (a2 + 40), v18);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 36) = *(v12 + 84);
    *(a2 + 4) = 4 * *(a2 + 40) + 44;
  }

  return result;
}

uint64_t sub_10002515C(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 4);
  if (*(a1 + 24) != 1 || (v3 - 81) < 0xFFFFFFEF)
  {
    goto LABEL_6;
  }

  if (*(a1 + 38) << 16 != 1114112)
  {
    result = 4294966996;
    goto LABEL_7;
  }

  v6 = *(a1 + 60);
  if (v6 <= 2 && v6 <= (v3 - 64) >> 3 && v3 == ((8 * v6) | 0x40))
  {
    v7 = ((v3 + 3) & 0x7C) + a1;
    if (*v7 || *(v7 + 4) < 0x20u)
    {
      result = 4294966987;
    }

    else
    {
      v8 = *(a1 + 12);
      v9 = *(a1 + 48);
      v10 = *(a1 + 28);
      v11 = *(a1 + 56);
      v12 = *(v7 + 36);
      v13[0] = *(v7 + 20);
      v13[1] = v12;
      result = sub_10000369C(v8, v9, v10, v11, (a1 + 64), v6, v13);
    }
  }

  else
  {
LABEL_6:
    result = 4294966992;
  }

LABEL_7:
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100025254(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 4);
  if (*(a1 + 24) != 1 || (v3 - 73) < 0xFFFFFFEF)
  {
    goto LABEL_6;
  }

  if (*(a1 + 38) << 16 != 1114112)
  {
    result = 4294966996;
    goto LABEL_7;
  }

  v6 = *(a1 + 52);
  if (v6 <= 2 && v6 <= (v3 - 56) >> 3 && v3 == 8 * v6 + 56)
  {
    v7 = ((v3 + 3) & 0xFC) + a1;
    if (*v7 || *(v7 + 4) < 0x20u)
    {
      result = 4294966987;
    }

    else
    {
      v8 = *(a1 + 12);
      v9 = *(a1 + 28);
      v10 = *(a1 + 48);
      v11 = *(v7 + 36);
      v12[0] = *(v7 + 20);
      v12[1] = v11;
      result = sub_100001EE0(v8, v9, v10, (a1 + 56), v6, v12);
    }
  }

  else
  {
LABEL_6:
    result = 4294966992;
  }

LABEL_7:
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100025348(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 48) || *(result + 52) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 68);
  v5 = *(result + 84);
  result = sub_100024220(*(result + 12), *(result + 32), *(result + 40), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

void sub_100025404(int a1, uint64_t a2, unint64_t a3, void **a4, int a5)
{
  LODWORD(v62) = a5;
  v61 = a4;
  v59 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  (__chkstk_darwin)();
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v60 = *(v12 - 8);
  v13 = *(v60 + 64);
  (__chkstk_darwin)();
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchTime();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  (__chkstk_darwin)();
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100026928())
  {
    if (sub_10000F898())
    {
      v56 = v8;
      if ((v62 & 1) == 0 && v61)
      {
        goto LABEL_9;
      }

      v21 = [objc_opt_self() standardUserDefaults];
      v57 = a3;
      v22 = v21;
      v23 = String._bridgeToObjectiveC()();
      v58 = a2;
      v24 = v23;
      v25 = [v22 stringArrayForKey:v23];

      a3 = v57;
      a2 = v58;
      if (!v25)
      {
        goto LABEL_23;
      }

      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v55 = &v55;
      aBlock = v58;
      v64 = a3;
      __chkstk_darwin(v27);
      *(&v55 - 2) = &aBlock;
      v28 = sub_100026860(sub_100026D10, (&v55 - 4), v26);
      a3 = v57;
      a2 = v58;

      if (v28)
      {
LABEL_9:
        if (a2 == 0x65726F6367 && a3 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (qword_100053A58 != -1)
          {
            swift_once();
          }

          v29 = type metadata accessor for Logger();
          sub_100026C90(v29, qword_100053A60);
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v30, v31))
          {
            goto LABEL_15;
          }

          v32 = swift_slowAlloc();
          *v32 = 0;
          v33 = "Skipping core file request for gcore";
          v34 = v31;
          v35 = v30;
          v36 = v32;
          v37 = 2;
LABEL_14:
          _os_log_impl(&_mh_execute_header, v35, v34, v33, v36, v37);

LABEL_15:

          return;
        }

        if (qword_100053A48 != -1)
        {
          swift_once();
        }

        static DispatchTime.now()();
        OS_dispatch_semaphore.wait(timeout:)();
        (*(v17 + 8))(v20, v16);
        if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0)
        {
          if (qword_100053A58 != -1)
          {
            swift_once();
          }

          v52 = type metadata accessor for Logger();
          sub_100026C90(v52, qword_100053A60);
          v30 = Logger.logObject.getter();
          v53 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v30, v53))
          {
            goto LABEL_15;
          }

          v54 = swift_slowAlloc();
          *v54 = 134217984;
          *(v54 + 4) = 1;
          v33 = "Skipping core file request as the current number of concurrent requests exceeds the max of %ld";
          v34 = v53;
          v35 = v30;
          v36 = v54;
          v37 = 12;
          goto LABEL_14;
        }

        if (qword_100053A38 != -1)
        {
          swift_once();
        }

        v50 = swift_allocObject();
        *(v50 + 16) = a2;
        *(v50 + 24) = a3;
        *(v50 + 32) = v59;
        *(v50 + 40) = v61;
        *(v50 + 48) = v62 & 1;
        v67 = sub_100026D68;
        v68 = v50;
        aBlock = _NSConcreteStackBlock;
        v64 = 1107296256;
        v65 = sub_10002FA4C;
        v66 = &unk_100045E28;
        v51 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v69 = &_swiftEmptyArrayStorage;
        sub_100026E0C(&qword_100053B00, &type metadata accessor for DispatchWorkItemFlags);
        sub_100026CC8(&qword_100053B08, &qword_10003BFB8);
        sub_100026E54(&qword_100053B10, &qword_100053B08, &qword_10003BFB8);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v51);
        (*(v56 + 8))(v11, v7);
        (*(v60 + 8))(v15, v12);

        usleep(0x1F4u);
      }

      else
      {
LABEL_23:
        if (qword_100053A58 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        sub_100026C90(v42, qword_100053A60);

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = a3;
          v46 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *v46 = 136315394;
          aBlock = v61;
          LOBYTE(v64) = v62 & 1;
          sub_100026CC8(&qword_100053AF8, &qword_10003BFB0);
          v47 = String.init<A>(describing:)();
          v49 = sub_10000750C(v47, v48, &v69);

          *(v46 + 4) = v49;
          *(v46 + 12) = 2080;
          *(v46 + 14) = sub_10000750C(a2, v45, &v69);
          _os_log_impl(&_mh_execute_header, v43, v44, "Core file not requested with max size = %s and process name = %s", v46, 0x16u);
          swift_arrayDestroy();
        }
      }
    }

    else
    {
      if (qword_100053A58 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_100026C90(v38, qword_100053A60);
      v62 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v62, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v62, v39, "gcore is not available", v40, 2u);
      }

      v41 = v62;
    }
  }
}

void __swiftcall TaskOperator.init()(TaskOperator *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

char *sub_100025E78()
{
  result = sub_100025EA4();
  dword_100053A30 = result;
  byte_100053A34 = BYTE4(result) & 1;
  return result;
}

char *sub_100025EA4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v21 = 4;
  v5 = sysctlbyname("machdep.virtual_address_size", &v22, &v21, 0, 0);
  v6 = v22;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v22 < 1;
  }

  v8 = v7;
  if (v8 != 1)
  {
LABEL_18:
    LOBYTE(v21) = v8;
    return (v6 | (v8 << 32));
  }

  v20 = v5;
  result = strerror(v5);
  if (result)
  {
    v11 = String.init(utf8String:)();
    v12 = v10;
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    Logger.init()();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      if (!v12)
      {
        v11 = 0x6E776F6E6B6E55;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315394;
      v18 = sub_10000750C(v11, v13, &v23);

      *(v16 + 4) = v18;
      *(v16 + 12) = 1024;
      *(v16 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to get virtual address size: %s (%d)", v16, 0x12u);
      sub_100007740(v17);
    }

    else
    {
    }

    (*(v1 + 8))(v4, v0);
    v6 = 0;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_100026130()
{
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v7[1] = sub_100026DC4(0, &qword_100053B28, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v9 = &_swiftEmptyArrayStorage;
  sub_100026E0C(&qword_100053B30, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100026CC8(&qword_100053B38, &qword_10003BFD0);
  sub_100026E54(&qword_100053B40, &qword_100053B38, &qword_10003BFD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100053A40 = result;
  return result;
}

dispatch_semaphore_t sub_100026390()
{
  result = dispatch_semaphore_create(1);
  qword_100053A50 = result;
  return result;
}

unint64_t sub_1000263B4(uint64_t a1, unint64_t a2, int a3, unint64_t a4, char a5)
{
  if (qword_100053A58 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100026C90(v10, qword_100053A60);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10000750C(a1, a2, v26);
    _os_log_impl(&_mh_execute_header, v11, v12, "Requesting a core file for %s", v13, 0xCu);
    sub_100007740(v14);
  }

  sub_100026CC8(&qword_100053B18, &qword_10003BFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003BFA0;
  *(inited + 32) = 6580592;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = 0;
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = 1953656688;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = a3;
  *(inited + 120) = &type metadata for UInt32;
  *(inited + 128) = 0x746E65746E6F63;
  *(inited + 168) = &type metadata for String;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = 0x746361706D6F63;
  *(inited + 152) = 0xE700000000000000;
  v16 = sub_100007A2C(inited);
  swift_setDeallocating();
  sub_100026CC8(&qword_100053B20, &qword_10003BFC8);
  swift_arrayDestroy();
  if (a5)
  {
    goto LABEL_12;
  }

  if (!a4)
  {
    goto LABEL_12;
  }

  result = sub_10000F890();
  if (result <= a4)
  {
    goto LABEL_12;
  }

  v18 = ceil(vcvtd_n_f64_u64(a4, 0xAuLL) * 0.0009765625);
  if (v18 == INFINITY)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v27 = &type metadata for Int;
  v26[0] = v18;
  sub_100007B3C(v26, v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100007B4C(v25, 0x657A697378616DLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
LABEL_12:
  sub_10002ADC4(v16);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  gcore_with_options = create_gcore_with_options();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = gcore_with_options;
    _os_log_impl(&_mh_execute_header, v22, v23, "Core file creation result: %d", v24, 8u);
  }

  if (qword_100053A48 != -1)
  {
    swift_once();
  }

  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_1000267BC()
{
  v0 = type metadata accessor for Logger();
  sub_100026EA8(v0, qword_100053A60);
  sub_100026C90(v0, qword_100053A60);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100026860(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

_DWORD *sub_10002690C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100026928()
{
  os_variant_has_internal_diagnostics();
  if (qword_100053A58 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100026C90(v0, qword_100053A60);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Creating a core file from ReportCrash is not available", v3, 2u);
  }

  return 0;
}

uint64_t sub_100026A10(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (qword_100053A28 != -1)
  {
    v6 = result;
    v7 = a2;
    v8 = a3;
    swift_once();
    result = v6;
    a2 = v7;
    a3 = v8;
  }

  if (byte_100053A34)
  {
    return sub_100026C80(result, a2, a3);
  }

  if ((dword_100053A30 - 65) > 0xFFFFFF7E)
  {
    if (dword_100053A30 < 0)
    {
      if (dword_100053A30 <= 0xFFFFFFC0)
      {
        v9 = 0;
      }

      else
      {
        v9 = 1uLL >> -dword_100053A30;
      }

      v5 = v9 != 0;
      v3 = v9 - 1;
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (dword_100053A30 >= 0x40)
      {
        v4 = 0;
      }

      else
      {
        v4 = 1 << dword_100053A30;
      }

      v5 = v4 != 0;
      v3 = v4 - 1;
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_13;
  }

  v3 = -1;
  if ((dword_100053A30 - 65) >= 0xFFFFFF7E)
  {
LABEL_13:
    result &= v3;
    return sub_100026C80(result, a2, a3);
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_100026AF4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  if (!os_security_config_get_for_task())
  {
    return (v9 >> 2) & 1;
  }

  Logger.init()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error querying if MTE is enabled", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_100026C90(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100026CC8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100026D10(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100026D7C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100026DC4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100026E0C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100026E54(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100026D7C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_100026EA8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void type metadata accessor for OSASecurityRoute()
{
  if (!qword_100053B48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100053B48);
    }
  }
}

id sub_100027004()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThreadStateBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002705C(vm_map_read_t a1, int a2, uint64_t a3)
{
  v4 = *(a3 + 144);
  if (a2 == 16777228)
  {
    v5 = sub_10000F884();
    if (!v5)
    {
      return;
    }

    goto LABEL_6;
  }

  if (a2 == 16777223)
  {
    v5 = sub_10000F82C();
    if (v5)
    {
LABEL_6:
      v6 = v4 & 0x7FFFFFFFFFFFFFFFLL;
      v7 = v5;
      v8 = [v5 unsignedLongLongValue];

      if (__CFADD__(v6, v8))
      {
        __break(1u);
      }

      else
      {
        v9 = sub_10000A614(a1, v8 + v6, 0x10uLL);
        if (v9)
        {
          v10 = *v9;
          v11 = v9[1];

          sub_100026CC8(&qword_100053B78, &unk_10003C098);
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_10003C060;
          *(v12 + 32) = v10;
          *(v12 + 40) = v11;
        }
      }
    }
  }
}

id sub_10002718C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppGroup();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000271E4()
{
  result = [objc_opt_self() bootArgs];
  if (result)
  {
    v1 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100027518();
    if (StringProtocol.contains<A>(_:)())
    {

      v2 = 1;
    }

    else
    {
      v2 = StringProtocol.contains<A>(_:)();
    }
  }

  else
  {
    v2 = 0;
  }

  byte_1000542B0 = v2 & 1;
  return result;
}

uint64_t sub_100027300()
{
  type metadata accessor for DeviceState();
  result = static DeviceState.isCustomerFused.getter();
  byte_1000542B1 = result & 1;
  return result;
}

BOOL sub_100027338()
{
  result = sub_10002735C();
  byte_1000542B2 = result;
  return result;
}

BOOL sub_10002735C()
{
  v6 = 0;
  v5 = 4;
  v0 = String.utf8CString.getter();
  v1 = sysctlbyname((v0 + 32), &v6, &v5, 0, 0);

  if (v1)
  {
    return 0;
  }

  if (v6 != 1)
  {
    return 0;
  }

  v6 = 0;
  v5 = 4;
  v2 = String.utf8CString.getter();
  v3 = sysctlbyname((v2 + 32), &v6, &v5, 0, 0);

  return !v3 && v6 == 1;
}

id sub_1000274C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Environment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100027518()
{
  result = qword_100053BD8;
  if (!qword_100053BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053BD8);
  }

  return result;
}

unint64_t type metadata accessor for KcdataParser()
{
  result = qword_100053C28;
  if (!qword_100053C28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100053C28);
  }

  return result;
}

uint64_t sub_1000275B8()
{
  v0 = type metadata accessor for Logger();
  sub_100026EA8(v0, qword_100053BE0);
  sub_100026C90(v0, qword_100053BE0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002762C(unsigned int *a1)
{
  if ((*a1 & 0xFFFFFFF0) == 0x20)
  {
    return 17;
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_100027644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_10000E27C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_100007C9C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_100027ED8();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_100027B84(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_10002773C(unsigned __int16 *a1, void *a2)
{
  sub_100026CC8(&qword_100053C38, &qword_10003C0F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003C0E0;
  *(inited + 32) = 0x726F76616C66;
  *(inited + 40) = 0xE600000000000000;
  sub_10000F810(a1);
  *(inited + 48) = UInt64._bridgeToObjectiveC()();
  *(inited + 56) = 0x74696D696CLL;
  *(inited + 64) = 0xE500000000000000;
  sub_10000F81C(a1);
  *(inited + 72) = UInt64._bridgeToObjectiveC()();
  *(inited + 80) = 0x74616E696D726574;
  *(inited + 88) = 0xEA00000000006465;
  v5 = [a2 terminationReason];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v7 + 16) || (v8 = sub_10000C030(v12), (v9 & 1) == 0))
  {

    sub_10000C198(v12);
LABEL_10:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_11;
  }

  sub_1000076E4(*(v7 + 56) + 32 * v8, &v13);
  sub_10000C198(v12);

  if (!*(&v14 + 1))
  {
LABEL_11:
    sub_100027B1C(&v13);
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    if (v12[0] == 0x4D415354454ALL && v12[1] == 0xE600000000000000)
    {
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_12:
  *(inited + 96) = Bool._bridgeToObjectiveC()();
  strcpy((inited + 104), "didWriteReport");
  *(inited + 119) = -18;
  *(inited + 120) = Bool._bridgeToObjectiveC()();
  v10 = sub_10000E178(inited);
  swift_setDeallocating();
  sub_100026CC8(&qword_100053C48, &qword_10003C100);
  swift_arrayDestroy();
  v12[0] = v10;
  sub_100027644([a2 procName], 0x737365636F7270, 0xE700000000000000);
  sub_100027644([a2 bundle_id], 0x4449656C646E7562, 0xE800000000000000);
  sub_100027644([a2 short_vers], 0x6973726556707061, 0xEA00000000006E6FLL);
  sub_100027644([a2 bundleVersion], 0x6556656C646E7562, 0xED00006E6F697372);
  sub_100027644([a2 coalitionName], 0x6F6974696C616F63, 0xED0000656D614E6ELL);
  return v12[0];
}

uint64_t sub_100027B1C(uint64_t a1)
{
  v2 = sub_100026CC8(&qword_100053C40, &qword_10003C0F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100027B84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_100027D34()
{
  v1 = v0;
  sub_100026CC8(&qword_100053C58, &unk_10003C110);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000076E4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100007B3C(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_100027ED8()
{
  v1 = v0;
  sub_100026CC8(&qword_100053C50, &qword_10003C108);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_100028044(void *a1, uint64_t a2)
{
  v4 = [a1 taskOperator];
  if (v4)
  {
    v5 = v4[OBJC_IVAR___TaskOperator_extraction];

    if (v5 != 2 && (v5 & 1) != 0)
    {
      v6 = [a1 problemType];
      if (v6)
      {
        v7 = v6;
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        if (v8 == 3747891 && v10 == 0xE300000000000000)
        {
        }

        else
        {
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v11 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        sub_100026CC8(&qword_100053B18, &qword_10003BFC0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10003C120;
        *(inited + 32) = 0xD000000000000011;
        v13 = inited + 32;
        *(inited + 40) = 0x800000010003B720;
        *(inited + 72) = &type metadata for Bool;
        *(inited + 48) = 1;
        sub_100007A2C(inited);
        swift_setDeallocating();
        sub_100028304(v13);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        (*(a2 + 16))(a2, isa);
      }
    }
  }

LABEL_10:
  v15 = [a1 taskOperator];
  if (v15)
  {
    v16 = v15[OBJC_IVAR___TaskOperator_extraction + 1];

    if (v16 == 1)
    {
      sub_100026CC8(&qword_100053B18, &qword_10003BFC0);
      v17 = swift_initStackObject();
      *(v17 + 16) = xmmword_10003C120;
      *(v17 + 32) = 0x657461745365746DLL;
      v18 = v17 + 32;
      *(v17 + 72) = &type metadata for String;
      *(v17 + 40) = 0xE800000000000000;
      *(v17 + 48) = 0x64656C62616E65;
      *(v17 + 56) = 0xE700000000000000;
      sub_100007A2C(v17);
      swift_setDeallocating();
      sub_100028304(v18);
      v19 = Dictionary._bridgeToObjectiveC()().super.isa;
      (*(a2 + 16))(a2, v19);
    }
  }
}

uint64_t sub_100028304(uint64_t a1)
{
  v2 = sub_100026CC8(&qword_100053B20, &qword_10003BFC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GenerativeModelsState.currentState.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11ReportCrash21GenerativeModelsState_currentState);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t GenerativeModelsState.currentState.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11ReportCrash21GenerativeModelsState_currentState);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t GenerativeModelsState.reasons.getter()
{
  v1 = OBJC_IVAR____TtC11ReportCrash21GenerativeModelsState_reasons;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t GenerativeModelsState.reasons.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ReportCrash21GenerativeModelsState_reasons;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id static GenerativeModelsState.sharedInstance.getter()
{
  if (qword_100053A98 != -1)
  {
    swift_once();
  }

  v1 = qword_100053C60;

  return v1;
}

id WatchdogTerminationReason.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenerativeModelsState.init()()
{
  v1 = sub_100026CC8(&qword_100053C78, &qword_10003C130);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = &v0[OBJC_IVAR____TtC11ReportCrash21GenerativeModelsState_currentState];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v0[OBJC_IVAR____TtC11ReportCrash21GenerativeModelsState_reasons] = &_swiftEmptyArrayStorage;
  v6 = type metadata accessor for GenerativeModelsState();
  v12.receiver = v0;
  v12.super_class = v6;
  v7 = objc_msgSendSuper2(&v12, "init");
  sub_1000287B4();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  sub_1000294E4(0, 0, v4, &unk_10003C140, v10);

  return v7;
}

size_t sub_1000287B4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v56 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v56 - v12;
  __chkstk_darwin(v11);
  v15 = &v56 - v14;
  sub_100026CC8(&qword_100053CC8, qword_10003C1A8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10003C120;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 32) = 0x7474616D79657267;
  *(v16 + 40) = 0xEA00000000007265;
  sub_100029ED4();
  v17 = NSSet.init(arrayLiteral:)();
  v18 = AnalyticsQueryValuesFor(arguments:)();

  type = xpc_get_type(v18);
  if (type != XPC_TYPE_DICTIONARY.getter())
  {
    Logger.init()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Analytics query xpc_object is not of type dictionary", v22, 2u);
    }

    swift_unknownObjectRelease();
    (*(v3 + 8))(v7, v2);
LABEL_11:
    v29 = 0;
    v30 = 0;
    v31 = &_swiftEmptyArrayStorage;
LABEL_12:
    v32 = (v1 + OBJC_IVAR____TtC11ReportCrash21GenerativeModelsState_currentState);
    swift_beginAccess();
    v33 = v32[1];
    *v32 = v29;
    v32[1] = v30;

    v34 = OBJC_IVAR____TtC11ReportCrash21GenerativeModelsState_reasons;
    swift_beginAccess();
    v35 = *(v1 + v34);
    *(v1 + v34) = v31;
  }

  v23 = xpc_dictionary_get_dictionary(v18, "greymatter");
  if (!v23)
  {
LABEL_8:
    Logger.init()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to query generative models dictionary", v28, 2u);
    }

    swift_unknownObjectRelease();
    (*(v3 + 8))(v10, v2);
    goto LABEL_11;
  }

  v24 = v23;
  v25 = xpc_get_type(v23);
  if (v25 != XPC_TYPE_DICTIONARY.getter())
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  string = xpc_dictionary_get_string(v24, "availability");
  v59 = v24;
  if (string)
  {
    v57 = String.init(cString:)();
    v30 = v38;
  }

  else
  {
    Logger.init()();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "GM availability string not found", v41, 2u);
      v24 = v59;
    }

    (*(v3 + 8))(v15, v2);
    v57 = 0;
    v30 = 0;
  }

  v42 = xpc_dictionary_get_value(v24, "reasons");
  if (!v42)
  {
    goto LABEL_21;
  }

  v43 = v42;
  v44 = xpc_get_type(v42);
  if (v44 != XPC_TYPE_ARRAY.getter())
  {
    swift_unknownObjectRelease();
LABEL_21:
    Logger.init()();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Failed to get reasons array", v47, 2u);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v13, v2);
LABEL_24:
    v31 = &_swiftEmptyArrayStorage;
    v29 = v57;
    goto LABEL_12;
  }

  result = xpc_array_get_count(v43);
  if ((result & 0x8000000000000000) == 0)
  {
    v48 = result;
    if (result)
    {
      v49 = 0;
      v31 = &_swiftEmptyArrayStorage;
      v58 = v43;
      do
      {
        if (xpc_array_get_string(v43, v49))
        {
          v51 = String.init(cString:)();
          v53 = v52;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_10002CBD0(0, *(v31 + 2) + 1, 1, v31);
          }

          v55 = *(v31 + 2);
          v54 = *(v31 + 3);
          if (v55 >= v54 >> 1)
          {
            v31 = sub_10002CBD0((v54 > 1), v55 + 1, 1, v31);
          }

          *(v31 + 2) = v55 + 1;
          v50 = &v31[16 * v55];
          *(v50 + 4) = v51;
          *(v50 + 5) = v53;
          v43 = v58;
        }

        ++v49;
      }

      while (v48 != v49);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v29 = v57;
      goto LABEL_12;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_100028E10()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    if (&type metadata accessor for GenerativeModelsAvailability)
    {
      v3 = &nominal type descriptor for GenerativeModelsAvailability == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3 && &type metadata for GenerativeModelsAvailability != 0)
    {
      v7 = type metadata accessor for GenerativeModelsAvailability.ChangeSequence.Iterator();
      v0[8] = v7;
      v8 = *(v7 - 8);
      v0[9] = v8;
      v9 = *(v8 + 64) + 15;
      v0[10] = swift_task_alloc();
      v10 = type metadata accessor for GenerativeModelsAvailability();
      v11 = *(v10 - 8);
      v12 = *(v11 + 64) + 15;
      v13 = swift_task_alloc();
      v14 = type metadata accessor for GenerativeModelsAvailability.Parameters();
      v15 = *(v14 - 8);
      v16 = *(v15 + 64) + 15;
      v17 = swift_task_alloc();
      GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:)();
      static GenerativeModelsAvailability.current(parameters:)();
      (*(v15 + 8))(v17, v14);

      v18 = type metadata accessor for GenerativeModelsAvailability.ChangeSequence();
      v19 = *(v18 - 8);
      v20 = *(v19 + 64) + 15;
      v21 = swift_task_alloc();
      GenerativeModelsAvailability.changes.getter();
      (*(v11 + 8))(v13, v10);
      GenerativeModelsAvailability.ChangeSequence.makeAsyncIterator()();
      (*(v19 + 8))(v21, v18);

      v22 = *(*(sub_100026CC8(&qword_100053CB0, &qword_10003C198) - 8) + 64) + 15;
      v0[11] = swift_task_alloc();
      v23 = sub_100029E28();
      v24 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
      v25 = swift_task_alloc();
      v0[12] = v25;
      *v25 = v0;
      v25[1] = sub_1000291AC;
      v27 = v0[10];
      v26 = v0[11];
      v28 = v0[8];

      return dispatch thunk of AsyncIteratorProtocol.next()(v26, v28, v23);
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000291AC()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100029458;
  }

  else
  {
    v3 = sub_1000292C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000292DC()
{
  v1 = v0[11];
  v2 = type metadata accessor for GenerativeModelsAvailability.Availability();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[7];
    sub_1000287B4();
    sub_100029E74(v1, &qword_100053CB0, &qword_10003C198);
    v7 = sub_100029E28();
    v8 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_1000291AC;
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[8];

    return dispatch thunk of AsyncIteratorProtocol.next()(v10, v12, v7);
  }
}

uint64_t sub_100029458()
{
  *(v0 + 40) = *(v0 + 104);
  sub_100026CC8(&qword_100053CC0, &qword_10003C1A0);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_1000294E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100026CC8(&qword_100053C78, &qword_10003C130);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100029C48(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100029E74(v12, &qword_100053C78, &qword_10003C130);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100029E74(a3, &qword_100053C78, &qword_10003C130);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100029E74(a3, &qword_100053C78, &qword_10003C130);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id GenerativeModelsState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeModelsState();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10002985C()
{
  result = [objc_allocWithZone(type metadata accessor for GenerativeModelsState()) init];
  qword_100053C60 = result;
  return result;
}

uint64_t sub_1000298B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100029964;

  return sub_100028DF0(a1, v4, v5, v6);
}

uint64_t sub_100029964()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100029A58(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100029B50;

  return v7(a1);
}

uint64_t sub_100029B50()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100029C48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026CC8(&qword_100053C78, &qword_10003C130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029CB8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100029F24;

  return sub_100029A58(a1, v5);
}

uint64_t sub_100029D70(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100029964;

  return sub_100029A58(a1, v5);
}

unint64_t sub_100029E28()
{
  result = qword_100053CB8;
  if (!qword_100053CB8)
  {
    type metadata accessor for GenerativeModelsAvailability.ChangeSequence.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053CB8);
  }

  return result;
}

uint64_t sub_100029E74(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100026CC8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100029ED4()
{
  result = qword_100053CD0;
  if (!qword_100053CD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100053CD0);
  }

  return result;
}

uint64_t *sub_10002A0D8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v39 - v17;
  v19 = OBJC_IVAR____TtC11ReportCrash23CrashPatternMatchResult_matchedPatterns;
  *&v5[OBJC_IVAR____TtC11ReportCrash23CrashPatternMatchResult_matchedPatterns] = 0;
  v20 = &v5[OBJC_IVAR____TtC11ReportCrash23CrashPatternMatchResult_errorMessage];
  *v20 = 0;
  v20[1] = 0;
  v21 = OBJC_IVAR____TtC11ReportCrash23CrashPatternMatchResult_success;
  v5[OBJC_IVAR____TtC11ReportCrash23CrashPatternMatchResult_success] = a1;
  *&v5[v19] = a2;
  *v20 = a3;
  v20[1] = a4;
  if (v5[v21] == 1)
  {
    if (*&v5[v19])
    {
      if (!a4)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

LABEL_11:
    v33 = v16;
    Logger.init()();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Mis-initialized CrashPatternMatchResult", v36, 2u);
    }

    (*(v11 + 8))(v18, v33);
    v37 = *&v5[v19];

    v38 = v20[1];

    type metadata accessor for CrashPatternMatchResult();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if (!a4)
  {
    goto LABEL_11;
  }

LABEL_6:
  v22 = v16;
  Logger.init()();
  v23 = v5;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v24, v25))
  {
LABEL_9:

    (*(v11 + 8))(v15, v22);
LABEL_10:
    matched = type metadata accessor for CrashPatternMatchResult();
    v41.receiver = v5;
    v41.super_class = matched;
    return objc_msgSendSuper2(&v41, "init");
  }

  v26 = swift_slowAlloc();
  result = swift_slowAlloc();
  v40 = result;
  *v26 = 136315138;
  v28 = v20[1];
  if (v28)
  {
    v29 = result;
    v30 = *v20;

    v31 = sub_10000750C(v30, v28, &v40);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Error in pattern matching: %s", v26, 0xCu);
    sub_100007740(v29);

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t *sub_10002A3F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11ReportCrash23CrashPatternMatchResult_matchedPatterns);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = *(v1 + 16);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v24 = &_swiftEmptyArrayStorage;

    sub_10002D35C(0, v2, 0);
    v3 = &_swiftEmptyArrayStorage;
    v4 = type metadata accessor for CrashMatchedPattern();
    v23 = v4;
    v5 = *(v4 - 8);
    v6 = *(v5 + 16);
    v21 = v5 + 16;
    v22 = v6;
    v7 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v9 = *(v5 + 64);
    v8 = *(v5 + 72);
    v19 = v1;
    v20 = v8;
    v10 = (v5 + 8);
    do
    {
      __chkstk_darwin(v4);
      v11 = v23;
      v22(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v23);
      v12 = CrashMatchedPattern.uuid.getter();
      v14 = v13;
      v4 = (*v10)(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
      v24 = v3;
      v16 = v3[2];
      v15 = v3[3];
      if (v16 >= v15 >> 1)
      {
        v4 = sub_10002D35C((v15 > 1), v16 + 1, 1);
        v3 = v24;
      }

      v3[2] = v16 + 1;
      v17 = &v3[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
      v7 += v20;
      --v2;
    }

    while (v2);
  }

  return v3;
}

char *sub_10002A5A4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC11ReportCrash23CrashPatternMatchResult_matchedPatterns);
  if (!v7)
  {
    v36 = v4;
    Logger.init()();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Tried to match actions on error results", v39, 2u);
    }

    (*(v2 + 8))(v6, v36);
    return &_swiftEmptyArrayStorage;
  }

  v49 = type metadata accessor for CrashMatchedPattern();
  v8 = *(v49 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v49);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v7 + 16);
  v14 = &_swiftEmptyArrayStorage;
  if (v13)
  {
    v45[1] = v10;
    v45[2] = v7;
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v17 = v7 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v46 = *(v15 + 56);
    v47 = (v15 - 8);
    v48 = v16;

    v18 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v20 = v49;
      v21 = v15;
      v48(v12, v17, v49);
      v22 = CrashMatchedPattern.actions.getter();
      v23 = v14;
      if (v22)
      {
        v14 = v22;
      }

      result = (*v47)(v12, v20);
      v24 = v14[2];
      v25 = v18[2];
      v26 = v25 + v24;
      if (__OFADD__(v25, v24))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v26 <= v18[3] >> 1)
      {
        if (v14[2])
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v25 <= v26)
        {
          v28 = v25 + v24;
        }

        else
        {
          v28 = v25;
        }

        v18 = sub_10002CCDC(isUniquelyReferenced_nonNull_native, v28, 1, v18);
        if (v14[2])
        {
LABEL_17:
          v29 = (v18[3] >> 1) - v18[2];
          result = type metadata accessor for CrashPatternAction();
          v30 = *(result - 1);
          if (v29 < v24)
          {
            goto LABEL_34;
          }

          v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
          v32 = *(v30 + 72);
          swift_arrayInitWithCopy();

          v14 = v23;
          if (v24)
          {
            v33 = v18[2];
            v34 = __OFADD__(v33, v24);
            v35 = v33 + v24;
            if (v34)
            {
              goto LABEL_35;
            }

            v18[2] = v35;
          }

          goto LABEL_5;
        }
      }

      v14 = v23;
      if (v24)
      {
        goto LABEL_33;
      }

LABEL_5:
      v17 += v46;
      --v13;
      v15 = v21;
      if (!v13)
      {

        goto LABEL_26;
      }
    }
  }

  v18 = &_swiftEmptyArrayStorage;
LABEL_26:
  v40 = sub_10002F280(v18);

  v41 = *(v40 + 16);
  if (!v41)
  {

    return &_swiftEmptyArrayStorage;
  }

  v42 = sub_10002CD7C(*(v40 + 16), 0);
  v43 = *(type metadata accessor for CrashPatternAction() - 8);
  v44 = sub_10002ECD8(&v50, &v42[(*(v43 + 80) + 32) & ~*(v43 + 80)], v41, v40);
  result = sub_10002ADBC();
  if (v44 != v41)
  {
    goto LABEL_36;
  }

  return v42;
}

id sub_10002AA88(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10002AB34()
{
  if (*(v0 + OBJC_IVAR____TtC11ReportCrash23CrashPatternMatchResult_success) == 1)
  {
    v1 = sub_10002A5A4();
    v2 = type metadata accessor for CrashPatternAction();
    v15[1] = v15;
    v3 = *(v2 - 8);
    v4 = *(v3 + 64);
    result = __chkstk_darwin(v2);
    v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = 0;
    v9 = *(v1 + 2);
    v15[5] = v6;
    v16 = v9;
    v15[3] = v3 + 104;
    v15[4] = v3 + 16;
    v15[2] = v3 + 8;
    while (1)
    {
      v10 = v16 != v8;
      if (v16 == v8)
      {
LABEL_6:

        return v10;
      }

      if (v8 >= *(v1 + 2))
      {
        break;
      }

      v11 = (*(v3 + 16))(v7, &v1[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8++], v2);
      __chkstk_darwin(v11);
      v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v3 + 104))(v13, enum case for CrashPatternAction.urgentSubmit(_:), v2);
      sub_10002AD70();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v14 = *(v3 + 8);
      v14(v13, v2);
      result = (v14)(v7, v2);
      if (v18 == v17)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t sub_10002AD70()
{
  result = qword_100053D40;
  if (!qword_100053D40)
  {
    type metadata accessor for CrashPatternAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053D40);
  }

  return result;
}

uint64_t sub_10002ADC4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100026CC8(&qword_100053E88, "bc");
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000076E4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100007B3C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100007B3C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100007B3C(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100007B3C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_10002B08C()
{
  type metadata accessor for PerBootTracker();
  swift_allocObject();
  result = sub_10002C4A4(0xD000000000000018, 0x800000010003BB30);
  off_100053D60 = result;
  return result;
}

uint64_t sub_10002B0E0()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_10002F178();
  static DispatchQoS.unspecified.getter();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_10002F1C4();
  sub_100026CC8(&qword_100053B38, &qword_10003BFD0);
  sub_10002F21C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100053D68 = result;
  return result;
}

uint64_t sub_10002B2E8()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_10002F178();
  static DispatchQoS.unspecified.getter();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_10002F1C4();
  sub_100026CC8(&qword_100053B38, &qword_10003BFD0);
  sub_10002F21C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100053D70 = result;
  return result;
}

void *sub_10002B4F0()
{
  type metadata accessor for PerBootTracker();
  swift_allocObject();
  result = sub_10002C4A4(0xD00000000000001ALL, 0x800000010003BCA0);
  off_100053D78 = result;
  return result;
}

uint64_t sub_10002B544()
{
  result = [v0 problemType];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == 3747891 && v5 == 0xE300000000000000)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    if ([objc_opt_self() isInLDM])
    {
      return 1;
    }

    v8 = [v0 procName];
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      if (v10 == 0xD000000000000018 && 0x800000010003BC80 == v12)
      {

        return 1;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        return 1;
      }
    }

    if ([v0 throttleTimeout] >= 0xB)
    {
      v14 = String._bridgeToObjectiveC()();
      v15 = OSARandomSelection();

      if (v15)
      {
        return 1;
      }
    }

    v16 = String._bridgeToObjectiveC()();
    v17 = OSARandomSelection();

    if (v17)
    {
      return 1;
    }

    else
    {
      if (qword_100053AA0 != -1)
      {
        swift_once();
      }

      v18 = off_100053D60;
      if (!off_100053D60)
      {
        return 0;
      }

      result = [v0 procName];
      if (result)
      {
        v19 = result;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v20 = v18[4];
        __chkstk_darwin(v21);
        OS_dispatch_queue.sync<A>(execute:)();

        return v22;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t *sub_10002B808(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = &_swiftEmptyArrayStorage;
    sub_10002D37C(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10002D37C((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_100007B3C(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_10002B908(void *a1, _BYTE *a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = objc_allocWithZone(OSADateCounter);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 initWithIdentifier:v15];

  if ([v16 count] >= *a1)
  {
    Logger.init()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Skipping urgent submission because the limit was hit", v29, 2u);
    }

    v30 = *(v7 + 8);
    v31 = v11;
    goto LABEL_9;
  }

  *a2 = 1;
  [v16 increment];
  Logger.init()();
  v17 = a3;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v18, v19))
  {

    v30 = *(v7 + 8);
    v31 = v13;
LABEL_9:
    v30(v31, v6);
    return;
  }

  v32 = v6;
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v33 = v21;
  *v20 = 136446210;
  v22 = [v17 procName];

  if (v22)
  {
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_10000750C(v23, v25, &v33);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Enabling urgent submission for process %{public}s", v20, 0xCu);
    sub_100007740(v21);

    (*(v7 + 8))(v13, v32);
  }

  else
  {
    __break(1u);
  }
}

void sub_10002BE24(void *a1, int a2, void *a3, int a4)
{
  sub_100026CC8(&qword_100053B18, &qword_10003BFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003C0E0;
  *(inited + 32) = 1701080941;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x746E65677275;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x746E657665;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = 0x7243746E65677275;
  *(inited + 104) = 0xEB00000000687361;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x682D79636167656CLL;
  *(inited + 136) = 0xEF68746150656D6FLL;
  v9 = NSHomeDirectory();
  if (v9)
  {
    v10 = v9;
    v11 = [(NSString *)v9 stringByStandardizingPath];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *(inited + 144) = v12;
    *(inited + 152) = v14;
    *(inited + 168) = &type metadata for String;
    *(inited + 176) = 0xD000000000000012;
    *(inited + 184) = 0x800000010003BAC0;
    v15 = [objc_opt_self() sharedInstance];
    v16 = [v15 internalKey];

    if (v16)
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = (inited + 192);
      *(inited + 216) = &type metadata for String;
      if (v19)
      {
        *v20 = v17;
LABEL_7:
        *(inited + 200) = v19;
        v21 = sub_100007A2C(inited);
        swift_setDeallocating();
        sub_100026CC8(&qword_100053B20, &qword_10003BFC8);
        swift_arrayDestroy();
        v22 = [objc_allocWithZone(OSASubmissionClient) init];
        sub_10002ADC4(v21);

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v24 = swift_allocObject();
        *(v24 + 16) = a1;
        *(v24 + 24) = a2;
        *(v24 + 32) = a3;
        *(v24 + 40) = a4;
        aBlock[4] = sub_10002F0F4;
        aBlock[5] = v24;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002C200;
        aBlock[3] = &unk_100045FE0;
        v25 = _Block_copy(aBlock);
        v26 = a1;
        v27 = a3;

        [v22 submitWithOptions:isa resultsCallback:v25];
        _Block_release(v25);

        return;
      }
    }

    else
    {
      v20 = (inited + 192);
      *(inited + 216) = &type metadata for String;
    }

    *v20 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_10002C180(uint64_t a1, void *a2, int a3, void *a4)
{
  if (a2 && a3 == 15)
  {
    v6 = a2;
    if (([a4 isSimulated] & 1) == 0)
    {
      Int32.init(truncating:)();
      launch_urgent_log_submission_completed();
    }
  }
}

uint64_t sub_10002C200(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t sub_10002C284()
{
  if (v0[5])
  {
    v1 = v0[5];
  }

  else
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = v0[2];
    v4 = v0[3];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v2 arrayForKey:v5];

    if (!v6 || (v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v6, v8 = sub_10002C390(v7), , !v8))
    {

      v8 = &_swiftEmptyArrayStorage;
    }

    v1 = sub_10002F3EC(v8);

    v9 = v0[5];
    v0[5] = v1;
  }

  return v1;
}

unint64_t *sub_10002C390(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  sub_10002D35C(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1000076E4(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10002D35C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_10002C4A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_10002F178();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v6);
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = 0;
  v3[6] = 0;
  v3[4] = v15;
  v16 = sub_10002F4F0();
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    v20 = v3[3];
    v43[0] = v3[2];
    v43[1] = v20;

    v21._countAndFlagsBits = 0x495555746F6F622ELL;
    v21._object = 0xE900000000000044;
    String.append(_:)(v21);
    v22 = objc_opt_self();
    v23 = [v22 standardUserDefaults];
    v24 = String._bridgeToObjectiveC()();
    v25 = [v23 stringForKey:v24];

    if (v25)
    {
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      if (v18 == v26 && v19 == v28)
      {

LABEL_10:
        v37 = [v22 standardUserDefaults];
        v38 = v3[2];
        v39 = v3[3];

        v40 = String._bridgeToObjectiveC()();

        v41 = [v37 integerForKey:v40];

        v3[6] = v41;
        return v3;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {

        goto LABEL_10;
      }
    }

    v30 = [v22 standardUserDefaults];
    v31 = String._bridgeToObjectiveC()();

    v32 = String._bridgeToObjectiveC()();

    [v30 setObject:v31 forKey:v32];

    v33 = [v22 standardUserDefaults];
    v34 = v3[2];
    v35 = v3[3];

    v36 = String._bridgeToObjectiveC()();

    [v33 removeObjectForKey:v36];

    goto LABEL_10;
  }

  return 0;
}

void sub_10002C8C8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002C284();
  v7 = sub_10000F378(a2, a3, v6);

  if ((v7 & 1) == 0)
  {
    v21 = a1[5];

    sub_10002D8A0(&v20, a2, a3);

    v8 = a1[5];
    a1[5] = v21;

    v9 = [objc_opt_self() standardUserDefaults];
    v10 = v9;
    v11 = a1[5];
    v12 = *(v11 + 16);
    if (v12)
    {
      v19 = v9;
      v13 = sub_10002CCF8(v12, 0);
      v14 = sub_10002EF9C(&v20, v13 + 4, v12, v11);

      sub_10002ADBC();
      if (v14 != v12)
      {
        __break(1u);
        return;
      }

      v10 = v19;
    }

    isa = Array._bridgeToObjectiveC()().super.isa;

    v16 = a1[2];
    v17 = a1[3];
    v18 = String._bridgeToObjectiveC()();
    [v10 setObject:isa forKey:v18];
  }
}

void sub_10002CA80(void *a1)
{
  v1 = a1[6];
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    a1[6] = v3;
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = a1[6];
    v7 = a1[2];
    v8 = a1[3];
    v9 = String._bridgeToObjectiveC()();
    [v5 setInteger:v6 forKey:v9];
  }
}

uint64_t sub_10002CB18()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_10002CB84(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_10002CBD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100026CC8(&qword_100053E90, &qword_10003C258);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10002CCF8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100026CC8(&qword_100053E90, &qword_10003C258);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_10002CD7C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100026CC8(&qword_100053EA0, &qword_10003C268);
  v4 = *(type metadata accessor for CrashPatternAction() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002CE78@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_10002CEA8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_10002CEC8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10002CF00(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10000750C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_10002CF5C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10002CFA8(a1, a2);
  sub_10002D0D8(&off_100045D48);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10002CFA8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10002D1C4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10002D1C4(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10002D0D8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10002D238(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10002D1C4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100026CC8(&qword_100053E98, &qword_10003C260);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10002D238(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100026CC8(&qword_100053E98, &qword_10003C260);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10002D32C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_10002D35C(char *a1, int64_t a2, char a3)
{
  result = sub_10002D39C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002D37C(char *a1, int64_t a2, char a3)
{
  result = sub_10002D4A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002D39C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100026CC8(&qword_100053E90, &qword_10003C258);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10002D4A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100026CC8(&qword_100053CC8, qword_10003C1A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}
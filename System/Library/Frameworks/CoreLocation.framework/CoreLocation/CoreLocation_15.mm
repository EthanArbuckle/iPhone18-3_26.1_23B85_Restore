void sub_19BA44FC8(uint64_t a1, uint64_t a2)
{
  v110 = *MEMORY[0x1E69E9840];
  ++*(a1 + 88);
  v100 = *(a1 + 4);
  if (!*(a1 + 32))
  {
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v9 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
    v86 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handler && invalid handler";
      _os_log_impl(&dword_19B873000, v86, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }
    }

    v87 = qword_1EAFE4780;
    if (os_signpost_enabled(qword_1EAFE4780))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handler && invalid handler";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v87, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }
    }

    v6 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handler && invalid handler";
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_184;
  }

  v6 = a1;
  v4 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
  v3 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
  if ((*(a1 + 48) & 1) == 0)
  {
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v88 = qword_1EAFE4780;
    v2 = &off_19BA89000;
    v9 = "assert";
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "fIniitalized && must call initialize(state) first";
      _os_log_impl(&dword_19B873000, v88, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }
    }

    v89 = qword_1EAFE4780;
    if (os_signpost_enabled(qword_1EAFE4780))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "fIniitalized && must call initialize(state) first";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v89, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }
    }

    v6 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "fIniitalized && must call initialize(state) first";
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_184:
    abort_report_np();
    goto LABEL_229;
  }

  if (qword_1EAFE4778 != -1)
  {
    dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
  }

  v5 = &v107;
  v8 = qword_1EAFE4780;
  LODWORD(v9) = *(v6 + 120);
  if (os_log_type_enabled(qword_1EAFE4780, *(v6 + 120)))
  {
    v2 = (v6 + 96);
    if (*(v6 + 119) < 0)
    {
      v2 = *v2;
    }

    sub_19BA46990(__p, *(v6 + 4));
    v10 = SHIBYTE(v104);
    v11 = *__p;
    sub_19BA46980(&v107, a2);
    v12 = __p;
    if (v10 < 0)
    {
      v12 = v11;
    }

    if (v109 >= 0)
    {
      v13 = &v107;
    }

    else
    {
      v13 = v107;
    }

    *buf = 136315650;
    *&buf[4] = v2;
    *&buf[12] = 2080;
    *&buf[14] = v12;
    *&buf[22] = 2080;
    *&buf[24] = v13;
    _os_log_impl(&dword_19B873000, v8, v9, "%scurrent_state,%s,event,%s", buf, 0x20u);
    if (v109 < 0)
    {
      operator delete(v107);
    }

    v4 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
    if (SHIBYTE(v104) < 0)
    {
      operator delete(*__p);
    }
  }

  v14 = sub_19B87DD40();
  if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v2 = (v6 + 96);
    if (*(v6 + 119) < 0)
    {
      v2 = *v2;
    }

    LODWORD(v9) = *(v6 + 120);
    sub_19BA46990(&v107, *(v6 + 4));
    v15 = v109;
    v16 = v107;
    sub_19BA46980(v98, a2);
    v17 = &v107;
    if (v15 < 0)
    {
      v17 = v16;
    }

    if (v99 >= 0)
    {
      v18 = v98;
    }

    else
    {
      v18 = v98[0];
    }

    *__p = 136315650;
    *&__p[4] = v2;
    v102 = 2080;
    v103 = v17;
    v104 = 2080;
    v105 = v18;
    v19 = _os_log_send_and_compose_impl();
    if (v99 < 0)
    {
      operator delete(v98[0]);
    }

    v4 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
    if (v109 < 0)
    {
      operator delete(v107);
    }

    sub_19B885924("Generic", 1, 0, 2, "State CLStateMachine<CLEmergencyLocationSelectorInternal>::handleEvent(Event) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  v20 = *(v6 + 16);
  if (!v20)
  {
    goto LABEL_43;
  }

  v21 = *(v6 + 4);
  v22 = v6 + 16;
  do
  {
    if (*(v20 + 32) >= v21)
    {
      v22 = v20;
    }

    v20 = *(v20 + 8 * (*(v20 + 32) < v21));
  }

  while (v20);
  if (v22 != v6 + 16 && v21 >= *(v22 + 32))
  {
    v96 = v6 + 8;
    v25 = *(v22 + 40);
    v26 = *(v22 + 48);
    v27 = (*(v6 + 32) + (v26 >> 1));
    if (v26)
    {
      v25 = *(*v27 + v25);
    }

    v28 = v25(v27, a2);
    LODWORD(v9) = v28;
    v97 = v28;
    if (a2 > 1 || v28 == v100)
    {
      if (*(v6 + 88) >= 2u)
      {
        if (qword_1EAFE4778 != -1)
        {
          dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
        }

        v29 = qword_1EAFE4780;
        v2 = &off_19BA89000;
        if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_ERROR))
        {
          v30 = (v6 + 96);
          if (*(v6 + 119) < 0)
          {
            v30 = *v30;
          }

          *buf = 136315138;
          *&buf[4] = v30;
          _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "%sNested invocation of state machine", buf, 0xCu);
        }

        v31 = sub_19B87DD40();
        if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4778 == -1)
          {
            goto LABEL_69;
          }

          goto LABEL_230;
        }
      }

      goto LABEL_73;
    }

    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v90 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "newState == oldState";
      _os_log_impl(&dword_19B873000, v90, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }
    }

    v91 = qword_1EAFE4780;
    if (os_signpost_enabled(qword_1EAFE4780))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "newState == oldState";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v91, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }
    }

    v6 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "newState == oldState";
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }
  }

  else
  {
LABEL_43:
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v23 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handlerFn != std::end(state_handlers)";
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }
    }

    v24 = qword_1EAFE4780;
    if (os_signpost_enabled(qword_1EAFE4780))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handlerFn != std::end(state_handlers)";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }
    }

    v6 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handlerFn != std::end(state_handlers)";
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }
  }

  abort_report_np();
LABEL_229:
  while (1)
  {
    __break(1u);
LABEL_230:
    dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
LABEL_69:
    v32 = *(v3 + 240);
    v33 = (v6 + 96);
    if (*(v6 + 119) < 0)
    {
      v33 = *v33;
    }

    *__p = *(v2 + 41);
    *&__p[4] = v33;
    v34 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "State CLStateMachine<CLEmergencyLocationSelectorInternal>::handleEvent(Event) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v34);
    if (v34 != buf)
    {
      free(v34);
    }

LABEL_73:
    if (*(v4 + 239) != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v35 = *(v3 + 240);
    v36 = *(v6 + 120);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = (v6 + 96);
      if (*(v6 + 119) < 0)
      {
        v37 = *v37;
      }

      sub_19BA46990(buf, v9);
      if (buf[23] >= 0)
      {
        v38 = buf;
      }

      else
      {
        v38 = *buf;
      }

      *__p = 136315394;
      *&__p[4] = v37;
      v102 = 2080;
      v103 = v38;
      _os_log_impl(&dword_19B873000, v35, v36, "%snewState,%s", __p, 0x16u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v39 = sub_19B87DD40();
    if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (*(v4 + 239) != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v40 = (v6 + 96);
      if (*(v6 + 119) < 0)
      {
        v40 = *v40;
      }

      v41 = *(v3 + 240);
      v42 = *(v6 + 120);
      sub_19BA46990(__p, v9);
      if (v104 >= 0)
      {
        v43 = __p;
      }

      else
      {
        v43 = *__p;
      }

      LODWORD(v107) = 136315394;
      *(v5 + 4) = v40;
      v108 = 2080;
      *(v5 + 14) = v43;
      v44 = _os_log_send_and_compose_impl();
      if (SHIBYTE(v104) < 0)
      {
        operator delete(*__p);
      }

      sub_19B885924("Generic", 1, 0, 2, "State CLStateMachine<CLEmergencyLocationSelectorInternal>::handleEvent(Event) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v44);
      if (v44 != buf)
      {
        free(v44);
      }
    }

    if (v9 == v100)
    {
      break;
    }

    if (*(v4 + 239) != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v45 = *(v3 + 240);
    v2 = *(v6 + 120);
    if (os_log_type_enabled(v45, *(v6 + 120)))
    {
      v46 = (v6 + 96);
      if (*(v6 + 119) < 0)
      {
        v46 = *v46;
      }

      sub_19BA46990(__p, v100);
      v47 = SHIBYTE(v104);
      v48 = *__p;
      sub_19B8759E8(&v107, "Exit");
      v49 = __p;
      if (v47 < 0)
      {
        v49 = v48;
      }

      if (v109 >= 0)
      {
        v50 = &v107;
      }

      else
      {
        v50 = *v5;
      }

      *buf = 136315650;
      *&buf[4] = v46;
      *&buf[12] = 2080;
      *&buf[14] = v49;
      *&buf[22] = 2080;
      *&buf[24] = v50;
      _os_log_impl(&dword_19B873000, v45, v2, "%soldState,%s,event,%s", buf, 0x20u);
      if (v109 < 0)
      {
        operator delete(*v5);
      }

      v4 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
      if (SHIBYTE(v104) < 0)
      {
        operator delete(*__p);
      }
    }

    v51 = sub_19B87DD40();
    if (*(v51 + 160) > 1 || *(v51 + 164) > 1 || *(v51 + 168) > 1 || *(v51 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (*(v4 + 239) != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v52 = (v6 + 96);
      if (*(v6 + 119) < 0)
      {
        v52 = *v52;
      }

      v53 = *(v3 + 240);
      v2 = *(v6 + 120);
      sub_19BA46990(&v107, v100);
      v54 = v109;
      v55 = *v5;
      sub_19B8759E8(v98, "Exit");
      v56 = &v107;
      if (v54 < 0)
      {
        v56 = v55;
      }

      if (v99 >= 0)
      {
        v57 = v98;
      }

      else
      {
        v57 = v98[0];
      }

      *__p = 136315650;
      *&__p[4] = v52;
      v102 = 2080;
      v103 = v56;
      v104 = 2080;
      v105 = v57;
      v58 = _os_log_send_and_compose_impl();
      if (v99 < 0)
      {
        operator delete(v98[0]);
      }

      v4 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
      if (v109 < 0)
      {
        operator delete(*v5);
      }

      sub_19B885924("Generic", 1, 0, 2, "State CLStateMachine<CLEmergencyLocationSelectorInternal>::handleEvent(Event) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v58);
      if (v58 != buf)
      {
        free(v58);
      }
    }

    v59 = *(v6 + 32);
    *buf = &v100;
    v60 = sub_19BA4BCDC(v96, v100);
    v61 = v60[5];
    v62 = v60[6];
    v63 = (v59 + (v62 >> 1));
    if (v62)
    {
      v61 = *(*v63 + v61);
    }

    v64 = v61(v63, 1);
    if (v64 == v100)
    {
      *(v6 + 4) = v9;
      if (*(v4 + 239) != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v65 = *(v3 + 240);
      v2 = *(v6 + 120);
      if (os_log_type_enabled(v65, *(v6 + 120)))
      {
        v66 = (v6 + 96);
        if (*(v6 + 119) < 0)
        {
          v66 = *v66;
        }

        sub_19BA46990(__p, v9);
        v67 = SHIBYTE(v104);
        v68 = *__p;
        sub_19B8759E8(&v107, "Enter");
        v69 = __p;
        if (v67 < 0)
        {
          v69 = v68;
        }

        if (v109 >= 0)
        {
          v70 = &v107;
        }

        else
        {
          v70 = *v5;
        }

        *buf = 136315650;
        *&buf[4] = v66;
        *&buf[12] = 2080;
        *&buf[14] = v69;
        *&buf[22] = 2080;
        *&buf[24] = v70;
        _os_log_impl(&dword_19B873000, v65, v2, "%snewState,%s,event,%s", buf, 0x20u);
        if (v109 < 0)
        {
          operator delete(*v5);
        }

        v4 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
        if (SHIBYTE(v104) < 0)
        {
          operator delete(*__p);
        }
      }

      v71 = sub_19B87DD40();
      if (*(v71 + 160) > 1 || *(v71 + 164) > 1 || *(v71 + 168) > 1 || *(v71 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (*(v4 + 239) != -1)
        {
          dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
        }

        v72 = (v6 + 96);
        if (*(v6 + 119) < 0)
        {
          v72 = *v72;
        }

        v73 = *(v3 + 240);
        v2 = *(v6 + 120);
        sub_19BA46990(&v107, v9);
        v74 = v109;
        v75 = *v5;
        sub_19B8759E8(v98, "Enter");
        v76 = &v107;
        if (v74 < 0)
        {
          v76 = v75;
        }

        if (v99 >= 0)
        {
          v77 = v98;
        }

        else
        {
          v77 = v98[0];
        }

        *__p = 136315650;
        *&__p[4] = v72;
        v102 = 2080;
        v103 = v76;
        v104 = 2080;
        v105 = v77;
        v78 = _os_log_send_and_compose_impl();
        if (v99 < 0)
        {
          operator delete(v98[0]);
        }

        v4 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
        if (v109 < 0)
        {
          operator delete(*v5);
        }

        sub_19B885924("Generic", 1, 0, 2, "State CLStateMachine<CLEmergencyLocationSelectorInternal>::handleEvent(Event) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v78);
        if (v78 != buf)
        {
          free(v78);
        }
      }

      v79 = *(v6 + 32);
      *buf = &v97;
      v80 = sub_19BA4BCDC(v96, v9);
      v81 = v80[5];
      v82 = v80[6];
      v83 = (v79 + (v82 >> 1));
      if (v82)
      {
        v81 = *(*v83 + v81);
      }

      v84 = v81(v83, 0);
      if (v84 == v97)
      {
        break;
      }

      if (*(v4 + 239) != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v94 = *(v3 + 240);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "retState == newState";
        _os_log_impl(&dword_19B873000, v94, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (*(v4 + 239) != -1)
        {
          dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
        }
      }

      v95 = *(v3 + 240);
      if (os_signpost_enabled(v95))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "retState == newState";
        _os_signpost_emit_with_name_impl(&dword_19B873000, v95, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (*(v4 + 239) != -1)
        {
          dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
        }
      }

      v6 = *(v3 + 240);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "retState == newState";
        _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }
    }

    else
    {
      if (*(v4 + 239) != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v92 = *(v3 + 240);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "retState == oldState";
        _os_log_impl(&dword_19B873000, v92, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (*(v4 + 239) != -1)
        {
          dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
        }
      }

      v93 = *(v3 + 240);
      if (os_signpost_enabled(v93))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "retState == oldState";
        _os_signpost_emit_with_name_impl(&dword_19B873000, v93, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (*(v4 + 239) != -1)
        {
          dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
        }
      }

      v6 = *(v3 + 240);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "retState == oldState";
        _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }
    }

    abort_report_np();
  }

  --*(v6 + 88);
  v85 = *MEMORY[0x1E69E9840];
}

void sub_19BA46938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA469A0(uint64_t a1, double a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  if (!v3)
  {
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v36 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_ERROR))
    {
      v37 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v37 = *v37;
      }

      *buf = 136315138;
      *&buf[4] = v37;
      _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_ERROR, "%sInvoking timers without callback queue set", buf, 0xCu);
    }

    v38 = sub_19B87DD40();
    if ((*(v38 + 160) & 0x80000000) == 0 || (*(v38 + 164) & 0x80000000) == 0 || (*(v38 + 168) & 0x80000000) == 0 || *(v38 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v39 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v39 = *v39;
      }

      *__p = 136315138;
      *&__p[4] = v39;
      v40 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "void CLStateMachine<CLEmergencyLocationSelectorInternal>::setTimeoutEvent(Event, double) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v40);
      if (v40 != buf)
      {
        free(v40);
      }
    }

    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v41 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "false";
      _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }
    }

    v42 = qword_1EAFE4780;
    if (os_signpost_enabled(qword_1EAFE4780))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "false";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v42, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }
    }

    v43 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "false";
      _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  if (a2 < 0.0)
  {
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v5 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_FAULT))
    {
      v6 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v6 = *v6;
      }

      sub_19B8759E8(__p, "SendLocationTimeout");
      if (v53 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = *__p;
      }

      *buf = 136315650;
      *&buf[4] = v6;
      *&buf[12] = 2082;
      *&buf[14] = v7;
      *&buf[22] = 2050;
      *&buf[24] = a2;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "%sCannot start timer, event, %{public}s, timeOutSec, %{public}.2f", buf, 0x20u);
      if (SHIBYTE(v53) < 0)
      {
        operator delete(*__p);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v9 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v9 = *v9;
      }

      sub_19B8759E8(v46, "SendLocationTimeout");
      if (v49 >= 0)
      {
        v10 = v46;
      }

      else
      {
        v10 = *v46;
      }

      *__p = 136315650;
      *&__p[4] = v9;
      v51 = 2082;
      v52 = v10;
      v53 = 2050;
      v54 = a2;
      v11 = _os_log_send_and_compose_impl();
      if (v49 < 0)
      {
        operator delete(*v46);
      }

LABEL_89:
      sub_19B885924("Generic", 1, 0, 0, "void CLStateMachine<CLEmergencyLocationSelectorInternal>::setTimeoutEvent(Event, double) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v11);
LABEL_90:
      if (v11 != buf)
      {
        free(v11);
      }

      goto LABEL_92;
    }

    goto LABEL_92;
  }

  v13 = (a1 + 64);
  v12 = *(a1 + 64);
  if (v12)
  {
    v14 = a1 + 64;
    do
    {
      if (*(v12 + 32) >= 4)
      {
        v14 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 32) < 4));
    }

    while (v12);
    if (v14 != v13 && *(v14 + 32) <= 4)
    {
      v15 = *(v14 + 40);
      if (v15)
      {
LABEL_43:
        v20 = dispatch_time(0, (a2 * 1000000000.0));
        dispatch_source_set_timer(v15, v20, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
        if (qword_1EAFE4778 != -1)
        {
          dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
        }

        v21 = qword_1EAFE4780;
        v22 = *(a1 + 120);
        if (os_log_type_enabled(qword_1EAFE4780, v22))
        {
          v23 = (a1 + 96);
          if (*(a1 + 119) < 0)
          {
            v23 = *v23;
          }

          sub_19BA46980(__p, 4);
          if (v53 >= 0)
          {
            v24 = __p;
          }

          else
          {
            v24 = *__p;
          }

          *buf = 136315650;
          *&buf[4] = v23;
          *&buf[12] = 2080;
          *&buf[14] = v24;
          *&buf[22] = 2048;
          *&buf[24] = a2;
          _os_log_impl(&dword_19B873000, v21, v22, "%sevent,%s,timeout,%.2f", buf, 0x20u);
          if (SHIBYTE(v53) < 0)
          {
            operator delete(*__p);
          }
        }

        v25 = sub_19B87DD40();
        if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4778 != -1)
          {
            dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
          }

          v26 = (a1 + 96);
          if (*(a1 + 119) < 0)
          {
            v26 = *v26;
          }

          v27 = *(a1 + 120);
          sub_19BA46980(v46, 4);
          if (v49 >= 0)
          {
            v28 = v46;
          }

          else
          {
            v28 = *v46;
          }

          *__p = 136315650;
          *&__p[4] = v26;
          v51 = 2080;
          v52 = v28;
          v53 = 2048;
          v54 = a2;
          v11 = _os_log_send_and_compose_impl();
          if (v49 < 0)
          {
            operator delete(*v46);
          }

          sub_19B885924("Generic", 1, 0, 2, "void CLStateMachine<CLEmergencyLocationSelectorInternal>::setTimeoutEvent(Event, double) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v11);
          goto LABEL_90;
        }

        goto LABEL_92;
      }
    }
  }

  v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3);
  if (v16)
  {
    v15 = v16;
    v17 = *v13;
    if (!*v13)
    {
LABEL_41:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v18 = v17;
        v19 = *(v17 + 32);
        if (v19 < 5)
        {
          break;
        }

        v17 = *v18;
        if (!*v18)
        {
          goto LABEL_41;
        }
      }

      if (v19 == 4)
      {
        break;
      }

      v17 = v18[1];
      if (!v17)
      {
        goto LABEL_41;
      }
    }

    v18[5] = v16;
    dispatch_source_set_timer(v16, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_19BA4BDC0;
    handler[3] = &unk_1E753CC40;
    handler[4] = a1;
    v45 = 4;
    dispatch_source_set_event_handler(v15, handler);
    dispatch_resume(v15);
    goto LABEL_43;
  }

  if (qword_1EAFE4778 != -1)
  {
    dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
  }

  v29 = qword_1EAFE4780;
  if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_FAULT))
  {
    v30 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v30 = *v30;
    }

    sub_19B8759E8(buf, "SendLocationTimeout");
    if (buf[23] >= 0)
    {
      v31 = buf;
    }

    else
    {
      v31 = *buf;
    }

    *__p = 136315394;
    *&__p[4] = v30;
    v51 = 2082;
    v52 = v31;
    _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_FAULT, "%scannot create timer, event, %{public}s", __p, 0x16u);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  v32 = sub_19B87DD40();
  if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v33 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v33 = *v33;
    }

    sub_19B8759E8(__p, "SendLocationTimeout");
    if (v53 >= 0)
    {
      v34 = __p;
    }

    else
    {
      v34 = *__p;
    }

    *v46 = 136315394;
    *&v46[4] = v33;
    v47 = 2082;
    v48 = v34;
    v11 = _os_log_send_and_compose_impl();
    if (SHIBYTE(v53) < 0)
    {
      operator delete(*__p);
    }

    goto LABEL_89;
  }

LABEL_92:
  v35 = *MEMORY[0x1E69E9840];
}

void sub_19BA4759C(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 64);
  if (!v4)
  {
    goto LABEL_33;
  }

  v5 = a1 + 64;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v5 != a1 + 64 && *(v5 + 32) <= a2 && (v6 = *(v5 + 40)) != 0)
  {
    dispatch_source_set_timer(v6, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v7 = qword_1EAFE4780;
    v8 = *(a1 + 120);
    if (os_log_type_enabled(qword_1EAFE4780, v8))
    {
      v9 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v9 = *v9;
      }

      sub_19BA46980(__p, a2);
      if (v32 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136315394;
      *&buf[4] = v9;
      v24 = 2080;
      v25 = v10;
      _os_log_impl(&dword_19B873000, v7, v8, "%scancel timer,event,%s", buf, 0x16u);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v12 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v12 = *v12;
      }

      v13 = *(a1 + 120);
      sub_19BA46980(buf, a2);
      if (v26 >= 0)
      {
        v14 = buf;
      }

      else
      {
        v14 = *buf;
      }

      v27 = 136315394;
      v28 = v12;
      v29 = 2080;
      v30 = v14;
      v15 = _os_log_send_and_compose_impl();
      if (v26 < 0)
      {
        operator delete(*buf);
      }

LABEL_56:
      sub_19B885924("Generic", 1, 0, 2, "void CLStateMachine<CLEmergencyLocationSelectorInternal>::cancelTimeoutEvent(Event) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v15);
      if (v15 != __p)
      {
        free(v15);
      }
    }
  }

  else
  {
LABEL_33:
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v16 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_DEFAULT))
    {
      v17 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v17 = *v17;
      }

      sub_19BA46980(__p, a2);
      if (v32 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      *buf = 136315394;
      *&buf[4] = v17;
      v24 = 2080;
      v25 = v18;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEFAULT, "#Warning,%s,cancel timer,notFound, event,%s", buf, 0x16u);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v19 = sub_19B87DD40();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v20 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v20 = *v20;
      }

      sub_19BA46980(buf, a2);
      if (v26 >= 0)
      {
        v21 = buf;
      }

      else
      {
        v21 = *buf;
      }

      v27 = 136315394;
      v28 = v20;
      v29 = 2080;
      v30 = v21;
      v15 = _os_log_send_and_compose_impl();
      if (v26 < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_56;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19BA47A64(id *a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v38 = a1;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,isLocationUsable,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
    {
      goto LABEL_49;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v13 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLEmergencyLocationSelectorInternal::isLocationUsable(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n");
LABEL_26:
    if (v13 == buf)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (!a2 || !a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v14 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v15 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      *buf = 138543362;
      v38 = v15;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsable,invalid parameters", buf, 0xCu);
    }

    v16 = sub_19B87DD40();
    if (*(v16 + 160) <= 1 && *(v16 + 164) <= 1 && *(v16 + 168) <= 1 && !*(v16 + 152))
    {
      goto LABEL_49;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_92;
  }

  [a3 coordinate];
  if (!CLLocationCoordinate2DIsValid(v42))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v17 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v18 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      *buf = 138543362;
      v38 = v18;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsable,invalid coordinates", buf, 0xCu);
    }

    v19 = sub_19B87DD40();
    if (*(v19 + 160) <= 1 && *(v19 + 164) <= 1 && *(v19 + 168) <= 1 && !*(v19 + 152))
    {
      goto LABEL_49;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_92;
  }

  v6 = sub_19BA4A7E8(a1, a3);
  [a2 maxUsableAge];
  if (fabs(v6) > v7)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v8 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v9 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      *buf = 138543618;
      v38 = v9;
      v39 = 2050;
      v40 = v6;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsable,location too old. Age:%{public}f", buf, 0x16u);
    }

    v10 = sub_19B87DD40();
    if (*(v10 + 160) <= 1 && *(v10 + 164) <= 1 && *(v10 + 168) <= 1 && !*(v10 + 152))
    {
      goto LABEL_49;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 == -1)
    {
      goto LABEL_47;
    }

LABEL_92:
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    goto LABEL_47;
  }

  [a3 horizontalAccuracy];
  if (v22 <= 0.0 || ([a3 horizontalAccuracy], v24 = v23, objc_msgSend(a2, "maxUsableHunc"), v24 > v25))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v26 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v27 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      [a3 horizontalAccuracy];
      *buf = 138543618;
      v38 = v27;
      v39 = 2050;
      v40 = v28;
      _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsable,horizontal accuracy too low. Hunc:%{public}f", buf, 0x16u);
    }

    v29 = sub_19B87DD40();
    if (*(v29 + 160) <= 1 && *(v29 + 164) <= 1 && *(v29 + 168) <= 1 && !*(v29 + 152))
    {
      goto LABEL_49;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
    [a3 horizontalAccuracy];
    goto LABEL_64;
  }

  v30 = [a3 integrity];
  if (v30 < [a2 minUsableIntegrity])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v31 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v32 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      *buf = 138543618;
      v38 = v32;
      v39 = 1026;
      LODWORD(v40) = [a3 integrity];
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsable,integrity too low. Integrity:%{public}d", buf, 0x12u);
    }

    v33 = sub_19B87DD40();
    if (*(v33 + 160) <= 1 && *(v33 + 164) <= 1 && *(v33 + 168) <= 1 && !*(v33 + 152))
    {
      goto LABEL_49;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
    [a3 integrity];
LABEL_64:
    v13 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isLocationUsable(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n");
    goto LABEL_26;
  }

  if (![a2 vuncCheckRequiredForUsability] || (sub_19BA48598(a1, a2, a3) & 1) != 0)
  {
    result = 1;
    goto LABEL_50;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v34 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v35 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
    *buf = 138543362;
    v38 = v35;
    _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsable,unusable altitude", buf, 0xCu);
  }

  v36 = sub_19B87DD40();
  if (*(v36 + 160) <= 1 && *(v36 + 164) <= 1 && *(v36 + 168) <= 1 && !*(v36 + 152))
  {
    goto LABEL_49;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1ED519088 != -1)
  {
    goto LABEL_92;
  }

LABEL_47:
  +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
  v13 = _os_log_send_and_compose_impl();
  sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isLocationUsable(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n", v13);
  if (v13 != buf)
  {
LABEL_48:
    free(v13);
  }

LABEL_49:
  result = 0;
LABEL_50:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19BA48598(id *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v29 = a1;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,isAltitudeUsable,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v16 = sub_19B87DD40();
    if ((*(v16 + 160) & 0x80000000) != 0 && (*(v16 + 164) & 0x80000000) != 0 && (*(v16 + 168) & 0x80000000) != 0 && !*(v16 + 152))
    {
      goto LABEL_42;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLEmergencyLocationSelectorInternal::isAltitudeUsable(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n");
LABEL_28:
    if (v14 == buf)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (!a2 || !a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v17 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v18 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      *buf = 138543362;
      v29 = v18;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isAltitudeUsable,NO,invalid parameters", buf, 0xCu);
    }

    v19 = sub_19B87DD40();
    if (*(v19 + 160) <= 1 && *(v19 + 164) <= 1 && *(v19 + 168) <= 1 && !*(v19 + 152))
    {
      goto LABEL_42;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isAltitudeUsable(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n", v14);
    if (v14 == buf)
    {
      goto LABEL_42;
    }

LABEL_41:
    free(v14);
    goto LABEL_42;
  }

  [a3 verticalAccuracy];
  if (v6 <= 0.0 || ([a3 verticalAccuracy], v8 = v7, objc_msgSend(a2, "maxUsableVunc"), v8 > v9))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v11 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      [a3 verticalAccuracy];
      *buf = 138543618;
      v29 = v11;
      v30 = 2050;
      v31 = v12;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isAltitudeUsable,NO,vertical accuracy too low,%{public}.2f", buf, 0x16u);
    }

    v13 = sub_19B87DD40();
    if (*(v13 + 160) <= 1 && *(v13 + 164) <= 1 && *(v13 + 168) <= 1 && !*(v13 + 152))
    {
      goto LABEL_42;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
    [a3 verticalAccuracy];
    goto LABEL_17;
  }

  [a3 ellipsoidalAltitude];
  if (v22 >= -450.0)
  {
    [a3 ellipsoidalAltitude];
    if (v23 <= 8850.0)
    {
      result = 1;
      goto LABEL_43;
    }
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v24 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v25 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
    [a3 ellipsoidalAltitude];
    *buf = 138543619;
    v29 = v25;
    v30 = 2049;
    v31 = v26;
    _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isAltitudeUsable,NO,received altitude is not valid,%{private}.2f", buf, 0x16u);
  }

  v27 = sub_19B87DD40();
  if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
    [a3 ellipsoidalAltitude];
LABEL_17:
    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isAltitudeUsable(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n");
    goto LABEL_28;
  }

LABEL_42:
  result = 0;
LABEL_43:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA48CA4(uint64_t a1, void *a2, int a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      *&buf[4] = a1;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,sendCachedLocation,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      LODWORD(v39) = 134283521;
      *(&v39 + 4) = a1;
      v14 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "void CLEmergencyLocationSelectorInternal::sendCachedLocation(CLEmergencyLocationUsabilityCriteria *, BOOL)", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    goto LABEL_76;
  }

  if (a2)
  {
    v6 = *(a1 + 176);
    if (v6)
    {
      if (sub_19BA48598(a1, a2, v6))
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v7 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          v8 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
          *buf = 138543362;
          *&buf[4] = v8;
          _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,sendCachedLocation,location sent to client without altitude stitching", buf, 0xCu);
        }

        v9 = sub_19B87DD40();
        if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v10 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
          LODWORD(v39) = 138543362;
          *(&v39 + 4) = v10;
          v11 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::sendCachedLocation(CLEmergencyLocationUsabilityCriteria *, BOOL)", "CoreLocation: %s\n", v11);
          if (v11 != buf)
          {
            free(v11);
          }
        }

        sub_19BA4B368(a1, *(a1 + 176));
        sub_19BA4AC60(a1, *(a1 + 176), a3);
        if ((a3 & 1) == 0)
        {
          ++*(a1 + 256);
        }

LABEL_76:
        v36 = *MEMORY[0x1E69E9840];
        return;
      }

      [*(a1 + 176) trustedTimestamp];
      v17 = v16;
      v45 = 0u;
      memset(v46, 0, 28);
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      memset(v40, 0, sizeof(v40));
      v39 = 0u;
      v18 = *(a1 + 176);
      if (v18)
      {
        [v18 clientLocation];
      }

      *&v46[1] = 0;
      *(v40 + 12) = xmmword_19BA896C0;
      if ([a2 altitudeStitchingEnabled] && (v19 = *(a1 + 184)) != 0 && sub_19BA4962C(a1, a2, v19))
      {
        [*(a1 + 184) altitude];
        *(v40 + 12) = v20;
        [*(a1 + 184) ellipsoidalAltitude];
        *&v46[1] = v21;
        [*(a1 + 184) verticalAccuracy];
        *(&v40[1] + 4) = v22;
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v23 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          v24 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
          *buf = 138543362;
          *&buf[4] = v24;
          _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,sendCachedLocation,location sent to client with altitude stitching", buf, 0xCu);
        }

        v25 = sub_19B87DD40();
        if (*(v25 + 160) <= 1 && *(v25 + 164) <= 1 && *(v25 + 168) <= 1 && !*(v25 + 152))
        {
          goto LABEL_59;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 == -1)
        {
LABEL_57:
          v29 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
          LODWORD(v37[0]) = 138543362;
          *(v37 + 4) = v29;
          v30 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::sendCachedLocation(CLEmergencyLocationUsabilityCriteria *, BOOL)", "CoreLocation: %s\n", v30);
          if (v30 != buf)
          {
            free(v30);
          }

LABEL_59:
          v31 = objc_alloc(MEMORY[0x1E6985C40]);
          v37[6] = v44;
          v37[7] = v45;
          v38[0] = v46[0];
          *(v38 + 12) = *(v46 + 12);
          v37[2] = v40[1];
          v37[3] = v41;
          v37[4] = v42;
          v37[5] = v43;
          v37[0] = v39;
          v37[1] = v40[0];
          *buf = xmmword_19BA8A740;
          v48 = 0xBFF0000000000000;
          v49 = v17;
          memcpy(v50, &unk_19BA8A760, sizeof(v50));
          v32 = [v31 initWithClientLocation:v37 clientLocationPrivate:buf];
          sub_19BA4B368(a1, v32);
          if (v32)
          {
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
            }

            v33 = qword_1ED519090;
            if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEFAULT, "#CLELS,sendCachedLocation,updating metrics", buf, 2u);
            }

            v34 = sub_19B87DD40();
            if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED519088 != -1)
              {
                dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
              }

              LOWORD(v37[0]) = 0;
              v35 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::sendCachedLocation(CLEmergencyLocationUsabilityCriteria *, BOOL)", "CoreLocation: %s\n", v35);
              if (v35 != buf)
              {
                free(v35);
              }
            }

            sub_19BA4AC60(a1, *(a1 + 176), a3);
          }

          if ((a3 & 1) == 0)
          {
            ++*(a1 + 256);
          }

          goto LABEL_76;
        }
      }

      else
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v26 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          v27 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
          *buf = 138543362;
          *&buf[4] = v27;
          _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,sendCachedLocation,location sent to client with altitude cleared", buf, 0xCu);
        }

        v28 = sub_19B87DD40();
        if (*(v28 + 160) <= 1 && *(v28 + 164) <= 1 && *(v28 + 168) <= 1 && !*(v28 + 152))
        {
          goto LABEL_59;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 == -1)
        {
          goto LABEL_57;
        }
      }

      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      goto LABEL_57;
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  sub_19BA4B368(a1, 0);
}

uint64_t sub_19BA4962C(id *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v8 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v19 = a1;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,isLocationRecentEnough,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
    {
      goto LABEL_38;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLEmergencyLocationSelectorInternal::isLocationRecentEnough(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n", v10);
    if (v10 == buf)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (!a2 || !a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v12 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      *buf = 138543362;
      v19 = v12;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,canSendLocationAtTimeout,will send nil location", buf, 0xCu);
    }

    v13 = sub_19B87DD40();
    if (*(v13 + 160) <= 1 && *(v13 + 164) <= 1 && *(v13 + 168) <= 1 && !*(v13 + 152))
    {
      goto LABEL_38;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_42;
  }

  v5 = sub_19BA4A7E8(a1, a3);
  [a2 maxUsableAge];
  if (fabs(v5) > v6)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v14 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v15 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      *buf = 138543618;
      v19 = v15;
      v20 = 2050;
      v21 = v5;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,canSendLocationAtTimeout,not sending,location too old. Age:%{public}f", buf, 0x16u);
    }

    v16 = sub_19B87DD40();
    if (*(v16 + 160) <= 1 && *(v16 + 164) <= 1 && *(v16 + 168) <= 1 && !*(v16 + 152))
    {
      goto LABEL_38;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 == -1)
    {
LABEL_36:
      +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isLocationRecentEnough(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n", v10);
      if (v10 == buf)
      {
LABEL_38:
        result = 0;
        goto LABEL_39;
      }

LABEL_37:
      free(v10);
      goto LABEL_38;
    }

LABEL_42:
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    goto LABEL_36;
  }

  result = 1;
LABEL_39:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19BA49B28(id *a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v50 = a1;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,isLocationUsableForFirstUpdate,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
    {
      goto LABEL_50;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v11 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLEmergencyLocationSelectorInternal::isLocationUsableForFirstUpdate(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n");
    goto LABEL_27;
  }

  if (!a2 || !a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v14 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v15 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      *buf = 138543362;
      v50 = v15;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,not saving,invalid parameters", buf, 0xCu);
    }

    v16 = sub_19B87DD40();
    if (*(v16 + 160) <= 1 && *(v16 + 164) <= 1 && *(v16 + 168) <= 1 && !*(v16 + 152))
    {
      goto LABEL_50;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 == -1)
    {
      goto LABEL_48;
    }

    goto LABEL_103;
  }

  [a3 horizontalAccuracy];
  if (v6 <= 0.0)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v17 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v18 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      *buf = 138543362;
      v50 = v18;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,not saving,invalid hunc", buf, 0xCu);
    }

    v19 = sub_19B87DD40();
    if (*(v19 + 160) <= 1 && *(v19 + 164) <= 1 && *(v19 + 168) <= 1 && !*(v19 + 152))
    {
      goto LABEL_50;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 == -1)
    {
      goto LABEL_48;
    }

LABEL_103:
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    goto LABEL_48;
  }

  v7 = [a3 integrity];
  if (v7 < [a2 minUsableIntegrity])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v8 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v9 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      *buf = 138543618;
      v50 = v9;
      v51 = 1026;
      LODWORD(v52) = [a3 integrity];
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,not saving,integrity too low. Integrity:%{public}d", buf, 0x12u);
    }

    v10 = sub_19B87DD40();
    if (*(v10 + 160) <= 1 && *(v10 + 164) <= 1 && *(v10 + 168) <= 1 && !*(v10 + 152))
    {
      goto LABEL_50;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
    [a3 integrity];
    v11 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isLocationUsableForFirstUpdate(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n");
LABEL_27:
    if (v11 == buf)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v22 = a1[24];
  if (!v22)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v39 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v40 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      *buf = 138543362;
      v50 = v40;
      _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,saving,haven't save first update before.", buf, 0xCu);
    }

    v41 = sub_19B87DD40();
    if (*(v41 + 160) <= 1 && *(v41 + 164) <= 1 && *(v41 + 168) <= 1 && !*(v41 + 152))
    {
      goto LABEL_87;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 == -1)
    {
      goto LABEL_85;
    }

    goto LABEL_102;
  }

  [v22 horizontalAccuracy];
  v24 = v23;
  [a3 horizontalAccuracy];
  if (v24 >= v25)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v42 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v43 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      *buf = 138543362;
      v50 = v43;
      _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,saving,better Hunc", buf, 0xCu);
    }

    v44 = sub_19B87DD40();
    if (*(v44 + 160) <= 1 && *(v44 + 164) <= 1 && *(v44 + 168) <= 1 && !*(v44 + 152))
    {
      goto LABEL_87;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 == -1)
    {
      goto LABEL_85;
    }

LABEL_102:
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    goto LABEL_85;
  }

  [a1[24] coordinate];
  v27 = v26;
  [a1[24] coordinate];
  v29 = v28;
  [a3 coordinate];
  v31 = v30;
  [a3 coordinate];
  v33 = sub_19B87E164(v27, v29, v31, v32);
  [*a1 locationUpdateDistanceMovedToSendEarly];
  if (v33 >= v34)
  {
    [a3 horizontalAccuracy];
    if (v33 >= v35)
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
      }

      v46 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v47 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
        *buf = 138543618;
        v50 = v47;
        v51 = 2050;
        v52 = v33;
        _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,saving,location changed significantly,dist,%{public}f", buf, 0x16u);
      }

      v48 = sub_19B87DD40();
      if (*(v48 + 160) <= 1 && *(v48 + 164) <= 1 && *(v48 + 168) <= 1 && !*(v48 + 152))
      {
        goto LABEL_87;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
      }

LABEL_85:
      +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      v45 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isLocationUsableForFirstUpdate(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n", v45);
      if (v45 != buf)
      {
        free(v45);
      }

LABEL_87:
      result = 1;
      goto LABEL_51;
    }
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v36 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v37 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
    *buf = 138543362;
    v50 = v37;
    _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,not saving", buf, 0xCu);
  }

  v38 = sub_19B87DD40();
  if (*(v38 + 160) <= 1 && *(v38 + 164) <= 1 && *(v38 + 168) <= 1 && !*(v38 + 152))
  {
    goto LABEL_50;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1ED519088 != -1)
  {
    goto LABEL_103;
  }

LABEL_48:
  +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
  v11 = _os_log_send_and_compose_impl();
  sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isLocationUsableForFirstUpdate(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n", v11);
  if (v11 != buf)
  {
LABEL_49:
    free(v11);
  }

LABEL_50:
  result = 0;
LABEL_51:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_19BA4A7E8(id *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v8 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v16 = a1;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,getAge,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
    {
      goto LABEL_29;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "CFTimeInterval CLEmergencyLocationSelectorInternal::getAge(CLLocation *)", "CoreLocation: %s\n", v10);
    if (v10 == buf)
    {
      goto LABEL_29;
    }

LABEL_28:
    free(v10);
LABEL_29:
    v14 = *MEMORY[0x1E69E9840];
    return 1.79769313e308;
  }

  if (!a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v12 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,getAge,invalid parameters", buf, 0xCu);
    }

    v13 = sub_19B87DD40();
    if (*(v13 + 160) <= 1 && *(v13 + 164) <= 1 && *(v13 + 168) <= 1 && !*(v13 + 152))
    {
      goto LABEL_29;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "CFTimeInterval CLEmergencyLocationSelectorInternal::getAge(CLLocation *)", "CoreLocation: %s\n", v10);
    if (v10 == buf)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [a2 timestamp];
  v6 = *MEMORY[0x1E69E9840];

  [v4 timeIntervalSinceDate:v5];
  return result;
}

uint64_t sub_19BA4ABBC(uint64_t result, double *a2, double *a3)
{
  if (result)
  {
    v5 = result;
    v12 = 0.0;
    v13 = 0.0;
    CLGetUncertaintyScaleFactors(0x5Fu, &v13, &v12);
    v6 = v13;
    [v5 horizontalAccuracy];
    *a2 = v6 * v7;
    result = [v5 verticalAccuracy];
    v8 = -1.0;
    if (v9 > 0.0)
    {
      v10 = v12;
      result = [v5 verticalAccuracy];
      v8 = v10 * v11;
    }

    *a3 = v8;
  }

  else
  {
    *a2 = -1.0;
    *a3 = -1.0;
  }

  return result;
}

void sub_19BA4AC60(uint64_t a1, void *a2, int a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#CLELS,updateSessionStats,updating metrics for first location", buf, 2u);
    }

    v6 = sub_19B87DD40();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::updateSessionStats(CLLocation *, BOOL)", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    *(a1 + 208) = 1;
    *(a1 + 224) = [a2 integrity];
    *(a1 + 212) = [a2 type];
    [a2 horizontalAccuracy];
    *(a1 + 216) = v8;
    [a2 verticalAccuracy];
    *(a1 + 220) = v9;
    *(a1 + 228) = sub_19BA4A7E8(a1, a2);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "#CLELS,updateSessionStats,updating metrics for periodic update", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v12 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::updateSessionStats(CLLocation *, BOOL)", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v13 = *(a1 + 264);
    if (v13 < 1 || (v14 = v13, [a2 horizontalAccuracy], v15 < v14))
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v16 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 264);
        [a2 horizontalAccuracy];
        *buf = 67109376;
        v35 = v17;
        v36 = 2048;
        v37 = v18;
        _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEFAULT, "#CLELS,updateSessionStats,updating HACC for periodic update,horizontalAccOfLocInBestPeriodicUpdate,%d,horizontalAccuracy,%f", buf, 0x12u);
      }

      v19 = sub_19B87DD40();
      if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v20 = *(a1 + 264);
        [a2 horizontalAccuracy];
        v21 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::updateSessionStats(CLLocation *, BOOL)", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      *(a1 + 272) = [a2 integrity];
      *(a1 + 280) = [a2 type];
      [a2 horizontalAccuracy];
      *(a1 + 264) = v22;
      *(a1 + 276) = sub_19BA4A7E8(a1, a2);
    }

    v23 = *(a1 + 268);
    if (v23 < 1 || (v24 = v23, [a2 verticalAccuracy], v25 < v24))
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v26 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(a1 + 268);
        [a2 verticalAccuracy];
        *buf = 67109376;
        v35 = v27;
        v36 = 2048;
        v37 = v28;
        _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEFAULT, "#CLELS,updateSessionStats,updating VACC for periodic update,verticalAccOfLocInBestPeriodicUpdate,%d,verticalAccuracy,%f", buf, 0x12u);
      }

      v29 = sub_19B87DD40();
      if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v30 = *(a1 + 268);
        [a2 verticalAccuracy];
        v31 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::updateSessionStats(CLLocation *, BOOL)", "CoreLocation: %s\n", v31);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      [a2 verticalAccuracy];
      *(a1 + 268) = v32;
    }

    ++*(a1 + 260);
  }

  v33 = *MEMORY[0x1E69E9840];
}

void sub_19BA4B368(uint64_t a1, void *a2)
{
  v84 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v23 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      *&buf[4] = a1;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,sendLocation,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v24 = sub_19B87DD40();
    if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
    {
      goto LABEL_56;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    LODWORD(v51[0]) = 134283521;
    *(v51 + 4) = a1;
LABEL_29:
    v27 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLEmergencyLocationSelectorInternal::sendLocation(CLLocation *)", "CoreLocation: %s\n", v27);
    if (v27 == buf)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (!*(a1 + 16))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v25 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      *&buf[4] = a1;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,sendLocation,this:%{private}p,nil fSendLocationCb,early return", buf, 0xCu);
    }

    v26 = sub_19B87DD40();
    if ((*(v26 + 160) & 0x80000000) != 0 && (*(v26 + 164) & 0x80000000) != 0 && (*(v26 + 168) & 0x80000000) != 0 && !*(v26 + 152))
    {
      goto LABEL_56;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    LODWORD(v51[0]) = 134283521;
    *(v51 + 4) = a1;
    goto LABEL_29;
  }

  *(a1 + 160) = a2;
  v4 = mach_continuous_time();
  *(a1 + 168) = sub_19B994BF4(v4);
  v5 = *(a1 + 160);
  (*(*(a1 + 16) + 16))();
  if (*(a1 + 160))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v7 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      [*(a1 + 160) coordinate];
      v9 = v8;
      [*(a1 + 160) coordinate];
      v11 = v10;
      [*(a1 + 160) horizontalAccuracy];
      v13 = v12;
      [*(a1 + 160) altitude];
      v15 = v14;
      [*(a1 + 160) ellipsoidalAltitude];
      v17 = v16;
      [*(a1 + 160) verticalAccuracy];
      v19 = v18;
      v20 = [*(a1 + 160) timestamp];
      v21 = *(a1 + 160);
      if (v21)
      {
        [v21 clientLocation];
        v22 = v81;
        v21 = *(a1 + 160);
      }

      else
      {
        v22 = 0;
        v82 = 0u;
        memset(v83, 0, sizeof(v83));
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        *buf = 0u;
      }

      LODWORD(v51[0]) = 138545667;
      *(v51 + 4) = v7;
      WORD6(v51[0]) = 2053;
      *(v51 + 14) = v9;
      WORD3(v51[1]) = 2053;
      *(&v51[1] + 1) = v11;
      LOWORD(v51[2]) = 2050;
      *(&v51[2] + 2) = v13;
      WORD5(v51[2]) = 2053;
      *(&v51[2] + 12) = v15;
      WORD2(v51[3]) = 2053;
      *(&v51[3] + 6) = v17;
      HIWORD(v51[3]) = 2050;
      *&v51[4] = v19;
      WORD4(v51[4]) = 2114;
      *(&v51[4] + 10) = v20;
      WORD1(v51[5]) = 1026;
      DWORD1(v51[5]) = v22;
      WORD4(v51[5]) = 1026;
      *(&v51[5] + 10) = [v21 integrity];
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,sendLocation,lat,%{sensitive}.7f,lon,%{sensitive}.7f,hunc,%{public}f,alt,%{sensitive}f,ellipsoidalAlt,%{sensitive}f,vunc,%{public}f,timestamp,%{public}@,locationType,%{public}d,integrity,%{public}d", v51, 0x5Eu);
    }

    v32 = sub_19B87DD40();
    if (*(v32 + 160) <= 1 && *(v32 + 164) <= 1 && *(v32 + 168) <= 1 && !*(v32 + 152))
    {
      goto LABEL_56;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v33 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
    [*(a1 + 160) coordinate];
    v35 = v34;
    [*(a1 + 160) coordinate];
    v37 = v36;
    [*(a1 + 160) horizontalAccuracy];
    v39 = v38;
    [*(a1 + 160) altitude];
    v41 = v40;
    [*(a1 + 160) ellipsoidalAltitude];
    v43 = v42;
    [*(a1 + 160) verticalAccuracy];
    v45 = v44;
    v46 = [*(a1 + 160) timestamp];
    v47 = *(a1 + 160);
    if (v47)
    {
      [v47 clientLocation];
      v48 = v52;
      v47 = *(a1 + 160);
    }

    else
    {
      v48 = 0;
      v53 = 0u;
      memset(v54, 0, sizeof(v54));
      v52 = 0u;
      memset(v51, 0, sizeof(v51));
    }

    v49 = [v47 integrity];
    v55 = 138545667;
    v56 = v33;
    v57 = 2053;
    v58 = v35;
    v59 = 2053;
    v60 = v37;
    v61 = 2050;
    v62 = v39;
    v63 = 2053;
    v64 = v41;
    v65 = 2053;
    v66 = v43;
    v67 = 2050;
    v68 = v45;
    v69 = 2114;
    v70 = v46;
    v71 = 1026;
    v72 = v48;
    v73 = 1026;
    v74 = v49;
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v28 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v29 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,sendLocation,nil location sent to client", buf, 0xCu);
    }

    v30 = sub_19B87DD40();
    if (*(v30 + 160) <= 1 && *(v30 + 164) <= 1 && *(v30 + 168) <= 1 && !*(v30 + 152))
    {
      goto LABEL_56;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v31 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
    LODWORD(v51[0]) = 138543362;
    *(v51 + 4) = v31;
  }

  v27 = _os_log_send_and_compose_impl();
  sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::sendLocation(CLLocation *)", "CoreLocation: %s\n", v27);
  if (v27 != buf)
  {
LABEL_55:
    free(v27);
  }

LABEL_56:
  v50 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19BA4BB4C()
{
  result = os_log_create("com.apple.locationd.Position", "Emergency");
  qword_1EAFE4718 = result;
  return result;
}

void sub_19BA4BB80(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19BA4BBBC(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6EDC0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

os_log_t sub_19BA4BBFC()
{
  result = os_log_create("com.apple.locationd.Position", "Gnss");
  qword_1EAFE4780 = result;
  return result;
}

uint64_t sub_19BA4BC2C(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = (a1 + 64);
  if (v2 != (a1 + 64))
  {
    do
    {
      sub_19BA4759C(a1, *(v2 + 8));
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_19B9D8CB0(*(a1 + 64));
  v7 = *(a1 + 40);
  if (v7)
  {
    sub_19B8750F8(v7);
  }

  sub_19B9D8CB0(*(a1 + 16));
  return a1;
}

uint64_t *sub_19BA4BCDC(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_19BA4C198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (a13)
  {
    sub_19B8750F8(a13);
  }

  MEMORY[0x19EAE98C0](v19, v20);
  _Unwind_Resume(a1);
}

os_log_t sub_19BA4CE24()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED519080 = result;
  return result;
}

void *sub_19BA4EBD8(void *a1)
{
  *a1 = &unk_1F0E6EE40;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, a1);
  if (*(a1 + 151) < 0)
  {
    operator delete(a1[16]);
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(a1[13]);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(a1[10]);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(a1[7]);
  }

  sub_19B93466C((a1 + 5));
  v3 = a1[4];
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  return a1;
}

uint64_t sub_19BA4EC84()
{
  v0 = objc_opt_new();
  qword_1ED519D88 = v0;

  return [v0 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
}

void sub_19BA4ECC4(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED519D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519D98))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED519DC8, &dword_19B873000);
    __cxa_guard_release(&qword_1ED519D98);
  }

  if (qword_1ED519DA0 != -1)
  {
    dispatch_once(&qword_1ED519DA0, &unk_1F0E6EE80);
  }

  if (byte_1ED519DDF < 0)
  {
    v2 = xmmword_1ED519DC8;

    sub_19B874C9C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED519DC8;
    *(a1 + 16) = unk_1ED519DD8;
  }
}

void sub_19BA4EDC4(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED519DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519DA8))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED519DE0, &dword_19B873000);
    __cxa_guard_release(&qword_1ED519DA8);
  }

  if (qword_1ED519DB0 != -1)
  {
    dispatch_once(&qword_1ED519DB0, &unk_1F0E6EEA0);
  }

  if (byte_1ED519DF7 < 0)
  {
    v2 = xmmword_1ED519DE0;

    sub_19B874C9C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED519DE0;
    *(a1 + 16) = unk_1ED519DF0;
  }
}

void sub_19BA4EEAC()
{
  v0 = MEMORY[0x1E696AEC0];
  sub_19B8759E8(v2, "mobile");
  sub_19B953254(v2, __p);
  if (v5 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  sub_19B8D7878(&xmmword_1ED519DE0, [objc_msgSend(objc_msgSend(v0 stringWithUTF8String:{v1), "stringByAppendingPathComponent:", objc_msgSend(&unk_1F0E8CCB8, "componentsJoinedByString:", @"/", "UTF8String"}]);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v3 < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_19BA4EF68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA4EF9C(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED519DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519DB8))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED519DF8, &dword_19B873000);
    __cxa_guard_release(&qword_1ED519DB8);
  }

  if (qword_1ED519DC0 != -1)
  {
    dispatch_once(&qword_1ED519DC0, &unk_1F0E6EEC0);
  }

  if (byte_1ED519E0F < 0)
  {
    v2 = xmmword_1ED519DF8;

    sub_19B874C9C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED519DF8;
    *(a1 + 16) = unk_1ED519E08;
  }
}

void sub_19BA4F084()
{
  v0 = MEMORY[0x1E696AEC0];
  sub_19B8759E8(v2, "mobile");
  sub_19B953254(v2, __p);
  if (v5 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  sub_19B8D7878(&xmmword_1ED519DF8, [objc_msgSend(objc_msgSend(v0 stringWithUTF8String:{v1), "stringByAppendingPathComponent:", objc_msgSend(&unk_1F0E8CCD0, "componentsJoinedByString:", @"/", "UTF8String"}]);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v3 < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_19BA4F140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA4F174(const void **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, std::string *a5@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  v11 = &v30;
  sub_19B8D78C0(&v30, v10 + 1);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v30.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (*(a1 + 23) >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    memmove(v11, v12, v10);
  }

  *(&v11->__r_.__value_.__l.__data_ + v10) = 47;
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, "_", 1uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (qword_1ED519D90 != -1)
  {
    dispatch_once(&qword_1ED519D90, &unk_1F0E6EE60);
  }

  sub_19B8759E8(__p, [objc_msgSend(qword_1ED519D88 stringFromDate:{a4), "UTF8String"}]);
  if ((v29 & 0x80u) == 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if ((v29 & 0x80u) == 0)
  {
    v21 = v29;
  }

  else
  {
    v21 = __p[1];
  }

  v22 = std::string::append(&v32, v20, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = *(a3 + 23);
  if (v24 >= 0)
  {
    v25 = a3;
  }

  else
  {
    v25 = *a3;
  }

  if (v24 >= 0)
  {
    v26 = *(a3 + 23);
  }

  else
  {
    v26 = *(a3 + 8);
  }

  v27 = std::string::append(&v33, v25, v26);
  *a5 = *v27;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }
}

void sub_19BA4F394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA4F410(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_19BA4EF9C(v5);
  if (v6 >= 0)
  {
    v4 = v5;
  }

  else
  {
    v4 = v5[0];
  }

  sub_19B8759E8(__p, v4);
  sub_19BA4F174(__p, a1 + 80, a1 + 104, [MEMORY[0x1E695DF00] date], a2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_19BA4F4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA4F4EC(uint64_t a1, char **a2, char *a3)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 < 0)
  {
    v3 = a2[1];
  }

  v5 = a3[23];
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v5 >= 0)
  {
    v7 = a3[23];
  }

  else
  {
    v7 = *(a3 + 1);
  }

  if (!v7)
  {
    return 1;
  }

  v8 = &v3[v4];
  if (v3 >= v7)
  {
    v12 = *v6;
    v13 = v4;
    do
    {
      v14 = &v3[-v7];
      if (v14 == -1)
      {
        break;
      }

      v15 = memchr(v13, v12, (v14 + 1));
      if (!v15)
      {
        break;
      }

      v9 = v15;
      if (!memcmp(v15, v6, v7))
      {
        return v9 != v8 && v9 == v4;
      }

      v13 = v9 + 1;
      v3 = (v8 - (v9 + 1));
    }

    while (v3 >= v7);
  }

  v9 = v8;
  return v9 != v8 && v9 == v4;
}

BOOL sub_19BA4F5B8(uint64_t a1, uint64_t *a2, char *a3)
{
  v3 = *(a2 + 23);
  v4 = a3[23];
  if (v4 >= 0)
  {
    v5 = a3[23];
  }

  else
  {
    v5 = *(a3 + 1);
  }

  if (v4 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v3 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v3 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = v7 == v5;
  v10 = v7 - v9;
  if (v7 < v9)
  {
    return 1;
  }

  if (v5)
  {
    if (v10 >= v5)
    {
      v12 = (v8 + v7);
      v13 = (v8 + v9);
      v14 = *v6;
      while (1)
      {
        v15 = v10 - v5;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        if (!memcmp(v16, v6, v5))
        {
          if (v17 == v12)
          {
            return 1;
          }

          v9 = &v17[-v8];
          return v9 != 0;
        }

        v13 = v17 + 1;
        v10 = v12 - (v17 + 1);
        if (v10 < v5)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  return v9 != 0;
}

uint64_t sub_19BA51D50(uint64_t a1, CLTripSegmentInputData *a2, void *a3, uint64_t a4)
{
  v326 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v11 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "CLTSP,null tripData", buf, 2u);
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
    {
      goto LABEL_47;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 == -1)
    {
      goto LABEL_45;
    }

    goto LABEL_506;
  }

  if (![(CLTripSegmentInputData *)a2 tripLocations])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v13 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_ERROR, "CLTSP,nil tripLocations", buf, 2u);
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) != 0 && (*(v14 + 164) & 0x80000000) != 0 && (*(v14 + 168) & 0x80000000) != 0 && !*(v14 + 152))
    {
      goto LABEL_47;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 == -1)
    {
LABEL_45:
      *v286 = 0;
      v15 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }

LABEL_47:
      v16 = 0;
      goto LABEL_128;
    }

LABEL_506:
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    goto LABEL_45;
  }

  *(a1 + 40) = [a3 shouldRecordDataInFileForReplay];
  v254 = (a1 + 40);
  *(a1 + 48) = [a3 tripSegmentRecorderLoggingDirectory];
  if ([objc_msgSend(a3 "tripSegmentRecorderLoggingDirectory")])
  {
    *(a1 + 41) = 1;
  }

  v4 = a2;
  if ([(CLTripSegmentInputData *)a2 modeOfTransport]== 1)
  {
    v4 = [[CLTripSegmentInputData alloc] initWithCommuteID:[(CLTripSegmentInputData *)a2 commuteID] tripSegmentID:[(CLTripSegmentInputData *)a2 tripSegmentID] isFinalPart:[(CLTripSegmentInputData *)a2 isFinalPart] modeOfTransport:[(CLTripSegmentInputData *)a2 modeOfTransport] tripLocations:[(CLTripSegmentInputData *)a2 tripLocations] startTripLocation:[(CLTripSegmentInputData *)a2 startTripLocation] stopTripLocation:[(CLTripSegmentInputData *)a2 stopTripLocation] inertialOdometryData:objc_alloc_init(MEMORY[0x1E695DF70])];
  }

  sub_19B98FD58(v254, v4, [-[NSArray objectAtIndexedSubscript:](-[CLTripSegmentInputData tripLocations](a2 "tripLocations")], 0);
  sub_19B8759E8(v280, [(NSString *)[(NSUUID *)[(CLTripSegmentInputData *)a2 tripSegmentID] UUIDString] UTF8String]);
  v5 = [sub_19B98FCA8(objc_msgSend(-[NSArray objectAtIndexedSubscript:](-[CLTripSegmentInputData tripLocations](a2 "tripLocations")];
  sub_19B8759E8(v278, v5);
  v6 = [sub_19B98FD00(objc_msgSend(-[NSArray objectAtIndexedSubscript:](-[CLTripSegmentInputData tripLocations](a2 "tripLocations")];
  sub_19B8759E8(__p, v6);
  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  if ((sub_19BA55AB8(qword_1EAFE5B10, v280) & 1) == 0)
  {
    sub_19BA70F8C();
  }

  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  sub_19B9F2000(qword_1EAFE5B10, v280, &v274);
  v7 = v274;
  if (!v274)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v17 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v18 = v280;
      if (v281 < 0)
      {
        v18 = v280[0];
      }

      *buf = 136446210;
      *v306 = v18;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "CLTSP,tripSegmentID,%{public}s should exist in CLTripSegmentSharedData", buf, 0xCu);
    }

    v19 = sub_19B87DD40();
    if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
    {
      goto LABEL_119;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v20 = v280;
    if (v281 < 0)
    {
      v20 = v280[0];
    }

    *v286 = 136446210;
    *&v286[4] = v20;
    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v10);
LABEL_117:
    if (v10 != buf)
    {
      free(v10);
    }

    goto LABEL_119;
  }

  v7->__r_.__value_.__s.__data_[0] = [a3 isSimulatedSparseProcessing] ^ 1;
  sub_19BA3A10C(v274, v280);
  sub_19BA3A614(v274, a2);
  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  if (sub_19B99F500(qword_1EAFE5B10, v280))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v8 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_INFO, "CLTSP,CLTripSegmentProcessor,processingTime exceeded max allowed,at the start of the processing in processData", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) <= 1 && *(v9 + 164) <= 1 && *(v9 + 168) <= 1 && !*(v9 + 152))
    {
      goto LABEL_119;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    *v286 = 0;
    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v10);
    goto LABEL_117;
  }

  v21 = [(CLTripSegmentInputData *)a2 tripSegmentID];
  v22 = [(CLTripSegmentInputData *)a2 tripLocations];
  v23 = [(CLTripSegmentInputData *)a2 modeOfTransport];
  if (![(NSArray *)v22 count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v27 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_ERROR, "CLTSP,tripLocations count zero", buf, 2u);
    }

    v28 = sub_19B87DD40();
    if ((*(v28 + 160) & 0x80000000) != 0 && (*(v28 + 164) & 0x80000000) != 0 && (*(v28 + 168) & 0x80000000) != 0 && !*(v28 + 152))
    {
      goto LABEL_105;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    *v286 = 0;
    v29 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::validateIncomingTripLocationData(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull)", "CoreLocation: %s\n", v29);
    goto LABEL_103;
  }

  if ([a3 isSimulatedSparseProcessing])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v24 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_ERROR, "CLTSP,not validating crumbs for simulated data", buf, 2u);
    }

    v25 = sub_19B87DD40();
    if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      *v286 = 0;
      LODWORD(v253) = 2;
      v26 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::validateIncomingTripLocationData(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull)", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    goto LABEL_148;
  }

  if (v23 == 1)
  {
    [a3 minDistanceBetweenODVisitsToGenerateTripSegmentMeters];
    if (v30 >= 0.0)
    {
      if ([(CLTripSegmentInputData *)a2 startTripLocation])
      {
        if ([(CLTripSegmentInputData *)a2 stopTripLocation])
        {
          [(CLTripSegmentLocation *)[(CLTripSegmentInputData *)a2 startTripLocation] distanceFromLocation:[(CLTripSegmentInputData *)a2 stopTripLocation]];
          v32 = v31;
          [a3 minDistanceBetweenODVisitsToGenerateTripSegmentMeters];
          if (v32 < v33)
          {
            if (qword_1EAFE5B00 != -1)
            {
              dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
            }

            sub_19BA56BA8(qword_1EAFE5B10, v21, 12);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
            }

            v227 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
            {
              [a3 minDistanceBetweenODVisitsToGenerateTripSegmentMeters];
              *buf = 134349312;
              *v306 = v32;
              *&v306[8] = 2050;
              *&v306[10] = v228;
              _os_log_impl(&dword_19B873000, v227, OS_LOG_TYPE_ERROR, "CLTSP,origin and destination visit are same, distance check failed,distance,%{public}.1lf,threshold,%{public}.1lf", buf, 0x16u);
            }

            v229 = sub_19B87DD40();
            if ((*(v229 + 160) & 0x80000000) != 0 && (*(v229 + 164) & 0x80000000) != 0 && (*(v229 + 168) & 0x80000000) != 0 && !*(v229 + 152))
            {
              goto LABEL_105;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
            }

            [a3 minDistanceBetweenODVisitsToGenerateTripSegmentMeters];
            *v286 = 134349312;
            *&v286[4] = v32;
            *&v286[12] = 2050;
            *&v286[14] = v230;
            v29 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::validateIncomingTripLocationData(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull)", "CoreLocation: %s\n", v29);
            goto LABEL_103;
          }
        }
      }
    }
  }

  [objc_msgSend(-[NSArray lastObject](v22 "lastObject")];
  v35 = v34;
  [a3 maxTripSegmentDurationSeconds];
  v37 = v36;
  v38 = fabs(v35);
  if (v38 > v36)
  {
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    sub_19BA56BA8(qword_1EAFE5B10, v21, 6);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v39 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349312;
      *v306 = v38;
      *&v306[8] = 2050;
      *&v306[10] = v37;
      _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_ERROR, "CLTSP,too long trip segment,%{public}.lf,seconds,maxDuration,%{public}.lf", buf, 0x16u);
    }

    v40 = sub_19B87DD40();
    if ((*(v40 + 160) & 0x80000000) != 0 && (*(v40 + 164) & 0x80000000) != 0 && (*(v40 + 168) & 0x80000000) != 0 && !*(v40 + 152))
    {
      goto LABEL_105;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    *v286 = 134349312;
    *&v286[4] = v38;
    *&v286[12] = 2050;
    *&v286[14] = v37;
    v29 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::validateIncomingTripLocationData(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull)", "CoreLocation: %s\n", v29);
LABEL_103:
    if (v29 != buf)
    {
      free(v29);
    }

LABEL_105:
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    v41 = sub_19B95D0F0(qword_1EAFE5B10, v280);
    sub_19BA566AC(a1, a2, v41);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v42 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_ERROR, "CLTSP,triplocations validation failed", buf, 2u);
    }

    v43 = sub_19B87DD40();
    if ((*(v43 + 160) & 0x80000000) != 0 && (*(v43 + 164) & 0x80000000) != 0 && (*(v43 + 168) & 0x80000000) != 0 && !*(v43 + 152))
    {
      goto LABEL_119;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    *v286 = 0;
    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v10);
    goto LABEL_117;
  }

  if (v23 != 1)
  {
    goto LABEL_148;
  }

  if ([a3 useNonGNSSFixesForRouteReconstruction])
  {
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    sub_19B9EDE20(qword_1EAFE5B10, v21, &v282);
    if (!v282)
    {
      goto LABEL_431;
    }

    v46 = v282[10];
    if (v46 < 1)
    {
      v47 = 0.0;
    }

    else
    {
      v47 = v282[138] * 100.0 / v46;
      if (v47 >= 90.0)
      {
LABEL_431:
        if (v283)
        {
          sub_19B8750F8(v283);
        }

        goto LABEL_433;
      }
    }

    if (v282[94] <= 0)
    {
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      sub_19BA56BA8(qword_1EAFE5B10, v21, 11);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v247 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        v248 = v282[94];
        *buf = 67240448;
        *v306 = v248;
        *&v306[4] = 2050;
        *&v306[6] = v47;
        _os_log_impl(&dword_19B873000, v247, OS_LOG_TYPE_ERROR, "CLTSP,wifi location availability check failed,wiFiCount,%{public}d,gpsPercentage,%{public}.1lf", buf, 0x12u);
      }

      v249 = sub_19B87DD40();
      if ((*(v249 + 160) & 0x80000000) == 0 || (*(v249 + 164) & 0x80000000) == 0 || (*(v249 + 168) & 0x80000000) == 0 || *(v249 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v250 = v282[94];
        *v286 = 67240448;
        *&v286[4] = v250;
        *&v286[8] = 2050;
        *&v286[10] = v47;
        v251 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::validateIncomingTripLocationData(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull)", "CoreLocation: %s\n", v251);
        if (v251 != buf)
        {
          free(v251);
        }
      }

      if (v283)
      {
        sub_19B8750F8(v283);
      }

      goto LABEL_105;
    }

    goto LABEL_431;
  }

LABEL_433:
  if ([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
  {
    v231 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v232 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *v306 = @"MaxCrumbSeparationInMetersForTripReconstruction";
      *&v306[8] = 1026;
      *&v306[10] = 7000;
      *&v306[14] = 1026;
      *&v306[16] = v231 != 0;
      _os_log_impl(&dword_19B873000, v232, OS_LOG_TYPE_DEFAULT, "CLTSP,userDefaults read for key,%{public}@,defaultValue,%{public}d,readValue,%{public}d", buf, 0x18u);
    }

    v233 = sub_19B87DD40();
    if (*(v233 + 160) > 1 || *(v233 + 164) > 1 || *(v233 + 168) > 1 || (*(v233 + 152) & 1) != 0)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v234 = v231 != 0;
      *v286 = 138543874;
      *&v286[4] = @"MaxCrumbSeparationInMetersForTripReconstruction";
      *&v286[12] = 1026;
      *&v286[14] = 7000;
      *&v286[18] = 1026;
      *&v286[20] = v234;
      LODWORD(v253) = 24;
      v235 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "static int CLTripSegmentUtilities::getUserDefaultsIntForKey(NSString * _Nonnull, const int)", "CoreLocation: %s\n", v235);
      if (v235 != buf)
      {
        free(v235);
      }
    }

    else
    {
      v234 = v231 != 0;
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v236 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *v306 = @"MaxCrumbSeparationInMetersForTripReconstruction";
      *&v306[8] = 1026;
      *&v306[10] = 7000;
      _os_log_impl(&dword_19B873000, v236, OS_LOG_TYPE_DEFAULT, "CLTSP,userDefaults not found for key,%{public}@,defaultValue,%{public}d", buf, 0x12u);
    }

    v237 = sub_19B87DD40();
    if (*(v237 + 160) > 1 || *(v237 + 164) > 1 || *(v237 + 168) > 1 || *(v237 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      *v286 = 138543618;
      *&v286[4] = @"MaxCrumbSeparationInMetersForTripReconstruction";
      *&v286[12] = 1026;
      *&v286[14] = 7000;
      LODWORD(v253) = 18;
      v238 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "static int CLTripSegmentUtilities::getUserDefaultsIntForKey(NSString * _Nonnull, const int)", "CoreLocation: %s\n", v238);
      if (v238 != buf)
      {
        free(v238);
      }
    }

    v234 = 7000;
  }

  v239 = 0;
  while ([(NSArray *)v22 count]- 1 > v239)
  {
    v240 = [(NSArray *)v22 objectAtIndexedSubscript:v239];
    v241 = [(NSArray *)v22 objectAtIndexedSubscript:v239 + 1];
    [v241 distanceFromLocation:v240];
    v243 = v242;
    if (v234 == 7000)
    {
      [objc_msgSend(v241 "timestamp")];
      v234 = 7000;
      if (v244 != 0.0)
      {
        if (v243 / fabs(v244) <= 22.0)
        {
          v234 = 7000;
        }

        else
        {
          v234 = 18000;
        }
      }
    }

    ++v239;
    if (v243 > v234)
    {
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      sub_19BA56BA8(qword_1EAFE5B10, v21, 10);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v245 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349312;
        *v306 = v243;
        *&v306[8] = 1026;
        *&v306[10] = v234;
        _os_log_impl(&dword_19B873000, v245, OS_LOG_TYPE_ERROR, "CLTSP,max distance between crumbs check failed,distance,%{public}.2lf,maxCrumbSeparation,%{public}d", buf, 0x12u);
      }

      v246 = sub_19B87DD40();
      if ((*(v246 + 160) & 0x80000000) == 0 || (*(v246 + 164) & 0x80000000) == 0 || (*(v246 + 168) & 0x80000000) == 0 || *(v246 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        *v286 = 134349312;
        *&v286[4] = v243;
        *&v286[12] = 1026;
        *&v286[14] = v234;
        v29 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::validateIncomingTripLocationData(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull)", "CoreLocation: %s\n", v29);
        goto LABEL_103;
      }

      goto LABEL_105;
    }
  }

LABEL_148:
  [objc_msgSend(-[NSArray lastObject](-[CLTripSegmentInputData tripLocations](a2 "tripLocations")];
  v49 = v48;
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v50 = fabs(v49);
  v51 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    if (v281 >= 0)
    {
      v52 = v280;
    }

    else
    {
      v52 = v280[0];
    }

    v53 = [(CLTripSegmentInputData *)a2 modeOfTransport];
    v54 = [(CLTripSegmentInputData *)a2 isFinalPart];
    v55 = [(NSArray *)[(CLTripSegmentInputData *)a2 tripLocations] count];
    if ([(NSArray *)[(CLTripSegmentInputData *)a2 tripLocations] count])
    {
      [objc_msgSend(-[NSArray firstObject](-[CLTripSegmentInputData tripLocations](a2 "tripLocations")];
      v57 = v56;
    }

    else
    {
      v57 = -1.0;
    }

    if ([(NSArray *)[(CLTripSegmentInputData *)a2 tripLocations] count])
    {
      [objc_msgSend(-[NSArray lastObject](-[CLTripSegmentInputData tripLocations](a2 "tripLocations")];
      v59 = v58;
    }

    else
    {
      v59 = -1.0;
    }

    v60 = [a3 isSimulatedSparseProcessing];
    v61 = v278;
    if (v279 < 0)
    {
      v61 = v278[0];
    }

    v62 = __p;
    if (v277 < 0)
    {
      v62 = __p[0];
    }

    *buf = 136448514;
    *v306 = v52;
    *&v306[8] = 1026;
    *&v306[10] = v53;
    *&v306[14] = 1026;
    *&v306[16] = v54;
    *&v306[20] = 1026;
    *v307 = v55;
    *&v307[4] = 2050;
    *&v307[6] = v57;
    *&v307[14] = 2050;
    *&v307[16] = v59;
    *&v307[24] = 1026;
    *&v307[26] = v60;
    *&v307[30] = 2082;
    *&v307[32] = v61;
    *&v307[40] = 2082;
    *&v307[42] = v62;
    *&v307[50] = 2050;
    *&v307[52] = v50;
    _os_log_impl(&dword_19B873000, v51, OS_LOG_TYPE_DEFAULT, "CLTSP,processData,input,tripSegmentID,%{public}s,modeOfTransport,%{public}d,isFinalPart,%{public}d,sparseLocationsCount,%{public}d,startTime,%{public}.1lf,endTime,%{public}.1lf,simulated,%{public}d,date,%{public}s,time,%{public}s,crumbDuration,%{public}.lf", buf, 0x56u);
  }

  v63 = sub_19B87DD40();
  if (*(v63 + 160) > 1 || *(v63 + 164) > 1 || *(v63 + 168) > 1 || *(v63 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    if (v281 >= 0)
    {
      v64 = v280;
    }

    else
    {
      v64 = v280[0];
    }

    v65 = [(CLTripSegmentInputData *)a2 modeOfTransport];
    v66 = [(CLTripSegmentInputData *)a2 isFinalPart];
    v67 = [(NSArray *)[(CLTripSegmentInputData *)a2 tripLocations] count];
    if ([(NSArray *)[(CLTripSegmentInputData *)a2 tripLocations] count])
    {
      [objc_msgSend(-[NSArray firstObject](-[CLTripSegmentInputData tripLocations](a2 "tripLocations")];
      v69 = v68;
    }

    else
    {
      v69 = -1.0;
    }

    if ([(NSArray *)[(CLTripSegmentInputData *)a2 tripLocations] count])
    {
      [objc_msgSend(-[NSArray lastObject](-[CLTripSegmentInputData tripLocations](a2 "tripLocations")];
      v71 = v70;
    }

    else
    {
      v71 = -1.0;
    }

    v72 = [a3 isSimulatedSparseProcessing];
    v73 = v278;
    if (v279 < 0)
    {
      v73 = v278[0];
    }

    v74 = __p;
    if (v277 < 0)
    {
      v74 = __p[0];
    }

    *v286 = 136448514;
    *&v286[4] = v64;
    *&v286[12] = 1026;
    *&v286[14] = v65;
    *&v286[18] = 1026;
    *&v286[20] = v66;
    *&v286[24] = 1026;
    *&v286[26] = v67;
    *&v286[30] = 2050;
    *&v286[32] = v69;
    *&v286[40] = 2050;
    *&v286[42] = v71;
    *&v286[50] = 1026;
    *&v286[52] = v72;
    *&v286[56] = 2082;
    *&v286[58] = v73;
    *&v286[66] = 2082;
    *&v286[68] = v74;
    *&v286[76] = 2050;
    *&v286[78] = v50;
    LODWORD(v253) = 86;
    v75 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v75);
    if (v75 != buf)
    {
      free(v75);
    }
  }

  if ([a3 runMapIntegrator])
  {
    v76 = [(CLTripSegmentInputData *)a2 tripLocations];
    LODWORD(v282) = 0;
    v284 = 0;
    sub_19BA70474(v76, &v282, &v284);
    v77 = v284;
    if (v284 >= 1)
    {
      v78 = 0;
      do
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v79 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
        {
          v80 = [(NSArray *)v76 count];
          *buf = 67240960;
          *v306 = v80;
          *&v306[4] = 1026;
          *&v306[6] = v282;
          *&v306[10] = 1026;
          *&v306[12] = v77;
          *&v306[16] = 1026;
          *&v306[18] = v78;
          _os_log_impl(&dword_19B873000, v79, OS_LOG_TYPE_INFO, "CLTSP,china shift,second try,locCount,%{public}d,applied,%{public}d,failed,%{public}d,iteration,%{public}d,", buf, 0x1Au);
        }

        v81 = sub_19B87DD40();
        if (*(v81 + 160) > 1 || *(v81 + 164) > 1 || *(v81 + 168) > 1 || *(v81 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
          }

          v82 = [(NSArray *)v76 count];
          *v286 = 67240960;
          *&v286[4] = v82;
          *&v286[8] = 1026;
          *&v286[10] = v282;
          *&v286[14] = 1026;
          *&v286[16] = v77;
          *&v286[20] = 1026;
          *&v286[22] = v78;
          LODWORD(v253) = 26;
          v83 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::applyChinaShiftIfRequired(NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v83);
          if (v83 != buf)
          {
            free(v83);
          }
        }

        sub_19BA70474(v76, &v282, &v284);
        v77 = v284;
        if (v284 < 1)
        {
          break;
        }
      }

      while (v78++ < 9);
    }

    v85 = v282;
    if (v282 >= 1)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v86 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        v87 = [(NSArray *)v76 count];
        *buf = 67240704;
        *v306 = v87;
        *&v306[4] = 1026;
        *&v306[6] = v85;
        *&v306[10] = 1026;
        *&v306[12] = v77;
        _os_log_impl(&dword_19B873000, v86, OS_LOG_TYPE_INFO, "CLTSP,china shift,locCount,%{public}d,shiftCount,%{public}d,failed,%{public}d", buf, 0x14u);
      }

      v88 = sub_19B87DD40();
      if (*(v88 + 160) > 1 || *(v88 + 164) > 1 || *(v88 + 168) > 1 || *(v88 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v89 = [(NSArray *)v76 count];
        *v286 = 67240704;
        *&v286[4] = v89;
        *&v286[8] = 1026;
        *&v286[10] = v85;
        *&v286[14] = 1026;
        *&v286[16] = v77;
        LODWORD(v253) = 20;
        v90 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::applyChinaShiftIfRequired(NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v90);
        if (v90 != buf)
        {
          free(v90);
        }
      }
    }

    if (v77)
    {
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      sub_19BA56BA8(qword_1EAFE5B10, [(CLTripSegmentInputData *)a2 tripSegmentID], 5);
      goto LABEL_119;
    }
  }

  v272 = 0u;
  v273 = 0u;
  v270 = 0u;
  v271 = 0u;
  v91 = [(CLTripSegmentInputData *)a2 tripLocations];
  v92 = [(NSArray *)v91 countByEnumeratingWithState:&v270 objects:v285 count:16];
  if (v92)
  {
    v259 = *v271;
    obj = v91;
    do
    {
      v93 = 0;
      v260 = v92;
      do
      {
        if (*v271 != v259)
        {
          objc_enumerationMutation(obj);
        }

        v94 = *(*(&v270 + 1) + 8 * v93);
        [v94 setLocationReconstructionType:1];
        sub_19B8759E8(v268, "SparseInput");
        v95 = [(CLTripSegmentInputData *)a2 modeOfTransport];
        if (SHIBYTE(v281) < 0)
        {
          sub_19B874C9C(__dst, v280[0], v280[1]);
        }

        else
        {
          *__dst = *v280;
          v267 = v281;
        }

        v96 = [(CLTripSegmentInputData *)a2 isFinalPart];
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v97 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
        {
          if (v269 >= 0)
          {
            v98 = v268;
          }

          else
          {
            v98 = v268[0];
          }

          [objc_msgSend(v94 "timestamp")];
          v263 = v99;
          [v94 latitude];
          v261 = v100;
          [v94 longitude];
          v102 = v101;
          [v94 altitude];
          v104 = v103;
          [v94 speed];
          v106 = v105;
          [v94 course];
          v108 = v107;
          [v94 horizontalAccuracy];
          v110 = v109;
          [v94 altitudeAccuracy];
          v112 = v111;
          [v94 speedAccuracy];
          v114 = v113;
          [v94 courseAccuracy];
          v116 = v115;
          v117 = [v94 locType];
          v118 = [v94 locTypeStart];
          v119 = [v94 locTypeStop];
          v120 = [v94 reconstructionType];
          v121 = [v94 signalEnvironmentType];
          v122 = __dst;
          if (v267 < 0)
          {
            v122 = __dst[0];
          }

          *buf = 136319747;
          *v306 = v98;
          *&v306[8] = 1026;
          *&v306[10] = v95;
          *&v306[14] = 1026;
          *&v306[16] = v96;
          *&v306[20] = 2050;
          *v307 = v263;
          *&v307[8] = 2053;
          *&v307[10] = v261;
          *&v307[18] = 2053;
          *&v307[20] = v102;
          *&v307[28] = 2050;
          *&v307[30] = v104;
          *&v307[38] = 2050;
          *&v307[40] = v106;
          *&v307[48] = 2050;
          *&v307[50] = v108;
          *&v307[58] = 2050;
          *&v307[60] = v110;
          v308 = 2050;
          v309 = v112;
          v310 = 2050;
          v311 = v114;
          v312 = 2050;
          v313 = v116;
          v314 = 1026;
          v315 = v117;
          v316 = 1026;
          v317 = v118;
          v318 = 1026;
          v319 = v119;
          v320 = 1026;
          v321 = v120;
          v322 = 1026;
          v323 = v121;
          v324 = 2082;
          v325 = v122;
          _os_log_impl(&dword_19B873000, v97, OS_LOG_TYPE_DEBUG, "CLTSP,%s,mode,%{public}d,final,%{public}d,time,%{public}.3lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,altitude,%{public}.2lf,speed,%{public}.2lf,course,%{public}.2lf,hunc,%{public}.2lf,vunc,%{public}.2lf,sunc,%{public}.7lf,cunc,%{public}.7lf,type,%{public}d,startLocType,%{public}d,endLocType,%{public}d,reconstructionType,%{public}d,sigEnv,%{public}d,id,%{public}s", buf, 0xA4u);
        }

        v123 = sub_19B87DD40();
        if (*(v123 + 160) > 1 || *(v123 + 164) > 1 || *(v123 + 168) > 1 || *(v123 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
          }

          if (v269 >= 0)
          {
            v124 = v268;
          }

          else
          {
            v124 = v268[0];
          }

          [objc_msgSend(v94 "timestamp")];
          v264 = v125;
          [v94 latitude];
          v262 = v126;
          [v94 longitude];
          v128 = v127;
          [v94 altitude];
          v130 = v129;
          [v94 speed];
          v132 = v131;
          [v94 course];
          v134 = v133;
          [v94 horizontalAccuracy];
          v136 = v135;
          [v94 altitudeAccuracy];
          v138 = v137;
          [v94 speedAccuracy];
          v140 = v139;
          [v94 courseAccuracy];
          v142 = v141;
          v143 = [v94 locType];
          v144 = [v94 locTypeStart];
          v145 = [v94 locTypeStop];
          v146 = [v94 reconstructionType];
          v147 = [v94 signalEnvironmentType];
          v148 = __dst;
          if (v267 < 0)
          {
            v148 = __dst[0];
          }

          *v286 = 136319747;
          *&v286[4] = v124;
          *&v286[12] = 1026;
          *&v286[14] = v95;
          *&v286[18] = 1026;
          *&v286[20] = v96;
          *&v286[24] = 2050;
          *&v286[26] = v264;
          *&v286[34] = 2053;
          *&v286[36] = v262;
          *&v286[44] = 2053;
          *&v286[46] = v128;
          *&v286[54] = 2050;
          *&v286[56] = v130;
          *&v286[64] = 2050;
          *&v286[66] = v132;
          *&v286[74] = 2050;
          *&v286[76] = v134;
          *&v286[84] = 2050;
          *&v286[86] = v136;
          v287 = 2050;
          v288 = v138;
          v289 = 2050;
          v290 = v140;
          v291 = 2050;
          v292 = v142;
          v293 = 1026;
          v294 = v143;
          v295 = 1026;
          v296 = v144;
          v297 = 1026;
          v298 = v145;
          v299 = 1026;
          v300 = v146;
          v301 = 1026;
          v302 = v147;
          v303 = 2082;
          v304 = v148;
          LODWORD(v253) = 164;
          v149 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "static void CLTripSegmentUtilities::logCLTripSegmentLocation(std::string, CLTripSegmentLocation * _Nonnull, CLTripSegmentModeOfTransport, std::string, BOOL)", "CoreLocation: %s\n", v149);
          if (v149 != buf)
          {
            free(v149);
          }
        }

        if (SHIBYTE(v267) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v269 < 0)
        {
          operator delete(v268[0]);
        }

        ++v93;
      }

      while (v260 != v93);
      v92 = [(NSArray *)obj countByEnumeratingWithState:&v270 objects:v285 count:16];
    }

    while (v92);
  }

  sub_19B87BBB4();
  v150 = 0x1E695D000;
  if (sub_19B93CCA4())
  {
    v151 = [(CLTripSegmentInputData *)a2 inertialOdometryData];
    memset(v286, 0, 64);
    v152 = [(NSArray *)v151 countByEnumeratingWithState:v286 objects:buf count:16];
    if (v152)
    {
      v153 = 0;
      v154 = **&v286[16];
      do
      {
        for (i = 0; i != v152; ++i)
        {
          v156 = v153;
          if (**&v286[16] != v154)
          {
            objc_enumerationMutation(v151);
          }

          v153 = *(*&v286[8] + 8 * i);
          if (v156)
          {
            [objc_msgSend(*(*&v286[8] + 8 * i) "cfAbsTimestamp")];
            v158 = v157;
            [objc_msgSend(v156 "cfAbsTimestamp")];
            if (vabdd_f64(v158, v159) > 3.0)
            {
              operator new();
            }
          }
        }

        v152 = [(NSArray *)v151 countByEnumeratingWithState:v286 objects:buf count:16];
      }

      while (v152);
    }

    v160 = objc_autoreleasePoolPush();
    v150 = 0x1E695D000uLL;
    v161 = [MEMORY[0x1E695DF70] array];
    v162 = [(CLTripSegmentInputData *)a2 tripLocations];
    memset(v286, 0, 64);
    v163 = [(NSArray *)v162 countByEnumeratingWithState:v286 objects:buf count:16];
    if (v163)
    {
      v164 = **&v286[16];
      do
      {
        for (j = 0; j != v163; ++j)
        {
          if (**&v286[16] != v164)
          {
            objc_enumerationMutation(v162);
          }

          [objc_msgSend(*(*&v286[8] + 8 * j) "timestamp")];
        }

        v163 = [(NSArray *)v162 countByEnumeratingWithState:v286 objects:buf count:16];
      }

      while (v163);
    }

    sub_19B98FD58(v254, v161, [-[NSArray objectAtIndexedSubscript:](-[CLTripSegmentInputData tripLocations](a2 "tripLocations")], 10);
    objc_autoreleasePoolPop(v160);
  }

  v166 = os_transaction_create();
  v167 = objc_alloc_init(*(v150 + 3952));
  v168 = objc_alloc_init(*(v150 + 3952));
  v169 = [(CLTripSegmentInputData *)a2 modeOfTransport];
  if (v169 != 1)
  {
    if (v169 == 2)
    {
      v252 = v168;
      if (sub_19BA58B88(a1, a3, -[CLTripSegmentInputData tripSegmentID](a2, "tripSegmentID"), -[CLTripSegmentInputData isFinalPart](a2, "isFinalPart"), -[CLTripSegmentInputData modeOfTransport](a2, "modeOfTransport"), [objc_alloc(*(v150 + 3952)) initWithArray:-[CLTripSegmentInputData tripLocations](a2 copyItems:{"tripLocations"), 1}], -[CLTripSegmentInputData inertialOdometryData](a2, "inertialOdometryData"), v167))
      {
        goto LABEL_311;
      }

      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      v173 = qword_1EAFE5B10;
      v174 = [(CLTripSegmentInputData *)a2 tripSegmentID:v168];
    }

    else
    {
      if (v169 != 3)
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v185 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          v186 = [(CLTripSegmentInputData *)a2 modeOfTransport];
          *buf = 67240192;
          *v306 = v186;
          _os_log_impl(&dword_19B873000, v185, OS_LOG_TYPE_ERROR, "CLTSP,processData,unknown modeOfTransport,%{public}d", buf, 8u);
        }

        v187 = sub_19B87DD40();
        if ((*(v187 + 160) & 0x80000000) != 0 && (*(v187 + 164) & 0x80000000) != 0 && (*(v187 + 168) & 0x80000000) != 0 && !*(v187 + 152))
        {
          goto LABEL_416;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v188 = [(CLTripSegmentInputData *)a2 modeOfTransport];
        *v286 = 67240192;
        *&v286[4] = v188;
        v189 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v189);
        if (v189 == buf)
        {
          goto LABEL_416;
        }

        goto LABEL_415;
      }

      if (sub_19BA59C3C(a3, [(CLTripSegmentInputData *)a2 tripSegmentID], [(CLTripSegmentInputData *)a2 isFinalPart], [(CLTripSegmentInputData *)a2 modeOfTransport], [(CLTripSegmentInputData *)a2 tripLocations], v167))
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v170 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v170, OS_LOG_TYPE_INFO, "CLTSP,processPedestrianOrCycling,success", buf, 2u);
        }

        v171 = sub_19B87DD40();
        if (*(v171 + 160) > 1 || *(v171 + 164) > 1 || *(v171 + 168) > 1 || *(v171 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
          }

          *v286 = 0;
          LODWORD(v253) = 2;
          v172 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v172);
          if (v172 != buf)
          {
            free(v172);
          }
        }

        goto LABEL_311;
      }

      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      v173 = qword_1EAFE5B10;
      v174 = [(CLTripSegmentInputData *)a2 tripSegmentID];
    }

    sub_19BA56BA8(v173, v174, 2);
    goto LABEL_416;
  }

  v175 = sub_19B99F158(@"UseInertialOdometryInTSP", 0);
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v176 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    *buf = 67240192;
    *v306 = v175;
    _os_log_impl(&dword_19B873000, v176, OS_LOG_TYPE_INFO, "CLTSP,UseInertialOdometryInTSP,%{public}d", buf, 8u);
  }

  v177 = sub_19B87DD40();
  if (*(v177 + 160) > 1 || *(v177 + 164) > 1 || *(v177 + 168) > 1 || *(v177 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    *v286 = 67240192;
    *&v286[4] = v175;
    LODWORD(v253) = 8;
    v178 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v178);
    if (v178 != buf)
    {
      free(v178);
    }
  }

  v179 = objc_alloc_init(*(v150 + 3952));
  if (v175 && (sub_19BA56C48([(CLTripSegmentInputData *)a2 tripLocations], [(CLTripSegmentInputData *)a2 inertialOdometryData], v179) & 1) == 0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v223 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v223, OS_LOG_TYPE_ERROR, "CLTSP,CLTripSegmentUtilities::convertInertialOdometryDataToInertialData failed", buf, 2u);
    }

    v224 = sub_19B87DD40();
    if ((*(v224 + 160) & 0x80000000) != 0 && (*(v224 + 164) & 0x80000000) != 0 && (*(v224 + 168) & 0x80000000) != 0 && !*(v224 + 152))
    {
      goto LABEL_119;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    *v286 = 0;
    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v10);
    goto LABEL_117;
  }

  v252 = v168;
  if ((sub_19BA57A90(a1, a3, -[CLTripSegmentInputData tripSegmentID](a2, "tripSegmentID"), -[CLTripSegmentInputData isFinalPart](a2, "isFinalPart"), -[CLTripSegmentInputData modeOfTransport](a2, "modeOfTransport"), [objc_alloc(*(v150 + 3952)) initWithArray:-[CLTripSegmentInputData tripLocations](a2 copyItems:{"tripLocations"), 1}], v179, v167) & 1) == 0)
  {
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    sub_19BA56BA8(qword_1EAFE5B10, [(CLTripSegmentInputData *)a2 tripSegmentID:v168], 2);

    goto LABEL_119;
  }

LABEL_311:
  if (!a4)
  {
LABEL_385:
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    v221 = sub_19BA5A7F4(qword_1EAFE5B10, v280);
    v222 = v274;
    *&v274[5].__r_.__value_.__l.__data_ = v221 + *&v274[5].__r_.__value_.__l.__data_;
    sub_19BA3BD08(v222);
    sub_19BA566AC(a1, a2, 3);
    if ([(CLTripSegmentInputData *)a2 isFinalPart])
    {
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      sub_19B9545AC(qword_1EAFE5B10, [(CLTripSegmentInputData *)a2 tripSegmentID:v252]);
    }

    v16 = 1;
    goto LABEL_120;
  }

  v180 = [-[NSArray firstObject](-[CLTripSegmentInputData tripLocations](a2 "tripLocations")];
  v181 = [-[NSArray lastObject](-[CLTripSegmentInputData tripLocations](a2 "tripLocations")];
  v182 = v181;
  if (v180 && v181)
  {
    [v181 timeIntervalSinceDate:v180];
    v184 = v183;
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v190 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v191 = [(NSArray *)[(CLTripSegmentInputData *)a2 tripLocations:v252] count];
      *buf = 67240704;
      *v306 = v180 == 0;
      *&v306[4] = 1026;
      *&v306[6] = v182 == 0;
      *&v306[10] = 2050;
      *&v306[12] = v191;
      _os_log_impl(&dword_19B873000, v190, OS_LOG_TYPE_ERROR, "CLTSP,processData,CLTripSegmentOutputData,duration cannot be set,startDate is nil,%{public}d,endDate is nil,%{public}d,tripSegmentData.tripLocations,count,%{public}lu", buf, 0x18u);
    }

    v192 = sub_19B87DD40();
    if ((*(v192 + 160) & 0x80000000) == 0 || (*(v192 + 164) & 0x80000000) == 0 || (*(v192 + 168) & 0x80000000) == 0 || (v184 = -1.0, *(v192 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v193 = [(NSArray *)[(CLTripSegmentInputData *)a2 tripLocations] count];
      *v286 = 67240704;
      *&v286[4] = v180 == 0;
      *&v286[8] = 1026;
      *&v286[10] = v182 == 0;
      *&v286[14] = 2050;
      *&v286[16] = v193;
      LODWORD(v253) = 24;
      v194 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v194);
      if (v194 != buf)
      {
        free(v194);
      }

      v184 = -1.0;
    }
  }

  v195 = sub_19BA59EC0(v167);
  if (![a3 runMapIntegrator] || (sub_19BA5A02C(-[CLTripSegmentInputData tripLocations](a2, "tripLocations"), v167) & 1) != 0)
  {
    v196 = [[CLTripSegmentOutputData alloc] initWithTripSegmentID:[(CLTripSegmentInputData *)a2 tripSegmentID] isFinalPart:[(CLTripSegmentInputData *)a2 isFinalPart] startDate:v180 endDate:v182 duration:[(CLTripSegmentInputData *)a2 modeOfTransport] modeOfTransport:v167 distance:v184 distanceUnc:v195 tripLocations:v195 * 0.05 routeRoads:v168];
    if ([(NSArray *)[(CLTripSegmentInputData *)a2 tripLocations] count]&& *v254 == 1)
    {
      sub_19B98FD58(v254, v196, [-[NSArray objectAtIndexedSubscript:](-[CLTripSegmentInputData tripLocations](a2 "tripLocations")], 4);
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v197 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      if (v281 >= 0)
      {
        v198 = v280;
      }

      else
      {
        v198 = v280[0];
      }

      v199 = [(CLTripSegmentOutputData *)v196 modeOfTransport];
      v200 = [(CLTripSegmentOutputData *)v196 isFinalPart];
      v201 = [(NSArray *)[(CLTripSegmentInputData *)a2 tripLocations] count];
      v202 = [(NSArray *)[(CLTripSegmentOutputData *)v196 tripLocations] count];
      v203 = [(NSArray *)[(CLTripSegmentOutputData *)v196 routeRoads] count];
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      v204 = sub_19BA5A7F4(qword_1EAFE5B10, v280);
      v205 = [a3 isSimulatedSparseProcessing];
      v206 = v278;
      if (v279 < 0)
      {
        v206 = v278[0];
      }

      v207 = __p;
      if (v277 < 0)
      {
        v207 = __p[0];
      }

      *buf = 136448770;
      *v306 = v198;
      *&v306[8] = 1026;
      *&v306[10] = v199;
      *&v306[14] = 1026;
      *&v306[16] = v200;
      *&v306[20] = 1026;
      *v307 = v201;
      *&v307[4] = 1026;
      *&v307[6] = v202;
      *&v307[10] = 1026;
      *&v307[12] = v203;
      *&v307[16] = 2050;
      *&v307[18] = v195;
      *&v307[26] = 2050;
      *&v307[28] = v204;
      *&v307[36] = 1026;
      *&v307[38] = v205;
      *&v307[42] = 2082;
      *&v307[44] = v206;
      *&v307[52] = 2082;
      *&v307[54] = v207;
      _os_log_impl(&dword_19B873000, v197, OS_LOG_TYPE_DEFAULT, "CLTSP,processData,output,tripSegmentID,%{public}s,modeOfTransport,%{public}d,isFinalPart,%{public}d,sparseLocationsCount,%{public}d,reconstructedLocCount,%{public}d,routeRoadsCount,%{public}d,totalDistance,%{public}.2lf,processingTimeMSec,%{public}.1lf,simulated,%{public}d,date,%{public}s,time,%{public}s", buf, 0x58u);
    }

    v208 = sub_19B87DD40();
    if (*(v208 + 160) > 1 || *(v208 + 164) > 1 || *(v208 + 168) > 1 || *(v208 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      if (v281 >= 0)
      {
        v209 = v280;
      }

      else
      {
        v209 = v280[0];
      }

      v210 = [(CLTripSegmentOutputData *)v196 modeOfTransport];
      v211 = [(CLTripSegmentOutputData *)v196 isFinalPart];
      v212 = [(NSArray *)[(CLTripSegmentInputData *)a2 tripLocations] count];
      v213 = [(NSArray *)[(CLTripSegmentOutputData *)v196 tripLocations] count];
      v214 = [(NSArray *)[(CLTripSegmentOutputData *)v196 routeRoads] count];
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      v215 = sub_19BA5A7F4(qword_1EAFE5B10, v280);
      v216 = [a3 isSimulatedSparseProcessing];
      v217 = v278;
      if (v279 < 0)
      {
        v217 = v278[0];
      }

      v218 = __p;
      if (v277 < 0)
      {
        v218 = __p[0];
      }

      *v286 = 136448770;
      *&v286[4] = v209;
      *&v286[12] = 1026;
      *&v286[14] = v210;
      *&v286[18] = 1026;
      *&v286[20] = v211;
      *&v286[24] = 1026;
      *&v286[26] = v212;
      *&v286[30] = 1026;
      *&v286[32] = v213;
      *&v286[36] = 1026;
      *&v286[38] = v214;
      *&v286[42] = 2050;
      *&v286[44] = v195;
      *&v286[52] = 2050;
      *&v286[54] = v215;
      *&v286[62] = 1026;
      *&v286[64] = v216;
      *&v286[68] = 2082;
      *&v286[70] = v217;
      *&v286[78] = 2082;
      *&v286[80] = v218;
      LODWORD(v253) = 88;
      v219 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v219);
      if (v219 != buf)
      {
        free(v219);
      }
    }

    sub_19BA3AE04(v274, v196);
    if ([(CLTripSegmentInputData *)a2 isFinalPart])
    {
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      sub_19BA56BA8(qword_1EAFE5B10, [(CLTripSegmentInputData *)a2 tripSegmentID], 3);
    }

    (*(a4 + 16))(a4, v196);
    if (([a3 isSimulatedSparseProcessing] & 1) == 0 && objc_msgSend(a3, "createSparseDataFromOneHzData"))
    {
      v220 = v196;
      sub_19BA5A8B0();
    }

    goto LABEL_385;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v225 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v225, OS_LOG_TYPE_ERROR, "CLTSP,CLTripSegmentUtilities::getCorrectedCoordinates failed", buf, 2u);
  }

  v226 = sub_19B87DD40();
  if ((*(v226 + 160) & 0x80000000) == 0 || (*(v226 + 164) & 0x80000000) == 0 || (*(v226 + 168) & 0x80000000) == 0 || *(v226 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    *v286 = 0;
    v189 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v189);
    if (v189 != buf)
    {
LABEL_415:
      free(v189);
    }
  }

LABEL_416:

LABEL_119:
  v16 = 0;
LABEL_120:
  if (v275)
  {
    sub_19B8750F8(v275);
  }

  if (v277 < 0)
  {
    operator delete(__p[0]);
  }

  if (v279 < 0)
  {
    operator delete(v278[0]);
  }

  if (SHIBYTE(v281) < 0)
  {
    operator delete(v280[0]);
  }

LABEL_128:
  v44 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_19BA5593C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, std::__shared_weak_count *a62)
{
  if (a62)
  {
    sub_19B8750F8(a62);
  }

  if (a42)
  {
    sub_19B8750F8(a42);
  }

  if (a48 < 0)
  {
    operator delete(__p);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19BA55AB8(std::mutex *a1, void **a2)
{
  std::mutex::lock(a1);
  v4 = sub_19B95D1AC(a1, a2);
  std::mutex::unlock(a1);
  return v4;
}

void sub_19BA55B10(uint64_t a1, std::string *a2, void *a3, double a4)
{
  v66 = *MEMORY[0x1E69E9840];
  std::mutex::lock(a1);
  if (*a3)
  {
    if (sub_19B95D1AC(a1, &a2->__r_.__value_.__l.__data_))
    {
      *buf = a2;
      if (*(sub_19B95D310(a1 + 64, &a2->__r_.__value_.__l.__data_) + 56))
      {
        goto LABEL_83;
      }

      v8 = *a3;
      if (*(*a3 + 24) <= 0.0)
      {
        goto LABEL_8;
      }

      v9 = *(v8 + 23);
      if (v9 < 0)
      {
        v9 = *(v8 + 8);
      }

      if (!v9)
      {
LABEL_8:
        sub_19BA7034C(v8, a2);
      }

      *buf = a2;
      v10 = sub_19B95D310(a1 + 64, &a2->__r_.__value_.__l.__data_);
      v12 = *a3;
      v11 = a3[1];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = *(v10 + 64);
      *(v10 + 56) = v12;
      *(v10 + 64) = v11;
      if (v13)
      {
        sub_19B8750F8(v13);
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
      }

      v14 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
      {
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = a2;
        }

        else
        {
          v15 = a2->__r_.__value_.__r.__words[0];
        }

        v16 = *(a1 + 80);
        *buf = 136446466;
        *&buf[4] = v15;
        *&buf[12] = 2050;
        *&buf[14] = v16;
        _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_INFO, "CLTSP,sharedData,tripData element updated pointer,tripID,%{public}s,count,%{public}lu", buf, 0x16u);
      }

      v17 = sub_19B87DD40();
      if (*(v17 + 160) <= 1 && *(v17 + 164) <= 1 && *(v17 + 168) <= 1 && !*(v17 + 152))
      {
        goto LABEL_83;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
      }

      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = a2->__r_.__value_.__r.__words[0];
      }

      v19 = *(a1 + 80);
      v60[0] = 136446466;
      *&v60[1] = v18;
      v61 = 2050;
      v62 = v19;
      v20 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentSharedData::addTrip(const std::string &, std::shared_ptr<CLTripSegmentStaticData> &, double)", "CoreLocation: %s\n", v20);
LABEL_81:
      if (v20 != buf)
      {
        free(v20);
      }

LABEL_83:
      p_data = &a2->__r_.__value_.__l.__data_;
      v36 = *(a1 + 64);
      if (v36 != (a1 + 72))
      {
        do
        {
          v37 = v36[7];
          if (v37 && vabdd_f64(CFAbsoluteTimeGetCurrent(), *(v37 + 24)) > 86400.0)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
            }

            v38 = (v36 + 4);
            v39 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
            {
              v40 = v36 + 4;
              if (*(v36 + 55) < 0)
              {
                v40 = *v38;
              }

              v41 = *(a1 + 80) - 1;
              *buf = 136446466;
              *&buf[4] = v40;
              *&buf[12] = 2050;
              *&buf[14] = v41;
              _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_INFO, "CLTSP,sharedData,tripData element erased due to timeout,tripID,%{public}s,count,%{public}lu", buf, 0x16u);
            }

            v42 = sub_19B87DD40();
            if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
              }

              v43 = v36 + 4;
              if (*(v36 + 55) < 0)
              {
                v43 = *v38;
              }

              v44 = *(a1 + 80) - 1;
              v60[0] = 136446466;
              *&v60[1] = v43;
              v61 = 2050;
              v62 = v44;
              v45 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentSharedData::addTrip(const std::string &, std::shared_ptr<CLTripSegmentStaticData> &, double)", "CoreLocation: %s\n", v45);
              if (v45 != buf)
              {
                free(v45);
              }
            }

            v46 = sub_19B8F128C((a1 + 64), v36);
            sub_19B95D52C((v36 + 4));
            operator delete(v36);
          }

          else
          {
            v47 = v36[1];
            if (v47)
            {
              do
              {
                v46 = v47;
                v47 = *v47;
              }

              while (v47);
            }

            else
            {
              do
              {
                v46 = v36[2];
                v48 = *v46 == v36;
                v36 = v46;
              }

              while (!v48);
            }
          }

          v36 = v46;
        }

        while (v46 != (a1 + 72));
      }

      if (sub_19B95D1AC(a1, p_data))
      {
        *buf = p_data;
        v49 = *(sub_19B95D310(a1 + 64, p_data) + 56);
        *(v49 + 32) = 0xBFF0000000000000;
        v50 = mach_continuous_time();
        v51 = sub_19B994BF4(v50);
        *(v49 + 32) = a4;
        *(v49 + 40) = v51;
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
        }

        v52 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v53 = *(v49 + 32);
          *buf = 134349056;
          *&buf[4] = v53;
          _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,processing time tracker started,maxAllowed,%{public}.1lf", buf, 0xCu);
        }

        v54 = sub_19B87DD40();
        if (*(v54 + 160) > 1 || *(v54 + 164) > 1 || *(v54 + 168) > 1 || *(v54 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
          }

          v55 = *(v49 + 32);
          v60[0] = 134349056;
          *&v60[1] = v55;
          v56 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker::start(const double)", "CoreLocation: %s\n", v56);
          if (v56 != buf)
          {
            free(v56);
          }
        }
      }

      sub_19B95D910(a1, p_data, 0);
      goto LABEL_123;
    }

    v28 = *a3;
    if (*(*a3 + 24) <= 0.0)
    {
      goto LABEL_52;
    }

    if ((*(v28 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v28 + 8))
      {
LABEL_52:
        sub_19BA7034C(v28, a2);
      }
    }

    else if (!*(v28 + 23))
    {
      goto LABEL_52;
    }

    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_19B874C9C(buf, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      *buf = *&a2->__r_.__value_.__l.__data_;
      *&buf[16] = *(&a2->__r_.__value_.__l + 2);
    }

    v29 = a3[1];
    v64 = *a3;
    v65 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*sub_19B95D3B8(a1 + 64, &v59, buf))
    {
      operator new();
    }

    if (v65)
    {
      sub_19B8750F8(v65);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    v30 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = a2;
      }

      else
      {
        v31 = a2->__r_.__value_.__r.__words[0];
      }

      v32 = *(a1 + 80);
      *buf = 136446466;
      *&buf[4] = v31;
      *&buf[12] = 2050;
      *&buf[14] = v32;
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_INFO, "CLTSP,sharedData,tripData element added,tripID,%{public}s,count,%{public}lu", buf, 0x16u);
    }

    v33 = sub_19B87DD40();
    if (*(v33 + 160) <= 1 && *(v33 + 164) <= 1 && *(v33 + 168) <= 1 && !*(v33 + 152))
    {
      goto LABEL_83;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = a2;
    }

    else
    {
      v34 = a2->__r_.__value_.__r.__words[0];
    }

    v35 = *(a1 + 80);
    v60[0] = 136446466;
    *&v60[1] = v34;
    v61 = 2050;
    v62 = v35;
    v20 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentSharedData::addTrip(const std::string &, std::shared_ptr<CLTripSegmentStaticData> &, double)", "CoreLocation: %s\n", v20);
    goto LABEL_81;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
  }

  v21 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = a2->__r_.__value_.__r.__words[0];
    }

    v23 = *(a1 + 80);
    *buf = 136446466;
    *&buf[4] = v22;
    *&buf[12] = 2050;
    *&buf[14] = v23;
    _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_ERROR, "CLTSP,sharedData,tripData add failed, static data pointer is null,tripID,%{public}s,count,%{public}lu", buf, 0x16u);
  }

  v24 = sub_19B87DD40();
  if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = a2;
    }

    else
    {
      v25 = a2->__r_.__value_.__r.__words[0];
    }

    v26 = *(a1 + 80);
    v60[0] = 136446466;
    *&v60[1] = v25;
    v61 = 2050;
    v62 = v26;
    v27 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLTripSegmentSharedData::addTrip(const std::string &, std::shared_ptr<CLTripSegmentStaticData> &, double)", "CoreLocation: %s\n", v27);
    if (v27 != buf)
    {
      free(v27);
    }
  }

LABEL_123:
  std::mutex::unlock(a1);
  v57 = *MEMORY[0x1E69E9840];
}

void sub_19BA566AC(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1 + 40;
  if (*(a1 + 40) == 1)
  {
    v6 = objc_autoreleasePoolPush();
    sub_19B8759E8(__p, [objc_msgSend(objc_msgSend(a2 "tripSegmentID")]);
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    sub_19B9F2000(qword_1EAFE5B10, __p, &v23);
    if (v23)
    {
      if (*v23 == 1)
      {
        if (qword_1EAFE5B00 != -1)
        {
          dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
        }

        v7 = qword_1EAFE5B10;
        std::mutex::lock(qword_1EAFE5B10);
        if (sub_19B95D1AC(v7, __p))
        {
          *buf = __p;
          v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{*(*(sub_19B95D310(&v7[1], __p) + 56) + 24)}];
        }

        else
        {
          v8 = [MEMORY[0x1E695DF00] now];
        }

        v14 = v8;
        std::mutex::unlock(v7);
        v15 = [MEMORY[0x1E695DF00] now];
        v16 = [sub_19BA3B2C4(v23) mutableCopy];
        v17 = __p;
        if (v26 < 0)
        {
          v17 = __p[0];
        }

        [v16 setValue:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithFormat:", @"%s", v17), @"tripID"}];
        [v16 setValue:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithFormat:", @"%d", objc_msgSend(a2, "isFinalPart")), @"isFinalPart"}];
        v18 = MEMORY[0x1E696AEC0];
        v19 = sub_19B98FCA8(v14);
        [v16 setValue:objc_msgSend(v18 forKey:{"stringWithFormat:", @"%@ %@", v19, sub_19B98FD00(v14)), @"processingStartTime"}];
        v20 = MEMORY[0x1E696AEC0];
        v21 = sub_19B98FCA8(v15);
        [v16 setValue:objc_msgSend(v20 forKey:{"stringWithFormat:", @"%@ %@", v21, sub_19B98FD00(v15)), @"processingEndTime"}];
        [v16 setValue:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithFormat:", @"%d", a3), @"status"}];
        sub_19B98FD58(v3, v16, [objc_msgSend(objc_msgSend(a2 "tripLocations")], 17);
      }
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v9 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = __p;
        if (v26 < 0)
        {
          v10 = __p[0];
        }

        *buf = 136446210;
        *&buf[4] = v10;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "CLTSP,recordAnalyticsInCLTSPFile,tripID,%{public}s is not in CLTripSegmentSharedData", buf, 0xCu);
      }

      v11 = sub_19B87DD40();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v12 = __p;
        if (v26 < 0)
        {
          v12 = __p[0];
        }

        v27 = 136446210;
        v28 = v12;
        v13 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentProcessor::recordAnalyticsInCLTSPFile(CLTripSegmentInputData * _Nonnull, const CLTripSegmentProcessorStatus)", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }
    }

    if (v24)
    {
      sub_19B8750F8(v24);
    }

    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    objc_autoreleasePoolPop(v6);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_19BA56B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13)
  {
    sub_19B8750F8(a13);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA56BA8(std::mutex *a1, void *a2, uint64_t a3)
{
  sub_19B8759E8(__p, [objc_msgSend(a2 "UUIDString")]);
  std::mutex::lock(a1);
  sub_19B95E280(a1, __p, a3);
  std::mutex::unlock(a1);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19BA56C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::mutex::unlock(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19BA56C48(void *a1, void *a2, void *a3)
{
  v161 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v100 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v100, OS_LOG_TYPE_ERROR, "CLTSP,convertInertialOdometryDataToInertialData,null tripLocations", buf, 2u);
    }

    v101 = sub_19B87DD40();
    if ((*(v101 + 160) & 0x80000000) != 0 && (*(v101 + 164) & 0x80000000) != 0 && (*(v101 + 168) & 0x80000000) != 0 && !*(v101 + 152))
    {
      goto LABEL_109;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LOWORD(v155) = 0;
    goto LABEL_107;
  }

  if (![a1 count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v102 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v102, OS_LOG_TYPE_ERROR, "CLTSP,convertInertialOdometryDataToInertialData,empty tripLocations", buf, 2u);
    }

    v103 = sub_19B87DD40();
    if ((*(v103 + 160) & 0x80000000) != 0 && (*(v103 + 164) & 0x80000000) != 0 && (*(v103 + 168) & 0x80000000) != 0 && !*(v103 + 152))
    {
      goto LABEL_109;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LOWORD(v155) = 0;
    goto LABEL_107;
  }

  if (!a2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v104 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v104, OS_LOG_TYPE_ERROR, "CLTSP,convertInertialOdometryDataToInertialData,null inertialOdometryDataArray", buf, 2u);
    }

    v105 = sub_19B87DD40();
    if ((*(v105 + 160) & 0x80000000) != 0 && (*(v105 + 164) & 0x80000000) != 0 && (*(v105 + 168) & 0x80000000) != 0 && !*(v105 + 152))
    {
      goto LABEL_109;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LOWORD(v155) = 0;
    goto LABEL_107;
  }

  if (![a2 count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v106 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v106, OS_LOG_TYPE_ERROR, "CLTSP,convertInertialOdometryDataToInertialData,empty inertialOdometryDataArray", buf, 2u);
    }

    v107 = sub_19B87DD40();
    if ((*(v107 + 160) & 0x80000000) != 0 && (*(v107 + 164) & 0x80000000) != 0 && (*(v107 + 168) & 0x80000000) != 0 && !*(v107 + 152))
    {
      goto LABEL_109;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LOWORD(v155) = 0;
    goto LABEL_107;
  }

  if (!a3)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v108 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v108, OS_LOG_TYPE_ERROR, "CLTSP,convertInertialOdometryDataToInertialData,null inertialDataArray", buf, 2u);
    }

    v109 = sub_19B87DD40();
    if ((*(v109 + 160) & 0x80000000) != 0 && (*(v109 + 164) & 0x80000000) != 0 && (*(v109 + 168) & 0x80000000) != 0 && !*(v109 + 152))
    {
      goto LABEL_109;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LOWORD(v155) = 0;
LABEL_107:
    v110 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "static BOOL CLTripSegmentUtilities::convertInertialOdometryDataToInertialData(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableArray<CLTripSegmentInertialData *> * _Nonnull)", "CoreLocation: %s\n", v110);
    if (v110 != buf)
    {
      free(v110);
    }

LABEL_109:
    result = 0;
    goto LABEL_110;
  }

  v146 = a1;
  v6 = [objc_msgSend(a2 "firstObject")];
  [v6 X];
  v150 = v7;
  [v6 X];
  v149 = v8;
  [v6 Y];
  v148 = v9;
  [v6 Y];
  v147 = v10;
  v11 = [objc_msgSend(a2 "firstObject")];
  [v11 Y];
  v13 = v12;
  [v11 Y];
  v15 = v14;
  [v11 Z];
  v17 = v16;
  [v11 Z];
  v19 = v18;
  [v11 X];
  v21 = v20;
  [v11 Y];
  v23 = v22;
  [v11 W];
  v25 = v24;
  [v11 Z];
  v27 = v26;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v28 = [a2 countByEnumeratingWithState:&v151 objects:v159 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = atan2(v25 * v27 + v21 * v23 + v25 * v27 + v21 * v23, (v17 * v19 + v13 * v15) * -2.0 + 1.0);
    v31 = sqrt(v148 * v147 + v150 * v149);
    v32 = *v152;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        v34 = v30;
        if (*v152 != v32)
        {
          objc_enumerationMutation(a2);
        }

        v35 = *(*(&v151 + 1) + 8 * i);
        [objc_msgSend(v35 "deltaVelocity_mps")];
        v37 = v36;
        [objc_msgSend(v35 "deltaVelocity_mps")];
        v39 = v38;
        [objc_msgSend(v35 "deltaVelocity_mps")];
        v41 = v40;
        [objc_msgSend(v35 "deltaVelocity_mps")];
        v43 = sqrt(v41 * v42 + v37 * v39);
        [objc_msgSend(v35 "deltaVelocity_mps")];
        v45 = v44;
        [v6 X];
        v47 = v46;
        [objc_msgSend(v35 "deltaVelocity_mps")];
        v49 = v48;
        [v6 Y];
        v51 = v49 * v50 + v45 * v47;
        if (v31 > 0.0 && v51 < 0.0)
        {
          v31 = -v43;
        }

        else
        {
          v31 = v43;
        }

        v6 = [v35 deltaVelocity_mps];
        [objc_msgSend(v35 "quaternion")];
        v54 = v53;
        [objc_msgSend(v35 "quaternion")];
        v56 = v55;
        [objc_msgSend(v35 "quaternion")];
        v58 = v57;
        [objc_msgSend(v35 "quaternion")];
        v60 = (v58 * v59 + v54 * v56) * -2.0 + 1.0;
        [objc_msgSend(v35 "quaternion")];
        v62 = v61;
        [objc_msgSend(v35 "quaternion")];
        v64 = v63;
        [objc_msgSend(v35 "quaternion")];
        v66 = v65;
        [objc_msgSend(v35 "quaternion")];
        v30 = atan2(v66 * v67 + v62 * v64 + v66 * v67 + v62 * v64, v60);
        fmod((v30 - v34) * -57.2957795, 360.0);
        v68 = [CLTripSegmentInertialData alloc];
        v69 = [v35 cfAbsTimestamp];
        [v35 sampleInterval_s];
        [a3 addObject:{-[CLTripSegmentInertialData initWithTime:dataPeriodSec:deltaCourseRad:deltaSpeedMps:deltaCourseVarRad2:deltaSpeedVarMps2:deltaCourseSpeedCovarRadMps:](v68, "initWithTime:dataPeriodSec:deltaCourseRad:deltaSpeedMps:deltaCourseVarRad2:deltaSpeedVarMps2:deltaCourseSpeedCovarRadMps:", v69)}];
      }

      v29 = [a2 countByEnumeratingWithState:&v151 objects:v159 count:16];
    }

    while (v29);
  }

  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v70 = [v146 countByEnumeratingWithState:&v155 objects:buf count:16];
  if (v70)
  {
    v71 = v70;
    v72 = 0;
    v73 = *v156;
LABEL_21:
    v74 = 0;
    while (1)
    {
      if (*v156 != v73)
      {
        objc_enumerationMutation(v146);
      }

      v75 = *(*(&v155 + 1) + 8 * v74);
      if (![v75 isGPSLocationType])
      {
        goto LABEL_32;
      }

      if (![v75 isSpeedValid])
      {
        goto LABEL_32;
      }

      [v75 speed];
      if (fabs(v76) <= 0.001)
      {
        goto LABEL_32;
      }

      if (!v72)
      {
        goto LABEL_31;
      }

      [objc_msgSend(v72 "timestamp")];
      v78 = v77;
      [objc_msgSend(v75 "timestamp")];
      v80 = v79;
      v81 = v79 - v78;
      if (v81 > 4.0)
      {
        break;
      }

LABEL_32:
      if (v71 == ++v74)
      {
        v71 = [v146 countByEnumeratingWithState:&v155 objects:buf count:16];
        if (v71)
        {
          goto LABEL_21;
        }

        goto LABEL_34;
      }
    }

    if (v81 < 10.0)
    {
      [v75 speed];
      v83 = v82;
      [v72 speed];
      if (vabdd_f64(v83, v84) > 0.001)
      {
        [v72 speed];
        v131 = v130;
        [v75 speed];
        v133 = v132;
        if ([a3 count])
        {
          v134 = 0;
          v135 = v131;
          do
          {
            [objc_msgSend(objc_msgSend(a3 objectAtIndexedSubscript:{v134), "timestamp"), "timeIntervalSinceReferenceDate"}];
            if (v136 >= v78)
            {
              [objc_msgSend(objc_msgSend(a3 objectAtIndexedSubscript:{v134), "timestamp"), "timeIntervalSinceReferenceDate"}];
              if (v137 <= v80)
              {
                [objc_msgSend(a3 objectAtIndexedSubscript:{v134), "deltaSpeed_mps"}];
                v131 = v131 + v138;
                [objc_msgSend(a3 objectAtIndexedSubscript:{v134), "deltaSpeed_mps"}];
                v135 = v135 - v139;
              }
            }

            ++v134;
          }

          while ([a3 count] > v134);
        }

        else
        {
          v135 = v131;
        }

        v141 = vabdd_f64(v135, v133);
        if (v141 < 4.0 && v141 < vabdd_f64(v131, v133))
        {
          goto LABEL_144;
        }

        goto LABEL_148;
      }
    }

LABEL_31:
    v72 = v75;
    goto LABEL_32;
  }

LABEL_34:
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v85 = [v146 countByEnumeratingWithState:&v155 objects:buf count:16];
  if (!v85)
  {
LABEL_47:
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v94 = [v146 countByEnumeratingWithState:&v155 objects:buf count:16];
    if (v94)
    {
      v95 = v94;
      v96 = *v156;
LABEL_49:
      v97 = 0;
      while (1)
      {
        if (*v156 != v96)
        {
          objc_enumerationMutation(v146);
        }

        v98 = *(*(&v155 + 1) + 8 * v97);
        if ([v98 isSpeedValid])
        {
          [v98 speed];
          if (fabs(v99) <= 0.001)
          {
            break;
          }
        }

        if (v95 == ++v97)
        {
          v95 = [v146 countByEnumeratingWithState:&v155 objects:buf count:16];
          if (v95)
          {
            goto LABEL_49;
          }

          goto LABEL_148;
        }
      }

      [objc_msgSend(v98 "timestamp")];
      v114 = v113;
      if ([a3 count])
      {
        v115 = 0;
        while (1)
        {
          [objc_msgSend(objc_msgSend(a3 objectAtIndexedSubscript:{v115), "timestamp"), "timeIntervalSinceReferenceDate"}];
          if (v116 >= v114)
          {
            break;
          }

          if ([a3 count] <= ++v115)
          {
            goto LABEL_115;
          }
        }

        if (!v115)
        {
          goto LABEL_148;
        }

        v117 = v115 - 1;
      }

      else
      {
LABEL_115:
        v117 = 0;
      }

      [objc_msgSend(a3 objectAtIndexedSubscript:{v117), "deltaSpeed_mps"}];
      if (v140 > 0.0)
      {
        goto LABEL_144;
      }
    }

    goto LABEL_148;
  }

  v86 = v85;
  v87 = 0;
  v88 = *v156;
LABEL_36:
  v89 = 0;
  while (1)
  {
    v90 = v87;
    if (*v156 != v88)
    {
      objc_enumerationMutation(v146);
    }

    v87 = *(*(&v155 + 1) + 8 * v89);
    if (v90)
    {
      if ([v90 isGPSLocationType])
      {
        if ([v87 isGPSLocationType])
        {
          if ([v90 isSpeedValid])
          {
            if ([v87 isSpeedValid])
            {
              [v90 speed];
              v92 = v91;
              [v87 speed];
              if (vabdd_f64(v92, v93) >= 2.0)
              {
                break;
              }
            }
          }
        }
      }
    }

    if (v86 == ++v89)
    {
      v86 = [v146 countByEnumeratingWithState:&v155 objects:buf count:16];
      if (v86)
      {
        goto LABEL_36;
      }

      goto LABEL_47;
    }
  }

  [objc_msgSend(v90 "timestamp")];
  v119 = v118;
  [objc_msgSend(v87 "timestamp")];
  v121 = v120;
  [v90 speed];
  v123 = v122;
  [v87 speed];
  v125 = v124;
  if (![a3 count])
  {
    goto LABEL_148;
  }

  v126 = 0;
  while (1)
  {
    [objc_msgSend(objc_msgSend(a3 objectAtIndexedSubscript:{v126), "timestamp"), "timeIntervalSinceReferenceDate"}];
    if (v127 >= v119)
    {
      [objc_msgSend(objc_msgSend(a3 objectAtIndexedSubscript:{v126), "timestamp"), "timeIntervalSinceReferenceDate"}];
      if (v128 <= v121)
      {
        break;
      }
    }

    ++v126;
    v129 = [a3 count];
    result = 1;
    if (v129 <= v126)
    {
      goto LABEL_110;
    }
  }

  [objc_msgSend(a3 objectAtIndexedSubscript:{v126), "deltaSpeed_mps"}];
  if (v123 < v125 != v142 <= 0.0)
  {
    goto LABEL_148;
  }

LABEL_144:
  if ([a3 count])
  {
    v143 = 0;
    do
    {
      [objc_msgSend(a3 objectAtIndexedSubscript:{v143), "deltaSpeed_mps"}];
      [objc_msgSend(a3 objectAtIndexedSubscript:{v143++), "setDeltaSpeed_mps:", -v144}];
      v145 = [a3 count];
      result = 1;
    }

    while (v145 > v143);
  }

  else
  {
LABEL_148:
    result = 1;
  }

LABEL_110:
  v112 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19BA57A90(uint64_t a1, void *a2, void *a3, unsigned int a4, unint64_t a5, void *a6, void *a7, void *a8)
{
  v93 = *MEMORY[0x1E69E9840];
  v70[0] = 0xBFF0000000000000;
  v70[1] = 0;
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([a6 count])
  {
    v14 = 0;
    do
    {
      if (sub_19B99F5B0(v70, a6, v14, 1, 1.5, 45.0, 25.0))
      {
        [v13 addObject:{objc_msgSend(a6, "objectAtIndexedSubscript:", v14)}];
      }

      ++v14;
    }

    while ([a6 count] > v14);
  }

  if (![v13 count])
  {
    goto LABEL_59;
  }

  v61 = [objc_msgSend(v13 objectAtIndexedSubscript:{0), "timestamp"}];
  if (a8 && v13)
  {
    [a8 removeAllObjects];
    [a8 addObjectsFromArray:v13];
  }

  if (![a2 runInertialIntegrator])
  {
    goto LABEL_42;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (![a7 count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v17 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      v18 = [objc_msgSend(a3 "UUIDString")];
      *buf = 136446210;
      *&v74 = v18;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEBUG, "CLTSP,II,inertial integrator failed as there is no inertial data available,%{public}s", buf, 0xCu);
    }

    v19 = sub_19B87DD40();
    if (*(v19 + 160) <= 1 && *(v19 + 164) <= 1 && *(v19 + 168) <= 1 && !*(v19 + 152))
    {
      goto LABEL_42;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v20 = [objc_msgSend(a3 "UUIDString")];
    v83 = 136446210;
    *&v84 = v20;
    v21 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::runInertialIntegrator(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v21);
    goto LABEL_40;
  }

  [v15 removeAllObjects];
  LOBYTE(v71) = 0;
  if (!sub_19B8F5DAC(&v71, a3, a4, a5, v13, a7, v15))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v22 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      v23 = [v15 count];
      v24 = [objc_msgSend(a3 "UUIDString")];
      *buf = 67240450;
      LODWORD(v74) = v23;
      WORD2(v74) = 2082;
      *(&v74 + 6) = v24;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEBUG, "CLTSP,II,inertial integrator failed to compute locations,count,%{public}d,tripSegmentID,%{public}s,fallback to input location array", buf, 0x12u);
    }

    v25 = sub_19B87DD40();
    if (*(v25 + 160) <= 1 && *(v25 + 164) <= 1 && *(v25 + 168) <= 1 && !*(v25 + 152))
    {
      goto LABEL_42;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v26 = [v15 count];
    v27 = [objc_msgSend(a3 "UUIDString")];
    v83 = 67240450;
    LODWORD(v84) = v26;
    WORD2(v84) = 2082;
    *(&v84 + 6) = v27;
    v21 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::runInertialIntegrator(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v21);
LABEL_40:
    if (v21 != buf)
    {
      free(v21);
    }

LABEL_42:
    v62 = 0;
    goto LABEL_43;
  }

  sub_19B98FD58(a1 + 40, v15, v61, 1);
  v16 = a8 == 0;
  if (!v15)
  {
    v16 = 1;
  }

  if (!v16)
  {
    [a8 removeAllObjects];
    [a8 addObjectsFromArray:v15];
  }

  v62 = 1;
LABEL_43:
  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  if (sub_19B9EDDA0(qword_1EAFE5B10, a3))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    v28 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_INFO, "CLTSP,CLTripSegmentProcessor,processingTime exceeded max allowed,after runInertialIntegrator", buf, 2u);
    }

    v29 = sub_19B87DD40();
    if (*(v29 + 160) <= 1 && *(v29 + 164) <= 1 && *(v29 + 168) <= 1 && !*(v29 + 152))
    {
      goto LABEL_59;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    LOWORD(v83) = 0;
    v30 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processVehicularData(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v30);
LABEL_57:
    if (v30 != buf)
    {
      free(v30);
    }

LABEL_59:
    v31 = 0;
    goto LABEL_60;
  }

  if (![a2 runLinearInterpolator])
  {
    v48 = 0;
    v34 = a8;
    goto LABEL_95;
  }

  if (![v13 count])
  {
    goto LABEL_75;
  }

  v34 = v13;
  if ([a8 count])
  {
    [objc_msgSend(objc_msgSend(a8 "firstObject")];
    v36 = v35;
    [objc_msgSend(objc_msgSend(a8 "lastObject")];
    v38 = v37;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v39 = [v13 countByEnumeratingWithState:&v66 objects:v72 count:16];
    if (v39)
    {
      v40 = 0;
      v41 = v36 + -0.5;
      v42 = v38 + 0.5;
      v43 = *v67;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v67 != v43)
          {
            objc_enumerationMutation(v13);
          }

          v45 = *(*(&v66 + 1) + 8 * i);
          [objc_msgSend(v45 "timestamp")];
          if (v46 >= v41)
          {
            if (v46 > v42)
            {
              [a8 addObject:v45];
            }
          }

          else
          {
            [a8 insertObject:v45 atIndex:v40++];
          }
        }

        v39 = [v13 countByEnumeratingWithState:&v66 objects:v72 count:16];
      }

      while (v39);
    }

LABEL_75:
    v34 = a8;
  }

  v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v48 = sub_19BA59C3C(a2, a3, a4, a5, v34, v47);
  if (v48)
  {
    sub_19B98FD58(a1 + 40, v47, v61, 2);
    if (v34)
    {
      if (v47)
      {
        [v34 removeAllObjects];
        [v34 addObjectsFromArray:v47];
      }
    }
  }

  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  if (sub_19B9EDDA0(qword_1EAFE5B10, a3))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    v49 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_INFO, "CLTSP,CLTripSegmentProcessor,processingTime exceeded max allowed,after runLinearInterpolator", buf, 2u);
    }

    v50 = sub_19B87DD40();
    if (*(v50 + 160) <= 1 && *(v50 + 164) <= 1 && *(v50 + 168) <= 1 && !*(v50 + 152))
    {
      goto LABEL_59;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    LOWORD(v83) = 0;
    v30 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processVehicularData(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v30);
    goto LABEL_57;
  }

LABEL_95:
  if ([a2 runMapIntegrator])
  {
    v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sub_19BA5BA90(a1, a2, a3, a5, a4, v13, v34);
  }

  v31 = v62 | v48;
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v52 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    v53 = [a2 runLinearInterpolator];
    v54 = [a2 runInertialIntegrator];
    v55 = [a2 runMapIntegrator];
    *buf = 67241728;
    LODWORD(v74) = v62 | v48;
    WORD2(v74) = 1026;
    *(&v74 + 6) = v53;
    WORD5(v74) = 1026;
    HIDWORD(v74) = v54;
    v75 = 1026;
    v76 = v55;
    v77 = 1026;
    v78 = v48;
    v79 = 1026;
    v80 = v62;
    v81 = 1026;
    v82 = 0;
    _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_INFO, "CLTSP,processVehicularData,success,%{public}d,liEnabled,%{public}d,iiEnabled,%{public}d,miEnabled,%{public}d,liSuccess,%{public}d,iiSuccess,%{public}d,miSuccess,%{public}d", buf, 0x2Cu);
  }

  v56 = sub_19B87DD40();
  if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v57 = [a2 runLinearInterpolator];
    v58 = [a2 runInertialIntegrator];
    v59 = [a2 runMapIntegrator];
    v83 = 67241728;
    LODWORD(v84) = v62 | v48;
    WORD2(v84) = 1026;
    *(&v84 + 6) = v57;
    WORD5(v84) = 1026;
    HIDWORD(v84) = v58;
    v85 = 1026;
    v86 = v59;
    v87 = 1026;
    v88 = v48;
    v89 = 1026;
    v90 = v62;
    v91 = 1026;
    v92 = 0;
    v60 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processVehicularData(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v60);
    if (v60 != buf)
    {
      free(v60);
    }
  }

LABEL_60:
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t sub_19BA58B88(uint64_t a1, void *a2, void *a3, unsigned int a4, unint64_t a5, void *a6, void *a7, void *a8)
{
  v132 = *MEMORY[0x1E69E9840];
  if (![a6 count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v36 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_ERROR, "CLTSP,processPedestrianData,empty tripLocations", buf, 2u);
    }

    v37 = sub_19B87DD40();
    if ((*(v37 + 160) & 0x80000000) != 0 && (*(v37 + 164) & 0x80000000) != 0 && (*(v37 + 168) & 0x80000000) != 0 && !*(v37 + 152))
    {
      goto LABEL_113;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LOWORD(v84) = 0;
    v38 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processPedestrianData(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v38);
    goto LABEL_111;
  }

  v71 = a5;
  v72 = a4;
  v73 = a1;
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v16 = [a6 countByEnumeratingWithState:&v80 objects:v92 count:16];
  if (v16)
  {
    v17 = *v81;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v81 != v17)
        {
          objc_enumerationMutation(a6);
        }

        v19 = *(*(&v80 + 1) + 8 * i);
        if ([a2 useNonGNSSFixesForRouteReconstruction] & 1) != 0 || (objc_msgSend(v19, "isGPSLocationType"))
        {
          if (![a2 runLocationOutlierRejector] || (objc_msgSend(v19, "horizontalAccuracy"), v20 >= 0.0) && (objc_msgSend(v19, "horizontalAccuracy"), v21 <= 100.0))
          {
            [v15 addObject:v19];
          }
        }

        else
        {
          [v19 isWiFiLocationType];
        }
      }

      v16 = [a6 countByEnumeratingWithState:&v80 objects:v92 count:16];
    }

    while (v16);
  }

  if (![v15 count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v39 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_ERROR, "CLTSP,processPedestrianData,GPS crumbs not available", buf, 2u);
    }

    v40 = sub_19B87DD40();
    if ((*(v40 + 160) & 0x80000000) != 0 && (*(v40 + 164) & 0x80000000) != 0 && (*(v40 + 168) & 0x80000000) != 0 && !*(v40 + 152))
    {
      goto LABEL_113;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LOWORD(v84) = 0;
    v38 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processPedestrianData(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v38);
    goto LABEL_111;
  }

  v70 = [objc_msgSend(v15 objectAtIndexedSubscript:{0), "timestamp"}];
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v79 = -1.0;
  if (![a2 runInertialIntegrator])
  {
    v33 = 0;
    v35 = v15;
    if (!a8)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  v85 = 0uLL;
  v84 = xmmword_19BA89490;
  v86 = 0x3FF0000000000000;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0x3FE8000000000000;
  v91 = 240;
  if ([a2 windowSizeForLocationOutlierRejector] && objc_msgSend(a2, "stepSizeForLocationOutlierRejector"))
  {
    v23 = [a2 windowSizeForLocationOutlierRejector];
    v91 = v23;
    v24 = [a2 stepSizeForLocationOutlierRejector];
    v25 = 1.0;
    if (v24 <= v23)
    {
      v26 = v91;
      v25 = (v26 / [a2 stepSizeForLocationOutlierRejector]);
    }

    v90 = *&v25;
  }

  v27 = [MEMORY[0x1E696AD50] indexSet];
  memset(v77, 0, sizeof(v77));
  v78 = 1065353216;
  memset(v75, 0, sizeof(v75));
  v76 = 1065353216;
  if (![a2 runLocationOutlierRejector] || (sub_19BA73D60(&v84, v15, a7, v27, v77, v75, objc_msgSend(a2, "isWatch")) & 1) == 0)
  {
    [v27 removeAllIndexes];
    [v27 addIndexesInRange:{0, objc_msgSend(v15, "count")}];
    sub_19BA71388(v77);
    sub_19BA71388(v75);
  }

  *buf = 0;
  buf[2] = 1;
  *&v95[16] = 0u;
  *v95 = xmmword_19BA89490;
  v96 = 0x3FF0000000000000;
  v97 = 0u;
  v98 = 0;
  v99 = 0xBFF0000000000000;
  v100 = 0u;
  v101 = 0x100000000;
  __asm { FMOV            V1.2D, #-1.0 }

  v102 = _Q1;
  v103 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v113[32] = 0;
  v113[40] = 0;
  v113[48] = 0;
  v113[56] = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  memset(v113, 0, 26);
  v114 = 0x3FF0000000000000;
  v118 = 0;
  v119 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0;
  v120 = 0;
  v121 = 0x10000000000000;
  v122 = 0u;
  v123 = 0;
  v124 = xmmword_19BA89490;
  v125 = 0u;
  v126 = 0x3FF0000000000000;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 5;
  v131 = 1000;
  v33 = sub_19B9D3938(buf, [v15 objectsAtIndexes:v27], a7, v22, &v79, objc_msgSend(a2, "runLocationOutlierRejector"), objc_msgSend(a2, "enableUseWifiInPTS"), v77, v75);
  if (v33)
  {
    sub_19B98FD58(v73 + 40, v22, v70, 1);
    if ([v22 count])
    {
      [objc_msgSend(v22 objectAtIndexedSubscript:{0), "horizontalAccuracy"}];
      if (v34 == -1.0)
      {
        [objc_msgSend(v22 objectAtIndexedSubscript:{0), "setHorizontalAccuracy:", 100.0}];
      }
    }
  }

  if (*(&v128 + 1))
  {
    *&v129 = *(&v128 + 1);
    operator delete(*(&v128 + 1));
  }

  if (v127)
  {
    *(&v127 + 1) = v127;
    operator delete(v127);
  }

  if (v122)
  {
    *(&v122 + 1) = v122;
    operator delete(v122);
  }

  if (v104)
  {
    *(&v104 + 1) = v104;
    operator delete(v104);
  }

  sub_19B94FA90(v75);
  sub_19B94FA90(v77);
  if (v33)
  {
    v35 = v22;
  }

  else
  {
    v35 = v15;
  }

  if (a8)
  {
LABEL_64:
    if (v35)
    {
      [a8 removeAllObjects];
      [a8 addObjectsFromArray:v35];
    }
  }

LABEL_66:
  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  if (sub_19B9EDDA0(qword_1EAFE5B10, a3))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    v41 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_INFO, "CLTSP,CLTripSegmentProcessor,processingTime exceeded max allowed,after PTS", buf, 2u);
    }

    v42 = sub_19B87DD40();
    if (*(v42 + 160) <= 1 && *(v42 + 164) <= 1 && *(v42 + 168) <= 1 && !*(v42 + 152))
    {
      goto LABEL_113;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_78;
    }

LABEL_155:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
LABEL_78:
    LOWORD(v84) = 0;
    v38 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processPedestrianData(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v38);
LABEL_111:
    if (v38 != buf)
    {
      free(v38);
    }

LABEL_113:
    v49 = 0;
    goto LABEL_114;
  }

  if ([a2 runLinearInterpolator] && (v43 = objc_alloc_init(MEMORY[0x1E695DF70]), sub_19BA59C3C(a2, a3, v72, v71, a8, v43)))
  {
    sub_19B98FD58(v73 + 40, v43, v70, 2);
    v44 = a8 == 0;
    if (!v43)
    {
      v44 = 1;
    }

    if (!v44)
    {
      [a8 removeAllObjects];
      [a8 addObjectsFromArray:v43];
    }

    v69 = 1;
  }

  else
  {
    v69 = 0;
  }

  if (![a8 count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v47 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240448;
      v94 = v69;
      *v95 = 1026;
      *&v95[2] = v33;
      _os_log_impl(&dword_19B873000, v47, OS_LOG_TYPE_ERROR, "CLTSP,processPedestrianData,empty reconstructed locations,liSuccess,%{public}d,iiSuccess,%{public}d", buf, 0xEu);
    }

    v48 = sub_19B87DD40();
    if ((*(v48 + 160) & 0x80000000) != 0 && (*(v48 + 164) & 0x80000000) != 0 && (*(v48 + 168) & 0x80000000) != 0 && !*(v48 + 152))
    {
      goto LABEL_113;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LODWORD(v84) = 67240448;
    DWORD1(v84) = v69;
    WORD4(v84) = 1026;
    *(&v84 + 10) = v33;
    v38 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processPedestrianData(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v38);
    goto LABEL_111;
  }

  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  if (sub_19B9EDDA0(qword_1EAFE5B10, a3))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    v45 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_INFO, "CLTSP,CLTripSegmentProcessor,processingTime exceeded max allowed,after LI", buf, 2u);
    }

    v46 = sub_19B87DD40();
    if (*(v46 + 160) <= 1 && *(v46 + 164) <= 1 && *(v46 + 168) <= 1 && !*(v46 + 152))
    {
      goto LABEL_113;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_78;
    }

    goto LABEL_155;
  }

  if ([a2 runMapIntegrator])
  {
    v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sub_19BA5BA90(v73, a2, a3, v71, v72, v15, a8);
  }

  if (v33)
  {
    LOBYTE(v53) = 1;
  }

  else
  {
    v53 = [a2 runInertialIntegrator] ^ 1;
  }

  if (v69)
  {
    LOBYTE(v54) = 1;
  }

  else
  {
    v54 = [a2 runLinearInterpolator] ^ 1;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v49 = v53 | v54;
  v55 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    v56 = [a2 runInertialIntegrator];
    v57 = [a2 runLinearInterpolator];
    v58 = [a2 runMapIntegrator];
    *buf = 67241728;
    v94 = v49 & 1;
    *v95 = 1026;
    *&v95[2] = v56;
    *&v95[6] = 1026;
    *&v95[8] = v57;
    *&v95[12] = 1026;
    *&v95[14] = v58;
    *&v95[18] = 1026;
    *&v95[20] = v69;
    *&v95[24] = 1026;
    *&v95[26] = v33;
    *&v95[30] = 1026;
    LODWORD(v96) = 0;
    _os_log_impl(&dword_19B873000, v55, OS_LOG_TYPE_INFO, "CLTSP,processPedestrianData,success,%{public}d,iiEnabled,%{public}d,liEnabled,%{public}d,miEnabled,%{public}d,liSuccess,%{public}d,iiSuccess,%{public}d,miSuccess,%{public}d", buf, 0x2Cu);
  }

  v59 = sub_19B87DD40();
  if (*(v59 + 160) > 1 || *(v59 + 164) > 1 || *(v59 + 168) > 1 || *(v59 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v60 = [a2 runInertialIntegrator];
    v61 = [a2 runLinearInterpolator];
    v62 = [a2 runMapIntegrator];
    LODWORD(v84) = 67241728;
    DWORD1(v84) = v49 & 1;
    WORD4(v84) = 1026;
    *(&v84 + 10) = v60;
    HIWORD(v84) = 1026;
    LODWORD(v85) = v61;
    WORD2(v85) = 1026;
    *(&v85 + 6) = v62;
    WORD5(v85) = 1026;
    HIDWORD(v85) = v69;
    LOWORD(v86) = 1026;
    *(&v86 + 2) = v33;
    HIWORD(v86) = 1026;
    LODWORD(v87) = 0;
    v63 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processPedestrianData(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v63);
    if (v63 != buf)
    {
      free(v63);
    }
  }

  if ([a8 count])
  {
    v64 = 0;
    while (1)
    {
      [objc_msgSend(objc_msgSend(a8 objectAtIndexedSubscript:{v64), "timestamp"), "timeIntervalSinceReferenceDate"}];
      if (v65 >= v79 + -0.5)
      {
        break;
      }

      if (++v64 >= [a8 count])
      {
        goto LABEL_114;
      }
    }

    LODWORD(v66) = v64 - 1;
    if (v64 - 1 < 0 || (v66 = v66, [a8 count] - 1 < v66) || !objc_msgSend(objc_msgSend(a8, "objectAtIndexedSubscript:", v66), "isMapMatched"))
    {
LABEL_149:
      v66 = v64;
      if (v64)
      {
LABEL_150:
        [a8 removeObjectsInRange:{0, v66}];
      }
    }

    else
    {
      while (v66 > 0)
      {
        v67 = v66 - 1;
        if ([a8 count] - 1 < (v66 - 1))
        {
          goto LABEL_150;
        }

        if (![objc_msgSend(a8 objectAtIndexedSubscript:{--v66), "isMapMatched"}])
        {
          v64 = v67 + 1;
          goto LABEL_149;
        }
      }
    }
  }

LABEL_114:
  v50 = *MEMORY[0x1E69E9840];
  return v49 & 1;
}

void sub_19BA59C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_19B94FA90(va);
  sub_19B94FA90(va1);
  _Unwind_Resume(a1);
}

BOOL sub_19BA59C3C(void *a1, void *a2, int a3, unint64_t a4, void *a5, void *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  [a6 removeAllObjects];
  v24 = 0;
  v25 = 0;
  v23 = xmmword_19BA89490;
  v26 = 0x3FF0000000000000;
  [a1 timeBetweenReconstructedPointsSeconds];
  v13 = sub_19B9E0A5C(v12, &v23, a2, a3, a4, a5, a6);
  if (!v13)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v14 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      v15 = [a6 count];
      v16 = [objc_msgSend(a2 "UUIDString")];
      *buf = 67240450;
      v32 = v15;
      v33 = 2082;
      v34 = v16;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEBUG, "CLTSP,LI,linear interpolator failed to compute locations,count,%{public}d,tripSegmentID,%{public}s,fallback to location array before interpolation", buf, 0x12u);
    }

    v17 = sub_19B87DD40();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v18 = [a6 count];
      v19 = [objc_msgSend(a2 "UUIDString")];
      v27 = 67240450;
      v28 = v18;
      v29 = 2082;
      v30 = v19;
      v20 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::runLinearInterpolator(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v13;
}

double sub_19BA59EC0(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v21;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        v8 = v4;
        if (*v21 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v4 = *(*(&v20 + 1) + 8 * i);
        if (v8)
        {
          if (v4)
          {
            [v8 latitude];
            v19 = v9;
            [v8 longitude];
            v18 = v10;
            if (sub_19B8FCE64(&v19, &v18))
            {
              [v4 latitude];
              v17 = v11;
              [v4 longitude];
              v16 = v12;
              if (sub_19B8FCE64(&v17, &v16))
              {
                [v4 distanceFromLocation:v8];
                v6 = v6 + v13;
              }
            }
          }
        }
      }

      v3 = [a1 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v3);
  }

  else
  {
    v6 = 0.0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_19BA5A02C(void *a1, void *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  if ([a1 count])
  {
    v55 = 0;
    v56 = 0;
    v57 = 0x3FF0000000000000;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = xmmword_19BA89490;
    v4 = [a2 countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (!v4)
    {
      goto LABEL_23;
    }

    v6 = v4;
    v7 = *v51;
    v8 = -1;
LABEL_4:
    v9 = 0;
    while (1)
    {
      if (*v51 != v7)
      {
        objc_enumerationMutation(a2);
      }

      v10 = *(*(&v50 + 1) + 8 * v9);
      if (v10)
      {
        if ([*(*(&v50 + 1) + 8 * v9) referenceFrame] != 1)
        {
          break;
        }
      }

LABEL_21:
      if (++v9 == v6)
      {
        v6 = [a2 countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (!v6)
        {
LABEL_23:
          v33 = 1;
          goto LABEL_75;
        }

        goto LABEL_4;
      }
    }

    [objc_msgSend(v10 "timestamp")];
    v12 = v11;
    for (i = v8 & ~(v8 >> 31); [a1 count] > i; ++i)
    {
      if ([a1 objectAtIndexedSubscript:i])
      {
        if ((v8 & 0x80000000) == 0)
        {
          [objc_msgSend(objc_msgSend(a1 objectAtIndexedSubscript:{i), "timestamp"), "timeIntervalSinceReferenceDate"}];
          if (v14 > v12)
          {
            goto LABEL_18;
          }
        }

        if ([objc_msgSend(a1 objectAtIndexedSubscript:{i), "rawReferenceFrame"}] == 1)
        {
          v8 = i;
        }
      }
    }

    if (v8 != -1)
    {
LABEL_18:
      v15 = [a1 objectAtIndexedSubscript:v8];
      if (v15)
      {
        v16 = v15;
        [v10 latitude];
        v49 = v17;
        [v10 longitude];
        v48 = v18;
        [v16 rawLatitude];
        v20 = v19;
        [v16 rawLongitude];
        v22 = v21;
        [v16 latitude];
        v24 = v23;
        [v16 longitude];
        v26 = v25;
        [v10 latitude];
        v28 = v27;
        [v10 longitude];
        if (sub_19B949720(&v54, &v49, &v48, v20, v22, v24, v26, v28, v29))
        {
          v31 = v48;
          v30 = v49;
          [v10 horizontalAccuracy];
          [v10 updateLatitude:objc_msgSend(v16 longitude:"rawReferenceFrame") horizontalAccuracy:v30 referenceFrame:{v31, v32}];
          goto LABEL_21;
        }

        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v40 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          v62 = v12;
          _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_ERROR, "CLTSP,getCorrectedCoordinates,corrected computation failed for time,%{public}.1lf", buf, 0xCu);
        }

        v41 = sub_19B87DD40();
        if ((*(v41 + 160) & 0x80000000) != 0 && (*(v41 + 164) & 0x80000000) != 0 && (*(v41 + 168) & 0x80000000) != 0 && !*(v41 + 152))
        {
          goto LABEL_59;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v58 = 134349056;
        v59 = v12;
      }

      else
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v38 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          v62 = v12;
          _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "CLTSP,getCorrectedCoordinates,tripLoc is nil,%{public}.1lf", buf, 0xCu);
        }

        v39 = sub_19B87DD40();
        if ((*(v39 + 160) & 0x80000000) != 0 && (*(v39 + 164) & 0x80000000) != 0 && (*(v39 + 168) & 0x80000000) != 0)
        {
          v33 = *(v39 + 152);
          if (!v33)
          {
            goto LABEL_60;
          }
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v58 = 134349056;
        v59 = v12;
      }

      v42 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "static BOOL CLTripSegmentUtilities::getCorrectedCoordinates(NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v42);
      if (v42 != buf)
      {
        free(v42);
      }

LABEL_59:
      v33 = 0;
LABEL_60:
      v5 = 0;
      goto LABEL_75;
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v43 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v62 = v12;
      _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_INFO, "CLTSP,getCorrectedCoordinates,raw coordinate not available,%{public}.1lf", buf, 0xCu);
    }

    v44 = sub_19B87DD40();
    if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || (v33 = *(v44 + 152)) != 0)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v58 = 134349056;
      v59 = v12;
      v45 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::getCorrectedCoordinates(NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v45);
      if (v45 != buf)
      {
        free(v45);
      }

      v33 = 0;
    }

    v5 = 1;
LABEL_75:
    v36 = v33 | v5;
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v34 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_INFO, "CLTSP,getCorrectedCoordinates,empty locations", buf, 2u);
    }

    v35 = sub_19B87DD40();
    if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || (v36 = *(v35 + 152)) != 0)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      LOWORD(v54) = 0;
      v37 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::getCorrectedCoordinates(NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v37);
      if (v37 != buf)
      {
        free(v37);
      }

      v36 = 0;
    }
  }

  v46 = *MEMORY[0x1E69E9840];
  return v36 & 1;
}

double sub_19BA5A7F4(std::mutex *a1, void **a2)
{
  std::mutex::lock(a1);
  v4 = -1.0;
  if (sub_19B95D1AC(a1, a2))
  {
    v5 = *(sub_19B95D310(&a1[1], a2) + 56);
    v4 = 0.0;
    if (*(v5 + 40) >= 0.0)
    {
      v6 = mach_continuous_time();
      v4 = vabdd_f64(sub_19B994BF4(v6), *(v5 + 40)) * 1000.0;
    }
  }

  std::mutex::unlock(a1);
  return v4;
}

void sub_19BA5A8B0()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v108 = *MEMORY[0x1E69E9840];
  sub_19B87BBB4();
  if (!sub_19B93CCA4() || ([v5 isSimulatedSparseProcessing] & 1) != 0 || !objc_msgSend(v5, "createSparseDataFromOneHzData") || objc_msgSend(v4, "modeOfTransport") != 1)
  {
    goto LABEL_130;
  }

  v75 = xmmword_19BA8D9D0;
  v76 = 0x4014000000000000;
  v77 = 6;
  v78 = xmmword_19BA8D9E0;
  v79 = xmmword_19BA8D9F0;
  v80 = xmmword_19BA8DA00;
  v81 = 0x40A4DBA81D58E98ELL;
  v82 = 0x500000001;
  v83 = xmmword_19BA8DA10;
  v84 = xmmword_19BA8DA20;
  v85 = 0x3EE2DC32341A0960;
  v86 = 0u;
  v87 = 0u;
  v89 = 0u;
  v90 = 0u;
  v88 = 0;
  v91 = 0;
  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  sub_19B9EDE20(qword_1EAFE5B10, [v4 tripSegmentID], &v73);
  v6 = v73;
  if (!v73)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v21 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      sub_19B8759E8(buf, [objc_msgSend(objc_msgSend(v4 "tripSegmentID")]);
      v22 = buf[5] >= 0 ? buf : *buf;
      *v96 = 136446210;
      *&v96[4] = v22;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEFAULT, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,tripID,%{public}s is not in CLTripSegmentSharedData", v96, 0xCu);
      if (SHIBYTE(buf[5]) < 0)
      {
        operator delete(*buf);
      }
    }

    v23 = sub_19B87DD40();
    if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      sub_19B8759E8(v96, [objc_msgSend(objc_msgSend(v4 "tripSegmentID")]);
      if (v97[9] >= 0)
      {
        v24 = v96;
      }

      else
      {
        v24 = *v96;
      }

      *v104 = 136446210;
      *&v104[4] = v24;
      v25 = _os_log_send_and_compose_impl();
      if ((v97[9] & 0x80000000) != 0)
      {
        operator delete(*v96);
      }

      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::convert1HzDataToSparseAndComputeRouteMatchKPI(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull, CLTripSegmentOutputData * _Nonnull)", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    goto LABEL_128;
  }

  *(v73 + 304) = -1;
  v7 = *(v6 + 40);
  if (v7 >= 1)
  {
    v8 = *(v6 + 552) * 100.0;
    v9 = v7;
    if (qword_1EAFE46B8 != -1)
    {
      v65 = v7;
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      v9 = v65;
    }

    v10 = qword_1EAFE46E8;
    v11 = v8 / v9;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      v12 = *(v73 + 40);
      v13 = *(v73 + 552);
      buf[0] = 67240704;
      buf[1] = v12;
      LOWORD(buf[2]) = 1026;
      *(&buf[2] + 2) = v13;
      HIWORD(buf[3]) = 2050;
      *&buf[4] = v11;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_INFO, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,1,duration,%{public}d,numberOfGPSLocations,%{public}d,gpsPercentage,%{public}.2lf", buf, 0x18u);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v15 = *(v73 + 40);
      v16 = *(v73 + 552);
      *v96 = 67240704;
      *&v96[4] = v15;
      *&v96[8] = 1026;
      *&v96[10] = v16;
      *v97 = 2050;
      *&v97[2] = v11;
      v17 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::convert1HzDataToSparseAndComputeRouteMatchKPI(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull, CLTripSegmentOutputData * _Nonnull)", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    if (v11 >= 75.0)
    {
      v18 = *(v73 + 40);
      v19 = *(v73 + 288);
      if (v19 == 1)
      {
        v20 = 1;
      }

      else if (v19 == 2)
      {
        v20 = [v4 isFinalPart];
      }

      else
      {
        v20 = 0;
      }

      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      sub_19BA5DBE4(&v71, qword_1EAFE5B10, [v4 tripSegmentID]);
      v26 = v71;
      if (((v18 < 1800) & v20) != 0)
      {
        if (!v71 || *v71 <= 0)
        {
          if (*(v73 + 288) >= 2)
          {
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
            }

            v27 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
            {
              sub_19B8759E8(v96, [objc_msgSend(objc_msgSend(v4 "tripSegmentID")]);
              v28 = v97[9] >= 0 ? v96 : *v96;
              v29 = *(v73 + 40);
              v30 = *(v73 + 288);
              buf[0] = 136446722;
              *&buf[1] = v28;
              LOWORD(buf[3]) = 1026;
              *(&buf[3] + 2) = v29;
              HIWORD(buf[4]) = 1026;
              buf[5] = v30;
              _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_DEFAULT, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,tripID,%{public}s,chunk of previously skipped trip,duration,%{public}d,chunks,%{public}d", buf, 0x18u);
              if ((v97[9] & 0x80000000) != 0)
              {
                operator delete(*v96);
              }
            }

            v31 = sub_19B87DD40();
            if (*(v31 + 160) <= 1 && *(v31 + 164) <= 1 && *(v31 + 168) <= 1 && !*(v31 + 152))
            {
              goto LABEL_126;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
            }

            sub_19B8759E8(v104, [objc_msgSend(objc_msgSend(v4 "tripSegmentID")]);
            if (v107 >= 0)
            {
              v32 = v104;
            }

            else
            {
              v32 = *v104;
            }

            v33 = *(v73 + 40);
            v34 = *(v73 + 288);
            *v96 = 136446722;
            *&v96[4] = v32;
            *&v96[12] = 1026;
            *v97 = v33;
            *&v97[4] = 1026;
            *&v97[6] = v34;
            v35 = _os_log_send_and_compose_impl();
            if (v107 < 0)
            {
              operator delete(*v104);
            }

            goto LABEL_93;
          }

          sub_19BA32500(v96);
          v45 = MEMORY[0x19EAE97B0](v96);
          buf[0] = v45;
          for (i = 1; i != 624; ++i)
          {
            v45 = i + 1812433253 * (v45 ^ (v45 >> 30));
            buf[i] = v45;
          }

          v103 = 0;
          std::random_device::~random_device(v96);
          v70 = 0xA00000001;
          v47 = sub_19BA714F0(buf, &v70);
          if (v47 != 1)
          {
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
            }

            v61 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
            {
              sub_19B8759E8(v96, [objc_msgSend(objc_msgSend(v4 "tripSegmentID")]);
              v62 = v97[9] >= 0 ? v96 : *v96;
              *v104 = 136446466;
              *&v104[4] = v62;
              v105 = 1026;
              v106 = v47;
              _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_DEFAULT, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,tripID,%{public}s,processing rate limited,generatedNumber,%{public}d", v104, 0x12u);
              if ((v97[9] & 0x80000000) != 0)
              {
                operator delete(*v96);
              }
            }

            v63 = sub_19B87DD40();
            if (*(v63 + 160) <= 1 && *(v63 + 164) <= 1 && *(v63 + 168) <= 1 && !*(v63 + 152))
            {
              goto LABEL_126;
            }

            bzero(v96, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
            }

            sub_19B8759E8(v104, [objc_msgSend(objc_msgSend(v4 "tripSegmentID")]);
            if (v107 >= 0)
            {
              v64 = v104;
            }

            else
            {
              v64 = *v104;
            }

            v92 = 136446466;
            v93 = v64;
            v94 = 1026;
            v95 = v47;
            v35 = _os_log_send_and_compose_impl();
            if (v107 < 0)
            {
              operator delete(*v104);
            }

            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::convert1HzDataToSparseAndComputeRouteMatchKPI(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull, CLTripSegmentOutputData * _Nonnull)", "CoreLocation: %s\n", v35);
            v44 = v96;
            goto LABEL_94;
          }
        }

        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3321888768;
        v66[2] = sub_19BA5DEE4;
        v66[3] = &unk_1F0E6EF10;
        v66[6] = v26;
        v67 = v72;
        if (v72)
        {
          atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v66[4] = v4;
        v66[5] = v2;
        v68 = v73;
        v69 = v74;
        if (v74)
        {
          atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v48 = objc_autoreleasePoolPush();
        v49 = [v5 copy];
        [v49 setSimulatedSparseProcessing:1];
        [v49 setCreateSparseDataFromOneHzData:0];
        v50 = [objc_msgSend(objc_msgSend(objc_msgSend(v4 "tripSegmentID")];
        if ([v50 count] < 3)
        {
          v51 = objc_alloc_init(MEMORY[0x1E696AFB0]);
        }

        else
        {
          if ([objc_msgSend(v50 objectAtIndexedSubscript:{1), "length"}] == 4)
          {
            [v50 setObject:objc_msgSend(@"00" atIndexedSubscript:{"stringByAppendingString:", objc_msgSend(objc_msgSend(v50, "objectAtIndexedSubscript:", 1), "substringFromIndex:", 2)), 1}];
          }

          v51 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{objc_msgSend(v50, "componentsJoinedByString:", @"-"}];
        }

        v52 = v51;
        *v96 = [MEMORY[0x1E695DF70] array];
        sub_19BA31B74(&v75, [v4 tripLocations], v96, 1);
        if ([*v96 count])
        {
          v53 = [CLTripSegmentInputData alloc];
          v54 = [v4 isFinalPart];
          v55 = [v4 modeOfTransport];
          v56 = -[CLTripSegmentInputData initWithTripSegmentID:isFinalPart:modeOfTransport:tripLocations:startTripLocation:stopTripLocation:inertialOdometryData:](v53, "initWithTripSegmentID:isFinalPart:modeOfTransport:tripLocations:startTripLocation:stopTripLocation:inertialOdometryData:", v52, v54, v55, *v96, [v4 startTripLocation], objc_msgSend(v4, "stopTripLocation"), objc_msgSend(v4, "inertialOdometryData"));
          v99 = 0;
          *&buf[4] = 0;
          *buf = xmmword_19BA89490;
          v100 = 0x3FF0000000000000;
          v101 = 1;
          v102 = @"/var/mobile/Library/Caches/com.apple.routined/tripSegments/";
          sub_19BA51D50(buf, v56, v49, v66);
        }

        else
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
          }

          v57 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_19B873000, v57, OS_LOG_TYPE_DEFAULT, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,zero crumbs simulated", buf, 2u);
          }

          v58 = sub_19B87DD40();
          if (*(v58 + 160) > 1 || *(v58 + 164) > 1 || *(v58 + 168) > 1 || *(v58 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
            }

            *v104 = 0;
            v59 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::convert1HzDataToSparseAndComputeRouteMatchKPI(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull, CLTripSegmentOutputData * _Nonnull)", "CoreLocation: %s\n", v59);
            if (v59 != buf)
            {
              free(v59);
            }
          }
        }

        objc_autoreleasePoolPop(v48);
        if (v69)
        {
          sub_19B8750F8(v69);
        }

        if (v67)
        {
          sub_19B8750F8(v67);
        }

        goto LABEL_126;
      }

      *(v71 + 80) = 0;
      v26[3] = 0u;
      v26[4] = 0u;
      v26[1] = 0u;
      v26[2] = 0u;
      *v26 = 0u;
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v36 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        sub_19B8759E8(v96, [objc_msgSend(objc_msgSend(v4 "tripSegmentID")]);
        v37 = v97[9] >= 0 ? v96 : *v96;
        v38 = *(v73 + 40);
        v39 = *(v73 + 288);
        buf[0] = 136446722;
        *&buf[1] = v37;
        LOWORD(buf[3]) = 1026;
        *(&buf[3] + 2) = v38;
        HIWORD(buf[4]) = 1026;
        buf[5] = v39;
        _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEFAULT, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,tripID,%{public}s,trip duration check failed,duration,%{public}d,chunkCount,%{public}d", buf, 0x18u);
        if ((v97[9] & 0x80000000) != 0)
        {
          operator delete(*v96);
        }
      }

      v40 = sub_19B87DD40();
      if (*(v40 + 160) <= 1 && *(v40 + 164) <= 1 && *(v40 + 168) <= 1 && !*(v40 + 152))
      {
        goto LABEL_126;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      sub_19B8759E8(v104, [objc_msgSend(objc_msgSend(v4 "tripSegmentID")]);
      if (v107 >= 0)
      {
        v41 = v104;
      }

      else
      {
        v41 = *v104;
      }

      v42 = *(v73 + 40);
      v43 = *(v73 + 288);
      *v96 = 136446722;
      *&v96[4] = v41;
      *&v96[12] = 1026;
      *v97 = v42;
      *&v97[4] = 1026;
      *&v97[6] = v43;
      v35 = _os_log_send_and_compose_impl();
      if (v107 < 0)
      {
        operator delete(*v104);
      }

LABEL_93:
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::convert1HzDataToSparseAndComputeRouteMatchKPI(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull, CLTripSegmentOutputData * _Nonnull)", "CoreLocation: %s\n", v35);
      v44 = buf;
LABEL_94:
      if (v35 != v44)
      {
        free(v35);
      }

LABEL_126:
      if (v72)
      {
        sub_19B8750F8(v72);
      }
    }
  }

LABEL_128:
  if (v74)
  {
    sub_19B8750F8(v74);
  }

LABEL_130:
  v60 = *MEMORY[0x1E69E9840];
}

void sub_19BA5B9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, std::random_device a59)
{
  if (a24)
  {
    sub_19B8750F8(a24);
  }

  if (a26)
  {
    sub_19B8750F8(a26);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA5BA90(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v122 = *MEMORY[0x1E69E9840];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v8 = [a6 countByEnumeratingWithState:&v86 objects:&__p count:16];
  if (v8)
  {
    v9 = *v87;
    do
    {
      v10 = 0;
      do
      {
        if (*v87 != v9)
        {
          objc_enumerationMutation(a6);
        }

        v11 = *(*(&v86 + 1) + 8 * v10);
        if ([v11 isWiFiLocationType])
        {
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v12 = [a7 countByEnumeratingWithState:&v82 objects:&v102 count:16];
          if (v12)
          {
            v13 = *v83;
            v14 = -1.0;
            v15 = -1.0;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v83 != v13)
                {
                  objc_enumerationMutation(a7);
                }

                v17 = *(*(&v82 + 1) + 8 * i);
                [objc_msgSend(v17 "timestamp")];
                v19 = fabs(v18);
                if (v15 < 0.0 || v19 < v15 && v14 >= 0.0)
                {
                  [v17 course];
                  v14 = v20;
                  [v17 courseAccuracy];
                  v15 = v19;
                }

                if (v15 == 0.0 || v15 > 0.0 && v19 > v15)
                {
                  if (v15 < 2.0 && v14 >= 0.0)
                  {
                    if (qword_1EAFE46B8 != -1)
                    {
                      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
                    }

                    v21 = qword_1EAFE46E8;
                    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                    {
                      [objc_msgSend(v17 "timestamp")];
                      v23 = v22;
                      [v17 latitude];
                      v25 = v24;
                      [v17 longitude];
                      v27 = v26;
                      [v17 horizontalAccuracy];
                      v29 = v28;
                      [v17 speed];
                      v31 = v30;
                      [v17 course];
                      LODWORD(buf.__r_.__value_.__l.__data_) = 134350593;
                      *(buf.__r_.__value_.__r.__words + 4) = v23;
                      WORD2(buf.__r_.__value_.__r.__words[1]) = 2053;
                      *(&buf.__r_.__value_.__r.__words[1] + 6) = v25;
                      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2053;
                      v113 = v27;
                      v114 = 2050;
                      v115 = v29;
                      v116 = 2050;
                      v117 = v31;
                      v118 = 2050;
                      v119 = v32;
                      v120 = 2050;
                      v121 = v14;
                      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEBUG, "CLTSP,wifiCourseFromInertial,course updated using inertial,time,%{public}.2lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,hunc,%{public}.3lf,speed,%{public}.3lf,prevCourse,%{public}.3lf,newCourse,%{public}.3lf", &buf, 0x48u);
                    }

                    v33 = sub_19B87DD40();
                    if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
                    {
                      bzero(&buf, 0x65CuLL);
                      if (qword_1EAFE46B8 != -1)
                      {
                        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
                      }

                      [objc_msgSend(v17 "timestamp")];
                      v35 = v34;
                      [v17 latitude];
                      v37 = v36;
                      [v17 longitude];
                      v39 = v38;
                      [v17 horizontalAccuracy];
                      v41 = v40;
                      [v17 speed];
                      v43 = v42;
                      [v17 course];
                      *v91 = 134350593;
                      *&v91[4] = v35;
                      *&v91[12] = 2053;
                      *&v91[14] = v37;
                      v92 = 2053;
                      v93 = v39;
                      v94 = 2050;
                      v95 = v41;
                      v96 = 2050;
                      v97 = v43;
                      v98 = 2050;
                      v99 = v44;
                      v100 = 2050;
                      v101 = v14;
                      v45 = _os_log_send_and_compose_impl();
                      sub_19B885924("Generic", 1, 0, 2, "static void CLTripSegmentUtilities::setCourseForWiFiLocationsUsingInertialReconstructedLocations(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v45);
                      if (v45 != &buf)
                      {
                        free(v45);
                      }
                    }

                    [v11 updateCourse:v14 andCourseAccuracy:10.0];
                  }

                  goto LABEL_37;
                }
              }

              v12 = [a7 countByEnumeratingWithState:&v82 objects:&v102 count:16];
            }

            while (v12);
          }
        }

LABEL_37:
        ++v10;
      }

      while (v10 != v8);
      v8 = [a6 countByEnumeratingWithState:&v86 objects:&__p count:16];
    }

    while (v8);
  }

  *&v91[8] = 0;
  *v91 = 0;
  if (a4 != 1)
  {
LABEL_62:
    sub_19B87BBB4();
    if (sub_19B93CCA4())
    {
      v52 = sub_19B99F158(@"DeriveCrumbsFromUpsampledLocationsForCLTSP", 1);
      [a2 useXPCServiceForVehicularAStarSearch];
      [a2 setUseXPCServiceForVehicularAStarSearch:{sub_19B99F158(@"UseXPCServiceForVehicularAStarSearch", v53 != 0.0)}];
    }

    else
    {
      v52 = 1;
    }

    v54 = [MEMORY[0x1E695DF70] array];
    if ([a7 count])
    {
      [objc_msgSend(objc_msgSend(a7 objectAtIndexedSubscript:{0), "timestamp"), "timeIntervalSinceReferenceDate"}];
      if (*v91)
      {
        v56 = v55;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v57 = *(*v91 + 120);
        v58 = [v57 countByEnumeratingWithState:&v78 objects:v90 count:16];
        if (v58)
        {
          v59 = *v79;
          do
          {
            for (j = 0; j != v58; ++j)
            {
              if (*v79 != v59)
              {
                objc_enumerationMutation(v57);
              }

              v61 = *(*(&v78 + 1) + 8 * j);
              [objc_msgSend(v61 "timestamp")];
              if (v62 < v56)
              {
                [v54 addObject:v61];
              }
            }

            v58 = [v57 countByEnumeratingWithState:&v78 objects:v90 count:16];
          }

          while (v58);
        }
      }

      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v63 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        v64 = [v54 count];
        v65 = [v54 count];
        v66 = [a7 count];
        v67 = [objc_msgSend(a3 "UUIDString")];
        LODWORD(buf.__r_.__value_.__l.__data_) = 67240962;
        HIDWORD(buf.__r_.__value_.__r.__words[0]) = v64;
        LOWORD(buf.__r_.__value_.__r.__words[1]) = 1026;
        *(&buf.__r_.__value_.__r.__words[1] + 2) = v66 + v65;
        HIWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
        buf.__r_.__value_.__r.__words[2] = v67;
        LOWORD(v113) = 1026;
        *(&v113 + 2) = v52;
        _os_log_impl(&dword_19B873000, v63, OS_LOG_TYPE_DEBUG, "CLTSP,MI,upsampledLocationsSet created,prevLocation,%{public}d,newTotalLocation,%{public}d,tripSegmentID,%{public}s,deriveCrumbsFromUpsampledLocations,%{public}d", &buf, 0x1Eu);
      }

      v68 = sub_19B87DD40();
      if (*(v68 + 160) > 1 || *(v68 + 164) > 1 || *(v68 + 168) > 1 || *(v68 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v69 = [v54 count];
        v70 = [v54 count];
        v71 = [a7 count];
        v72 = [objc_msgSend(a3 "UUIDString")];
        LODWORD(__p.__r_.__value_.__l.__data_) = 67240962;
        HIDWORD(__p.__r_.__value_.__r.__words[0]) = v69;
        LOWORD(__p.__r_.__value_.__r.__words[1]) = 1026;
        *(&__p.__r_.__value_.__r.__words[1] + 2) = v71 + v70;
        HIWORD(__p.__r_.__value_.__r.__words[1]) = 2082;
        __p.__r_.__value_.__r.__words[2] = v72;
        LOWORD(v104[0]) = 1026;
        *(v104 + 2) = v52;
        v73 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::runMapIntegrator(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v73);
        if (v73 != &buf)
        {
          free(v73);
        }
      }

      [v54 addObjectsFromArray:a7];
    }

    memset(&__p, 0, sizeof(__p));
    v104[0] = 0;
    v105 = 0x3FE0000000000000;
    v106 = 0;
    v107 = xmmword_19BA89700;
    v108 = 1;
    v109 = xmmword_19BA89710;
    v110 = 1;
    v111 = 0;
    sub_19B8759E8(&buf, "CLMapIntegrationSparse");
    sub_19BA5D180(&buf, a2, &__p, a4);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  v46 = qword_1EAFE5B10;
  sub_19B8759E8(&buf, [objc_msgSend(a3 "UUIDString")]);
  std::mutex::lock(v46);
  if (sub_19B95D1AC(v46, &buf.__r_.__value_.__l.__data_))
  {
    __p.__r_.__value_.__r.__words[0] = &buf;
    v47 = sub_19B95D310(&v46[1], &buf.__r_.__value_.__l.__data_);
    v49 = *(v47 + 56);
    v48 = *(v47 + 64);
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!v49)
      {
        v50 = 0;
LABEL_52:
        sub_19B8750F8(v48);
        goto LABEL_55;
      }

LABEL_49:
      v50 = v49[62].__vftable;
      if (!v50)
      {
        operator new();
      }

      if (!v48)
      {
        v49 = 0;
        goto LABEL_55;
      }

      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      v49 = v48;
      goto LABEL_52;
    }

    if (v49)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v49 = 0;
  }

  v50 = 0;
LABEL_55:
  std::mutex::unlock(v46);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v51 = *&v91[8];
  *v91 = v50;
  *&v91[8] = v49;
  if (v51)
  {
    sub_19B8750F8(v51);
    v50 = *v91;
  }

  if (v50)
  {
    sub_19B8759E8(&buf, [objc_msgSend(a3 "UUIDString")]);
    sub_19B99EE80(v50, &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  goto LABEL_62;
}

void sub_19BA5CF64(_Unwind_Exception *a1)
{
  sub_19B8750F8(v3);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  std::mutex::unlock(v1);
  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  if (STACK[0x298])
  {
    sub_19B8750F8(STACK[0x298]);
  }

  _Unwind_Resume(a1);
}

void sub_19BA5D180(std::string *__str, void *a2, std::string *this, uint64_t a4)
{
  v59 = *MEMORY[0x1E69E9840];
  std::string::operator=(this, __str);
  if (a4 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = v7;
  this[1].__r_.__value_.__l.__size_ = 0x3FE0000000000000;
  this[1].__r_.__value_.__s.__data_[17] = [a2 useXPCServiceForMapQuery];
  this[2].__r_.__value_.__s.__data_[16] = [a2 isNetworkAccessAllowed];
  this[1].__r_.__value_.__s.__data_[16] = 1;
  this[2].__r_.__value_.__r.__words[0] = 0x4072C00000000000;
  this[3].__r_.__value_.__s.__data_[16] = 1;
  v8 = sub_19B99F158(@"PreferPrecachedTilesInTripSegmentProcessor", 1);
  this[2].__r_.__value_.__s.__data_[17] = v8;
  if (a4 != 1)
  {
    *&this[3].__r_.__value_.__l.__data_ = xmmword_19BA8DA30;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v9 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = this;
    }

    else
    {
      v10 = this->__r_.__value_.__r.__words[0];
    }

    data = this[1].__r_.__value_.__l.__data_;
    size = this[1].__r_.__value_.__l.__size_;
    v13 = this[1].__r_.__value_.__s.__data_[17];
    v14 = this[2].__r_.__value_.__s.__data_[16];
    v15 = this[1].__r_.__value_.__s.__data_[16];
    v16 = this[2].__r_.__value_.__l.__data_;
    v17 = this[3].__r_.__value_.__s.__data_[16];
    v19 = this[3].__r_.__value_.__l.__data_;
    v18 = this[3].__r_.__value_.__l.__size_;
    v20 = this[2].__r_.__value_.__s.__data_[17];
    *buf = 136317954;
    v36 = v10;
    v37 = 1026;
    v38 = data;
    v39 = 2050;
    v40 = size;
    v41 = 1026;
    v42 = v13;
    v43 = 1026;
    v44 = v14;
    v45 = 1026;
    v46 = v15;
    v47 = 2050;
    v48 = v16;
    v49 = 1026;
    v50 = v17;
    v51 = 2050;
    v52 = v19;
    v53 = 2050;
    v54 = v18;
    v55 = 1026;
    v56 = v8;
    v57 = 1026;
    v58 = v20;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_INFO, "CLTSP,getGeoMapGeometrySettingsForRouteReconstruction,fTypeName,%s,fGeometryType,%{public}d,fIntersectionRoadSearchDistance,%{public}.1lf,fUseXPCServiceForDataQuery,%{public}d,fAllowNetworkTileDownload,%{public}d,fStoringRoadConnectionEnabled,%{public}d,fMinimumRadiusForMapDataBuffer_m,%{public}.1lf,fWaitForMapDataQueryToComplete,%{public}d,fMinSnapRadiusM,%{public}.1lf,fMaxSnapRadiusM,%{public}.1lf,preferPrecachedTilesDefaults,%{public}d,preferCachedTilesSetting,%{public}d", buf, 0x5Eu);
  }

  v21 = sub_19B87DD40();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = this->__r_.__value_.__r.__words[0];
    }

    v25 = this[1].__r_.__value_.__l.__data_;
    v26 = this[1].__r_.__value_.__l.__size_;
    v27 = this[1].__r_.__value_.__s.__data_[17];
    v28 = this[2].__r_.__value_.__s.__data_[16];
    v29 = this[1].__r_.__value_.__s.__data_[16];
    v30 = this[2].__r_.__value_.__l.__data_;
    v31 = this[3].__r_.__value_.__s.__data_[16];
    v32 = this[3].__r_.__value_.__l.__data_;
    v33 = this[3].__r_.__value_.__l.__size_;
    v34 = this[2].__r_.__value_.__s.__data_[17];
    v23 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void getGeoMapGeometrySettingsForRouteReconstruction(const std::string &, CLTripSegmentProcessorOptions * _Nonnull, CLGeoMapFeatureGeometrySettings &, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v23);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_19BA5D4FC(uint64_t *a1, double **a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    do
    {
      if (*v6)
      {
        v8 = *(v6 + 8);
        v28[0] = *v6;
        v28[1] = &v8->__vftable;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = sub_19BA69760(v28);
        if (v8)
        {
          sub_19B8750F8(v8);
        }

        if (*a2)
        {
          **a2 = **a2 + 1.0;
          [(CLTripSegmentRoadData *)v9 setSequenceNumber:?];
        }

        else
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
          }

          v10 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "CLTSP,null sequenceNumber,skip sequenceNumber update.", buf, 2u);
          }

          v11 = sub_19B87DD40();
          if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
            }

            v27 = 0;
            v12 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "static void CLRoadTypeConversionUtilities::getCLMapRoadVectorAsCLTripSegmentRoadDataArray(const std::vector<CLMapRoadPtr> &, std::shared_ptr<double>, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v12);
            if (v12 != buf)
            {
              free(v12);
            }
          }
        }

        if ([a3 count])
        {
          if ([objc_msgSend(objc_msgSend(a3 "lastObject")])
          {
            if ([(NSArray *)[(CLTripSegmentRoadData *)v9 coordinates] count])
            {
              if ([objc_msgSend(objc_msgSend(objc_msgSend(a3 "lastObject")])
              {
                [objc_msgSend(a3 "lastObject")];
                if ([(NSArray *)[(CLTripSegmentRoadData *)v9 coordinates] count])
                {
                  [objc_msgSend(a3 "lastObject")];
                }
              }
            }
          }
        }

        [a3 addObject:v9];
      }

      v6 += 16;
    }

    while (v6 != v7);
  }

  v13 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [a3 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v14)
  {
    v15 = 0;
    v16 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(a3);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        if (v15 && (v19 = [*(*(&v23 + 1) + 8 * i) clRoadID], v19 == objc_msgSend(v15, "clRoadID")) && (v20 = objc_msgSend(v18, "connectingCLRoadID"), v20 == objc_msgSend(v15, "connectingCLRoadID")))
        {
          [v13 addObject:v18];
        }

        else
        {
          v15 = v18;
        }
      }

      v14 = [a3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v14);
  }

  [a3 removeObjectsInArray:v13];
  objc_autoreleasePoolPop(context);
  v21 = *MEMORY[0x1E69E9840];
}

void sub_19BA5D914(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA5D934(void *a1, std::mutex *this, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  std::mutex::lock(this);
  if (sub_19B95D1AC(this, a3))
  {
    *buf = a3;
    v6 = sub_19B95D310(&this[1], a3);
    v8 = *(v6 + 56);
    v7 = *(v6 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v8)
      {
        *a1 = v8 + 1392;
        a1[1] = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_19B8750F8(v7);
        goto LABEL_25;
      }

      sub_19B8750F8(v7);
    }

    else if (v8)
    {
      *a1 = v8 + 1392;
      a1[1] = 0;
      goto LABEL_25;
    }
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
  }

  v9 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 23) >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    v11 = *&this[1].__m_.__opaque[8];
    *buf = 136446466;
    *&buf[4] = v10;
    v18 = 1026;
    v19 = v11;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLTSP,sharedData,tripID not present in CLTripSegmentSharedData array while accessing getRoadSequenceNumber,%{public}s,arraySize,%{public}d", buf, 0x12u);
  }

  v12 = sub_19B87DD40();
  if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    if (*(a3 + 23) < 0)
    {
      v13 = *a3;
    }

    v16 = *&this[1].__m_.__opaque[8];
    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "std::shared_ptr<double> CLTripSegmentSharedData::getRoadSequenceNumber(const std::string &)", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *a1 = 0;
  a1[1] = 0;
LABEL_25:
  std::mutex::unlock(this);
  v15 = *MEMORY[0x1E69E9840];
}

void sub_19BA5DBE4(void *a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  sub_19B8759E8(__p, [objc_msgSend(a3 "UUIDString")]);
  std::mutex::lock(a2);
  if (sub_19B95D1AC(a2, __p))
  {
    *buf = __p;
    v5 = sub_19B95D310(a2 + 64, __p);
    v7 = *(v5 + 56);
    v6 = *(v5 + 64);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v7)
      {
        *a1 = v7 + 1400;
        a1[1] = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_19B8750F8(v6);
        goto LABEL_24;
      }

      sub_19B8750F8(v6);
    }

    else if (v7)
    {
      *a1 = v7 + 1400;
      a1[1] = 0;
      goto LABEL_24;
    }
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
  }

  v8 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    v9 = __p;
    if (v17 < 0)
    {
      v9 = __p[0];
    }

    v10 = *(a2 + 80);
    *buf = 136446466;
    *&buf[4] = v9;
    v23 = 1026;
    v24 = v10;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "CLTSP,sharedData,tripID not present in CLTripSegmentSharedData array while accessing getRouteMatchKPIComputer,%{public}s,arraySize,%{public}d", buf, 0x12u);
  }

  v11 = sub_19B87DD40();
  if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    v12 = __p;
    if (v17 < 0)
    {
      v12 = __p[0];
    }

    v13 = *(a2 + 80);
    v18 = 136446466;
    v19 = v12;
    v20 = 1026;
    v21 = v13;
    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "std::shared_ptr<CLTripSegmentRouteMatchKPI> CLTripSegmentSharedData::getRouteMatchKPIComputer(const std::string &)", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *a1 = 0;
  a1[1] = 0;
LABEL_24:
  std::mutex::unlock(a2);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_19BA5DEA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  std::mutex::unlock(v17);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_19BA5DEE4(uint64_t a1, void *a2)
{
  v200 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_146;
  }

  sub_19B8759E8(v120, [objc_msgSend(objc_msgSend(a2 "tripSegmentID")]);
  v119 = *(a1 + 48);
  if (v119)
  {
    v4 = [*(a1 + 40) routeRoads];
    v5 = [a2 routeRoads];
    *(v119 + 12) = 0;
    v6 = sub_19BA708AC(v4, 1);
    v7 = sub_19BA708AC(v5, 0);
    *(v119 + 16) += [v7 count];
    v8 = [MEMORY[0x1E695DF70] array];
    if ([v7 count])
    {
      v9 = 0;
      v10 = -1;
      do
      {
        v11 = [v7 objectAtIndexedSubscript:v9];
        v12 = *(v119 + 72);
        if (v12 != [v11 clRoadID])
        {
          *(v119 + 72) = [v11 clRoadID];
          ++*v119;
          *(v119 + 20) += [objc_msgSend(objc_msgSend(v7 objectAtIndexedSubscript:{v9), "coordinates"), "count"}];
          [v11 getLength];
          v14 = v13;
          *(v119 + 48) = v13 + *(v119 + 48);
          if (v10 == -1)
          {
            v10 = sub_19BA70CD8(v11, v6);
            if (v10 == -1)
            {
              v16 = v119;
              if (*(v119 + 4) >= 1)
              {
                goto LABEL_18;
              }

              *(v119 + 40) = v14 + *(v119 + 40);
              ++*(v119 + 12);
LABEL_20:
              v10 = -1;
              goto LABEL_21;
            }

            v15 = v119;
            ++*(v119 + 80);
            goto LABEL_12;
          }

          if ([v6 count] <= ++v10)
          {
            break;
          }

          if (sub_19BA70D4C(v11, [v6 objectAtIndexedSubscript:?]))
          {
            v15 = v119;
LABEL_12:
            ++*(v15 + 4);
            *(v15 + 24) = v14 + *(v15 + 24);
            goto LABEL_21;
          }

          v10 = sub_19BA70CD8(v11, v6);
          if (v10 == -1)
          {
            v16 = v119;
            if (*(v119 + 4) <= 0)
            {
              ++*(v119 + 12);
              *(v119 + 40) = v14 + *(v119 + 40);
            }

            else
            {
LABEL_18:
              *(v16 + 32) = v14 + *(v16 + 32);
              ++*(v16 + 8);
              [v8 addObject:v11];
            }

            goto LABEL_20;
          }

          ++*(v119 + 80);
          *(v119 + 32) = v14 + *(v119 + 32);
          ++*(v119 + 8);
          [v8 addObject:v11];
        }

LABEL_21:
        ++v9;
      }

      while ([v7 count] > v9);
    }

    v113 = a2;
    v114 = a1;
    *v119 -= *(v119 + 12);
    __p = 0;
    v144 = 0;
    v145 = 0;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v17 = [v4 countByEnumeratingWithState:&v139 objects:v177 count:16];
    v118 = v8;
    if (v17)
    {
      v18 = *v140;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v140 != v18)
          {
            objc_enumerationMutation(v4);
          }

          v20 = *(*(&v139 + 1) + 8 * i);
          v135 = 0u;
          v136 = 0u;
          v137 = 0u;
          v138 = 0u;
          v21 = [v20 coordinates];
          v22 = [v21 countByEnumeratingWithState:&v135 objects:&v175 count:16];
          if (v22)
          {
            v23 = *v136;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v136 != v23)
                {
                  objc_enumerationMutation(v21);
                }

                v25 = *(*(&v135 + 1) + 8 * j);
                [v25 latitude];
                v27 = v26;
                [v25 longitude];
                *buf = CLLocationCoordinate2DMake(v27, v28);
                sub_19B8F1158(&__p, buf);
              }

              v22 = [v21 countByEnumeratingWithState:&v135 objects:&v175 count:16];
            }

            while (v22);
          }

          v8 = v118;
        }

        v17 = [v4 countByEnumeratingWithState:&v139 objects:v177 count:16];
      }

      while (v17);
    }

    v132 = 0;
    v133 = 0;
    v131 = xmmword_19BA89490;
    v134 = 0x3FF0000000000000;
    v115 = [MEMORY[0x1E695DF70] array];
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v29 = [v8 countByEnumeratingWithState:&v127 objects:v174 count:16];
    if (v29)
    {
      v116 = *v128;
      do
      {
        v30 = 0;
        v117 = v29;
        do
        {
          if (*v128 != v116)
          {
            objc_enumerationMutation(v8);
          }

          v31 = 0;
          v32 = 0;
          v33 = *(*(&v127 + 1) + 8 * v30);
          while ([objc_msgSend(v33 "coordinates")] > v31)
          {
            [objc_msgSend(objc_msgSend(v33 "coordinates")];
            v36 = v35;
            [objc_msgSend(objc_msgSend(v33 "coordinates")];
            v122 = CLLocationCoordinate2DMake(v36, v37);
            v146[0] = -1.0;
            if (sub_19BA68324(&v131, (v144 - __p) >> 4, &__p, &v122.latitude, v146, &v126))
            {
              v34 = v146[0];
              if (v146[0] >= 2.5)
              {
                break;
              }

              ++v32;
            }

            else
            {
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
              }

              v38 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
              {
                v39 = [v33 clRoadID];
                *buf = 134283777;
                *&buf[4] = v39;
                *&buf[12] = 1026;
                *&buf[14] = 0;
                _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "CLTSP,%{private}llu,KPIComputer,findClosestPointOnRoad returned false,isRouteWithSkippedPart,%{public}d", buf, 0x12u);
              }

              v40 = sub_19B87DD40();
              if ((*(v40 + 160) & 0x80000000) == 0 || (*(v40 + 164) & 0x80000000) == 0 || (*(v40 + 168) & 0x80000000) == 0 || *(v40 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
                }

                v41 = [v33 clRoadID];
                v149 = 134283777;
                v150 = v41;
                v151 = 1026;
                v152 = 0;
                v42 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 0, "void CLTripSegmentRouteMatchKPI::computeKPI(NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, BOOL)", "CoreLocation: %s\n", v42);
                if (v42 != buf)
                {
                  free(v42);
                }
              }
            }

            ++v31;
          }

          if ([objc_msgSend(v33 coordinates] == v32)
          {
            ++*(v119 + 64);
            [v115 addObject:v33];
            [v33 getLength];
            *(v119 + 56) = v43 + *(v119 + 56);
            v44 = *(v119 + 32) - v43;
            *(v119 + 24) = v43 + *(v119 + 24);
            *(v119 + 32) = v44;
            *(v119 + 4) = vadd_s32(*(v119 + 4), 0xFFFFFFFF00000001);
          }

          ++v30;
          v8 = v118;
        }

        while (v30 != v117);
        v29 = [v118 countByEnumeratingWithState:&v127 objects:v174 count:16];
      }

      while (v29);
    }

    [v8 removeObjectsInArray:v115];
    v124 = 0u;
    v125 = 0u;
    v122 = 0;
    v123 = 0u;
    v45 = [v8 countByEnumeratingWithState:&v122 objects:&v149 count:16];
    if (v45)
    {
      v46 = *v123;
      v47 = 0.0;
      do
      {
        for (k = 0; k != v45; ++k)
        {
          if (*v123 != v46)
          {
            objc_enumerationMutation(v8);
          }

          [*(*&v122.longitude + 8 * k) getLength];
          v47 = v47 + v49;
        }

        v45 = [v8 countByEnumeratingWithState:&v122 objects:&v149 count:16];
      }

      while (v45);
    }

    else
    {
      v47 = 0.0;
    }

    if (vabdd_f64(*(v119 + 32), v47) > 0.5)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v55 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        v56 = *(v119 + 32);
        *buf = 134349568;
        *&buf[4] = v56;
        *&buf[12] = 2050;
        *&buf[14] = v47;
        v154 = 1026;
        LODWORD(v155) = 0;
        _os_log_impl(&dword_19B873000, v55, OS_LOG_TYPE_DEFAULT, "CLTSP,KPIComputer,fMisMatchedLength,%{public}.3lf,misMatchLength,%{public}.2lf,isRouteWithSkippedPart,%{public}d", buf, 0x1Cu);
      }

      v57 = sub_19B87DD40();
      if (*(v57 + 160) > 1 || *(v57 + 164) > 1 || *(v57 + 168) > 1 || *(v57 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v58 = *(v119 + 32);
        LODWORD(v146[0]) = 134349568;
        *(v146 + 4) = v58;
        WORD2(v146[1]) = 2050;
        *(&v146[1] + 6) = v47;
        HIWORD(v146[2]) = 1026;
        LODWORD(v146[3]) = 0;
        v59 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRouteMatchKPI::computeKPI(NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, BOOL)", "CoreLocation: %s\n", v59);
        if (v59 != buf)
        {
          free(v59);
        }
      }
    }

    *(v119 + 84) = 0;
    memset(v146, 0, sizeof(v146));
    v147 = 0u;
    v148 = 0u;
    v60 = [v8 countByEnumeratingWithState:v146 objects:buf count:16];
    if (v60)
    {
      v61 = 0;
      v62 = **&v146[2];
      do
      {
        v63 = 0;
        v64 = v61;
        do
        {
          if (**&v146[2] != v62)
          {
            objc_enumerationMutation(v8);
          }

          v61 = *(*&v146[1] + 8 * v63);
          if (v64)
          {
            if ([objc_msgSend(objc_msgSend(v64 "coordinates")])
            {
              goto LABEL_117;
            }

            v65 = v119;
            v66 = *(v119 + 84) + 1;
          }

          else
          {
            v66 = 1;
            v65 = v119;
          }

          *(v65 + 84) = v66;
LABEL_117:
          ++v63;
          v64 = v61;
        }

        while (v60 != v63);
        v60 = [v8 countByEnumeratingWithState:v146 objects:buf count:16];
      }

      while (v60);
    }

    if (__p)
    {
      v144 = __p;
      operator delete(__p);
    }

    v67 = *(v114 + 48);
    v68 = *(v67 + 48);
    v69 = v68 - *(v67 + 40);
    if (v69 <= 0.0)
    {
      v70 = 0;
    }

    else
    {
      v70 = (*(v67 + 24) * 100.0 / v69);
    }

    v71 = *(v114 + 64);
    *(v71 + 304) = v70;
    v72 = *(v67 + 84);
    *(v71 + 308) = v72;
    v73 = v72;
    v74 = 0.0;
    if (v68 > 0.0)
    {
      v74 = v73 * 1000.0 / v68;
    }

    v75 = v73 * 3600.0 / *(v71 + 40);
    *(v71 + 312) = v74;
    *(v71 + 320) = v75;
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v76 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      if (v121 >= 0)
      {
        v77 = v120;
      }

      else
      {
        v77 = v120[0];
      }

      [v113 distance_m];
      v79 = v78;
      [v113 distanceUnc_m];
      v81 = v80;
      [objc_msgSend(v113 "startDate")];
      v83 = v82;
      [objc_msgSend(v113 "endDate")];
      v85 = v84;
      v86 = [v113 modeOfTransport];
      v87 = [objc_msgSend(v113 "tripLocations")];
      v88 = [objc_msgSend(v113 "routeRoads")];
      v89 = *(v114 + 64);
      v90 = *(v89 + 304);
      v91 = *(v89 + 308);
      v93 = *(v89 + 312);
      v92 = *(v89 + 320);
      *buf = 136449026;
      *&buf[4] = v77;
      *&buf[12] = 2050;
      *&buf[14] = v79;
      v154 = 2050;
      v155 = v81;
      v156 = 2050;
      v157 = v83;
      v158 = 2050;
      v159 = v85;
      v160 = 1026;
      v161 = v86;
      v162 = 1026;
      v163 = v87;
      v164 = 1026;
      v165 = v88;
      v166 = 1026;
      v167 = v90;
      v168 = 1026;
      v169 = v91;
      v170 = 2050;
      v171 = v93;
      v172 = 2050;
      v173 = v92;
      _os_log_impl(&dword_19B873000, v76, OS_LOG_TYPE_DEFAULT, "CLTSP,Received Simulated Sparse trip output Data,ID,%{public}s,distance,%{public}.2lf,distanceUnc,%{public}.2lf,startTime,%{public}.2lf,endTime, %{public}.2lf,modeOfTransport,%{public}d,locationCount,%{public}d,routeRoads,%{public}d,routeLengthMatch,%{public}d,routeDeviationCount,%{public}d,routeDeviationPerKm,%{public}.2lf,routeDeviationPerHr,%{public}.2lf", buf, 0x66u);
    }

    v94 = sub_19B87DD40();
    if (*(v94 + 160) <= 1 && *(v94 + 164) <= 1 && *(v94 + 168) <= 1 && !*(v94 + 152))
    {
      goto LABEL_144;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v95 = v121 >= 0 ? v120 : v120[0];
    [v113 distance_m];
    v97 = v96;
    [v113 distanceUnc_m];
    v99 = v98;
    [objc_msgSend(v113 "startDate")];
    v101 = v100;
    [objc_msgSend(v113 "endDate")];
    v103 = v102;
    v104 = [v113 modeOfTransport];
    v105 = [objc_msgSend(v113 "tripLocations")];
    v106 = [objc_msgSend(v113 "routeRoads")];
    v107 = *(v114 + 64);
    v108 = *(v107 + 304);
    v109 = *(v107 + 308);
    v111 = *(v107 + 312);
    v110 = *(v107 + 320);
    *v177 = 136449026;
    *&v177[4] = v95;
    v178 = 2050;
    v179 = v97;
    v180 = 2050;
    v181 = v99;
    v182 = 2050;
    v183 = v101;
    v184 = 2050;
    v185 = v103;
    v186 = 1026;
    v187 = v104;
    v188 = 1026;
    v189 = v105;
    v190 = 1026;
    v191 = v106;
    v192 = 1026;
    v193 = v108;
    v194 = 1026;
    v195 = v109;
    v196 = 2050;
    v197 = v111;
    v198 = 2050;
    v199 = v110;
    v54 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::convert1HzDataToSparseAndComputeRouteMatchKPI(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull, CLTripSegmentOutputData * _Nonnull)_block_invoke", "CoreLocation: %s\n", v54);
    if (v54 == buf)
    {
      goto LABEL_144;
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v50 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      sub_19B8759E8(buf, [objc_msgSend(objc_msgSend(*(a1 + 32) "tripSegmentID")]);
      v51 = v154 >= 0 ? buf : *buf;
      *v177 = 136446210;
      *&v177[4] = v51;
      _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_DEFAULT, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,tripID,%{public}s is not in CLTripSegmentSharedData", v177, 0xCu);
      if (SHIBYTE(v154) < 0)
      {
        operator delete(*buf);
      }
    }

    v52 = sub_19B87DD40();
    if (*(v52 + 160) <= 1 && *(v52 + 164) <= 1 && *(v52 + 168) <= 1 && !*(v52 + 152))
    {
      goto LABEL_144;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    sub_19B8759E8(v177, [objc_msgSend(objc_msgSend(*(a1 + 32) "tripSegmentID")]);
    if (v180 >= 0)
    {
      v53 = v177;
    }

    else
    {
      v53 = *v177;
    }

    v175 = 136446210;
    v176 = v53;
    v54 = _os_log_send_and_compose_impl();
    if (SHIBYTE(v180) < 0)
    {
      operator delete(*v177);
    }

    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::convert1HzDataToSparseAndComputeRouteMatchKPI(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull, CLTripSegmentOutputData * _Nonnull)_block_invoke", "CoreLocation: %s\n", v54);
    if (v54 == buf)
    {
      goto LABEL_144;
    }
  }

  free(v54);
LABEL_144:
  if (v121 < 0)
  {
    operator delete(v120[0]);
  }

LABEL_146:
  v112 = *MEMORY[0x1E69E9840];
}

void sub_19BA5EF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void *sub_19BA5F05C(void *result, void *a2)
{
  v2 = a2[7];
  result[6] = a2[6];
  result[7] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[9];
  result[8] = a2[8];
  result[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_19BA5F090(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    sub_19B8750F8(v3);
  }
}

uint64_t sub_19BA5F0E0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, double a6)
{
  v46 = *MEMORY[0x1E69E9840];
  sub_19B8759E8(&__p, [objc_msgSend(a2 "UUIDString")]);
  sub_19BA60818(v33, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v11 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v34;
    v13 = v33[0];
    v14 = [a3 count];
    v15 = v33;
    if (v12 < 0)
    {
      v15 = v13;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136446978;
    *(__p.__r_.__value_.__r.__words + 4) = v15;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 1026;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = a4;
    WORD1(__p.__r_.__value_.__r.__words[2]) = 1026;
    HIDWORD(__p.__r_.__value_.__r.__words[2]) = v14;
    v44 = 2050;
    v45 = a6;
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "CLTSP,simulateLocationOnRoute,input,routeID,%{public}s,modeOfTransport,%{public}d,,routeRoadsCount,%{public}d,speed,%{public}.1lf", &__p, 0x22u);
  }

  v16 = sub_19B87DD40();
  if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v17 = v34;
    v18 = v33[0];
    v19 = [a3 count];
    v20 = v33;
    if (v17 < 0)
    {
      v20 = v18;
    }

    LODWORD(v35.__r_.__value_.__l.__data_) = 136446978;
    *(v35.__r_.__value_.__r.__words + 4) = v20;
    WORD2(v35.__r_.__value_.__r.__words[1]) = 1026;
    *(&v35.__r_.__value_.__r.__words[1] + 6) = a4;
    WORD1(v35.__r_.__value_.__r.__words[2]) = 1026;
    HIDWORD(v35.__r_.__value_.__r.__words[2]) = v19;
    LOWORD(v36) = 2050;
    *(&v36 + 2) = a6;
    v21 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::simulateLocationOnRoute(NSUUID * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, const CLTripSegmentModeOfTransport, double, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v21);
    if (v21 != &__p)
    {
      free(v21);
    }
  }

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([a5 shouldRecordDataInFileForReplay])
  {
    [v29 addObject:a2];
    [v29 addObject:a3];
  }

  sub_19B8759E8(v31, [objc_msgSend(a2 "UUIDString")]);
  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  if ((sub_19BA55AB8(qword_1EAFE5B10, v31) & 1) == 0)
  {
    sub_19BA70F8C();
  }

  *(a1 + 40) = [a5 shouldRecordDataInFileForReplay];
  *(a1 + 48) = [a5 tripSegmentRecorderLoggingDirectory];
  if (a6 > 0.0)
  {
    memset(&v35, 0, sizeof(v35));
    LODWORD(v36) = 0;
    *(&v36 + 1) = 0x3FE0000000000000;
    v37 = 0;
    v38 = xmmword_19BA89700;
    v39 = 1;
    v40 = xmmword_19BA89710;
    v41 = 1;
    v42 = 0;
    sub_19B8759E8(&__p, "SimulateLocationOnRoute");
    sub_19BA5D180(&__p, a5, &v35, a4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_19B9E080C();
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v22 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
  {
    v23 = v33;
    if (v34 < 0)
    {
      v23 = v33[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136446466;
    *(__p.__r_.__value_.__r.__words + 4) = v23;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = a6;
    _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEBUG, "CLTSP,invalid speed input,trip,%{public}s,speed,%{public}.2lf", &__p, 0x16u);
  }

  v24 = sub_19B87DD40();
  if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v25 = v33;
    if (v34 < 0)
    {
      v25 = v33[0];
    }

    LODWORD(v35.__r_.__value_.__l.__data_) = 136446466;
    *(v35.__r_.__value_.__r.__words + 4) = v25;
    WORD2(v35.__r_.__value_.__r.__words[1]) = 2050;
    *(&v35.__r_.__value_.__r.__words[1] + 6) = a6;
    v26 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::simulateLocationOnRoute(NSUUID * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, const CLTripSegmentModeOfTransport, double, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v26);
    if (v26 != &__p)
    {
      free(v26);
    }
  }

  sub_19BA60970(a1, [a5 shouldRecordDataInFileForReplay], 12, v29);
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  v27 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_19BA60674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a22)
  {
    sub_19B8750F8(a22);
  }

  if (a24)
  {
    sub_19B8750F8(a24);
  }

  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(a1);
}

std::string *sub_19BA60818(uint64_t a1, const std::string *__s)
{
  v15[2] = *MEMORY[0x1E69E9840];
  size = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  if (size < 0)
  {
    size = __s->__r_.__value_.__l.__size_;
    if (size < 1)
    {
      goto LABEL_14;
    }

    v6 = __s->__r_.__value_.__r.__words[0];
    v5 = (__s->__r_.__value_.__r.__words[0] + size);
  }

  else
  {
    if (!*(&__s->__r_.__value_.__s + 23))
    {
      goto LABEL_14;
    }

    v5 = __s + size;
    v6 = __s;
  }

  v7 = v6;
  do
  {
    v8 = memchr(v7, 45, size);
    if (!v8)
    {
      break;
    }

    if (*v8 == 45)
    {
      if (v8 != v5 && v8 - v6 != -1)
      {
        result = std::string::basic_string(&v14, __s, 0, v8 - v6, v15);
        *(v15 + 7) = *(&v14.__r_.__value_.__r.__words[1] + 7);
        v15[0] = v14.__r_.__value_.__l.__size_;
        v10 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        v11 = v14.__r_.__value_.__l.__size_;
        *a1 = v14.__r_.__value_.__r.__words[0];
        *(a1 + 8) = v11;
        *(a1 + 15) = *(v15 + 7);
        *(a1 + 23) = v10;
        v12 = *MEMORY[0x1E69E9840];
        return result;
      }

      break;
    }

    v7 = (v8 + 1);
    size = v5 - v7;
  }

  while (v5 - v7 >= 1);
LABEL_14:
  v13 = *MEMORY[0x1E69E9840];

  return sub_19B8759E8(a1, "");
}

void sub_19BA60970(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_19B87BBB4();
    if (sub_19B93CCA4())
    {
      v7 = [MEMORY[0x1E695DF00] now];

      sub_19B98FD58(a1 + 40, a4, v7, a3);
    }
  }
}

uint64_t sub_19BA609EC(float64x2_t *a1, void **a2, double *a3, double *a4, double a5)
{
  v65 = *MEMORY[0x1E69E9840];
  *a3 = 0.0;
  a3[1] = 0.0;
  *a4 = 0.0;
  v5 = *a2;
  if (!*a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    v19 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "CLMM, NULL road", buf, 2u);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      goto LABEL_43;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    LOWORD(__y[0]) = 0;
    goto LABEL_17;
  }

  v6 = (v5[18] - v5[17]) >> 4;
  if (v6 <= 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    v22 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,CoordinateCount is 0", buf, 2u);
    }

    v23 = sub_19B87DD40();
    if (*(v23 + 160) <= 1 && *(v23 + 164) <= 1 && *(v23 + 168) <= 1 && !*(v23 + 152))
    {
      goto LABEL_43;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    LOWORD(__y[0]) = 0;
LABEL_40:
    v21 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n");
LABEL_41:
    if (v21 != buf)
    {
      free(v21);
    }

    goto LABEL_43;
  }

  if (v6 == 1)
  {
LABEL_66:
    result = 1;
    goto LABEL_67;
  }

  sub_19B9F5AA8(*a2);
  v12 = (v5[21] - v5[20]) >> 3;
  if (v12 != v6 - 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    v24 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,inconsistent array size", buf, 2u);
    }

    v25 = sub_19B87DD40();
    if (*(v25 + 160) <= 1 && *(v25 + 164) <= 1 && *(v25 + 168) <= 1 && !*(v25 + 152))
    {
      goto LABEL_43;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    LOWORD(__y[0]) = 0;
    goto LABEL_40;
  }

  v13 = *a2;
  sub_19B9F5AA8(v13);
  if (a5 < 0.000001)
  {
    *a3 = **(v13 + 136);
    v14 = *a3;
    v15 = a3[1];
    v16 = *(v13 + 136);
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
LABEL_62:
    *buf = 0;
    __y[0] = 0.0;
    sub_19BA0BE88(a1, buf, __y, &v62, v14, v15, 0.0, v17, v18, 0.0);
    v36 = atan2(__y[0], *buf);
    if (v36 < 0.0)
    {
      v36 = v36 + 6.28318531;
    }

    v37 = v36 * 57.2957795;
LABEL_65:
    *a4 = v37;
    goto LABEL_66;
  }

  if (a5 >= 0.999999)
  {
    *a3 = *(*(v13 + 136) + 16 * v12);
    v35 = *(v13 + 136) + 16 * v12;
    v14 = *(v35 - 16);
    v15 = *(v35 - 8);
    v17 = *a3;
    v18 = a3[1];
    goto LABEL_62;
  }

  v27 = v5[20];
  v28 = v5[21];
  if (v27 == v28)
  {
LABEL_50:
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    v33 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,Could not interpolate to intended projection", buf, 2u);
    }

    v34 = sub_19B87DD40();
    if (*(v34 + 160) <= 1 && *(v34 + 164) <= 1 && *(v34 + 168) <= 1 && !*(v34 + 152))
    {
      goto LABEL_43;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    LOWORD(__y[0]) = 0;
    goto LABEL_40;
  }

  v29 = 0.0;
  v30 = 2;
  v31 = 24;
  while (1)
  {
    v32 = *v27 / *(v13 + 40);
    if (vabdd_f64(a5, v29 + v32) < 0.000001)
    {
      break;
    }

    if (v29 + v32 > a5)
    {
      v52 = (a5 - v29) / v32;
      v53 = (*(v13 + 136) + v31);
      v54 = *(v53 - 2);
      v55 = *v53;
      *a3 = *(v53 - 3) + (*(v53 - 1) - *(v53 - 3)) * v52;
      v56 = v54 + 360.0;
      if (v54 >= 0.0)
      {
        v56 = v54;
      }

      v57 = v55 + 360.0;
      if (v55 >= 0.0)
      {
        v57 = v55;
      }

      v58 = v57 - v56;
      if (v58 <= 180.0)
      {
        if (v58 < -180.0)
        {
          v58 = v58 + 360.0;
        }
      }

      else
      {
        v58 = v58 + -360.0;
      }

      v61 = fmod(v54 + v58 * v52, 360.0);
      if (v61 <= -180.0)
      {
        v61 = v61 + 360.0;
      }

      else if (v61 > 180.0)
      {
        v61 = v61 + -360.0;
      }

      a3[1] = v61;
      v14 = *(v53 - 3);
      v15 = *(v53 - 2);
      v17 = *(v53 - 1);
      v18 = *v53;
      goto LABEL_62;
    }

    ++v27;
    v31 += 16;
    ++v30;
    v29 = v29 + v32;
    if (v27 == v28)
    {
      goto LABEL_50;
    }
  }

  if (v30 < v6)
  {
    *a3 = *(*(v13 + 136) + v31 - 8);
    v39 = *(v13 + 136) + v31;
    v40 = *(v39 - 24);
    v41 = *(v39 - 16);
    v42 = *a3;
    v43 = a3[1];
    *buf = 0;
    __y[0] = 0.0;
    sub_19BA0BE88(a1, buf, __y, &v62, v40, v41, 0.0, v42, v43, 0.0);
    v44 = atan2(__y[0], *buf);
    if (v44 < 0.0)
    {
      v44 = v44 + 6.28318531;
    }

    v45 = v44 * 57.2957795;
    v46 = *a3;
    v47 = a3[1];
    v48 = *(v13 + 136) + v31;
    v49 = *(v48 + 8);
    v50 = *(v48 + 16);
    *buf = 0;
    __y[0] = 0.0;
    sub_19BA0BE88(a1, buf, __y, &v62, v46, v47, 0.0, v49, v50, 0.0);
    v51 = atan2(__y[0], *buf);
    if (v51 < 0.0)
    {
      v51 = v51 + 6.28318531;
    }

    sub_19B8B646C(v45, v51 * 57.2957795);
    goto LABEL_65;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
  }

  v59 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_ERROR, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", buf, 2u);
  }

  v60 = sub_19B87DD40();
  if ((*(v60 + 160) & 0x80000000) == 0 || (*(v60 + 164) & 0x80000000) == 0 || (*(v60 + 168) & 0x80000000) == 0 || *(v60 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    LOWORD(__y[0]) = 0;
LABEL_17:
    v21 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n");
    goto LABEL_41;
  }

LABEL_43:
  result = 0;
LABEL_67:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_19BA612C4(void *result, void *a2, void *a3, void *a4, void *a5)
{
  *result = 0;
  result[1] = 0;
  if (a4 != a5)
  {
    v34 = v14;
    v35 = v13;
    v36 = v10;
    v37 = v9;
    v38 = v8;
    v39 = v7;
    v40 = v6;
    v41 = v5;
    v42 = v11;
    v43 = v12;
    v16 = a4;
    v19 = result;
    while (1)
    {
      result = [a2 latitude];
      v21 = *(*v16 + 136);
      v22 = *(*v16 + 144) == v21 ? 0.0 : *v21;
      if (vabdd_f64(v20, v22) < 0.0000001)
      {
        result = [a2 longitude];
        v24 = *(*v16 + 136);
        v25 = *(*v16 + 144) == v24 ? 0.0 : *(v24 + 8);
        if (vabdd_f64(v23, v25) < 0.0000001)
        {
          result = [a3 latitude];
          v27 = *(*v16 + 144);
          v28 = v27 == *(*v16 + 136) ? 0.0 : *(v27 - 16);
          if (vabdd_f64(v26, v28) < 0.0000001)
          {
            result = [a3 longitude];
            v30 = *v16;
            v31 = *(*v16 + 144);
            v32 = v31 == *(*v16 + 136) ? 0.0 : *(v31 - 8);
            if (vabdd_f64(v29, v32) < 0.0000001)
            {
              break;
            }
          }
        }
      }

      v16 += 2;
      if (v16 == a5)
      {
        return result;
      }
    }

    v33 = v16[1];
    if (v33)
    {
      atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
    }

    *v19 = v30;
    v19[1] = v33;
  }

  return result;
}

void sub_19BA6140C(void *a1, uint64_t a2, uint64_t *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v15[0] = a2;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v6 = *a3;
  v7 = a3[1];
  v10[0] = v6;
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19BA6152C(v5, &v11, v10);
  if (v7)
  {
    sub_19B8750F8(v7);
  }

  if (v12 - v11 == 16 && *v11)
  {
    v8 = v11[1];
    *a1 = *v11;
    a1[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  v14 = &v11;
  sub_19B8F0E84(&v14);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_19BA614FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  if (v14)
  {
    sub_19B8750F8(v14);
  }

  a14 = &a11;
  sub_19B8F0E84(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA6152C(void *a1, void **a2, uint64_t *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v5 = [a1 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v5)
    {
      v6 = *v42;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v42 != v6)
          {
            objc_enumerationMutation(a1);
          }

          v8 = *(*(&v41 + 1) + 8 * i);
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v9 = *a3;
          [objc_msgSend(objc_msgSend(v8 "coordinates")];
          v11 = v10;
          [objc_msgSend(objc_msgSend(v8 "coordinates")];
          if ((sub_19B8E77AC(v9, &v38, 1, 0, v11, v12, 2.0) & 1) == 0)
          {
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
            }

            v28 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
            {
              v29 = [v8 clRoadID];
              *buf = 134349056;
              *&buf[4] = v29;
              _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_ERROR, "CLTSP,getCLTripSegmentRoadDataArrayAsCLMapRoadVector,findRoadsNear call failed,roadID,%{public}lld", buf, 0xCu);
            }

            v30 = sub_19B87DD40();
            if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
              }

              v31 = [v8 clRoadID];
              v45 = 134349056;
              v46 = v31;
              v32 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "static BOOL CLRoadTypeConversionUtilities::getCLTripSegmentRoadDataArrayAsCLMapRoadVector(NSArray<CLTripSegmentRoadData *> * _Nonnull, std::vector<CLMapRoadPtr> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v32);
              if (v32 != buf)
              {
                free(v32);
              }
            }

            *buf = &v38;
            sub_19B8F0E84(buf);
            goto LABEL_57;
          }

          if (v38 == v39)
          {
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
            }

            v13 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
            {
              v14 = [v8 clRoadID];
              *buf = 134349056;
              *&buf[4] = v14;
              _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "CLTSP,getCLTripSegmentRoadDataArrayAsCLMapRoadVector,road data query failed,roadID,%{public}lld", buf, 0xCu);
            }

            v15 = sub_19B87DD40();
            if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
              }

              v16 = [v8 clRoadID];
              v45 = 134349056;
              v46 = v16;
              v17 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "static BOOL CLRoadTypeConversionUtilities::getCLTripSegmentRoadDataArrayAsCLMapRoadVector(NSArray<CLTripSegmentRoadData *> * _Nonnull, std::vector<CLMapRoadPtr> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v17);
              if (v17 != buf)
              {
                free(v17);
              }
            }
          }

          v18 = v38;
          v19 = v39;
          while (v18 != v19)
          {
            v20 = *(*v18 + 8);
            if (v20 == [v8 clRoadID] && objc_msgSend(v8, "clRoadID"))
            {
              goto LABEL_30;
            }

            v22 = *(*v18 + 136);
            v21 = *(*v18 + 144);
            if (v21 == v22)
            {
              v25 = 0.0;
              v23 = 0.0;
              v24 = 0.0;
              v26 = 0.0;
            }

            else
            {
              v23 = *v22;
              v24 = v22[1];
              v25 = *(v21 - 2);
              v26 = *(v21 - 1);
            }

            if ([v8 isEqualStartLatitude:v23 startLongitude:v24 endLatitude:v25 endlongitude:v26])
            {
LABEL_30:
              sub_19B8EAB68(a2, v18);
              break;
            }

            ++v18;
          }

          *buf = &v38;
          sub_19B8F0E84(buf);
        }

        v5 = [a1 countByEnumeratingWithState:&v41 objects:v47 count:16];
        result = 1;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      result = 1;
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v33 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_ERROR, "CLTSP,getCLTripSegmentRoadDataArrayAsCLMapRoadVector,null geometry", buf, 2u);
    }

    v34 = sub_19B87DD40();
    if ((*(v34 + 160) & 0x80000000) == 0 || (*(v34 + 164) & 0x80000000) == 0 || (*(v34 + 168) & 0x80000000) == 0 || *(v34 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      LOWORD(v38) = 0;
      v35 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "static BOOL CLRoadTypeConversionUtilities::getCLTripSegmentRoadDataArrayAsCLMapRoadVector(NSArray<CLTripSegmentRoadData *> * _Nonnull, std::vector<CLMapRoadPtr> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v35);
      if (v35 != buf)
      {
        free(v35);
      }
    }

LABEL_57:
    result = 0;
  }

  v36 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA61B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void **a45)
{
  a45 = &a15;
  sub_19B8F0E84(&a45);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA61BD0(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a4 && [objc_msgSend(a4 "coordinates")])
  {
    if (a5 && [objc_msgSend(a5 "coordinates")])
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([a7 shouldRecordDataInFileForReplay])
      {
        [v19 addObject:a2];
        [v19 addObject:a4];
        [v19 addObject:a5];
        [v19 addObject:a3];
      }

      [objc_msgSend(MEMORY[0x1E695DF00] "now")];
      sub_19B8759E8(&__s, [objc_msgSend(a2 "UUIDString")]);
      sub_19BA60818(&v31, &__s);
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      if ((sub_19BA55AB8(qword_1EAFE5B10, &__s.__r_.__value_.__l.__data_) & 1) == 0)
      {
        sub_19BA70F8C();
      }

      *(a1 + 40) = [a7 shouldRecordDataInFileForReplay];
      *(a1 + 48) = [a7 tripSegmentRecorderLoggingDirectory];
      memset(&v22, 0, sizeof(v22));
      v23 = 0;
      v24 = 0x3FE0000000000000;
      v25 = 0;
      v26 = xmmword_19BA89700;
      v27 = 1;
      v28 = xmmword_19BA89710;
      v29 = 1;
      v30 = 0;
      sub_19B8759E8(&__p, "ConstructRouteUsingFamiliarRoads");
      sub_19BA5D180(&__p, a7, &v22, a6);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_19B9E080C();
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v14 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "CLTSP,constructRouteUsingFamiliarRoads,end location is invalid", &__p, 2u);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(&__p, 0x65CuLL);
      if (qword_1EAFE46B8 == -1)
      {
        goto LABEL_31;
      }

      goto LABEL_38;
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v12 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "CLTSP,constructRouteUsingFamiliarRoads,start location is invalid", &__p, 2u);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(&__p, 0x65CuLL);
      if (qword_1EAFE46B8 == -1)
      {
LABEL_31:
        LOWORD(v22.__r_.__value_.__l.__data_) = 0;
        v16 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::constructRouteUsingFamiliarRoads(NSUUID * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, CLTripSegmentRoadData * _Nonnull, CLTripSegmentRoadData * _Nonnull, const CLTripSegmentModeOfTransport, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v16);
        if (v16 != &__p)
        {
          free(v16);
        }

        goto LABEL_33;
      }

LABEL_38:
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      goto LABEL_31;
    }
  }

LABEL_33:
  v17 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_19BA64378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x590] = &a49;
  sub_19B8F0E84(&STACK[0x590]);
  sub_19B8750F8(a16);
  if (a71)
  {
    sub_19B8750F8(a71);
  }

  if (STACK[0x200])
  {
    sub_19B8750F8(STACK[0x200]);
  }

  STACK[0x590] = &STACK[0x218];
  sub_19B8F0E84(&STACK[0x590]);
  if (STACK[0x238])
  {
    sub_19B8750F8(STACK[0x238]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  _Unwind_Resume(a1);
}

void sub_19BA645F0(void *a1, void *a2, uint64_t a3, int a4)
{
  v8 = [objc_msgSend(a2 "coordinates")];
  v10 = *a3;
  v9 = *(a3 + 8);
  if (v10 == v9)
  {
LABEL_34:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v11 = v8;
  while (1)
  {
    v12 = *v10;
    if (!*v10)
    {
      goto LABEL_30;
    }

    v15 = v12 + 136;
    v13 = *(v12 + 136);
    v14 = *(v15 + 8);
    if (v11 > 1)
    {
      break;
    }

    if (a4)
    {
      if (v14 != v13)
      {
        v17 = v13 + 1;
LABEL_12:
        v18 = *v13;
        v19 = *v17;
        goto LABEL_18;
      }
    }

    else if (v14 != v13)
    {
      v13 = v14 - 2;
      v17 = v14 - 1;
      goto LABEL_12;
    }

    v18 = 0.0;
    v19 = 0.0;
LABEL_18:
    [objc_msgSend(objc_msgSend(a2 "coordinates")];
    if (vabdd_f64(v18, v23) < 0.0000001)
    {
      v24 = [objc_msgSend(a2 "coordinates")];
      goto LABEL_20;
    }

LABEL_30:
    v10 += 2;
    if (v10 == v9)
    {
      goto LABEL_34;
    }
  }

  if (v14 == v13)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = *v13;
  }

  [objc_msgSend(objc_msgSend(a2 "coordinates")];
  if (vabdd_f64(v16, v20) >= 0.0000001)
  {
    goto LABEL_30;
  }

  v21 = *(*v10 + 136);
  v22 = *(*v10 + 144) == v21 ? 0.0 : *(v21 + 8);
  [objc_msgSend(objc_msgSend(a2 "coordinates")];
  if (vabdd_f64(v22, v26) >= 0.0000001)
  {
    goto LABEL_30;
  }

  v27 = *(*v10 + 144);
  v28 = v27 == *(*v10 + 136) ? 0.0 : *(v27 - 16);
  [objc_msgSend(objc_msgSend(a2 "coordinates")];
  if (vabdd_f64(v28, v29) >= 0.0000001)
  {
    goto LABEL_30;
  }

  v30 = *(*v10 + 144);
  if (v30 == *(*v10 + 136))
  {
    v19 = 0.0;
  }

  else
  {
    v19 = *(v30 - 8);
  }

  v24 = [objc_msgSend(a2 "coordinates")];
LABEL_20:
  [v24 longitude];
  if (vabdd_f64(v19, v25) >= 0.0000001)
  {
    goto LABEL_30;
  }

  v32 = *v10;
  v31 = v10[1];
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = 0;
  a1[1] = 0;
  if (v32)
  {
    if (a4)
    {
      sub_19B9F5C98(v32, 0);
      v33 = v32[17];
      if (v32[18] != v33)
      {
        v34 = v33 + 1;
        goto LABEL_46;
      }
    }

    else
    {
      v36 = v32[17];
      v35 = v32[18];
      v37 = (v35 - v36) >> 4;
      if (v37 >= 2)
      {
        sub_19B9F5C98(v32, v37 - 2);
        v36 = v32[17];
        v35 = v32[18];
      }

      if (v35 != v36)
      {
        v33 = (v35 - 16);
        v34 = (v35 - 8);
LABEL_46:
        v38 = *v33;
        v39 = *v34;
      }
    }

    CFAbsoluteTimeGetCurrent();
    operator new();
  }

  if (v31)
  {
    sub_19B8750F8(v31);
  }
}

void sub_19BA64948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
    sub_19B8750F8(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA64988(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v52 = *MEMORY[0x1E69E9840];
  sub_19B8759E8(&__p, [objc_msgSend(a2 "UUIDString")]);
  sub_19BA60818(v47, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!*a3)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v14 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v15 = v47;
      if (v48 < 0)
      {
        v15 = v47[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136446210;
      *(__p.__r_.__value_.__r.__words + 4) = v15;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "CLTSP,generateWayPointsOnTheRoute,null geometry,trip,%{public}s", &__p, 0xCu);
    }

    v16 = sub_19B87DD40();
    if ((*(v16 + 160) & 0x80000000) != 0 && (*(v16 + 164) & 0x80000000) != 0 && (*(v16 + 168) & 0x80000000) != 0 && !*(v16 + 152))
    {
      goto LABEL_37;
    }

    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v17 = v47;
    if (v48 < 0)
    {
      v17 = v47[0];
    }

    goto LABEL_35;
  }

  if (*a4 == *(a4 + 8))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v18 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v19 = v47;
      if (v48 < 0)
      {
        v19 = v47[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136446210;
      *(__p.__r_.__value_.__r.__words + 4) = v19;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "CLTSP,generateWayPointsOnTheRoute,empty road vector,trip,%{public}s", &__p, 0xCu);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      goto LABEL_37;
    }

    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v17 = v47;
    if (v48 < 0)
    {
      v17 = v47[0];
    }

LABEL_35:
    v49 = 136446210;
    v50 = v17;
    v21 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "static BOOL CLTripSegmentUtilities::generateWayPointsOnTheRoute(CLDistanceCalc &, NSUUID * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer> &, const std::vector<CLMapRoadPtr> &, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v21);
    if (v21 != &__p)
    {
      free(v21);
    }

LABEL_37:
    v22 = 0;
    goto LABEL_78;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v9 = *a4;
  v10 = **a4;
  if (v10)
  {
    v11 = v10[17];
    if (v10[18] == v11)
    {
      v12 = 0.0;
      v13 = 0.0;
    }

    else
    {
      v12 = *v11;
      v13 = v11[1];
    }

    v23 = sub_19B9F5C98(v10, 0);
    sub_19BA70ED0(a5, Current, v12, v13, v23);
    v9 = *a4;
  }

  memset(v46, 0, sizeof(v46));
  v44 = 0;
  v45 = 0;
  v24 = *(a4 + 8);
  if (v24 != v9)
  {
    v25 = 0;
    v26 = 1;
    do
    {
      v27 = *&v9[v25];
      v43 = v27;
      if (*(&v27 + 1))
      {
        atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if (v27)
      {
        sub_19B8F30F0();
      }

      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v28 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        v29 = v47;
        if (v48 < 0)
        {
          v29 = v47[0];
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136446210;
        *(__p.__r_.__value_.__r.__words + 4) = v29;
        _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_ERROR, "CLTSP,generateWayPointsOnTheRoute,null road,trip,%{public}s", &__p, 0xCu);
      }

      v30 = sub_19B87DD40();
      if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
      {
        bzero(&__p, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v31 = v47;
        if (v48 < 0)
        {
          v31 = v47[0];
        }

        v49 = 136446210;
        v50 = v31;
        v32 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "static BOOL CLTripSegmentUtilities::generateWayPointsOnTheRoute(CLDistanceCalc &, NSUUID * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer> &, const std::vector<CLMapRoadPtr> &, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v32);
        if (v32 != &__p)
        {
          free(v32);
        }
      }

      if (*(&v43 + 1))
      {
        sub_19B8750F8(*(&v43 + 1));
      }

      v9 = *a4;
      v24 = *(a4 + 8);
      v33 = v26++ >= (v24 - *a4) >> 4;
      v25 += 2;
    }

    while (!v33);
  }

  v34 = *(v24 - 2);
  if (v34)
  {
    v35 = v34[18];
    v36 = v35 - v34[17];
    if (v36)
    {
      v37 = *(v35 - 16);
      v38 = *(v35 - 8);
    }

    else
    {
      v37 = 0.0;
      v38 = 0.0;
    }

    v39 = v36 >> 4;
    v40 = -1.0;
    if (v39 >= 2)
    {
      v40 = sub_19B9F5C98(v34, v39 - 2);
    }

    sub_19BA70ED0(a5, Current + 1.0, v37, v38, v40);
  }

  v22 = 1;
  if (v45)
  {
    sub_19B8750F8(v45);
  }

  __p.__r_.__value_.__r.__words[0] = v46;
  sub_19BA39F60(&__p);
LABEL_78:
  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  v41 = *MEMORY[0x1E69E9840];
  return v22;
}

void sub_19BA65B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA65C7C(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = 20.0;
  if (a4 >= 0.0)
  {
    v6 = a4;
  }

  memset(buf + 7, 0, 32);
  v10 = buf[0];
  v8[2] = 0.0;
  v8[4] = 0.0;
  v9 = 0;
  *v11 = buf[1];
  *&v11[15] = 0;
  v8[0] = v6 * v6 * 0.5;
  v8[1] = v8[0];
  v7 = a6 * a6;
  if (a6 <= 0.0)
  {
    v7 = -1.0;
  }

  v8[3] = v7;
  sub_19B9C1640(v8);
  sub_19B9F27E0();
}

uint64_t sub_19BA66898(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v57 = *MEMORY[0x1E69E9840];
  if (!a3 || ![a3 count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v30 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_ERROR, "CLTSP,matchLocationsToRoute,routeRoads is invalid", buf, 2u);
    }

    v31 = sub_19B87DD40();
    if ((*(v31 + 160) & 0x80000000) != 0 && (*(v31 + 164) & 0x80000000) != 0 && (*(v31 + 168) & 0x80000000) != 0 && !*(v31 + 152))
    {
      goto LABEL_45;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 == -1)
    {
LABEL_43:
      LOWORD(v54) = 0;
      v36 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::matchLocationsToRoute(NSUUID * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nullable, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }

      goto LABEL_45;
    }

LABEL_69:
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    goto LABEL_43;
  }

  if (!a6 || ![a6 count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v32 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_ERROR, "CLTSP,matchLocationsToRoute,tripLocations is invalid", buf, 2u);
    }

    v33 = sub_19B87DD40();
    if ((*(v33 + 160) & 0x80000000) != 0 && (*(v33 + 164) & 0x80000000) != 0 && (*(v33 + 168) & 0x80000000) != 0 && !*(v33 + 152))
    {
      goto LABEL_45;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_69;
  }

  if (a4 && [a4 count])
  {
    v13 = [MEMORY[0x1E695DF00] now];
    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([a7 shouldRecordDataInFileForReplay])
    {
      [v42 addObject:v13];
      [v42 addObject:a2];
      [v42 addObject:a3];
      [v42 addObject:a6];
      [v42 addObject:a4];
    }

    sub_19B8759E8(&__s, [objc_msgSend(a2 "UUIDString")]);
    sub_19BA60818(&__p, &__s);
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    if ((sub_19BA55AB8(qword_1EAFE5B10, &__s.__r_.__value_.__l.__data_) & 1) == 0)
    {
      sub_19BA70F8C();
    }

    *(a1 + 40) = [a7 shouldRecordDataInFileForReplay];
    *(a1 + 48) = [a7 tripSegmentRecorderLoggingDirectory];
    v14 = [a6 firstObject];
    [v14 latitude];
    v16 = v15;
    [v14 longitude];
    sub_19B8F1EE8(&v50, v16, v17, 500.0);
    v48 = 0;
    v47 = 0;
    v49 = 0;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    if ([a3 countByEnumeratingWithState:&v43 objects:v55 count:16])
    {
      *v44;
      *v44;
      v18 = **(&v43 + 1);
      sub_19B8F30F0();
    }

    if (v47 != v48)
    {
      [v14 iOSTime];
      v20 = v19;
      [v14 latitude];
      v22 = v21;
      [v14 longitude];
      v24 = v23;
      [v14 horizontalAccuracy];
      v26 = v25;
      [v14 course];
      v28 = v27;
      [v14 courseAccuracy];
      sub_19BA65C7C(v20, v22, v24, v26, v28, v29);
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v39 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_DEBUG, "CLTSP,matchLocationsToRoute,no roads found within search radius", buf, 2u);
    }

    v40 = sub_19B87DD40();
    if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      LOWORD(v54) = 0;
      v41 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::matchLocationsToRoute(NSUUID * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nullable, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v41);
      if (v41 != buf)
      {
        free(v41);
      }
    }

    *buf = &v47;
    sub_19B8F0E84(buf);
    if (v52 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    goto LABEL_45;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v34 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_ERROR, "CLTSP,matchLocationsToRoute,waypoints is invalid", buf, 2u);
  }

  v35 = sub_19B87DD40();
  if ((*(v35 + 160) & 0x80000000) == 0 || (*(v35 + 164) & 0x80000000) == 0 || (*(v35 + 168) & 0x80000000) == 0 || *(v35 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_69;
  }

LABEL_45:
  v37 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_19BA681CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a68)
  {
    sub_19B8750F8(a68);
  }

  STACK[0x2D0] = &STACK[0x268];
  sub_19B8F0E84(&STACK[0x2D0]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  _Unwind_Resume(a1);
}

BOOL sub_19BA68324(float64x2_t *a1, int a2, double **a3, double *a4, double *a5, double *a6)
{
  v46[204] = *MEMORY[0x1E69E9840];
  *a5 = -1.0;
  *a6 = -1.0;
  if (a2 > 1)
  {
    v12 = *a4;
    v13 = a4[1];
    v14 = **a3;
    v15 = (*a3)[1];
    *buf = 0.0;
    v46[0] = 0.0;
    sub_19BA0BE88(a1, buf, v46, &v42, v12, v13, 0.0, v14, v15, 0.0);
    v16 = 0;
    v18 = *buf;
    v17 = v46[0];
    v19 = 0.0;
    v20 = 0.0;
    while (1)
    {
      v21 = *a4;
      v22 = a4[1];
      v23 = &(*a3)[v16 / 8];
      v24 = v23[2];
      v25 = v23[3];
      v42 = 0.0;
      v43[0] = 0.0;
      sub_19BA0BE88(a1, &v42, v43, &v44, v21, v22, 0.0, v24, v25, 0.0);
      v26 = v42;
      v27 = v43[0];
      v28 = (v18 - v42) * (v18 - v42) + (v17 - v43[0]) * (v17 - v43[0]);
      v29 = 0.0 - v18;
      if (v28 < 0.001)
      {
        break;
      }

      v31 = ((0.0 - v17) * (v43[0] - v17) + v29 * (v42 - v18)) / v28;
      if (v31 >= 0.0)
      {
        if (v31 <= 1.0)
        {
          v30 = (0.0 - (v18 + (v42 - v18) * v31)) * (0.0 - (v18 + (v42 - v18) * v31));
          v32 = 0.0 - (v17 + (v43[0] - v17) * v31);
          goto LABEL_5;
        }

        v33 = (0.0 - v42) * (0.0 - v42) + (0.0 - v43[0]) * (0.0 - v43[0]);
        v31 = 1.0;
      }

      else
      {
        v33 = v29 * v29 + (0.0 - v17) * (0.0 - v17);
        v31 = 0.0;
      }

LABEL_10:
      v34 = sqrt(v28);
      v35 = sqrt(v33);
      if (*a5 < 0.0 || v35 < *a5)
      {
        *a5 = v35;
        v20 = v19 + v34 * v31;
      }

      v19 = v19 + v34;
      v16 += 16;
      v17 = v27;
      v18 = v26;
      if (16 * a2 - 16 == v16)
      {
        v39 = v20 / v19;
        if (v19 < 0.001)
        {
          v39 = 0.0;
        }

        *a6 = v39;
        goto LABEL_31;
      }
    }

    v30 = v29 * v29;
    v31 = 0.0;
    v32 = 0.0 - v17;
LABEL_5:
    v33 = v30 + v32 * v32;
    goto LABEL_10;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
  }

  v36 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEBUG, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", buf, 2u);
  }

  v37 = sub_19B87DD40();
  if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    LOWORD(v42) = 0;
    v38 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::findClosestPointOnRoad(CLDistanceCalc &, const int, const std::vector<Coordinate> &, const Coordinate &, double &, double &) [Coordinate = CLLocationCoordinate2D]", "CoreLocation: %s\n", v38);
    if (v38 != buf)
    {
      free(v38);
    }
  }

LABEL_31:
  result = a2 > 1;
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19BA686C4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a3 && [a3 count])
  {
    if (a5 && [a5 count])
    {
      v9 = [MEMORY[0x1E695DF00] now];
      v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([a6 shouldRecordDataInFileForReplay])
      {
        [v36 addObject:v9];
        [v36 addObject:a2];
        [v36 addObject:a3];
        [v36 addObject:a5];
      }

      sub_19B8759E8(&__s, [objc_msgSend(a2 "UUIDString")]);
      sub_19BA60818(&__p, &__s);
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      if ((sub_19BA55AB8(qword_1EAFE5B10, &__s.__r_.__value_.__l.__data_) & 1) == 0)
      {
        sub_19BA70F8C();
      }

      *(a1 + 40) = [a6 shouldRecordDataInFileForReplay];
      *(a1 + 48) = [a6 tripSegmentRecorderLoggingDirectory];
      v10 = [a5 firstObject];
      [v10 latitude];
      v12 = v11;
      [v10 longitude];
      sub_19B8F1EE8(&v46, v12, v13, 500.0);
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      if ([a3 countByEnumeratingWithState:&v39 objects:v51 count:16])
      {
        *v40;
        *v40;
        v14 = **(&v39 + 1);
        sub_19B8F30F0();
      }

      if (v43 != v44)
      {
        [v10 iOSTime];
        v16 = v15;
        [v10 latitude];
        v18 = v17;
        [v10 longitude];
        v20 = v19;
        [v10 horizontalAccuracy];
        v22 = v21;
        [v10 course];
        v24 = v23;
        [v10 courseAccuracy];
        sub_19BA65C7C(v16, v18, v20, v22, v24, v25);
      }

      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v33 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEBUG, "CLTSP,matchLocationsToRoute,no roads found within search radius", buf, 2u);
      }

      v34 = sub_19B87DD40();
      if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        LOWORD(v50) = 0;
        v35 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::matchLocationsToRoute(NSUUID * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v35);
        if (v35 != buf)
        {
          free(v35);
        }
      }

      *buf = &v43;
      sub_19B8F0E84(buf);
      if (v48 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      goto LABEL_34;
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v28 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_ERROR, "CLTSP,matchLocationsToRoute,tripLocations is invalid", buf, 2u);
    }

    v29 = sub_19B87DD40();
    if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_56;
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v26 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_ERROR, "CLTSP,matchLocationsToRoute,routeRoads is invalid", buf, 2u);
    }

    v27 = sub_19B87DD40();
    if ((*(v27 + 160) & 0x80000000) == 0 || (*(v27 + 164) & 0x80000000) == 0 || (*(v27 + 168) & 0x80000000) == 0 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 == -1)
      {
LABEL_32:
        LOWORD(v50) = 0;
        v30 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::matchLocationsToRoute(NSUUID * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v30);
        if (v30 != buf)
        {
          free(v30);
        }

        goto LABEL_34;
      }

LABEL_56:
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      goto LABEL_32;
    }
  }

LABEL_34:
  v31 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_19BA69670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61)
{
  if (a24)
  {
    sub_19B8750F8(a24);
  }

  a61 = &a42;
  sub_19B8F0E84(&a61);
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  _Unwind_Resume(a1);
}

CLTripSegmentRoadData *sub_19BA69760(void **a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = *a1;
  v4 = (*a1)[17];
  v5 = (*a1)[18];
  if (((v5 - v4) >> 4) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (v4 && v7 < ((v5 - v4) >> 4))
      {
        [v2 addObject:{-[CLLocationCoordinate initWithLatitude:longitude:]([CLLocationCoordinate alloc], "initWithLatitude:longitude:", *(v4 + v6), *(v4 + v6 + 8))}];
        v3 = *a1;
      }

      ++v7;
      v4 = v3[17];
      v5 = v3[18];
      v6 += 16;
    }

    while (v7 < ((v5 - v4) >> 4));
  }

  v8 = [[CLTripSegmentRoadData alloc] initWithRoadID:**a1 clRoadID:(*a1)[1] roadClass:*(*a1 + 5) formOfWay:*(*a1 + 6) coordinates:v2];

  return v8;
}

uint64_t sub_19BA6984C(float64x2_t *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v149 = *MEMORY[0x1E69E9840];
  if (!a6 || ![a6 count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v23 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "CLTSP,getWaypointsSubsetFromSnapPoint,routeRoads is invalid", buf, 2u);
    }

    v24 = sub_19B87DD40();
    if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
    {
      goto LABEL_47;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 == -1)
    {
      goto LABEL_45;
    }

    goto LABEL_161;
  }

  if (!a4 || !a5)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v25 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "CLTSP,getWaypointsSubsetFromSnapPoint,snap information is nil", buf, 2u);
    }

    v26 = sub_19B87DD40();
    if ((*(v26 + 160) & 0x80000000) != 0 && (*(v26 + 164) & 0x80000000) != 0 && (*(v26 + 168) & 0x80000000) != 0 && !*(v26 + 152))
    {
      goto LABEL_47;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 == -1)
    {
      goto LABEL_45;
    }

    goto LABEL_161;
  }

  if (!a7 || ![a7 count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v27 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_ERROR, "CLTSP,getWaypointsSubsetFromSnapPoint,waypoint is nil or zero", buf, 2u);
    }

    v28 = sub_19B87DD40();
    if ((*(v28 + 160) & 0x80000000) != 0 && (*(v28 + 164) & 0x80000000) != 0 && (*(v28 + 168) & 0x80000000) != 0 && !*(v28 + 152))
    {
      goto LABEL_47;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 == -1)
    {
LABEL_45:
      *v128 = 0;
      v29 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::getWaypointsSubsetFromSnapPoint(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, CLTripSegmentLocation * _Nonnull, CLTripSegmentRoadData * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nullable, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }

LABEL_47:
      v30 = 0;
      goto LABEL_48;
    }

LABEL_161:
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    goto LABEL_45;
  }

  v98 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([a8 shouldRecordDataInFileForReplay])
  {
    [v98 addObject:a2];
    [v98 addObject:a6];
    [v98 addObject:a7];
  }

  v93 = [MEMORY[0x1E695DF00] now];
  sub_19B8759E8(&__s, [objc_msgSend(a2 "UUIDString")]);
  v97 = a8;
  sub_19BA60818(v125, &__s);
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v15 = [a6 countByEnumeratingWithState:&v121 objects:v141 count:16];
  obj = a7;
  v95 = a4;
  v96 = a2;
  v16 = 0;
  if (v15)
  {
    v17 = *v122;
    while (2)
    {
      v18 = 0;
      v19 = v16;
      v16 += v15;
      do
      {
        if (*v122 != v17)
        {
          objc_enumerationMutation(a6);
        }

        v20 = *(*(&v121 + 1) + 8 * v18);
        v21 = [v20 roadID];
        if (v21 == [a5 roadID])
        {
          v22 = [v20 clRoadID];
          if (v22 == [a5 clRoadID])
          {
            v16 = v19;
            goto LABEL_50;
          }
        }

        ++v19;
        ++v18;
      }

      while (v15 != v18);
      v15 = [a6 countByEnumeratingWithState:&v121 objects:v141 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_50:
  if ([a6 count] <= v16)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v66 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v66, OS_LOG_TYPE_DEBUG, "CLTSP,getWaypointsSubsetFromSnapPoint,matched on a road not in route", buf, 2u);
    }

    v67 = sub_19B87DD40();
    if (*(v67 + 160) > 1 || *(v67 + 164) > 1 || *(v67 + 168) > 1 || *(v67 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      *v128 = 0;
      v68 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::getWaypointsSubsetFromSnapPoint(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, CLTripSegmentLocation * _Nonnull, CLTripSegmentRoadData * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nullable, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v68);
      if (v68 != buf)
      {
        free(v68);
      }
    }

    sub_19BA60970(a1, [v97 shouldRecordDataInFileForReplay], 18, v98);
    v30 = 0;
  }

  else
  {
    v33 = [a6 subarrayWithRange:{v16, objc_msgSend(a6, "count") - v16}];
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v34 = [v33 countByEnumeratingWithState:&v117 objects:v140 count:16];
    if (v34)
    {
      v35 = *v118;
      v36 = 1;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v118 != v35)
          {
            objc_enumerationMutation(v33);
          }

          [*(*(&v117 + 1) + 8 * i) setSequenceNumber:++v36];
        }

        v34 = [v33 countByEnumeratingWithState:&v117 objects:v140 count:16];
      }

      while (v34);
    }

    __p = 0;
    v115 = 0;
    v116 = 0;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v38 = [v33 countByEnumeratingWithState:&v110 objects:v139 count:16];
    if (v38)
    {
      v39 = *v111;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v111 != v39)
          {
            objc_enumerationMutation(v33);
          }

          v41 = *(*(&v110 + 1) + 8 * j);
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v42 = [v41 coordinates];
          v43 = [v42 countByEnumeratingWithState:&v106 objects:v138 count:16];
          if (v43)
          {
            v44 = *v107;
LABEL_65:
            v45 = 0;
            while (1)
            {
              if (*v107 != v44)
              {
                objc_enumerationMutation(v42);
              }

              v46 = *(*(&v106 + 1) + 8 * v45);
              [v46 latitude];
              v48 = v47;
              [v46 longitude];
              *buf = CLLocationCoordinate2DMake(v48, v49);
              sub_19B8F1158(&__p, buf);
              if ((v115 - __p) > 0x2580)
              {
                break;
              }

              if (v43 == ++v45)
              {
                v43 = [v42 countByEnumeratingWithState:&v106 objects:v138 count:16];
                if (v43)
                {
                  goto LABEL_65;
                }

                break;
              }
            }
          }
        }

        v38 = [v33 countByEnumeratingWithState:&v110 objects:v139 count:16];
      }

      while (v38);
    }

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v50 = 0;
    v51 = [obj countByEnumeratingWithState:&v102 objects:v137 count:16];
    if (v51)
    {
      v52 = *v103;
      do
      {
        v53 = 0;
        v54 = v50 + 1;
        v94 = v50 + v51;
        do
        {
          if (*v103 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v55 = *(*(&v102 + 1) + 8 * v53);
          *v128 = 0xBFF0000000000000;
          v56 = __p;
          v57 = v115;
          [v55 latitude];
          v59 = v58;
          [v55 longitude];
          *buf = CLLocationCoordinate2DMake(v59, v60);
          if (sub_19BA68324(a1, (v57 - v56) >> 4, &__p, buf, v128, &v101))
          {
            v61 = *v128;
            if (*v128 < 0.0000001)
            {
              v50 = v54;
              goto LABEL_113;
            }
          }

          else
          {
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
            }

            v62 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v62, OS_LOG_TYPE_ERROR, "CLTSP,getWaypointsSubsetFromSnapPoint,findClosestPointOnRoad returned false", buf, 2u);
            }

            v63 = sub_19B87DD40();
            if ((*(v63 + 160) & 0x80000000) == 0 || (*(v63 + 164) & 0x80000000) == 0 || (*(v63 + 168) & 0x80000000) == 0 || *(v63 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
              }

              v64 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::getWaypointsSubsetFromSnapPoint(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, CLTripSegmentLocation * _Nonnull, CLTripSegmentRoadData * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nullable, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v64);
              if (v64 != buf)
              {
                free(v64);
              }
            }
          }

          ++v53;
          ++v54;
        }

        while (v51 != v53);
        v65 = [obj countByEnumeratingWithState:&v102 objects:v137 count:{16, v61}];
        v51 = v65;
        v50 = v94;
      }

      while (v65);
    }

LABEL_113:
    if ([obj count] > v50 && (v69 = objc_msgSend(objc_msgSend(obj, "subarrayWithRange:", v50, objc_msgSend(obj, "count") - v50), "mutableCopy")) != 0)
    {
      v70 = [CLTripSegmentLocation alloc];
      [v95 latitude];
      v72 = v71;
      [v95 longitude];
      v74 = [(CLTripSegmentLocation *)v70 initWithLatitude:v72 longitude:v73 altitude:0.0];
      [v95 course];
      [CLTripSegmentLocation updateCourse:v74 andCourseAccuracy:"updateCourse:andCourseAccuracy:"];
      [v69 insertObject:v74 atIndex:0];
      v75 = [[CLTripSegmentOutputData alloc] initWithTripSegmentID:v96 isFinalPart:1 startDate:v93 endDate:v93 duration:1 modeOfTransport:v69 distance:-1.0 distanceUnc:0.0 tripLocations:10.0 routeRoads:v33];
      (*(a9 + 16))(a9, v75);
      if ([v97 shouldRecordDataInFileForReplay])
      {
        [v98 addObject:v75];
        sub_19BA60970(a1, [v97 shouldRecordDataInFileForReplay], 18, v98);
      }

      [objc_msgSend(MEMORY[0x1E695DF00] "now")];
      v77 = v76;
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v78 = v77 * 1000.0;
      v79 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        if (v126 >= 0)
        {
          v80 = v125;
        }

        else
        {
          v80 = v125[0];
        }

        v81 = [(CLTripSegmentOutputData *)v75 modeOfTransport];
        v82 = [(NSArray *)[(CLTripSegmentOutputData *)v75 routeRoads] count];
        v83 = [v69 count];
        *buf = 136447234;
        *&buf[4] = v80;
        *&buf[12] = 1026;
        *&buf[14] = v81;
        v143 = 1026;
        v144 = v82;
        v145 = 1026;
        v146 = v83;
        v147 = 2050;
        v148 = v78;
        _os_log_impl(&dword_19B873000, v79, OS_LOG_TYPE_DEFAULT, "CLTSP,getWaypointsSubsetFromSnapPoint,output,routeID,%{public}s,modeOfTransport,%{public}d,routeRoadsCount,%{public}d,wpCounts,%{public}d,processingTimeMSec,%{public}.1lf", buf, 0x28u);
      }

      v84 = sub_19B87DD40();
      if (*(v84 + 160) > 1 || *(v84 + 164) > 1 || *(v84 + 168) > 1 || *(v84 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        if (v126 >= 0)
        {
          v85 = v125;
        }

        else
        {
          v85 = v125[0];
        }

        v86 = [(CLTripSegmentOutputData *)v75 modeOfTransport];
        v87 = [(NSArray *)[(CLTripSegmentOutputData *)v75 routeRoads] count];
        v88 = [v69 count];
        *v128 = 136447234;
        *&v128[4] = v85;
        v129 = 1026;
        v130 = v86;
        v131 = 1026;
        v132 = v87;
        v133 = 1026;
        v134 = v88;
        v135 = 2050;
        v136 = v78;
        v89 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::getWaypointsSubsetFromSnapPoint(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, CLTripSegmentLocation * _Nonnull, CLTripSegmentRoadData * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nullable, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v89);
        if (v89 != buf)
        {
          free(v89);
        }
      }

      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      sub_19B9545AC(qword_1EAFE5B10, v96);

      v30 = 1;
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v90 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v90, OS_LOG_TYPE_DEBUG, "CLTSP,getWaypointsSubsetFromSnapPoint,waypoint subset is nil", buf, 2u);
      }

      v91 = sub_19B87DD40();
      if (*(v91 + 160) > 1 || *(v91 + 164) > 1 || *(v91 + 168) > 1 || *(v91 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        *v128 = 0;
        v92 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::getWaypointsSubsetFromSnapPoint(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, CLTripSegmentLocation * _Nonnull, CLTripSegmentRoadData * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nullable, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v92);
        if (v92 != buf)
        {
          free(v92);
        }
      }

      sub_19BA60970(a1, [v97 shouldRecordDataInFileForReplay], 13, v98);
      v30 = 0;
    }

    if (__p)
    {
      v115 = __p;
      operator delete(__p);
    }
  }

  if (v126 < 0)
  {
    operator delete(v125[0]);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_48:
  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

void sub_19BA6A944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a70 < 0)
  {
    operator delete(a65);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19BA6AA10(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, double a7)
{
  v37 = *MEMORY[0x1E69E9840];
  sub_19B8759E8(&__s, [objc_msgSend(a2 "UUIDString")]);
  sub_19BA60818(v24, &__s);
  if (*&a7 > -1 && ((*&a7 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a7 - 1) < 0xFFFFFFFFFFFFFLL)
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([a6 shouldRecordDataInFileForReplay])
    {
      [v21 addObject:a2];
      if (a4 && [a4 count])
      {
        [v21 addObject:a4];
      }

      if (a5 && [a5 count])
      {
        [v21 addObject:a5];
      }

      [v21 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", a7)}];
    }

    [objc_msgSend(a4 "firstObject")];
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    if ((sub_19BA55AB8(qword_1EAFE5B10, &__s.__r_.__value_.__l.__data_) & 1) == 0)
    {
      sub_19BA70F8C();
    }

    *(a1 + 40) = [a6 shouldRecordDataInFileForReplay];
    *(a1 + 48) = [a6 tripSegmentRecorderLoggingDirectory];
    memset(&v27, 0, sizeof(v27));
    v28 = 0;
    v29 = 0x3FE0000000000000;
    v30 = 0;
    v31 = xmmword_19BA89700;
    v32 = 1;
    v33 = xmmword_19BA89710;
    v34 = 1;
    v35 = 0;
    sub_19B8759E8(&__p, "PropagateLocations");
    sub_19BA5D180(&__p, a6, &v27, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_19B9E080C();
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v14 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    v15 = v24;
    if (v25 < 0)
    {
      v15 = v24[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136446466;
    *(__p.__r_.__value_.__r.__words + 4) = v15;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = a7;
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "CLTSP,propagateLocationForward,tripID,%{public}s,invalid distance,%{public}.2lf", &__p, 0x16u);
  }

  v16 = sub_19B87DD40();
  if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v17 = v24;
    if (v25 < 0)
    {
      v17 = v24[0];
    }

    LODWORD(v27.__r_.__value_.__l.__data_) = 136446466;
    *(v27.__r_.__value_.__r.__words + 4) = v17;
    WORD2(v27.__r_.__value_.__r.__words[1]) = 2050;
    *(&v27.__r_.__value_.__r.__words[1] + 6) = a7;
    v18 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::propagateLocationForward(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nullable, NSArray<CLTripSegmentRoadData *> * _Nullable, const double, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v18);
    if (v18 != &__p)
    {
      free(v18);
    }
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v19 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_19BA6C7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a65 = &STACK[0x270];
  sub_19B8F0E84(&a65);
  a65 = &a40;
  sub_19B8F0E84(&a65);
  a65 = &a43;
  sub_19B8F0E84(&a65);
  if (a47)
  {
    sub_19B8750F8(a47);
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  _Unwind_Resume(a1);
}

void sub_19BA6C9AC(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([a5 shouldRecordDataInFileForReplay])
  {
    [v10 addObject:a2];
    if (a3)
    {
      if ([a3 count])
      {
        [v10 addObject:a3];
      }
    }
  }

  sub_19B8759E8(&__s, [objc_msgSend(a2 "UUIDString")]);
  sub_19BA60818(&v20, &__s);
  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  if ((sub_19BA55AB8(qword_1EAFE5B10, &__s.__r_.__value_.__l.__data_) & 1) == 0)
  {
    sub_19BA70F8C();
  }

  *(a1 + 40) = [a5 shouldRecordDataInFileForReplay];
  *(a1 + 48) = [a5 tripSegmentRecorderLoggingDirectory];
  memset(&v11, 0, sizeof(v11));
  v12 = 0;
  v13 = 0x3FE0000000000000;
  v14 = 0;
  v15 = xmmword_19BA89700;
  v16 = 1;
  v17 = xmmword_19BA89710;
  v18 = 1;
  v19 = 0;
  sub_19B8759E8(&__p, "generateWaypointsOnTheRoute");
  sub_19BA5D180(&__p, a5, &v11, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_19B9E080C();
}

void sub_19BA6D2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  a52 = &a14;
  sub_19B8F0E84(&a52);
  if (a18)
  {
    sub_19B8750F8(a18);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19BA6D394(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a4 && [a4 count])
  {
    v15 = [MEMORY[0x1E695DF70] array];
    if ([a5 shouldRecordDataInFileForReplay])
    {
      [v15 addObject:a2];
      [v15 addObject:a4];
    }

    [objc_msgSend(a4 "firstObject")];
    sub_19B8759E8(&__s, [objc_msgSend(a2 "UUIDString")]);
    sub_19BA60818(&v25, &__s);
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    if ((sub_19BA55AB8(qword_1EAFE5B10, &__s.__r_.__value_.__l.__data_) & 1) == 0)
    {
      sub_19BA70F8C();
    }

    *(a1 + 40) = [a5 shouldRecordDataInFileForReplay];
    *(a1 + 48) = [a5 tripSegmentRecorderLoggingDirectory];
    memset(&v16, 0, sizeof(v16));
    v17 = 0;
    v18 = 0x3FE0000000000000;
    v19 = 0;
    v20 = xmmword_19BA89700;
    v21 = 1;
    v22 = xmmword_19BA89710;
    v23 = 1;
    v24 = 0;
    sub_19B8759E8(&__p, "getMatchedLocationCandidates");
    sub_19BA5D180(&__p, a5, &v16, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_19B9E080C();
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v10 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "CLTSP,matchLocationsToRoute,tripLocations is invalid", &__p, 2u);
  }

  v11 = sub_19B87DD40();
  if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LOWORD(v16.__r_.__value_.__l.__data_) = 0;
    v12 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::getMatchedLocationCandidates(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nullable, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v12);
    if (v12 != &__p)
    {
      free(v12);
    }
  }

  result = 0;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA6DFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19BA6E0B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3 && [a3 count] > 1)
  {
    if ([a4 shouldRecordDataInFileForReplay])
    {
      sub_19B87BBB4();
      v10 = sub_19B93CCA4();
    }

    else
    {
      v10 = 0;
    }

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = v11;
    if (v10)
    {
      [v11 setValue:a2 forKey:@"ConstructRouteFromWaypoints_RouteID"];
      [v12 setValue:a3 forKey:@"ConstructRouteFromWaypoints_InputWaypoints"];
    }

    [objc_msgSend(MEMORY[0x1E695DF00] "now")];
    sub_19B8759E8(&__s, [objc_msgSend(a2 "UUIDString")]);
    sub_19BA60818(&v25, &__s);
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    if ((sub_19BA55AB8(qword_1EAFE5B10, &__s.__r_.__value_.__l.__data_) & 1) == 0)
    {
      sub_19BA70F8C();
    }

    *(a1 + 40) = v10;
    *(a1 + 48) = [a4 tripSegmentRecorderLoggingDirectory];
    memset(&__p, 0, sizeof(__p));
    v17 = 0;
    v18 = 0x3FE0000000000000;
    v19 = 0;
    v20 = xmmword_19BA89700;
    v21 = 1;
    v22 = xmmword_19BA89710;
    v23 = 1;
    v24 = 0;
    sub_19B8759E8(&buf, "ConstructRouteFromWaypoints");
    sub_19BA5D180(&buf, a4, &__p, 1);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    sub_19B9E080C();
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v7 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "CLTSP,constructRouteFromWaypoints,insufficient waypoints data", &buf, 2u);
  }

  v8 = sub_19B87DD40();
  if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v9 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::constructRouteFromWaypoints(NSUUID * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v9);
    if (v9 != &buf)
    {
      free(v9);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_19BA700E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  STACK[0x3A0] = &a45;
  sub_19B8F0E84(&STACK[0x3A0]);
  STACK[0x3A0] = &a58;
  sub_19B8F0E84(&STACK[0x3A0]);
  if (a62)
  {
    sub_19B8750F8(a62);
  }

  if (a68 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  _Unwind_Resume(a1);
}

os_log_t sub_19BA7031C()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

uint64_t sub_19BA7034C(void *a1, const std::string *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    if (!a1[1])
    {
      goto LABEL_16;
    }
  }

  else if (!*(a1 + 23))
  {
LABEL_16:
    *(v3 + 3) = CFAbsoluteTimeGetCurrent();
    v3[4] = 0xBFF0000000000000;
    v10 = mach_continuous_time();
    *(v3 + 5) = sub_19B994BF4(v10);
    sub_19BA3A418((v3 + 6));
    v3[185] = 0;
    *(v3 + 181) = 0u;
    *(v3 + 183) = 0u;
    *(v3 + 177) = 0u;
    *(v3 + 179) = 0u;
    *(v3 + 173) = 0u;
    *(v3 + 175) = 0u;
    result = v3[186];
    if (result)
    {

      return sub_19B99EE80(result, v2);
    }

    return result;
  }

  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v7 = size;
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (v5 != size)
  {
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    a1 = *a1;
  }

  v8 = a2->__r_.__value_.__r.__words[0];
  if (v7 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  result = memcmp(a1, a2, v5);
  if (result)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_19BA70434(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

id *sub_19BA70474(void *a1, _DWORD *a2, _DWORD *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  *a3 = 0;
  v30 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [a1 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        if ([v9 referenceFrame] == 2)
        {
          ++*a2;
          continue;
        }

        [v9 latitude];
        v11 = v10;
        [v9 longitude];
        v13 = v12;
        [v9 horizontalAccuracy];
        v15 = v14;
        [v9 latitude];
        v25 = v16;
        [v9 longitude];
        v24 = v17;
        [v9 horizontalAccuracy];
        v23 = v18;
        v19 = sub_19B94960C(&v30, [v9 referenceFrame], &v25, &v24, &v23, 5, v11, v13, v15);
        v20 = a3;
        if (v19 != 1)
        {
          if (v19 != 2)
          {
            continue;
          }

          [v9 updateLatitude:2 longitude:v25 horizontalAccuracy:v24 referenceFrame:v23];
          v20 = a2;
        }

        ++*v20;
      }

      v6 = [a1 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  result = sub_19B9495D4(&v30);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA70654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_19B9495D4(va);
  _Unwind_Resume(a1);
}

void *sub_19BA7068C(void *a1)
{
  v2 = a1[74];
  if (v2)
  {
    a1[75] = v2;
    operator delete(v2);
  }

  v3 = a1[71];
  if (v3)
  {
    a1[72] = v3;
    operator delete(v3);
  }

  v4 = a1[63];
  if (v4)
  {
    a1[64] = v4;
    operator delete(v4);
  }

  v5 = a1[19];
  if (v5)
  {
    a1[20] = v5;
    operator delete(v5);
  }

  return a1;
}

os_log_t sub_19BA706F0()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void sub_19BA70740(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6EF90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19BA70794(uint64_t a1)
{
  v2 = (a1 + 72);
  sub_19B9A3E4C(&v2);
  v2 = (a1 + 48);
  sub_19B8F1C84(&v2);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

id sub_19BA707FC(uint64_t ***a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *v3;
    v7 = v3[1];
    while (v6 != v7)
    {
      if (*v6)
      {
        [v5 addObject:{sub_19B94934C(*v6, 1)}];
      }

      v6 += 2;
    }

    [v2 addObjectsFromArray:v5];
    v3 += 3;
  }

  return v2;
}

void *sub_19BA708AC(void *a1, int a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if ([a1 count])
  {
    v38[0] = 0;
    v38[1] = 0;
    v37 = v38;
    v3 = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v4 = [a1 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v4)
    {
      v25 = *v34;
      do
      {
        v5 = 0;
        v26 = v4;
        do
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(a1);
          }

          v6 = *(*(&v33 + 1) + 8 * v5);
          [v6 getLength];
          v27 = v5;
          if (v7 > 0.0)
          {
            for (i = 0; [objc_msgSend(v6 "coordinates")] - 1 > i; ++i)
            {
              __p = 0;
              v31 = 0;
              v32 = 0;
              v29 = 0uLL;
              [objc_msgSend(objc_msgSend(v6 "coordinates")];
              *&v29 = v9;
              [objc_msgSend(objc_msgSend(v6 "coordinates")];
              *(&v29 + 1) = v10;
              v28 = 0uLL;
              [objc_msgSend(objc_msgSend(v6 "coordinates")];
              *&v28 = v11;
              [objc_msgSend(objc_msgSend(v6 "coordinates")];
              *(&v28 + 1) = v12;
              sub_19B8F1158(&__p, &v29);
              sub_19B8F1158(&__p, &v28);
              if (vabdd_f64(*&v29, *&v28) >= 0.0000001 || vabdd_f64(*(&v29 + 1), *(&v28 + 1)) >= 0.0000001)
              {
                v13 = [v6 roadID];
                v14 = v13;
                if ((v31 - __p) >= 0x11)
                {
                  v39 = v13;
                  sub_19B8F1FB4(0, 0, 0, &__p, &v39);
                  v14 = v39;
                }

                v15 = v38[0];
                if (a2 && v38[0])
                {
                  v16 = v38[0];
                  do
                  {
                    v17 = v16[4];
                    if (v14 >= v17)
                    {
                      if (v17 >= v14)
                      {
                        goto LABEL_29;
                      }

                      ++v16;
                    }

                    v16 = *v16;
                  }

                  while (v16);
                }

                if (!v38[0])
                {
LABEL_27:
                  operator new();
                }

                while (1)
                {
                  while (1)
                  {
                    v18 = v15;
                    v19 = v15[4];
                    if (v19 <= v14)
                    {
                      break;
                    }

                    v15 = *v18;
                    if (!*v18)
                    {
                      goto LABEL_27;
                    }
                  }

                  if (v19 >= v14)
                  {
                    break;
                  }

                  v15 = v18[1];
                  if (!v15)
                  {
                    goto LABEL_27;
                  }
                }

                *(v18 + 40) = 1;
                v20 = [CLTripSegmentRoadData alloc];
                v21 = [v6 roadID];
                v40[0] = [objc_msgSend(v6 "coordinates")];
                v40[1] = [objc_msgSend(v6 "coordinates")];
                [v3 addObject:{-[CLTripSegmentRoadData initWithRoadID:clRoadID:roadClass:formOfWay:coordinates:](v20, "initWithRoadID:clRoadID:roadClass:formOfWay:coordinates:", v21, v14, 0, 0, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v40, 2))}];
              }

LABEL_29:
              if (__p)
              {
                v31 = __p;
                operator delete(__p);
              }
            }
          }

          ++v5;
        }

        while (v27 + 1 != v26);
        v4 = [a1 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v4);
    }

    sub_19B9D8CB0(v38[0]);
  }

  else
  {
    v3 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_19BA70CD8(void *a1, void *a2)
{
  if (![a2 count])
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  while ((sub_19BA70D4C(a1, [a2 objectAtIndexedSubscript:v4]) & 1) == 0)
  {
    if ([a2 count] <= ++v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t sub_19BA70D4C(void *a1, void *a2)
{
  v4 = [a1 clRoadID];
  if (v4 == [a2 clRoadID])
  {
    return 1;
  }

  v6 = [objc_msgSend(a1 "coordinates")];
  v7 = [objc_msgSend(a2 "coordinates")];
  [objc_msgSend(objc_msgSend(a1 "coordinates")];
  v9 = v8;
  [objc_msgSend(objc_msgSend(a1 "coordinates")];
  v10 = v9 < 0.5;
  if (v11 >= 0.5)
  {
    v10 = 0;
  }

  return v6 == v7 && v10;
}

void sub_19BA70E38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 136);
  v4 = *(*a1 + 144);
  if (((v4 - v3) >> 4) >= 1)
  {
    v7 = 0;
    do
    {
      if (v3)
      {
        if (v7 < ((v4 - v3) >> 4))
        {
          v8 = *a2;
          v9 = *(v3 + 16 * v7);
          sub_19B9F5A50(v8, &v9, 1);
          v2 = *a1;
        }
      }

      ++v7;
      v3 = *(v2 + 136);
      v4 = *(v2 + 144);
    }

    while (v7 < ((v4 - v3) >> 4));
  }
}

uint64_t sub_19BA70ED0(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = [CLTripSegmentLocation alloc];
  v11 = -[CLTripSegmentLocation initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:](v10, "initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:", [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a2], 1, a3, a4, 10.0, a5, 10.0, 0.0, -1.0, 0.0, 0xBFF0000000000000);

  return [a1 addObject:v11];
}

void sub_19BA711D4(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_19BA7121C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6EFE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19BA71270(uint64_t a1)
{
  v2 = *(a1 + 1520);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  v3 = *(a1 + 1384);
  if (v3)
  {
    *(a1 + 1392) = v3;
    operator delete(v3);
  }

  sub_19BA71330((a1 + 1152));
  sub_19BA71330((a1 + 976));
  sub_19BA71330((a1 + 800));
  sub_19BA71330((a1 + 624));
  sub_19BA71330((a1 + 448));
  v4 = *(a1 + 336);
  if (v4)
  {
    *(a1 + 344) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 256);
  if (v5)
  {
    *(a1 + 264) = v5;
    operator delete(v5);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 47) < 0)
  {
    v6 = *(a1 + 24);

    operator delete(v6);
  }
}

void *sub_19BA71330(void *a1)
{
  v2 = a1[21];
  if (v2)
  {

    a1[21] = 0;
  }

  v3 = a1[18];
  if (v3)
  {
    a1[19] = v3;
    operator delete(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    a1[9] = v4;
    operator delete(v4);
  }

  return a1;
}

void *sub_19BA71388(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void sub_19BA71414(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6F030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19BA71468(uint64_t a1)
{
  v4 = (a1 + 248);
  sub_19B8F1C84(&v4);
  v2 = *(a1 + 64);
  if (v2)
  {
    [v2 dealloc];
  }

  v4 = (a1 + 176);
  sub_19B8F0E84(&v4);
  v3 = *(a1 + 168);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  v4 = (a1 + 136);
  sub_19B8F0E84(&v4);
  v4 = (a1 + 72);
  sub_19B8F0E84(&v4);
}

uint64_t sub_19BA714F0(uint64_t a1, _DWORD *a2)
{
  result = a2[1];
  v4 = result - *a2;
  if (result != *a2)
  {
    v5 = v4 + 1;
    if (v4 == -1)
    {

      return sub_19B91408C(a1);
    }

    else
    {
      v7 = __clz(v5);
      v8 = 31;
      if (((v5 << v7) & 0x7FFFFFFF) != 0)
      {
        v8 = 32;
      }

      v9 = v8 - v7;
      v10 = v9 >> 5;
      if ((v9 & 0x1F) != 0)
      {
        ++v10;
      }

      if (v10 <= v9)
      {
        v11 = 0xFFFFFFFF >> -(v9 / v10);
      }

      else
      {
        v11 = 0;
      }

      do
      {
        v12 = sub_19B91408C(a1) & v11;
      }

      while (v12 >= v5);
      return *a2 + v12;
    }
  }

  return result;
}

void sub_19BA715CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6F080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19BA73D60(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  v8 = a3;
  v327 = *MEMORY[0x1E69E9840];
  v10 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
  if ([objc_msgSend(objc_msgSend(a2 "lastObject")] == -1)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v16 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[setHeadAndTailIndicesForLocationArray] no overlap, last location is earlier than first IO.", buf, 2u);
    }

    v17 = sub_19B87DD40();
    if ((*(v17 + 160) & 0x80000000) != 0 && (*(v17 + 164) & 0x80000000) != 0 && (*(v17 + 168) & 0x80000000) != 0 && !*(v17 + 152))
    {
      goto LABEL_98;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 == -1)
    {
      goto LABEL_96;
    }

    goto LABEL_563;
  }

  if ([objc_msgSend(objc_msgSend(v8 "lastObject")] == -1)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v18 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[setHeadAndTailIndicesForLocationArray] no overlap, last IO is earlier than first location.", buf, 2u);
    }

    v19 = sub_19B87DD40();
    if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
    {
      goto LABEL_98;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 == -1)
    {
      goto LABEL_96;
    }

    goto LABEL_563;
  }

  v11 = [objc_msgSend(objc_msgSend(a2 "lastObject")];
  v12 = [a2 count];
  if (v11 != -1)
  {
    v13 = v12 - 1;
    while (v13)
    {
      v14 = [objc_msgSend(objc_msgSend(a2 objectAtIndexedSubscript:{v13--), "timestamp"), "compare:", objc_msgSend(objc_msgSend(v8, "lastObject"), "cfAbsTimestamp")}];
      if (v14 != 1)
      {
        v15 = v13 + 1;
        goto LABEL_27;
      }
    }

    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v54 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[setHeadAndTailIndicesForLocationArray] there is no location sample earlier than last IO sample.", buf, 2u);
    }

    v55 = sub_19B87DD40();
    if ((*(v55 + 160) & 0x80000000) != 0 && (*(v55 + 164) & 0x80000000) != 0 && (*(v55 + 168) & 0x80000000) != 0 && !*(v55 + 152))
    {
      goto LABEL_98;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 == -1)
    {
      goto LABEL_96;
    }

    goto LABEL_563;
  }

  v15 = v12 - 1;
LABEL_27:
  *(a1 + 48) = v15;
  if ([objc_msgSend(objc_msgSend(a2 "firstObject")] == 1)
  {
    i = 0;
  }

  else
  {
    for (i = 0; i < [a2 count]; ++i)
    {
      if ([objc_msgSend(objc_msgSend(a2 objectAtIndexedSubscript:{i), "timestamp"), "compare:", objc_msgSend(objc_msgSend(v8, "firstObject"), "cfAbsTimestamp")}] != -1)
      {
        break;
      }
    }

    if (i >= [a2 count])
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      v58 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v58, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[setHeadAndTailIndicesForLocationArray] there is no location sample later than first IO sample.", buf, 2u);
      }

      v59 = sub_19B87DD40();
      if ((*(v59 + 160) & 0x80000000) != 0 && (*(v59 + 164) & 0x80000000) != 0 && (*(v59 + 168) & 0x80000000) != 0 && !*(v59 + 152))
      {
        goto LABEL_98;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 == -1)
      {
        goto LABEL_96;
      }

      goto LABEL_563;
    }
  }

  *(a1 + 40) = i;
  if (i >= *(a1 + 48))
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v56 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[setHeadAndTailIndicesForLocationArray] head index can not be larger than or equal to tail index.", buf, 2u);
    }

    v57 = sub_19B87DD40();
    if ((*(v57 + 160) & 0x80000000) != 0 && (*(v57 + 164) & 0x80000000) != 0 && (*(v57 + 168) & 0x80000000) != 0 && !*(v57 + 152))
    {
      goto LABEL_98;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 == -1)
    {
LABEL_96:
      LOWORD(v298[0]) = 0;
      v60 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::setHeadAndTailIndicesForLocationArray(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable)", "CoreLocation: %s\n", v60);
      if (v60 != buf)
      {
        free(v60);
      }

LABEL_98:
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      v61 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[runRejector] No overlap time period between location and IO samples.", buf, 2u);
      }

      v62 = sub_19B87DD40();
      if ((*(v62 + 160) & 0x80000000) != 0 && (*(v62 + 164) & 0x80000000) != 0 && (*(v62 + 168) & 0x80000000) != 0 && !*(v62 + 152))
      {
        goto LABEL_110;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      LOWORD(v298[0]) = 0;
      v63 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::runRejector(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableIndexSet * _Nullable, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &, const BOOL)", "CoreLocation: %s\n", v63);
      goto LABEL_108;
    }

LABEL_563:
    dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    goto LABEL_96;
  }

  v280 = v8;
  v281 = a2;
  v270 = [MEMORY[0x1E696AD50] indexSet];
  if ((a7 & 1) == 0)
  {
    memset(__src, 0, 24);
    memset(v298, 0, sizeof(v298));
    v299 = 0u;
    v300 = 0u;
    v21 = [CLRouteAnalyzer extractRouteCorners:a2];
    v22 = [v21 countByEnumeratingWithState:v298 objects:buf count:16];
    if (v22)
    {
      v23 = *v298[2];
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v298[2] != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(v298[1] + j);
          [objc_msgSend(v25 objectForKey:{@"timestamp", "doubleValue"}];
          v27 = v26;
          [objc_msgSend(v25 objectForKey:{@"signedAngleDeg", "doubleValue"}];
          v29 = v28;
          [objc_msgSend(v25 objectForKey:{@"latitude", "doubleValue"}];
          v31 = v30;
          [objc_msgSend(v25 objectForKey:{@"longitude", "doubleValue"}];
          v33 = v32;
          v34 = [objc_msgSend(v25 objectForKey:{@"locationIndex", "unsignedLongValue"}];
          v35 = __src[1];
          if (__src[1] >= __src[2])
          {
            v37 = __src[0];
            v38 = __src[1] - __src[0];
            v39 = 0xCCCCCCCCCCCCCCCDLL * ((__src[1] - __src[0]) >> 3);
            v40 = v39 + 1;
            if (v39 + 1 > 0x666666666666666)
            {
              sub_19B8B8A40();
            }

            if (0x999999999999999ALL * ((__src[2] - __src[0]) >> 3) > v40)
            {
              v40 = 0x999999999999999ALL * ((__src[2] - __src[0]) >> 3);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((__src[2] - __src[0]) >> 3) >= 0x333333333333333)
            {
              v40 = 0x666666666666666;
            }

            if (v40)
            {
              sub_19B8B9C30(__src, v40);
            }

            v41 = (8 * ((__src[1] - __src[0]) >> 3));
            *v41 = v27;
            v41[1] = v29;
            v41[2] = v31;
            v41[3] = v33;
            v41[4] = v34;
            v36 = (40 * v39 + 40);
            v42 = v41 - v38;
            memcpy(v41 - v38, v37, v38);
            v43 = __src[0];
            __src[0] = v42;
            __src[1] = v36;
            __src[2] = 0;
            if (v43)
            {
              operator delete(v43);
            }
          }

          else
          {
            *__src[1] = v27;
            v35[1] = v29;
            v35[2] = v31;
            v35[3] = v33;
            v36 = v35 + 5;
            v35[4] = v34;
          }

          __src[1] = v36;
        }

        v22 = [v21 countByEnumeratingWithState:v298 objects:buf count:16];
      }

      while (v22);
    }

    v44 = 0;
    memset(__p, 0, 24);
    v8 = v280;
    while (v44 < [v280 count])
    {
      if ([objc_msgSend(v280 objectAtIndexedSubscript:{v44), "dotBiasChange"}] == 2)
      {
        v45 = __p[1];
        if (__p[1] >= __p[2])
        {
          v47 = __p[0];
          v48 = __p[1] - __p[0];
          v49 = (__p[1] - __p[0]) >> 3;
          v50 = v49 + 1;
          if ((v49 + 1) >> 61)
          {
            sub_19B8B8A40();
          }

          v51 = __p[2] - __p[0];
          if ((__p[2] - __p[0]) >> 2 > v50)
          {
            v50 = v51 >> 2;
          }

          if (v51 >= 0x7FFFFFFFFFFFFFF8)
          {
            v52 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v52 = v50;
          }

          if (v52)
          {
            sub_19B8D9954(__p, v52);
          }

          *(8 * v49) = v44;
          v46 = (8 * v49 + 8);
          memcpy(0, v47, v48);
          v53 = __p[0];
          __p[0] = 0;
          __p[1] = v46;
          __p[2] = 0;
          if (v53)
          {
            operator delete(v53);
          }
        }

        else
        {
          *__p[1] = v44;
          v46 = v45 + 8;
        }

        __p[1] = v46;
      }

      ++v44;
    }

    v66 = __p[0];
    if (__p[1] != __p[0])
    {
      v67 = 0;
      v68 = (__p[1] - __p[0]) >> 3;
      while (1)
      {
        v69 = &v66[8 * v67];
        if (v67)
        {
          v70 = *(v69 - 1);
        }

        else
        {
          v70 = 0;
        }

        v71 = *v69;
        if (v67 == v68 - 1)
        {
          v72 = ([v280 count] - 1);
        }

        else
        {
          v72 = *(v69 + 1);
        }

        v73 = sub_19BA77F94(v280, v70, v71);
        v74 = sub_19BA77F94(v280, v71, v72);
        if (v73 < 25.0 || v74 < 25.0)
        {
          goto LABEL_131;
        }

        v76 = sub_19BA77890(v280, v71, v71);
        [objc_msgSend(objc_msgSend(v280 objectAtIndexedSubscript:{v71), "cfAbsTimestamp"), "timeIntervalSinceReferenceDate"}];
        for (k = __src[0]; k != __src[1]; k += 5)
        {
          if (vabdd_f64(*k, v77) <= 5.0 && fabs(k[1]) >= 45.0)
          {
            goto LABEL_131;
          }
        }

        if ((v76 & 1) == 0)
        {
LABEL_131:
          v80 = sub_19BA77F94(v280, v71, v72);
          v81 = v80 <= 7.0 && v80 >= 0.0;
          if (!v81)
          {
            v79 = v67;
LABEL_138:
            [v270 addIndex:v71];
            if (v81)
            {
              [v270 addIndex:v72];
            }

            goto LABEL_153;
          }

          v79 = v67 + 1;
          if (v67 + 1 >= (((__p[1] - __p[0]) >> 3) - 1))
          {
            v82 = [v280 count] - 1;
          }

          else
          {
            v82 = *(__p[0] + v67 + 2);
          }

          v83 = sub_19BA77F94(v280, v70, v71);
          v84 = sub_19BA77F94(v280, v72, v82);
          if (v71 == v72)
          {
            v85 = 25.0;
          }

          else
          {
            v85 = 15.0;
          }

          if (v83 < v85 || v84 < v85)
          {
            goto LABEL_138;
          }

          v86 = sub_19BA77890(v280, v71, v72);
          v287 = v71;
          if (sub_19BA78234(v280, v71, &v287) && (v284 = v72, sub_19BA78320(v280, v72, &v284)) && sub_19BA786A8(v280, v287, v71, &v293) && sub_19BA786A8(v280, v72, v284, &v290))
          {
            v87 = sub_19BA7841C(*&v293, *(&v293 + 1), *&v294, *&v290, *(&v290 + 1), *&v291);
            if (!((*&v87 * 57.2957802 < 5.0) | v86 & 1))
            {
              goto LABEL_138;
            }
          }

          else if ((v86 & 1) == 0)
          {
            goto LABEL_138;
          }
        }

        else
        {
          v79 = v67;
        }

LABEL_153:
        v67 = v79 + 1;
        v66 = __p[0];
        v68 = (__p[1] - __p[0]) >> 3;
        v88 = v79 + 1 >= v68;
        v10 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
        if (v88)
        {
          goto LABEL_161;
        }
      }
    }

    v10 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
LABEL_161:
    if (v66)
    {
      __p[1] = v66;
      operator delete(v66);
    }

    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }
  }

  if ([v8 count])
  {
    v89 = 0;
    v90 = 0;
    v91 = -1;
    do
    {
      v92 = v89;
      if ([objc_msgSend(objc_msgSend(v280 objectAtIndexedSubscript:{v91 + 1), "cfAbsTimestamp"), "compare:", objc_msgSend(objc_msgSend(a2, "objectAtIndexedSubscript:", *(a1 + 40)), "timestamp")}] != -1)
      {
        break;
      }

      v93 = [v280 count];
      v89 = v90++;
      v92 = v91 + 1;
      v94 = v91 + 2;
      ++v91;
    }

    while (v94 < v93);
  }

  else
  {
    v92 = 0;
  }

  v95 = *(a1 + 40);
  v268 = [MEMORY[0x1E696AD50] indexSet];
  if (v92 < [v280 count])
  {
    v278 = v92;
    while (1)
    {
      [objc_msgSend(objc_msgSend(v280 objectAtIndexedSubscript:{v92), "cfAbsTimestamp"), "timeIntervalSinceDate:", objc_msgSend(objc_msgSend(v280, "objectAtIndexedSubscript:", v278), "cfAbsTimestamp")}];
      v275 = v96;
      v272 = *(a1 + 72);
      if (!([v270 containsIndex:v92] & 1 | (v96 >= v272)) && v92 != objc_msgSend(v280, "count") - 1)
      {
        goto LABEL_345;
      }

      ++*(a1 + 56);
      v97 = [v281 count];
      while (v95 < v97 && [objc_msgSend(objc_msgSend(v281 objectAtIndexedSubscript:{v95), "timestamp"), "compare:", objc_msgSend(objc_msgSend(v280, "objectAtIndexedSubscript:", v278), "cfAbsTimestamp")}] == -1)
      {
        v97 = [v281 count];
        ++v95;
      }

      if (v95 >= [v281 count])
      {
        break;
      }

      v98 = v95;
      v99 = v95;
      if (v95 <= *(a1 + 48))
      {
        while ([objc_msgSend(objc_msgSend(v280 objectAtIndexedSubscript:{v92), "cfAbsTimestamp"), "compare:", objc_msgSend(objc_msgSend(v281, "objectAtIndexedSubscript:", v99), "timestamp")}] == 1)
        {
          v100 = v99 + 1;
          v98 = v99;
          v99 = v100;
          if (v100 > *(a1 + 48))
          {
            v98 = v100 - 1;
            break;
          }
        }
      }

      v273 = [MEMORY[0x1E696AD50] indexSet];
      obj = [v281 subarrayWithRange:{v95, v98 - v95 + 1}];
      v271 = [v280 subarrayWithRange:?];
      v269 = [MEMORY[0x1E696AD50] indexSet];
      v293 = 0;
      v294 = 0;
      v295 = 0;
      sub_19BA7767C(&v293, [obj count]);
      v290 = 0;
      v291 = 0;
      v292 = 0;
      sub_19B9CA9C0(&v290, [obj count]);
      v287 = 0;
      v288 = 0;
      v289 = 0;
      sub_19B9CA9C0(&v287, [obj count]);
      [objc_msgSend(obj "firstObject")];
      v102 = v101;
      [objc_msgSend(obj "firstObject")];
      v104 = v103;
      [objc_msgSend(obj "firstObject")];
      v106 = v105;
      v318 = 0u;
      v319 = 0u;
      memset(__src, 0, sizeof(__src));
      v107 = [obj countByEnumeratingWithState:__src objects:v298 count:16];
      if (!v107)
      {
        v109 = -1.0;
LABEL_308:
        if (*(v10 + 235) != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v208 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          *&buf[4] = v109;
          _os_log_impl(&dword_19B873000, v208, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[constructLocationTrajectory] not enough displacement along the location horizon, %{public}.2f.", buf, 0xCu);
        }

        v209 = sub_19B87DD40();
        if ((*(v209 + 160) & 0x80000000) == 0 || (*(v209 + 164) & 0x80000000) == 0 || (*(v209 + 168) & 0x80000000) == 0 || *(v209 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (*(v10 + 235) != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          LODWORD(__p[0]) = 134349056;
          *(__p + 4) = *&v109;
          v207 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::constructLocationTrajectory(NSArray<CLTripSegmentLocation *> * _Nonnull, std::vector<CMVector<double, kNumberOfDimensions>> &, std::vector<double> &, std::vector<double> &)", "CoreLocation: %s\n", v207);
          goto LABEL_318;
        }

        goto LABEL_320;
      }

      v108 = *__src[2];
      v109 = -1.0;
      do
      {
        for (m = 0; m != v107; ++m)
        {
          if (*__src[2] != v108)
          {
            objc_enumerationMutation(obj);
          }

          v111 = *(__src[1] + m);
          [v111 latitude];
          v113 = v112;
          [v111 longitude];
          v115 = sub_19BA0C01C(a1, *&v102, v104, v113, v114, 0.0);
          v284 = 0;
          if (v115 >= v109)
          {
            v109 = v115;
          }

          v296 = 0;
          v297 = 0.0;
          [v111 latitude];
          v117 = v116;
          [v111 longitude];
          v119 = v118;
          [v111 altitude];
          if (!sub_19BA0BE88(a1, &v284, &v297, &v296, *&v102, v104, v106, v117, v119, v120))
          {
            if (*(v10 + 235) != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
            }

            v199 = qword_1EAFE4760;
            if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
            {
              [v111 latitude];
              v201 = v200;
              [v111 longitude];
              *buf = 134546433;
              *&buf[4] = v201;
              v321 = 2053;
              *&v322 = v202;
              v323 = 2053;
              v324 = v102;
              v325 = 2053;
              v326 = v104;
              _os_log_impl(&dword_19B873000, v199, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[constructLocationTrajectory] Failed to convert from lat/lon to NWU failed. location sample,latitude,%{sensitive}.7f, longitude,%{sensitive}.7f,selected origin,latitude,%{sensitive}.7f,longitude,%{sensitive}.7f.", buf, 0x2Au);
            }

            v203 = sub_19B87DD40();
            if ((*(v203 + 160) & 0x80000000) == 0 || (*(v203 + 164) & 0x80000000) == 0 || (*(v203 + 168) & 0x80000000) == 0 || *(v203 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (*(v10 + 235) != -1)
              {
                dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
              }

              [v111 latitude];
              v205 = v204;
              [v111 longitude];
              LODWORD(__p[0]) = 134546433;
              *(__p + 4) = v205;
              WORD2(__p[1]) = 2053;
              *(&__p[1] + 6) = v206;
              HIWORD(__p[2]) = 2053;
              __p[3] = v102;
              v315 = 2053;
              v316 = v104;
              v207 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::constructLocationTrajectory(NSArray<CLTripSegmentLocation *> * _Nonnull, std::vector<CMVector<double, kNumberOfDimensions>> &, std::vector<double> &, std::vector<double> &)", "CoreLocation: %s\n", v207);
LABEL_318:
              if (v207 != buf)
              {
                free(v207);
              }
            }

LABEL_320:
            if (*(v10 + 235) != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
            }

            v210 = qword_1EAFE4760;
            if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v210, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[selectInliers] contruct location trajectory failed.", buf, 2u);
            }

            v211 = sub_19B87DD40();
            if ((*(v211 + 160) & 0x80000000) != 0 && (*(v211 + 164) & 0x80000000) != 0 && (*(v211 + 168) & 0x80000000) != 0 && !*(v211 + 152))
            {
              v213 = 0;
              v214 = 1.0;
              v215 = 0.0;
            }

            else
            {
              bzero(buf, 0x65CuLL);
              if (*(v10 + 235) != -1)
              {
                dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
              }

              LOWORD(v298[0]) = 0;
              v212 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::selectInliers(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableIndexSet * _Nonnull, double &, double &)", "CoreLocation: %s\n", v212);
              if (v212 != buf)
              {
                free(v212);
              }

              v213 = 0;
              v214 = 1.0;
              v215 = 0.0;
            }

            goto LABEL_332;
          }

          v121 = -v297;
          v122 = v294;
          if (v294 >= v295)
          {
            v124 = (v294 - v293) >> 4;
            v125 = v124 + 1;
            if ((v124 + 1) >> 60)
            {
              sub_19B8B8A40();
            }

            v126 = v295 - v293;
            if ((v295 - v293) >> 3 > v125)
            {
              v125 = v126 >> 3;
            }

            if (v126 >= 0x7FFFFFFFFFFFFFF0)
            {
              v127 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v127 = v125;
            }

            if (v127)
            {
              sub_19B9CACF4(v127);
            }

            v128 = 16 * v124;
            *v128 = v284;
            *(v128 + 8) = v121;
            v123 = 16 * v124 + 16;
            v129 = (16 * v124 - (v294 - v293));
            memcpy((v128 - (v294 - v293)), v293, v294 - v293);
            v130 = v293;
            v293 = v129;
            v294 = v123;
            v295 = 0;
            if (v130)
            {
              operator delete(v130);
            }
          }

          else
          {
            *v294 = v284;
            *(v122 + 1) = v121;
            v123 = (v122 + 16);
          }

          v294 = v123;
          v10 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
          [objc_msgSend(v111 "timestamp")];
          *buf = v131;
          sub_19B8F518C(&v290, buf);
          [v111 horizontalAccuracy];
          if (v132 > 0.0 && ([v111 horizontalAccuracy], v133 <= 150.0))
          {
            [v111 horizontalAccuracy];
            v134 = 1.0 / v135;
          }

          else
          {
            v134 = 2.22507386e-308;
          }

          *buf = v134;
          sub_19B8F518C(&v287, buf);
        }

        v107 = [obj countByEnumeratingWithState:__src objects:v298 count:16];
      }

      while (v107);
      if (v109 < 50.0)
      {
        goto LABEL_308;
      }

      memset(__p, 0, 24);
      sub_19BA7767C(__p, (v291 - v290) >> 3);
      v284 = 0;
      v285 = 0;
      v286 = 0;
      sub_19BA77720(&v284, (v291 - v290) >> 3);
      v136 = [v271 objectAtIndexedSubscript:0];
      [objc_msgSend(v136 "cfAbsTimestamp")];
      v266 = v291;
      if (v290 == v291)
      {
        v175 = -1.0;
LABEL_354:
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v219 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          *&buf[4] = v175;
          _os_log_impl(&dword_19B873000, v219, OS_LOG_TYPE_DEFAULT, "[CLLocationOutlierRejector]:[constructIOTrajecotry] not enough displacement in IO horizon, %{public}.2f.", buf, 0xCu);
        }

        v220 = sub_19B87DD40();
        if (*(v220 + 160) > 1 || *(v220 + 164) > 1 || *(v220 + 168) > 1 || *(v220 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          LODWORD(v298[0]) = 134349056;
          *(v298 + 4) = *&v175;
          v221 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLLocationOutlierRejector::constructIOTrajectory(NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, const std::vector<double> &, std::vector<CMVector<double, kNumberOfDimensions>> &, std::vector<BOOL> &)", "CoreLocation: %s\n", v221);
          goto LABEL_375;
        }

LABEL_377:
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v224 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v224, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[selectInliers] contruct IO trajectory failed.", buf, 2u);
        }

        v225 = sub_19B87DD40();
        if ((*(v225 + 160) & 0x80000000) == 0 || (*(v225 + 164) & 0x80000000) == 0 || (*(v225 + 168) & 0x80000000) == 0 || *(v225 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          LOWORD(v298[0]) = 0;
          v226 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::selectInliers(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableIndexSet * _Nonnull, double &, double &)", "CoreLocation: %s\n", v226);
LABEL_387:
          if (v226 != buf)
          {
            free(v226);
          }
        }

LABEL_389:
        v213 = 0;
        v214 = 1.0;
        v215 = 0.0;
        goto LABEL_390;
      }

      v138 = v137;
      v139 = v290;
      v140 = 0;
      v141 = 0;
      v267 = -1.0;
      v142 = 0.0;
      v143 = 0.0;
      v144 = 0.0;
      v145 = 0.0;
      do
      {
        if (v140 < [v271 count] - 1 && (objc_msgSend(objc_msgSend(v136, "cfAbsTimestamp"), "timeIntervalSinceReferenceDate"), v146 <= *v139))
        {
          v147 = 0;
          v161 = v140 + 1;
          do
          {
            v140 = v161;
            [objc_msgSend(v136 "cfAbsTimestamp")];
            v138 = v162;
            v136 = [v271 objectAtIndexedSubscript:v140];
            v163 = [objc_msgSend(v136 "deltaPosition_m")];
            v144 = 0.0;
            if ([objc_msgSend(v136 "deltaPosition_m")])
            {
              [objc_msgSend(v136 "deltaPosition_m")];
              v144 = v164;
            }

            v145 = 0.0;
            if ([objc_msgSend(v136 "deltaPosition_m")])
            {
              [objc_msgSend(v136 "deltaPosition_m")];
              v145 = v165;
            }

            v141 += v163 ^ 1u;
            v142 = v142 + v144;
            v143 = v143 + v145;
            v147 |= [v136 dotBiasChange] == 2;
            if (v140 >= [v271 count] - 1)
            {
              break;
            }

            [objc_msgSend(v136 "cfAbsTimestamp")];
            v161 = v140 + 1;
          }

          while (v166 <= *v139);
        }

        else
        {
          v147 = 0;
        }

        v148 = hypot(v142, v143);
        v149 = v267;
        if (v148 >= v267)
        {
          v149 = v148;
        }

        v267 = v149;
        v10 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
        [objc_msgSend(v136 "cfAbsTimestamp")];
        v151 = v150;
        if (*&v138 >= v150)
        {
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          v222 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349312;
            *&buf[4] = v138;
            v321 = 2050;
            *&v322 = v151;
            _os_log_impl(&dword_19B873000, v222, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[constructIOTrajectory] IO time is not monotonically increasing,prevIOTime,%{public}.1f,currentIOTime,%{public}.1f", buf, 0x16u);
          }

          v223 = sub_19B87DD40();
          if ((*(v223 + 160) & 0x80000000) == 0 || (*(v223 + 164) & 0x80000000) == 0 || (*(v223 + 168) & 0x80000000) == 0 || *(v223 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
            }

            LODWORD(v298[0]) = 134349312;
            *(v298 + 4) = v138;
            WORD2(v298[1]) = 2050;
            *(&v298[1] + 6) = *&v151;
            v221 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::constructIOTrajectory(NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, const std::vector<double> &, std::vector<CMVector<double, kNumberOfDimensions>> &, std::vector<BOOL> &)", "CoreLocation: %s\n", v221);
LABEL_375:
            if (v221 != buf)
            {
              free(v221);
            }
          }

          goto LABEL_377;
        }

        v152 = *v139 - *&v138;
        v153 = v142 - v144 + v144 * v152 / (v150 - *&v138);
        v154 = v143 - v145 + v145 * v152 / (v150 - *&v138);
        v155 = __p[1];
        if (__p[1] >= __p[2])
        {
          v157 = (__p[1] - __p[0]) >> 4;
          v158 = v157 + 1;
          if ((v157 + 1) >> 60)
          {
            sub_19B8B8A40();
          }

          v159 = __p[2] - __p[0];
          if ((__p[2] - __p[0]) >> 3 > v158)
          {
            v158 = v159 >> 3;
          }

          if (v159 >= 0x7FFFFFFFFFFFFFF0)
          {
            v160 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v160 = v158;
          }

          if (v160)
          {
            sub_19B9CACF4(v160);
          }

          v167 = (16 * v157);
          *v167 = v153;
          v167[1] = v154;
          v156 = (16 * v157 + 16);
          v168 = (16 * v157 - (__p[1] - __p[0]));
          memcpy(v167 - (__p[1] - __p[0]), __p[0], __p[1] - __p[0]);
          v169 = __p[0];
          __p[0] = v168;
          __p[1] = v156;
          __p[2] = 0;
          if (v169)
          {
            operator delete(v169);
          }
        }

        else
        {
          *__p[1] = v153;
          v155[1] = v154;
          v156 = v155 + 2;
        }

        __p[1] = v156;
        v170 = v285;
        v10 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
        if (v285 == v286 << 6)
        {
          if ((v285 + 1) < 0)
          {
            sub_19B8B8A40();
          }

          if (v285 > 0x3FFFFFFFFFFFFFFELL)
          {
            v171 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else if (v286 << 7 <= (v285 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v171 = (v285 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          else
          {
            v171 = v286 << 7;
          }

          sub_19BA77720(&v284, v171);
          v170 = v285;
        }

        v285 = v170 + 1;
        v172 = v170 >> 6;
        v173 = 1 << v170;
        if (v147)
        {
          v174 = *(v284 + v172) | v173;
        }

        else
        {
          v174 = *(v284 + v172) & ~v173;
        }

        *(v284 + v172) = v174;
        ++v139;
      }

      while (v139 != v266);
      v175 = v267;
      if (v267 < 50.0)
      {
        goto LABEL_354;
      }

      if (![v271 count])
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v227 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v227, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[constructIOTrajecotry] empty inertial odometry data batch.", buf, 2u);
        }

        v228 = sub_19B87DD40();
        if ((*(v228 + 160) & 0x80000000) == 0 || (*(v228 + 164) & 0x80000000) == 0 || (*(v228 + 168) & 0x80000000) == 0 || *(v228 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          LOWORD(v298[0]) = 0;
          v221 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::constructIOTrajectory(NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, const std::vector<double> &, std::vector<CMVector<double, kNumberOfDimensions>> &, std::vector<BOOL> &)", "CoreLocation: %s\n", v221);
          goto LABEL_375;
        }

        goto LABEL_377;
      }

      v176 = v141 / [v271 count];
      if (v176 > 0.6)
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v229 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          *&buf[4] = v176;
          _os_log_impl(&dword_19B873000, v229, OS_LOG_TYPE_DEFAULT, "[CLLocationOutlierRejector]:[constructIOTrajecotry] high invalid IO sample ratio, %{public}.2f.", buf, 0xCu);
        }

        v230 = sub_19B87DD40();
        if (*(v230 + 160) > 1 || *(v230 + 164) > 1 || *(v230 + 168) > 1 || *(v230 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          LODWORD(v298[0]) = 134349056;
          *(v298 + 4) = *&v176;
          v221 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLLocationOutlierRejector::constructIOTrajectory(NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, const std::vector<double> &, std::vector<CMVector<double, kNumberOfDimensions>> &, std::vector<BOOL> &)", "CoreLocation: %s\n", v221);
          goto LABEL_375;
        }

        goto LABEL_377;
      }

      if (__p[1] - __p[0] != v294 - v293 || (__p[1] - __p[0]) >> 4 != (v291 - v290) >> 3)
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v231 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349568;
          *&buf[4] = (__p[1] - __p[0]) >> 4;
          v321 = 2050;
          v322 = (v294 - v293) >> 4;
          v323 = 2050;
          v324 = (v291 - v290) >> 3;
          _os_log_impl(&dword_19B873000, v231, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[selectInliers] vector sizes are not equal: io,%{public}zu,location,%{public}zu,timestamp,%{public}zu", buf, 0x20u);
        }

        v232 = sub_19B87DD40();
        if ((*(v232 + 160) & 0x80000000) == 0 || (*(v232 + 164) & 0x80000000) == 0 || (*(v232 + 168) & 0x80000000) == 0 || *(v232 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          LODWORD(v298[0]) = 134349568;
          *(v298 + 4) = ((__p[1] - __p[0]) >> 4);
          WORD2(v298[1]) = 2050;
          *(&v298[1] + 6) = ((v294 - v293) >> 4);
          HIWORD(v298[2]) = 2050;
          v298[3] = ((v291 - v290) >> 3);
          v226 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::selectInliers(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableIndexSet * _Nonnull, double &, double &)", "CoreLocation: %s\n", v226);
          goto LABEL_387;
        }

        goto LABEL_389;
      }

      memset(v298, 0, 24);
      *(&v300 + 1) = 0;
      v301 = 0u;
      v302 = 0u;
      v303 = 0u;
      v304 = 0u;
      v305 = 0u;
      v306 = 0u;
      v307 = 0u;
      v308 = 0u;
      v309 = 0u;
      *&v310 = 100;
      v311 = 1.0e-10;
      v177 = 5;
      v313 = 0;
      while (2)
      {
        v312 = v177;
        if (!sub_19BA78CE0(v298, &v293, __p, &v287))
        {
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          v239 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v239, OS_LOG_TYPE_ERROR, "[RobustUmeyama]: initialization failed.", buf, 2u);
          }

          v240 = sub_19B87DD40();
          if ((*(v240 + 160) & 0x80000000) == 0 || (*(v240 + 164) & 0x80000000) == 0 || (*(v240 + 168) & 0x80000000) == 0 || *(v240 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4758 == -1)
            {
              goto LABEL_437;
            }

            goto LABEL_509;
          }

LABEL_439:
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          v236 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349056;
            *&buf[4] = v177;
            _os_log_impl(&dword_19B873000, v236, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[selectInliers] robust umeyama failed, residual threshold, %{public}.1f .", buf, 0xCu);
          }

          v237 = sub_19B87DD40();
          if ((*(v237 + 160) & 0x80000000) == 0 || (*(v237 + 164) & 0x80000000) == 0 || (*(v237 + 168) & 0x80000000) == 0 || *(v237 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
            }

            LODWORD(__src[0]) = 134349056;
            *(__src + 4) = v177;
            v238 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::selectInliers(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableIndexSet * _Nonnull, double &, double &)", "CoreLocation: %s\n", v238);
LABEL_449:
            if (v238 != buf)
            {
              free(v238);
            }
          }

LABEL_451:
          v213 = 0;
          v214 = 1.0;
          v215 = 0.0;
          goto LABEL_452;
        }

        sub_19BA7BF70(&v307, v298[0], v298[1], (v298[1] - v298[0]) >> 4);
        sub_19B9CA9C0(&v308 + 1, v302);
        if (v310 != 0.0)
        {
          v178 = 0;
          while (1)
          {
            v313 = v178;
            *&v309 = *(&v308 + 1);
            if (v302)
            {
              v179 = 0;
              do
              {
                v180 = vsubq_f64(*(v293 + v179), *(v307 + 16 * v179));
                v181 = sqrt(vaddvq_f64(vmulq_f64(v180, v180)));
                if (v181 <= v312)
                {
                  sub_19B8F518C(&v308 + 1, &qword_19BA8DBB8);
                }

                else
                {
                  *buf = v312 / v181;
                  sub_19B8F518C(&v308 + 1, buf);
                }

                ++v179;
              }

              while (v179 < v302);
            }

            if (!sub_19BA78CE0(v298, &v293, __p, &v308 + 1))
            {
              break;
            }

            if (v302)
            {
              v182 = 0.0;
              v183 = v298[0];
              v184 = v307;
              v185 = v302;
              do
              {
                v186 = *v183++;
                v187 = v186;
                v188 = *v184++;
                v189 = vsubq_f64(v187, v188);
                v189.f64[0] = sqrt(vaddvq_f64(vmulq_f64(v189, v189)));
                v182 = v182 + v189.f64[0] * v189.f64[0];
                --v185;
              }

              while (v185);
            }

            else
            {
              v182 = 0.0;
            }

            if (v182 / v302 >= v311)
            {
              sub_19BA7BF70(&v307, v298[0], v298[1], (v298[1] - v298[0]) >> 4);
              if (++v178 < *&v310)
              {
                continue;
              }
            }

            goto LABEL_274;
          }

          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          v233 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v233, OS_LOG_TYPE_ERROR, "[RobustUmeyama]: iteration failed.", buf, 2u);
          }

          v234 = sub_19B87DD40();
          if ((*(v234 + 160) & 0x80000000) == 0 || (*(v234 + 164) & 0x80000000) == 0 || (*(v234 + 168) & 0x80000000) == 0 || *(v234 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4758 == -1)
            {
LABEL_437:
              LOWORD(__src[0]) = 0;
              v235 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "BOOL CMRobustUmeyama<double, 2>::runMEstimator(const std::vector<CMVector<T, N>> &, const std::vector<CMVector<T, N>> &, const std::vector<T> &) [T = double, N = 2]", "CoreLocation: %s\n", v235);
              if (v235 != buf)
              {
                free(v235);
              }

              goto LABEL_439;
            }

LABEL_509:
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
            goto LABEL_437;
          }

          goto LABEL_439;
        }

LABEL_274:
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v190 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_INFO))
        {
          *buf = 134349312;
          *&buf[4] = v313;
          v321 = 2050;
          *&v322 = v310;
          _os_log_impl(&dword_19B873000, v190, OS_LOG_TYPE_INFO, "[RobustUmeyama]:number of iterations, %{public}zu, maximum allowed, %{public}zu.", buf, 0x16u);
        }

        v191 = sub_19B87DD40();
        if (*(v191 + 160) > 1 || *(v191 + 164) > 1 || *(v191 + 168) > 1 || *(v191 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          LODWORD(__src[0]) = 134349312;
          *(__src + 4) = v313;
          WORD2(__src[1]) = 2050;
          *(&__src[1] + 6) = *&v310;
          v192 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CMRobustUmeyama<double, 2>::runMEstimator(const std::vector<CMVector<T, N>> &, const std::vector<CMVector<T, N>> &, const std::vector<T> &) [T = double, N = 2]", "CoreLocation: %s\n", v192);
          if (v192 != buf)
          {
            free(v192);
          }
        }

        v193 = v309;
        v194 = *(&v308 + 1);
        if (v309 != *(&v308 + 1))
        {
          v195 = 0;
          do
          {
            if (*(v194 + 8 * v195) >= 1.0)
            {
              [v269 addIndex:v195];
              v193 = v309;
              v194 = *(&v308 + 1);
            }

            ++v195;
          }

          while (v195 < (v193 - v194) >> 3);
        }

        v196 = [v269 count];
        v197 = *(&v300 + 1);
        if (*(&v300 + 1) <= 0.1 || *(&v300 + 1) >= 4.5 || (v198 = v196 / ((v294 - v293) >> 4), v197 = 0.15, v198 < 0.15))
        {
          [v269 removeAllIndexes];
          v88 = v177 >= 0x10;
          v177 += 5;
          if (v88)
          {
            goto LABEL_492;
          }

          continue;
        }

        break;
      }

      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      v241 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
      {
        v242 = *(a1 + 56);
        *buf = 134349568;
        *&buf[4] = v242;
        v321 = 2050;
        *&v322 = v177;
        v323 = 2050;
        v324 = *&v198;
        _os_log_impl(&dword_19B873000, v241, OS_LOG_TYPE_DEFAULT, "[CLLocationOutlierRejector]:[selectInliers] inliers are selected for batch count, %{public}zu, with residual threshold, %{public}.1f and inlier ratio, %{public}.2f", buf, 0x20u);
      }

      v243 = sub_19B87DD40();
      if (*(v243 + 160) > 1 || *(v243 + 164) > 1 || *(v243 + 168) > 1 || *(v243 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v244 = *(a1 + 56);
        LODWORD(__src[0]) = 134349568;
        *(__src + 4) = v244;
        WORD2(__src[1]) = 2050;
        *(&__src[1] + 6) = v177;
        HIWORD(__src[2]) = 2050;
        __src[3] = *&v198;
        v245 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLLocationOutlierRejector::selectInliers(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableIndexSet * _Nonnull, double &, double &)", "CoreLocation: %s\n", v245);
        if (v245 != buf)
        {
          free(v245);
        }
      }

LABEL_492:
      if (![v269 count])
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v246 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
        {
          v247 = *(a1 + 56);
          *buf = 134349056;
          *&buf[4] = v247;
          _os_log_impl(&dword_19B873000, v246, OS_LOG_TYPE_DEFAULT, "[CLLocationOutlierRejector]:[selectInliers] no inlier is selected for batch count, %{public}zu", buf, 0xCu);
        }

        v248 = sub_19B87DD40();
        if (*(v248 + 160) > 1 || *(v248 + 164) > 1 || *(v248 + 168) > 1 || *(v248 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          v249 = *(a1 + 56);
          LODWORD(__src[0]) = 134349056;
          *(__src + 4) = v249;
          v238 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLLocationOutlierRejector::selectInliers(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableIndexSet * _Nonnull, double &, double &)", "CoreLocation: %s\n", v238);
          goto LABEL_449;
        }

        goto LABEL_451;
      }

      v215 = atan2(*&v299, *&v298[3]);
      v213 = 1;
      v214 = *(&v300 + 1);
LABEL_452:
      if (*(&v308 + 1))
      {
        *&v309 = *(&v308 + 1);
        operator delete(*(&v308 + 1));
      }

      if (v307)
      {
        *(&v307 + 1) = v307;
        operator delete(v307);
      }

      if (*(&v305 + 1))
      {
        *&v306 = *(&v305 + 1);
        operator delete(*(&v305 + 1));
      }

      if (v304)
      {
        *(&v304 + 1) = v304;
        operator delete(v304);
      }

      if (*(&v302 + 1))
      {
        *&v303 = *(&v302 + 1);
        operator delete(*(&v302 + 1));
      }

      if (v298[0])
      {
        v298[1] = v298[0];
        operator delete(v298[0]);
      }

      v10 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
LABEL_390:
      if (v284)
      {
        operator delete(v284);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

LABEL_332:
      if (v287)
      {
        v288 = v287;
        operator delete(v287);
      }

      if (v290)
      {
        v291 = v290;
        operator delete(v290);
      }

      if (v293)
      {
        v294 = v293;
        operator delete(v293);
      }

      if (v213)
      {
        [v273 removeAllIndexes];
        [v273 addIndexesInRange:{0, objc_msgSend(obj, "count")}];
        [v273 removeIndexes:v269];
        v283[0] = MEMORY[0x1E69E9820];
        v283[1] = 3221225472;
        v283[2] = sub_19BA77670;
        v283[3] = &unk_1E753ED90;
        v283[4] = v268;
        v283[5] = v95;
        [v273 enumerateIndexesUsingBlock:v283];
        if (v92 >= v278)
        {
          v216 = v278;
          do
          {
            v298[0] = v216;
            *buf = v298;
            *(sub_19BA788D8(a5, v216) + 3) = v215;
            v298[0] = v216;
            *buf = v298;
            *(sub_19BA788D8(a6, v216++) + 3) = v214;
          }

          while ((v92 + 1) != v216);
        }
      }

      v217 = v98;
      v218 = v92;
      if (v275 >= v272)
      {
        v218 = &v278[(fmin(*(a1 + 64), 1.0) * (v92 - v278))];
        v217 = v95;
      }

      v278 = v218;
      v95 = v217;
      if (v98 == *(a1 + 48))
      {
        goto LABEL_522;
      }

LABEL_345:
      if (++v92 >= [v280 count])
      {
        goto LABEL_522;
      }
    }

    if (*(v10 + 235) != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v250 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *&v251 = COERCE_DOUBLE([v281 count]);
      *buf = 134349312;
      *&buf[4] = v95;
      v321 = 2050;
      v322 = v251;
      _os_log_impl(&dword_19B873000, v250, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[runRejector] first location index,%{public}zu, higher than location size,%{public}zu.", buf, 0x16u);
    }

    v252 = sub_19B87DD40();
    if ((*(v252 + 160) & 0x80000000) == 0 || (*(v252 + 164) & 0x80000000) == 0 || (*(v252 + 168) & 0x80000000) == 0 || *(v252 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (*(v10 + 235) != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      v253 = [v281 count];
      LODWORD(v298[0]) = 134349312;
      *(v298 + 4) = v95;
      WORD2(v298[1]) = 2050;
      *(&v298[1] + 6) = v253;
      v254 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::runRejector(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableIndexSet * _Nullable, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &, const BOOL)", "CoreLocation: %s\n", v254);
      if (v254 != buf)
      {
        free(v254);
      }
    }
  }

LABEL_522:
  [a4 removeAllIndexes];
  [a4 addIndexesInRange:{0, objc_msgSend(v281, "count")}];
  [a4 removeIndexes:v268];
  if ([a4 count] <= 1)
  {
    if (*(v10 + 235) != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v255 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
    {
      v256 = [a4 count];
      *buf = 134349056;
      *&buf[4] = v256;
      _os_log_impl(&dword_19B873000, v255, OS_LOG_TYPE_DEFAULT, "[CLLocationOutlierRejector]:[runRejector] count of set of inliers is too few, %{public}zu.", buf, 0xCu);
    }

    v257 = sub_19B87DD40();
    if (*(v257 + 160) <= 1 && *(v257 + 164) <= 1 && *(v257 + 168) <= 1 && !*(v257 + 152))
    {
      goto LABEL_110;
    }

    bzero(buf, 0x65CuLL);
    if (*(v10 + 235) != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v258 = [a4 count];
    LODWORD(v298[0]) = 134349056;
    *(v298 + 4) = v258;
    v63 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLLocationOutlierRejector::runRejector(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableIndexSet * _Nullable, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &, const BOOL)", "CoreLocation: %s\n", v63);
LABEL_108:
    if (v63 != buf)
    {
      free(v63);
    }

LABEL_110:
    result = 0;
    goto LABEL_111;
  }

  v259 = sub_19B8D9388(v281, 10.0);
  if (!(v259 | ((sub_19B8D9444([v281 objectsAtIndexes:a4]) & 1) == 0)))
  {
    if (*(v10 + 235) != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v264 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v264, OS_LOG_TYPE_DEFAULT, "[CLLocationOutlierRejector]:[runRejector] selected inliers are too sparse in space.", buf, 2u);
    }

    v265 = sub_19B87DD40();
    if (*(v265 + 160) <= 1 && *(v265 + 164) <= 1 && *(v265 + 168) <= 1 && !*(v265 + 152))
    {
      goto LABEL_110;
    }

    bzero(buf, 0x65CuLL);
    if (*(v10 + 235) != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    LOWORD(v298[0]) = 0;
    v63 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLLocationOutlierRejector::runRejector(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableIndexSet * _Nullable, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &, const BOOL)", "CoreLocation: %s\n", v63);
    goto LABEL_108;
  }

  [objc_msgSend(v281 "firstObject")];
  if (v260 > 0.0)
  {
    [objc_msgSend(v281 "firstObject")];
    if (v261 < 30.0)
    {
      [a4 addIndex:0];
    }
  }

  [objc_msgSend(v281 "lastObject")];
  if (v262 > 0.0)
  {
    [objc_msgSend(v281 "lastObject")];
    if (v263 < 30.0)
    {
      [a4 addIndex:{objc_msgSend(v281, "count") - 1}];
    }
  }

  result = 1;
LABEL_111:
  v65 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA77524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  sub_19BA78854(&a53);
  if (__p)
  {
    operator delete(__p);
  }

  v54 = STACK[0x280];
  if (STACK[0x280])
  {
    STACK[0x288] = v54;
    operator delete(v54);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (a48)
  {
    operator delete(a48);
  }

  _Unwind_Resume(a1);
}

void *sub_19BA7767C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      sub_19B9CACF4(a2);
    }

    sub_19B8B8A40();
  }

  return result;
}

uint64_t sub_19BA77720(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_19B8D9954(&v2, ((a2 - 1) >> 6) + 1);
    }

    sub_19B8B8A40();
  }

  return result;
}

void sub_19BA77848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19BA77860()
{
  result = os_log_create("com.apple.locationd.Motion", "PedTrajectorySmoothing");
  qword_1EAFE4760 = result;
  return result;
}

uint64_t sub_19BA77890(void *a1, unint64_t a2, unint64_t a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v55 = a2;
  result = sub_19BA78234(a1, a2, &v55);
  if (!result)
  {
    goto LABEL_46;
  }

  v54 = a3;
  result = sub_19BA78320(a1, a3, &v54);
  if (!result)
  {
    goto LABEL_46;
  }

  v8 = v54;
  v7 = v55;
  if (v55 >= v54)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v38 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      v39 = [a1 count];
      *buf = 134218496;
      v63 = v7;
      v64 = 2048;
      v65 = *&v8;
      v66 = 2048;
      v67 = v39;
      _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[isTrajectoryStraightBeforeAndAfterFlag] start idx equal or greater than end idx.startIdx,%zu,endIdx,%zu,ioCount,%zu", buf, 0x20u);
    }

    v40 = sub_19B87DD40();
    if ((*(v40 + 160) & 0x80000000) != 0 && (*(v40 + 164) & 0x80000000) != 0 && (*(v40 + 168) & 0x80000000) != 0 && !*(v40 + 152))
    {
      goto LABEL_45;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v41 = [a1 count];
    v56 = 134218496;
    v57 = v7;
    v58 = 2048;
    v59 = *&v8;
    v60 = 2048;
    v61 = v41;
    v42 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL (anonymous namespace)::isTrajectoryStraightBeforeAndAfterFlag(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, size_t, size_t)", "CoreLocation: %s\n", v42);
    if (v42 == buf)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v9 = v55 + 1;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  do
  {
    v15 = [a1 objectAtIndexedSubscript:v9];
    if ([objc_msgSend(v15 "deltaPosition_m")])
    {
      [objc_msgSend(v15 "deltaPosition_m")];
      v12 = v12 + v16;
      [objc_msgSend(v15 "deltaPosition_m")];
      v13 = v13 + v17;
      [objc_msgSend(v15 "deltaPosition_m")];
      v19 = v18;
      if (v9 >= a2)
      {
        [objc_msgSend(v15 "deltaPosition_m")];
        v14 = v14 + hypot(v19, v21);
      }

      else
      {
        v10 = v10 + v18;
        [objc_msgSend(v15 "deltaPosition_m")];
        v11 = v11 + v20;
      }
    }

    ++v9;
  }

  while (v9 <= v8);
  v22 = 0;
  v23 = v10;
  v24 = v11;
  *v53 = v23;
  *&v53[1] = v24;
  v53[2] = 0;
  v25 = v12;
  v26 = v13;
  *v52 = v25;
  *&v52[1] = v26;
  v52[2] = 0;
  v27 = 0.0;
  do
  {
    v27 = v27 + (*&v52[v22] * *&v52[v22]);
    ++v22;
  }

  while (v22 != 3);
  v28 = 0;
  v29 = 0.0;
  do
  {
    v29 = v29 + (*&v53[v28] * *&v53[v28]);
    ++v28;
  }

  while (v28 != 3);
  if (sqrtf(v27) <= sqrtf(v29))
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v43 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEBUG))
    {
      v44 = [a1 count];
      *buf = 134218496;
      v63 = a2;
      v64 = 2048;
      v65 = *&a3;
      v66 = 2048;
      v67 = v44;
      _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_DEBUG, "[CLLocationOutlierRejector]:[isTrajectoryStraightBeforeAndAfterFlag] trajecotry does not go straight.firstFlagIdx,%zu,secondFlagIdx,%zu,ioCount,%zu", buf, 0x20u);
    }

    v45 = sub_19B87DD40();
    if (*(v45 + 160) <= 1 && *(v45 + 164) <= 1 && *(v45 + 168) <= 1 && !*(v45 + 152))
    {
      goto LABEL_45;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v46 = [a1 count];
    v56 = 134218496;
    v57 = a2;
    v58 = 2048;
    v59 = *&a3;
    v60 = 2048;
    v61 = v46;
    goto LABEL_43;
  }

  if (a2 == a3 && v14 > 5.0)
  {
    v30 = v12 - v10;
    v31 = v11;
    v32 = hypot(v30, v13 - v11);
    v24 = v31;
    v33 = v32 / v14;
    if (v32 / v14 < 0.65)
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      v48 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEBUG))
      {
        v49 = [a1 count];
        *buf = 134218496;
        v63 = a2;
        v64 = 2048;
        v65 = v33;
        v66 = 2048;
        v67 = v49;
        _os_log_impl(&dword_19B873000, v48, OS_LOG_TYPE_DEBUG, "[CLLocationOutlierRejector]:[isTrajectoryStraightBeforeAndAfterFlag] trajectory is not straight after the flag.flagIdx,%zu,straightness,%.2f,ioCount,%zu", buf, 0x20u);
      }

      v50 = sub_19B87DD40();
      if (*(v50 + 160) <= 1 && *(v50 + 164) <= 1 && *(v50 + 168) <= 1 && !*(v50 + 152))
      {
        goto LABEL_45;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      v51 = [a1 count];
      v56 = 134218496;
      v57 = a2;
      v58 = 2048;
      v59 = v33;
      v60 = 2048;
      v61 = v51;
LABEL_43:
      v42 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL (anonymous namespace)::isTrajectoryStraightBeforeAndAfterFlag(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, size_t, size_t)", "CoreLocation: %s\n", v42);
      if (v42 == buf)
      {
LABEL_45:
        result = 0;
        goto LABEL_46;
      }

LABEL_44:
      free(v42);
      goto LABEL_45;
    }
  }

  v34 = v10;
  v35 = v13;
  v36 = fabsf(COERCE_FLOAT(COERCE_UNSIGNED_INT64(sub_19BA7841C(v34, v24, 0.0, v25, v35, 0.0))));
  v37 = 20.0;
  if (a2 == a3)
  {
    v37 = 7.0;
  }

  result = v36 * 57.2957802 < v37;
LABEL_46:
  v47 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_19BA77F94(void *a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v22 = *MEMORY[0x1E69E9840];
  if (a2 <= a3 && [a1 count] - 1 >= a3)
  {
    v9 = 0.0;
    if (v4 != a3)
    {
      while (++v4 <= a3)
      {
        v10 = [a1 objectAtIndexedSubscript:v4];
        if ([objc_msgSend(v10 "deltaPosition_m")])
        {
          [objc_msgSend(v10 "deltaPosition_m")];
          v12 = v11;
          [objc_msgSend(v10 "deltaPosition_m")];
          v9 = v9 + hypot(v12, v13);
        }
      }
    }
  }

  else
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v6 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v17 = v4;
      v18 = 2048;
      v19 = a3;
      v20 = 2048;
      v21 = [a1 count];
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[computDistanceBetweenTwoIOSamples] computation failed.startIdx,%zu,endIdx,%zu,ioCount,%zu", buf, 0x20u);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || (v9 = -1.0, *(v7 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      [a1 count];
      v8 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "double (anonymous namespace)::computDistanceBetweenTwoIOSamples(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, size_t, size_t)", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }

      v9 = -1.0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sub_19BA78234(void *a1, uint64_t a2, uint64_t *a3)
{
  *a3 = a2;
  if (!a2)
  {
    return 0;
  }

  v6 = 0.0;
  v7 = a2;
  do
  {
    v8 = v6 >= 8.0 && (a2 - v7) > 9;
    v9 = v8;
    if (v8)
    {
      break;
    }

    v10 = [a1 objectAtIndexedSubscript:?];
    v11 = 0.0;
    v12 = 0.0;
    if ([objc_msgSend(v10 "deltaPosition_m")])
    {
      [objc_msgSend(v10 "deltaPosition_m")];
      v12 = v13;
    }

    if ([objc_msgSend(v10 "deltaPosition_m")])
    {
      [objc_msgSend(v10 "deltaPosition_m")];
      v11 = v14;
    }

    v6 = v6 + hypot(v12, v11);
    v7 = *a3 - 1;
    v15 = *a3 == 1;
    *a3 = v7;
  }

  while (!v15);
  return v9;
}

BOOL sub_19BA78320(void *a1, unint64_t a2, unint64_t *a3)
{
  *a3 = a2;
  if ([a1 count] > a2)
  {
    v6 = 0.0;
    do
    {
      v7 = *a3;
      if (v6 >= 8.0 && *a3 - a2 > 9)
      {
        break;
      }

      v9 = [a1 objectAtIndexedSubscript:?];
      v10 = 0.0;
      v11 = 0.0;
      if ([objc_msgSend(v9 "deltaPosition_m")])
      {
        [objc_msgSend(v9 "deltaPosition_m")];
        v11 = v12;
      }

      if ([objc_msgSend(v9 "deltaPosition_m")])
      {
        [objc_msgSend(v9 "deltaPosition_m")];
        v10 = v13;
      }

      v6 = v6 + hypot(v11, v10);
      v14 = *a3 + 1;
      *a3 = v14;
    }

    while (v14 < [a1 count]);
  }

  v15 = *a3;
  return v15 < [a1 count];
}

double sub_19BA7841C(float a1, float a2, float a3, float a4, float a5, float a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = 0;
  v39 = a1;
  v40 = a2;
  v41 = a3;
  v13 = 0.0;
  do
  {
    v13 = v13 + (*(&v39 + v12) * *(&v39 + v12));
    v12 += 4;
  }

  while (v12 != 12);
  if (sqrtf(v13) > 0.00000011921)
  {
    v14 = 0;
    v15 = 0.0;
    do
    {
      v15 = v15 + (*(&v39 + v14) * *(&v39 + v14));
      v14 += 4;
    }

    while (v14 != 12);
    v16 = sqrtf(v15);
    v11 = v11 / v16;
    v10 = a2 / v16;
    v9 = a3 / v16;
  }

  v17 = 0;
  v39 = a4;
  v40 = a5;
  v18 = 0.0;
  v41 = a6;
  do
  {
    v18 = v18 + (*(&v39 + v17) * *(&v39 + v17));
    v17 += 4;
  }

  while (v17 != 12);
  if (sqrtf(v18) > 0.00000011921)
  {
    v19 = 0;
    v20 = 0.0;
    do
    {
      v20 = v20 + (*(&v39 + v19) * *(&v39 + v19));
      v19 += 4;
    }

    while (v19 != 12);
    v21 = sqrtf(v20);
    v8 = a4 / v21;
    v7 = a5 / v21;
    v6 = a6 / v21;
  }

  v22 = ((v9 * v6) + (v10 * v7)) + (v11 * v8);
  v23 = 1.0;
  if (v22 < 1.0)
  {
    v23 = -1.0;
    if (v22 > -1.0)
    {
      v23 = ((v9 * v6) + (v10 * v7)) + (v11 * v8);
    }
  }

  *&result = acosf(v23);
  if (*&result < 0.7854)
  {
    v25 = 0;
    v39 = (v10 * v6) - (v9 * v7);
    v40 = (v9 * v8) - (v11 * v6);
    v41 = (v11 * v7) - (v10 * v8);
    v26 = 0.0;
    do
    {
      v26 = v26 + (*(&v39 + v25) * *(&v39 + v25));
      v25 += 4;
    }

    while (v25 != 12);
    if (sqrtf(v26) >= 1.0)
    {
      goto LABEL_34;
    }

    v27 = 0;
    v38[0] = (v10 * v6) - (v9 * v7);
    v38[1] = (v9 * v8) - (v11 * v6);
    v28 = 0.0;
    v38[2] = (v11 * v7) - (v10 * v8);
    do
    {
      v28 = v28 + (v38[v27] * v38[v27]);
      ++v27;
    }

    while (v27 != 3);
    v29 = sqrtf(v28);
    v30 = -1.0;
    if (v29 > -1.0)
    {
LABEL_34:
      v31 = 0;
      v37[0] = (v10 * v6) - (v9 * v7);
      v37[1] = (v9 * v8) - (v11 * v6);
      v32 = 0.0;
      v37[2] = (v11 * v7) - (v10 * v8);
      do
      {
        v32 = v32 + (v37[v31] * v37[v31]);
        ++v31;
      }

      while (v31 != 3);
      v33 = sqrtf(v32);
      v30 = 1.0;
      if (v33 < 1.0)
      {
        v34 = 0;
        v36[0] = (v10 * v6) - (v9 * v7);
        v36[1] = (v9 * v8) - (v11 * v6);
        v35 = 0.0;
        v36[2] = (v11 * v7) - (v10 * v8);
        do
        {
          v35 = v35 + (v36[v34] * v36[v34]);
          ++v34;
        }

        while (v34 != 3);
        v30 = sqrtf(v35);
      }
    }

    *&result = asinf(v30);
  }

  return result;
}

BOOL sub_19BA786A8(void *a1, unint64_t a2, unint64_t a3, float *a4)
{
  v6 = a3 - a2;
  if (a3 > a2)
  {
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = a2;
    do
    {
      [objc_msgSend(objc_msgSend(a1 objectAtIndexedSubscript:{v12), "quaternion"), "X"}];
      *&v14 = v13;
      [objc_msgSend(objc_msgSend(a1 objectAtIndexedSubscript:{v12), "quaternion"), "Y"}];
      *&v16 = v15;
      [objc_msgSend(objc_msgSend(a1 objectAtIndexedSubscript:{v12), "quaternion"), "Z"}];
      *&v18 = v17;
      [objc_msgSend(objc_msgSend(a1 objectAtIndexedSubscript:{v12), "quaternion"), "W"}];
      v19.f32[0] = *v19.i64;
      v31.i64[0] = __PAIR64__(v16, v14);
      v31.i64[1] = __PAIR64__(v19.u32[0], v18);
      sub_19B9CC28C(&v31, v19);
      v9 = v9 + sub_19B9CC1DC(v31.f32);
      v10 = v10 + v20;
      v11 = v11 + v21;
      ++v12;
    }

    while (a3 != v12);
    v22 = 0;
    v23 = v9 / v6;
    v24 = v10 / v6;
    v25 = v11 / v6;
    v31.i64[0] = __PAIR64__(LODWORD(v24), LODWORD(v23));
    v31.f32[2] = v25;
    v26 = 0.0;
    do
    {
      v26 = v26 + (v31.f32[v22] * v31.f32[v22]);
      ++v22;
    }

    while (v22 != 3);
    if (sqrtf(v26) > 0.00000011921)
    {
      v27 = 0;
      v28 = 0.0;
      do
      {
        v28 = v28 + (v31.f32[v27] * v31.f32[v27]);
        ++v27;
      }

      while (v27 != 3);
      v29 = sqrtf(v28);
      v23 = v23 / v29;
      v24 = v24 / v29;
      v25 = v25 / v29;
    }

    *a4 = v23;
    a4[1] = v24;
    a4[2] = v25;
  }

  return a3 > a2;
}

uint64_t sub_19BA78854(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (v2)
  {
    *(a1 + 240) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 184);
  if (v4)
  {
    *(a1 + 192) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 160);
  if (v5)
  {
    *(a1 + 168) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    *(a1 + 112) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

void *sub_19BA788D8(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

BOOL sub_19BA78CE0(uint64_t a1, char **a2, char **a3, double **a4)
{
  v191 = *MEMORY[0x1E69E9840];
  v6 = a2[1] - *a2;
  if (v6 != a3[1] - *a3)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v12 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      v13 = (a2[1] - *a2) >> 4;
      v14 = (a3[1] - *a3) >> 4;
      *buf = 134349312;
      *&buf[4] = v13;
      *&buf[12] = 2050;
      *&buf[14] = v14;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "[Umeyama]: reference size, %{public}zu !=  toBeAligned size %{public}zu.", buf, 0x16u);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) != 0 && (*(v15 + 164) & 0x80000000) != 0 && (*(v15 + 168) & 0x80000000) != 0 && !*(v15 + 152))
    {
      goto LABEL_168;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v16 = (a2[1] - *a2) >> 4;
    v17 = (a3[1] - *a3) >> 4;
    *v188 = 134349312;
    *&v188[4] = v16;
    *&v188[12] = 2050;
    *&v188[14] = v17;
    v11 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::runAlgorithm(const std::vector<CMVector<T, N>> &, const std::vector<CMVector<T, N>> &, const std::vector<T> &) [T = double, N = 2]", "CoreLocation: %s\n", v11);
LABEL_166:
    if (v11 != buf)
    {
      free(v11);
    }

    goto LABEL_168;
  }

  v8 = v6 >> 4;
  *(a1 + 96) = v6 >> 4;
  if (v6 >> 4 == 1)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v18 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 96);
      *buf = 134349312;
      *&buf[4] = v19;
      *&buf[12] = 2050;
      *&buf[14] = 2;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "[Umeyama]: number of observations, %{public}zu < dimension %{public}zu.", buf, 0x16u);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      goto LABEL_168;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v21 = *(a1 + 96);
    *v188 = 134349312;
    *&v188[4] = v21;
    *&v188[12] = 2050;
    *&v188[14] = 2;
    v11 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::runAlgorithm(const std::vector<CMVector<T, N>> &, const std::vector<CMVector<T, N>> &, const std::vector<T> &) [T = double, N = 2]", "CoreLocation: %s\n", v11);
    goto LABEL_166;
  }

  if (!v8)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v9 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "[Umeyama]: number of observations is 0.", buf, 2u);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) != 0 && (*(v10 + 164) & 0x80000000) != 0 && (*(v10 + 168) & 0x80000000) != 0 && !*(v10 + 152))
    {
      goto LABEL_168;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    *v188 = 0;
    v11 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::runAlgorithm(const std::vector<CMVector<T, N>> &, const std::vector<CMVector<T, N>> &, const std::vector<T> &) [T = double, N = 2]", "CoreLocation: %s\n", v11);
    goto LABEL_166;
  }

  sub_19BA7767C(a1, v8);
  v23 = *a4;
  v24 = a4[1];
  v25 = 0.0;
  if (*a4 == v24)
  {
LABEL_50:
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v35 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *&buf[4] = v25;
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_INFO, "[Umeyama]:sum of weights are not positive, %{public}.2f", buf, 0xCu);
    }

    v36 = sub_19B87DD40();
    if (*(v36 + 160) <= 1 && *(v36 + 164) <= 1 && *(v36 + 168) <= 1 && !*(v36 + 152))
    {
      goto LABEL_168;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    *v188 = 134349056;
    *&v188[4] = v25;
    v11 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CMUmeyama<double, 2>::checkAndNormalizeWeights(const std::vector<T> &) [T = double, N = 2]", "CoreLocation: %s\n", v11);
    goto LABEL_166;
  }

  v26 = *a4;
  while (1)
  {
    v27 = *v26;
    if (*v26 <= 0.0)
    {
      break;
    }

    v25 = v25 + v27;
    if (++v26 == v24)
    {
      if (v25 <= 0.000001)
      {
        goto LABEL_50;
      }

      v28 = (a1 + 104);
      if ((a1 + 104) == a4)
      {
        v39 = *(a1 + 112);
      }

      else
      {
        v29 = v24 - v23;
        v30 = *(a1 + 120);
        v31 = *(a1 + 104);
        if (v30 - v31 < (v24 - v23))
        {
          v32 = v29 >> 3;
          if (v31)
          {
            *(a1 + 112) = v31;
            operator delete(v31);
            v30 = 0;
            *v28 = 0;
            *(a1 + 112) = 0;
            *(a1 + 120) = 0;
          }

          if (!(v32 >> 61))
          {
            v33 = v30 >> 2;
            if (v30 >> 2 <= v32)
            {
              v33 = v29 >> 3;
            }

            if (v30 >= 0x7FFFFFFFFFFFFFF8)
            {
              v34 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v33;
            }

            sub_19B8FD05C(a1 + 104, v34);
          }

          sub_19B8F3F74();
        }

        v40 = *(a1 + 112);
        v41 = v40 - v31;
        if (v40 - v31 >= v29)
        {
          memmove(v31, v23, v24 - v23);
          v39 = &v31[v29];
        }

        else
        {
          if (v40 != v31)
          {
            memmove(*(a1 + 104), v23, v40 - v31);
            v40 = *(a1 + 112);
          }

          v42 = v23 + v41;
          v43 = v24 - (v23 + v41);
          if (v43)
          {
            memmove(v40, v42, v43);
          }

          v39 = &v40[v43];
        }

        *(a1 + 112) = v39;
      }

      v44 = *v28;
      if (*v28 != v39)
      {
        v45 = *v28;
        do
        {
          *v45 = 1.0 / v25 * *v45;
          ++v45;
        }

        while (v45 != v39);
      }

      v46 = *(a1 + 96);
      *(a1 + 128) = *&sub_19BA7AED4(v46, v44, *a2);
      *(a1 + 136) = v47;
      *(a1 + 144) = *&sub_19BA7AED4(v46, v44, *a3);
      *(a1 + 152) = v48;
      v49 = (a1 + 160);
      if ((a1 + 160) != a2)
      {
        sub_19BA7BF70((a1 + 160), *a2, a2[1], (a2[1] - *a2) >> 4);
      }

      v50 = (a1 + 184);
      if ((a1 + 184) != a3)
      {
        sub_19BA7BF70((a1 + 184), *a3, a3[1], (a3[1] - *a3) >> 4);
      }

      if (!*(a1 + 96))
      {
        goto LABEL_105;
      }

      v51 = 0;
      do
      {
        v52 = 0;
        v53 = 1;
        do
        {
          v54 = v53;
          v55 = *sub_19B94F084(a1 + 128, v52);
          v56 = sub_19B94F084(*v49 + 16 * v51, v52);
          *v56 = *v56 - v55;
          v57 = *sub_19B94F084(a1 + 144, v52);
          v58 = sub_19B94F084(*v50 + 16 * v51, v52);
          v53 = 0;
          *v58 = *v58 - v57;
          v52 = 1;
        }

        while ((v54 & 1) != 0);
        ++v51;
        v59 = *(a1 + 96);
      }

      while (v51 < v59);
      memset(buf, 0, 32);
      if (v59)
      {
        v60 = 0;
        do
        {
          v61 = 0;
          v62 = (*v50 + 16 * v60);
          *v188 = vmulq_n_f64(*(*v49 + 16 * v60), *(*(a1 + 104) + 8 * v60));
          v63 = 1;
          do
          {
            v64 = v63;
            v65 = sub_19B950834(v188, v61);
            v66 = *v62;
            v67 = sub_19B8D7BD0(buf, v61, 0);
            *v67 = *v67 + v65 * v66;
            v68 = sub_19B950834(v188, v61);
            v69 = v62[1];
            v70 = sub_19B8D7BD0(buf, v61, 1uLL);
            v63 = 0;
            *v70 = *v70 + v68 * v69;
            v61 = 1;
          }

          while ((v64 & 1) != 0);
          ++v60;
        }

        while (v60 < *(a1 + 96));
        v72 = *buf;
        v71 = *&buf[8];
        v73 = *&buf[24];
        v74 = *&buf[16];
      }

      else
      {
LABEL_105:
        v73 = 0;
        v74 = 0;
        v71 = 0;
        v72 = 0;
      }

      v181[0] = v72;
      v181[1] = v71;
      v181[2] = v74;
      v181[3] = v73;
      *v188 = v72;
      *&v188[8] = v74;
      *&v188[16] = v71;
      v189 = v73;
      v75 = 0;
      *buf = sub_19B94F70C(v188, v181);
      *&buf[8] = v76;
      *&buf[16] = v77;
      *&buf[24] = v78;
      memset(v178, 0, sizeof(v178));
      v79 = 1;
      do
      {
        v80 = v79;
        *sub_19B8D7BD0(v178, v75, v75) = 0x3FF0000000000000;
        v81 = *sub_19B8D7BD0(buf, v75, v75);
        *sub_19B94F084(&v186, v75) = v81;
        v82 = *sub_19B8D7BD0(buf, v75, v75);
        *sub_19B94F084(&v179, v75) = v82;
        v83 = sub_19B94F084(&v183, v75);
        v79 = 0;
        *v83 = 0;
        v75 = 1;
      }

      while ((v80 & 1) != 0);
      v84 = 0;
      do
      {
        if (*&buf[16] == 0.0)
        {
          break;
        }

        v85 = *&buf[16] >= 0.0 ? *&buf[16] : -*&buf[16];
        v86 = v84 >= 3 ? 0.0 : v85 * 0.200000003 * 0.25;
        v87 = v85 * 100.0;
        if (v84 < 4)
        {
          goto LABEL_286;
        }

        v88 = *&v186;
        v89 = v87 + *&v186;
        if (v87 + *&v186 < 0.0)
        {
          v89 = -(v87 + *&v186);
        }

        if (*&v186 < 0.0)
        {
          v88 = -*&v186;
        }

        if (v89 != v88)
        {
          goto LABEL_286;
        }

        v90 = *(&v186 + 1);
        v91 = v87 + *(&v186 + 1);
        if (v87 + *(&v186 + 1) < 0.0)
        {
          v91 = -(v87 + *(&v186 + 1));
        }

        if (*(&v186 + 1) < 0.0)
        {
          v90 = -*(&v186 + 1);
        }

        if (v91 == v90)
        {
          *&buf[16] = 0;
        }

        else
        {
LABEL_286:
          if (v85 > v86)
          {
            v92 = 0;
            v93 = *(&v186 + 1) - *&v186;
            v94 = v87 + *(&v186 + 1) - *&v186;
            if (v94 < 0.0)
            {
              v94 = -v94;
            }

            v95 = -v93;
            if (v93 >= 0.0)
            {
              v95 = *(&v186 + 1) - *&v186;
            }

            v96 = v93 * 0.5 / *&buf[16];
            v97 = -v96;
            v98 = v96 < 0.0;
            if (v96 >= 0.0)
            {
              v97 = v93 * 0.5 / *&buf[16];
            }

            v99 = 1.0 / (v97 + sqrt(v96 * v96 + 1.0));
            if (v98)
            {
              v99 = -v99;
            }

            v100 = *&buf[16] / v93;
            if (v94 == v95)
            {
              v101 = v100;
            }

            else
            {
              v101 = v99;
            }

            v102 = 1.0 / sqrt(v101 * v101 + 1.0);
            v103 = v101 * v102;
            v104 = v101 * v102 / (v102 + 1.0);
            v183.f64[0] = v183.f64[0] - *&buf[16] * v101;
            v183.f64[1] = *&buf[16] * v101 + v183.f64[1];
            *&v186 = *&v186 - *&buf[16] * v101;
            *(&v186 + 1) = *(&v186 + 1) + *&buf[16] * v101;
            *&buf[16] = 0;
            v105 = -(v101 * v102);
            v106 = 1;
            do
            {
              v107 = v106;
              v108 = *sub_19B8D7BD0(v178, v92, 0);
              v109 = *sub_19B8D7BD0(v178, v92, 1uLL);
              *sub_19B8D7BD0(v178, v92, 0) = v108 + v105 * (v109 + v108 * v104);
              v110 = sub_19B8D7BD0(v178, v92, 1uLL);
              v106 = 0;
              *v110 = v109 + v103 * (v108 - v109 * v104);
              v92 = 1;
            }

            while ((v107 & 1) != 0);
          }
        }

        ++v84;
        v179 = vaddq_f64(v183, v179);
        v186 = v179;
        v183 = 0uLL;
      }

      while (v84 != 10);
      *buf = v186;
      v186 = xmmword_19BA8C830;
      *&v179.f64[0] = buf;
      sub_19BA7B000(&v186, v187, &v179, 2, 1);
      v111 = *sub_19B94F084(buf, v186);
      v112 = *sub_19B94F084(buf, *(&v186 + 1));
      v113 = v186;
      v114 = *sub_19B8D7BD0(v178, 0, v186);
      v115 = *sub_19B8D7BD0(v178, 1uLL, v113);
      v116 = *(&v186 + 1);
      v117 = *sub_19B8D7BD0(v178, 0, *(&v186 + 1));
      v118 = sub_19B8D7BD0(v178, 1uLL, v116);
      v119 = 0;
      v120 = 0;
      v121 = *v118;
      v178[0].i64[0] = v114;
      v178[0].i64[1] = v115;
      v178[1].i64[0] = v117;
      v178[1].i64[1] = v121;
      v182[0] = v111;
      v182[1] = v112;
      while (1)
      {
        v122 = v119;
        v123 = *sub_19B94F084(v182, v120);
        *sub_19B94F084(&v183, v120) = sqrt(v123);
        if (*sub_19B94F084(&v183, v120) < 0.000001)
        {
          break;
        }

        v119 = 1;
        v120 = 1;
        if (v122)
        {
          if (v183.f64[1] == v183.f64[0])
          {
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
            }

            v124 = qword_1EAFE4760;
            if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v124, OS_LOG_TYPE_ERROR, "[Umeyama]:repeated singular value", buf, 2u);
            }

            v125 = sub_19B87DD40();
            if ((*(v125 + 160) & 0x80000000) == 0 || (*(v125 + 164) & 0x80000000) == 0 || (*(v125 + 168) & 0x80000000) == 0 || *(v125 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE4758 == -1)
              {
LABEL_155:
                LOWORD(v186) = 0;
                v11 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::performSingularValueDecomposition(const CMMatrix<T, N> &, CMMatrix<T, N> &, CMVector<T, N> &, CMMatrix<T, N> &) const [T = double, N = 2]", "CoreLocation: %s\n", v11);
                goto LABEL_166;
              }

LABEL_279:
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
              goto LABEL_155;
            }
          }

          else
          {
            sub_19BA7A9A4(v178);
            v133 = v132;
            v134 = -v132;
            if (v133 >= 0.0)
            {
              v134 = v133;
            }

            v135 = v134 + -1.0;
            if (v135 < 0.0)
            {
              v135 = -v135;
            }

            if (v135 <= 0.000001)
            {
              if (sub_19BA7AF14(v178))
              {
                v138 = 0;
                *&v186 = sub_19B94F70C(v181, v178);
                *(&v186 + 1) = v139;
                v140 = 1;
                v187[0] = v141;
                v187[1] = v142;
                do
                {
                  v143 = v140;
                  v144 = *sub_19B94F084(&v183, v138);
                  v145 = *sub_19B8D7BD0(&v186, 0, v138);
                  v146 = 1.0 / v144;
                  *sub_19B8D7BD0(&v179, 0, v138) = v146 * v145;
                  v147 = *sub_19B8D7BD0(&v186, 1uLL, v138);
                  v148 = sub_19B8D7BD0(&v179, 1uLL, v138);
                  v140 = 0;
                  *v148 = v146 * v147;
                  v138 = 1;
                }

                while ((v143 & 1) != 0);
                sub_19BA7A9A4(&v179);
                v150 = v149;
                v151 = -v149;
                if (v150 >= 0.0)
                {
                  v151 = v150;
                }

                v152 = v151 + -1.0;
                if (v152 < 0.0)
                {
                  v152 = -v152;
                }

                if (v152 <= 0.000001)
                {
                  if (sub_19BA7AF14(&v179))
                  {
                    v157 = 0;
                    v158 = 1;
                    while (1)
                    {
                      v159 = v158;
                      if (*sub_19B94F084(&v183, v157) < 0.000001)
                      {
                        break;
                      }

                      v158 = 0;
                      v157 = 1;
                      if ((v159 & 1) == 0)
                      {
                        sub_19BA7A9A4(&v179);
                        v161 = v160;
                        sub_19BA7A9A4(v178);
                        if (v161 * v162 < 0.0)
                        {
                          v180 = vnegq_f64(v180);
                          v183.f64[1] = -v183.f64[1];
                        }

                        *&v188[8] = vextq_s8(*(v178 + 8), *(v178 + 8), 8uLL);
                        *v188 = v178[0].i64[0];
                        v189 = v178[1].i64[1];
                        *(a1 + 24) = sub_19B94F70C(&v179, v188);
                        *(a1 + 32) = v163;
                        *(a1 + 40) = v164;
                        *(a1 + 48) = v165;
                        if (sub_19BA7AF14(a1 + 24))
                        {
                          sub_19BA7A9A4((a1 + 24));
                          v167 = v166;
                          v168 = v166 + -1.0;
                          if (v168 < 0.0)
                          {
                            v168 = -v168;
                          }

                          if (v168 < 0.000001)
                          {
                            result = sub_19BA7AAA0(a1, v183.f64[0], v183.f64[1]);
                            if (result)
                            {
                              sub_19BA7ACD8(a1);
                              sub_19BA7AD1C(a1, a3);
                              sub_19BA7AE78(a1, a2, v169);
                              result = 1;
                            }

                            goto LABEL_169;
                          }

                          if (qword_1EAFE4758 != -1)
                          {
                            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                          }

                          v176 = qword_1EAFE4760;
                          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 134349056;
                            *&buf[4] = v167;
                            _os_log_impl(&dword_19B873000, v176, OS_LOG_TYPE_ERROR, "[Umeyama]:determinant of rotation matrix is not correct, %{public}.2f", buf, 0xCu);
                          }

                          v177 = sub_19B87DD40();
                          if ((*(v177 + 160) & 0x80000000) == 0 || (*(v177 + 164) & 0x80000000) == 0 || (*(v177 + 168) & 0x80000000) == 0 || *(v177 + 152))
                          {
                            bzero(buf, 0x65CuLL);
                            if (qword_1EAFE4758 != -1)
                            {
                              dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                            }

                            LODWORD(v186) = 134349056;
                            *(&v186 + 4) = v167;
                            v11 = _os_log_send_and_compose_impl();
                            sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::isRotationMatrixValid() [T = double, N = 2]", "CoreLocation: %s\n", v11);
                            goto LABEL_166;
                          }
                        }

                        else
                        {
                          if (qword_1EAFE4758 != -1)
                          {
                            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                          }

                          v174 = qword_1EAFE4760;
                          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_19B873000, v174, OS_LOG_TYPE_ERROR, "[Umeyama]:rotation matrix is not orthogonal", buf, 2u);
                          }

                          v175 = sub_19B87DD40();
                          if ((*(v175 + 160) & 0x80000000) == 0 || (*(v175 + 164) & 0x80000000) == 0 || (*(v175 + 168) & 0x80000000) == 0 || *(v175 + 152))
                          {
                            bzero(buf, 0x65CuLL);
                            if (qword_1EAFE4758 != -1)
                            {
                              dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                            }

                            LOWORD(v186) = 0;
                            v11 = _os_log_send_and_compose_impl();
                            sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::isRotationMatrixValid() [T = double, N = 2]", "CoreLocation: %s\n", v11);
                            goto LABEL_166;
                          }
                        }

                        goto LABEL_168;
                      }
                    }

                    if (qword_1EAFE4758 != -1)
                    {
                      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                    }

                    v172 = qword_1EAFE4760;
                    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_19B873000, v172, OS_LOG_TYPE_INFO, "[Umeyama]:problem is infeasible", buf, 2u);
                    }

                    v173 = sub_19B87DD40();
                    if (*(v173 + 160) > 1 || *(v173 + 164) > 1 || *(v173 + 168) > 1 || *(v173 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE4758 != -1)
                      {
                        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                      }

                      *v188 = 0;
                      v11 = _os_log_send_and_compose_impl();
                      sub_19B885924("Generic", 1, 0, 2, "BOOL CMUmeyama<double, 2>::runAlgorithm(const std::vector<CMVector<T, N>> &, const std::vector<CMVector<T, N>> &, const std::vector<T> &) [T = double, N = 2]", "CoreLocation: %s\n", v11);
                      goto LABEL_166;
                    }
                  }

                  else
                  {
                    if (qword_1EAFE4758 != -1)
                    {
                      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                    }

                    v170 = qword_1EAFE4760;
                    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_19B873000, v170, OS_LOG_TYPE_ERROR, "[Umeyama]:determinant of U is not orthogonal", buf, 2u);
                    }

                    v171 = sub_19B87DD40();
                    if ((*(v171 + 160) & 0x80000000) == 0 || (*(v171 + 164) & 0x80000000) == 0 || (*(v171 + 168) & 0x80000000) == 0 || *(v171 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE4758 != -1)
                      {
                        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                      }

                      LOWORD(v184) = 0;
                      v11 = _os_log_send_and_compose_impl();
                      sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::performSingularValueDecomposition(const CMMatrix<T, N> &, CMMatrix<T, N> &, CMVector<T, N> &, CMMatrix<T, N> &) const [T = double, N = 2]", "CoreLocation: %s\n", v11);
                      goto LABEL_166;
                    }
                  }
                }

                else
                {
                  if (qword_1EAFE4758 != -1)
                  {
                    dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                  }

                  v153 = qword_1EAFE4760;
                  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134349056;
                    *&buf[4] = v150;
                    _os_log_impl(&dword_19B873000, v153, OS_LOG_TYPE_ERROR, "[Umeyama]:determinant of U is not correct, %{public}.2f", buf, 0xCu);
                  }

                  v154 = sub_19B87DD40();
                  if ((*(v154 + 160) & 0x80000000) == 0 || (*(v154 + 164) & 0x80000000) == 0 || (*(v154 + 168) & 0x80000000) == 0 || *(v154 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE4758 != -1)
                    {
                      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                    }

                    v184 = 134349056;
                    v185 = v150;
                    v11 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::performSingularValueDecomposition(const CMMatrix<T, N> &, CMMatrix<T, N> &, CMVector<T, N> &, CMMatrix<T, N> &) const [T = double, N = 2]", "CoreLocation: %s\n", v11);
                    goto LABEL_166;
                  }
                }
              }

              else
              {
                if (qword_1EAFE4758 != -1)
                {
                  dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                }

                v155 = qword_1EAFE4760;
                if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19B873000, v155, OS_LOG_TYPE_ERROR, "[Umeyama]:determinant of V is not orthogonal", buf, 2u);
                }

                v156 = sub_19B87DD40();
                if ((*(v156 + 160) & 0x80000000) == 0 || (*(v156 + 164) & 0x80000000) == 0 || (*(v156 + 168) & 0x80000000) == 0 || *(v156 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE4758 == -1)
                  {
                    goto LABEL_155;
                  }

                  goto LABEL_279;
                }
              }
            }

            else
            {
              if (qword_1EAFE4758 != -1)
              {
                dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
              }

              v136 = qword_1EAFE4760;
              if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
              {
                *buf = 134349056;
                *&buf[4] = v133;
                _os_log_impl(&dword_19B873000, v136, OS_LOG_TYPE_ERROR, "[Umeyama]:determinant of V is not correct, %{public}.2f", buf, 0xCu);
              }

              v137 = sub_19B87DD40();
              if ((*(v137 + 160) & 0x80000000) == 0 || (*(v137 + 164) & 0x80000000) == 0 || (*(v137 + 168) & 0x80000000) == 0 || *(v137 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE4758 != -1)
                {
                  dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                }

                LODWORD(v186) = 134349056;
                *(&v186 + 4) = v133;
                v11 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::performSingularValueDecomposition(const CMMatrix<T, N> &, CMMatrix<T, N> &, CMVector<T, N> &, CMMatrix<T, N> &) const [T = double, N = 2]", "CoreLocation: %s\n", v11);
                goto LABEL_166;
              }
            }
          }

          goto LABEL_168;
        }
      }

      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      v126 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        v127 = *sub_19B94F084(&v183, v120);
        *buf = 134349056;
        *&buf[4] = v127;
        _os_log_impl(&dword_19B873000, v126, OS_LOG_TYPE_ERROR, "[Umeyama]:negative singular value, %{public}.2f", buf, 0xCu);
      }

      v128 = sub_19B87DD40();
      if ((*(v128 + 160) & 0x80000000) == 0 || (*(v128 + 164) & 0x80000000) == 0 || (*(v128 + 168) & 0x80000000) == 0 || *(v128 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v129 = *sub_19B94F084(&v183, v120);
        LODWORD(v186) = 134349056;
        *(&v186 + 4) = v129;
        v11 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::performSingularValueDecomposition(const CMMatrix<T, N> &, CMMatrix<T, N> &, CMVector<T, N> &, CMMatrix<T, N> &) const [T = double, N = 2]", "CoreLocation: %s\n", v11);
        goto LABEL_166;
      }

      goto LABEL_168;
    }
  }

  if (qword_1EAFE4758 != -1)
  {
    dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
  }

  v37 = qword_1EAFE4760;
  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    *&buf[4] = v27;
    _os_log_impl(&dword_19B873000, v37, OS_LOG_TYPE_INFO, "[Umeyama]:non-positive weight, %{public}.2f", buf, 0xCu);
  }

  v38 = sub_19B87DD40();
  if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    *v188 = 134349056;
    *&v188[4] = v27;
    v11 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CMUmeyama<double, 2>::checkAndNormalizeWeights(const std::vector<T> &) [T = double, N = 2]", "CoreLocation: %s\n", v11);
    goto LABEL_166;
  }

LABEL_168:
  result = 0;
LABEL_169:
  v131 = *MEMORY[0x1E69E9840];
  return result;
}

double *sub_19BA7A9A4(int8x16_t *a1)
{
  v1 = 0;
  v2 = a1[1];
  v8 = *a1;
  v9 = v2;
  v3 = 1;
  v4 = 1.0;
  while (1)
  {
    result = sub_19B8D7BD0(&v8, v1, v1);
    if (*result == 0.0)
    {
      break;
    }

    result = sub_19B8D7BD0(&v8, v1, v1);
    v4 = v4 * *result;
    if ((v3 & 1) == 0)
    {
      return result;
    }

LABEL_7:
    v3 = 0;
    v7 = *&v8.i64[1];
    v1 = 1;
    if (*&v8.i64[1] != 0.0)
    {
      v3 = 0;
      v8.i64[1] = 0;
      *&v9.i64[1] = *&v9.i64[1] + -v7 / *v8.i64 * *v9.i64;
      v1 = 1;
    }
  }

  if ((v3 & 1) != 0 && *&v8.i64[1] != 0.0)
  {
    v6 = v8.i64[0];
    v8.i64[0] = v8.i64[1];
    v8.i64[1] = v6;
    v9 = vextq_s8(v9, v9, 8uLL);
    v4 = -(v4 * *sub_19B8D7BD0(&v8, v1, v1));
    goto LABEL_7;
  }

  return result;
}

BOOL sub_19BA7AAA0(uint64_t a1, double a2, double a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  v4 = a3 + 0.0 + a2;
  if (v4 >= 0.0)
  {
    v5 = a3 + 0.0 + a2;
  }

  else
  {
    v5 = -v4;
  }

  if (v5 < 0.000001)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v11 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v17 = v4;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "[Umeyama]:sum of singular values is, %{public}.2f", buf, 0xCu);
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::computeScaling(const CMVector<T, N> &) [T = double, N = 2]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  else
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      v7 = *(a1 + 160);
      v8 = *(a1 + 104);
      do
      {
        v9 = *v7++;
        v10 = sqrt(vaddvq_f64(vmulq_f64(v9, v9)));
        v9.f64[0] = *v8++;
        v3 = v3 + v9.f64[0] * v10 * v10;
        --v6;
      }

      while (v6);
    }

    *(a1 + 56) = v3 / v4;
  }

  result = v5 >= 0.000001;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

float64x2_t sub_19BA7ACD8(float64x2_t *a1)
{
  v2.f64[0] = sub_19B94F874(&a1[1].f64[1], a1[9].f64);
  v2.f64[1] = v3;
  result = vsubq_f64(a1[8], vmulq_n_f64(v2, a1[3].f64[1]));
  a1[4] = result;
  return result;
}

void sub_19BA7AD1C(uint64_t a1, void *a2)
{
  *(a1 + 8) = *a1;
  v2 = *(a1 + 56);
  v3 = vmulq_n_f64(*(a1 + 24), v2);
  v4 = vmulq_n_f64(*(a1 + 40), v2);
  v24[0] = v3;
  v24[1] = v4;
  if (*(a1 + 96))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v23 = *(*a2 + v7);
      v9 = *(a1 + 64) + sub_19B94F874(v24, &v23);
      v11 = v10 + *(a1 + 72);
      v13 = *(a1 + 8);
      v12 = *(a1 + 16);
      if (v13 >= v12)
      {
        v15 = (v13 - *a1) >> 4;
        v16 = v15 + 1;
        if ((v15 + 1) >> 60)
        {
          sub_19B8B8A40();
        }

        v17 = v12 - *a1;
        if (v17 >> 3 > v16)
        {
          v16 = v17 >> 3;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v18 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          sub_19B9CACF4(v18);
        }

        v19 = (16 * v15);
        *v19 = v9;
        v19[1] = v11;
        v14 = 16 * v15 + 16;
        v20 = *(a1 + 8) - *a1;
        v21 = 16 * v15 - v20;
        memcpy(v19 - v20, *a1, v20);
        v22 = *a1;
        *a1 = v21;
        *(a1 + 8) = v14;
        *(a1 + 16) = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v13 = v9;
        v13[1] = v11;
        v14 = (v13 + 2);
      }

      *(a1 + 8) = v14;
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a1 + 96));
  }
}

double sub_19BA7AE78(double *a1, float64x2_t **a2, double result)
{
  a1[10] = 0.0;
  a1[11] = 0.0;
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a2;
    v5 = *a1;
    result = 0.0;
    v6 = 0.0;
    v7 = *(a1 + 13);
    do
    {
      v8 = *v4++;
      v9 = v8;
      v10 = *v5++;
      v11 = vsubq_f64(v9, v10);
      v11.f64[0] = sqrt(vaddvq_f64(vmulq_f64(v11, v11)));
      v10.f64[0] = *v7++;
      v6 = v6 + v10.f64[0] * v11.f64[0];
      result = result + v11.f64[0] * (v10.f64[0] * v11.f64[0]);
      a1[10] = result;
      a1[11] = v6;
      --v3;
    }

    while (v3);
  }

  return result;
}

float64x2_t sub_19BA7AED4(unint64_t a1, double *a2, float64x2_t *a3)
{
  result = vmulq_n_f64(*a3, *a2);
  if (a1 >= 2)
  {
    v4 = a1 - 1;
    v5 = a2 + 1;
    v6 = a3 + 1;
    do
    {
      v7 = *v5++;
      v8 = v7;
      v9 = *v6++;
      result = vaddq_f64(result, vmulq_n_f64(v9, v8));
      --v4;
    }

    while (v4);
  }

  return result;
}

BOOL sub_19BA7AF14(uint64_t a1)
{
  v21[0] = 0x3FF0000000000000;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = 0x3FF0000000000000;
  v18 = *a1;
  v19 = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
  v20 = *(a1 + 24);
  v1 = sub_19B94F70C(a1, &v18);
  v5 = 0;
  v17[0] = sub_19B94F808(v21, v1, v2, v3, v4);
  v17[1] = v6;
  v17[2] = v7;
  v17[3] = v8;
  v9 = 1;
LABEL_2:
  v10 = 0;
  v11 = v9;
  v12 = 1;
  while (1)
  {
    v13 = v12;
    v14 = sub_19B94FF2C(v17, v5, v10);
    v15 = sub_19B94FF2C(v17, v5, v10);
    if (v14 < 0.0)
    {
      v15 = -v15;
    }

    if (v15 > 0.000001)
    {
      return v15 <= 0.000001;
    }

    v12 = 0;
    v10 = 1;
    if ((v13 & 1) == 0)
    {
      v9 = 0;
      v5 = 1;
      if (v11)
      {
        goto LABEL_2;
      }

      return v15 <= 0.000001;
    }
  }
}

uint64_t sub_19BA7B000(uint64_t result, unint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v117 = a2 - 2;
    v120 = a2 - 1;
    v116 = a2 - 3;
    v10 = v9;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v10;
          v11 = a2 - v10;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:

                return sub_19BA7B9C4(v10, v10 + 1, v120, a3);
              case 4:

                return sub_19BA7BB18(v10, v10 + 1, v10 + 2, v120, a3);
              case 5:

                return sub_19BA7BC1C(v10, v10 + 1, v10 + 2, v10 + 3, v120, a3);
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v53 = *v10;
              v54 = *sub_19B94F084(*a3, *(a2 - 1));
              result = sub_19B94F084(*a3, v53);
              if (v54 > *result)
              {
                v55 = *v10;
                *v10 = *(a2 - 1);
                *(a2 - 1) = v55;
              }

              return result;
            }
          }

          if (v11 <= 23)
          {
            v56 = v10 + 1;
            v58 = v10 == a2 || v56 == a2;
            if (a5)
            {
              if (!v58)
              {
                v59 = 0;
                v60 = v10;
                do
                {
                  v62 = *v60;
                  v61 = v60[1];
                  v60 = v56;
                  v63 = *sub_19B94F084(*a3, v61);
                  result = sub_19B94F084(*a3, v62);
                  if (v63 > *result)
                  {
                    v64 = a2;
                    v65 = *v60;
                    v66 = v59;
                    while (1)
                    {
                      *(v10 + v66 + 8) = *(v10 + v66);
                      if (!v66)
                      {
                        break;
                      }

                      v67 = *(v10 + v66 - 8);
                      v68 = *sub_19B94F084(*a3, v65);
                      result = sub_19B94F084(*a3, v67);
                      v66 -= 8;
                      if (v68 <= *result)
                      {
                        v69 = (v10 + v66 + 8);
                        goto LABEL_85;
                      }
                    }

                    v69 = v10;
LABEL_85:
                    *v69 = v65;
                    a2 = v64;
                  }

                  v56 = v60 + 1;
                  v59 += 8;
                }

                while (v60 + 1 != a2);
              }
            }

            else if (!v58)
            {
              do
              {
                v108 = *v9;
                v107 = v9[1];
                v9 = v56;
                v109 = *sub_19B94F084(*a3, v107);
                result = sub_19B94F084(*a3, v108);
                if (v109 > *result)
                {
                  v110 = *v9;
                  v111 = v9;
                  do
                  {
                    v112 = v111;
                    v113 = *--v111;
                    *v112 = v113;
                    v114 = *(v112 - 2);
                    v115 = *sub_19B94F084(*a3, v110);
                    result = sub_19B94F084(*a3, v114);
                  }

                  while (v115 > *result);
                  *v111 = v110;
                }

                v56 = v9 + 1;
              }

              while (v9 + 1 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v10 != a2)
            {
              v70 = (v11 - 2) >> 1;
              v118 = a2;
              v121 = v70;
              do
              {
                v71 = v70;
                if (v121 >= v70)
                {
                  v72 = (2 * v70) | 1;
                  v73 = &v9[v72];
                  if (2 * v70 + 2 < v11)
                  {
                    v74 = v73[1];
                    v75 = *sub_19B94F084(*a3, *v73);
                    if (v75 > *sub_19B94F084(*a3, v74))
                    {
                      ++v73;
                      v72 = 2 * v71 + 2;
                    }
                  }

                  v76 = &v9[v71];
                  v77 = *v76;
                  v78 = *sub_19B94F084(*a3, *v73);
                  result = sub_19B94F084(*a3, v77);
                  if (v78 <= *result)
                  {
                    v79 = *v76;
                    do
                    {
                      v80 = v73;
                      *v76 = *v73;
                      if (v121 < v72)
                      {
                        break;
                      }

                      v81 = 2 * v72;
                      v72 = (2 * v72) | 1;
                      v73 = &v9[v72];
                      v82 = v81 + 2;
                      if (v81 + 2 < v11)
                      {
                        v83 = v73[1];
                        v84 = *sub_19B94F084(*a3, *v73);
                        if (v84 > *sub_19B94F084(*a3, v83))
                        {
                          ++v73;
                          v72 = v82;
                        }
                      }

                      v85 = *sub_19B94F084(*a3, *v73);
                      result = sub_19B94F084(*a3, v79);
                      v76 = v80;
                    }

                    while (v85 <= *result);
                    *v80 = v79;
                  }
                }

                v70 = v71 - 1;
              }

              while (v71);
              v86 = v118;
              do
              {
                v87 = 0;
                v119 = v86;
                v122 = *v9;
                v88 = v9;
                do
                {
                  v89 = v88;
                  v90 = &v88[v87];
                  v88 = v90 + 1;
                  v91 = 2 * v87;
                  v87 = (2 * v87) | 1;
                  v92 = v91 + 2;
                  if (v91 + 2 < v11)
                  {
                    v94 = v90[2];
                    v93 = v90 + 2;
                    v95 = *sub_19B94F084(*a3, *(v93 - 1));
                    result = sub_19B94F084(*a3, v94);
                    if (v95 > *result)
                    {
                      v88 = v93;
                      v87 = v92;
                    }
                  }

                  *v89 = *v88;
                }

                while (v87 <= ((v11 - 2) >> 1));
                v96 = v119 - 1;
                if (v88 == v119 - 1)
                {
                  v86 = v119 - 1;
                  *v88 = v122;
                }

                else
                {
                  *v88 = *v96;
                  v86 = v119 - 1;
                  *v96 = v122;
                  v97 = (v88 - v9 + 8) >> 3;
                  v98 = v97 < 2;
                  v99 = v97 - 2;
                  if (!v98)
                  {
                    v100 = v99 >> 1;
                    v101 = &v9[v99 >> 1];
                    v102 = *v88;
                    v103 = *sub_19B94F084(*a3, *v101);
                    result = sub_19B94F084(*a3, v102);
                    if (v103 > *result)
                    {
                      v104 = *v88;
                      do
                      {
                        v105 = v101;
                        *v88 = *v101;
                        if (!v100)
                        {
                          break;
                        }

                        v100 = (v100 - 1) >> 1;
                        v101 = &v9[v100];
                        v106 = *sub_19B94F084(*a3, *v101);
                        result = sub_19B94F084(*a3, v104);
                        v88 = v105;
                      }

                      while (v106 > *result);
                      *v105 = v104;
                    }
                  }
                }

                v98 = v11-- <= 2;
              }

              while (!v98);
            }

            return result;
          }

          v12 = v11 >> 1;
          v13 = &v10[v11 >> 1];
          if (v11 < 0x81)
          {
            sub_19BA7B9C4(&v9[v11 >> 1], v9, v120, a3);
          }

          else
          {
            sub_19BA7B9C4(v9, &v9[v11 >> 1], v120, a3);
            sub_19BA7B9C4(v9 + 1, v13 - 1, v117, a3);
            sub_19BA7B9C4(v9 + 2, &v9[v12 + 1], v116, a3);
            sub_19BA7B9C4(v13 - 1, &v9[v11 >> 1], &v9[v12 + 1], a3);
            v14 = *v9;
            *v9 = *v13;
            *v13 = v14;
          }

          --a4;
          if (a5)
          {
            break;
          }

          v15 = *v9;
          v16 = *sub_19B94F084(*a3, *(v9 - 1));
          if (v16 > *sub_19B94F084(*a3, v15))
          {
            break;
          }

          v36 = *v9;
          v37 = *v120;
          v38 = *sub_19B94F084(*a3, *v9);
          result = sub_19B94F084(*a3, v37);
          if (v38 <= *result)
          {
            v41 = v9 + 1;
            do
            {
              v10 = v41;
              if (v41 >= a2)
              {
                break;
              }

              ++v41;
              v42 = *v10;
              v43 = *sub_19B94F084(*a3, v36);
              result = sub_19B94F084(*a3, v42);
            }

            while (v43 <= *result);
          }

          else
          {
            v10 = v9;
            do
            {
              v39 = v10[1];
              ++v10;
              v40 = *sub_19B94F084(*a3, v36);
              result = sub_19B94F084(*a3, v39);
            }

            while (v40 <= *result);
          }

          v44 = a2;
          if (v10 < a2)
          {
            v44 = a2;
            do
            {
              v45 = *--v44;
              v46 = *sub_19B94F084(*a3, v36);
              result = sub_19B94F084(*a3, v45);
            }

            while (v46 > *result);
          }

          while (v10 < v44)
          {
            v47 = *v10;
            *v10 = *v44;
            *v44 = v47;
            do
            {
              v48 = v10[1];
              ++v10;
              v49 = *sub_19B94F084(*a3, v36);
            }

            while (v49 <= *sub_19B94F084(*a3, v48));
            do
            {
              v50 = *--v44;
              v51 = *sub_19B94F084(*a3, v36);
              result = sub_19B94F084(*a3, v50);
            }

            while (v51 > *result);
          }

          v52 = v10 - 1;
          if (v10 - 1 != v9)
          {
            *v9 = *v52;
          }

          a5 = 0;
          *v52 = v36;
        }

        v17 = 0;
        v18 = *v9;
        do
        {
          v19 = *sub_19B94F084(*a3, v9[++v17]);
        }

        while (v19 > *sub_19B94F084(*a3, v18));
        v20 = &v9[v17];
        v21 = a2;
        if (v17 == 1)
        {
          do
          {
            if (v20 >= a2)
            {
              break;
            }

            v24 = *--a2;
            v25 = *sub_19B94F084(*a3, v24);
          }

          while (v25 <= *sub_19B94F084(*a3, v18));
        }

        else
        {
          do
          {
            v22 = *--a2;
            v23 = *sub_19B94F084(*a3, v22);
          }

          while (v23 <= *sub_19B94F084(*a3, v18));
        }

        if (v20 >= a2)
        {
          v33 = v20 - 1;
        }

        else
        {
          v26 = &v9[v17];
          v27 = a2;
          do
          {
            v28 = *v26;
            *v26 = *v27;
            *v27 = v28;
            do
            {
              v29 = v26[1];
              ++v26;
              v30 = *sub_19B94F084(*a3, v29);
            }

            while (v30 > *sub_19B94F084(*a3, v18));
            do
            {
              v31 = *--v27;
              v32 = *sub_19B94F084(*a3, v31);
            }

            while (v32 <= *sub_19B94F084(*a3, v18));
          }

          while (v26 < v27);
          v33 = v26 - 1;
        }

        if (v33 != v9)
        {
          *v9 = *v33;
        }

        *v33 = v18;
        v34 = v20 >= a2;
        a2 = v21;
        if (v34)
        {
          break;
        }

LABEL_38:
        result = sub_19BA7B000(v9, v33, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v33 + 1;
      }

      v35 = sub_19BA7BD68(v9, v33, a3);
      v10 = v33 + 1;
      result = sub_19BA7BD68(v33 + 1, v21, a3);
      if (result)
      {
        break;
      }

      if (!v35)
      {
        goto LABEL_38;
      }
    }

    a2 = v33;
    if (!v35)
    {
      continue;
    }

    return result;
  }
}

double *sub_19BA7B9C4(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  v8 = *a1;
  v9 = *sub_19B94F084(*a4, *a2);
  v10 = *sub_19B94F084(*a4, v8);
  v11 = *a2;
  v12 = *sub_19B94F084(*a4, *a3);
  result = sub_19B94F084(*a4, v11);
  v14 = *result;
  if (v9 <= v10)
  {
    if (v12 > v14)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a1;
      v18 = *sub_19B94F084(*a4, *a2);
      result = sub_19B94F084(*a4, v17);
      if (v18 > *result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  else
  {
    v15 = *a1;
    if (v12 <= v14)
    {
      *a1 = *a2;
      *a2 = v15;
      v20 = *sub_19B94F084(*a4, *a3);
      result = sub_19B94F084(*a4, v15);
      if (v20 > *result)
      {
        v21 = *a2;
        *a2 = *a3;
        *a3 = v21;
      }
    }

    else
    {
      *a1 = *a3;
      *a3 = v15;
    }
  }

  return result;
}

double *sub_19BA7BB18(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  sub_19BA7B9C4(a1, a2, a3, a5);
  v10 = *a3;
  v11 = *sub_19B94F084(*a5, *a4);
  result = sub_19B94F084(*a5, v10);
  if (v11 > *result)
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    v14 = *a2;
    v15 = *sub_19B94F084(*a5, *a3);
    result = sub_19B94F084(*a5, v14);
    if (v15 > *result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a1;
      v18 = *sub_19B94F084(*a5, *a2);
      result = sub_19B94F084(*a5, v17);
      if (v18 > *result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

double *sub_19BA7BC1C(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  sub_19BA7BB18(a1, a2, a3, a4, a6);
  v12 = *a4;
  v13 = *sub_19B94F084(*a6, *a5);
  result = sub_19B94F084(*a6, v12);
  if (v13 > *result)
  {
    v15 = *a4;
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    v17 = *sub_19B94F084(*a6, *a4);
    result = sub_19B94F084(*a6, v16);
    if (v17 > *result)
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      v19 = *a2;
      v20 = *sub_19B94F084(*a6, *a3);
      result = sub_19B94F084(*a6, v19);
      if (v20 > *result)
      {
        v21 = *a2;
        *a2 = *a3;
        *a3 = v21;
        v22 = *a1;
        v23 = *sub_19B94F084(*a6, *a2);
        result = sub_19B94F084(*a6, v22);
        if (v23 > *result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

BOOL sub_19BA7BD68(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a1;
        v8 = *sub_19B94F084(*a3, *(a2 - 1));
        if (v8 > *sub_19B94F084(*a3, v7))
        {
          v9 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v9;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_19BA7B9C4(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      sub_19BA7BB18(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      sub_19BA7BC1C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v10 = a1 + 2;
  sub_19BA7B9C4(a1, a1 + 1, a1 + 2, a3);
  v11 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v10;
    v15 = *sub_19B94F084(*a3, *v11);
    if (v15 > *sub_19B94F084(*a3, v14))
    {
      v16 = *v11;
      v17 = v12;
      while (1)
      {
        *(a1 + v17 + 24) = *(a1 + v17 + 16);
        if (v17 == -16)
        {
          break;
        }

        v18 = *(a1 + v17 + 8);
        v19 = *sub_19B94F084(*a3, v16);
        v17 -= 8;
        if (v19 <= *sub_19B94F084(*a3, v18))
        {
          v20 = (a1 + v17 + 24);
          goto LABEL_19;
        }
      }

      v20 = a1;
LABEL_19:
      *v20 = v16;
      if (++v13 == 8)
      {
        return v11 + 1 == a2;
      }
    }

    v10 = v11;
    v12 += 8;
    if (++v11 == a2)
    {
      return 1;
    }
  }
}

void *sub_19BA7BF70(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v10 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (!(v11 >> 60))
      {
        sub_19B9CACF4(v11);
      }
    }

    sub_19B8B8A40();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

uint64_t CLConnectionClient::sendMessage()
{
  return MEMORY[0x1EEE19100]();
}

{
  return MEMORY[0x1EEE19108]();
}

uint64_t CLConnectionMessage::CLConnectionMessage()
{
  return MEMORY[0x1EEE19158]();
}

{
  return MEMORY[0x1EEE19160]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}
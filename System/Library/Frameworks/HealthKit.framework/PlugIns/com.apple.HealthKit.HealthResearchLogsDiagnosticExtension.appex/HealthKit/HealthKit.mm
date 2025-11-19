id sub_100001368()
{
  if (qword_100010C30 != -1)
  {
    sub_1000073E8();
  }

  v1 = qword_100010C38;

  return v1;
}

void sub_100001BD0(id a1, const char *a2)
{
  v3 = sub_100001368();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100007584(a2);
  }
}

void sub_100001C1C(uint64_t a1, double a2)
{
  v4 = sub_100001368();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Progress: %.3f", &v6, 0xCu);
  }

  v5 = [[DECollectionProgress alloc] initWithPercentComplete:a2];
  (*(*(a1 + 32) + 16))();
}

void sub_100001DAC(id a1)
{
  qword_100010C38 = os_log_create("com.apple.research", "diagnosticextension");

  _objc_release_x1();
}

void sub_100001DF0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

char *sub_100001E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  v73 = a6;
  v74 = a7;
  v80 = a1;
  ObjectType = swift_getObjectType();
  v78 = sub_100007618();
  v75 = *(v78 - 8);
  v15 = v75[8];
  (__chkstk_darwin)();
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100007738();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = (__chkstk_darwin)();
  v65 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v64 - v23;
  v25 = v9;
  v71 = v9;
  v26 = &v9[OBJC_IVAR___HRLDLogArchiveProcessor_deviceName];
  *v26 = a2;
  *(v26 + 1) = a3;
  v69 = v26;
  v27 = v19[2];
  v70 = OBJC_IVAR___HRLDLogArchiveProcessor_logArchiveURL;
  v79 = a4;
  v27(&v25[OBJC_IVAR___HRLDLogArchiveProcessor_logArchiveURL], a4, v18);
  v76 = a5;
  v27(v24, a5, v18);
  v28 = type metadata accessor for LogEntryWriter();
  v29 = objc_allocWithZone(v28);
  v72 = OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_encoder;
  v30 = sub_100007658();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_100007648();
  (v75[13])(v17, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v78);
  sub_100007628();
  *&v72[v29] = v33;
  *(v29 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileHandle) = 0;
  *(v29 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_isFirstSample) = 1;
  v64 = v19 + 2;
  v27(v29 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileURL, v24, v18);
  v34 = v27;
  v35 = v71;
  v83.receiver = v29;
  v83.super_class = v28;
  v36 = objc_msgSendSuper2(&v83, "init");
  v37 = v19[1];
  v78 = v18;
  v75 = v19 + 1;
  v72 = v37;
  (v37)(v24, v18);
  v68 = OBJC_IVAR___HRLDLogArchiveProcessor_logWriter;
  *&v35[OBJC_IVAR___HRLDLogArchiveProcessor_logWriter] = v36;
  v38 = OBJC_IVAR___HRLDLogArchiveProcessor_archiveStartDate;
  v39 = sub_1000077E8();
  v40 = *(v39 - 8);
  v41 = *(v40 + 16);
  v67 = v38;
  v41(&v35[v38], v80, v39);
  v42 = &v35[OBJC_IVAR___HRLDLogArchiveProcessor_redactedToken];
  v43 = v74;
  *v42 = v73;
  *(v42 + 1) = v43;
  *&v35[OBJC_IVAR___HRLDLogArchiveProcessor_windowSize] = a8;
  v44 = objc_allocWithZone(NSDataDetector);
  v82 = 0;
  v45 = [v44 initWithTypes:2096 error:&v82];
  v46 = v45;
  v47 = v82;
  if (v45)
  {
    *&v35[OBJC_IVAR___HRLDLogArchiveProcessor_dataDetector] = v45;
    sub_100003AD8(0, &qword_100010B00, OSLogStore_ptr);
    v48 = v65;
    v34(v65, v79, v78);
    v49 = v47;
    v50 = v66;
    v51 = sub_1000023F8(v48);
    v74 = v50;
    if (!v50)
    {
      *&v35[OBJC_IVAR___HRLDLogArchiveProcessor_osStore] = v51;
      v81.receiver = v35;
      v81.super_class = ObjectType;
      v35 = objc_msgSendSuper2(&v81, "init");
      v52 = v78;
      v53 = v72;
      (v72)(v76, v78);
      v53(v79, v52);
      (*(v40 + 8))(v80, v39);
      return v35;
    }
  }

  else
  {
    v54 = v82;
    v55 = sub_1000076F8();

    v74 = v55;
    swift_willThrow();
  }

  v56 = v78;
  v57 = v72;
  (v72)(v76, v78);
  v57(v79, v56);
  v58 = *(v40 + 8);
  v58(v80, v39);
  v58(&v35[v67], v39);
  v59 = v69[1];

  v57(&v35[v70], v56);
  v60 = *(v42 + 1);

  if (v46)
  {
  }

  v61 = *((swift_isaMask & *v35) + 0x30);
  v62 = *((swift_isaMask & *v35) + 0x34);
  swift_deallocPartialClassInstance();
  return v35;
}

id sub_1000023F8(uint64_t a1)
{
  sub_100007708(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() storeWithURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = sub_100007738();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    sub_1000076F8();

    swift_willThrow();
    v10 = sub_100007738();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

void sub_100002704(uint64_t *a1, uint64_t a2, char *a3)
{
  v44 = a1;
  v6 = sub_1000077E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v34 - v13;
  __chkstk_darwin(v12);
  v16 = &v34 - v15;
  v17 = *(a2 + OBJC_IVAR___HRLDLogArchiveProcessor_logWriter);
  sub_100005AD4();
  if (!v3)
  {
    v37 = v17;
    sub_1000077D8();
    v18 = *(v7 + 16);
    v43 = OBJC_IVAR___HRLDLogArchiveProcessor_archiveStartDate;
    v18(v14, a2 + OBJC_IVAR___HRLDLogArchiveProcessor_archiveStartDate, v6);
    v19 = sub_1000077B8();
    v38 = v7;
    if (v19)
    {
      v20 = *(a2 + OBJC_IVAR___HRLDLogArchiveProcessor_windowSize);
      v39 = v44[2];
      v40 = (v7 + 8);
      v35 = (v7 + 32);
      v36 = a3 + 16;
      v44 += 5;
      v21 = v16;
      v41 = v6;
      v42 = a3;
      do
      {
        sub_100007798();
        v29 = v44;
        for (i = v39; i; --i)
        {
          v32 = *(v29 - 1);
          v31 = *v29;

          sub_100002A78(v32, v31);

          v29 += 2;
        }

        sub_100007788();
        v23 = v22;
        sub_100007788();
        v25 = v23 - v24;
        sub_100007788();
        v27 = v26;
        sub_100007788();
        v28.n128_f64[0] = v25 / (v27 - v28.n128_f64[0]);
        if (v28.n128_f64[0] > 1.0)
        {
          v28.n128_f64[0] = 1.0;
        }

        a3 = v42;
        (*(v42 + 2))(v42, v28);
        v6 = v41;
        (*v40)(v14, v41);
        (*v35)(v14, v11, v6);
      }

      while ((sub_1000077B8() & 1) != 0);
    }

    else
    {
      v21 = v16;
    }

    sub_100005C58();
    v33 = *(v38 + 8);
    v33(v14, v6);
    v33(v21, v6);
  }

  _Block_release(a3);
}

void sub_100002A78(uint64_t a1, uint64_t a2)
{
  v17 = objc_autoreleasePoolPush();
  v15 = v2;
  v5 = *(v2 + OBJC_IVAR___HRLDLogArchiveProcessor_osStore);
  isa = sub_1000077A8().super.isa;
  v7 = [v5 positionWithDate:isa];

  sub_100003AD8(0, &qword_100010A08, NSPredicate_ptr);
  sub_100003750();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000083C0;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_10000380C();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = sub_1000077A8().super.isa;
  *(v8 + 96) = sub_100003AD8(0, &qword_100010A28, NSDate_ptr);
  *(v8 + 104) = sub_100003860();
  *(v8 + 72) = v9;
  v10 = sub_1000078F8();
  v19 = &_swiftEmptyArrayStorage;
  v11 = objc_autoreleasePoolPush();
  sub_1000078E8();
  if (v16)
  {
    objc_autoreleasePoolPop(v11);
  }

  else
  {

    sub_100007978();

    sub_100007998();
    v12 = v18;
    if (v18)
    {
      while (1)
      {
        v13 = v12;
        sub_1000078A8();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000078C8();
        }

        sub_1000078D8();

        sub_100007998();
        v12 = v18;
      }
    }

    objc_autoreleasePoolPop(v11);
    v14 = objc_autoreleasePoolPush();
    sub_100002DF8(&v19, v15, &v18);
    objc_autoreleasePoolPop(v14);
  }

  objc_autoreleasePoolPop(v17);
}

void sub_100002DF8(uint64_t *a1, uint64_t a2, void *a3)
{
  v68 = a3;
  v4 = v3;
  v79 = sub_1000077E8();
  v7 = *(v79 - 8);
  v8 = v7[8];
  __chkstk_darwin(v79);
  v78 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100007988())
  {
    v77 = OBJC_IVAR___HRLDLogArchiveProcessor_dataDetector;
    v12 = OBJC_IVAR___HRLDLogArchiveProcessor_redactedToken;
    v13 = OBJC_IVAR___HRLDLogArchiveProcessor_deviceName;
    v76 = OBJC_IVAR___HRLDLogArchiveProcessor_logWriter;

    if (!i)
    {
      break;
    }

    v14 = 0;
    v73 = (a2 + v12);
    v72 = (a2 + v13);
    v81 = v10 & 0xC000000000000001;
    v80 = v10 & 0xFFFFFFFFFFFFFF8;
    v71 = (v7 + 2);
    v70 = (v7 + 1);
    v75 = a2;
    v74 = v10;
    v69 = i;
    while (1)
    {
      if (v81)
      {
        v15 = sub_100007958();
      }

      else
      {
        if (v14 >= *(v80 + 16))
        {
          goto LABEL_30;
        }

        v15 = *(v10 + 8 * v14 + 32);
      }

      v7 = v15;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v99 = &OBJC_PROTOCOL___OSLogEntryFromProcess;
      v100 = &OBJC_PROTOCOL___OSLogEntryWithPayload;
      v16 = swift_dynamicCastObjCProtocolConditional();
      if (!v16 || (v17 = v16, objc_opt_self(), (v18 = swift_dynamicCastObjCClass()) == 0))
      {

        return;
      }

      v19 = v18;
      v101 = v7;
      if (sub_1000038C8(v17))
      {
        v66 = v101;

        goto LABEL_27;
      }

      v82 = v14 + 1;
      v83 = v14;
      v91 = v4;
      v20 = [v17 category];
      v21 = sub_100007808();
      v89 = v22;
      v90 = v21;

      v23 = [v19 composedMessage];
      if (!v23)
      {
        sub_100007808();
        v23 = sub_1000077F8();
      }

      sub_100007808();
      v24 = *(a2 + v77);
      v25 = sub_100007828();

      v26 = *v73;
      v27 = v73[1];
      v28 = sub_1000077F8();
      v29 = [v24 stringByReplacingMatchesInString:v23 options:0 range:0 withTemplate:{v25, v28}];

      v30 = sub_100007808();
      v32 = v31;

      v33 = *v72;
      v34 = v72[1];
      v35 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v35 = v33 & 0xFFFFFFFFFFFFLL;
      }

      if (v35)
      {
        v97 = v30;
        v98 = v32;
        v95 = v33;
        v96 = v34;
        v93 = v26;
        v94 = v27;
        sub_100003A84();
        v88 = sub_100007928();
        v37 = v36;

        v32 = v37;
      }

      else
      {
        v88 = v30;
      }

      v38 = v101;
      v39 = [v101 date];
      v40 = v78;
      sub_1000077C8();

      v41 = [v17 formatString];
      v42 = sub_100007808();
      v86 = v43;
      v87 = v42;

      v44 = [v19 level];
      v85 = [v17 processIdentifier];
      v45 = [v17 process];
      v46 = sub_100007808();
      v84 = v47;

      v48 = [v17 subsystem];
      v49 = sub_100007808();
      v51 = v50;

      v52 = type metadata accessor for LogEntry();
      v53 = objc_allocWithZone(v52);
      v54 = &v53[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_category];
      v55 = v89;
      *v54 = v90;
      v54[1] = v55;
      v56 = &v53[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_composedMessage];
      *v56 = v88;
      v56[1] = v32;
      v57 = v79;
      (*v71)(&v53[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_date], v40, v79);
      v58 = &v53[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_formatString];
      v59 = v86;
      *v58 = v87;
      v58[1] = v59;
      v60 = 0x40305010200uLL >> (8 * v44);
      if (v44 >= 6)
      {
        LOBYTE(v60) = 5;
      }

      v53[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_logLevel] = v60;
      v61 = v84;
      *&v53[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_processIdentifier] = v85;
      v62 = &v53[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_process];
      *v62 = v46;
      v62[1] = v61;
      v63 = &v53[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_subsystem];
      *v63 = v49;
      v63[1] = v51;
      v92.receiver = v53;
      v92.super_class = v52;
      v7 = objc_msgSendSuper2(&v92, "init");
      (*v70)(v40, v57);
      a2 = v75;
      v64 = *(v75 + v76);
      v65 = v91;
      sub_100005D88();

      v4 = v65;
      if (v65)
      {

        *v68 = v65;
        return;
      }

      v14 = v83 + 1;
      v10 = v74;
      if (v82 == v69)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

LABEL_27:
}

id sub_1000034D0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LogArchiveProcessor()
{
  result = qword_1000109F8;
  if (!qword_1000109F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003660()
{
  result = sub_1000077E8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_100007738();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_100003750()
{
  if (!qword_100010A10)
  {
    sub_1000037A8();
    v0 = sub_100007A38();
    if (!v1)
    {
      atomic_store(v0, &qword_100010A10);
    }
  }
}

unint64_t sub_1000037A8()
{
  result = qword_100010A18;
  if (!qword_100010A18)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100010A18);
  }

  return result;
}

unint64_t sub_10000380C()
{
  result = qword_100010A20;
  if (!qword_100010A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010A20);
  }

  return result;
}

unint64_t sub_100003860()
{
  result = qword_100010A30;
  if (!qword_100010A30)
  {
    sub_100003AD8(255, &qword_100010A28, NSDate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010A30);
  }

  return result;
}

uint64_t sub_1000038C8(void *a1)
{
  v2 = [a1 subsystem];
  v3 = sub_100007808();
  v5 = v4;

  if (v3 == 0xD000000000000013 && 0x8000000100008A10 == v5)
  {
  }

  else
  {
    v7 = sub_100007A48();

    v8 = 0;
    if ((v7 & 1) == 0)
    {
      return v8 & 1;
    }
  }

  v9 = [a1 formatString];
  v10 = sub_100007808();
  v12 = v11;

  sub_100003A84();
  LOBYTE(v9) = sub_100007938();

  if (v9)
  {
    v8 = 1;
  }

  else
  {
    v13 = [a1 formatString];
    sub_100007808();

    v8 = sub_100007938();
  }

  return v8 & 1;
}

unint64_t sub_100003A84()
{
  result = qword_100010AF8;
  if (!qword_100010AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010AF8);
  }

  return result;
}

uint64_t sub_100003AD8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100003B2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1868983913;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    if (a1 == 2)
    {
      v4 = 0x6775626564;
    }

    else if (a1 == 3)
    {
      v4 = 0x726F727265;
    }

    else
    {
      v4 = 0x746C756166;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1868983913;
    }

    else
    {
      v8 = 0x746C7561666564;
    }

    if (a2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v5 = 0x726F727265;
    if (a2 != 3)
    {
      v5 = 0x746C756166;
    }

    if (a2 == 2)
    {
      v6 = 0x6775626564;
    }

    else
    {
      v6 = v5;
    }

    v7 = 0xE500000000000000;
    if (v4 != v6)
    {
      goto LABEL_30;
    }
  }

  if (v3 != v7)
  {
LABEL_30:
    v9 = sub_100007A48();
    goto LABEL_31;
  }

  v9 = 1;
LABEL_31:

  return v9 & 1;
}

Swift::Int sub_100003C88()
{
  v1 = *v0;
  sub_100007A58();
  sub_100007818();

  return sub_100007A78();
}

uint64_t sub_100003D58()
{
  *v0;
  *v0;
  *v0;
  sub_100007818();
}

Swift::Int sub_100003E14()
{
  v1 = *v0;
  sub_100007A58();
  sub_100007818();

  return sub_100007A78();
}

uint64_t sub_100003EE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100005524(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100003F10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  v5 = 0x6775626564;
  v6 = 0x726F727265;
  if (v2 != 3)
  {
    v6 = 0x746C756166;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 1868983913;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_10000404C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  ObjectType = swift_getObjectType();
  v22 = &v13[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_category];
  *v22 = a1;
  v22[1] = a2;
  v23 = &v13[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_composedMessage];
  *v23 = a3;
  v23[1] = a4;
  v24 = OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_date;
  v25 = sub_1000077E8();
  v26 = *(v25 - 8);
  (*(v26 + 16))(&v13[v24], a5, v25);
  v27 = &v13[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_formatString];
  *v27 = a6;
  v27[1] = a7;
  v28 = 0x40305010200uLL >> (8 * a8);
  if (a8 >= 6)
  {
    LOBYTE(v28) = 5;
  }

  v13[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_logLevel] = v28;
  *&v13[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_processIdentifier] = a9;
  v29 = &v13[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_process];
  *v29 = a10;
  v29[1] = a11;
  v30 = &v13[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_subsystem];
  *v30 = a12;
  v30[1] = a13;
  v34.receiver = v13;
  v34.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v34, "init");
  (*(v26 + 8))(a5, v25);
  return v31;
}

Swift::Int sub_100004384()
{
  v1 = *v0;
  sub_100007A58();
  sub_100007A68(v1);
  return sub_100007A78();
}

Swift::Int sub_1000043F8()
{
  v1 = *v0;
  sub_100007A58();
  sub_100007A68(v1);
  return sub_100007A78();
}

uint64_t sub_10000443C()
{
  v1 = *v0;
  v2 = 0x79726F6765746163;
  v3 = 0x737365636F7270;
  if (v1 != 6)
  {
    v3 = 0x6574737973627573;
  }

  v4 = 0x6C6576654C676F6CLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1702125924;
  if (v1 != 2)
  {
    v5 = 0x745374616D726F66;
  }

  if (*v0)
  {
    v2 = 0x6465736F706D6F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000454C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000581C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000458C(uint64_t a1)
{
  v2 = sub_1000052F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000045C8(uint64_t a1)
{
  v2 = sub_1000052F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for LogEntry()
{
  result = qword_100010B40;
  if (!qword_100010B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004728()
{
  result = sub_1000077E8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogEntry.LogLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogEntry.LogLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100004958()
{
  result = qword_100010B50;
  if (!qword_100010B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B50);
  }

  return result;
}

uint64_t sub_1000049AC(void *a1)
{
  v3 = v1;
  sub_100005428(0, &qword_100010B78, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = &v24[-v9];
  v11 = a1[4];
  sub_100005344(a1, a1[3]);
  sub_1000052F0();
  sub_100007A98();
  v12 = *(v3 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_category);
  v13 = *(v3 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_category + 8);
  v24[15] = 0;
  sub_100007A08();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_composedMessage);
    v15 = *(v3 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_composedMessage + 8);
    v24[14] = 1;
    sub_100007A08();
    v24[13] = 2;
    sub_1000077E8();
    sub_10000548C(&qword_100010B80);
    sub_100007A28();
    v17 = *(v3 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_formatString);
    v18 = *(v3 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_formatString + 8);
    v24[12] = 3;
    sub_100007A08();
    v24[11] = *(v3 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_logLevel);
    v24[10] = 4;
    sub_1000054D0();
    sub_1000079F8();
    v19 = *(v3 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_processIdentifier);
    v24[9] = 5;
    sub_100007A18();
    v20 = *(v3 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_process);
    v21 = *(v3 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_process + 8);
    v24[8] = 6;
    sub_100007A08();
    v22 = *(v3 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_subsystem);
    v23 = *(v3 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_subsystem + 8);
    v24[7] = 7;
    sub_100007A08();
  }

  return (*(v7 + 8))(v10, v6);
}

void *sub_100004C90(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1000077E8();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005428(0, &qword_100010B58, &type metadata accessor for KeyedDecodingContainer);
  v40 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v42 = a1;
  sub_100005344(a1, v13);
  sub_1000052F0();
  sub_100007A88();
  if (v1)
  {
    v37 = v41;
    sub_100005388(v42);
    v18 = *((swift_isaMask & *v37) + 0x30);
    v19 = *((swift_isaMask & *v37) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v8;
    v38 = v3;
    v46 = 0;
    v15 = v40;
    v16 = v11;
    v17 = sub_1000079C8();
    v21 = v41;
    v22 = (v41 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_category);
    *v22 = v17;
    v22[1] = v23;
    v46 = 1;
    v24 = sub_1000079C8();
    v25 = &v21[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_composedMessage];
    *v25 = v24;
    v25[1] = v26;
    v46 = 2;
    sub_10000548C(&qword_100010B68);
    v27 = v38;
    sub_1000079E8();
    (*(v39 + 32))(&v21[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_date], v6, v27);
    v46 = 3;
    v28 = sub_1000079C8();
    v29 = &v21[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_formatString];
    *v29 = v28;
    v29[1] = v30;
    v45 = 4;
    sub_1000053D4();
    sub_1000079B8();
    v21[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_logLevel] = v46;
    v46 = 5;
    *&v21[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_processIdentifier] = sub_1000079D8();
    v46 = 6;
    v31 = sub_1000079C8();
    v32 = &v21[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_process];
    *v32 = v31;
    v32[1] = v33;
    v46 = 7;
    v34 = sub_1000079C8();
    v35 = &v21[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_subsystem];
    *v35 = v34;
    v35[1] = v36;
    v44.receiver = v21;
    v44.super_class = ObjectType;
    v37 = objc_msgSendSuper2(&v44, "init");
    (*(v14 + 8))(v16, v15);
    sub_100005388(v42);
  }

  return v37;
}

void *sub_10000527C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_100004C90(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1000052F0()
{
  result = qword_100010B60;
  if (!qword_100010B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B60);
  }

  return result;
}

void *sub_100005344(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005388(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1000053D4()
{
  result = qword_100010B70;
  if (!qword_100010B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B70);
  }

  return result;
}

void sub_100005428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1000052F0();
    v7 = a3(a1, &type metadata for LogEntry.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10000548C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000077E8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000054D0()
{
  result = qword_100010B88;
  if (!qword_100010B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B88);
  }

  return result;
}

uint64_t sub_100005524(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10000C7A0;
  v6._object = a2;
  v4 = sub_1000079A8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100005570()
{
  result = qword_100010B90;
  if (!qword_100010B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogEntry.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogEntry.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100005718()
{
  result = qword_100010B98;
  if (!qword_100010B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B98);
  }

  return result;
}

unint64_t sub_100005770()
{
  result = qword_100010BA0;
  if (!qword_100010BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010BA0);
  }

  return result;
}

unint64_t sub_1000057C8()
{
  result = qword_100010BA8;
  if (!qword_100010BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010BA8);
  }

  return result;
}

uint64_t sub_10000581C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v4 || (sub_100007A48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465736F706D6F63 && a2 == 0xEF6567617373654DLL || (sub_100007A48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_100007A48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x745374616D726F66 && a2 == 0xEC000000676E6972 || (sub_100007A48() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6576654C676F6CLL && a2 == 0xE800000000000000 || (sub_100007A48() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100008AF0 == a2 || (sub_100007A48() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737365636F7270 && a2 == 0xE700000000000000 || (sub_100007A48() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6574737973627573 && a2 == 0xE90000000000006DLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_100007A48();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void sub_100005AD4()
{
  v2 = sub_100007738();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileURL;
  sub_100007728(1);
  v9 = sub_1000077F8();

  [v7 createFileAtPath:v9 contents:0 attributes:0];

  sub_10000739C();
  (*(v3 + 16))(v6, v0 + v8, v2);
  v10 = sub_100005F18(v6);
  if (!v1)
  {
    v11 = *(v0 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileHandle);
    *(v0 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileHandle) = v10;
  }
}

void sub_100005C58()
{
  v2 = OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileHandle;
  v3 = *(v0 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileHandle);
  if (v3)
  {
    v4 = v0;
    v5 = v3;
    v10 = sub_100006070(23818, 0xE200000000000000);
    v11 = v6;
    sub_100006790();
    sub_100007908();
    sub_1000067E4(v10, v11);

    if (!v1)
    {
      v7 = *(v4 + v2);
      if (v7)
      {
        v10 = 0;
        if ([v7 closeAndReturnError:&v10])
        {
          v8 = v10;
        }

        else
        {
          v9 = v10;
          sub_1000076F8();

          swift_willThrow();
        }
      }
    }
  }
}

uint64_t sub_100005D88()
{
  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_encoder);
  type metadata accessor for LogEntry();
  sub_100006738();
  result = sub_100007638();
  if (!v1)
  {
    v6 = result;
    v7 = v5;
    if (*(v2 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_isFirstSample) == 1)
    {
      *(v2 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_isFirstSample) = 0;
      v8 = *(v2 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileHandle);
      if (!v8)
      {
        goto LABEL_8;
      }

      v9 = v8;
      v10 = 2651;
    }

    else
    {
      v11 = *(v2 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileHandle);
      if (!v11)
      {
        goto LABEL_8;
      }

      v9 = v11;
      v10 = 2604;
    }

    v18 = sub_100006070(v10, 0xE200000000000000);
    v19 = v12;
    sub_100006790();
    sub_100007908();
    sub_1000067E4(v18, v19);

LABEL_8:
    v13 = v6;
    v14 = *(v2 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileHandle);
    if (v14)
    {
      v15 = v7;
      v16 = v13;
      sub_100006790();
      v17 = v14;
      sub_100007908();

      return sub_1000067E4(v16, v15);
    }

    else
    {
      return sub_1000067E4(v13, v7);
    }
  }

  return result;
}

id sub_100005F18(uint64_t a1)
{
  sub_100007708(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = sub_100007738();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    sub_1000076F8();

    swift_willThrow();
    v10 = sub_100007738();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t sub_100006070(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;
  sub_100006838();

  if (swift_dynamicCast())
  {
    sub_100007264(__src, &v41);
    sub_100005344(&v41, v42);
    sub_1000076D8();
    __src[0] = v40;
    sub_100005388(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10000689C(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_100007968();
  }

  sub_100006950(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1000070F4(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_100006A18(sub_100007194);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_100007768();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_100006F70(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_100007838();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_100007868();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_100007968();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_100006F70(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_100007848();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_100007778();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_100007778();
    sub_100007250(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_100007250(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_1000071FC(*&__src[0], *(&__src[0] + 1));

  sub_1000067E4(v32, *(&v32 + 1));
  return v32;
}

uint64_t type metadata accessor for LogEntryWriter()
{
  result = qword_100010BF0;
  if (!qword_100010BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006688()
{
  result = sub_100007738();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100006738()
{
  result = qword_100010C00;
  if (!qword_100010C00)
  {
    type metadata accessor for LogEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010C00);
  }

  return result;
}

unint64_t sub_100006790()
{
  result = qword_100010C08;
  if (!qword_100010C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010C08);
  }

  return result;
}

uint64_t sub_1000067E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100006838()
{
  result = qword_100010C10;
  if (!qword_100010C10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100010C10);
  }

  return result;
}

uint64_t sub_10000689C(uint64_t a1)
{
  sub_1000068F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000068F8()
{
  if (!qword_100010C18)
  {
    sub_100006838();
    v0 = sub_100007918();
    if (!v1)
    {
      atomic_store(v0, &qword_100010C18);
    }
  }
}

uint64_t sub_100006950@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_10000703C(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1000076C8();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_100007678();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_100007758();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_100006A18(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1000067E4(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      result = a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        result = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v3 = v21[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000067E4(v6, v5);
    *v3 = xmmword_1000086F0;
    sub_1000067E4(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_100007688() && __OFSUB__(v6, sub_1000076B8()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1000076C8();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_100007668();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_100006EBC(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1000067E4(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1000086F0;
    sub_1000067E4(0, 0xC000000000000000);
    sub_100007748();
    result = sub_100006EBC(*(v19 + 2), *(v19 + 3), a1);
    v10 = v20 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v19;
      v3[1] = v10;
      return result;
    }

    *v3 = v19;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v2)
  {
    return v19;
  }

  return result;
}

_BYTE *sub_100006DBC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10000703C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10000727C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000072F8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_100006E50(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_100006EBC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_100007688();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1000076B8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1000076A8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_100006F70(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100007878();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_100007858();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100006FEC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_100007948();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000703C(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000070F4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_1000076C8();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_100007698();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_100007758();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_100007194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_100006E50(sub_10000737C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1000071FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100007250(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000067E4(a1, a2);
  }

  return a1;
}

uint64_t sub_100007264(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000727C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1000076C8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_100007678();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100007758();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000072F8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1000076C8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_100007678();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_10000739C()
{
  result = qword_100010C20;
  if (!qword_100010C20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010C20);
  }

  return result;
}

void sub_1000073FC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Couldn't create OSLogArchive with status: %d", v2, 8u);
}

void sub_100007474(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100001DF0(&_mh_execute_header, v2, v3, "Encountered error creating Log Processor %@", v4, v5, v6, v7, 2u);
}

void sub_1000074FC(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100001DF0(&_mh_execute_header, v2, v3, "Encountered error writing logs to disk: %@", v4, v5, v6, v7, 2u);
}

void sub_100007584(uint64_t a1)
{
  v1 = [NSString stringWithUTF8String:a1];
  sub_100001DF0(&_mh_execute_header, v2, v3, "LogArchiveError: %@", v4, v5, v6, v7, 2u);
}
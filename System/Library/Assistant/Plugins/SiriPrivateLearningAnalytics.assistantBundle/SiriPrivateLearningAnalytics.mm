uint64_t sub_14DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v5 = sub_2918();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2A48();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_8248 != -1)
  {
    swift_once();
  }

  v15 = sub_2AF8();
  sub_2180(v15, qword_8250);
  v16 = sub_2AD8();
  v17 = sub_2B18();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v11;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "Running SiriPrivateLearningAnalytics maintenance plugin", v18, 2u);
    v11 = v27;
  }

  if (qword_8228 != -1)
  {
    swift_once();
  }

  v19 = sub_2A78();
  v20 = sub_2180(v19, qword_8230);
  sub_2A38();
  v21 = sub_21B8(v20, "runMaintenance", 14, 2, v14);
  (*(v11 + 8))(v14, v10);
  v22 = *&v3[OBJC_IVAR___PLAnalyticsServiceMaintenance_pluginScheduler];
  (*(v6 + 104))(v9, enum case for PrivateLearningPluginRunContext.maintenance(_:), v5);
  v23 = swift_allocObject();
  v24 = v28;
  v23[2] = v21;
  v23[3] = v24;
  v23[4] = a2;
  v23[5] = v3;

  sub_24B8(v24);
  v25 = v3;
  sub_2928();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1848(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v52 = sub_2908();
  v5 = *(v52 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v52);
  v51 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = v38 - v9;
  v49 = sub_2968();
  v10 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v48 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v38[0] = v13;
  v38[1] = a1;
  v14 = 0;
  if (v13)
  {
    v16 = *(v11 + 16);
    v15 = v11 + 16;
    v47 = v16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v18 = *(v15 + 56);
    v46 = enum case for PrivateLearningPluginResult.success(_:);
    v44 = (v5 + 8);
    v45 = (v5 + 104);
    v42 = v18;
    v43 = (v15 - 8);
    v20 = v50;
    v19 = v51;
    while (1)
    {
      v54 = v14;
      v21 = v48;
      v22 = v49;
      v23 = v15;
      v47(v48, v17, v49);
      sub_2958();
      v24 = v52;
      (*v45)(v19, v46, v52);
      v53 = sub_28F8();
      v25 = *v44;
      (*v44)(v19, v24);
      v25(v20, v24);
      v26 = v22;
      v27 = v54;
      (*v43)(v21, v26);
      v28 = (v53 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v14 = v27 + v28;
      if (v29)
      {
        break;
      }

      v17 += v42;
      --v13;
      v15 = v23;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    if (qword_8248 == -1)
    {
      goto LABEL_6;
    }
  }

  swift_once();
LABEL_6:
  v30 = sub_2AF8();
  sub_2180(v30, qword_8250);

  v31 = sub_2AD8();
  v32 = sub_2B18();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134218240;
    *(v33 + 4) = v38[0];

    *(v33 + 12) = 2048;
    *(v33 + 14) = v14;
    _os_log_impl(&dword_0, v31, v32, "SiriPrivateLearningAnalytics maintenance plugin run %ld plugin(s) with %ld failure(s)", v33, 0x16u);
  }

  else
  {
  }

  v35 = v40;
  v34 = v41;
  v36 = v39;
  sub_24C8();
  return sub_1BFC(v36, v35, v34);
}

uint64_t sub_1BFC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v20 = a3;
  v21 = a2;
  v3 = sub_2A88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2A48();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_8228 != -1)
  {
    swift_once();
  }

  v13 = sub_2A78();
  sub_2180(v13, qword_8230);
  v14 = sub_2A68();
  sub_2A98();
  v15 = sub_2B38();
  if (sub_2B58())
  {

    sub_2AC8();

    if ((*(v4 + 88))(v7, v3) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v7, v3);
      v16 = "";
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_2A28();
    _os_signpost_emit_with_name_impl(&dword_0, v14, v15, v18, "runMaintenance", v16, v17, 2u);
  }

  result = (*(v9 + 8))(v12, v8);
  if (v21)
  {
    return v21(result);
  }

  return result;
}

id sub_1F5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsServiceMaintenance();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1FC4()
{
  v0 = sub_2AF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2A78();
  sub_283C(v5, qword_8230);
  sub_2180(v5, qword_8230);
  if (qword_8248 != -1)
  {
    swift_once();
  }

  v6 = sub_2180(v0, qword_8250);
  (*(v1 + 16))(v4, v6, v0);
  return sub_2A58();
}

uint64_t sub_2100()
{
  v0 = sub_2AF8();
  sub_283C(v0, qword_8250);
  sub_2180(v0, qword_8250);
  return sub_2AE8();
}

uint64_t sub_2180(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21B8(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = sub_2A48();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = sub_2B08();
  v15 = [v13 BOOLForKey:v14];

  v16 = sub_2A68();
  v17 = sub_2B48();
  result = sub_2B58();
  if (v15)
  {
    if ((result & 1) == 0)
    {
LABEL_21:

      (*(v9 + 16))(v12, a5, v8);
      v22 = sub_2AB8();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      return sub_2AA8();
    }

    if (a4)
    {
LABEL_10:
      if (!(a2 >> 32))
      {
        if ((a2 & 0xFFFFF800) == 0xD800)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if (a2 >> 16 <= 0x10)
        {
          a2 = v25;
          goto LABEL_14;
        }

        goto LABEL_24;
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (a2)
    {
LABEL_14:
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_2A28();
      v21 = "";
LABEL_20:
      _os_signpost_emit_with_name_impl(&dword_0, v16, v17, v20, a2, v21, v19, 2u);

      goto LABEL_21;
    }

    __break(1u);
  }

  if ((result & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((a4 & 1) == 0)
  {
    if (!a2)
    {
      __break(1u);
      goto LABEL_10;
    }

LABEL_19:
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = sub_2A28();
    v21 = "enableTelemetry=YES";
    goto LABEL_20;
  }

  if (a2 >> 32)
  {
    goto LABEL_23;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    if (a2 >> 16 > 0x10)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    a2 = &v26;
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_245C()
{
  v1 = *(v0 + 16);

  if (*(v0 + 24))
  {
    v2 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_24B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24C8()
{
  v0 = sub_29F8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_29E8();
  sub_29B8();
  v3 = sub_2988();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_2998();
  if (v6)
  {
    v24 = v3;
    v25 = &protocol witness table for InferredGroundTruthStoreCoreData;
    v23[0] = v6;

    sub_29D8();
    sub_27F0(v23);
    sub_2978();
  }

  else
  {
    if (qword_8248 != -1)
    {
      swift_once();
    }

    v7 = sub_2AF8();
    sub_2180(v7, qword_8250);
    v8 = sub_2AD8();
    v9 = sub_2B28();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "SiriPrivateLearningAnalytics maintenance couldn't check ground truth store size", v10, 2u);
    }

    v11 = sub_2AD8();
    v12 = sub_2B28();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "SiriPrivateLearningAnalytics maintenance could not load ground truth store to evaluate contact references", v13, 2u);
    }
  }

  sub_29A8();
  v14 = sub_2A08();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_2A18();
  if (v17)
  {
    v24 = v14;
    v25 = &protocol witness table for PICSStoreCoreData;
    v23[0] = v17;

    sub_29C8();

    return sub_27F0(v23);
  }

  else
  {
    if (qword_8248 != -1)
    {
      swift_once();
    }

    v19 = sub_2AF8();
    sub_2180(v19, qword_8250);
    v20 = sub_2AD8();
    v21 = sub_2B28();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "SiriPrivateLearningAnalytics maintenance could not load pics store to evaluate contact references", v22, 2u);
    }
  }
}

uint64_t sub_27F0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *sub_283C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_28A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_28B0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}
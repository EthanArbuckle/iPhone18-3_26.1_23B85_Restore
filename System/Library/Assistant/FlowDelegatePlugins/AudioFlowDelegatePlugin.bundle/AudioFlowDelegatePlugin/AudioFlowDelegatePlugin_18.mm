uint64_t static InternalSignalsManager.doesIntent(_:haveInternalSignalWith:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2CE000();
  v6 = *(v5 - 1);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - v11;
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  if (qword_34C000 != -1)
  {
LABEL_20:
    swift_once();
  }

  v41 = v12;
  v45 = off_355060;
  v15 = *(&dword_10 + off_355060);

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v43 = v6[2];
  v43(v14, v16, v5);
  v17 = sub_2CDFE0();
  v18 = sub_2CE690();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v47 = v16;
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "InternalSignalsManager#doesIntent#haveInternalSignalWith (lock aquired)", v19, 2u);
    v16 = v47;
  }

  v20 = v6[1];
  v46 = v6 + 1;
  v47 = v5;
  v44 = v20;
  v20(v14, v5);
  v21 = _s23AudioFlowDelegatePlugin22InternalSignalsManagerC08internalF03forSaySSGSo8INIntentC_tFZ_0();
  v12 = v21;
  v6 = v21[2];
  if (v6)
  {
    v22 = 0;
    v5 = v21 + 5;
    while (1)
    {
      if (v22 >= *(v12 + 2))
      {
        __break(1u);
        goto LABEL_20;
      }

      v14 = *(v5 - 1);
      v23 = *v5;

      v49._countAndFlagsBits = a2;
      v49._object = a3;
      if (sub_2CE3B0(v49))
      {
        break;
      }

      v22 = (v22 + 1);
      v5 += 2;
      if (v6 == v22)
      {
        goto LABEL_11;
      }
    }

    v31 = v41;
    v32 = v47;
    v43(v41, v16, v47);

    v33 = sub_2CDFE0();
    v34 = sub_2CE690();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48 = v36;
      *v35 = 136315138;
      v37 = sub_3F08(v14, v23, &v48);

      *(v35 + 4) = v37;
      _os_log_impl(&dword_0, v33, v34, "InternalSignalsManager#doesIntent#haveInternalSignalWith %s is present. (unlock)", v35, 0xCu);
      sub_306C(v36);
    }

    else
    {
    }

    v44(v31, v32);
    v30 = 1;
  }

  else
  {
LABEL_11:

    v24 = v42;
    v25 = v47;
    v43(v42, v16, v47);

    v26 = sub_2CDFE0();
    v27 = sub_2CE690();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_3F08(a2, a3, &v48);
      _os_log_impl(&dword_0, v26, v27, "InternalSignalsManager#doesIntenthaveInternalSignalWith prefix: %s is not present in intent. (unlock)", v28, 0xCu);
      sub_306C(v29);
    }

    v44(v24, v25);
    v30 = 0;
  }

  v38 = *(v45 + 2);

  sub_2CB800();

  return v30;
}

uint64_t static InternalSignalsManager.getSignal(with:from:)(uint64_t a1, void *a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 1);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v41 - v10;
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  if (qword_34C000 != -1)
  {
LABEL_19:
    swift_once();
  }

  v42 = v11;
  v46 = off_355060;
  v14 = *(&dword_10 + off_355060);

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v44 = v5[2];
  v44(v13, v15, v4);
  v16 = sub_2CDFE0();
  v17 = sub_2CE690();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v48 = v15;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "InternalSignalsManager#getSignal (lock aquired)", v18, 2u);
    v15 = v48;
  }

  v19 = v5[1];
  v47 = v5 + 1;
  v48 = v4;
  v45 = v19;
  v19(v13, v4);
  v20 = _s23AudioFlowDelegatePlugin22InternalSignalsManagerC08internalF03forSaySSGSo8INIntentC_tFZ_0();
  v11 = v20;
  v5 = v20[2];
  if (v5)
  {
    v21 = 0;
    v4 = v20 + 5;
    while (1)
    {
      if (v21 >= *(v11 + 2))
      {
        __break(1u);
        goto LABEL_19;
      }

      v13 = *(v4 - 1);
      v22 = *v4;

      v50._countAndFlagsBits = a1;
      v50._object = a2;
      if (sub_2CE3B0(v50))
      {
        break;
      }

      v21 = (v21 + 1);
      v4 += 2;
      if (v5 == v21)
      {
        goto LABEL_11;
      }
    }

    v30 = v42;
    v31 = v48;
    v44(v42, v15, v48);
    v32 = v30;

    v33 = sub_2CDFE0();
    v34 = sub_2CE690();

    v35 = v33;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_3F08(v13, v22, &v49);
      _os_log_impl(&dword_0, v35, v34, "InternalSignalsManager#getSignal returning signal: %s. (unlock)", v36, 0xCu);
      sub_306C(v37);
    }

    else
    {
    }

    v45(v32, v31);
    v38 = *(v46 + 2);

    sub_2CB800();

    v39 = sub_2CE320();
    sub_208000(v39, v13, v22);

    v40 = sub_2CE2E0();

    return v40;
  }

  else
  {
LABEL_11:

    v23 = v43;
    v24 = v48;
    v44(v43, v15, v48);
    v25 = sub_2CDFE0();
    v26 = sub_2CE690();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "InternalSignalsManager#getSignal could not find signal. (unlock)", v27, 2u);
    }

    v45(v23, v24);
    v28 = *(v46 + 2);

    sub_2CB800();

    return 0;
  }
}

uint64_t static InternalSignalsManager.add(_:to:)(uint64_t a1, unint64_t a2, void *a3)
{
  v41 = a1;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v38 = v6[2];
  v39 = v12;
  v38(v11, v12, v5);

  v13 = a3;
  v14 = sub_2CDFE0();
  v15 = sub_2CE690();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v37 = v5;
    v17 = a2;
    v18 = v16;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v42 = v20;
    *v18 = 136315394;
    *(v18 + 4) = sub_3F08(v41, v17, &v42);
    *(v18 + 12) = 2112;
    *(v18 + 14) = v13;
    *v19 = v13;
    v21 = v13;
    _os_log_impl(&dword_0, v14, v15, "InternalSignalsManager#add signal: %s, to intent: %@...", v18, 0x16u);
    sub_212CC(v19);

    sub_306C(v20);

    a2 = v17;
    v5 = v37;
  }

  v22 = v6[1];
  v22(v11, v5);
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    if (qword_34C000 != -1)
    {
      swift_once();
    }

    return sub_206F78(v41, a2, v24);
  }

  else
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v27 = v26;
      if (qword_34C000 != -1)
      {
        swift_once();
      }

      return sub_2080B0(v41, a2, v27);
    }

    else
    {
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        if (qword_34C000 != -1)
        {
          swift_once();
        }

        return sub_208610(v41, a2, v29);
      }

      else
      {
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          v31 = v30;
          if (qword_34C000 != -1)
          {
            swift_once();
          }

          return sub_208B70(v41, a2, v31);
        }

        else
        {
          v32 = v40;
          v38(v40, v39, v5);
          v33 = sub_2CDFE0();
          v34 = sub_2CE680();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_0, v33, v34, "InternalSignalsManager#add Unexpected intent type when adding internal signal", v35, 2u);
          }

          return (v22)(v32, v5);
        }
      }
    }
  }
}

uint64_t sub_206F78(uint64_t a1, unint64_t a2, void *a3)
{
  v48 = a3;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v47 - v12;
  __chkstk_darwin(v11);
  v15 = v47 - v14;
  if (qword_34C000 != -1)
  {
    swift_once();
  }

  v47[0] = v10;
  v16 = off_355060;
  v17 = *(&dword_10 + off_355060);

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v19 = v6[2];
  v50 = v6 + 2;
  v51 = v18;
  v49 = v19;
  v19(v15, v18, v5);
  v20 = sub_2CDFE0();
  v21 = sub_2CE690();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "InternalSignalsManager#add#fromPlayMediaIntent (lock aquired)", v22, 2u);
  }

  v25 = v6[1];
  v23 = v6 + 1;
  v24 = v25;
  v25(v15, v5);
  v26 = [v48 backingStore];
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    v48 = v23;
    v29 = [v27 privatePlayMediaIntentData];
    if (!v29)
    {
      v30 = [objc_allocWithZone(_INPBPrivatePlayMediaIntentData) init];
      [v28 setPrivatePlayMediaIntentData:v30];
      v29 = v30;
    }

    v31 = [v28 privatePlayMediaIntentData];
    if (v31)
    {
      v32 = v31;
      v33 = sub_2CE260();
      [v32 addInternalSignal:v33];
    }

    v49(v13, v51, v5);

    v34 = sub_2CDFE0();
    v35 = sub_2CE690();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = a2;
      v39 = v37;
      v52 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_3F08(a1, v38, &v52);
      _os_log_impl(&dword_0, v34, v35, "InternalSignalsManager#add#fromPlayMediaIntent added %s to playMediaIntent. (unlock)", v36, 0xCu);
      sub_306C(v39);
    }

    v24(v13, v5);
    v40 = *(&dword_10 + v16);

    sub_2CB800();
  }

  else
  {

    v42 = v47[0];
    v49(v47[0], v51, v5);
    v43 = sub_2CDFE0();
    v44 = sub_2CE680();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "InternalSignalsManager#add#fromPlayMediaIntent Unexpected backing store error adding internal signal. (unlock)", v45, 2u);
    }

    v24(v42, v5);
    v46 = *(v47[1] + 16);
    return sub_2CB800();
  }
}

uint64_t static InternalSignalsManager.remove(_:from:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v36 = a3;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v34 = v6[2];
  v35 = v13;
  v34(v12, v13, v5);

  v14 = sub_2CDFE0();
  v15 = sub_2CE690();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v6;
    v18 = a1;
    v19 = v17;
    v37 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_3F08(v18, a2, &v37);
    _os_log_impl(&dword_0, v14, v15, "InternalSignalsManager#remove %s...", v16, 0xCu);
    sub_306C(v19);
    a1 = v18;
    v6 = v33;
  }

  v20 = v6[1];
  v20(v12, v5);
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    if (qword_34C000 != -1)
    {
      swift_once();
    }

    return sub_2090D0(a1, a2, v22);
  }

  else
  {
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v25 = v24;
      if (qword_34C000 != -1)
      {
        swift_once();
      }

      return sub_209704(a1, a2, v25);
    }

    else
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        v27 = v26;
        if (qword_34C000 != -1)
        {
          swift_once();
        }

        return sub_209D38(a1, a2, v27);
      }

      else
      {
        objc_opt_self();
        v28 = swift_dynamicCastObjCClass();
        if (v28)
        {
          v29 = v28;
          if (qword_34C000 != -1)
          {
            swift_once();
          }

          return sub_20A36C(a1, a2, v29);
        }

        else
        {
          v34(v10, v35, v5);
          v30 = sub_2CDFE0();
          v31 = sub_2CE680();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&dword_0, v30, v31, "InternalSignalsManager#remove Unexpected intent type when removing internal signal", v32, 2u);
          }

          return (v20)(v10, v5);
        }
      }
    }
  }
}

uint64_t sub_207934(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2079E0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t InternalSignalsManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

void *_s23AudioFlowDelegatePlugin22InternalSignalsManagerC08internalF03forSaySSGSo8INIntentC_tFZ_0()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = [v0 privatePlayMediaIntentData];
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v1 = [v2 privateAddMediaIntentData];
      if (!v1)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v1 = [v3 privateUpdateMediaAffinityIntentData];
        if (!v1)
        {
          return _swiftEmptyArrayStorage;
        }
      }

      else
      {
        objc_opt_self();
        v4 = swift_dynamicCastObjCClass();
        if (!v4)
        {
          return _swiftEmptyArrayStorage;
        }

        v1 = [v4 privateSearchForMediaIntentData];
        if (!v1)
        {
          return _swiftEmptyArrayStorage;
        }
      }
    }
  }

  v5 = v1;
  v6 = [v1 internalSignals];

  if (v6)
  {
    v7 = sub_2CE410();

    return v7;
  }

  return _swiftEmptyArrayStorage;
}

BOOL _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_2CE000();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v37 - v8;
  if (qword_34C000 != -1)
  {
    swift_once();
  }

  v41 = off_355060;
  v10 = *(&dword_10 + off_355060);

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v3, static Logger.default);
  swift_beginAccess();
  v38 = v4[2];
  v38(v9, v11, v3);
  v12 = sub_2CDFE0();
  v13 = sub_2CE690();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "InternalSignalsManager#doesIntent#have (lock aquired)", v14, 2u);
  }

  v15 = v4[1];
  v43 = v4 + 1;
  v44 = v3;
  v39 = v15;
  v15(v9, v3);
  v16 = _s23AudioFlowDelegatePlugin22InternalSignalsManagerC08internalF03forSaySSGSo8INIntentC_tFZ_0();
  v17 = v16;
  v18 = *(a2 + 16);
  v40 = a2;
  v19 = (a2 + 40);
  v20 = v18 + 1;
  do
  {
    if (!--v20)
    {
      break;
    }

    v21 = v19 + 2;
    v22 = *v19;
    v45[0] = *(v19 - 1);
    v45[1] = v22;
    __chkstk_darwin(v16);
    *(&v37 - 2) = v45;

    v23 = sub_13964(sub_13A68, (&v37 - 4), v17);

    v19 = v21;
  }

  while ((v23 & 1) == 0);

  v24 = v42;
  v25 = v44;
  v38(v42, v11, v44);

  v26 = sub_2CDFE0();
  v27 = sub_2CE690();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v28 = 136315394;
    v29 = sub_2CE420();
    v31 = sub_3F08(v29, v30, v45);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    if (v20)
    {
      v32 = 0;
    }

    else
    {
      v32 = 7630702;
    }

    if (v20)
    {
      v33 = 0xE000000000000000;
    }

    else
    {
      v33 = 0xE300000000000000;
    }

    v34 = sub_3F08(v32, v33, v45);

    *(v28 + 14) = v34;
    _os_log_impl(&dword_0, v26, v27, "InternalSignalsManager#doesIntent signals: %s %s present in intent. (unlock)", v28, 0x16u);
    swift_arrayDestroy();
  }

  v39(v24, v25);
  v35 = *(v41 + 2);

  sub_2CB800();

  return v20 != 0;
}

unint64_t sub_208000(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_2CE330();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_2CE3D0();
}

uint64_t sub_2080B0(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t))
{
  v44 = a1;
  v45 = a3;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v41 - v10;
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  if (qword_34C000 != -1)
  {
    swift_once();
  }

  v43 = a2;
  v46 = off_355060;
  v14 = *(&dword_10 + off_355060);

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v16 = v5[2];
  v16(v13, v15, v4);
  v17 = sub_2CDFE0();
  v18 = sub_2CE690();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "InternalSignalsManager#add#fromAddMediaIntent (lock aquired)", v19, 2u);
  }

  v20 = v5[1];
  v20(v13, v4);
  v21 = [v45 backingStore];
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    v45 = v20;
    v24 = [v22 privateAddMediaIntentData];
    if (!v24)
    {
      v25 = [objc_allocWithZone(_INPBPrivateAddMediaIntentData) init];
      [v23 setPrivateAddMediaIntentData:v25];
      v24 = v25;
    }

    v26 = [v23 privateAddMediaIntentData];
    v27 = v43;
    if (v26)
    {
      v28 = v26;
      v29 = sub_2CE260();
      [v28 addInternalSignal:v29];
    }

    v16(v11, v15, v4);

    v30 = sub_2CDFE0();
    v31 = sub_2CE690();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_3F08(v44, v27, &v47);
      _os_log_impl(&dword_0, v30, v31, "InternalSignalsManager#add#fromAddMediaIntent added %s to addMediaIntent. (unlock)", v32, 0xCu);
      sub_306C(v33);
    }

    v45(v11, v4);
    v39 = *(v46 + 2);

    sub_2CB800();
  }

  else
  {

    v34 = v42;
    v16(v42, v15, v4);
    v35 = sub_2CDFE0();
    v36 = sub_2CE680();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "InternalSignalsManager#add#fromAddMediaIntent Unexpected backing store error while adding internal signal. (unlock)", v37, 2u);
    }

    v20(v34, v4);
    v38 = *(v46 + 2);

    sub_2CB800();
  }
}

uint64_t sub_208610(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t))
{
  v44 = a1;
  v45 = a3;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v41 - v10;
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  if (qword_34C000 != -1)
  {
    swift_once();
  }

  v43 = a2;
  v46 = off_355060;
  v14 = *(&dword_10 + off_355060);

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v16 = v5[2];
  v16(v13, v15, v4);
  v17 = sub_2CDFE0();
  v18 = sub_2CE690();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "InternalSignalsManager#add#fromUpdateMediaAffinityIntent (lock aquired)", v19, 2u);
  }

  v20 = v5[1];
  v20(v13, v4);
  v21 = [v45 backingStore];
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    v45 = v20;
    v24 = [v22 privateUpdateMediaAffinityIntentData];
    if (!v24)
    {
      v25 = [objc_allocWithZone(_INPBPrivateUpdateMediaAffinityIntentData) init];
      [v23 setPrivateUpdateMediaAffinityIntentData:v25];
      v24 = v25;
    }

    v26 = [v23 privateUpdateMediaAffinityIntentData];
    v27 = v43;
    if (v26)
    {
      v28 = v26;
      v29 = sub_2CE260();
      [v28 addInternalSignal:v29];
    }

    v16(v11, v15, v4);

    v30 = sub_2CDFE0();
    v31 = sub_2CE690();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_3F08(v44, v27, &v47);
      _os_log_impl(&dword_0, v30, v31, "InternalSignalsManager#add#fromUpdateMediaAffinityIntent added %s to updateMediaIntent. (unlock)", v32, 0xCu);
      sub_306C(v33);
    }

    v45(v11, v4);
    v39 = *(v46 + 2);

    sub_2CB800();
  }

  else
  {

    v34 = v42;
    v16(v42, v15, v4);
    v35 = sub_2CDFE0();
    v36 = sub_2CE680();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "InternalSignalsManager#add#fromUpdateMediaAffinityIntent Unexpected backing store error while adding internal signal. (unlock)", v37, 2u);
    }

    v20(v34, v4);
    v38 = *(v46 + 2);

    sub_2CB800();
  }
}

uint64_t sub_208B70(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t))
{
  v44 = a1;
  v45 = a3;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v41 - v10;
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  if (qword_34C000 != -1)
  {
    swift_once();
  }

  v43 = a2;
  v46 = off_355060;
  v14 = *(&dword_10 + off_355060);

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v16 = v5[2];
  v16(v13, v15, v4);
  v17 = sub_2CDFE0();
  v18 = sub_2CE690();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "InternalSignalsManager#add#fromSearchMediaIntent (lock aquired)", v19, 2u);
  }

  v20 = v5[1];
  v20(v13, v4);
  v21 = [v45 backingStore];
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    v45 = v20;
    v24 = [v22 privateSearchForMediaIntentData];
    if (!v24)
    {
      v25 = [objc_allocWithZone(_INPBPrivateSearchForMediaIntentData) init];
      [v23 setPrivateSearchForMediaIntentData:v25];
      v24 = v25;
    }

    v26 = [v23 privateSearchForMediaIntentData];
    v27 = v43;
    if (v26)
    {
      v28 = v26;
      v29 = sub_2CE260();
      [v28 addInternalSignal:v29];
    }

    v16(v11, v15, v4);

    v30 = sub_2CDFE0();
    v31 = sub_2CE690();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_3F08(v44, v27, &v47);
      _os_log_impl(&dword_0, v30, v31, "InternalSignalsManager#add#fromSearchMediaIntent added %s to searchMediaIntent. (unlock)", v32, 0xCu);
      sub_306C(v33);
    }

    v45(v11, v4);
    v39 = *(v46 + 2);

    sub_2CB800();
  }

  else
  {

    v34 = v42;
    v16(v42, v15, v4);
    v35 = sub_2CDFE0();
    v36 = sub_2CE680();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "InternalSignalsManager#add#fromSearchMediaIntent Unexpected backing store error while adding internal signal. (unlock)", v37, 2u);
    }

    v20(v34, v4);
    v38 = *(v46 + 2);

    sub_2CB800();
  }
}

uint64_t sub_2090D0(uint64_t a1, unint64_t a2, void *a3)
{
  v54 = a1;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v50 = &v49 - v12;
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  if (qword_34C000 != -1)
  {
    swift_once();
  }

  v53 = off_355060;
  v15 = *(&dword_10 + off_355060);

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v51 = v6[2];
  v51(v14, v16, v5);
  v17 = sub_2CDFE0();
  v18 = sub_2CE690();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v52 = (v6 + 2);
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "InternalSignalsManager#remove#fromPlayMediaIntent (lock aquired)", v19, 2u);
  }

  v52 = v6[1];
  v52(v14, v5);
  v20 = [a3 backingStore];
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v49 = v21;
    v22 = [v21 privatePlayMediaIntentData];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 internalSignals];

      if (v24)
      {
        v25 = sub_2CE410();

        v26 = *(v25 + 16);
        v27 = v54;
        if (v26)
        {
          v28 = 0;
          v29 = (v25 + 40);
          while (*(v29 - 1) != v27 || *v29 != a2)
          {
            v31 = sub_2CEEA0();
            v27 = v54;
            if (v31)
            {
              break;
            }

            ++v28;
            v29 += 2;
            if (v26 == v28)
            {
              goto LABEL_18;
            }
          }

          v36 = [v49 privatePlayMediaIntentData];
          if (v36)
          {
            v37 = v36;
            v38 = [v36 internalSignals];
            if (v38)
            {
              v39 = v38;
              v40 = sub_2CE410();

              v55 = v40;
              sub_207934(v28);

              if (v55)
              {
                v41.super.isa = sub_2CE400().super.isa;
              }

              else
              {
                v41.super.isa = 0;
              }

              [v37 setInternalSignals:v41.super.isa];
            }

            else
            {
              [v37 setInternalSignals:0];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v42 = v50;
    v51(v50, v16, v5);

    v43 = sub_2CDFE0();
    v44 = sub_2CE690();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v55 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_3F08(v54, a2, &v55);
      _os_log_impl(&dword_0, v43, v44, "InternalSignalsManager#remove#fromPlayMediaIntent removed %s from playMediaIntent. (unlock)", v45, 0xCu);
      sub_306C(v46);
    }

    v52(v42, v5);
    v47 = *(v53 + 2);

    sub_2CB800();
  }

  else
  {

    v51(v10, v16, v5);
    v32 = sub_2CDFE0();
    v33 = sub_2CE680();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "InternalSignalsManager#remove#fromPlayMediaIntent Unexpected backing store error adding internal signal. (unlock)", v34, 2u);
    }

    v52(v10, v5);
    v35 = *(v53 + 2);

    sub_2CB800();
  }
}

uint64_t sub_209704(uint64_t a1, unint64_t a2, void *a3)
{
  v54 = a1;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v50 = &v49 - v12;
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  if (qword_34C000 != -1)
  {
    swift_once();
  }

  v53 = off_355060;
  v15 = *(&dword_10 + off_355060);

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v51 = v6[2];
  v51(v14, v16, v5);
  v17 = sub_2CDFE0();
  v18 = sub_2CE690();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v52 = (v6 + 2);
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "InternalSignalsManager#remove#fromAddMediaIntent (lock aquired)", v19, 2u);
  }

  v52 = v6[1];
  v52(v14, v5);
  v20 = [a3 backingStore];
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v49 = v21;
    v22 = [v21 privateAddMediaIntentData];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 internalSignals];

      if (v24)
      {
        v25 = sub_2CE410();

        v26 = *(v25 + 16);
        v27 = v54;
        if (v26)
        {
          v28 = 0;
          v29 = (v25 + 40);
          while (*(v29 - 1) != v27 || *v29 != a2)
          {
            v31 = sub_2CEEA0();
            v27 = v54;
            if (v31)
            {
              break;
            }

            ++v28;
            v29 += 2;
            if (v26 == v28)
            {
              goto LABEL_18;
            }
          }

          v36 = [v49 privateAddMediaIntentData];
          if (v36)
          {
            v37 = v36;
            v38 = [v36 internalSignals];
            if (v38)
            {
              v39 = v38;
              v40 = sub_2CE410();

              v55 = v40;
              sub_207934(v28);

              if (v55)
              {
                v41.super.isa = sub_2CE400().super.isa;
              }

              else
              {
                v41.super.isa = 0;
              }

              [v37 setInternalSignals:v41.super.isa];
            }

            else
            {
              [v37 setInternalSignals:0];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v42 = v50;
    v51(v50, v16, v5);

    v43 = sub_2CDFE0();
    v44 = sub_2CE690();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v55 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_3F08(v54, a2, &v55);
      _os_log_impl(&dword_0, v43, v44, "InternalSignalsManager#remove#fromAddMediaIntent removed %s from addMediaIntent. (unlock)", v45, 0xCu);
      sub_306C(v46);
    }

    v52(v42, v5);
    v47 = *(v53 + 2);

    sub_2CB800();
  }

  else
  {

    v51(v10, v16, v5);
    v32 = sub_2CDFE0();
    v33 = sub_2CE680();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "InternalSignalsManager#remove#fromAddMediaIntent Unexpected backing store error adding internal signal. (unlock)", v34, 2u);
    }

    v52(v10, v5);
    v35 = *(v53 + 2);

    sub_2CB800();
  }
}

uint64_t sub_209D38(uint64_t a1, unint64_t a2, void *a3)
{
  v54 = a1;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v50 = &v49 - v12;
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  if (qword_34C000 != -1)
  {
    swift_once();
  }

  v53 = off_355060;
  v15 = *(&dword_10 + off_355060);

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v51 = v6[2];
  v51(v14, v16, v5);
  v17 = sub_2CDFE0();
  v18 = sub_2CE690();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v52 = (v6 + 2);
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "InternalSignalsManager#remove#fromUpdateMediaIntent (lock aquired)", v19, 2u);
  }

  v52 = v6[1];
  v52(v14, v5);
  v20 = [a3 backingStore];
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v49 = v21;
    v22 = [v21 privateUpdateMediaAffinityIntentData];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 internalSignals];

      if (v24)
      {
        v25 = sub_2CE410();

        v26 = *(v25 + 16);
        v27 = v54;
        if (v26)
        {
          v28 = 0;
          v29 = (v25 + 40);
          while (*(v29 - 1) != v27 || *v29 != a2)
          {
            v31 = sub_2CEEA0();
            v27 = v54;
            if (v31)
            {
              break;
            }

            ++v28;
            v29 += 2;
            if (v26 == v28)
            {
              goto LABEL_18;
            }
          }

          v36 = [v49 privateUpdateMediaAffinityIntentData];
          if (v36)
          {
            v37 = v36;
            v38 = [v36 internalSignals];
            if (v38)
            {
              v39 = v38;
              v40 = sub_2CE410();

              v55 = v40;
              sub_207934(v28);

              if (v55)
              {
                v41.super.isa = sub_2CE400().super.isa;
              }

              else
              {
                v41.super.isa = 0;
              }

              [v37 setInternalSignals:v41.super.isa];
            }

            else
            {
              [v37 setInternalSignals:0];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v42 = v50;
    v51(v50, v16, v5);

    v43 = sub_2CDFE0();
    v44 = sub_2CE690();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v55 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_3F08(v54, a2, &v55);
      _os_log_impl(&dword_0, v43, v44, "InternalSignalsManager#remove#fromUpdateMediaIntent removed %s from updateMediaIntent. (unlock)", v45, 0xCu);
      sub_306C(v46);
    }

    v52(v42, v5);
    v47 = *(v53 + 2);

    sub_2CB800();
  }

  else
  {

    v51(v10, v16, v5);
    v32 = sub_2CDFE0();
    v33 = sub_2CE680();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "InternalSignalsManager#remove#fromUpdateMediaIntent Unexpected backing store error adding internal signal. (unlock)", v34, 2u);
    }

    v52(v10, v5);
    v35 = *(v53 + 2);

    sub_2CB800();
  }
}

uint64_t sub_20A36C(uint64_t a1, unint64_t a2, void *a3)
{
  v54 = a1;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v50 = &v49 - v12;
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  if (qword_34C000 != -1)
  {
    swift_once();
  }

  v53 = off_355060;
  v15 = *(&dword_10 + off_355060);

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v51 = v6[2];
  v51(v14, v16, v5);
  v17 = sub_2CDFE0();
  v18 = sub_2CE690();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v52 = (v6 + 2);
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "InternalSignalsManager#remove#fromSearchMediaIntent (lock aquired)", v19, 2u);
  }

  v52 = v6[1];
  v52(v14, v5);
  v20 = [a3 backingStore];
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v49 = v21;
    v22 = [v21 privateSearchForMediaIntentData];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 internalSignals];

      if (v24)
      {
        v25 = sub_2CE410();

        v26 = *(v25 + 16);
        v27 = v54;
        if (v26)
        {
          v28 = 0;
          v29 = (v25 + 40);
          while (*(v29 - 1) != v27 || *v29 != a2)
          {
            v31 = sub_2CEEA0();
            v27 = v54;
            if (v31)
            {
              break;
            }

            ++v28;
            v29 += 2;
            if (v26 == v28)
            {
              goto LABEL_18;
            }
          }

          v36 = [v49 privateSearchForMediaIntentData];
          if (v36)
          {
            v37 = v36;
            v38 = [v36 internalSignals];
            if (v38)
            {
              v39 = v38;
              v40 = sub_2CE410();

              v55 = v40;
              sub_207934(v28);

              if (v55)
              {
                v41.super.isa = sub_2CE400().super.isa;
              }

              else
              {
                v41.super.isa = 0;
              }

              [v37 setInternalSignals:v41.super.isa];
            }

            else
            {
              [v37 setInternalSignals:0];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v42 = v50;
    v51(v50, v16, v5);

    v43 = sub_2CDFE0();
    v44 = sub_2CE690();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v55 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_3F08(v54, a2, &v55);
      _os_log_impl(&dword_0, v43, v44, "InternalSignalsManager#remove#fromSearchMediaIntent removed %s from searchMediaIntent. (unlock)", v45, 0xCu);
      sub_306C(v46);
    }

    v52(v42, v5);
    v47 = *(v53 + 2);

    sub_2CB800();
  }

  else
  {

    v51(v10, v16, v5);
    v32 = sub_2CDFE0();
    v33 = sub_2CE680();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "InternalSignalsManager#remove#fromSearchMediaIntent Unexpected backing store error adding internal signal. (unlock)", v34, 2u);
    }

    v52(v10, v5);
    v35 = *(v53 + 2);

    sub_2CB800();
  }
}

uint64_t sub_20A9C4()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v5 = CATDefaultMode;
  v6 = sub_2CBC00();
  v7 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v8 = swift_allocObject();
  v31[3] = &type metadata for StringsBackedAppNameResolver;
  v31[4] = sub_2869C();
  v31[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v31[0] + 16);
  v30[3] = v6;
  v30[4] = &protocol witness table for MorphunProvider;
  v30[0] = v7;
  v29[3] = v0;
  v29[4] = &protocol witness table for FeatureFlagProvider;
  v9 = sub_F390(v29);
  (*(v1 + 16))(v9, v4, v0);
  *(v8 + 296) = v5;
  sub_EEAC(v29, v8 + 256);
  sub_EEAC(v31, v28);
  sub_EEAC(v30, v27);
  sub_EEAC(v32, v26);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v10 = sub_2CCA30();

  v11 = sub_2CCA20();
  v23[3] = v10;
  v23[4] = &protocol witness table for MultiUserConnectionProvider;
  v23[0] = v11;
  v22[3] = sub_2CB9E0();
  v22[4] = &protocol witness table for DeviceProvider;
  sub_F390(v22);
  sub_2CB9C0();
  sub_EEAC(v28, v8 + 16);
  sub_EEAC(v27, v8 + 216);
  sub_EEAC(v26, v8 + 56);
  sub_EEAC(v23, v8 + 96);
  sub_EEAC(v22, v8 + 176);
  sub_F3F4(v24, &v17, qword_34C708, &qword_2D1620);
  if (v18)
  {

    sub_30B8(v24, qword_34C708, &qword_2D1620);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    (*(v1 + 8))(v4, v0);
    sub_306C(v32);
    sub_306C(v29);
    sub_306C(v30);
    sub_306C(v31);
    sub_306C(v22);
    sub_306C(v23);
    sub_F338(&v17, &v19);
  }

  else
  {
    sub_EEAC(v26, &v19);
    v12 = sub_2C9E60();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_2C9E50();
    v20 = v12;
    v21 = &protocol witness table for ContactsManager;

    *&v19 = v15;
    sub_30B8(v24, qword_34C708, &qword_2D1620);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    (*(v1 + 8))(v4, v0);
    sub_306C(v32);
    sub_306C(v29);
    sub_306C(v30);
    sub_306C(v31);
    sub_306C(v22);
    sub_306C(v23);
    if (v18)
    {
      sub_30B8(&v17, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v19, v8 + 136);
  return v8;
}

uint64_t sub_20AE68(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_2CC2B0();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  __chkstk_darwin(v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_34E480, &qword_2D2280);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v53 - v12;
  sub_F3F4(a1, &v53 - v12, &qword_34E480, &qword_2D2280);
  sub_EEAC(a3, v80);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v79[3] = &type metadata for StringsBackedAppNameResolver;
  v14 = sub_2869C();
  v79[4] = v14;
  v79[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v79[0] + 16);
  sub_2C9A00();
  v77[3] = v6;
  v77[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v77);
  sub_2CC2A0();
  v76[3] = sub_2CC040();
  v76[4] = &protocol witness table for NowPlayingProvider;
  sub_F390(v76);
  sub_2CC030();
  v15 = sub_2CB4A0();
  v16 = sub_2CB490();
  v75[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v75[3] = v15;
  v75[0] = v16;
  v17 = type metadata accessor for AudioAppResolutionFlow();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v55 = v17;
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_input;
  v22 = sub_2CA7B0();
  (*(*(v22 - 8) + 56))(v20 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_intent;
  *(v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_intent) = 0;
  swift_beginAccess();
  v56 = v13;
  sub_BED04(v13, v20 + v21);
  swift_endAccess();
  v24 = *(v20 + v23);
  *(v20 + v23) = a2;

  sub_EEAC(v79, v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_appNameResolver);
  sub_EEAC(v78, v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_aceService);
  sub_EEAC(v80, v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_outputPublisher);
  v25 = (v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_nextAppAcceptingFlow);
  *v25 = sub_104B9C;
  v25[1] = 0;
  sub_EEAC(v77, v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_featureFlags);
  sub_EEAC(v76, v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_nowPlayingProvider);
  sub_EEAC(v75, v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_siriKitTaskLoggingProvider);
  sub_EEAC(v79, v73);
  sub_EEAC(v78, v72);
  v26 = CATDefaultMode;
  v27 = sub_2CBC00();
  v28 = a2;
  v29 = sub_2CBBF0();
  sub_2CC2A0();
  v30 = v74;
  v31 = sub_F9A0(v73, v74);
  v53 = &v53;
  v32 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v31);
  v34 = (&v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  type metadata accessor for CatService();
  v36 = swift_allocObject();
  v71[3] = &type metadata for StringsBackedAppNameResolver;
  v71[4] = v14;
  v37 = swift_allocObject();
  v71[0] = v37;
  v38 = v34[3];
  v37[3] = v34[2];
  v37[4] = v38;
  v37[5] = v34[4];
  v39 = v34[1];
  v37[1] = *v34;
  v37[2] = v39;
  v70[3] = v27;
  v70[4] = &protocol witness table for MorphunProvider;
  v70[0] = v29;
  v69[3] = v6;
  v69[4] = &protocol witness table for FeatureFlagProvider;
  v40 = sub_F390(v69);
  v41 = v54;
  (*(v54 + 16))(v40, v9, v6);
  *(v36 + 296) = v26;
  sub_EEAC(v69, v36 + 256);
  sub_EEAC(v71, v68);
  sub_EEAC(v70, v67);
  sub_EEAC(v72, v66);
  v65 = 0;
  memset(v64, 0, sizeof(v64));
  v42 = sub_2CCA30();

  v43 = sub_2CCA20();
  v63[3] = v42;
  v63[4] = &protocol witness table for MultiUserConnectionProvider;
  v63[0] = v43;
  v62[3] = sub_2CB9E0();
  v62[4] = &protocol witness table for DeviceProvider;
  sub_F390(v62);
  sub_2CB9C0();
  sub_EEAC(v68, v36 + 16);
  sub_EEAC(v67, v36 + 216);
  sub_EEAC(v66, v36 + 56);
  sub_EEAC(v63, v36 + 96);
  sub_EEAC(v62, v36 + 176);
  sub_F3F4(v64, &v57, qword_34C708, &qword_2D1620);
  v44 = v41;
  if (v58)
  {

    sub_30B8(v64, qword_34C708, &qword_2D1620);
    sub_306C(v66);
    sub_306C(v67);
    sub_306C(v68);
    (*(v41 + 8))(v9, v6);
    sub_306C(v72);
    sub_306C(v69);
    sub_306C(v70);
    sub_306C(v71);
    sub_306C(v62);
    sub_306C(v63);
    sub_F338(&v57, &v59);
  }

  else
  {
    sub_EEAC(v66, &v59);
    v45 = sub_2C9E60();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v48 = sub_2C9E50();
    v60 = v45;
    v61 = &protocol witness table for ContactsManager;

    *&v59 = v48;
    sub_30B8(v64, qword_34C708, &qword_2D1620);
    sub_306C(v66);
    sub_306C(v67);
    sub_306C(v68);
    (*(v44 + 8))(v9, v6);
    sub_306C(v72);
    sub_306C(v69);
    sub_306C(v70);
    sub_306C(v71);
    sub_306C(v62);
    sub_306C(v63);
    if (v58)
    {
      sub_30B8(&v57, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v59, v36 + 136);
  sub_306C(v73);
  *(v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_catService) = v36;
  type metadata accessor for CommonMediaIntentCatDialogService();
  v49 = swift_allocObject();

  sub_306C(v78);
  sub_306C(v80);
  sub_30B8(v56, &qword_34E480, &qword_2D2280);
  sub_306C(v75);
  sub_306C(v76);
  sub_306C(v77);
  sub_306C(v79);
  v49[2] = 0xD000000000000011;
  v49[3] = 0x80000000002DA8D0;
  v49[4] = v36;
  *(v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_commonMediaIntentCatDialogService) = v49;
  v50 = (v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_appResolutionFlowProducer);
  *v50 = sub_104BA4;
  v50[1] = 0;
  *(v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_state) = 0;
  v80[0] = v20;
  sub_216000(&qword_353898, type metadata accessor for AudioAppResolutionFlow);
  v51 = sub_2C97B0();

  return v51;
}

uint64_t sub_20B6F0(char *a1)
{
  v2 = sub_20410(&qword_34E480, &qword_2D2280);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v88 - v4;
  v94 = sub_2CA810();
  v95 = *(v94 - 8);
  v6 = *(v95 + 64);
  __chkstk_darwin(v94);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2CA870();
  v100 = *(v101 - 8);
  v9 = *(v100 + 64);
  __chkstk_darwin(v101);
  v102 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v92 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v91 = &v88 - v17;
  v18 = __chkstk_darwin(v16);
  v90 = &v88 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v88 - v21;
  v23 = __chkstk_darwin(v20);
  v88 = &v88 - v24;
  v25 = __chkstk_darwin(v23);
  v96 = &v88 - v26;
  __chkstk_darwin(v25);
  v28 = &v88 - v27;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v29 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  v30 = v12[2];
  v98 = v29;
  v99 = v12 + 2;
  v97 = v30;
  v30(v28, v29, v11);
  v31 = sub_2CDFE0();
  v32 = sub_2CE690();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v89 = v22;
    *v33 = 0;
    _os_log_impl(&dword_0, v31, v32, "AmbiguousPlayFlow#on Handling input", v33, 2u);
    v22 = v89;
  }

  v34 = v12[1];
  v34(v28, v11);
  v35 = v102;
  sub_2CA790();
  v36 = v100;
  v37 = v101;
  v38 = (*(v100 + 88))(v35, v101);
  if (v38 == enum case for Parse.NLv3IntentOnly(_:))
  {
    goto LABEL_6;
  }

  if (v38 != enum case for Parse.directInvocation(_:))
  {
    if (v38 == enum case for Parse.pegasusResults(_:))
    {
LABEL_6:
      (*(v36 + 8))(v102, v37);
      v39 = v96;
      v97(v96, v98, v11);
      v40 = sub_2CDFE0();
      v41 = sub_2CE680();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_0, v40, v41, "AmbiguousPlayFlow#on received unsupported parse", v42, 2u);
      }

      v34(v39, v11);
      return 0;
    }

    v53 = v92;
    v97(v92, v98, v11);
    v54 = sub_2CDFE0();
    v55 = sub_2CE660();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "AmbiguousPlayFlow#on received supported parse", v56, 2u);
    }

    v34(v53, v11);
    (*(v100 + 8))(v102, v101);
    v57 = sub_2CA7B0();
    v58 = *(v57 - 8);
    (*(v58 + 16))(v5, a1, v57);
    (*(v58 + 56))(v5, 0, 1, v57);
    v59 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_input;
    v60 = v93;
    swift_beginAccess();
    sub_A4888(v5, v60 + v59);
    goto LABEL_30;
  }

  v96 = a1;
  v43 = v102;
  (*(v36 + 96))(v102, v37);
  v44 = v43;
  v45 = v94;
  (*(v95 + 32))(v8, v44, v94);
  sub_238E4C(v8, v103);
  if (v104 == 4)
  {
    v102 = v8;
    v62 = v103[5];
    v61 = v103[6];
    v63 = v103[0];

    if (v61)
    {
      v97(v22, v98, v11);

      v64 = sub_2CDFE0();
      v65 = sub_2CE680();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v89 = v22;
        v67 = v66;
        v68 = swift_slowAlloc();
        *v67 = 138412290;
        sub_10C40();
        swift_allocError();
        *v69 = v62;
        v69[1] = v61;
        v70 = _swift_stdlib_bridgeErrorToNSError();
        *(v67 + 4) = v70;
        *v68 = v70;
        _os_log_impl(&dword_0, v64, v65, "PlayMediaShim DirectInvocation reports an error: %@", v67, 0xCu);
        sub_30B8(v68, &unk_34FC00, &unk_2D0150);

        v22 = v89;
      }

      else
      {
      }

      v34(v22, v11);
      v50 = *(v95 + 8);
      v51 = v102;
      v52 = v94;
      goto LABEL_36;
    }

    if (!v63)
    {
      v84 = v88;
      v97(v88, v98, v11);
      v85 = sub_2CDFE0();
      v86 = sub_2CE680();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_0, v85, v86, "PlayMediaShim DirectInvocation doesn't include audioExperience", v87, 2u);
      }

      v34(v84, v11);
      v50 = *(v95 + 8);
      v51 = v102;
      goto LABEL_19;
    }

    (*(v95 + 8))(v102, v45);
    v83 = *(v93 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_shimAudioExperience);
    *(v93 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_shimAudioExperience) = v63;

    return 1;
  }

  if (v104 != 255)
  {
    sub_30B8(v103, &qword_34CCB0, &qword_2D5710);
  }

  sub_238E4C(v8, v105);
  if (!v107)
  {
    v102 = v5;
    v71 = v8;
    v72 = v106;

    v73 = v90;
    v97(v90, v98, v11);
    v74 = sub_2CDFE0();
    v75 = sub_2CE690();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_0, v74, v75, "AmbiguousPlayFlow#on received replay request direct invocation. Handling in SiriAudio", v76, 2u);
    }

    v34(v73, v11);
    (*(v95 + 8))(v71, v45);
    v77 = sub_2CA7B0();
    v78 = *(v77 - 8);
    v79 = v102;
    (*(v78 + 16))(v102, v96, v77);
    (*(v78 + 56))(v79, 0, 1, v77);
    v80 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_input;
    v81 = v93;
    swift_beginAccess();
    sub_A4888(v79, v81 + v80);
LABEL_30:
    swift_endAccess();
    return 1;
  }

  if (v107 != 255)
  {
    sub_30B8(v105, &qword_34CCB0, &qword_2D5710);
  }

  v46 = v91;
  v97(v91, v98, v11);
  v47 = sub_2CDFE0();
  v48 = sub_2CE680();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_0, v47, v48, "Only DirectInvocation from PlayMediaShim is supported", v49, 2u);
  }

  v34(v46, v11);
  v50 = *(v95 + 8);
  v51 = v8;
LABEL_19:
  v52 = v45;
LABEL_36:
  v50(v51, v52);
  return 0;
}

uint64_t sub_20C3FC(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v17 = a1;
  v2 = sub_2CDFD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v9 = qword_35F760;
  sub_2CDFB0();
  (*(v3 + 16))(v6, v8, v2);
  v10 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = "ambiguousPlayFlowFrameAction";
  *(v12 + 24) = 28;
  *(v12 + 32) = 2;
  (*(v3 + 32))(v12 + v10, v6, v2);
  v13 = (v12 + v11);
  v14 = v18;
  *v13 = v17;
  v13[1] = v14;

  sub_2CE9E0();
  sub_2CDF90();

  sub_212A20(v19, sub_13B2C, v12);

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_20C658(int a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v45 = a7;
  v46 = a4;
  v43 = a1;
  v47 = a1;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v49 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v37 - v15;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v41 = v11[2];
  v42 = v17;
  v41(v16, v17, v10);
  v18 = a2;
  v19 = sub_2CDFE0();
  v20 = sub_2CE690();

  v21 = os_log_type_enabled(v19, v20);
  v48 = v18;
  if (v21)
  {
    v38 = v11;
    v39 = a5;
    v40 = a3;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v51 = v23;
    *v22 = 136315138;
    v24 = [v18 hashedRouteUIDs];
    if (v24)
    {
      v25 = v24;
      v26 = sub_2CE410();
    }

    else
    {
      v26 = 0;
    }

    v50 = v26;
    sub_20410(&qword_353C98, &unk_2D6A00);
    v33 = sub_2CEB70();
    v35 = v34;

    v36 = sub_3F08(v33, v35, &v51);

    *(v22 + 4) = v36;
    _os_log_impl(&dword_0, v19, v20, "AmbiguousPlayFlow#execute Resolved hashed route ids: %s", v22, 0xCu);
    sub_306C(v23);

    v27 = v38[1];
    v27(v16, v10);
    a5 = v39;
    if ((v47 & 0x100) == 0)
    {
      return sub_20DF24(v44, v45, v48, v46, a5);
    }
  }

  else
  {

    v27 = v11[1];
    v27(v16, v10);
    if ((v47 & 0x100) == 0)
    {
      return sub_20DF24(v44, v45, v48, v46, a5);
    }
  }

  v28 = v43;
  v41(v49, v42, v10);
  v29 = sub_2CDFE0();
  v30 = sub_2CE680();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "AmbiguousPlayFlow#execute WHA route resolution failed. Returning an error", v31, 2u);
  }

  v27(v49, v10);
  if (v28 == 1)
  {
    return sub_20F18C(v48, v46, a5);
  }

  if (v28 == 3)
  {
    return sub_20FB9C(v48, v46, a5);
  }

  return sub_20F7B0(v48, v46, a5);
}

uint64_t sub_20CA84(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2C9EC0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v32 = a3;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v19 = sub_3ED0(v9, static Logger.default);
    swift_beginAccess();
    (*(v10 + 16))(v13, v19, v9);
    swift_errorRetain();
    v20 = sub_2CDFE0();
    v21 = sub_2CE680();
    sub_C7340(a1, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v22 = 136446466;
      v23 = sub_2CCCC0();
      v25 = a4;
      v26 = sub_3F08(v23, v24, &v34);

      *(v22 + 4) = v26;
      a4 = v25;
      *(v22 + 12) = 2112;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v27;
      v28 = v30;
      *v30 = v27;
      _os_log_impl(&dword_0, v20, v21, "AmbiguousPlayFlow#execute %{public}s Resume first party app intent failed with an error: %@", v22, 0x16u);
      sub_30B8(v28, &unk_34FC00, &unk_2D0150);

      sub_306C(v31);
    }

    (*(v10 + 8))(v13, v9);
    return sub_20EA54(0x7463657078656E75, 0xEF65737261506465, v32, a4);
  }

  else
  {
    sub_2C9EA0();
    a3(v18);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_20CE00(uint64_t a1, char a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v101 = a6;
  v108 = a5;
  v109 = a4;
  v105 = a3;
  v8 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v99 = &v94 - v10;
  v100 = sub_2C9C20();
  v98 = *(v100 - 8);
  v11 = *(v98 + 64);
  __chkstk_darwin(v100);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CCB30();
  v97 = *(v14 - 8);
  v15 = *(v97 + 64);
  __chkstk_darwin(v14);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CCAC0();
  v96 = *(v18 - 8);
  v19 = *(v96 + 64);
  __chkstk_darwin(v18);
  v21 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2C9EC0();
  v103 = *(v22 - 8);
  v104 = v22;
  v23 = *(v103 + 64);
  __chkstk_darwin(v22);
  v102 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2CE000();
  v106 = *(v25 - 8);
  v107 = v25;
  v26 = *(v106 + 64);
  v27 = __chkstk_darwin(v25);
  v28 = __chkstk_darwin(v27);
  v30 = &v94 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v94 - v32;
  __chkstk_darwin(v31);
  v36 = &v94 - v35;
  if (a2)
  {
    v112 = 0;
    v113 = 0xE000000000000000;
    sub_2CECB0(104);
    v114._countAndFlagsBits = 0xD00000000000004ELL;
    v114._object = 0x80000000002DF990;
    sub_2CE350(v114);
    swift_getErrorValue();
    v115._countAndFlagsBits = sub_2CEEF0();
    sub_2CE350(v115);

    v116._countAndFlagsBits = 0xD000000000000018;
    v116._object = 0x80000000002DC330;
    sub_2CE350(v116);
    v38 = v112;
    v37 = v113;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v39 = v107;
    v40 = sub_3ED0(v107, static Logger.default);
    swift_beginAccess();
    v41 = v106;
    (*(v106 + 16))(v36, v40, v39);

    v42 = sub_2CDFE0();
    v43 = sub_2CE680();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v110 = v45;
      *v44 = 136315138;
      v46 = sub_3F08(v38, v37, &v110);

      *(v44 + 4) = v46;
      _os_log_impl(&dword_0, v42, v43, "%s", v44, 0xCu);
      sub_306C(v45);
    }

    else
    {
    }

    (*(v41 + 8))(v36, v39);
    *(v105 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_state) = 1;
    swift_getErrorValue();
    v117._countAndFlagsBits = sub_2CEEF0();
    v110 = 0xD00000000000001ELL;
    v111 = 0x80000000002DF9E0;
    sub_2CE350(v117);

    sub_20EA54(v110, v111, v109, v108);
  }

  if (a1)
  {
    v47 = qword_34BF58;

    v48 = a1;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = v107;
    v50 = sub_3ED0(v107, static Logger.default);
    swift_beginAccess();
    v51 = v106;
    (*(v106 + 16))(v33, v50, v49);
    v52 = sub_2CDFE0();
    v53 = sub_2CE690();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = v48;
      v56 = swift_slowAlloc();
      v110 = v56;
      *v54 = 136446210;
      v57 = sub_2CCCC0();
      v59 = sub_3F08(v57, v58, &v110);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_0, v52, v53, "AmbiguousPlayFlow#execute %{public}s executing resume flow from controls", v54, 0xCu);
      sub_306C(v56);
      v48 = v55;
    }

    (*(v51 + 8))(v33, v49);
    v60 = v102;
    sub_2C9EA0();
    v109(v60);
    sub_C7340(v48, 0);
    return (*(v103 + 8))(v60, v104);
  }

  v95 = v34;
  *(v105 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_state) = 1;
  v62 = objc_allocWithZone(NSUserDefaults);
  v63 = sub_2CE260();
  v64 = [v62 initWithSuiteName:v63];

  if (!v64 || (v65 = sub_2CE260(), v66 = [v64 BOOLForKey:v65], v64, v65, (v66 & 1) == 0) || (v67 = v105[11], sub_35E0(v105 + 7, v105[10]), (sub_2CC7B0() & 1) == 0))
  {
    v80 = v96;
    (*(v96 + 104))(v21, enum case for AdditionalMetricsDescription.ModuleName.apf(_:), v18);
    v81 = v97;
    (*(v97 + 104))(v17, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v14);
    sub_2CCAE0();
    (*(v81 + 8))(v17, v14);
    (*(v80 + 8))(v21, v18);
    v82 = v105[43];
    sub_35E0(v105 + 39, v105[42]);
    v83 = v98;
    v84 = v100;
    (*(v98 + 104))(v13, enum case for ActivityType.fallback(_:), v100);
    v85 = sub_2C98F0();
    v86 = v99;
    (*(*(v85 - 8) + 56))(v99, 1, 1, v85);
    sub_2CB510();

    sub_30B8(v86, &qword_34CB78, &unk_2D0D80);
    (*(v83 + 8))(v13, v84);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v87 = v107;
    v88 = sub_3ED0(v107, static Logger.default);
    swift_beginAccess();
    v89 = v106;
    (*(v106 + 16))(v95, v88, v87);
    v90 = sub_2CDFE0();
    v91 = sub_2CE680();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_0, v90, v91, "AmbiguousPlayFlow#execute no content in the music queue, looking to shuffle local library", v92, 2u);
    }

    (*(v89 + 8))(v95, v87);
    sub_D8B98();
    v93 = sub_2CE7D0();
    sub_1356F8(v101, v93);

    v60 = v102;
    sub_2C9EA0();
    v109(v60);

    return (*(v103 + 8))(v60, v104);
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v68 = v107;
  v69 = sub_3ED0(v107, static Logger.default);
  swift_beginAccess();
  v70 = v106;
  (*(v106 + 16))(v30, v69, v68);
  v71 = sub_2CDFE0();
  v72 = sub_2CE660();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v110 = v74;
    *v73 = 136446210;
    v75 = sub_2CCCC0();
    v77 = sub_3F08(v75, v76, &v110);

    *(v73 + 4) = v77;
    _os_log_impl(&dword_0, v71, v72, "AmbiguousPlayFlow#execute %{public}s no flow received from controls for NLv4IntentOnly parse and device is offline, shuffling local library", v73, 0xCu);
    sub_306C(v74);
  }

  (*(v70 + 8))(v30, v68);
  sub_D8B98();
  v78 = sub_2CE7D0();
  sub_1356F8(v101, v78);
  v79 = v102;
  sub_2C9EA0();
  v109(v79);

  return (*(v103 + 8))(v79, v104);
}

uint64_t sub_20DB88(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = v3;
  v32 = a2;
  v29 = a1;
  v6 = sub_20410(&qword_34E480, &qword_2D2280);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v28 - v8;
  v10 = sub_2C9EC0();
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  __chkstk_darwin(v10);
  v30 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_2CDFE0();
  v20 = sub_2CE690();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v28 = v4;
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "AmbiguousPlayFlow#nextFlow", v21, 2u);
    v4 = v28;
  }

  (*(v14 + 8))(v17, v13);
  v23 = *(v4 + 392);
  v22 = *(v4 + 400);
  v24 = sub_2CA7B0();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v9, v29, v24);
  (*(v25 + 56))(v9, 0, 1, v24);
  v23(v9, v32, v4 + 352);
  sub_30B8(v9, &qword_34E480, &qword_2D2280);
  v26 = v30;
  sub_2C9EA0();

  a3(v26);
  return (*(v31 + 8))(v26, v10);
}

uint64_t sub_20DF24(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *), uint64_t a5)
{
  v6 = v5;
  v45 = a4;
  v46 = a5;
  v43 = a1;
  v44 = a2;
  v8 = sub_2CA7B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  if (*(v6 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_state) == 1)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v20 = sub_3ED0(v12, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v19, v20, v12);
    v21 = sub_2CDFE0();
    v22 = sub_2CE690();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "AmbiguousPlayFlow#executeFlow has previously been rejected by controls, executing next flow", v23, 2u);
    }

    (*(v13 + 8))(v19, v12);
    v24 = v44;
    v25 = a3;
    return sub_20DB88(v24, v25, v45);
  }

  v26 = a3;
  if (a3)
  {
    v47 = a3;
    sub_D8B98();
    v42 = a3;
    v27 = sub_2CC140();
    v26 = v42;
    if (v27)
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v28 = sub_3ED0(v12, static Logger.default);
      swift_beginAccess();
      (*(v13 + 16))(v17, v28, v12);
      v29 = sub_2CDFE0();
      v30 = sub_2CE690();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_0, v29, v30, "AmbiguousPlayFlow#executeFlow This is a SiriForAirPlay request, pushing the next play flow directly without calling ControlsFlowProvider", v31, 2u);
      }

      (*(v13 + 8))(v17, v12);
      v24 = v44;
      v25 = v42;
      return sub_20DB88(v24, v25, v45);
    }
  }

  v33 = v6[6];
  v41 = v6[5];
  v42 = v33;
  v40 = sub_35E0(v6 + 2, v41);
  (*(v9 + 16))(&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v8);
  v34 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = v46;
  v37 = swift_allocObject();
  *(v37 + 16) = v6;
  (*(v9 + 32))(v37 + v34, v11, v8);
  *(v37 + v35) = v26;
  v38 = (v37 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v38 = v45;
  v38[1] = v36;

  v39 = v26;

  sub_2CDC50();
}

uint64_t sub_20E3C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(char *))
{
  v56 = a5;
  v57 = a6;
  v55 = a4;
  v9 = sub_2C9EC0();
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v52 - v20;
  __chkstk_darwin(v19);
  v23 = &v52 - v22;
  if (a2)
  {
    v54 = a3;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v24 = sub_3ED0(v13, static Logger.default);
    swift_beginAccess();
    (*(v14 + 16))(v23, v24, v13);
    swift_errorRetain();
    v25 = sub_2CDFE0();
    v26 = sub_2CE680();
    sub_C7340(a1, 1);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v58 = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = sub_2CEEF0();
      v31 = sub_3F08(v29, v30, &v58);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_0, v25, v26, "AmbiguousPlayFlowFrame#executeFlow Failure getting frame from controls: %s", v27, 0xCu);
      sub_306C(v28);
    }

    (*(v14 + 8))(v23, v13);
    v32 = v55;
    v33 = v56;
    v34 = v57;
    return sub_20DB88(v32, v33, v34);
  }

  if (!a1)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v43 = sub_3ED0(v13, static Logger.default);
    swift_beginAccess();
    (*(v14 + 16))(v18, v43, v13);
    v44 = sub_2CDFE0();
    v45 = sub_2CE660();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v58 = v47;
      *v46 = 136446210;
      v48 = sub_2CCCC0();
      v52 = v14;
      v50 = sub_3F08(v48, v49, &v58);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_0, v44, v45, "AmbiguousPlayFlow#executeFlow %{public}s no flow received from controls for intent", v46, 0xCu);
      sub_306C(v47);

      (*(v52 + 8))(v18, v13);
    }

    else
    {

      (*(v14 + 8))(v18, v13);
    }

    v32 = v55;
    v33 = v56;
    v34 = v57;
    return sub_20DB88(v32, v33, v34);
  }

  v35 = qword_34BF58;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v14 + 16))(v21, v36, v13);
  v37 = sub_2CDFE0();
  v38 = sub_2CE690();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v58 = v56;
    *v39 = 136446210;
    v40 = sub_2CCCC0();
    v52 = v14;
    v42 = sub_3F08(v40, v41, &v58);

    *(v39 + 4) = v42;
    _os_log_impl(&dword_0, v37, v38, "AmbiguousPlayFlow#executeFlow %{public}s executing resume flow from controls", v39, 0xCu);
    sub_306C(v56);

    (*(v52 + 8))(v21, v13);
  }

  else
  {

    (*(v14 + 8))(v21, v13);
  }

  sub_2C9EA0();
  v57(v12);
  sub_C7340(a1, 0);
  return (*(v53 + 8))(v12, v54);
}

uint64_t sub_20EA54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a3;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);

  v15 = sub_2CDFE0();
  v16 = sub_2CE670();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v5;
    v18 = a4;
    v19 = v17;
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_3F08(a1, a2, &v33);
    _os_log_impl(&dword_0, v15, v16, "AmbiguousPlayFlow#genericErrorDialog Reached logic... %s", v19, 0xCu);
    sub_306C(v20);

    a4 = v18;
    v5 = v31;
  }

  (*(v10 + 8))(v13, v9);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0E40;
  sub_2CC230();
  *(inited + 32) = sub_2CC200();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v22;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  *(inited + 80) = sub_2CC1F0();
  *(inited + 88) = v23;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_2CECB0(59);
  v35._object = 0x80000000002DF820;
  v35._countAndFlagsBits = 0xD000000000000039;
  sub_2CE350(v35);
  v36._countAndFlagsBits = a1;
  v36._object = a2;
  sub_2CE350(v36);
  v24 = v33;
  v25 = v34;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v24;
  *(inited + 104) = v25;
  v26 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v27 = *(v5 + 96);
  v28 = swift_allocObject();
  v28[2] = v5;
  v28[3] = a1;
  v29 = v32;
  v28[4] = a2;
  v28[5] = v29;
  v28[6] = a4;

  sub_3D150(v26, 0, sub_212038, v28);
}

uint64_t sub_20EDFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v39 = a6;
  v36 = a3;
  v37 = a5;
  v8 = sub_20410(&unk_3519A0, &qword_2D0980);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v35 = v34 - v11;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2CDFE0();
  v19 = sub_2CE670();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "AmbiguousPlayFlow#handleErrorDialogResult Handling dialog Result...", v20, 2u);
  }

  (*(v13 + 8))(v16, v12);
  v21 = a2[22];
  v34[2] = a2[23];
  v34[1] = sub_35E0(a2 + 19, v21);
  v34[0] = sub_2CBD50();
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v22 = v35;
  sub_F3F4(a1, v35, &unk_3519A0, &qword_2D0980);
  v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_14A58(v22, v27 + v23, &unk_3519A0, &qword_2D0980);
  v28 = (v27 + v24);
  v29 = v37;
  v30 = v38;
  v31 = v39;
  *v28 = v36;
  v28[1] = v30;
  *(v27 + v25) = a2;
  *(v27 + v26) = 0;
  v32 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v32 = v29;
  v32[1] = v31;

  sub_2CBC50();

  return sub_30B8(v40, &qword_34E970, &qword_2D2910);
}

uint64_t sub_20F18C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2CDFE0();
  v15 = sub_2CE670();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "AmbiguousPlayFlow#unsupportedOnPlatformErrorResponse Reached logic...", v16, 2u);
  }

  (*(v9 + 8))(v12, v8);
  v17 = *(v4 + 96);
  v18 = sub_112C0(_swiftEmptyArrayStorage);
  v22[3] = sub_D8B98();
  v22[4] = &off_3381B8;
  v22[0] = a1;
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = a1;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  v20 = a1;

  sub_3D81C(v18, v22, sub_21202C, v19);

  return sub_30B8(v22, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_20F400(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v37 = a3;
  v38 = a5;
  v36 = a4;
  v7 = sub_20410(&unk_3519A0, &qword_2D0980);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v35 = v34 - v10;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2CDFE0();
  v18 = sub_2CE670();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "AmbiguousPlayFlow#handleErrorDialogResult Handling dialog Result...", v19, 2u);
  }

  (*(v12 + 8))(v15, v11);
  v34[0] = 0x80000000002DD100;
  v20 = a2[22];
  v34[3] = a2[23];
  v34[2] = sub_35E0(a2 + 19, v20);
  v34[1] = sub_2CBD50();
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v21 = v35;
  sub_F3F4(a1, v35, &unk_3519A0, &qword_2D0980);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_14A58(v21, v26 + v22, &unk_3519A0, &qword_2D0980);
  v27 = (v26 + v23);
  *v27 = 0xD000000000000015;
  v27[1] = v34[0];
  *(v26 + v24) = a2;
  v28 = v36;
  v29 = v37;
  *(v26 + v25) = v37;
  v30 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  v31 = v38;
  *v30 = v28;
  v30[1] = v31;

  v32 = v29;

  sub_2CBC50();

  return sub_30B8(v39, &qword_34E970, &qword_2D2910);
}

uint64_t sub_20F7EC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v37 = a3;
  v38 = a5;
  v36 = a4;
  v7 = sub_20410(&unk_3519A0, &qword_2D0980);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v35 = v34 - v10;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2CDFE0();
  v18 = sub_2CE670();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "AmbiguousPlayFlow#handleErrorDialogResult Handling dialog Result...", v19, 2u);
  }

  (*(v12 + 8))(v15, v11);
  v34[0] = 0x80000000002DF800;
  v20 = a2[22];
  v34[3] = a2[23];
  v34[2] = sub_35E0(a2 + 19, v20);
  v34[1] = sub_2CBD50();
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v21 = v35;
  sub_F3F4(a1, v35, &unk_3519A0, &qword_2D0980);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_14A58(v21, v26 + v22, &unk_3519A0, &qword_2D0980);
  v27 = (v26 + v23);
  *v27 = 0xD00000000000001BLL;
  v27[1] = v34[0];
  *(v26 + v24) = a2;
  v28 = v36;
  v29 = v37;
  *(v26 + v25) = v37;
  v30 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  v31 = v38;
  *v30 = v28;
  v30[1] = v31;

  v32 = v29;

  sub_2CBC50();

  return sub_30B8(v39, &qword_34E970, &qword_2D2910);
}

uint64_t sub_20FBD8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, void *))
{
  v27 = a4;
  v28 = a5;
  v10 = v7;
  v29 = a2;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_2CDFE0();
  v20 = sub_2CE670();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v26 = a1;
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, v27, v21, 2u);
    a1 = v26;
  }

  (*(v14 + 8))(v17, v13);
  v22 = *(v10 + 96);
  v30[3] = sub_D8B98();
  v30[4] = &off_3381B8;
  v30[0] = a1;
  v23 = swift_allocObject();
  v23[2] = v10;
  v23[3] = a1;
  v23[4] = v29;
  v23[5] = a3;
  v24 = a1;

  a7(v30, a6, v23);

  return sub_30B8(v30, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_20FE54(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v37 = a3;
  v38 = a5;
  v36 = a4;
  v7 = sub_20410(&unk_3519A0, &qword_2D0980);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v35 = v34 - v10;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2CDFE0();
  v18 = sub_2CE670();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "AmbiguousPlayFlow#handleErrorDialogResult Handling dialog Result...", v19, 2u);
  }

  (*(v12 + 8))(v15, v11);
  v34[0] = 0x80000000002DD0E0;
  v20 = a2[22];
  v34[3] = a2[23];
  v34[2] = sub_35E0(a2 + 19, v20);
  v34[1] = sub_2CBD50();
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v21 = v35;
  sub_F3F4(a1, v35, &unk_3519A0, &qword_2D0980);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_14A58(v21, v26 + v22, &unk_3519A0, &qword_2D0980);
  v27 = (v26 + v23);
  *v27 = 0xD000000000000011;
  v27[1] = v34[0];
  *(v26 + v24) = a2;
  v28 = v36;
  v29 = v37;
  *(v26 + v25) = v37;
  v30 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  v31 = v38;
  *v30 = v28;
  v30[1] = v31;

  v32 = v29;

  sub_2CBC50();

  return sub_30B8(v39, &qword_34E970, &qword_2D2910);
}

uint64_t sub_210204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(char *), uint64_t a9)
{
  v140 = a8;
  v134 = a7;
  v133 = a6;
  v132 = a5;
  v131 = a4;
  v128 = a3;
  v135 = a1;
  v138 = a9;
  v9 = sub_2C9EC0();
  v141 = *(v9 - 8);
  v142 = v9;
  v10 = *(v141 + 64);
  __chkstk_darwin(v9);
  v139 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_2CE000();
  v136 = *(v137 - 8);
  v12 = *(v136 + 64);
  v13 = __chkstk_darwin(v137);
  v126 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v125 = &v116 - v15;
  v16 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v124 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v123 = &v116 - v20;
  v21 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v122 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v120 = &v116 - v25;
  v26 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v121 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v119 = &v116 - v30;
  v130 = sub_2CCB30();
  v127 = *(v130 - 8);
  v31 = *(v127 + 64);
  __chkstk_darwin(v130);
  v33 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2CCAC0();
  v34 = *(v129 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v129);
  v37 = &v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v38 = *(*(v117 - 8) + 64);
  v39 = __chkstk_darwin(v117);
  v118 = &v116 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v42 = &v116 - v41;
  v43 = sub_20410(&unk_3519A0, &qword_2D0980);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v46 = (&v116 - v45);
  sub_2CCFB0();

  v47 = sub_2CCF80();
  sub_F3F4(v128, v46, &unk_3519A0, &qword_2D0980);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v135 = v47;
  if (EnumCaseMultiPayload == 1)
  {
    v49 = *v46;
    v146 = v131;
    v147 = v132;

    v150._countAndFlagsBits = 95;
    v150._object = 0xE100000000000000;
    sub_2CE350(v150);
    v51 = v146;
    v50 = v147;
    v132 = v49;
    swift_getErrorValue();
    v146 = sub_2CEEF0();
    v147 = v52;
    v53 = sub_2CE3C0();
    v55 = v54;
    v146 = v51;
    v147 = v50;

    v151._countAndFlagsBits = v53;
    v151._object = v55;
    sub_2CE350(v151);

    v56 = v129;
    (*(v34 + 104))(v37, enum case for AdditionalMetricsDescription.ModuleName.apf(_:), v129);
    v57 = v127;
    v58 = v130;
    (*(v127 + 104))(v33, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v130);
    v131 = sub_2CCAE0();

    (*(v57 + 8))(v33, v58);
    (*(v34 + 8))(v37, v56);
    sub_EEAC((v133 + 39), &v146);
    v133 = sub_35E0(&v146, v148);
    v59 = enum case for ActivityType.failed(_:);
    v60 = sub_2C9C20();
    v61 = *(v60 - 8);
    v62 = v121;
    (*(v61 + 104))(v121, v59, v60);
    (*(v61 + 56))(v62, 0, 1, v60);
    v63 = sub_2CA130();
    v64 = v122;
    (*(*(v63 - 8) + 56))();
    v65 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v66 = sub_2C98F0();
    v67 = *(v66 - 8);
    v68 = v124;
    (*(v67 + 104))(v124, v65, v66);
    (*(v67 + 56))(v68, 0, 1, v66);
    if (v134)
    {

      sub_2CE710();
    }

    else
    {
    }

    v91 = v136;
    v92 = v126;
    sub_2CB4E0();

    sub_30B8(v68, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v64, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v62, &qword_34CB88, &unk_2D0D90);
    sub_306C(&v146);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v93 = v137;
    v94 = sub_3ED0(v137, static Logger.default);
    swift_beginAccess();
    (*(v91 + 16))(v92, v94, v93);
    swift_errorRetain();
    v95 = sub_2CDFE0();
    v96 = sub_2CE680();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v145 = v98;
      *v97 = 136315138;
      swift_getErrorValue();
      v143 = sub_2CEEF0();
      v144 = v99;
      v100 = sub_2CE3C0();
      v102 = sub_3F08(v100, v101, &v145);

      *(v97 + 4) = v102;
      _os_log_impl(&dword_0, v95, v96, "AmbiguousPlayFlow#handleErrorDialogResult Could not properly create dialog %s, silently failing...", v97, 0xCu);
      sub_306C(v98);

      (*(v91 + 8))(v126, v93);
    }

    else
    {

      (*(v91 + 8))(v92, v93);
    }

    v103 = v139;
    sub_2C9EB0();
    v140(v103);

    return (*(v141 + 8))(v103, v142);
  }

  else
  {
    v69 = v42;
    sub_14A58(v46, v42, &qword_34C6E8, &unk_2D0FF0);
    v70 = v129;
    (*(v34 + 104))(v37, enum case for AdditionalMetricsDescription.ModuleName.apf(_:), v129);
    v71 = v127;
    v72 = v130;
    (*(v127 + 104))(v33, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v130);
    v131 = sub_2CCAE0();
    v132 = v73;
    (*(v71 + 8))(v33, v72);
    (*(v34 + 8))(v37, v70);
    v74 = v133;
    sub_EEAC((v133 + 39), &v146);
    v129 = v149;
    v130 = sub_35E0(&v146, v148);
    v75 = enum case for ActivityType.failed(_:);
    v76 = sub_2C9C20();
    v77 = *(v76 - 8);
    v78 = v119;
    (*(v77 + 104))(v119, v75, v76);
    v79 = v78;
    (*(v77 + 56))(v78, 0, 1, v76);
    v80 = v118;
    sub_F3F4(v69, v118, &qword_34C6E8, &unk_2D0FF0);
    v81 = *(v80 + *(v117 + 48));

    v82 = sub_2CA130();
    v83 = *(v82 - 8);
    v84 = v120;
    (*(v83 + 32))(v120, v80, v82);
    v85 = v84;
    (*(v83 + 56))(v84, 0, 1, v82);
    v86 = enum case for SiriKitReliabilityCodes.genericError(_:);
    v87 = sub_2C98F0();
    v88 = *(v87 - 8);
    v89 = v123;
    (*(v88 + 104))(v123, v86, v87);
    (*(v88 + 56))(v89, 0, 1, v87);
    v90 = v89;
    if (v134)
    {
      sub_2CE710();
    }

    v105 = v137;
    v106 = v136;
    sub_2CB4E0();

    sub_30B8(v90, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v85, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v79, &qword_34CB88, &unk_2D0D90);
    sub_306C(&v146);
    v107 = v74[13];
    v108 = sub_2C9BE0();
    v109 = v74[18];
    sub_35E0(v74 + 14, v74[17]);
    sub_2CA150();
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v110 = sub_3ED0(v105, static Logger.default);
    swift_beginAccess();
    v111 = v125;
    (*(v106 + 16))(v125, v110, v105);
    v112 = sub_2CDFE0();
    v113 = sub_2CE670();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_0, v112, v113, "AmbiguousPlayFlow#handleErrorDialogResult Dialog successfully generated, responding and exiting...", v114, 2u);
    }

    (*(v106 + 8))(v111, v105);
    v115 = v139;
    sub_2C9EB0();
    v140(v115);

    (*(v141 + 8))(v115, v142);
    return sub_30B8(v69, &qword_34C6E8, &unk_2D0FF0);
  }
}

uint64_t *sub_2112EC()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  sub_306C(v0 + 14);
  sub_306C(v0 + 19);
  sub_306C(v0 + 24);
  sub_306C(v0 + 29);
  sub_306C(v0 + 34);
  sub_306C(v0 + 39);
  sub_306C(v0 + 44);
  v3 = v0[50];

  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_input, &qword_34E480, &qword_2D2280);

  v4 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_shimError + 8);

  return v0;
}

uint64_t sub_2113A8()
{
  sub_2112EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AmbiguousPlayFlow()
{
  result = qword_355170;
  if (!qword_355170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_211454()
{
  sub_B104C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_211548()
{
  result = qword_355320;
  if (!qword_355320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355320);
  }

  return result;
}

uint64_t sub_2115E8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AmbiguousPlayFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_211640(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_BYTE *))
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  sub_2CE9D0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_2CDFA0();
  return a6(v9);
}

uint64_t sub_211714(_BYTE *a1, uint64_t (*a2)(_BYTE *))
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return a2(v4);
}

uint64_t sub_211758(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void *a7)
{
  v75 = a5;
  v76 = a6;
  v11 = sub_2CDFD0();
  v73 = *(v11 - 8);
  v74 = v11;
  v12 = *(v73 + 64);
  v13 = __chkstk_darwin(v11);
  v72 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v80 = &v71 - v14;
  v81 = sub_2CE000();
  v15 = *(v81 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v81);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v71 - v20;
  v22 = sub_2CDE30();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v77 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v25;
  v26 = *(v25 + 16);
  v79 = v27;
  v26();
  v28 = sub_2CDDF0();
  v88[3] = v28;
  v88[4] = &protocol witness table for EncryptionProvider;
  v29 = sub_F390(v88);
  (*(*(v28 - 8) + 16))(v29, a3, v28);
  v87[3] = sub_2CC710();
  v87[4] = &protocol witness table for SharedContextProvider;
  v87[0] = a4;

  sub_1DC8D8(a1, &v84);
  if (v85)
  {
    sub_F338(&v84, v86);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = v81;
    v31 = sub_3ED0(v81, static Logger.default);
    swift_beginAccess();
    (*(v15 + 16))(v21, v31, v30);
    v32 = a7;
    v33 = sub_2CDFE0();
    v34 = sub_2CE690();

    v35 = os_log_type_enabled(v33, v34);
    v71 = v32;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v84 = v37;
      *v36 = 136446210;
      v38 = sub_2CE770();
      v40 = sub_3F08(v38, v39, &v84);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_0, v33, v34, "INPlayMediaIntent#performRouteResolution This is a WHA request... Running for intent INPlayMediaIntent: %{public}s", v36, 0xCu);
      sub_306C(v37);

      (*(v15 + 8))(v21, v81);
    }

    else
    {

      (*(v15 + 8))(v21, v30);
    }

    v53 = swift_allocObject();
    *(v53 + 16) = v75;
    *(v53 + 24) = v76;
    v54 = qword_34BF98;

    if (v54 != -1)
    {
      swift_once();
    }

    v55 = qword_35F760;
    v56 = v80;
    sub_2CDFB0();
    v57 = v72;
    v58 = v73;
    v59 = v74;
    (*(v73 + 16))(v72, v56, v74);
    v60 = (*(v58 + 80) + 33) & ~*(v58 + 80);
    v61 = (v12 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    *(v62 + 16) = "resolveWHADestinationDevices";
    *(v62 + 24) = 28;
    *(v62 + 32) = 2;
    (*(v58 + 32))(v62 + v60, v57, v59);
    v63 = (v62 + v61);
    *v63 = sub_21631C;
    v63[1] = v53;

    sub_2CE9E0();
    v64 = v80;
    sub_2CDF90();
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1E3F14;
    *(v65 + 24) = v62;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_216358;
    *(v66 + 24) = v65;
    sub_EEAC(v86, &v84);
    sub_EEAC(v87, v83);
    sub_EEAC(v88, v82);
    v67 = swift_allocObject();
    v67[2] = sub_21639C;
    v67[3] = v66;
    sub_F338(&v84, (v67 + 4));
    sub_F338(v83, (v67 + 9));
    v68 = v71;
    v67[14] = v71;
    sub_F338(v82, (v67 + 15));
    v69 = v68;

    v52 = v77;
    v51 = v79;
    sub_2CDE40();

    (*(v58 + 8))(v64, v59);

    sub_306C(v86);
  }

  else
  {
    sub_30B8(&v84, &qword_3547A8, &unk_2D6BE8);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v41 = v81;
    v42 = sub_3ED0(v81, static Logger.default);
    swift_beginAccess();
    (*(v15 + 16))(v19, v42, v41);
    v43 = a7;
    v44 = sub_2CDFE0();
    v45 = sub_2CE660();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v84 = v47;
      *v46 = 136446210;
      v48 = sub_2CE770();
      v50 = sub_3F08(v48, v49, &v84);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_0, v44, v45, "INPlayMediaIntent#performRouteResolution No homeAutomationProvider was found in the intent: %{public}s. This is expected if no home automation entities were requested", v46, 0xCu);
      sub_306C(v47);
    }

    (*(v15 + 8))(v19, v41);
    v51 = v79;
    v75(0);
    v52 = v77;
  }

  (*(v78 + 8))(v52, v51);
  sub_306C(v88);
  return sub_306C(v87);
}

uint64_t sub_212048(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_20410(&unk_3519A0, &qword_2D0980) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_210204(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_212130(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v33 = a3;
  v30 = a1;
  v6 = sub_20410(&qword_34E480, &qword_2D2280);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_2C9EC0();
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  __chkstk_darwin(v10);
  v31 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_2CDFE0();
  v20 = sub_2CE690();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v29 = a2;
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "AmbiguousPlayFlow#nextFlow", v21, 2u);
    a2 = v29;
  }

  (*(v14 + 8))(v17, v13);
  v22 = v33;
  v24 = *(v33 + 392);
  v23 = *(v33 + 400);
  v25 = sub_2CA7B0();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v9, v30, v25);
  (*(v26 + 56))(v9, 0, 1, v25);
  v24(v9, a2, v22 + 352);
  sub_30B8(v9, &qword_34E480, &qword_2D2280);
  v27 = v31;
  sub_2C9EA0();

  a4(v27);
  return (*(v32 + 8))(v27, v10);
}

uint64_t sub_2124D0(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(char *), uint64_t a6)
{
  v54 = a2;
  v50 = a1;
  v10 = sub_2CA7B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v51 = *(v14 - 1);
  v52 = v14;
  v15 = *(v51 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v48 - v19;
  v21 = swift_allocObject();
  v53 = a5;
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  v55 = v21;
  v56 = a4;
  if (*(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_state) != 1)
  {
    v49 = a3;
    if (a3)
    {
      v57 = a3;
      sub_D8B98();
      swift_retain_n();
      if (sub_2CC140())
      {
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v32 = v52;
        v33 = sub_3ED0(v52, static Logger.default);
        swift_beginAccess();
        v34 = v51;
        (*(v51 + 16))(v18, v33, v32);
        v35 = sub_2CDFE0();
        v36 = sub_2CE690();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_0, v35, v36, "AmbiguousPlayFlow#executeFlow This is a SiriForAirPlay request, pushing the next play flow directly without calling ControlsFlowProvider", v37, 2u);
        }

        (*(v34 + 8))(v18, v32);

        v30 = v54;
        v31 = v49;
        goto LABEL_14;
      }
    }

    else
    {
      swift_retain_n();
    }

    v38 = v56;
    v39 = v56[5];
    v53 = v56[6];
    v52 = sub_35E0(v56 + 2, v39);
    (*(v11 + 16))(&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v54, v10);
    v40 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v41 = (v12 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    *(v42 + 16) = v38;
    (*(v11 + 32))(v42 + v40, v13, v10);
    v43 = v49;
    *(v42 + v41) = v49;
    v44 = (v42 + ((v41 + 15) & 0xFFFFFFFFFFFFFFF8));
    v45 = v55;
    *v44 = sub_24350;
    v44[1] = v45;

    v46 = v43;

    sub_2CDC50();
  }

  v22 = a3;
  v23 = qword_34BF58;
  swift_retain_n();
  if (v23 != -1)
  {
    swift_once();
  }

  v24 = v52;
  v25 = sub_3ED0(v52, static Logger.default);
  swift_beginAccess();
  v26 = v51;
  (*(v51 + 16))(v20, v25, v24);
  v27 = sub_2CDFE0();
  v28 = sub_2CE690();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "AmbiguousPlayFlow#executeFlow has previously been rejected by controls, executing next flow", v29, 2u);
  }

  (*(v26 + 8))(v20, v24);

  v30 = v54;
  v31 = v22;
LABEL_14:
  sub_212130(v30, v31, v56, v53);
}

uint64_t sub_212A20(uint64_t *a1, void (*a2)(char *), uint64_t a3)
{
  v430 = a1;
  v415 = sub_2C9EC0();
  v416 = *(v415 - 8);
  v5 = v416[8];
  __chkstk_darwin(v415);
  v414 = &v373 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v401 = sub_2CDDF0();
  v400 = *(v401 - 8);
  v7 = *(v400 + 64);
  __chkstk_darwin(v401);
  v397 = &v373 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = sub_2CDE30();
  v398 = *(v399 - 8);
  v9 = *(v398 + 64);
  __chkstk_darwin(v399);
  v396 = &v373 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v386 = sub_2CA340();
  v385 = *(v386 - 8);
  v11 = *(v385 + 64);
  v12 = __chkstk_darwin(v386);
  v377 = &v373 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v379 = &v373 - v15;
  __chkstk_darwin(v14);
  v384 = &v373 - v16;
  v410 = sub_2CA810();
  v409 = *(v410 - 8);
  v17 = v409[8];
  v18 = __chkstk_darwin(v410);
  v391 = &v373 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v387 = &v373 - v21;
  v22 = __chkstk_darwin(v20);
  v380 = &v373 - v23;
  __chkstk_darwin(v22);
  v412 = &v373 - v24;
  v421 = sub_2CA870();
  v25 = *(v421 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v421);
  v405 = &v373 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v31 = (&v373 - v30);
  v395 = v32;
  __chkstk_darwin(v29);
  v422 = (&v373 - v33);
  v34 = sub_20410(&qword_34E480, &qword_2D2280);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v390 = &v373 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v406 = &v373 - v39;
  __chkstk_darwin(v38);
  v41 = &v373 - v40;
  v431 = sub_2CA7B0();
  v429 = *(v431 - 8);
  v42 = *(v429 + 64);
  v43 = __chkstk_darwin(v431);
  v392 = &v373 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v43);
  v404 = &v373 - v45;
  v46 = __chkstk_darwin(v44);
  v411 = &v373 - v47;
  __chkstk_darwin(v46);
  v427 = &v373 - v48;
  v49 = sub_2CE000();
  v50 = *(v49 - 8);
  v51 = v50[8];
  v52 = __chkstk_darwin(v49);
  v394 = &v373 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v52);
  v383 = &v373 - v55;
  v56 = __chkstk_darwin(v54);
  v407 = &v373 - v57;
  v58 = __chkstk_darwin(v56);
  v403 = &v373 - v59;
  v60 = __chkstk_darwin(v58);
  v402 = &v373 - v61;
  v62 = __chkstk_darwin(v60);
  v376 = &v373 - v63;
  v64 = __chkstk_darwin(v62);
  v382 = &v373 - v65;
  v66 = __chkstk_darwin(v64);
  v393 = &v373 - v67;
  v68 = __chkstk_darwin(v66);
  v388 = &v373 - v69;
  v70 = __chkstk_darwin(v68);
  v408 = &v373 - v71;
  v72 = __chkstk_darwin(v70);
  v378 = &v373 - v73;
  v74 = __chkstk_darwin(v72);
  v381 = &v373 - v75;
  v76 = __chkstk_darwin(v74);
  v389 = &v373 - v77;
  v78 = __chkstk_darwin(v76);
  v80 = &v373 - v79;
  __chkstk_darwin(v78);
  v82 = &v373 - v81;
  v83 = swift_allocObject();
  v417 = a2;
  *(v83 + 16) = a2;
  *(v83 + 24) = a3;
  v428 = v83;
  v84 = qword_34BF58;
  v420 = a3;
  swift_retain_n();
  if (v84 != -1)
  {
    swift_once();
  }

  v413 = v31;
  v418 = v25;
  v85 = sub_3ED0(v49, static Logger.default);
  swift_beginAccess();
  v86 = v50[2];
  v423 = v85;
  v432 = v49;
  v425 = (v50 + 2);
  v424 = v86;
  (v86)(v82, v85, v49);
  v87 = sub_2CDFE0();
  v88 = sub_2CE690();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_0, v87, v88, "AmbiguousPlayFlow#execute", v89, 2u);
  }

  v90 = v50[1];
  v91 = v432;
  v426 = v50 + 1;
  v419 = v90;
  v90(v82, v432);
  v92 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_input;
  v93 = v430;
  swift_beginAccess();
  sub_F3F4(v93 + v92, v41, &qword_34E480, &qword_2D2280);
  v94 = v429;
  v95 = *(v429 + 48);
  v96 = v431;
  if (v95(v41, 1, v431) == 1)
  {
    sub_30B8(v41, &qword_34E480, &qword_2D2280);
    (v424)(v80, v423, v91);
    v97 = sub_2CDFE0();
    v98 = sub_2CE680();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_0, v97, v98, "AmbiguousPlayFlow#execute Parse is nil", v99, 2u);
    }

    v419(v80, v91);
    v100 = v414;
    sub_2C9EB0();
    v417(v100);
    v101 = v416[1];
    v102 = v100;
    v103 = &v436;
    goto LABEL_9;
  }

  v105 = v94 + 32;
  v375 = *(v94 + 32);
  v375(v427, v41, v96);
  v106 = v422;
  sub_2CA790();
  v107 = v418;
  v108 = v413;
  v109 = v421;
  v374 = *(v418 + 16);
  v374(v413, v106, v421);
  v110 = (*(v107 + 88))(v108, v109);
  if (v110 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v410 = v105;
    (*(v107 + 96))(v108, v109);
    v412 = *(v108 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
    v111 = sub_2CA830();
    objc_opt_self();
    v112 = swift_dynamicCastObjCClass();
    if (!v112)
    {

      v115 = v431;
      goto LABEL_35;
    }

    v113 = v112;
    v114 = v406;
    sub_F3F4(v430 + v92, v406, &qword_34E480, &qword_2D2280);
    v115 = v431;
    if (v95(v114, 1, v431) == 1)
    {

      sub_30B8(v114, &qword_34E480, &qword_2D2280);
LABEL_35:
      v177 = v422;
      v178 = v408;
      v179 = v432;
      (v424)(v408, v423, v432);
      v180 = sub_2CDFE0();
      v181 = sub_2CE680();
      v182 = os_log_type_enabled(v180, v181);
      v183 = v419;
      if (v182)
      {
        v184 = swift_slowAlloc();
        *v184 = 0;
        _os_log_impl(&dword_0, v180, v181, "AmbiguousPlayFlow#execute NLv3IntentPlusServerConversion error", v184, 2u);
      }

      v183(v178, v179);
      v185 = v414;
      sub_2C9EB0();
      v417(v185);

      (v416[1])(v185, v415);
      (*(v107 + 8))(v177, v421);
      (*(v429 + 8))(v427, v115);
      v104 = sub_2CAFE0();
      v101 = *(*(v104 - 8) + 8);
      v102 = v413;
      goto LABEL_38;
    }

    v375(v411, v114, v115);
    v187 = v422;
    v188 = v113;
    sub_1DC8D8(v422, v437);
    v189 = v438;
    sub_30B8(v437, &qword_3547A8, &unk_2D6BE8);
    if (v189)
    {
      v190 = v187;
      v191 = v421;
      v374(v405, v190, v421);
      v192 = v115;
      v193 = v429;
      v194 = *(v429 + 16);
      v409 = v113;
      v195 = v404;
      v194(v404, v411, v192);
      v196 = v418;
      v197 = (*(v418 + 80) + 48) & ~*(v418 + 80);
      v198 = (v395 + *(v193 + 80) + v197) & ~*(v193 + 80);
      v199 = swift_allocObject();
      v200 = v430;
      *(v199 + 2) = v188;
      *(v199 + 3) = v200;
      v201 = v428;
      *(v199 + 4) = sub_13BD8;
      *(v199 + 5) = v201;
      (*(v196 + 32))(&v199[v197], v405, v191);
      v202 = v431;
      v375(&v199[v198], v195, v431);
      v203 = v111;

      v204 = v396;
      sub_2CDE20();
      v205 = v397;
      sub_2CDDE0();
      sub_2CC710();
      v206 = sub_2CC700();
      v207 = v422;
      sub_211758(v422, v204, v205, v206, sub_216590, v199, v409);

      (*(v400 + 8))(v205, v401);
      (*(v398 + 8))(v204, v399);
      v208 = *(v193 + 8);
      v208(v411, v202);
      (*(v196 + 8))(v207, v421);
      v208(v427, v202);
      v209 = sub_2CAFE0();
      (*(*(v209 - 8) + 8))(v413, v209);
    }

    else
    {
      v262 = v420;

      v263 = v111;
      v264 = v411;
      sub_2124D0(v187, v411, v188, v430, v417, v262);

      v265 = *(v429 + 8);
      v265(v264, v115);
      (*(v418 + 8))(v187, v421);
      v265(v427, v115);
      v266 = sub_2CAFE0();
      (*(*(v266 - 8) + 8))(v108, v266);
    }

    goto LABEL_39;
  }

  if (v110 == enum case for Parse.directInvocation(_:))
  {
    (*(v107 + 96))(v108, v109);
    v116 = v409;
    v117 = v412;
    v118 = v410;
    (v409[4])(v412, v108, v410);
    v119 = *(v430 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_shimAudioExperience);
    v120 = v431;
    if (v119)
    {
      v121 = v402;
      (v424)(v402, v423, v432);
      v122 = v119;
      v123 = sub_2CDFE0();
      v124 = sub_2CE670();
      v125 = os_log_type_enabled(v123, v124);
      v126 = v419;
      if (v125)
      {
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&dword_0, v123, v124, "AmbiguousPlayFlow#execute Constructing INPlayMediaIntent", v127, 2u);
      }

      v128 = v432;
      v126(v121, v432);
      v129 = [objc_allocWithZone(INPlayMediaIntent) init];
      sub_2CDBC0();
      sub_2CDBB0();
      sub_2CDBA0();

      v130 = sub_2CDBD0();
      v131 = sub_1BA200(v122, v130, 0, 0);

      v132 = v403;
      (v424)(v403, v423, v128);
      v133 = sub_2CDFE0();
      v134 = sub_2CE670();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        *v135 = 0;
        _os_log_impl(&dword_0, v133, v134, "AmbiguousPlayFlow#execute Constructing playMediaRCHFlowWrapper", v135, 2u);
      }

      v136 = v432;
      v126(v132, v432);
      sub_1356F8(v427, v131);
      (v424)(v407, v423, v136);
      v137 = sub_2CDFE0();
      v138 = sub_2CE670();
      v139 = os_log_type_enabled(v137, v138);
      v140 = v409;
      if (v139)
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&dword_0, v137, v138, "AmbiguousPlayFlow#execute Sending shim input to playMediaRCHFlowWrapper", v141, 2u);
      }

      v126(v407, v432);
      v142 = v414;
      sub_2C9EA0();
      v417(v142);

      (v416[1])(v142, v415);
      (v140[1])(v412, v410);
    }

    else
    {
      sub_238E4C(v117, v437);
      if (v440)
      {
        if (v440 != 255)
        {
          sub_30B8(v437, &qword_34CCB0, &qword_2D5710);
        }

        v221 = v394;
        (v424)(v394, v423, v432);
        v222 = v116[2];
        v223 = v391;
        v222(v391, v117, v118);
        v224 = sub_2CDFE0();
        v225 = sub_2CE680();
        if (os_log_type_enabled(v224, v225))
        {
          v226 = swift_slowAlloc();
          v430 = swift_slowAlloc();
          v435 = v430;
          *v226 = 136315138;
          v222(v387, v223, v118);
          v227 = sub_2CE2A0();
          v229 = v228;
          v230 = v116[1];
          v231 = v118;
          v230(v223, v118);
          v232 = sub_3F08(v227, v229, &v435);

          *(v226 + 4) = v232;
          _os_log_impl(&dword_0, v224, v225, "AmbiguousPlayFlow#execute Unsupported direct invocation use case %s", v226, 0xCu);
          sub_306C(v430);

          v233 = v394;
        }

        else
        {

          v230 = v116[1];
          v231 = v118;
          v230(v223, v118);
          v233 = v221;
        }

        v419(v233, v432);
        v292 = v414;
        sub_2C9EB0();
        v417(v292);
        (v416[1])(v292, v415);
        v230(v412, v231);
      }

      else
      {
        v267 = v437[2];

        if (v267)
        {
          objc_opt_self();
          v268 = swift_dynamicCastObjCClass();
          if (v268)
          {
            v269 = v427;
            sub_1356F8(v427, v268);
            v270 = v414;
            sub_2C9EA0();
            v417(v270);

            (v416[1])(v270, v415);
            (v116[1])(v117, v118);
            (*(v418 + 8))(v422, v421);
            (*(v429 + 8))(v269, v120);
            goto LABEL_39;
          }
        }

        v430 = v267;
        v302 = v383;
        v303 = v432;
        (v424)(v383, v423, v432);
        v304 = v116;
        v305 = v116[2];
        v306 = v380;
        v305(v380, v117, v118);
        v307 = sub_2CDFE0();
        v308 = sub_2CE680();
        if (os_log_type_enabled(v307, v308))
        {
          v309 = swift_slowAlloc();
          v424 = swift_slowAlloc();
          v435 = v424;
          *v309 = 136315138;
          v305(v387, v306, v118);
          v310 = sub_2CE2A0();
          v312 = v311;
          v425 = v304[1];
          v425(v306, v118);
          v313 = sub_3F08(v310, v312, &v435);

          *(v309 + 4) = v313;
          v314 = v118;
          _os_log_impl(&dword_0, v307, v308, "AmbiguousPlayFlow#execute Unable to convert intent to INPlayMediaIntent from direct invocation use case %s", v309, 0xCu);
          sub_306C(v424);

          v315 = v383;
          v316 = v432;
        }

        else
        {

          v314 = v118;
          v425 = v304[1];
          v425(v306, v118);
          v315 = v302;
          v316 = v303;
        }

        v419(v315, v316);
        v336 = v414;
        sub_2C9EB0();
        v417(v336);

        (v416[1])(v336, v415);
        v425(v412, v314);
      }
    }

    (*(v418 + 8))(v422, v421);
    goto LABEL_83;
  }

  if (v110 == enum case for Parse.NLv4IntentOnly(_:))
  {
LABEL_24:
    v410 = v105;
    v143 = *(v107 + 8);
    v143(v108, v109);
    v144 = v430[33];
    sub_35E0(v430 + 29, v430[32]);
    v145 = sub_2CC400();
    v418 = v107 + 8;
    if ((v145 & 1) == 0)
    {
      v234 = v393;
      v235 = v432;
      (v424)(v393, v423, v432);
      v236 = sub_2CDFE0();
      v237 = sub_2CE680();
      v238 = os_log_type_enabled(v236, v237);
      v239 = v431;
      if (v238)
      {
        v240 = swift_slowAlloc();
        v241 = v143;
        v242 = swift_slowAlloc();
        v437[0] = v242;
        *v240 = 136315138;
        *(v240 + 4) = sub_3F08(0xD000000000000062, 0x80000000002DF880, v437);
        _os_log_impl(&dword_0, v236, v237, "%s", v240, 0xCu);
        sub_306C(v242);
        v143 = v241;
      }

      v419(v234, v235);
      v243 = v422;
      *(v430 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_state) = 1;
      sub_20EA54(0x7463657078656E75, 0xEF65737261506465, sub_13BD8, v428);
      v143(v243, v421);
      (*(v429 + 8))(v427, v239);
      goto LABEL_39;
    }

    v146 = v405;
    sub_2CA790();
    v147 = sub_2CA7C0();
    v143(v146, v109);
    v148 = v431;
    v149 = v432;
    v412 = v143;
    if (v147)
    {
      if (sub_44BB4())
      {
        v150 = v382;
        (v424)(v382, v423, v149);
        v151 = sub_2CDFE0();
        v152 = sub_2CE660();
        if (os_log_type_enabled(v151, v152))
        {
          v153 = swift_slowAlloc();
          v154 = swift_slowAlloc();
          v437[0] = v154;
          *v153 = 136446210;
          v155 = sub_2CCCC0();
          v157 = sub_3F08(v155, v156, v437);
          v148 = v431;

          *(v153 + 4) = v157;
          _os_log_impl(&dword_0, v151, v152, "AmbiguousPlayFlow#execute %{public}s Resume app intent, handling in SiriAudio.", v153, 0xCu);
          sub_306C(v154);
        }

        v419(v150, v149);
        v158 = v422;
        v159 = sub_2CD700();
        v160 = *(v159 + 48);
        v161 = *(v159 + 52);
        swift_allocObject();

        sub_2CD6B0();
        sub_D8B98();
        sub_2CD5E0();
        v162 = sub_2CE8F0();

        v163 = sub_2CD5E0();
        if (v164)
        {
          v413 = v163;
          if (sub_2CBDB0())
          {
            v165 = v376;
            (v424)(v376, v423, v149);
            v166 = sub_2CDFE0();
            v167 = sub_2CE660();
            if (os_log_type_enabled(v166, v167))
            {
              v168 = swift_slowAlloc();
              v424 = v168;
              v425 = swift_slowAlloc();
              v437[0] = v425;
              *v168 = 136446210;
              v169 = sub_2CCCC0();
              v171 = sub_3F08(v169, v170, v437);

              v172 = v424;
              *(v424 + 4) = v171;
              _os_log_impl(&dword_0, v166, v167, "AmbiguousPlayFlow#execute %{public}s Resume first party app intent. Handling in Controls", v172, 0xCu);
              sub_306C(v425);
            }

            v419(v165, v149);
            v173 = v430;
            v174 = v430[5];
            v432 = v430[6];
            sub_35E0(v430 + 2, v174);
            v175 = swift_allocObject();
            v176 = v428;
            v175[2] = sub_13BD8;
            v175[3] = v176;
            v175[4] = v173;

            sub_2CDC40();

            (v412)(v422, v421);
LABEL_83:
            v101 = *(v429 + 8);
            v102 = v427;
            v103 = &v441;
LABEL_9:
            v104 = *(v103 - 32);
LABEL_38:
            v101(v102, v104);
            goto LABEL_39;
          }
        }

        v368 = v427;
        sub_1356F8(v427, v162);
        v369 = v414;
        sub_2C9EA0();
        v417(v369);

        (v416[1])(v369, v415);
        (v412)(v158, v421);
        (*(v429 + 8))(v368, v148);
        goto LABEL_39;
      }
    }

    v293 = v430;
    v294 = v430[5];
    v432 = v430[6];
    sub_35E0(v430 + 2, v294);
    v295 = v429;
    v296 = v404;
    v297 = v427;
    (*(v429 + 16))(v404, v427, v148);
    v298 = v148;
    v299 = (*(v295 + 80) + 40) & ~*(v295 + 80);
    v300 = swift_allocObject();
    v300[2] = v293;
    v300[3] = sub_13BD8;
    v300[4] = v428;
    v375(v300 + v299, v296, v298);

    v301 = v422;
    sub_2CDC50();

    (v412)(v301, v421);
    (*(v295 + 8))(v297, v298);
    goto LABEL_39;
  }

  if (v110 != enum case for Parse.pommesResponse(_:))
  {
    if (v110 != enum case for Parse.uso(_:))
    {
      if (v110 == enum case for Parse.ifClientAction(_:))
      {
        (*(v107 + 96))(v108, v109);
        v244 = v385;
        v245 = v384;
        v246 = v386;
        (*(v385 + 32))(v384, v108, v386);
        v247 = v381;
        v248 = v432;
        (v424)(v381, v423, v432);
        v249 = *(v244 + 16);
        v250 = v379;
        v249(v379, v245, v246);
        v251 = sub_2CDFE0();
        v252 = sub_2CE660();
        v253 = os_log_type_enabled(v251, v252);
        v254 = v419;
        if (v253)
        {
          v255 = swift_slowAlloc();
          v256 = swift_slowAlloc();
          v437[0] = v256;
          *v255 = 136315138;
          v249(v377, v250, v246);
          v257 = sub_2CE2A0();
          v259 = v258;
          v260 = *(v244 + 8);
          v430 = ((v244 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v260(v250, v246);
          v261 = sub_3F08(v257, v259, v437);

          *(v255 + 4) = v261;
          _os_log_impl(&dword_0, v251, v252, "AmbiguousPlayFlow#execute received IF client action parse: %s", v255, 0xCu);
          sub_306C(v256);

          v419(v381, v432);
        }

        else
        {

          v337 = *(v244 + 8);
          v430 = ((v244 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v337(v250, v246);
          v254(v247, v248);
        }

        v338 = v429;
        v339 = *(v429 + 16);
        v340 = v404;
        v339(v404, v427, v431);
        v341 = type metadata accessor for AudioFlowProvider();
        v342 = swift_allocObject();
        v343 = sub_2CB4A0();
        v344 = sub_2CB490();
        v438 = v343;
        v439 = &protocol witness table for SiriKitTaskLoggingProvider;
        v437[0] = v344;
        sub_2CA430();
        v345 = sub_20A9C4();
        v434[3] = v341;
        v434[4] = &off_3367A0;
        v434[0] = v342;
        v346 = type metadata accessor for ShimFlow();
        v347 = *(v346 + 48);
        v348 = *(v346 + 52);
        v349 = swift_allocObject();
        v350 = sub_F9A0(v434, v341);
        v432 = &v373;
        v351 = *(*(v341 - 8) + 64);
        __chkstk_darwin(v350);
        v353 = (&v373 - ((v352 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v354 + 16))(v353);
        v355 = *v353;
        v433[4] = &off_3367A0;
        v433[3] = v341;
        v433[0] = v355;
        v356 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_shimExperience;
        v357 = type metadata accessor for ShimExperience();
        (*(*(v357 - 8) + 56))(v349 + v356, 1, 1, v357);
        v358 = v431;
        v339((v349 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_input), v340, v431);
        sub_EEAC(v433, v349 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_audioFlowProvider);
        sub_EEAC(v437, v349 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_siriKitTaskLoggingProvider);
        sub_EEAC(&v435, v349 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_publisher);
        type metadata accessor for PlayMediaCatDialogService();
        v359 = swift_allocObject();
        v359[5] = 0x6964654D79616C50;
        v359[6] = 0xEF746E65746E4961;
        v359[2] = 0xD000000000000011;
        v359[3] = 0x80000000002DA8D0;
        v359[4] = v345;
        *(v349 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_playMediaCatDialogService) = v359;
        v360 = sub_2C9C10();
        v361 = *(v360 + 48);
        v362 = *(v360 + 52);
        swift_allocObject();
        v363 = sub_2C9BF0();
        sub_306C(&v435);
        v364 = *(v338 + 8);
        v365 = v340;
        v366 = v358;
        v364(v365, v358);
        sub_306C(v437);
        sub_306C(v433);
        *(v349 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_viewFactory) = v363;
        sub_306C(v434);
        v437[0] = v349;
        sub_216000(&qword_355328, type metadata accessor for ShimFlow);
        v367 = v414;
        sub_2C9E90();

        v417(v367);
        (v416[1])(v367, v415);
        (*(v385 + 8))(v384, v386);
        (*(v418 + 8))(v422, v421);
        v364(v427, v366);
      }

      else
      {
        v317 = v378;
        v318 = v432;
        (v424)(v378, v423, v432);
        v319 = sub_2CDFE0();
        v320 = sub_2CE680();
        v321 = os_log_type_enabled(v319, v320);
        v322 = v422;
        v323 = v419;
        if (v321)
        {
          v324 = swift_slowAlloc();
          *v324 = 0;
          _os_log_impl(&dword_0, v319, v320, "AmbiguousPlayFlow#execute unexpected parse type", v324, 2u);
        }

        v323(v317, v318);
        v325 = v414;
        sub_2C9EB0();
        v417(v325);
        (v416[1])(v325, v415);
        v326 = *(v418 + 8);
        v327 = v421;
        v326(v322, v421);
        (*(v429 + 8))(v427, v431);
        v326(v413, v327);
      }

      goto LABEL_39;
    }

    goto LABEL_24;
  }

  (*(v107 + 96))(v108, v109);
  v210 = *v108;
  v211 = v389;
  (v424)(v389, v423, v432);
  v212 = sub_2CDFE0();
  v213 = sub_2CE670();
  v214 = os_log_type_enabled(v212, v213);
  v416 = v210;
  if (v214)
  {
    v215 = swift_slowAlloc();
    *v215 = 0;
    _os_log_impl(&dword_0, v212, v213, "AmbiguousPlayFlow#execute received .pommesResponse parse.", v215, 2u);
  }

  v419(v211, v432);
  v216 = v390;
  sub_F3F4(v430 + v92, v390, &qword_34E480, &qword_2D2280);
  v217 = v431;
  v218 = v95(v216, 1, v431);
  v219 = v392;
  if (v218 == 1)
  {
    sub_30B8(v216, &qword_34E480, &qword_2D2280);
    v220 = v422;
  }

  else
  {
    v375(v392, v216, v217);
    v271 = sub_1B8014();
    v220 = v422;
    if (v271)
    {
      v272 = v271;
      sub_1DC8D8(v422, v437);
      v273 = v438;
      sub_30B8(v437, &qword_3547A8, &unk_2D6BE8);
      if (v273)
      {
        v374(v405, v220, v421);
        v274 = v217;
        v275 = v429;
        v276 = v404;
        (*(v429 + 16))(v404, v219, v274);
        v277 = v418;
        v278 = (*(v418 + 80) + 48) & ~*(v418 + 80);
        v279 = (v395 + *(v275 + 80) + v278) & ~*(v275 + 80);
        v280 = swift_allocObject();
        v281 = v430;
        *(v280 + 2) = v272;
        *(v280 + 3) = v281;
        v282 = v428;
        *(v280 + 4) = sub_13BD8;
        *(v280 + 5) = v282;
        v283 = v421;
        (*(v277 + 32))(&v280[v278], v405, v421);
        v284 = v276;
        v285 = v431;
        v375(&v280[v279], v284, v431);

        v286 = v272;
        v287 = v396;
        sub_2CDE20();
        v288 = v397;
        sub_2CDDE0();
        sub_2CC710();
        v289 = sub_2CC700();
        v290 = v422;
        sub_211758(v422, v287, v288, v289, sub_2160E0, v280, v286);

        (*(v400 + 8))(v288, v401);
        (*(v398 + 8))(v287, v399);
        v291 = *(v275 + 8);
        v291(v392, v285);
        (*(v277 + 8))(v290, v283);
        v291(v427, v285);
      }

      else
      {
        v370 = v420;

        v371 = v272;
        sub_2124D0(v220, v219, v272, v430, v417, v370);

        v372 = *(v429 + 8);
        v372(v219, v217);
        (*(v418 + 8))(v220, v421);
        v372(v427, v217);
      }

      goto LABEL_39;
    }

    (*(v429 + 8))(v219, v217);
  }

  *(v430 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_state) = 1;
  v328 = v388;
  v329 = v432;
  (v424)(v388, v423, v432);
  v330 = sub_2CDFE0();
  v331 = sub_2CE680();
  if (os_log_type_enabled(v330, v331))
  {
    v332 = v328;
    v333 = swift_slowAlloc();
    v334 = swift_slowAlloc();
    v437[0] = v334;
    *v333 = 136315138;
    v217 = v431;
    *(v333 + 4) = sub_3F08(0xD000000000000048, 0x80000000002DF8F0, v437);
    _os_log_impl(&dword_0, v330, v331, "%s", v333, 0xCu);
    sub_306C(v334);

    v335 = v332;
  }

  else
  {

    v335 = v328;
  }

  v419(v335, v329);
  sub_20EA54(0xD000000000000013, 0x80000000002DF940, sub_13BD8, v428);

  (*(v418 + 8))(v220, v421);
  (*(v429 + 8))(v427, v217);
LABEL_39:
}

uint64_t sub_216000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216048(uint64_t a1, char a2)
{
  v5 = *(sub_2CA7B0() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_20CE00(a1, a2 & 1, v6, v7, v8, v9);
}

uint64_t sub_2160E4()
{
  v1 = sub_2CA870();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_2CA7B0();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);

  v9 = *(v0 + 24);

  v10 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_216244(__int16 a1)
{
  v3 = *(sub_2CA870() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_2CA7B0() - 8);
  return sub_20C658(a1 & 0x1FF, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

uint64_t sub_21631C(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1 | (a1[1] << 8));
}

uint64_t sub_216358(_BYTE *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return v2(v6);
}

uint64_t sub_21639C(__int16 a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1 & 0x1FF;
  return v2(&v5);
}

uint64_t sub_2163DC()
{
  v1 = sub_2CA7B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_2164D0(uint64_t a1, char a2)
{
  v5 = *(sub_2CA7B0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_20E3C4(a1, a2 & 1, v8, v2 + v6, v9, v11);
}

uint64_t INMediaItem.isInternalSignalPresent(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      v6 = [v1 privateMediaItemValueData];
      if (v6 && (v7 = v6, v8 = [v6 internalSignals], v7, v8))
      {
        v9 = sub_2CE410();

        v14[0] = v4;
        v14[1] = v5;
        __chkstk_darwin(v10);
        v13[2] = v14;
        v11 = sub_13964(sub_13A88, v13, v9);

        if (v11)
        {
          return 1;
        }
      }

      else
      {
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t _s11descr32D959O27NeedsDisambiguationStrategyCMa()
{
  result = qword_355358;
  if (!qword_355358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21672C()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v5 = CATDefaultMode;
  v6 = sub_2CBC00();
  v7 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v8 = swift_allocObject();
  v31[3] = &type metadata for StringsBackedAppNameResolver;
  v31[4] = sub_2869C();
  v31[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v31[0] + 16);
  v30[3] = v6;
  v30[4] = &protocol witness table for MorphunProvider;
  v30[0] = v7;
  v29[3] = v0;
  v29[4] = &protocol witness table for FeatureFlagProvider;
  v9 = sub_F390(v29);
  (*(v1 + 16))(v9, v4, v0);
  *(v8 + 296) = v5;
  sub_EEAC(v29, v8 + 256);
  sub_EEAC(v31, v28);
  sub_EEAC(v30, v27);
  sub_EEAC(v32, v26);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v10 = sub_2CCA30();

  v11 = sub_2CCA20();
  v23[3] = v10;
  v23[4] = &protocol witness table for MultiUserConnectionProvider;
  v23[0] = v11;
  v22[3] = sub_2CB9E0();
  v22[4] = &protocol witness table for DeviceProvider;
  sub_F390(v22);
  sub_2CB9C0();
  sub_EEAC(v28, v8 + 16);
  sub_EEAC(v27, v8 + 216);
  sub_EEAC(v26, v8 + 56);
  sub_EEAC(v23, v8 + 96);
  sub_EEAC(v22, v8 + 176);
  sub_286F0(v24, &v17);
  if (v18)
  {

    sub_28760(v24);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    (*(v1 + 8))(v4, v0);
    sub_306C(v32);
    sub_306C(v29);
    sub_306C(v30);
    sub_306C(v31);
    sub_306C(v22);
    sub_306C(v23);
    sub_F338(&v17, &v19);
  }

  else
  {
    sub_EEAC(v26, &v19);
    v12 = sub_2C9E60();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_2C9E50();
    v20 = v12;
    v21 = &protocol witness table for ContactsManager;

    *&v19 = v15;
    sub_28760(v24);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    (*(v1 + 8))(v4, v0);
    sub_306C(v32);
    sub_306C(v29);
    sub_306C(v30);
    sub_306C(v31);
    sub_306C(v22);
    sub_306C(v23);
    if (v18)
    {
      sub_28760(&v17);
    }
  }

  sub_F338(&v19, v8 + 136);
  return v8;
}

void *sub_216B3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CB4A0();
  v27 = v8;
  v28 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v26 = a3;
  v9 = type metadata accessor for SiriAudioOutputProvider();
  v25[3] = v9;
  v25[4] = &off_337EB0;
  v25[0] = a4;
  type metadata accessor for AddMedia.UnsupportedValueStrategy();
  v10 = swift_allocObject();
  v11 = sub_F9A0(v25, v9);
  v12 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v22[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v10[11] = v9;
  v10[12] = &off_337EB0;
  v10[8] = v16;
  type metadata accessor for AddMediaCatDialogService();
  v17 = swift_allocObject();
  *(v17 + 55) = -18;
  *(v17 + 16) = 0xD000000000000011;
  *(v17 + 24) = 0x80000000002DA8D0;
  *(v17 + 32) = a1;
  strcpy((v17 + 40), "AddMediaIntent");
  sub_FA14(_swiftEmptyArrayStorage);

  v24[3] = sub_2CC2B0();
  v24[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v24);
  sub_2CC2A0();
  v23[3] = sub_2CC360();
  v23[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v23);
  sub_2CC350();
  v18 = sub_2CB490();
  v22[3] = v8;
  v22[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v22[0] = v18;
  type metadata accessor for AddMediaDialogProvider();
  v19 = swift_allocObject();
  v19[15] = v17;
  sub_EEAC(v24, (v19 + 16));
  sub_EEAC(v22, (v19 + 21));
  sub_EEAC(v23, (v19 + 3));
  sub_EEAC(v22, (v19 + 8));
  sub_306C(a2);
  sub_306C(v22);
  sub_306C(v23);
  sub_306C(v24);
  v19[13] = 0xD000000000000011;
  v19[14] = 0x80000000002DA8D0;
  v19[2] = a1;
  v10[2] = v19;
  sub_F338(&v26, (v10 + 3));
  sub_306C(v25);
  return v10;
}

uint64_t sub_216DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = sub_21672C();
  sub_2C9A00();
  sub_2CB4A0();
  v15 = sub_2CB490();
  _s27NeedsDisambiguationStrategyCMa();
  inited = swift_initStackObject();
  v17 = sub_218C84(v14, v35, v15, inited);

  if (a5 == 0x657449616964656DLL && a6 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
  {
    *&v34[0] = sub_26838();
    sub_20410(&qword_34C8F8, &unk_2D0AA0);
    sub_72068(&qword_355580, &qword_34C8F8, &unk_2D0AA0);
    v18 = sub_2C96A0();
    v20 = v19;

    v21 = sub_218EE4;
LABEL_9:
    v26 = swift_allocObject();
    *(v26 + 16) = v18;
    *(v26 + 24) = v20;

    (v21)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  if (a5 == 0xD000000000000010 && 0x80000000002D9DE0 == a6 || (sub_2CEEA0() & 1) != 0)
  {
    v23 = v17[3];
    v22 = v17[4];
    sub_EEAC((v17 + 5), v34);
    v32 = sub_2CC2B0();
    v33 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v31);

    sub_2CC2A0();
    sub_20410(&qword_355570, &qword_2D77C0);
    v24 = swift_allocObject();
    v24[14] = &off_32F220;
    v24[2] = v22;
    v24[3] = v23;
    sub_F338(v34, (v24 + 4));
    sub_F338(&v31, (v24 + 9));
    *&v34[0] = v24;
    sub_72068(&qword_355578, &qword_355570, &qword_2D77C0);
    v18 = sub_2C96A0();
    v20 = v25;

    v21 = sub_218EA8;
    goto LABEL_9;
  }

  result = sub_2CED80();
  __break(1u);
  return result;
}

uint64_t sub_217168(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CB4A0();
  v28[3] = v8;
  v28[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v28[0] = a3;
  type metadata accessor for AddMediaCatDialogService();
  v9 = swift_allocObject();
  *(v9 + 55) = -18;
  *(v9 + 16) = 0xD000000000000011;
  *(v9 + 24) = 0x80000000002DA8D0;
  *(v9 + 32) = a1;
  strcpy((v9 + 40), "AddMediaIntent");
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v10 = sub_2CC2B0();
  v26 = v10;
  v27 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v25);
  sub_2CC2A0();
  v23 = sub_2CC360();
  v24 = &protocol witness table for StringsFileResolver;
  sub_F390(&v22);
  sub_2CC350();
  v20 = v8;
  v21 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v19 = sub_2CB490();
  type metadata accessor for AddMediaDialogProvider();
  v11 = swift_allocObject();
  v11[15] = v9;
  sub_EEAC(&v25, (v11 + 16));
  sub_EEAC(&v19, (v11 + 21));
  sub_EEAC(&v22, v18);
  sub_F338(&v19, v17);
  sub_306C(&v22);
  sub_306C(&v25);
  v11[13] = 0xD000000000000011;
  v11[14] = 0x80000000002DA8D0;
  v11[2] = a1;
  sub_F338(v18, (v11 + 3));
  sub_F338(v17, (v11 + 8));
  sub_EEAC(v28, &v25);
  v23 = v10;
  v24 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v22);
  sub_2CC2A0();
  v12 = type metadata accessor for SiriAudioOutputProvider();
  v13 = swift_allocObject();
  sub_F338(&v22, v13 + 16);
  v23 = v12;
  v24 = &off_337EB0;

  *&v22 = v13;
  sub_306C(a2);
  sub_306C(v28);
  v14 = qword_3566B0;
  v15 = sub_2CA360();
  (*(*(v15 - 8) + 56))(a4 + v14, 1, 1, v15);
  *(a4 + 16) = v11;
  sub_F338(&v25, a4 + 24);
  sub_F338(&v22, a4 + 64);
  return a4;
}

uint64_t sub_21740C()
{
  v140 = sub_2CC360();
  v127 = *(v140 - 8);
  v0 = *(v127 + 64);
  __chkstk_darwin(v140);
  v136 = &v116 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_2CC2B0();
  v125 = *(v2 - 8);
  v3 = *(v125 + 64);
  __chkstk_darwin(v2);
  v133 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_20410(&qword_355510, &qword_2D7798);
  v131 = *(v137 - 8);
  v5 = *(v131 + 64);
  v6 = __chkstk_darwin(v137);
  v129 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v116 - v8;
  sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
  v128 = sub_334A0(0, &qword_355518, INAddMediaIntentResponse_ptr);
  sub_2C9780();
  sub_2C9760();
  v10 = sub_21672C();
  sub_2C9A00();
  v11 = sub_2CB4A0();
  v12 = sub_2CB490();
  v175 = v2;
  v176 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v174);

  sub_2CC2A0();
  v13 = type metadata accessor for SiriAudioOutputProvider();
  v14 = swift_allocObject();
  sub_F338(&v174, v14 + 16);
  v175 = v11;
  v176 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v174 = v12;
  v172 = v13;
  v173 = &off_337EB0;
  *&v171 = v14;
  v130 = _s18NeedsValueStrategyCMa_1();
  v15 = swift_allocObject();
  v16 = sub_F9A0(&v171, v13);
  v17 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v20 + 16);
  v123 = v18;
  v124 = (v20 + 16);
  v122 = v21;
  v21(v19);
  v22 = *v19;
  v141 = v13;
  v15[11] = v13;
  v15[12] = &off_337EB0;
  v15[8] = v22;
  v135 = type metadata accessor for AddMediaCatDialogService();
  v23 = swift_allocObject();
  *(v23 + 55) = -18;
  *(v23 + 16) = 0xD000000000000011;
  *(v23 + 24) = 0x80000000002DA8D0;
  *(v23 + 32) = v10;
  strcpy((v23 + 40), "AddMediaIntent");
  sub_FA14(_swiftEmptyArrayStorage);

  v139 = v2;
  v169 = v2;
  v170 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v168);
  sub_2CC2A0();
  v166 = v140;
  v167 = &protocol witness table for StringsFileResolver;
  sub_F390(&v165);
  sub_2CC350();
  v24 = sub_2CB490();
  v164 = &protocol witness table for SiriKitTaskLoggingProvider;
  v163 = v11;
  *&v162 = v24;
  v134 = type metadata accessor for AddMediaDialogProvider();
  v25 = swift_allocObject();
  v25[15] = v23;
  sub_EEAC(&v168, (v25 + 16));
  sub_EEAC(&v162, (v25 + 21));
  sub_EEAC(&v165, (v25 + 3));
  sub_EEAC(&v162, (v25 + 8));
  sub_306C(&v177);
  sub_306C(&v162);
  sub_306C(&v165);
  sub_306C(&v168);
  v25[13] = 0xD000000000000011;
  v25[14] = 0x80000000002DA8D0;
  v132 = 0x80000000002DA8D0;
  v25[2] = v10;
  v15[2] = v25;
  sub_F338(&v174, (v15 + 3));
  sub_306C(&v171);

  *&v177 = v15;
  sub_218C3C(&qword_355520, _s18NeedsValueStrategyCMa_1);
  sub_2C9630();

  sub_2C96F0();
  v26 = sub_21672C();
  sub_2C9A00();
  _s25NeedsConfirmationStrategyCMa_1();
  swift_allocObject();
  v27 = sub_1878F8(v26, &v177);

  *&v177 = v27;
  sub_218C3C(&qword_355528, _s25NeedsConfirmationStrategyCMa_1);
  sub_2C9690();

  sub_2C9750();
  v28 = sub_21672C();
  sub_2C9A00();
  v138 = v11;
  v29 = sub_2CB490();
  v30 = _s21ConfirmIntentStrategyCMa();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  v34 = sub_217168(v28, &v177, v29, v33);

  *&v177 = v34;
  sub_218C3C(&qword_355530, _s21ConfirmIntentStrategyCMa);
  sub_2C96C0();

  v130 = v9;
  sub_2C9720();
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v35 = CATDefaultMode;
  v36 = sub_2CBC00();
  v37 = sub_2CBBF0();
  sub_2C9A00();
  v38 = v133;
  sub_2CC2A0();
  type metadata accessor for CatService();
  v39 = swift_allocObject();
  v175 = &type metadata for StringsBackedAppNameResolver;
  v126 = sub_2869C();
  v176 = v126;
  *&v174 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v174 + 16);
  v172 = v36;
  v173 = &protocol witness table for MorphunProvider;
  *&v171 = v37;
  v40 = v139;
  v169 = v139;
  v170 = &protocol witness table for FeatureFlagProvider;
  v41 = sub_F390(&v168);
  v42 = v125;
  (*(v125 + 16))(v41, v38, v40);
  *(v39 + 296) = v35;
  sub_EEAC(&v168, v39 + 256);
  sub_EEAC(&v174, &v165);
  sub_EEAC(&v171, &v162);
  sub_EEAC(&v177, v159);
  v158 = 0;
  v156 = 0u;
  v157 = 0u;
  v43 = sub_2CCA30();

  v44 = sub_2CCA20();
  v154 = v43;
  v155 = &protocol witness table for MultiUserConnectionProvider;
  *&v153 = v44;
  v121 = sub_2CB9E0();
  v151 = v121;
  v152 = &protocol witness table for DeviceProvider;
  sub_F390(&v150);
  sub_2CB9C0();
  sub_EEAC(&v165, v39 + 16);
  sub_EEAC(&v162, v39 + 216);
  sub_EEAC(v159, v39 + 56);
  sub_EEAC(&v153, v39 + 96);
  sub_EEAC(&v150, v39 + 176);
  sub_286F0(&v156, &v144);
  if (v145)
  {

    sub_28760(&v156);
    sub_306C(v159);
    sub_306C(&v162);
    sub_306C(&v165);
    (*(v42 + 8))(v133, v40);
    sub_306C(&v177);
    sub_306C(&v168);
    sub_306C(&v171);
    sub_306C(&v174);
    sub_306C(&v150);
    sub_306C(&v153);
    sub_F338(&v144, &v147);
  }

  else
  {
    sub_EEAC(v159, &v147);
    v45 = sub_2C9E60();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v48 = sub_2C9E50();
    v148 = v45;
    v149 = &protocol witness table for ContactsManager;

    *&v147 = v48;
    sub_28760(&v156);
    sub_306C(v159);
    sub_306C(&v162);
    sub_306C(&v165);
    (*(v42 + 8))(v133, v40);
    sub_306C(&v177);
    sub_306C(&v168);
    sub_306C(&v171);
    sub_306C(&v174);
    sub_306C(&v150);
    sub_306C(&v153);
    if (v145)
    {
      sub_28760(&v144);
    }
  }

  sub_F338(&v147, v39 + 136);
  v49 = swift_allocObject();
  *(v49 + 55) = -18;
  *(v49 + 16) = 0xD000000000000011;
  v50 = v132;
  *(v49 + 24) = v132;
  *(v49 + 32) = v39;
  v51 = v50;
  strcpy((v49 + 40), "AddMediaIntent");
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  sub_2C9A00();
  v175 = v40;
  v176 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v174);
  sub_2CC2A0();
  v172 = v140;
  v173 = &protocol witness table for StringsFileResolver;
  sub_F390(&v171);
  sub_2CC350();
  v52 = v138;
  v53 = sub_2CB490();
  v169 = v52;
  v170 = &protocol witness table for SiriKitTaskLoggingProvider;
  v54 = v52;
  *&v168 = v53;
  v55 = swift_allocObject();
  v55[15] = v49;
  sub_EEAC(&v174, (v55 + 16));
  sub_EEAC(&v168, (v55 + 21));
  sub_EEAC(&v171, &v165);
  sub_EEAC(&v168, &v162);
  sub_306C(&v177);
  sub_306C(&v168);
  sub_306C(&v171);
  sub_306C(&v174);
  v55[13] = 0xD000000000000011;
  v55[14] = v51;
  v55[2] = v39;
  sub_F338(&v165, (v55 + 3));
  sub_F338(&v162, (v55 + 8));
  v56 = type metadata accessor for AddMediaSnippetProvider();
  v125 = v39;
  v57 = v56;
  v58 = swift_allocObject();
  v120 = v55;
  *(v58 + 16) = v55;

  v133 = v58;

  v117 = sub_21672C();
  sub_2CC350();
  sub_2C9A00();
  v175 = v40;
  v176 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v174);
  sub_2CC2A0();
  v59 = sub_2CB490();
  v172 = v54;
  v173 = &protocol witness table for SiriKitTaskLoggingProvider;
  v170 = &protocol witness table for FeatureFlagProvider;
  *&v171 = v59;
  v169 = v40;
  sub_F390(&v168);
  sub_2CC2A0();
  v60 = v141;
  v61 = swift_allocObject();
  sub_F338(&v168, v61 + 16);
  v169 = sub_2CC040();
  v170 = &protocol witness table for NowPlayingProvider;
  sub_F390(&v168);
  sub_2CC030();
  v62 = sub_2CBC40();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  v65 = sub_2CBC30();
  v167 = &protocol witness table for AppIntentInvoker;
  v166 = v62;
  *&v165 = v65;
  v164 = &off_337EB0;
  v163 = v60;
  *&v162 = v61;
  v161 = &off_335508;
  v160 = v57;
  v159[0] = v58;
  v119 = type metadata accessor for AddMedia.HandleIntentStrategy();
  v66 = swift_allocObject();
  v67 = v60;
  v68 = sub_F9A0(&v162, v60);
  v118 = &v116;
  __chkstk_darwin(v68);
  v70 = (&v116 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122(v70);
  v71 = v40;
  v72 = v160;
  v73 = sub_F9A0(v159, v160);
  v124 = &v116;
  v74 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v73);
  v76 = (&v116 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v77 + 16))(v76);
  v78 = *v70;
  v79 = *v76;
  *(&v157 + 1) = v67;
  v158 = &off_337EB0;
  v155 = &off_335508;
  *&v156 = v78;
  v154 = v57;
  *&v153 = v79;
  v80 = swift_allocObject();
  *(v80 + 55) = -18;
  v81 = v132;
  *(v80 + 16) = 0xD000000000000011;
  *(v80 + 24) = v81;
  v82 = v117;
  *(v80 + 32) = v117;
  strcpy((v80 + 40), "AddMediaIntent");
  v66[2] = v80;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v151 = v71;
  v152 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v150);
  sub_2CC2A0();
  v83 = v140;
  v148 = v140;
  v149 = &protocol witness table for StringsFileResolver;
  sub_F390(&v147);
  sub_2CC350();
  v84 = v138;
  v85 = sub_2CB490();
  v145 = v84;
  v146 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v144 = v85;
  v86 = swift_allocObject();
  v86[15] = v80;
  sub_EEAC(&v150, (v86 + 16));
  sub_EEAC(&v144, (v86 + 21));
  sub_EEAC(&v147, v143);
  sub_F338(&v144, v142);
  sub_306C(&v147);
  sub_306C(&v150);
  v86[13] = 0xD000000000000011;
  v86[14] = v81;
  v86[2] = v82;
  sub_F338(v143, (v86 + 3));
  sub_F338(v142, (v86 + 8));
  v66[34] = v86;
  type metadata accessor for AddMediaViewProvider();
  v87 = swift_allocObject();

  sub_10FEB0(&v150, v88);

  sub_306C(&v177);
  (*(v127 + 8))(v136, v83);
  *(v87 + 16) = v86;
  sub_F338(&v150, v87 + 24);
  v66[33] = v87;
  sub_F338(&v174, (v66 + 3));
  sub_F338(&v171, (v66 + 8));
  sub_F338(&v156, (v66 + 13));
  sub_F338(&v153, (v66 + 18));
  sub_F338(&v168, (v66 + 23));
  sub_F338(&v165, (v66 + 28));
  sub_306C(v159);
  sub_306C(&v162);
  *&v177 = v66;
  sub_218C3C(&qword_355538, type metadata accessor for AddMedia.HandleIntentStrategy);
  sub_2C9640();

  v89 = v137;
  v90 = v130;
  sub_2C9700();
  v91 = swift_allocObject();
  v92 = v120;
  v93 = swift_retain_n();
  sub_10FEB0((v91 + 24), v93);
  v94 = v126;
  v178 = &type metadata for StringsBackedAppNameResolver;
  v179 = v126;
  *&v177 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v177 + 16);
  v175 = v121;
  v176 = &protocol witness table for DeviceProvider;
  sub_F390(&v174);
  sub_2CB9C0();
  v95 = v139;
  v172 = v139;
  v173 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v171);
  sub_2CC2A0();
  v169 = sub_2CC810();
  v170 = &protocol witness table for UserPreferenceProvider;
  sub_F390(&v168);
  sub_2CC800();
  v166 = sub_2CC590();
  v167 = &protocol witness table for InstalledAppProvider;
  sub_F390(&v165);
  sub_2CC580();
  v96 = sub_20410(&qword_3512F0, &qword_2D4278);
  v97 = *(v96 + 48);
  v98 = *(v96 + 52);
  v99 = swift_allocObject();
  v100 = class metadata base offset for CommonAppResolver;
  v101 = v99 + *(*v99 + class metadata base offset for CommonAppResolver + 8);
  strcpy(v101, "resolutionType");
  v101[15] = -18;
  sub_EEAC(&v177, v99 + *(*v99 + v100 + 16));
  sub_EEAC(&v174, v99 + *(*v99 + class metadata base offset for CommonAppResolver + 24));
  sub_EEAC(&v171, v99 + *(*v99 + class metadata base offset for CommonAppResolver + 32));
  sub_EEAC(&v168, v99 + *(*v99 + class metadata base offset for CommonAppResolver + 40));
  sub_EEAC(&v165, v99 + *(*v99 + class metadata base offset for CommonAppResolver + 48));
  v102 = sub_2CCF50();
  sub_306C(&v165);
  sub_306C(&v168);
  sub_306C(&v171);
  sub_306C(&v174);
  sub_306C(&v177);
  sub_2C9A00();
  v175 = &type metadata for StringsBackedAppNameResolver;
  v176 = v94;
  *&v174 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v174 + 16);
  v172 = v95;
  v173 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v171);
  sub_2CC2A0();
  v169 = v95;
  v170 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v168);
  sub_2CC2A0();
  v103 = v141;
  v104 = swift_allocObject();
  sub_F338(&v168, v104 + 16);
  v169 = v103;
  v170 = &off_337EB0;
  *&v168 = v104;
  swift_setDeallocating();
  sub_306C((v91 + 24));
  swift_deallocClassInstance();
  sub_20410(&qword_355540, &unk_2D77A0);
  v105 = swift_allocObject();
  v105[26] = 0;
  v105[2] = v102;
  v105[3] = v92;
  v105[4] = sub_107D74;
  v105[5] = 0;
  sub_F338(&v177, (v105 + 6));
  sub_F338(&v174, (v105 + 11));
  sub_F338(&v171, (v105 + 16));
  sub_F338(&v168, (v105 + 21));
  *&v177 = v105;
  sub_72068(&qword_355548, &qword_355540, &unk_2D77A0);
  sub_2C9660();

  sub_2C9710();
  *&v177 = sub_10D744(v92);
  sub_20410(&qword_3515C0, &unk_2D4560);
  sub_72068(&qword_355550, &qword_3515C0, &unk_2D4560);
  sub_2C96B0();

  sub_2C9770();
  v106 = sub_21672C();
  sub_2C9A00();
  v107 = sub_2CB490();
  v175 = v139;
  v176 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v174);

  sub_2CC2A0();
  v108 = swift_allocObject();
  sub_F338(&v174, v108 + 16);
  v109 = sub_216B3C(v106, &v177, v107, v108);

  *&v177 = v109;
  type metadata accessor for AddMedia.UnsupportedValueStrategy();
  sub_218C3C(&qword_34E760, type metadata accessor for AddMedia.UnsupportedValueStrategy);
  sub_2C96D0();

  sub_2C9740();
  sub_20410(&qword_355558, &qword_2D77B0);
  *&v177 = swift_allocObject();
  sub_72068(&qword_355560, &qword_355558, &qword_2D77B0);
  sub_2C9670();

  sub_2C9730();
  v110 = v131;
  (*(v131 + 16))(v129, v90, v89);
  v111 = sub_20410(&qword_355568, &qword_2D77B8);
  v112 = *(v111 + 48);
  v113 = *(v111 + 52);
  swift_allocObject();
  v114 = sub_2C96E0();

  (*(v110 + 8))(v90, v89);
  return v114;
}

uint64_t sub_218C3C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_218C84(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v8 = sub_2CB4A0();
  v24 = v8;
  v25 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v23 = a3;
  type metadata accessor for AddMediaCatDialogService();
  v9 = swift_allocObject();
  *(v9 + 55) = -18;
  *(v9 + 16) = 0xD000000000000011;
  *(v9 + 24) = 0x80000000002DA8D0;
  *(v9 + 32) = a1;
  strcpy((v9 + 40), "AddMediaIntent");
  a4[2] = v9;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v21 = sub_2CC2B0();
  v22 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v20);
  sub_2CC2A0();
  v19[3] = sub_2CC360();
  v19[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v19);
  sub_2CC350();
  v17 = v8;
  v18 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v16 = sub_2CB490();
  type metadata accessor for AddMediaDialogProvider();
  v10 = swift_allocObject();
  v10[15] = v9;
  sub_EEAC(&v20, (v10 + 16));
  sub_EEAC(&v16, (v10 + 21));
  sub_EEAC(v19, v15);
  sub_F338(&v16, v14);
  sub_306C(v19);
  sub_306C(&v20);
  v10[13] = 0xD000000000000011;
  v10[14] = 0x80000000002DA8D0;
  v10[2] = a1;
  sub_F338(v15, (v10 + 3));
  sub_F338(v14, (v10 + 8));
  a4[3] = v10;
  type metadata accessor for AddMediaViewProvider();
  v11 = swift_allocObject();

  sub_10FEB0(&v20, v12);
  sub_306C(a2);
  *(v11 + 16) = v10;
  sub_F338(&v20, v11 + 24);
  a4[4] = v11;
  sub_F338(&v23, (a4 + 5));
  return a4;
}

uint64_t sub_218EA8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1);
}

uint64_t sub_218EF0(uint64_t a1, char a2, void *a3, uint64_t (*a4)(id), uint64_t a5, void *a6, void *a7)
{
  v122 = a6;
  v123 = a4;
  v124 = a5;
  v127 = sub_2CDF60();
  v117 = *(v127 - 8);
  v11 = *(v117 + 64);
  __chkstk_darwin(v127);
  v126 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CDCF0();
  v120 = *(v13 - 8);
  v121 = v13;
  v14 = *(v120 + 64);
  v15 = __chkstk_darwin(v13);
  v118 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v119 = &v107 - v17;
  v18 = sub_2CDFD0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v125 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CE000();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v116 = &v107 - v29;
  v30 = __chkstk_darwin(v28);
  __chkstk_darwin(v30);
  v33 = &v107 - v32;
  if (a2)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v34 = sub_3ED0(v22, static Logger.default);
    swift_beginAccess();
    (*(v23 + 16))(v27, v34, v22);
    swift_errorRetain();
    v35 = sub_2CDFE0();
    v36 = sub_2CE680();
    sub_1E1074(a1, 1);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v127 = v19;
      v38 = v18;
      v39 = v37;
      v40 = swift_slowAlloc();
      v126 = v22;
      v41 = a3;
      v42 = v23;
      v43 = v40;
      v129[0] = v40;
      *v39 = 136315138;
      swift_getErrorValue();
      v44 = sub_2CEEF0();
      v46 = sub_3F08(v44, v45, v129);

      *(v39 + 4) = v46;
      _os_log_impl(&dword_0, v35, v36, "DetermineIntent#amendTargetDeviceIdsIfWHA Error resolving devices: %s", v39, 0xCu);
      sub_306C(v43);
      a3 = v41;

      v18 = v38;
      v19 = v127;

      (*(v42 + 8))(v27, v126);
    }

    else
    {

      (*(v23 + 8))(v27, v22);
    }

    sub_2CE9F0();
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    sub_20410(&qword_34CEA8, &unk_2D0EB0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_2D0090;
    *(v67 + 56) = &type metadata for Int;
    *(v67 + 64) = &protocol witness table for Int;
    *(v67 + 32) = -1;
    v68 = v125;
    sub_2CDFC0();
    sub_2CDF90();

    (*(v19 + 8))(v68, v18);
LABEL_23:
    v73 = [a3 setWhaError:1];
    return v123(v73);
  }

  v109 = v31;
  v114 = v18;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v47 = sub_3ED0(v22, static Logger.default);
  swift_beginAccess();
  v48 = *(v23 + 16);
  v111 = v23 + 16;
  v110 = v48;
  v48(v33, v47, v22);

  v49 = sub_2CDFE0();
  v50 = sub_2CE690();
  sub_1E1074(a1, 0);
  v51 = os_log_type_enabled(v49, v50);
  v112 = a7;
  v115 = a1;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v108 = v47;
    v53 = v52;
    v54 = swift_slowAlloc();
    v128[0] = v54;
    *v53 = 136446210;
    v55 = sub_2CE440();
    v113 = a3;
    v57 = v19;
    v58 = sub_3F08(v55, v56, v128);
    a3 = v113;

    *(v53 + 4) = v58;
    v19 = v57;
    _os_log_impl(&dword_0, v49, v50, "DetermineIntent#amendTargetDeviceIdsIfWHA Resolved devices %{public}s", v53, 0xCu);
    sub_306C(v54);

    v47 = v108;
  }

  v59 = *(v23 + 8);
  v59(v33, v22);
  sub_2CE9F0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_2D0090;
  *(v60 + 56) = &type metadata for Int;
  *(v60 + 64) = &protocol witness table for Int;
  *(v60 + 32) = 0;
  v61 = v125;
  sub_2CDFC0();
  sub_2CDF90();

  (*(v19 + 8))(v61, v114);
  v62 = v115;
  if (!*(v115 + 16))
  {
    v69 = v116;
    v110(v116, v47, v22);
    v70 = sub_2CDFE0();
    v71 = sub_2CE680();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_0, v70, v71, "DetermineIntent#amendTargetDeviceIdsIfWHA No resolved devices found", v72, 2u);
    }

    v59(v69, v22);
    goto LABEL_23;
  }

  [a3 setWhaError:0];
  v63 = v122;
  v64 = v122[3];
  v65 = v122[4];
  sub_35E0(v122, v64);
  if ((sub_1BCFC8(v64, v65) & 1) != 0 || sub_1DFB50(v62))
  {
    v66 = v62;
  }

  else
  {
    v110(v109, v47, v22);
    v75 = sub_2CDFE0();
    v76 = sub_2CE690();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_0, v75, v76, "DetermineIntent#amendTargetDeviceIdsIfWHA TVs were not explicitely targeted in the intent. Pruning from all devices", v77, 2u);
    }

    v59(v109, v22);
    v78 = v63[3];
    v79 = v63[4];
    sub_35E0(v63, v78);
    v80 = sub_1BE2A4(v78, v79);
    v66 = sub_1DFDF4(v80, v62);

    sub_1E1074(v62, 0);
  }

  v82 = v120;
  v81 = v121;
  sub_EEAC(v63, v128);
  v83 = v119;
  sub_2CDCE0();
  v84 = v118;
  (*(v82 + 16))(v118, v83, v81);

  v85 = sub_1E1114(v128, v66, v84);
  (*(v82 + 8))(v83, v81);
  sub_21B7C4(v85);
  v87 = v86;
  [a3 setWhaDialogMetadata:v86];

  v88 = v66[2];
  if (v88)
  {
    v122 = v85;
    v113 = a3;
    v125 = *(v117 + 16);
    v89 = *(v117 + 80);
    v121 = v66;
    v90 = v66 + ((v89 + 32) & ~v89);
    v91 = *(v117 + 72);
    v92 = (v117 + 8);
    v93 = _swiftEmptyArrayStorage;
    do
    {
      v96 = v126;
      v95 = v127;
      (v125)(v126, v90, v127);
      v97 = sub_2CDF20();
      v99 = v98;
      (*v92)(v96, v95);
      if (v99)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_B90C4(0, *(v93 + 2) + 1, 1, v93);
        }

        v101 = *(v93 + 2);
        v100 = *(v93 + 3);
        if (v101 >= v100 >> 1)
        {
          v93 = sub_B90C4((v100 > 1), v101 + 1, 1, v93);
        }

        *(v93 + 2) = v101 + 1;
        v94 = &v93[16 * v101];
        *(v94 + 4) = v97;
        *(v94 + 5) = v99;
      }

      v90 += v91;
      --v88;
    }

    while (v88);

    a3 = v113;
    v85 = v122;
  }

  else
  {

    v93 = _swiftEmptyArrayStorage;
  }

  isa = sub_2CE400().super.isa;
  [a3 setTargetDeviceIds:isa];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v103 = sub_2CEB00(0).super.super.isa;
  [a3 setWhaIsInHereBasedOnRoutes:v103];

  v104 = v112[4];
  sub_35E0(v112, v112[3]);
  v105 = swift_allocObject();
  v105[2] = v123;
  v105[3] = v124;
  v105[4] = v93;
  v105[5] = a3;

  v106 = a3;
  sub_2CC7F0();
}

void sub_219C68(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v8 = a1;
  v9 = [v8 mediaRouteIdentifier];
  if (!v9)
  {

LABEL_7:
    a2();
    return;
  }

  v10 = v9;
  v11 = sub_2CE270();
  v13 = v12;

  v19[0] = v11;
  v19[1] = v13;
  __chkstk_darwin(v14);
  v18[2] = v19;
  v15 = sub_13964(sub_13A68, v18, a4);

  if (v15)
  {
    sub_334A0(0, &qword_353110, NSNumber_ptr);
    isa = sub_2CEB00(1).super.super.isa;
    [a5 setWhaIsInHereBasedOnRoutes:isa];
  }

  (a2)(v16);
}

uint64_t sub_219DBC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v46 = a3;
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = a7;
  v50[4] = a8;
  v20 = sub_F390(v50);
  v21 = *(*(a7 - 8) + 16);
  v45 = v20;
  v21(v20, a1, a7);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v22 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  (*(v16 + 16))(v19, v22, v15);
  sub_EEAC(v50, v49);
  v44 = v15;
  v23 = v19;
  v24 = sub_2CDFE0();
  v25 = sub_2CE670();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v43 = a5;
    v27 = v26;
    v28 = swift_slowAlloc();
    v42 = a4;
    v29 = v28;
    v48 = v28;
    *v27 = 136315138;
    sub_EEAC(v49, v47);
    sub_20410(&qword_355588, &qword_2D77C8);
    v30 = sub_2CE2A0();
    v41 = a2;
    v40 = v23;
    v31 = a6;
    v32 = v30;
    v33 = a8;
    v35 = v34;
    sub_306C(v49);
    v36 = sub_3F08(v32, v35, &v48);
    a8 = v33;

    *(v27 + 4) = v36;
    a6 = v31;
    a2 = v41;
    _os_log_impl(&dword_0, v24, v25, "DetermineIntent#amend Reached amend logic with audio intent: %s", v27, 0xCu);
    sub_306C(v29);
    a4 = v42;

    a5 = v43;

    (*(v16 + 8))(v40, v44);
  }

  else
  {

    sub_306C(v49);
    (*(v16 + 8))(v23, v44);
  }

  v37 = v45;
  sub_21A138(v45, a6, a7, a8);
  sub_21AD8C(v37, a6, a7, a8);
  sub_21B320(v37, a2, v46, a4, a5, a6, a7, a8);
  return sub_306C(v50);
}

uint64_t sub_21A138(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v96 = a2;
  v7 = sub_2CD500();
  v88 = *(v7 - 8);
  v89 = v7;
  v8 = *(v88 + 64);
  __chkstk_darwin(v7);
  v86 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_2CE000();
  v95 = *(v97 - 8);
  v10 = v95[8];
  __chkstk_darwin(v97);
  v90 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v92 = &v83 - v14;
  v15 = sub_2CD540();
  v98 = *(v15 - 8);
  v99 = v15;
  v16 = *(v98 + 64);
  v17 = __chkstk_darwin(v15);
  v91 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v84 = &v83 - v20;
  v21 = __chkstk_darwin(v19);
  v87 = &v83 - v22;
  __chkstk_darwin(v21);
  v94 = &v83 - v23;
  v24 = sub_2CD4C0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v85 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v32 = &v83 - v31;
  v33 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v100 = &v83 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v39 = &v83 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v83 - v41;
  v43 = *(*(a3 - 8) + 64);
  __chkstk_darwin(v40);
  v45 = &v83 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v46;
  (*(v46 + 16))(v45, a1, a3);
  v102 = v45;
  v103 = a3;
  v93 = a4;
  sub_2CD840();
  (*(v25 + 104))(v39, enum case for CommonAudio.Verb.directedAcousticId(_:), v24);
  (*(v25 + 56))(v39, 0, 1, v24);
  v47 = *(v29 + 56);
  sub_F7598(v42, v32);
  sub_F7598(v39, &v32[v47]);
  v48 = *(v25 + 48);
  if (v48(v32, 1, v24) == 1)
  {
    sub_30B8(v39, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v42, &qword_34D6B8, &qword_2D15B0);
    if (v48(&v32[v47], 1, v24) == 1)
    {
      sub_30B8(v32, &qword_34D6B8, &qword_2D15B0);
      v49 = v102;
      v50 = v103;
LABEL_15:
      [v96 setRequestType:7];
      return (*(v101 + 8))(v49, v50);
    }

    goto LABEL_6;
  }

  sub_F7598(v32, v100);
  if (v48(&v32[v47], 1, v24) == 1)
  {
    sub_30B8(v39, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v42, &qword_34D6B8, &qword_2D15B0);
    (*(v25 + 8))(v100, v24);
LABEL_6:
    sub_30B8(v32, &qword_34D6B0, &unk_2D4FC0);
    v49 = v102;
    v50 = v103;
    v51 = v97;
    v52 = v95;
    goto LABEL_7;
  }

  v74 = v85;
  (*(v25 + 32))(v85, &v32[v47], v24);
  sub_21D4B4(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  v75 = v100;
  v76 = sub_2CE250();
  v77 = *(v25 + 8);
  v77(v74, v24);
  sub_30B8(v39, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v42, &qword_34D6B8, &qword_2D15B0);
  v77(v75, v24);
  sub_30B8(v32, &qword_34D6B8, &qword_2D15B0);
  v49 = v102;
  v50 = v103;
  v51 = v97;
  v52 = v95;
  if (v76)
  {
    goto LABEL_15;
  }

LABEL_7:
  v53 = v92;
  sub_2CD8D0();
  v54 = v98;
  v55 = v99;
  if ((*(v98 + 48))(v53, 1, v99) != 1)
  {
    v61 = v94;
    (*(v54 + 32))(v94, v53, v55);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v62 = sub_3ED0(v51, static Logger.default);
    swift_beginAccess();
    v63 = v90;
    (v52[2])(v90, v62, v51);
    v64 = v87;
    v100 = *(v54 + 16);
    (v100)(v87, v61, v55);
    v65 = sub_2CDFE0();
    v66 = sub_2CE670();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v104 = v95;
      *v67 = 136315138;
      (v100)(v84, v64, v55);
      v68 = sub_2CE2A0();
      v70 = v69;
      v71 = v64;
      v72 = *(v98 + 8);
      v72(v71, v99);
      v73 = sub_3F08(v68, v70, &v104);
      v55 = v99;

      *(v67 + 4) = v73;
      _os_log_impl(&dword_0, v65, v66, "DetermineIntent#amend Checking mediaType: %s", v67, 0xCu);
      sub_306C(v95);
      v49 = v102;

      v54 = v98;

      (v52[1])(v63, v97);
    }

    else
    {

      v78 = v64;
      v72 = *(v54 + 8);
      v72(v78, v55);
      (v52[1])(v63, v51);
    }

    v79 = v91;
    v80 = v94;
    (v100)(v91, v94, v55);
    v81 = (*(v54 + 88))(v79, v55);
    if (v81 == enum case for CommonAudio.MediaType.artist(_:))
    {
      [v96 setRequestType:1];
      v72(v80, v55);
      v50 = v103;
      return (*(v101 + 8))(v49, v50);
    }

    v50 = v103;
    if (v81 == enum case for CommonAudio.MediaType.playlist(_:))
    {
      goto LABEL_20;
    }

    if (v81 == enum case for CommonAudio.MediaType.radioShow(_:))
    {
LABEL_22:
      [v96 setRequestType:4];
      goto LABEL_30;
    }

    if (v81 != enum case for CommonAudio.MediaType.song(_:) && v81 != enum case for CommonAudio.MediaType.music(_:))
    {
      if (v81 == enum case for CommonAudio.MediaType.album(_:))
      {
        [v96 setRequestType:2];
        goto LABEL_30;
      }

      if (v81 == enum case for CommonAudio.MediaType.radioStation(_:))
      {
        goto LABEL_22;
      }

      if (v81 != enum case for CommonAudio.MediaType.single(_:))
      {
        if (v81 != enum case for CommonAudio.MediaType.musicPlaylist(_:))
        {
          [v96 setRequestType:0];
          v72(v80, v55);
          v72(v79, v55);
          return (*(v101 + 8))(v49, v50);
        }

LABEL_20:
        [v96 setRequestType:5];
LABEL_30:
        v72(v80, v55);
        return (*(v101 + 8))(v49, v50);
      }
    }

    [v96 setRequestType:0];
    goto LABEL_30;
  }

  sub_30B8(v53, &qword_34D6D0, qword_2D34A0);
  v56 = sub_2CD720();
  v58 = v88;
  v57 = v89;
  v59 = v86;
  (*(v88 + 104))(v86, enum case for CommonAudio.Attribute.releaseDate(_:), v89);
  v60 = sub_17F758(v59, v56);

  (*(v58 + 8))(v59, v57);
  if (v60)
  {
    [v96 setRequestType:3];
  }

  return (*(v101 + 8))(v49, v50);
}

uint64_t sub_21AD8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  v7 = sub_2CD500();
  v47 = *(v7 - 8);
  v8 = v47[8];
  __chkstk_darwin(v7);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[3] = a3;
  v51[4] = a4;
  v15 = sub_F390(v51);
  (*(*(a3 - 8) + 16))(v15, a1, a3);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v16, v10);
  sub_EEAC(v51, v50);
  v17 = v14;
  v18 = sub_2CDFE0();
  v19 = sub_2CE670();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42 = v20;
    v44 = swift_slowAlloc();
    v49 = v44;
    *v20 = 136315138;
    sub_35E0(v50, v50[3]);
    v45 = v17;
    sub_2CD720();
    sub_21D4B4(&qword_353150, &type metadata accessor for CommonAudio.Attribute);
    v21 = sub_2CE530();
    v43 = v10;
    v22 = v15;
    v24 = v23;

    sub_306C(v50);
    v25 = sub_3F08(v21, v24, &v49);
    v15 = v22;

    v26 = v42;
    *(v42 + 1) = v25;
    _os_log_impl(&dword_0, v18, v19, "DetermineIntent#amendPreviousAndNextAttributes Checking attributes: %s", v26, 0xCu);
    sub_306C(v44);

    (*(v11 + 8))(v45, v43);
  }

  else
  {

    (*(v11 + 8))(v17, v10);
    sub_306C(v50);
  }

  v27 = v15;
  v28 = sub_2CD720();
  v30 = v46;
  v29 = v47;
  v45 = v47[13];
  (v45)(v46, enum case for CommonAudio.Attribute.next(_:), v7);
  v31 = sub_17F758(v30, v28);

  v32 = v29[1];
  v32(v30, v7);
  if (v31 & 1) != 0 || (v47 = v27, v33 = sub_2CD720(), v34 = v45, (v45)(v30, enum case for CommonAudio.Attribute.playNext(_:), v7), v35 = sub_17F758(v30, v33), , v32(v30, v7), (v35))
  {
    v36 = 2;
  }

  else
  {
    v38 = sub_2CD720();
    (v34)(v30, enum case for CommonAudio.Attribute.previous(_:), v7);
    v39 = sub_17F758(v30, v38);

    v32(v30, v7);
    if (v39)
    {
      v36 = 3;
    }

    else
    {
      v40 = sub_2CD720();
      (v34)(v30, enum case for CommonAudio.Attribute.playLast(_:), v7);
      v41 = sub_17F758(v30, v40);

      v32(v30, v7);
      if (v41)
      {
        v36 = 3;
      }

      else
      {
        v36 = 1;
      }
    }
  }

  [v48 setQueueLocation:v36];
  return sub_306C(v51);
}

uint64_t sub_21B320(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v39 = a6;
  v41 = a5;
  v40 = a4;
  v38 = a3;
  v37 = a2;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  v46[3] = a7;
  v46[4] = a8;
  v19 = sub_F390(v46);
  (*(*(a7 - 8) + 16))(v19, a1, a7);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  v21 = v12[2];
  v21(v18, v20, v11);
  v22 = sub_2CDFE0();
  v23 = sub_2CE690();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "DetermineIntent#amendTargetDeviceIdsIfWHA Reached logic", v24, 2u);
  }

  v25 = v12[1];
  v25(v18, v11);
  sub_EEAC(v46, v44);
  sub_20410(&qword_355588, &qword_2D77C8);
  sub_20410(&qword_355590, &qword_2D77D0);
  if (swift_dynamicCast())
  {
    sub_F338(v42, v45);
    sub_35E0(v45, v45[3]);
    if (sub_2CDF10())
    {
      v26 = v37[4];
      sub_35E0(v37, v37[3]);
      sub_EEAC(v45, v44);
      sub_EEAC(v38, v42);
      v27 = swift_allocObject();
      v28 = v39;
      v29 = v40;
      v27[2] = v39;
      v27[3] = v29;
      v27[4] = v41;
      sub_F338(v44, (v27 + 5));
      sub_F338(v42, (v27 + 10));
      v30 = v28;

      sub_2CDE40();

      sub_306C(v45);
      return sub_306C(v46);
    }

    sub_306C(v45);
  }

  else
  {
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    sub_30B8(v42, &qword_3547A8, &unk_2D6BE8);
  }

  v21(v16, v20, v11);
  v31 = sub_2CDFE0();
  v32 = sub_2CE690();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_0, v31, v32, "DetermineIntent#amendTargetDeviceIdsIfWHA Non-WHA request because no home automation nodes present, returning completion", v33, 2u);
  }

  v34 = (v25)(v16, v11);
  v40(v34);
  return sub_306C(v46);
}

void sub_21B7C4(void *a1)
{
  v3 = sub_2CE000();
  v219 = *(v3 - 8);
  v4 = *(v219 + 64);
  v5 = __chkstk_darwin(v3);
  v217 = &v210 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v212 = &v210 - v8;
  v9 = __chkstk_darwin(v7);
  v211 = &v210 - v10;
  v11 = __chkstk_darwin(v9);
  v214 = &v210 - v12;
  v13 = __chkstk_darwin(v11);
  v213 = &v210 - v14;
  v15 = __chkstk_darwin(v13);
  v216 = &v210 - v16;
  v17 = __chkstk_darwin(v15);
  v215 = &v210 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = (&v210 - v20);
  __chkstk_darwin(v19);
  v23 = &v210 - v22;
  type metadata accessor for WHADialogMetadata();
  v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v25 = sub_2CE260();
  v26 = [v24 initWithIdentifier:0 displayString:v25];

  [a1 numberOfHomeAutomationWords];
  isa = sub_2CEF40().super.super.isa;
  [v26 setNumberOfHomeAutomationWords:isa];

  LOBYTE(isa) = [a1 isAllSpeakers];
  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v28 = sub_2CEB00(isa).super.super.isa;
  [v26 setIsAllSpeakers:v28];

  v29 = sub_2CEB00([a1 isPauseOrStop]).super.super.isa;
  [v26 setIsPauseOrStop:v29];

  v30 = sub_2CEB00([a1 isWholeHouseAudioCommand]).super.super.isa;
  [v26 setIsWholeHouseAudioCommand:v30];

  v31 = sub_2CEB00([a1 isInHere]).super.super.isa;
  [v26 setIsInHere:v31];

  v32 = sub_2CEB00([a1 hasExcept]).super.super.isa;
  v222 = v26;
  [v26 setHasExcept:v32];

  v33 = [a1 speakerRooms];
  v37 = 0;
  if (v33)
  {
    v34 = v33;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    v35 = sub_2CE410();

    v36 = v35 >> 62 ? sub_2CEDA0() : *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));

    if (v36 > 2)
    {
      v37 = 1;
    }
  }

  v38 = sub_2CEB00(v37).super.super.isa;
  [v222 setHasThreeOrMoreRooms:v38];

  v39 = [a1 speakerRooms];
  v43 = 0;
  if (v39)
  {
    v40 = v39;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    v41 = sub_2CE410();

    v42 = v41 >> 62 ? sub_2CEDA0() : *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8));

    if (v42 > 1)
    {
      v43 = 1;
    }
  }

  v44 = sub_2CEB00(v43).super.super.isa;
  [v222 setHasTwoOrMoreRooms:v44];

  v45 = [a1 speakerNames];
  v49 = 0;
  if (v45)
  {
    v46 = v45;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    v47 = sub_2CE410();

    v48 = v47 >> 62 ? sub_2CEDA0() : *(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8));

    if (v48 > 2)
    {
      v49 = 1;
    }
  }

  v50 = sub_2CEB00(v49).super.super.isa;
  [v222 setHasThreeOrMoreDevices:v50];

  v51 = [a1 permanentNames];
  v55 = 0;
  if (v51)
  {
    v52 = v51;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    v53 = sub_2CE410();

    v54 = v53 >> 62 ? sub_2CEDA0() : *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));

    if (v54 > 0)
    {
      v55 = 1;
    }
  }

  v56 = sub_2CEB00(v55).super.super.isa;
  v57 = v222;
  [v222 setHasGroups:v56];

  v58 = sub_2CEB00([a1 isParticipatingSpeaker]).super.super.isa;
  [v57 setIsParticipatingSpeaker:v58];

  v235 = _swiftEmptyArrayStorage;
  v59 = [a1 intentSpeakerRooms];
  v228 = v3;
  v218 = a1;
  v225 = v21;
  if (v59)
  {
    v60 = v59;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    v61 = sub_2CE410();

    v234 = v61;
    sub_20410(&qword_355598, &qword_2D77D8);
    sub_21D450();
    v62 = sub_2CE580();

    v63 = v62;
    v64 = *(v62 + 16);
    if (v64)
    {
      v221 = v63;
      v234 = _swiftEmptyArrayStorage;
      sub_2DB78(0, v64, 0);
      a1 = v234;
      if (qword_34BF58 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_161;
    }

    a1 = _swiftEmptyArrayStorage;
LABEL_39:
    sub_80B10(a1);
    a1 = v218;
  }

  v79 = [a1 intentSpeakerNames];
  if (v79)
  {
    v80 = v79;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    v81 = sub_2CE410();

    v234 = v81;
    sub_20410(&qword_355598, &qword_2D77D8);
    sub_21D450();
    v82 = sub_2CE580();

    v226 = v82;
    v83 = *(v82 + 16);
    if (v83)
    {
      v234 = _swiftEmptyArrayStorage;
      sub_2DB78(0, v83, 0);
      v85 = v234;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v86 = 0;
      v224 = (v219 + 16);
      v223 = (v219 + 8);
      v87 = &v226[5];
      *&v84 = 136315138;
      v220 = v84;
      v221 = v83;
      do
      {
        if (v83 == v86)
        {
          goto LABEL_153;
        }

        if (v86 >= v226[2].isa)
        {
          goto LABEL_154;
        }

        v88 = *(v87 - 1);
        v21 = *v87;
        v89 = sub_3ED0(v3, static Logger.default);
        swift_beginAccess();
        v90 = v225;
        (*v224)(v225, v89, v3);

        v1 = sub_2CDFE0();
        v91 = sub_2CE690();

        v92 = os_log_type_enabled(v1, v91);
        v227 = v88;
        if (v92)
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v232[0] = v94;
          *v93 = v220;
          *(v93 + 4) = sub_3F08(v88, v21, v232);
          _os_log_impl(&dword_0, v1, v91, "DetermineIntent#constructWHADialogMetadata speakerName: %s", v93, 0xCu);
          sub_306C(v94);
          v83 = v221;

          (*v223)(v90, v228);
        }

        else
        {

          (*v223)(v90, v3);
        }

        v234 = v85;
        v96 = v85[2];
        v95 = v85[3];

        if (v96 >= v95 >> 1)
        {
          sub_2DB78((v95 > 1), v96 + 1, 1);
          v85 = v234;
        }

        v86 = (v86 + 1);
        v85[2] = v96 + 1;
        v97 = &v85[3 * v96];
        v3 = v228;
        v97[4] = v227;
        v97[5] = v21;
        *(v97 + 48) = 0;
        v87 += 2;
      }

      while (v83 != v86);
    }

    else
    {

      v85 = _swiftEmptyArrayStorage;
    }

    sub_80B10(v85);
    a1 = v218;
  }

  v3 = v235;
  if (!v235[2])
  {
    goto LABEL_87;
  }

  v225 = v235[2];
  v99 = v235[4];
  v98 = v235[5];
  LODWORD(v100) = *(v235 + 48);
  v101 = qword_34BF58;

  if (v101 != -1)
  {
    swift_once();
  }

  v102 = v228;
  v103 = sub_3ED0(v228, static Logger.default);
  swift_beginAccess();
  v104 = *(v219 + 16);
  v105 = v215;
  v226 = (v219 + 16);
  v227 = v104;
  (v104)(v215, v103, v102);

  v106 = sub_2CDFE0();
  v107 = sub_2CE690();

  v108 = os_log_type_enabled(v106, v107);
  v224 = v99;
  if (v108)
  {
    v109 = swift_slowAlloc();
    LODWORD(v223) = v100;
    v100 = v109;
    v110 = swift_slowAlloc();
    v230[0] = v110;
    *v100 = 136315138;
    v232[0] = v99;
    v232[1] = v98;
    v233 = v223;

    v111 = sub_2CE2A0();
    v113 = sub_3F08(v111, v112, v230);
    a1 = v218;

    *(v100 + 4) = v113;
    _os_log_impl(&dword_0, v106, v107, "DetermineIntent#constructWHADialogMetadata firstDestination: %s", v100, 0xCu);
    sub_306C(v110);

    LOBYTE(v100) = v223;

    v114 = *(v219 + 8);
    (v114)(v215, v102);
  }

  else
  {

    v114 = *(v219 + 8);
    (v114)(v105, v102);
  }

  if ((v100 & 1) == 0)
  {
    (v227)(v216, v103, v228);
    v116 = sub_2CDFE0();
    v120 = sub_2CE690();
    if (os_log_type_enabled(v116, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_0, v116, v120, "DetermineIntent#constructWHADialogMetadata Destination #1: Destination is an accesory. Setting firstSpeakerName to firstDestination.name", v121, 2u);
      v21 = &selRef_setFirstSpeakerName_;
      v119 = v216;
      goto LABEL_67;
    }

    v21 = &selRef_setFirstSpeakerName_;
    v119 = v216;
LABEL_70:
    v122 = v225;
    goto LABEL_71;
  }

  v115 = v213;
  (v227)();
  v116 = sub_2CDFE0();
  v117 = sub_2CE690();
  if (!os_log_type_enabled(v116, v117))
  {
    v21 = &selRef_setFirstSpeakerRoom_;
    v119 = v115;
    goto LABEL_70;
  }

  v118 = swift_slowAlloc();
  *v118 = 0;
  _os_log_impl(&dword_0, v116, v117, "DetermineIntent#constructWHADialogMetadata Destination #1: Destination is a room or zone. Setting firstSpeakerRoom to firstDestination.name", v118, 2u);
  v21 = &selRef_setFirstSpeakerRoom_;
  v119 = v115;
LABEL_67:
  v122 = v225;

LABEL_71:

  v23 = (v219 + 8);
  (v114)(v119, v228);

  v64 = sub_2CE260();

  [v222 *v21];

  if (*(v3 + 16) < v122)
  {
    __break(1u);
LABEL_161:
    swift_once();
LABEL_28:
    v1 = 0;
    v224 = (v219 + 16);
    v223 = (v219 + 8);
    v66 = v221;
    v67 = (v221 + 40);
    *&v65 = 136315138;
    v220 = v65;
    v226 = v64;
    v227 = v23;
    while (v64 != v1)
    {
      if (v1 >= *(v66 + 16))
      {
        goto LABEL_152;
      }

      v21 = *(v67 - 1);
      v68 = *v67;
      v69 = sub_3ED0(v3, static Logger.default);
      swift_beginAccess();
      (*v224)(v23, v69, v3);

      v70 = sub_2CDFE0();
      v71 = sub_2CE690();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = v23;
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v232[0] = v74;
        *v73 = v220;
        *(v73 + 4) = sub_3F08(v21, v68, v232);
        _os_log_impl(&dword_0, v70, v71, "DetermineIntent#constructWHADialogMetadata roomName: %s", v73, 0xCu);
        sub_306C(v74);
        v3 = v228;

        v75 = v72;
        v66 = v221;
        (*v223)(v75, v3);
      }

      else
      {

        (*v223)(v23, v3);
      }

      v234 = a1;
      v77 = a1[2];
      v76 = a1[3];

      if (v77 >= v76 >> 1)
      {
        sub_2DB78((v76 > 1), v77 + 1, 1);
        a1 = v234;
      }

      v1 = (v1 + 1);
      a1[2] = v77 + 1;
      v78 = &a1[3 * v77];
      v78[4] = v21;
      v78[5] = v68;
      *(v78 + 48) = 1;
      v67 += 2;
      v64 = v226;
      v23 = v227;
      if (v226 == v1)
      {

        goto LABEL_39;
      }
    }

LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    swift_once();
    goto LABEL_146;
  }

  if (v122 != (&dword_0 + 1))
  {
    v225 = v114;
    v123 = *(v3 + 64);
    v224 = *(v3 + 56);
    v124 = *(v3 + 72);

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v125 = v228;
    v126 = sub_3ED0(v228, static Logger.default);
    swift_beginAccess();
    v127 = v214;
    (v227)(v214, v126, v125);

    v128 = sub_2CDFE0();
    v129 = sub_2CE690();

    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *v130 = 136315138;
      v229 = v131;
      v230[0] = v224;
      v230[1] = v123;
      v231 = v124;

      v132 = sub_2CE2A0();
      v134 = sub_3F08(v132, v133, &v229);

      *(v130 + 4) = v134;
      a1 = v218;
      _os_log_impl(&dword_0, v128, v129, "DetermineIntent#constructWHADialogMetadata secondDestination: %s", v130, 0xCu);
      sub_306C(v131);

      v125 = v228;

      v135 = v214;
    }

    else
    {

      v135 = v127;
    }

    (v225)(v135, v125);
    if (v124)
    {
      (v227)(v212, v126, v125);
      v136 = sub_2CDFE0();
      v137 = sub_2CE690();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&dword_0, v136, v137, "DetermineIntent#constructWHADialogMetadata Destination #2: Destination is a room or zone. Setting secondSpeakerRoom to the secondDestination.name", v138, 2u);
      }

      (v225)(v212, v125);

      v139 = sub_2CE260();

      [v222 setSecondSpeakerRoom:v139];
    }

    else
    {
      (v227)(v211, v126, v125);
      v140 = sub_2CDFE0();
      v141 = sub_2CE690();
      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        *v142 = 0;
        _os_log_impl(&dword_0, v140, v141, "DetermineIntent#constructWHADialogMetadata Destination #2: Destination is an accesory. Setting secondSpeakerName to secondDestination.name", v142, 2u);
      }

      (v225)(v211, v125);

      v139 = sub_2CE260();

      [v222 setSecondSpeakerName:v139];
    }
  }

LABEL_87:

  v143 = [a1 spokenEntityNames];
  if (v143)
  {
    v144 = v143;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    v145 = sub_2CE410();
  }

  else
  {
    sub_20410(&unk_351900, &unk_2D0960);
    v145 = swift_allocObject();
    *(v145 + 16) = xmmword_2D0770;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    *(v145 + 32) = sub_2CE5E0();
  }

  v146 = [a1 spokenEntityTypes];
  if (v146)
  {
    v147 = v146;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    v148 = sub_2CE410();
  }

  else
  {
    sub_20410(&unk_351900, &unk_2D0960);
    v148 = swift_allocObject();
    *(v148 + 16) = xmmword_2D0770;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    *(v148 + 32) = sub_2CE5E0();
  }

  v3 = sub_229BBC(v145, v148);

  if ((v3 & 0xC000000000000001) != 0)
  {
    v149 = sub_2CED60();
    v1 = 0;
    v150 = 0;
    v151 = 0;
    v3 = v149 | 0x8000000000000000;
  }

  else
  {
    v152 = -1 << *(v3 + 32);
    v1 = (v3 + 64);
    v150 = ~v152;
    v153 = -v152;
    if (v153 < 64)
    {
      v154 = ~(-1 << v153);
    }

    else
    {
      v154 = -1;
    }

    v151 = v154 & *(v3 + 64);
  }

  v155 = 0;
  v225 = v150;
  v21 = ((v150 + 64) >> 6);
  v226 = _swiftEmptyArrayStorage;
  v227 = _swiftEmptyArrayStorage;
  while (v3 < 0)
  {
    v163 = sub_2CED70();
    if (!v163)
    {
      goto LABEL_135;
    }

    v165 = v164;
    v229 = v163;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    swift_dynamicCast();
    v161 = v230[0];
    v229 = v165;
    swift_dynamicCast();
    v162 = v230[0];
    v158 = v151;
    if (!v161)
    {
      goto LABEL_135;
    }

LABEL_109:
    v151 = v158;
    v166 = sub_2CE5F0();
    if (!v167)
    {
      goto LABEL_118;
    }

    if (v166 == 1297043282 && v167 == 0xE400000000000000)
    {
    }

    else
    {
      v169 = sub_2CEEA0();

      if ((v169 & 1) == 0)
      {
        goto LABEL_118;
      }
    }

    v170 = sub_2CE5F0();
    if (v171)
    {
      v174 = v171;
      v180 = v226;
      if (v226)
      {
        v224 = v170;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v180 = sub_B90C4(0, *(v180 + 2) + 1, 1, v180);
        }

        v177 = *(v180 + 2);
        v181 = *(v180 + 3);
        v226 = v180;
        v178 = v177 + 1;
        if (v177 >= v181 >> 1)
        {
          v226 = sub_B90C4((v181 > 1), v177 + 1, 1, v226);
        }

        v179 = v226;
LABEL_132:
        *(v179 + 2) = v178;
        v182 = &v179[16 * v177];
        *(v182 + 4) = v224;
        *(v182 + 5) = v174;
      }

      else
      {

        v226 = 0;
      }
    }

    else
    {
LABEL_118:
      v172 = sub_2CE5F0();
      if (v173)
      {
        v174 = v173;
        v175 = v227;
        if (v227)
        {
          v224 = v172;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v175 = sub_B90C4(0, *(v175 + 2) + 1, 1, v175);
          }

          v177 = *(v175 + 2);
          v176 = *(v175 + 3);
          v227 = v175;
          v178 = v177 + 1;
          if (v177 >= v176 >> 1)
          {
            v227 = sub_B90C4((v176 > 1), v177 + 1, 1, v227);
          }

          v179 = v227;
          goto LABEL_132;
        }

        v227 = 0;
      }

      else
      {
      }
    }
  }

  v156 = v155;
  v157 = v151;
  if (!v151)
  {
    while (1)
    {
      v155 = v156 + 1;
      if (__OFADD__(v156, 1))
      {
        break;
      }

      if (v155 >= v21)
      {
        goto LABEL_135;
      }

      v157 = v1[v155].isa;
      ++v156;
      if (v157)
      {
        goto LABEL_105;
      }
    }

    __break(1u);
    goto LABEL_151;
  }

LABEL_105:
  v158 = (v157 - 1) & v157;
  v159 = (v155 << 9) | (8 * __clz(__rbit64(v157)));
  v160 = *(*(v3 + 56) + v159);
  v161 = *(*(v3 + 48) + v159);
  v162 = v160;
  if (v161)
  {
    goto LABEL_109;
  }

LABEL_135:
  sub_21D448();
  v183 = v227;
  v21 = v228;
  v3 = v219;
  v1 = v226;
  if (v227)
  {
    v184 = *(v227 + 2);
    if (v184)
    {
      if (v184 == 1)
      {
        v185 = &selRef_setFirstPermanentNameFromSpokenEntities_;
        v186 = 40;
        v187 = 32;
      }

      else
      {
        v188 = *(v227 + 4);
        v189 = *(v227 + 5);

        v190 = sub_2CE260();

        [v222 setFirstPermanentNameFromSpokenEntities:v190];

        if (*(v183 + 2) < 2uLL)
        {
          __break(1u);
          return;
        }

        v185 = &selRef_setSecondPermanentNameFromSpokenEntities_;
        v186 = 56;
        v187 = 48;
      }

      v191 = *&v183[v187];
      v192 = *&v183[v186];

      v193 = sub_2CE260();

      [v222 *v185];
    }
  }

  if (v1 && v1[2].isa == (&dword_0 + 1))
  {
    v194 = v1[4].isa;
    v195 = v1[5].isa;

    v196 = sub_2CE260();

    [v222 setFirstRoomNameFromSpokenEntities:v196];
  }

  if (qword_34BF58 != -1)
  {
    goto LABEL_155;
  }

LABEL_146:
  sub_3ED0(v21, static Logger.default);
  swift_beginAccess();
  v197 = v217;
  (*(v3 + 16))();
  v198 = v222;
  v199 = sub_2CDFE0();
  v200 = sub_2CE690();

  if (os_log_type_enabled(v199, v200))
  {
    v201 = swift_slowAlloc();
    v202 = swift_slowAlloc();
    v226 = v1;
    v203 = v202;
    v229 = v202;
    *v201 = 136446210;
    v204 = v198;
    v205 = [v204 description];
    v206 = sub_2CE270();
    v208 = v207;

    v209 = sub_3F08(v206, v208, &v229);

    *(v201 + 4) = v209;
    _os_log_impl(&dword_0, v199, v200, "DetermineIntent#amendTargetDeviceIdsIfWHA whaDialogMetadata: %{public}s", v201, 0xCu);
    sub_306C(v203);

    (*(v219 + 8))(v197, v228);
  }

  else
  {

    (*(v3 + 8))(v197, v21);
  }
}

unint64_t sub_21D450()
{
  result = qword_3555A0[0];
  if (!qword_3555A0[0])
  {
    sub_2DB30(&qword_355598, &qword_2D77D8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_3555A0);
  }

  return result;
}

uint64_t sub_21D4B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D588(void *a1)
{
  v2 = sub_2CDFD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE9E0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_2CDFC0();
  sub_2CDF90();
  v7 = *(v3 + 8);
  v7(v6, v2);
  v8 = sub_21D754(a1);
  sub_2CE9D0();
  sub_2CDFC0();
  sub_2CDFA0();
  v7(v6, v2);
  return v8;
}

uint64_t sub_21D754(void *a1)
{
  v2 = v1;
  v109.value._object = *v1;
  v107 = sub_2CE130();
  v106 = *(v107 - 8);
  v4 = *(v106 + 64);
  __chkstk_darwin(v107);
  v103 = (&v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = sub_2CE1A0();
  v104 = *(v105 - 8);
  v6 = *(v104 + 64);
  v7 = __chkstk_darwin(v105);
  v101 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = &v98 - v9;
  v112 = sub_2CA870();
  v111 = *(v112 - 8);
  isa = v111[8].isa;
  __chkstk_darwin(v112);
  v110 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CA7B0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v17);
  v109.value._countAndFlagsBits = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v98 - v23;
  v25 = __chkstk_darwin(v22);
  v100 = &v98 - v26;
  __chkstk_darwin(v25);
  v28 = &v98 - v27;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v29 = sub_3ED0(v17, static Logger.default);
  swift_beginAccess();
  v30 = v18[2];
  v117 = v18 + 2;
  v118 = v29;
  v116 = v30;
  v30(v28, v29, v17);
  v31 = *(v13 + 16);
  v113 = a1;
  v31(v16, a1, v12);
  v32 = v16;
  v33 = v12;
  v34 = sub_2CDFE0();
  v35 = sub_2CE690();
  v36 = os_log_type_enabled(v34, v35);
  v108 = v24;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v115 = v17;
    v39 = v38;
    v120[0] = v38;
    *v37 = 136315138;
    v40 = sub_2CA770();
    v41 = v33;
    v42 = v40;
    v99 = v2;
    v114 = v18;
    v44 = v43;
    (*(v13 + 8))(v32, v41);
    v45 = sub_3F08(v42, v44, v120);
    v18 = v114;
    v2 = v99;

    *(v37 + 4) = v45;
    _os_log_impl(&dword_0, v34, v35, "AppResolutionOnDeviceStrategy#resolveApp Resolving app with input: %s", v37, 0xCu);
    sub_306C(v39);
    v17 = v115;
  }

  else
  {

    (*(v13 + 8))(v32, v33);
  }

  v46 = v18[1];
  v46(v28, v17);
  v47 = v110;
  sub_2CA790();
  v48 = Parse.getSiriKitIntent(nowPlayingProvider:featureFlags:)(v2 + 25, (v2 + 2));
  (v111[1].isa)(v47, v112);
  if (v48)
  {
    v49 = *(*(v109.value._object + 10) + class metadata base offset for CommonAppResolver);
    v50 = swift_dynamicCastUnknownClass();
    if (v50)
    {
      v51 = v50;
      v52 = v2[30];
      v2[30] = v50;
      v53 = v48;

      v54 = v53;
      v55 = [v51 launchId];
      v114 = v18;
      v115 = v17;
      v99 = v46;
      v113 = v54;
      if (v55)
      {
        v56 = v55;
        v109.value._countAndFlagsBits = sub_2CE270();
        v109.value._object = v57;
      }

      else
      {
        v109.value._countAndFlagsBits = 0;
        v109.value._object = 0;
      }

      v63 = swift_allocObject();
      v110 = sub_2CA300();
      *(v63 + 16) = sub_2CA2C0();
      v112 = v63 + 16;
      v64 = dispatch_semaphore_create(0);
      v65 = v2[31];
      v120[3] = sub_2CCFE0();
      v120[4] = &protocol witness table for AppResolutionStateProvider;
      sub_F390(v120);
      sub_2CCFD0();
      v66 = swift_allocObject();
      *(v66 + 16) = v63;
      *(v66 + 24) = v64;

      v67 = v64;
      sub_2CCF40();

      sub_306C(v120);
      v68 = v101;
      sub_2CE190();
      v69 = v103;
      *v103 = 8;
      v70 = v106;
      v71 = v107;
      (*(v106 + 104))(v69, enum case for DispatchTimeInterval.seconds(_:), v107);
      v72 = v102;
      sub_2CE1B0();
      (*(v70 + 8))(v69, v71);
      v73 = *(v104 + 8);
      v74 = v68;
      v75 = v105;
      v73(v74, v105);
      v111 = v67;
      sub_2CEA20();
      v73(v72, v75);
      v76 = sub_2CE140();
      v77 = v99;
      if (v76)
      {
        v78 = v100;
        v116(v100, v118, v115);
        v79 = sub_2CDFE0();
        v80 = sub_2CE680();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_0, v79, v80, "AppResolutionOnDeviceStrategy#resolveApp timed out waiting for resolveApp to return, continuing on with noAppFound", v81, 2u);
        }

        (v77)(v78, v115);
        v82 = sub_2CA2C0();
        v83 = v112;
        swift_beginAccess();
        v84 = *v83;
        *v83 = v82;
      }

      v121._object = 0x80000000002DFBD0;
      v121._countAndFlagsBits = 0xD000000000000028;
      sub_2CEAA0(v109, v121);
      v85 = v113;

      v86 = v108;
      v87 = v115;
      v116(v108, v118, v115);

      v88 = sub_2CDFE0();
      v89 = sub_2CE690();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v120[0] = v91;
        *v90 = 136315138;
        v92 = v77;
        v93 = v112;
        swift_beginAccess();
        v119 = *v93;
        sub_220B7C(&qword_3556A8, &type metadata accessor for AppResolutionAction);
        v94 = sub_2CEE70();
        v96 = sub_3F08(v94, v95, v120);

        *(v90 + 4) = v96;
        _os_log_impl(&dword_0, v88, v89, "AppResolutionOnDeviceStrategy#resolveApp returning result %s", v90, 0xCu);
        sub_306C(v91);

        (v92)(v108, v87);
      }

      else
      {

        (v77)(v86, v87);
      }

      swift_beginAccess();
      v97 = *(v63 + 16);

      return v97;
    }
  }

  countAndFlagsBits = v109.value._countAndFlagsBits;
  v116(v109.value._countAndFlagsBits, v118, v17);
  v59 = sub_2CDFE0();
  v60 = sub_2CE680();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_0, v59, v60, "AppResolutionOnDeviceStrategy#resolveApp Unable to get SiriKit intent from parse", v61, 2u);
  }

  v46(countAndFlagsBits, v17);
  sub_2CA300();
  return sub_2CA2C0();
}

Swift::Int sub_21E390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v47 = a3;
  v4 = sub_2CD050();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v44 = v9;
  v45 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v44 - v15;
  v17 = sub_20410(&qword_354750, &qword_2D69E0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v44 - v19);
  sub_F3F4(a1, &v44 - v19, &qword_354750, &qword_2D69E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v22 = v44;
    v23 = sub_3ED0(v44, static Logger.default);
    swift_beginAccess();
    v24 = v45;
    (*(v45 + 16))(v16, v23, v22);
    swift_errorRetain();
    v25 = sub_2CDFE0();
    v26 = sub_2CE680();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v48 = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = sub_2CEEF0();
      v31 = sub_3F08(v29, v30, &v48);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_0, v25, v26, "AppResolutionOnDeviceStrategy#resolveApp App resolution resulted in a failure. Error: %s", v27, 0xCu);
      sub_306C(v28);
    }

    (*(v24 + 8))(v16, v22);
    sub_2CA300();
    v32 = sub_2CA2C0();
  }

  else
  {
    (*(v5 + 32))(v8, v20, v4);
    v33 = v4;
    v34 = v5;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v35 = v44;
    v36 = sub_3ED0(v44, static Logger.default);
    swift_beginAccess();
    v37 = v45;
    (*(v45 + 16))(v14, v36, v35);
    v38 = sub_2CDFE0();
    v39 = sub_2CE690();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "AppResolutionOnDeviceStrategy#resolveApp success", v40, 2u);
    }

    (*(v37 + 8))(v14, v35);
    v32 = sub_206AC(v8);
    (*(v34 + 8))(v8, v33);
  }

  v41 = v46;
  swift_beginAccess();
  v42 = *(v41 + 16);
  *(v41 + 16) = v32;

  return sub_2CEA40();
}

uint64_t sub_21E888(uint64_t a1)
{
  v3 = *(v1 + 240);
  v4 = v3;
  v5 = sub_21E8D4(v3, a1);

  return v5;
}

uint64_t sub_21E8D4(void *a1, uint64_t a2)
{
  v3 = v2;
  v98 = a1;
  v5 = *v3;
  v94 = v3;
  v100 = v5;
  v104 = sub_2CA870();
  v103 = *(v104 - 8);
  v6 = *(v103 + 64);
  __chkstk_darwin(v104);
  v102 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CA7B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v95 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v92 - v19;
  v21 = __chkstk_darwin(v18);
  v96 = &v92 - v22;
  v23 = __chkstk_darwin(v21);
  v105 = &v92 - v24;
  __chkstk_darwin(v23);
  v26 = &v92 - v25;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v27 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v28 = v14[2];
  v108 = v27;
  v107 = v14 + 2;
  v106 = v28;
  v28(v26, v27, v13);
  v29 = *(v9 + 16);
  v101 = a2;
  v29(v12, a2, v8);
  v30 = sub_2CDFE0();
  v31 = sub_2CE690();
  v32 = os_log_type_enabled(v30, v31);
  v97 = v20;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v99 = v14;
    v34 = v33;
    v35 = swift_slowAlloc();
    v93 = v13;
    v36 = v35;
    v114 = v35;
    *v34 = 136315138;
    sub_220B7C(&qword_34CD00, &type metadata accessor for Input);
    v37 = sub_2CEE70();
    v39 = v38;
    (*(v9 + 8))(v12, v8);
    v40 = sub_3F08(v37, v39, &v114);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_0, v30, v31, "AppResolutionOnDeviceStrategy#parseDisambiguationResponse for input: %s", v34, 0xCu);
    sub_306C(v36);

    v14 = v99;

    v41 = v14[1];
    v42 = v93;
    v41(v26, v93);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
    v41 = v14[1];
    v41(v26, v13);
    v42 = v13;
  }

  v43 = v102;
  sub_2CA790();
  v44 = v100[10];
  v45 = v100[11];
  v46 = v100[12];
  v47 = type metadata accessor for AppResolutionOnDeviceStrategy();
  WitnessTable = swift_getWitnessTable();
  sub_16D228(v43, v47, WitnessTable, &v114);
  (*(v103 + 8))(v43, v104);
  sub_F3F4(&v114, &v112, &qword_355698, qword_2D7A40);
  if (v113 == 1)
  {
    v106(v105, v108, v42);
    swift_errorRetain();
    v49 = sub_2CDFE0();
    v50 = sub_2CE680();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      swift_errorRetain();
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v53;
      *v52 = v53;
      _os_log_impl(&dword_0, v49, v50, "AppResolutionOnDeviceStrategy#parseDisambiguationResponse error getting app: %@", v51, 0xCu);
      sub_30B8(v52, &unk_34FC00, &unk_2D0150);
    }

    v41(v105, v42);
    sub_2CA670();
    v54 = sub_2CA650();

    sub_30B8(&v114, &qword_355698, qword_2D7A40);
  }

  else
  {
    sub_F338(&v112, v111);
    v55 = v98;
    if (v98)
    {
      v99 = v14;
      v56 = v96;
      v106(v96, v108, v42);
      sub_EEAC(v111, v110);
      v57 = v55;
      v58 = sub_2CDFE0();
      v59 = sub_2CE690();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v109 = v61;
        *v60 = 136315138;
        sub_35E0(v110, v110[3]);
        if (!sub_2CCFF0() || (v62 = sub_2CCF90(), v64 = v63, , !v64))
        {

          v64 = 0xE500000000000000;
          v62 = 0x3E6C696E3CLL;
        }

        sub_306C(v110);
        v65 = sub_3F08(v62, v64, &v109);

        *(v60 + 4) = v65;
        _os_log_impl(&dword_0, v58, v59, "AppResolutionOnDeviceStrategy#parseDisambiguationResponse App Resolution state found app: %s", v60, 0xCu);
        sub_306C(v61);

        v41(v96, v42);
      }

      else
      {

        v41(v56, v42);
        sub_306C(v110);
      }

      v70 = swift_allocObject();
      sub_2CA670();
      sub_220B14();
      swift_allocError();
      *v71 = 1;
      v72 = sub_2CA650();

      *(v70 + 16) = v72;
      v73 = dispatch_semaphore_create(0);
      v74 = v94;
      v75 = v94[31];
      v76 = swift_allocObject();
      v76[2] = v73;
      v76[3] = v70;
      v76[4] = v74;
      v76[5] = v57;
      v77 = v57;
      v78 = v73;

      v105 = v77;
      sub_2CCF40();

      sub_2CEA30();
      v79 = v97;
      v106(v97, v108, v42);

      v80 = sub_2CDFE0();
      v81 = sub_2CE690();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v108 = v41;
        v83 = v82;
        v84 = swift_slowAlloc();
        v93 = v42;
        v85 = v84;
        v110[0] = v84;
        *v83 = 136315138;
        swift_beginAccess();
        v86 = *(v70 + 16);

        v87 = sub_2CA640();
        v89 = v88;

        v90 = sub_3F08(v87, v89, v110);

        *(v83 + 4) = v90;
        _os_log_impl(&dword_0, v80, v81, "AppResolutionOnDeviceStrategy#parseDisambiguationResponse Done, returning disambiguation response: %s", v83, 0xCu);
        sub_306C(v85);

        v108(v97, v93);
      }

      else
      {

        v41(v79, v42);
      }

      sub_306C(v111);
      sub_30B8(&v114, &qword_355698, qword_2D7A40);
      swift_beginAccess();
      v54 = *(v70 + 16);
    }

    else
    {
      v106(v95, v108, v42);
      v66 = sub_2CDFE0();
      v67 = sub_2CE680();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_0, v66, v67, "Unable to get to the original intent, returning error", v68, 2u);
      }

      v41(v95, v42);
      sub_2CA670();
      sub_220B14();
      swift_allocError();
      *v69 = 1;
      v54 = sub_2CA650();
      sub_306C(v111);
      sub_30B8(&v114, &qword_355698, qword_2D7A40);
    }
  }

  return v54;
}

Swift::Int sub_21F60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v106 = a5;
  v112 = a3;
  v113 = a2;
  v6 = sub_2CD050();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v104 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v109 = (&v101 - v12);
  __chkstk_darwin(v11);
  v14 = &v101 - v13;
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v114 = v15;
  v115 = v16;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v107 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v110 = (&v101 - v21);
  v22 = __chkstk_darwin(v20);
  v105 = &v101 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v101 - v25;
  __chkstk_darwin(v24);
  v28 = &v101 - v27;
  v29 = sub_20410(&qword_354750, &qword_2D69E0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = (&v101 - v31);
  sub_F3F4(a1, &v101 - v31, &qword_354750, &qword_2D69E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v32;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v34 = v114;
    v35 = sub_3ED0(v114, static Logger.default);
    swift_beginAccess();
    v36 = v115;
    (*(v115 + 16))(v28, v35, v34);
    swift_errorRetain();
    v37 = sub_2CDFE0();
    v38 = sub_2CE680();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v116[0] = v40;
      *v39 = 136315138;
      swift_getErrorValue();
      v41 = sub_2CEEF0();
      v43 = sub_3F08(v41, v42, v116);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_0, v37, v38, "AppResolutionOnDeviceStrategy#parseDisambiguationResponse App resolution resulted in a failure. Error: %s", v39, 0xCu);
      sub_306C(v40);
    }

    (*(v36 + 8))(v28, v34);
    sub_2CA670();
    sub_220B14();
    swift_allocError();
    *v44 = 1;
    v45 = sub_2CA650();

    goto LABEL_19;
  }

  v102 = v7;
  v46 = *(v7 + 32);
  v108 = v14;
  v111 = v6;
  v46(v14, v32, v6);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v47 = v114;
  v48 = sub_3ED0(v114, static Logger.default);
  swift_beginAccess();
  v49 = v115;
  v50 = *(v115 + 16);
  v50(v26, v48, v47);
  v51 = sub_2CDFE0();
  v52 = sub_2CE690();
  v53 = os_log_type_enabled(v51, v52);
  v54 = v109;
  if (v53)
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_0, v51, v52, "AppResolutionOnDeviceStrategy#parseDisambiguationResponse success", v55, 2u);
  }

  v56 = *(v49 + 8);
  v115 = v49 + 8;
  v103 = v56;
  v56(v26, v47);
  v57 = v102;
  v58 = *(v102 + 16);
  v59 = v108;
  v60 = v111;
  v58(v54, v108, v111);
  if ((*(v57 + 88))(v54, v60) != enum case for AppResolutionResult.selected(_:))
  {
    v110 = *(v57 + 8);
    v110(v54, v60);
    v73 = v105;
    v50(v105, v48, v47);
    v74 = v73;
    v75 = v104;
    v58(v104, v59, v60);
    v76 = sub_2CDFE0();
    v77 = sub_2CE690();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v116[0] = v79;
      *v78 = 136315138;
      sub_220B7C(&qword_3556A0, &type metadata accessor for AppResolutionResult);
      v80 = sub_2CEE70();
      v82 = v81;
      v83 = v75;
      v84 = v110;
      v110(v83, v111);
      v85 = sub_3F08(v80, v82, v116);

      *(v78 + 4) = v85;
      _os_log_impl(&dword_0, v76, v77, "AppResolutionOnDeviceStrategy#parseDisambiguationResponse unexpected response: %s", v78, 0xCu);
      sub_306C(v79);
      v60 = v111;

      v59 = v108;
    }

    else
    {

      v86 = v75;
      v84 = v110;
      v110(v86, v60);
    }

    v103(v74, v47);
    sub_2CA670();
    sub_220B14();
    swift_allocError();
    *v87 = 1;
    v45 = sub_2CA650();
    v84(v59, v60);
LABEL_19:

    goto LABEL_30;
  }

  (*(v57 + 96))(v54, v60);
  v61 = *v54;
  v50(v110, v48, v47);

  v62 = sub_2CDFE0();
  v63 = sub_2CE690();
  v109 = v61;

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138412290;
    v66 = sub_2CCF90();
    if (v67)
    {
      v68 = v66;
      v69 = v67;
      sub_10C40();
      swift_allocError();
      *v70 = v68;
      v70[1] = v69;
      v71 = _swift_stdlib_bridgeErrorToNSError();
      v72 = v71;
    }

    else
    {
      v71 = 0;
      v72 = 0;
    }

    *(v64 + 4) = v71;
    *v65 = v72;
    _os_log_impl(&dword_0, v62, v63, "AppResolutionOnDeviceStrategy#parseDisambiguationResponse success with app: %@", v64, 0xCu);
    sub_30B8(v65, &unk_34FC00, &unk_2D0150);

    v60 = v111;
    v57 = v102;
    v47 = v114;
  }

  v103(v110, v47);
  objc_opt_self();
  v88 = v106;
  v89 = swift_dynamicCastObjCClass();
  if (v89)
  {
    v90 = v89;
    v50(v107, v48, v47);
    v91 = v88;
    v92 = sub_2CDFE0();
    v93 = sub_2CE690();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_0, v92, v93, "AppResolutionOnDeviceStrategy#parseDisambiguationResponse applying app to intent after disambiguation", v94, 2u);
    }

    v103(v107, v47);
    v117.value._countAndFlagsBits = sub_2CCF90();
    v118._object = 0x80000000002DFB90;
    v118._countAndFlagsBits = 0xD000000000000039;
    sub_2CEAA0(v117, v118);

    v95 = [v90 backingStore];
    objc_opt_self();
    v96 = swift_dynamicCastObjCClass();
    if (v96)
    {
      v97 = [v96 privatePlayMediaIntentData];

      [v97 setAppInferred:0];
    }

    else
    {
      v97 = v91;
      v91 = v95;
    }
  }

  sub_2CA670();
  v45 = sub_2CA660();

  (*(v57 + 8))(v108, v60);
LABEL_30:
  v98 = v112;
  swift_beginAccess();
  v99 = *(v98 + 16);
  *(v98 + 16) = v45;

  return sub_2CEA40();
}

void sub_22019C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[30];
  v8 = *(*v3 + 80);
  v9 = *(*v3 + 88);
  v10 = *(*v3 + 96);
  v11 = type metadata accessor for AppResolutionOnDeviceStrategy();
  v12 = v7;
  WitnessTable = swift_getWitnessTable();
  sub_17D10C(a1, a2, a3, v11, WitnessTable);
}

uint64_t sub_220274(uint64_t a1, void (*a2)(uint64_t *), void (*a3)(uint64_t *))
{
  v6 = *v3;
  v7 = sub_2CA030();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_20410(&qword_3530D0, &qword_2D5728);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;

  sub_2CA020();
  sub_2CCFB0();
  sub_2CA450();
  v23 = v3;
  v14 = v3[30];
  v15 = v6[10];
  v16 = v6[11];
  v17 = v6[12];
  v18 = type metadata accessor for AppResolutionOnDeviceStrategy();
  v19 = v14;
  WitnessTable = swift_getWitnessTable();
  sub_171ED0(v14, v13, a2, a3, v18, WitnessTable);

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_220468()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));
  v1 = *(v0 + 96);

  v2 = *(v0 + 112);

  sub_306C((v0 + 120));
  sub_306C((v0 + 160));
  sub_306C((v0 + 200));

  v3 = *(v0 + 248);

  return v0;
}

uint64_t sub_2204C8()
{
  sub_220468();

  return swift_deallocClassInstance();
}

uint64_t sub_220544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppResolutionOnDeviceFlowStrategy.makeAppResolutionSuccessfulResponse(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_E664;

  return AppResolutionOnDeviceFlowStrategy.makeAppResolutionSuccessfulResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_220608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppResolutionOnDeviceFlowStrategy.makeAppResolutionUnsuccessfulResponse(reason:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24C84;

  return AppResolutionOnDeviceFlowStrategy.makeAppResolutionUnsuccessfulResponse(reason:)(a1, a2, a3, a4);
}

uint64_t sub_2206CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppResolutionOnDeviceFlowStrategy.makeErrorOutput(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24C84;

  return AppResolutionOnDeviceFlowStrategy.makeErrorOutput(error:)(a1, a2, a3, a4);
}

uint64_t sub_220808()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 112);

  return v1;
}

uint64_t sub_22092C()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v5 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2CDFE0();
  v7 = sub_2CE680();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "AppResolutionOnDeviceStrategy#parseConfirmationResponse needs implementing", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  sub_2CA480();
  sub_220B14();
  swift_allocError();
  *v9 = 0;
  v10 = sub_2CA470();

  return v10;
}

unint64_t sub_220B14()
{
  result = qword_355690;
  if (!qword_355690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355690);
  }

  return result;
}

uint64_t sub_220B7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220BC4@<X0>(unint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v122 = a4;
  v130 = a3;
  v131 = a5;
  v128 = a2;
  v133 = sub_2CD270();
  v6 = *(v133 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v133);
  v117 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v116 - v11;
  __chkstk_darwin(v10);
  v14 = &v116 - v13;
  v15 = sub_2CE000();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v126 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v120 = &v116 - v21;
  v22 = __chkstk_darwin(v20);
  v118 = &v116 - v23;
  v24 = __chkstk_darwin(v22);
  v125 = &v116 - v25;
  v26 = __chkstk_darwin(v24);
  v124 = &v116 - v27;
  __chkstk_darwin(v26);
  v29 = &v116 - v28;
  if (qword_34BF58 != -1)
  {
LABEL_49:
    swift_once();
  }

  v30 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  v31 = *(v16 + 16);
  v135 = (v16 + 16);
  v136 = v30;
  v134 = v31;
  v31(v29, v30, v15);
  v32 = sub_2CDFE0();
  v33 = sub_2CE690();
  v34 = os_log_type_enabled(v32, v33);
  v139 = v16;
  v127 = v14;
  v123 = v12;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v141 = v16;
    *v35 = 136446210;
    v36 = sub_2CCCA0();
    v38 = sub_3F08(v36, v37, &v141);

    *(v35 + 4) = v38;
    _os_log_impl(&dword_0, v32, v33, "PlayMediaAlternativesSnippetProvider#snippetModel... %{public}s", v35, 0xCu);
    sub_306C(v16);

    v137 = *(v139 + 8);
    v137(v29, v15);
  }

  else
  {

    v39 = *(v16 + 8);
    v16 += 8;
    v137 = v39;
    v39(v29, v15);
  }

  v121 = sub_2234D4();
  v129 = v40;
  v14 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (a1 >> 62)
  {
    v41 = sub_2CEDA0();
  }

  else
  {
    v41 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v132 = v15;
  v138 = v6;
  if (v41)
  {
    v12 = 0;
    v6 = a1 & 0xC000000000000001;
    v42 = _swiftEmptyArrayStorage;
    v15 = &selRef_hasTwoOrMoreRooms;
    do
    {
      v29 = v12;
      while (1)
      {
        if (v6)
        {
          v43 = sub_2CECD0();
        }

        else
        {
          if (v29 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_48;
          }

          v43 = *(a1 + 8 * v29 + 32);
        }

        v44 = v43;
        v12 = (v29 + 1);
        if (__OFADD__(v29, 1))
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v45 = [v43 artist];
        if (v45)
        {
          break;
        }

        ++v29;
        if (v12 == v41)
        {
          goto LABEL_25;
        }
      }

      v46 = v45;
      v47 = sub_2CE270();
      v119 = v48;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_B90C4(0, *(v42 + 2) + 1, 1, v42);
      }

      v16 = *(v42 + 2);
      v49 = *(v42 + 3);
      if (v16 >= v49 >> 1)
      {
        v42 = sub_B90C4((v49 > 1), v16 + 1, 1, v42);
      }

      *(v42 + 2) = v16 + 1;
      v50 = &v42[16 * v16];
      v51 = v119;
      *(v50 + 4) = v47;
      *(v50 + 5) = v51;
    }

    while (v12 != v41);
  }

  else
  {
    v42 = _swiftEmptyArrayStorage;
  }

LABEL_25:
  v52 = v130;
  sub_22365C(v42, v130);
  v54 = v53;

  if (!v54)
  {

    v72 = v126;
    v73 = v132;
    v134(v126, v136, v132);
    v74 = sub_2CDFE0();
    v75 = sub_2CE690();
    v76 = os_log_type_enabled(v74, v75);
    v56 = v133;
    v58 = v138;
    if (v76)
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v141 = v78;
      *v77 = 136446210;
      v79 = sub_2CCCA0();
      v81 = sub_3F08(v79, v80, &v141);

      *(v77 + 4) = v81;
      _os_log_impl(&dword_0, v74, v75, "PlayMediaAlternativesSnippetProvider#snippetModel no alternative subtitle found. Return nil for alternative snippet. %{public}s", v77, 0xCu);
      sub_306C(v78);
    }

    v82 = v72;
    v83 = v73;
    goto LABEL_40;
  }

  v55 = sub_221838(a1, v128, v52);
  v57 = v132;
  v56 = v133;
  v58 = v138;
  if (!*(v55 + 16))
  {

    v84 = v120;
    v134(v120, v136, v57);
    v85 = sub_2CDFE0();
    v86 = sub_2CE690();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v141 = v88;
      *v87 = 136446210;
      v89 = sub_2CCCA0();
      v91 = sub_3F08(v89, v90, &v141);

      *(v87 + 4) = v91;
      _os_log_impl(&dword_0, v85, v86, "PlayMediaAlternativesSnippetProvider#snippetModel no alternative items found. Return nil for alternative snippet. %{public}s", v87, 0xCu);
      sub_306C(v88);
    }

    v82 = v84;
    goto LABEL_39;
  }

  if (!sub_2CB460())
  {

    v92 = v118;
    v134(v118, v136, v57);
    v93 = sub_2CDFE0();
    v94 = sub_2CE680();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_0, v93, v94, "PlayMediaAlternativesSnippetProvider#snippetModel could not retrive a SiriEnvironment for currentRequest. returning nil to medigate a possible bug showing a snippet with the wrong background color.", v95, 2u);
    }

    v82 = v92;
LABEL_39:
    v83 = v57;
LABEL_40:
    v137(v82, v83);
    v96 = 1;
    v97 = v131;
    return (*(v58 + 56))(v97, v96, 1, v56);
  }

  sub_2CB130();

  v59 = sub_2CD3F0();

  v60 = v122;
  LODWORD(v140) = v59 & v122;
  v61 = v124;
  v134(v124, v136, v57);
  v62 = sub_2CDFE0();
  v63 = sub_2CE690();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v66 = v60;
    v67 = v65;
    v141 = v65;
    *v64 = 67109890;
    *(v64 + 4) = v140 & 1;
    *(v64 + 8) = 1024;
    *(v64 + 10) = v59 & 1;
    *(v64 + 14) = 1024;
    *(v64 + 16) = v66 & 1;
    *(v64 + 20) = 2082;
    v68 = sub_2CCCA0();
    v70 = sub_3F08(v68, v69, &v141);

    *(v64 + 22) = v70;
    v56 = v133;
    _os_log_impl(&dword_0, v62, v63, "PlayMediaAlternativesSnippetProvider#snippetModel shouldHaveABlackBackground is set to %{BOOL}d because isSystemApertureEnabled: %{BOOL}d and  hasSessionID %{BOOL}d. %{public}s", v64, 0x1Eu);
    sub_306C(v67);

    v71 = v124;
  }

  else
  {

    v71 = v61;
  }

  v137(v71, v57);
  v98 = v125;
  v99 = v127;
  sub_2CD260();
  v134(v98, v136, v57);
  v58 = v138;
  v100 = *(v138 + 16);
  v101 = v123;
  v100(v123, v99, v56);
  v102 = sub_2CDFE0();
  v103 = sub_2CE690();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    *v104 = 136315394;
    v100(v117, v101, v56);
    v105 = sub_2CE2A0();
    v107 = v106;
    (*(v58 + 8))(v101, v56);
    v108 = sub_3F08(v105, v107, &v141);

    *(v104 + 4) = v108;
    *(v104 + 12) = 2082;
    v109 = sub_2CCCA0();
    v111 = sub_3F08(v109, v110, &v141);

    *(v104 + 14) = v111;
    _os_log_impl(&dword_0, v102, v103, "PlayMediaAlternativesSnippetProvider#snippetModel returning alternative snippet: %s. %{public}s", v104, 0x16u);
    swift_arrayDestroy();

    v112 = v125;
    v113 = v132;
  }

  else
  {

    (*(v58 + 8))(v101, v56);
    v112 = v98;
    v113 = v57;
  }

  v137(v112, v113);
  v114 = v131;
  (*(v58 + 32))(v131, v127, v56);
  v97 = v114;
  v96 = 0;
  return (*(v58 + 56))(v97, v96, 1, v56);
}

uint64_t sub_221838(unint64_t a1, void (*a2)(char *, uint64_t), void *a3)
{
  v67 = a3;
  v66 = a2;
  v62 = a1;
  v3 = sub_20410(&qword_3557C8, &unk_2D7AE8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v52 - v5;
  v7 = sub_2CD200();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  v9 = __chkstk_darwin(v7);
  v65 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v64 = v52 - v11;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v55 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v52 - v17;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  v20 = v13[2];
  v53 = v19;
  v52[1] = v13 + 2;
  v52[0] = v20;
  v20(v18, v19, v12);
  v21 = sub_2CDFE0();
  v22 = sub_2CE690();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "PlayMediaAlternativesSnippetProvider#alternativeItems...", v23, 2u);
  }

  v26 = v13[1];
  v25 = v13 + 1;
  v24 = v26;
  v26(v18, v12);
  v27 = v62;
  if (v62 >> 62)
  {
    result = sub_2CEDA0();
  }

  else
  {
    result = *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8));
  }

  v56 = v25;
  v57 = v12;
  v54 = v24;
  if (result)
  {
    v60 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v29 = 0;
    v63 = v27 & 0xC000000000000001;
    v30 = v60;
    v31 = (v61 + 48);
    v32 = (v61 + 32);
    v58 = v61 + 8;
    v59 = (v61 + 16);
    v33 = _swiftEmptyArrayStorage;
    do
    {
      if (v63)
      {
        v34 = sub_2CECD0();
      }

      else
      {
        v34 = *(v27 + 8 * v29 + 32);
      }

      v35 = v34;
      sub_221EA0(v34, v66, v67, v6);
      if ((*v31)(v6, 1, v7) == 1)
      {

        sub_30B8(v6, &qword_3557C8, &unk_2D7AE8);
      }

      else
      {
        v36 = *v32;
        v37 = v64;
        (*v32)(v64, v6, v7);
        (*v59)(v65, v37, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_B949C(0, *(v33 + 2) + 1, 1, v33);
        }

        v39 = *(v33 + 2);
        v38 = *(v33 + 3);
        if (v39 >= v38 >> 1)
        {
          v33 = sub_B949C(v38 > 1, v39 + 1, 1, v33);
        }

        v40 = v61;
        (*(v61 + 8))(v64, v7);
        *(v33 + 2) = v39 + 1;
        v36(&v33[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39], v65, v7);
        v27 = v62;
        v30 = v60;
      }

      ++v29;
    }

    while (v30 != v29);
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

  v41 = *(v33 + 2);
  v42 = v57;
  v43 = v55;
  if (v41)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v33;
    if (!isUniquelyReferenced_nonNull_native || (v41 - 1) > *(v33 + 3) >> 1)
    {
      v33 = sub_B949C(isUniquelyReferenced_nonNull_native, v41, 1, v33);
      v69 = v33;
    }

    sub_2258FC(0, 1, 0);
  }

  (v52[0])(v43, v53, v42);

  v45 = sub_2CDFE0();
  v46 = sub_2CE690();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v68 = v48;
    *v47 = 134218242;
    *(v47 + 4) = *(v33 + 2);
    *(v47 + 12) = 2082;
    v49 = sub_2CCCA0();
    v51 = sub_3F08(v49, v50, &v68);

    *(v47 + 14) = v51;
    _os_log_impl(&dword_0, v45, v46, "PlayMediaAlternativesSnippetProvider#alternativeItems returning %ld alternative options %{public}s", v47, 0x16u);
    sub_306C(v48);
  }

  v54(v43, v42);

  return v33;
}
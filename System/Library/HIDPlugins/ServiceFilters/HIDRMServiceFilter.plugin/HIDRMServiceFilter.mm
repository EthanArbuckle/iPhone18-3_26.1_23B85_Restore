Swift::Int sub_1188()
{
  sub_62C4();
  sub_62D4(0);
  return sub_62E4();
}

Swift::Int sub_11F4()
{
  sub_62C4();
  sub_62D4(0);
  return sub_62E4();
}

uint64_t sub_125C()
{
  v0 = sub_6024();
  sub_5F80(v0, qword_CB80);
  sub_2E18(v0, qword_CB80);
  return sub_6014();
}

uint64_t variable initialization expression of HIDRMServiceFilter.queue()
{
  v0 = sub_6234();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_6224() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(sub_6044() - 8) + 64);
  __chkstk_darwin();
  sub_5ED8(0, &qword_C750, OS_dispatch_queue_ptr);
  sub_6034();
  v8[1] = &_swiftEmptyArrayStorage;
  sub_5E90(&qword_C758, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1538(&qword_C760, &qword_6A40);
  sub_1580();
  sub_6264();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_6244();
}

uint64_t sub_1538(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1580()
{
  result = qword_C768;
  if (!qword_C768)
  {
    sub_15E4(&qword_C760, &qword_6A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C768);
  }

  return result;
}

uint64_t sub_15E4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1674@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

void HIDRMServiceFilter.init(service:)(void *a1)
{
  v2 = v1;
  v60 = a1;
  v58 = sub_6234();
  v3 = *(v58 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_6224() - 8) + 64);
  __chkstk_darwin();
  v8 = *(*(sub_6044() - 8) + 64);
  __chkstk_darwin();
  v9 = &v1[OBJC_IVAR___HIDRMServiceFilter_cancelHandler];
  *v9 = 0;
  v9[1] = 0;
  v55 = v9;
  v56 = OBJC_IVAR___HIDRMServiceFilter_eventDispatcher;
  *&v1[OBJC_IVAR___HIDRMServiceFilter_eventDispatcher] = 0;
  v59 = OBJC_IVAR___HIDRMServiceFilter_service;
  *&v1[OBJC_IVAR___HIDRMServiceFilter_service] = 0;
  v10 = OBJC_IVAR___HIDRMServiceFilter_queue;
  v57 = sub_5ED8(0, &qword_C750, OS_dispatch_queue_ptr);
  sub_6034();
  *&v66 = &_swiftEmptyArrayStorage;
  sub_5E90(&qword_C758, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1538(&qword_C760, &qword_6A40);
  sub_1580();
  sub_6264();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v58);
  *&v1[v10] = sub_6244();
  v11 = OBJC_IVAR___HIDRMServiceFilter_serviceID;
  *&v1[OBJC_IVAR___HIDRMServiceFilter_serviceID] = 0;
  *&v1[OBJC_IVAR___HIDRMServiceFilter_deviceService] = 0;
  v12 = OBJC_IVAR___HIDRMServiceFilter_device;
  *&v1[OBJC_IVAR___HIDRMServiceFilter_device] = 0;
  v57 = OBJC_IVAR___HIDRMServiceFilter_unregistered;
  v58 = v10;
  v1[OBJC_IVAR___HIDRMServiceFilter_unregistered] = 1;
  v13 = OBJC_IVAR___HIDRMServiceFilter_filterState;
  v14 = enum case for HIDRMDevice.FilterState.Filter(_:);
  v15 = sub_6094();
  v16 = *(v15 - 8);
  (*(v16 + 104))(&v2[v13], v14, v15);
  v17 = OBJC_IVAR___HIDRMServiceFilter_deviceState;
  v18 = enum case for HIDRMDevice.DeviceState.Inactive(_:);
  v19 = sub_6074();
  v20 = *(v19 - 8);
  (*(v20 + 104))(&v2[v17], v18, v19);
  *(&v67 + 1) = &type metadata for AppleHIDRM;
  v68 = sub_2CF8();
  LOBYTE(v18) = sub_5FF4();
  sub_5E44(&v66);
  if ((v18 & 1) == 0)
  {

    v29 = v55[1];
    sub_2D4C(*v55);
    v30 = *&v2[v56];
    swift_unknownObjectRelease();

    v31 = *&v2[v12];

    (*(v16 + 8))(&v2[v13], v15);
    (*(v20 + 8))(&v2[v17], v19);
    type metadata accessor for HIDRMServiceFilter();
    v32 = *&stru_20.segname[(swift_isaMask & *v2) + 8];
    v33 = *&stru_20.segname[(swift_isaMask & *v2) + 12];
    swift_deallocPartialClassInstance();
    return;
  }

  v22 = v59;
  v21 = v60;
  v23 = *&v2[v59];
  *&v2[v59] = v60;
  v24 = v21;

  *&v2[v11] = [v24 serviceID];
  v25 = *&v2[v22];
  if (v25)
  {
    v26 = v25;
    v27 = sub_6184();
    v28 = [v26 propertyForKey:v27];

    if (v28)
    {
      sub_6254();
      swift_unknownObjectRelease();
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
    }

    v66 = v64;
    v67 = v65;
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
  }

  sub_2DA8(&v66, &v64);
  if (!*(&v65 + 1))
  {
    sub_5400(&v64, &qword_C7B8, &qword_6A48);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v61 == 0x7265747369676552 && v62 == 0xE800000000000000)
  {
  }

  else
  {
    v34 = sub_62B4();

    if ((v34 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (qword_C960 != -1)
  {
    swift_once();
  }

  v35 = sub_6024();
  sub_2E18(v35, qword_CB80);
  v36 = sub_6004();
  v37 = sub_61E4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "HIDRMOverrideKey is set to Register, bypassing kIOHIDServiceUnregisteredKey and registering by default", v38, 2u);
  }

  v2[v57] = 0;
LABEL_21:
  v39 = type metadata accessor for HIDRMServiceFilter();
  v63.receiver = v2;
  v63.super_class = v39;
  v40 = objc_msgSendSuper2(&v63, "init");
  v41 = qword_C960;
  v42 = v40;
  if (v41 != -1)
  {
    swift_once();
  }

  v43 = sub_6024();
  sub_2E18(v43, qword_CB80);
  v44 = v42;
  v45 = sub_6004();
  v46 = sub_61E4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 134217984;
    v48 = *(&v44->isa + OBJC_IVAR___HIDRMServiceFilter_serviceID);

    *(v47 + 4) = v48;
    _os_log_impl(&dword_0, v45, v46, "%llx: init", v47, 0xCu);
  }

  else
  {

    v45 = v44;
  }

  v49 = OBJC_IVAR___HIDRMServiceFilter_service;
  v50 = *(&v44->isa + OBJC_IVAR___HIDRMServiceFilter_service);
  if (!v50)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  sub_6164();
  [v50 serviceID];
  sub_6124();
  v51 = sub_6144();
  if (v51)
  {
LABEL_30:
    *(&v44->isa + OBJC_IVAR___HIDRMServiceFilter_deviceService) = v51;
    sub_6154();
    v53 = sub_6134();

    sub_5400(&v66, &qword_C7B8, &qword_6A48);
    v54 = *(&v44->isa + OBJC_IVAR___HIDRMServiceFilter_device);
    *(&v44->isa + OBJC_IVAR___HIDRMServiceFilter_device) = v53;

    return;
  }

  v52 = *(&v44->isa + v49);
  if (!v52)
  {
    goto LABEL_33;
  }

  [v52 serviceID];
  sub_6124();
  v51 = sub_6144();
  if (v51)
  {
    goto LABEL_30;
  }

  sub_5400(&v66, &qword_C7B8, &qword_6A48);
}

uint64_t HIDRMServiceFilter.description.getter()
{
  swift_getObjectType();

  return sub_6304();
}

Swift::Void __swiftcall HIDRMServiceFilter.activate()()
{
  if (qword_C960 != -1)
  {
    swift_once();
  }

  v1 = sub_6024();
  sub_2E18(v1, qword_CB80);
  v2 = v0;
  v3 = sub_6004();
  v4 = sub_61E4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *&v2[OBJC_IVAR___HIDRMServiceFilter_service];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&dword_0, v3, v4, "%@: activate", v5, 0xCu);
    sub_5400(v6, &qword_C7C8, &qword_6A50);
  }

  if (*&v2[OBJC_IVAR___HIDRMServiceFilter_device])
  {
    sub_5E90(&qword_C7C0, type metadata accessor for HIDRMServiceFilter);

    sub_60F4();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall HIDRMServiceFilter.cancel()()
{
  if (qword_C960 != -1)
  {
    swift_once();
  }

  v1 = sub_6024();
  sub_2E18(v1, qword_CB80);
  v2 = v0;
  v3 = sub_6004();
  v4 = sub_61E4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v2 + OBJC_IVAR___HIDRMServiceFilter_serviceID);

    _os_log_impl(&dword_0, v3, v4, "%llx: cancel", v5, 0xCu);
  }

  else
  {

    v3 = v2;
  }

  v6 = OBJC_IVAR___HIDRMServiceFilter_device;
  if (*(&v2->isa + OBJC_IVAR___HIDRMServiceFilter_device))
  {
    sub_5E90(&qword_C7C0, type metadata accessor for HIDRMServiceFilter);

    sub_60E4();

    v7 = *(&v2->isa + v6);
    *(&v2->isa + v6) = 0;

    v8 = *(&v2->isa + OBJC_IVAR___HIDRMServiceFilter_service);
    *(&v2->isa + OBJC_IVAR___HIDRMServiceFilter_service) = 0;

    v9 = (v2 + OBJC_IVAR___HIDRMServiceFilter_cancelHandler);
    v10 = *(&v2->isa + OBJC_IVAR___HIDRMServiceFilter_cancelHandler);
    if (v10)
    {
      v11 = v9[1];

      v10(v12);
      sub_2D4C(v10);
      v13 = *v9;
      v14 = v9[1];
      *v9 = 0;
      v9[1] = 0;

      sub_2D4C(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void HIDRMServiceFilter.property(forKey:client:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_6074();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6094();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0xD000000000000012 && 0x8000000000006BF0 == a2 || (sub_62B4() & 1) != 0)
  {
    v58 = a3;
    sub_1538(&qword_C7D0, &qword_6A58);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_6A30;
    *(v16 + 32) = 0x7373616C43;
    *(v16 + 40) = 0xE500000000000000;
    *(v16 + 88) = &type metadata for String;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = 0xD000000000000012;
    *(v16 + 72) = 0x8000000000006A40;
    v57 = sub_5ED8(0, &qword_C7D8, NSMutableDictionary_ptr);
    v17 = sub_61D4();
    v18 = OBJC_IVAR___HIDRMServiceFilter_filterState;
    v19 = v6;
    v20 = v59;
    swift_beginAccess();
    (*(v12 + 16))(v15, v20 + v18, v11);
    sub_6084();
    (*(v12 + 8))(v15, v11);
    v21 = sub_6184();

    v22 = sub_6184();
    [v17 setValue:v21 forKey:v22];

    v23 = OBJC_IVAR___HIDRMServiceFilter_deviceState;
    swift_beginAccess();
    (*(v7 + 16))(v10, v20 + v23, v19);
    sub_6064();
    (*(v7 + 8))(v10, v19);
    v24 = sub_6184();

    v25 = sub_6184();
    [v17 setValue:v24 forKey:v25];

    v26 = OBJC_IVAR___HIDRMServiceFilter_device;
    if (*(v20 + OBJC_IVAR___HIDRMServiceFilter_device))
    {
      v27 = *(v20 + OBJC_IVAR___HIDRMServiceFilter_device);

      sub_60A4();

      v28 = sub_6184();

      v29 = sub_6184();
      [v17 setValue:v28 forKey:v29];

      v30 = *(v20 + v26);
      v31 = v58;
      if (v30)
      {

        sub_6104();

        isa = sub_62F4().super.super.isa;
        v33 = sub_6184();
        [v17 setValue:isa forKey:v33];

        v31[3] = v57;
        *v31 = v17;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_41;
  }

  if ((a1 != 0xD000000000000016 || 0x8000000000006C10 != a2) && (sub_62B4() & 1) == 0)
  {
    if (a1 == 0xD000000000000010 && 0x8000000000006C30 == a2 || (sub_62B4() & 1) != 0)
    {
      v39 = OBJC_IVAR___HIDRMServiceFilter_deviceState;
      v40 = v6;
      v41 = v59;
      swift_beginAccess();
      (*(v7 + 16))(v10, v41 + v39, v40);
      v42 = sub_6064();
      v44 = v43;
      (*(v7 + 8))(v10, v40);
      *(a3 + 24) = &type metadata for String;
      *a3 = v42;
      *(a3 + 8) = v44;
      return;
    }

    if (a1 == 0xD000000000000016 && 0x8000000000006C50 == a2 || (sub_62B4() & 1) != 0)
    {
      if (!*(v59 + OBJC_IVAR___HIDRMServiceFilter_device))
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v45 = *(v59 + OBJC_IVAR___HIDRMServiceFilter_device);

      v46 = sub_60A4();
      v48 = v47;

LABEL_21:
      *(a3 + 24) = &type metadata for String;
      *a3 = v46;
      *(a3 + 8) = v48;
      return;
    }

    if (a1 == 0x7665444D52444948 && a2 == 0xED00004449656369 || (sub_62B4() & 1) != 0)
    {
      if (*(v59 + OBJC_IVAR___HIDRMServiceFilter_device))
      {
        v49 = *(v59 + OBJC_IVAR___HIDRMServiceFilter_device);

        v50 = sub_6104();

        *(a3 + 24) = &type metadata for UInt64;
        *a3 = v50;
        return;
      }

      goto LABEL_42;
    }

    if (a1 == 0x7665444D52444948 && a2 == 0xEF68736148656369 || (sub_62B4() & 1) != 0)
    {
      if (!*(v59 + OBJC_IVAR___HIDRMServiceFilter_device))
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v51 = *(v59 + OBJC_IVAR___HIDRMServiceFilter_device);

      v46 = sub_60D4();
      v48 = v52;

      if (v48)
      {
        goto LABEL_21;
      }

LABEL_32:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }

    if (!kIOHIDServiceUnregisteredKey)
    {
LABEL_44:
      __break(1u);
      return;
    }

    if (sub_6194() == a1 && v53 == a2)
    {
    }

    else
    {
      v54 = sub_62B4();

      if ((v54 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v55 = *(v59 + OBJC_IVAR___HIDRMServiceFilter_unregistered);
    *(a3 + 24) = &type metadata for Bool;
    *a3 = v55;
    return;
  }

  v34 = OBJC_IVAR___HIDRMServiceFilter_filterState;
  v35 = v59;
  swift_beginAccess();
  (*(v12 + 16))(v15, v35 + v34, v11);
  v36 = sub_6084();
  v38 = v37;
  (*(v12 + 8))(v15, v11);
  *(a3 + 24) = &type metadata for String;
  *a3 = v36;
  *(a3 + 8) = v38;
}

unint64_t sub_2CF8()
{
  result = qword_C7B0;
  if (!qword_C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7B0);
  }

  return result;
}

uint64_t sub_2D4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for HIDRMServiceFilter()
{
  result = qword_C9F0;
  if (!qword_C9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1538(&qword_C7B8, &qword_6A48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2E18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void HIDRMServiceFilter.setProperty(_:forKey:client:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v9 = sub_1538(&qword_C7E0, &qword_6A78);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v53 - v12;
  v14 = sub_6074();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v14, v17);
  __chkstk_darwin(v18, v19);
  if (a4)
  {
    v57 = v21;
    v58 = &v53 - v20;
    v22 = a4;
    v23 = sub_6184();
    HasEntitlement = IOHIDEventSystemConnectionHasEntitlement();

    if (!HasEntitlement)
    {
LABEL_41:

      return;
    }

    v56 = v4;
    v25 = a2;
    if (qword_C960 != -1)
    {
      swift_once();
    }

    v26 = sub_6024();
    sub_2E18(v26, qword_CB80);
    v59 = a1;
    sub_2DA8(a1, v62);

    v27 = sub_6004();
    v28 = sub_61E4();

    if (os_log_type_enabled(v27, v28))
    {
      v53 = v15;
      v54 = v14;
      v55 = v22;
      v29 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v29 = 136315394;
      if (v63)
      {
        sub_2DA8(v62, &v60);
        sub_1538(&qword_C7B8, &qword_6A48);
        v30 = sub_61A4();
        v32 = v31;
      }

      else
      {
        v32 = 0xE300000000000000;
        v30 = 7104878;
      }

      sub_5400(v62, &qword_C7B8, &qword_6A48);
      v33 = sub_5334(v30, v32, &v61);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_5334(v25, a3, &v61);
      _os_log_impl(&dword_0, v27, v28, "setProperty:%s forKey:%s", v29, 0x16u);
      swift_arrayDestroy();

      v14 = v54;
      v22 = v55;
      v15 = v53;
    }

    else
    {

      sub_5400(v62, &qword_C7B8, &qword_6A48);
    }

    v34 = v59;
    if (v25 == 0xD000000000000010 && 0x8000000000006C30 == a3 || (sub_62B4() & 1) != 0)
    {
      sub_2DA8(v34, v62);
      if (!v63)
      {
        v35 = &qword_C7B8;
        v36 = &qword_6A48;
        v37 = v62;
        goto LABEL_19;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_20:

        v38 = sub_6004();
        v39 = sub_6204();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v62[0] = swift_slowAlloc();
          *v40 = 136315394;
          *(v40 + 4) = sub_5334(v25, a3, v62);
          *(v40 + 12) = 2080;
          *(v40 + 14) = sub_5334(v25, a3, v62);
          _os_log_impl(&dword_0, v38, v39, "Failed to setProperty:%s forKey:%s", v40, 0x16u);
          swift_arrayDestroy();
        }

        goto LABEL_41;
      }

      sub_6054();
      if ((*(v15 + 48))(v13, 1, v14) == 1)
      {

        v35 = &qword_C7E0;
        v36 = &qword_6A78;
        v37 = v13;
LABEL_19:
        sub_5400(v37, v35, v36);
        goto LABEL_20;
      }

      v45 = v58;
      (*(v15 + 32))(v58, v13, v14);
      if (*&v56[OBJC_IVAR___HIDRMServiceFilter_device])
      {
        v46 = *&v56[OBJC_IVAR___HIDRMServiceFilter_device];

        sub_60B4();

        (*(v15 + 8))(v45, v14);
        goto LABEL_41;
      }
    }

    else
    {
      if ((v25 != 0xD000000000000012 || 0x8000000000006C70 != a3) && (sub_62B4() & 1) == 0)
      {
        if ((v25 != 0xD000000000000011 || 0x8000000000006C90 != a3) && (sub_62B4() & 1) == 0)
        {
          goto LABEL_41;
        }

        v48 = v56;
        v49 = sub_6004();
        v50 = sub_61E4();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 134217984;
          *(v51 + 4) = *&v48[OBJC_IVAR___HIDRMServiceFilter_serviceID];

          _os_log_impl(&dword_0, v49, v50, "Revoking device approval for %llx", v51, 0xCu);
        }

        else
        {

          v49 = v48;
        }

        if (*&v48[OBJC_IVAR___HIDRMServiceFilter_device])
        {
          v52 = v57;
          (*(v15 + 104))(v57, enum case for HIDRMDevice.DeviceState.Denied(_:), v14);

          sub_60B4();

          (*(v15 + 8))(v52, v14);
          goto LABEL_41;
        }

LABEL_45:
        __break(1u);
        return;
      }

      v41 = v56;
      v42 = sub_6004();
      v43 = sub_61E4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 134217984;
        *(v44 + 4) = *&v41[OBJC_IVAR___HIDRMServiceFilter_serviceID];

        _os_log_impl(&dword_0, v42, v43, "Approving device: %llx", v44, 0xCu);
      }

      else
      {

        v42 = v41;
      }

      if (*&v41[OBJC_IVAR___HIDRMServiceFilter_device])
      {
        v47 = *&v41[OBJC_IVAR___HIDRMServiceFilter_device];

        sub_60C4();

        goto LABEL_41;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_45;
  }
}

uint64_t HIDRMServiceFilter.filterEvent(_:)(NSObject *a1)
{
  v2 = v1;
  v4 = sub_6094();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 type]== 1 && [a1 integerValueForField:0x10000]== 65280 && [a1 integerValueForField:65537]== &stru_20.maxprot + 3 || ![a1 type])
  {
    goto LABEL_29;
  }

  if ([a1 type]== 3 && [a1 integerValueForField:196608]== &dword_4 + 3 && [a1 integerValueForField:196609]== &stru_20.filesize + 3)
  {
    if (qword_C960 != -1)
    {
      swift_once();
    }

    v10 = sub_6024();
    sub_2E18(v10, qword_CB80);
    v11 = sub_6004();
    v12 = sub_61F4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "New numlock event, ignoring", v13, 2u);
    }

    HIDWORD(v24) = 1;
  }

  else
  {
    HIDWORD(v24) = 0;
  }

  if (qword_C960 != -1)
  {
    swift_once();
  }

  v14 = sub_6024();
  sub_2E18(v14, qword_CB80);
  a1 = a1;
  v15 = sub_6004();
  v16 = sub_61F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109376;
    *(v17 + 4) = [a1 type];
    *(v17 + 8) = 1024;
    v18 = [a1 integerValueForField:196610]== &dword_0 + 1 && [a1 integerValueForField:196608]== &dword_4 + 3;
    *(v17 + 10) = v18;

    _os_log_impl(&dword_0, v15, v16, "New event with event type: %u and is keyboard down: %{BOOL}d", v17, 0xEu);
  }

  else
  {

    v15 = a1;
  }

  v19 = OBJC_IVAR___HIDRMServiceFilter_filterState;
  swift_beginAccess();
  (*(v5 + 16))(v9, v2 + v19, v4);
  v20 = (*(v5 + 88))(v9, v4);
  if (v20 == enum case for HIDRMDevice.FilterState.Filter(_:))
  {
    return 0;
  }

  if (v20 != enum case for HIDRMDevice.FilterState.Capture(_:))
  {
    if (v20 != enum case for HIDRMDevice.FilterState.Allow(_:))
    {
      goto LABEL_32;
    }

LABEL_29:
    v22 = a1;
    return a1;
  }

  if ((v24 & 0x100000000) != 0)
  {
    return 0;
  }

  if (*(v2 + OBJC_IVAR___HIDRMServiceFilter_device))
  {
    v21 = *(v2 + OBJC_IVAR___HIDRMServiceFilter_device);

    sub_6114();

    return 0;
  }

  __break(1u);
LABEL_32:
  result = sub_6294();
  __break(1u);
  return result;
}

uint64_t HIDRMServiceFilter.setCancelHandler(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___HIDRMServiceFilter_cancelHandler);
  v4 = *(v2 + OBJC_IVAR___HIDRMServiceFilter_cancelHandler);
  v5 = *(v2 + OBJC_IVAR___HIDRMServiceFilter_cancelHandler + 8);
  *v3 = a1;
  v3[1] = a2;

  return sub_2D4C(v4);
}

void HIDRMServiceFilter.setDispatchQueue(_:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HIDRMServiceFilter_queue);
  *(v1 + OBJC_IVAR___HIDRMServiceFilter_queue) = a1;
  v2 = a1;
}

uint64_t HIDRMServiceFilter.setEventDispatcher(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___HIDRMServiceFilter_eventDispatcher);
  *(v1 + OBJC_IVAR___HIDRMServiceFilter_eventDispatcher) = a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t HIDRMServiceFilter.deviceStateUpdate(state:)(uint64_t a1)
{
  v3 = sub_6074();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v7 = *&v1[OBJC_IVAR___HIDRMServiceFilter_queue];
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_5954;
  *(v10 + 24) = v9;
  aBlock[4] = sub_5990;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_4B30;
  aBlock[3] = &unk_8618;
  v11 = _Block_copy(aBlock);
  v12 = v7;
  v13 = v1;

  dispatch_sync(v12, v11);

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_4204(char *a1, char *a2)
{
  v4 = sub_6074();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = __chkstk_darwin(v4, v7);
  v92 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8, v10);
  v93 = &v84 - v12;
  v14 = __chkstk_darwin(v11, v13);
  v94 = &v84 - v15;
  __chkstk_darwin(v14, v16);
  v18 = &v84 - v17;
  v19 = OBJC_IVAR___HIDRMServiceFilter_deviceState;
  swift_beginAccess();
  v20 = a1;
  v96 = v5[2];
  v96(v18, &a1[v19], v4);
  sub_5E90(&qword_C8D8, &type metadata accessor for HIDRMDevice.DeviceState);
  LOBYTE(a1) = sub_6174();
  v95 = v5[1];
  v95(v18, v4);
  if (a1)
  {
    return;
  }

  v90 = v5;
  if (qword_C960 != -1)
  {
    swift_once();
  }

  v21 = sub_6024();
  v22 = sub_2E18(v21, qword_CB80);
  v23 = v94;
  v96(v94, a2, v4);
  v24 = v20;
  v88 = v22;
  v25 = sub_6004();
  v89 = sub_6214();
  v26 = os_log_type_enabled(v25, v89);
  v91 = v24;
  if (v26)
  {
    v86 = v25;
    v87 = a2;
    v27 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v99[0] = v85;
    *v27 = 134218498;
    if (*&v24[OBJC_IVAR___HIDRMServiceFilter_device])
    {
      v28 = *&v24[OBJC_IVAR___HIDRMServiceFilter_device];

      v29 = sub_6104();
    }

    else
    {
      v29 = 0;
    }

    v31 = v96;
    *(v27 + 4) = v29;

    *(v27 + 12) = 2080;
    v31(v18, &v20[v19], v4);
    v32 = sub_6064();
    v34 = v33;
    v35 = v95;
    v95(v18, v4);
    v36 = sub_5334(v32, v34, v99);

    *(v27 + 14) = v36;
    *(v27 + 22) = 2080;
    v37 = v94;
    v38 = sub_6064();
    v84 = v27;
    v39 = v19;
    v40 = v38;
    v42 = v41;
    v35(v37, v4);
    v30 = v96;
    v43 = v40;
    v19 = v39;
    v44 = sub_5334(v43, v42, v99);

    v45 = v84;
    *(v84 + 24) = v44;
    v46 = v86;
    _os_log_impl(&dword_0, v86, v89, "HIDRM Device: %llx State: %s -> %s", v45, 0x20u);
    swift_arrayDestroy();

    v30(v18, v87, v4);
  }

  else
  {

    v95(v23, v4);
    v30 = v96;
    v96(v18, a2, v4);
  }

  swift_beginAccess();
  v47 = v30;
  v48 = v90;
  (v90[5])(&v20[v19], v18, v4);
  swift_endAccess();
  v49 = v93;
  v47(v93, &v20[v19], v4);
  v50 = v92;
  (v48[13])(v92, enum case for HIDRMDevice.DeviceState.Allowed(_:), v4);
  sub_5E90(&qword_C8E0, &type metadata accessor for HIDRMDevice.DeviceState);
  sub_61C4();
  sub_61C4();
  if (v99[0] == v97 && v99[1] == v98)
  {
    v51 = v95;
    v95(v50, v4);
    v51(v49, v4);

    v52 = v91;
  }

  else
  {
    v53 = sub_62B4();
    v54 = v50;
    v55 = v95;
    v95(v54, v4);
    v55(v49, v4);

    v52 = v91;
    if ((v53 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v56 = OBJC_IVAR___HIDRMServiceFilter_unregistered;
  if (v52[OBJC_IVAR___HIDRMServiceFilter_unregistered] == 1)
  {
    v57 = OBJC_IVAR___HIDRMServiceFilter_service;
    if (*&v52[OBJC_IVAR___HIDRMServiceFilter_service])
    {
      v58 = v52;
      v59 = sub_6004();
      v60 = sub_61E4();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 134218240;
        *(v61 + 4) = *(v58 + OBJC_IVAR___HIDRMServiceFilter_serviceID);
        *(v61 + 12) = 2048;
        if (*(&v58->isa + OBJC_IVAR___HIDRMServiceFilter_device))
        {
          v62 = *(&v58->isa + OBJC_IVAR___HIDRMServiceFilter_device);

          v63 = sub_6104();
        }

        else
        {
          v63 = 0;
        }

        *(v61 + 14) = v63;

        _os_log_impl(&dword_0, v59, v60, "Registering %llx for device: %llx with system", v61, 0x16u);

        v52 = v91;
      }

      else
      {

        v59 = v58;
      }

      v52[v56] = 0;
      v64 = *&v52[v57];
      if (!v64)
      {
        goto LABEL_38;
      }

      [v64 registerWithSystem];
      v65 = *&v52[v57];
      if (!v65)
      {
LABEL_39:
        __break(1u);
        return;
      }

      v66 = v65;
      v67 = sub_6184();
      v68 = sub_6184();
      [v66 setProperty:v67 forKey:v68];
    }
  }

LABEL_25:
  sub_1538(&qword_C7D0, &qword_6A58);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_6A30;
  *(v69 + 56) = &type metadata for String;
  *(v69 + 32) = 0xD000000000000010;
  *(v69 + 40) = 0x8000000000006C30;
  v70 = sub_6064();
  *(v69 + 88) = &type metadata for String;
  *(v69 + 64) = v70;
  *(v69 + 72) = v71;
  sub_5ED8(0, &qword_C8E8, NSDictionary_ptr);
  v72 = sub_61D4();
  v73 = IOCFSerialize(v72, 0);
  CFDataGetLength(v73);
  v74 = swift_slowAlloc();
  BytePtr = CFDataGetBytePtr(v73);
  if (!BytePtr)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v76 = BytePtr;
  Length = CFDataGetLength(v73);
  if (v74 != v76 || v74 >= &v76[Length])
  {
    memmove(v74, v76, Length);
  }

  v78 = objc_opt_self();
  v79 = mach_absolute_time();
  v80 = CFDataGetLength(v73);
  if ((v80 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (HIDWORD(v80))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  LODWORD(v83) = 0;
  v81 = [v78 vendorDefinedEvent:v79 usagePage:65280 usage:91 version:0 data:v74 length:v80 options:v83];
  v82 = *&v52[OBJC_IVAR___HIDRMServiceFilter_eventDispatcher];
  if (v82)
  {
    [v82 dispatchEvent:v81];
  }
}

uint64_t HIDRMServiceFilter.deviceFilterStateUpdate(state:)(uint64_t a1)
{
  v3 = sub_6094();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v7 = *&v1[OBJC_IVAR___HIDRMServiceFilter_queue];
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_5AB4;
  *(v10 + 24) = v9;
  aBlock[4] = sub_5FEC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_4B30;
  aBlock[3] = &unk_8690;
  v11 = _Block_copy(aBlock);
  v12 = v7;
  v13 = v1;

  dispatch_sync(v12, v11);

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4D84(void *a1, uint64_t a2)
{
  v4 = sub_6094();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v38 - v12;
  if (qword_C960 != -1)
  {
    swift_once();
  }

  v14 = sub_6024();
  sub_2E18(v14, qword_CB80);
  v15 = *(v5 + 16);
  v15(v13, a2, v4);
  v16 = a1;
  v17 = sub_6004();
  v45 = sub_6214();
  v18 = &HIDRMServiceFilter__prots;
  if (os_log_type_enabled(v17, v45))
  {
    v40 = v17;
    v41 = v13;
    v43 = v15;
    v19 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46[0] = v39;
    *v19 = 134218498;
    v20 = *&v16[OBJC_IVAR___HIDRMServiceFilter_device];
    v44 = a2;
    if (v20)
    {

      v21 = sub_6104();
    }

    else
    {
      v21 = 0;
    }

    *(v19 + 4) = v21;

    *(v19 + 12) = 2080;
    v22 = OBJC_IVAR___HIDRMServiceFilter_filterState;
    swift_beginAccess();
    v23 = &v16[v22];
    v42 = v16;
    v24 = v43;
    v38 = v5 + 16;
    v43(v10, v23, v4);
    v25 = sub_6084();
    v27 = v26;
    v28 = *(v5 + 8);
    v28(v10, v4);
    v29 = sub_5334(v25, v27, v46);

    *(v19 + 14) = v29;
    *(v19 + 22) = 2080;
    v30 = v41;
    v31 = sub_6084();
    v33 = v32;
    v28(v30, v4);
    v15 = v24;
    v16 = v42;
    v34 = sub_5334(v31, v33, v46);

    *(v19 + 24) = v34;
    v18 = &HIDRMServiceFilter__prots;
    v35 = v40;
    _os_log_impl(&dword_0, v40, v45, "HIDRM Device: %llx Filter State: %s -> %s", v19, 0x20u);
    swift_arrayDestroy();

    a2 = v44;
  }

  else
  {

    (*(v5 + 8))(v13, v4);
  }

  v15(v10, a2, v4);
  count = v18[371].count;
  swift_beginAccess();
  (*(v5 + 40))(&v16[count], v10, v4);
  return swift_endAccess();
}

id HIDRMServiceFilter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HIDRMServiceFilter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HIDRMServiceFilter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_5334(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_5460(v11, 0, 0, 1, a1, a2);
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
    sub_5F20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_5E44(v11);
  return v7;
}

uint64_t sub_5400(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1538(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_5460(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_556C(a5, a6);
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
    result = sub_6284();
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

char *sub_556C(uint64_t a1, unint64_t a2)
{
  v4 = sub_55B8(a1, a2);
  sub_56E8(&off_85A0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_55B8(uint64_t a1, unint64_t a2)
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

  v6 = sub_57D4(v5, 0);
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

  result = sub_6284();
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
        v10 = sub_61B4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_57D4(v10, 0);
        result = sub_6274();
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

uint64_t sub_56E8(uint64_t result)
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

  result = sub_5848(result, v12, 1, v3);
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

void *sub_57D4(uint64_t a1, uint64_t a2)
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

  sub_1538(&unk_C8F0, qword_6BB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_5848(char *result, int64_t a2, char a3, char *a4)
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
    sub_1538(&unk_C8F0, qword_6BB8);
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

uint64_t sub_5990()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_59B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_59E8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_5AE0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_5B68()
{
  result = sub_6094();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_6074();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleHIDRM(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AppleHIDRM(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_5D64()
{
  result = qword_C8D0;
  if (!qword_C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8D0);
  }

  return result;
}

uint64_t sub_5DB8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_5E00(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_5E44(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_5E90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5ED8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_5F20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_5F80(uint64_t a1, uint64_t *a2)
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
uint64_t sub_1000013E8()
{
  v0 = sub_100005D5C();
  sub_100005A30(v0, qword_10000C538);
  sub_10000589C(v0, qword_10000C538);
  return sub_100005D4C();
}

id sub_1000014A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100001500(void *a1, void (*a2)(id, void))
{
  swift_getObjectType();
  if (qword_10000C530 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v3 = sub_100005D5C();
    sub_10000589C(v3, qword_10000C538);
    v4 = a1;
    v5 = sub_100005D3C();
    v6 = sub_100005E2C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v59[0] = v9;
      *v7 = 136446466;
      v10 = sub_100005FCC();
      v12 = sub_100002FA0(v10, v11, v59);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2114;
      isa = [v4 automatic];
      if (!isa)
      {
        sub_100005AD4(0, &qword_10000C480, NSNumber_ptr);
        isa = sub_100005E6C(2).super.super.isa;
      }

      *(v7 + 14) = isa;
      *v8 = isa;
      _os_log_impl(&_mh_execute_header, v5, v6, "(%{public}s) provideDeviceOptionsCollection|IsAutomatic : %{public}@", v7, 0x16u);
      sub_1000058D4(v8);

      sub_100005984(v9);
    }

    v14 = sub_100001D30();
    v15 = v14;
    if (v14 >> 62)
    {
      v16 = sub_100005F2C();
      if (!v16)
      {
LABEL_33:

        v49 = objc_allocWithZone(INObjectCollection);
        sub_100005AD4(0, &qword_10000C498, IntentDevice_ptr);
        v50 = sub_100005DBC().super.isa;

        v51 = [v49 initWithItems:v50];

        v52 = v51;
        a2(v51, 0);

        return;
      }
    }

    else
    {
      v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    v58[0] = &_swiftEmptyArrayStorage;
    a1 = v58;
    sub_100005EFC();
    if (v16 < 0)
    {
      break;
    }

    v17 = 0;
    v56 = v15;
    v57 = v15 & 0xC000000000000001;
    v54 = v15 & 0xFFFFFFFFFFFFFF8;
    v55 = v16;
    while (1)
    {
      v29 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v57)
      {
        v30 = sub_100005EAC();
      }

      else
      {
        if (v17 >= *(v54 + 16))
        {
          goto LABEL_30;
        }

        v30 = *(v15 + 8 * v17 + 32);
      }

      v31 = v30;
      v32 = [v30 name];
      if (v32)
      {
        v33 = v32;
        sub_100005D7C();
      }

      v34 = [v31 identifier];
      if (v34)
      {
        v35 = v34;
        sub_100005D7C();
        v37 = v36;

        if (v37)
        {
          v38 = sub_100005D6C();
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        v38 = 0;
      }

      v39 = objc_allocWithZone(IntentDevice);
      v40 = sub_100005D6C();

      v41 = [v39 initWithIdentifier:v38 displayString:v40];

      sub_100005AD4(0, &qword_10000C480, NSNumber_ptr);
      v42 = sub_100005E5C(0).super.super.isa;
      [v41 setIsSynthesized:v42];

      v43 = [v31 identifier];
      if (v43)
      {
        v44 = v43;
        v45 = sub_100005D7C();
        v47 = v46;

        v59[0] = v45;
        v59[1] = v47;
        v58[1] = 0x69736568746E7973;
        v58[2] = 0xEB0000000064657ALL;
        sub_100005B1C();
        LOBYTE(v44) = sub_100005E8C();

        if (v44)
        {
          v48 = sub_100005E5C(1).super.super.isa;
          [v41 setIsSynthesized:v48];
        }
      }

      v18 = &IntentHandler;
      v19 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v31, "isLowBattery")}];
      [v41 setIsLowBattery:v19];

      v20 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v31, "isLowPowerModeActive")}];
      [v41 setIsLowPowerModeActive:v20];

      v21 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v31, "percentCharge")}];
      [v41 setPercentCharge:v21];

      LOBYTE(v59[0]) = 0;
      v22 = [v31 batteryWidgetGlyphName:v59];
      if (!v22)
      {
        sub_100005D7C();
        v22 = sub_100005D6C();
        v18 = &IntentHandler;
      }

      [v41 setSystemImageName:v22];

      v23 = [objc_allocWithZone(NSNumber) *&v18[6].ivar:LOBYTE(v59[0]) base:?size];
      [v41 setIsCustomImage:v23];

      v24 = [v31 accessoryIdentifier];
      [v41 setAccessoryIdentifier:v24];

      v25 = [objc_allocWithZone(NSNumber) *&v18[6].ivar:objc_msgSend(v31 base:"isInternal")size];
      [v41 setIsInternal:v25];

      v26 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v31, "parts")}];
      [v41 setParts:v26];

      v27 = [objc_allocWithZone(NSNumber) *&v18[6].ivar:objc_msgSend(v31 base:"isCharging")size];
      [v41 setIsCharging:v27];

      sub_100005EDC();
      v28 = *(v58[0] + 16);
      sub_100005F0C();
      sub_100005F1C();
      a1 = v58;
      sub_100005EEC();
      ++v17;
      v15 = v56;
      if (v29 == v55)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  __break(1u);
}

uint64_t sub_100001D30()
{
  swift_getObjectType();
  v0 = &_swiftEmptyArrayStorage;
  v1 = sub_100005B84(&_swiftEmptyArrayStorage);
  v2 = [objc_allocWithZone(BCBatteryDeviceController) init];
  v3 = [v2 connectedDevices];

  if (!v3)
  {
    goto LABEL_68;
  }

  sub_100005AD4(0, &qword_10000C478, BCBatteryDevice_ptr);
  v4 = sub_100005DCC();

  v61[0] = &_swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100005F2C())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_100005EAC();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (([v8 isInternal] & 1) == 0)
      {
        v11 = [v9 accessoryIdentifier];
        if (!v11)
        {

          goto LABEL_7;
        }
      }

      sub_100005EDC();
      v7 = *(v61[0] + 16);
      sub_100005F0C();
      sub_100005F1C();
      v0 = v61;
      sub_100005EEC();
LABEL_7:
      ++v6;
      if (v10 == i)
      {
        isUniquelyReferenced_nonNull_native = v61[0];
        v0 = &_swiftEmptyArrayStorage;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  isUniquelyReferenced_nonNull_native = v0;
LABEL_21:

  v63 = v0;
  if (isUniquelyReferenced_nonNull_native < 0 || (isUniquelyReferenced_nonNull_native & 0x4000000000000000) != 0)
  {
LABEL_60:
    v13 = sub_100005F2C();
    if (v13)
    {
      goto LABEL_24;
    }

LABEL_61:

    v61[0] = sub_1000055F0(v40);
    sub_100002D70(v61);
    v62 = v61[0];
    sub_100002CD0(&v62);

    if (qword_10000C530 != -1)
    {
      swift_once();
    }

    v41 = sub_100005D5C();
    sub_10000589C(v41, qword_10000C538);

    v42 = sub_100005D3C();
    v43 = sub_100005E1C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v44 = 136315650;
      v45 = sub_100005FCC();
      v47 = sub_100002FA0(v45, v46, v61);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2080;
      v48 = sub_100005DDC();
      v50 = v49;

      v51 = sub_100002FA0(v48, v50, v61);

      *(v44 + 14) = v51;
      *(v44 + 22) = 2080;
      swift_beginAccess();

      v52 = sub_100005DDC();
      v54 = v53;

      v55 = sub_100002FA0(v52, v54, v61);

      *(v44 + 24) = v55;
      _os_log_impl(&_mh_execute_header, v42, v43, "(%s) connectedDevices: %s, preprocessedConnectedDevices: %s", v44, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    swift_beginAccess();
    v56 = v62;

    return v56;
  }

  v13 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v13)
  {
    goto LABEL_61;
  }

LABEL_24:
  v14 = 0;
  v15 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v60 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v58 = isUniquelyReferenced_nonNull_native;
  v59 = v13;
  while (1)
  {
    if (v15)
    {
      v16 = sub_100005EAC();
    }

    else
    {
      if (v14 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        goto LABEL_57;
      }

      v16 = *(isUniquelyReferenced_nonNull_native + 8 * v14 + 32);
    }

    v17 = v16;
    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if ((sub_100005E3C() & 1) == 0 && (sub_100005E4C() & 1) == 0)
    {
      v33 = v17;
      sub_100005DAC();
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v35 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100005DEC();
        v13 = v59;
      }

      sub_100005E0C();

      goto LABEL_26;
    }

    v19 = [v17 accessoryIdentifier];
    if (v19)
    {
      break;
    }

LABEL_26:
    ++v14;
    if (v18 == v13)
    {
      goto LABEL_61;
    }
  }

  v20 = v19;
  v21 = sub_100005D7C();
  v23 = v22;

  if (v1[2])
  {
    sub_100003548(v21, v23);
    if (v24)
    {

      v15 = v60;
      goto LABEL_26;
    }
  }

  if ([v17 synthesizedRepresentativeDevice])
  {
    sub_100005DAC();
    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v34 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_100005DEC();
    }

    sub_100005E0C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61[0] = v1;
    v26 = sub_100003548(v21, v23);
    v27 = v1[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_58;
    }

    v30 = v25;
    if (v1[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        isUniquelyReferenced_nonNull_native = v58;
        if ((v25 & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        sub_100005424();
        isUniquelyReferenced_nonNull_native = v58;
        if ((v30 & 1) == 0)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      sub_1000050CC(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_100003548(v21, v23);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_69;
      }

      v26 = v31;
      isUniquelyReferenced_nonNull_native = v58;
      if ((v30 & 1) == 0)
      {
LABEL_53:
        v1 = v61[0];
        *(v61[0] + 8 * (v26 >> 6) + 64) |= 1 << v26;
        v36 = (v1[6] + 16 * v26);
        *v36 = v21;
        v36[1] = v23;
        *(v1[7] + v26) = 1;

        v37 = v1[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_59;
        }

        v1[2] = v39;
        goto LABEL_55;
      }
    }

    v1 = v61[0];
    *(*(v61[0] + 56) + v26) = 1;

LABEL_55:
    v13 = v59;
    v15 = v60;
    goto LABEL_26;
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  sub_100005F9C();
  __break(1u);

  __break(1u);
  return result;
}

void sub_10000252C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_100005D2C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_10000259C(void *a1)
{
  swift_getObjectType();
  if (qword_10000C530 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D5C();
  sub_10000589C(v2, qword_10000C538);
  v3 = a1;
  v4 = sub_100005D3C();
  v5 = sub_100005E2C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v39 = v8;
    *v6 = 136446466;
    v9 = sub_100005FCC();
    v11 = sub_100002FA0(v9, v10, &v39);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2114;
    isa = [v3 automatic];
    if (!isa)
    {
      sub_100005AD4(0, &qword_10000C480, NSNumber_ptr);
      isa = sub_100005E6C(2).super.super.isa;
    }

    *(v6 + 14) = isa;
    *v7 = isa;
    _os_log_impl(&_mh_execute_header, v4, v5, "(%{public}s) DefaultDevice|IsAutomatic : %{public}@", v6, 0x16u);
    sub_1000058D4(v7);

    sub_100005984(v8);
  }

  v13 = [objc_allocWithZone(BCBatteryDeviceController) init];
  v14 = [v13 connectedDevices];

  if (!v14)
  {
LABEL_28:
    __break(1u);
  }

  sub_100005AD4(0, &qword_10000C478, BCBatteryDevice_ptr);
  v15 = sub_100005DCC();

  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_24:

    return 0;
  }

  if (!sub_100005F2C())
  {
    goto LABEL_24;
  }

LABEL_10:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = sub_100005EAC();
    goto LABEL_13;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_28;
  }

  v16 = *(v15 + 32);
LABEL_13:
  v17 = v16;

  v18 = [v17 name];
  if (v18)
  {
    v19 = v18;
    sub_100005D7C();
  }

  v20 = [v17 identifier];
  if (v20)
  {
    v21 = v20;
    sub_100005D7C();
    v23 = v22;

    if (v23)
    {
      v24 = sub_100005D6C();
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = objc_allocWithZone(IntentDevice);
  v26 = sub_100005D6C();

  v27 = [v25 initWithIdentifier:v24 displayString:v26];

  sub_100005AD4(0, &qword_10000C480, NSNumber_ptr);
  v28 = sub_100005E5C(0).super.super.isa;
  [v27 setIsSynthesized:v28];

  v29 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v17, "isLowBattery")}];
  [v27 setIsLowBattery:v29];

  v30 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v17, "isLowPowerModeActive")}];
  [v27 setIsLowPowerModeActive:v30];

  v31 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v17, "percentCharge")}];
  [v27 setPercentCharge:v31];

  LOBYTE(v39) = 0;
  v32 = [v17 batteryWidgetGlyphName:&v39];
  if (!v32)
  {
    sub_100005D7C();
    v32 = sub_100005D6C();
  }

  [v27 setSystemImageName:v32];

  v33 = [objc_allocWithZone(NSNumber) initWithBool:v39];
  [v27 setIsCustomImage:v33];

  v34 = [v17 accessoryIdentifier];
  [v27 setAccessoryIdentifier:v34];

  v35 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v17, "isInternal")}];
  [v27 setIsInternal:v35];

  v36 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v17, "parts")}];
  [v27 setParts:v36];

  v37 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v17, "isCharging")}];
  [v27 setIsCharging:v37];

  return v27;
}

Swift::Int sub_100002CD0(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_10000558C(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_1000035C0(v5, sub_100003978, sub_1000036E4);
  *a1 = v2;
  return result;
}

uint64_t sub_100002D70(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100005B70(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1000035C0(v6, sub_100004034, sub_1000037E0);
  return sub_100005EEC();
}

char *sub_100002E14(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000593C(&qword_10000C4B0, &qword_1000065B8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100002F18(uint64_t a1, uint64_t a2)
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

  sub_10000593C(&qword_10000C4C8, qword_1000065C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_100002FA0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000306C(v11, 0, 0, 1, a1, a2);
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
    sub_1000059D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005984(v11);
  return v7;
}

unint64_t sub_10000306C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003178(a5, a6);
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
    result = sub_100005ECC();
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

char *sub_100003178(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000031C4(a1, a2);
  sub_1000032F4(&off_100008450);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000031C4(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000033E0(v5, 0);
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

  result = sub_100005ECC();
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
        v10 = sub_100005D9C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000033E0(v10, 0);
        result = sub_100005E9C();
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

uint64_t sub_1000032F4(uint64_t result)
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

  result = sub_100003454(result, v12, 1, v3);
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

void *sub_1000033E0(uint64_t a1, uint64_t a2)
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

  sub_10000593C(&qword_10000C490, &qword_1000065A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003454(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000593C(&qword_10000C490, &qword_1000065A8);
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

unint64_t sub_100003548(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100005FAC();
  sub_100005D8C();
  v6 = sub_100005FBC();

  return sub_10000536C(a1, a2, v6);
}

Swift::Int sub_1000035C0(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_100005F7C(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100005AD4(0, &qword_10000C478, BCBatteryDevice_ptr);
        v10 = sub_100005DFC();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_1000036E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_6:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v17 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = v8;
      v12 = v10;
      if (![v11 isInternal])
      {

LABEL_5:
        ++v4;
        v6 = v17 + 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v13 = [v12 isInternal];

      if (v13)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1000037E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
    v6 = &IntentHandler;
LABEL_6:
    v21 = a3;
    v7 = *(v22 + 8 * a3);
    v19 = v5;
    v20 = v4;
    while (1)
    {
      v8 = *v4;
      v9 = v7;
      v10 = v8;
      v11 = [v9 v6[5].base_prots];
      if (!v11)
      {
        break;
      }

      v12 = v11;
      sub_100005D7C();

      v13 = [v10 v6[5].base_prots];
      if (!v13)
      {

LABEL_5:
        a3 = v21 + 1;
        v4 = v20 + 8;
        v5 = v19 - 1;
        if (v21 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v14 = v13;
      sub_100005D7C();

      sub_100005B1C();
      v15 = sub_100005E7C();

      v6 = &IntentHandler;

      if (v15 != -1)
      {
        goto LABEL_5;
      }

      if (!v22)
      {
        __break(1u);
        return;
      }

      v16 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v16;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    goto LABEL_5;
  }
}

void sub_100003978(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_4:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_131:
      v9 = sub_1000050B8(v9);
    }

    v11 = *(v9 + 2);
    if (v11 >= 2)
    {
      do
      {
        v12 = *v6;
        if (!*v6)
        {
          goto LABEL_135;
        }

        v6 = (v11 - 1);
        v13 = *&v9[16 * v11];
        v14 = *&v9[16 * v11 + 24];
        sub_100004924((v12 + 8 * v13), (v12 + 8 * *&v9[16 * v11 + 16]), (v12 + 8 * v14), v7);
        if (v5)
        {
          break;
        }

        if (v14 < v13)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000050B8(v9);
        }

        if (v11 - 2 >= *(v9 + 2))
        {
          goto LABEL_125;
        }

        v15 = &v9[16 * v11];
        *v15 = v13;
        *(v15 + 1) = v14;
        sub_10000502C(v11 - 1);
        v11 = *(v9 + 2);
        v6 = a3;
      }

      while (v11 > 1);
    }

LABEL_109:

    return;
  }

  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  v10 = &IntentHandler;
  while (1)
  {
    v16 = v8;
    v17 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v18 = *v6;
      v19 = *(*v6 + 8 * v17);
      v98 = v8;
      v20 = *(*v6 + 8 * v8);
      v21 = v19;
      v22 = v20;
      if ([v21 v10[7].base_meths])
      {
        v23 = [v22 v10[7].base_meths];

        v103 = v23 ^ 1;
        v10 = &IntentHandler;
      }

      else
      {

        v103 = 0;
      }

      v16 = v98;
      v17 = v98 + 2;
      if (v98 + 2 < v7)
      {
        v24 = (v18 + 8 * v98 + 16);
        do
        {
          v27 = *(v24 - 1);
          v28 = *v24;
          v29 = v27;
          if ([v28 v10[7].base_meths])
          {
            v25 = [v29 v10[7].base_meths];

            v26 = v103 == v25;
            v10 = &IntentHandler;
            v6 = a3;
            if (v26)
            {
              goto LABEL_28;
            }
          }

          else
          {

            v6 = a3;
            if (v103)
            {
              v16 = v98;
              goto LABEL_30;
            }
          }

          ++v17;
          ++v24;
        }

        while (v7 != v17);
        v17 = v7;
LABEL_28:
        v16 = v98;
      }

      if (v103)
      {
LABEL_30:
        if (v17 < v16)
        {
          goto LABEL_128;
        }

        if (v16 < v17)
        {
          v30 = 8 * v17 - 8;
          v31 = 8 * v16;
          v32 = v17;
          v33 = v16;
          do
          {
            if (v33 != --v17)
            {
              v34 = *v6;
              if (!*v6)
              {
                goto LABEL_134;
              }

              v35 = *(v34 + v31);
              *(v34 + v31) = *(v34 + v30);
              *(v34 + v30) = v35;
            }

            ++v33;
            v30 -= 8;
            v31 += 8;
          }

          while (v33 < v17);
          v17 = v32;
        }
      }
    }

    v36 = v6[1];
    if (v17 < v36)
    {
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_127;
      }

      if (v17 - v16 < a4)
      {
        v37 = v16 + a4;
        if (__OFADD__(v16, a4))
        {
          goto LABEL_129;
        }

        if (v37 >= v36)
        {
          v37 = v6[1];
        }

        if (v37 < v16)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (v17 != v37)
        {
          break;
        }
      }
    }

    if (v17 < v16)
    {
      goto LABEL_126;
    }

LABEL_58:
    v105 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100002E14(0, *(v9 + 2) + 1, 1, v9);
    }

    v50 = *(v9 + 2);
    v49 = *(v9 + 3);
    v51 = v50 + 1;
    v8 = v105;
    if (v50 >= v49 >> 1)
    {
      v95 = sub_100002E14((v49 > 1), v50 + 1, 1, v9);
      v8 = v105;
      v9 = v95;
    }

    *(v9 + 2) = v51;
    v52 = &v9[16 * v50];
    *(v52 + 4) = v16;
    *(v52 + 5) = v8;
    v53 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (v50)
    {
      while (1)
      {
        v54 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v55 = *(v9 + 4);
          v56 = *(v9 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_77:
          if (v58)
          {
            goto LABEL_115;
          }

          v71 = &v9[16 * v51];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_118;
          }

          v77 = &v9[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_122;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v51 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v81 = &v9[16 * v51];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_91:
        if (v76)
        {
          goto LABEL_117;
        }

        v84 = &v9[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_120;
        }

        if (v87 < v75)
        {
          v8 = v105;
          goto LABEL_15;
        }

LABEL_98:
        v92 = v54 - 1;
        if (v54 - 1 >= v51)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*v6)
        {
          goto LABEL_133;
        }

        v93 = *&v9[16 * v92 + 32];
        v7 = *&v9[16 * v54 + 40];
        sub_100004924((*v6 + 8 * v93), (*v6 + 8 * *&v9[16 * v54 + 32]), (*v6 + 8 * v7), v53);
        if (v5)
        {
          goto LABEL_109;
        }

        if (v7 < v93)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000050B8(v9);
        }

        if (v92 >= *(v9 + 2))
        {
          goto LABEL_112;
        }

        v94 = &v9[16 * v92];
        *(v94 + 4) = v93;
        *(v94 + 5) = v7;
        sub_10000502C(v54);
        v51 = *(v9 + 2);
        v8 = v105;
        if (v51 <= 1)
        {
          goto LABEL_15;
        }
      }

      v59 = &v9[16 * v51 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_113;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_114;
      }

      v66 = &v9[16 * v51];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_116;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_119;
      }

      if (v70 >= v62)
      {
        v88 = &v9[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_123;
        }

        if (v57 < v91)
        {
          v54 = v51 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_77;
    }

LABEL_15:
    v7 = v6[1];
    v10 = &IntentHandler;
    if (v8 >= v7)
    {
      goto LABEL_4;
    }
  }

  v96 = v5;
  v38 = *v6;
  v39 = *v6 + 8 * v17 - 8;
  v99 = v16;
  v40 = v16 - v17;
  v101 = v37;
LABEL_49:
  v104 = v17;
  v41 = *(v38 + 8 * v17);
  v42 = v40;
  v7 = v39;
  while (1)
  {
    v43 = *v7;
    v44 = v41;
    v45 = v43;
    if (![v44 v10[7].base_meths])
    {

LABEL_48:
      v17 = v104 + 1;
      v39 += 8;
      --v40;
      if (v104 + 1 != v101)
      {
        goto LABEL_49;
      }

      v17 = v101;
      v5 = v96;
      v6 = a3;
      v16 = v99;
      if (v101 < v99)
      {
        goto LABEL_126;
      }

      goto LABEL_58;
    }

    v46 = [v45 v10[7].base_meths];

    if (v46)
    {
      v10 = &IntentHandler;
      goto LABEL_48;
    }

    if (!v38)
    {
      break;
    }

    v47 = *v7;
    v41 = *(v7 + 8);
    *v7 = v41;
    *(v7 + 8) = v47;
    v7 -= 8;
    v48 = __CFADD__(v42++, 1);
    v10 = &IntentHandler;
    if (v48)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
}

void sub_100004034(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v7 = v5;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = &_swiftEmptyArrayStorage;
LABEL_112:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_153;
    }

    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v94 = v4;
    }

    else
    {
LABEL_147:
      v94 = sub_1000050B8(v4);
    }

    v4 = *(v94 + 2);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v95 = *&v94[16 * v4];
        v96 = v94;
        v97 = *&v94[16 * v4 + 24];
        sub_100004BFC((*a3 + 8 * v95), (*a3 + 8 * *&v94[16 * v4 + 16]), (*a3 + 8 * v97), v6);
        if (v7)
        {
          goto LABEL_123;
        }

        if (v97 < v95)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_1000050B8(v96);
        }

        if (v4 - 2 >= *(v96 + 2))
        {
          goto LABEL_141;
        }

        v98 = &v96[16 * v4];
        *v98 = v95;
        *(v98 + 1) = v97;
        sub_10000502C(v4 - 1);
        v94 = v96;
        v4 = *(v96 + 2);
        if (v4 <= 1)
        {
          goto LABEL_123;
        }
      }

      goto LABEL_151;
    }

LABEL_123:

    return;
  }

  v9 = 0;
  v10 = &_swiftEmptyArrayStorage;
  v11 = &IntentHandler;
  while (1)
  {
    v103 = v7;
    v104 = v9;
    v12 = v9;
    v7 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v100 = v10;
      v4 = *a3;
      v13 = *(*a3 + 8 * v9);
      v14 = *(*a3 + 8 * v7);
      v15 = v13;
      v16 = [v14 v11[5].base_prots];
      if (v16)
      {
        v6 = v16;
        sub_100005D7C();
        v18 = v17;

        v19 = [v15 v11[5].base_prots];
        if (v19)
        {
          v20 = v19;
          sub_100005D7C();

          v6 = v18;
          sub_100005B1C();
          v21 = sub_100005E7C();

          v22 = v21 == -1;
          if (v103)
          {
            goto LABEL_125;
          }
        }

        else
        {

          v22 = 0;
          if (v103)
          {
LABEL_125:

            return;
          }
        }
      }

      else
      {
        v22 = 0;
        if (v103)
        {
          goto LABEL_125;
        }
      }

      v7 = v104 + 2;
      if (v104 + 2 < v8)
      {
        v4 += 8 * v104 + 16;
        do
        {
          v23 = *(v4 - 8);
          v24 = *v4;
          v25 = v23;
          v26 = [v24 v11[5].base_prots];
          if (v26)
          {
            v6 = v26;
            sub_100005D7C();

            v27 = [v25 v11[5].base_prots];
            if (v27)
            {
              v6 = v27;
              sub_100005D7C();

              sub_100005B1C();
              v28 = sub_100005E7C();

              v11 = &IntentHandler;

              if (((v22 ^ (v28 != -1)) & 1) == 0)
              {
                goto LABEL_23;
              }
            }

            else
            {

              if (v22)
              {
LABEL_21:
                v10 = v100;
                v12 = v104;
                goto LABEL_24;
              }
            }
          }

          else
          {

            if (v22)
            {
              goto LABEL_21;
            }
          }

          v4 += 8;
          ++v7;
        }

        while (v8 != v7);
        v7 = v8;
      }

LABEL_23:
      v10 = v100;
      v12 = v104;
      if (v22)
      {
LABEL_24:
        if (v7 < v12)
        {
          goto LABEL_144;
        }

        if (v12 < v7)
        {
          v29 = v7;
          v30 = 8 * v7 - 8;
          v31 = 8 * v12;
          v32 = v12;
          do
          {
            if (v32 != --v29)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_150;
              }

              v33 = *(v34 + v31);
              *(v34 + v31) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            ++v32;
            v30 -= 8;
            v31 += 8;
          }

          while (v32 < v29);
        }
      }
    }

    v35 = a3[1];
    if (v7 >= v35)
    {
      v9 = v7;
      goto LABEL_44;
    }

    if (__OFSUB__(v7, v12))
    {
      goto LABEL_143;
    }

    v36 = v7;
    if (v7 - v12 >= a4)
    {
      v9 = v7;
LABEL_44:
      v7 = v103;
      if (v9 < v12)
      {
        goto LABEL_142;
      }

      goto LABEL_45;
    }

    v37 = v12 + a4;
    v7 = v103;
    if (__OFADD__(v12, a4))
    {
      goto LABEL_145;
    }

    if (v37 >= v35)
    {
      v37 = a3[1];
    }

    if (v37 < v12)
    {
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    if (v36 != v37)
    {
      break;
    }

    v9 = v36;
    if (v36 < v12)
    {
      goto LABEL_142;
    }

LABEL_45:
    v38 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v10 = v38;
    }

    else
    {
      v10 = sub_100002E14(0, *(v38 + 2) + 1, 1, v38);
    }

    v4 = *(v10 + 2);
    v39 = *(v10 + 3);
    v40 = v4 + 1;
    if (v4 >= v39 >> 1)
    {
      v10 = sub_100002E14((v39 > 1), v4 + 1, 1, v10);
    }

    *(v10 + 2) = v40;
    v41 = &v10[16 * v4];
    *(v41 + 4) = v104;
    *(v41 + 5) = v9;
    v42 = *a1;
    if (!*a1)
    {
      goto LABEL_152;
    }

    if (v4)
    {
      while (1)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v44 = *(v10 + 4);
          v45 = *(v10 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_64:
          if (v47)
          {
            goto LABEL_131;
          }

          v60 = &v10[16 * v40];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_134;
          }

          v66 = &v10[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_137;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_138;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v40 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v70 = &v10[16 * v40];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_78:
        if (v65)
        {
          goto LABEL_133;
        }

        v73 = &v10[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_136;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_85:
        v4 = v43 - 1;
        if (v43 - 1 >= v40)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (!*a3)
        {
          goto LABEL_149;
        }

        v6 = v10;
        v81 = *&v10[16 * v4 + 32];
        v82 = *&v10[16 * v43 + 40];
        sub_100004BFC((*a3 + 8 * v81), (*a3 + 8 * *&v10[16 * v43 + 32]), (*a3 + 8 * v82), v42);
        if (v7)
        {
          goto LABEL_123;
        }

        if (v82 < v81)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1000050B8(v6);
        }

        if (v4 >= *(v6 + 2))
        {
          goto LABEL_128;
        }

        v83 = &v6[16 * v4];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        sub_10000502C(v43);
        v10 = v6;
        v40 = *(v6 + 2);
        if (v40 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v10[16 * v40 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_129;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_130;
      }

      v55 = &v10[16 * v40];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_132;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_135;
      }

      if (v59 >= v51)
      {
        v77 = &v10[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_139;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v8 = a3[1];
    if (v9 >= v8)
    {
      goto LABEL_112;
    }
  }

  v101 = v10;
  v110 = *a3;
  v4 = *a3 + 8 * v36 - 8;
  v84 = v12 - v36;
  v105 = v37;
  while (2)
  {
    v107 = v4;
    v108 = v36;
    v85 = *(v110 + 8 * v36);
    v106 = v84;
LABEL_98:
    v86 = *v4;
    v87 = v85;
    v88 = v86;
    v89 = [v87 v11[5].base_prots];
    if (!v89)
    {

LABEL_96:
      v36 = v108 + 1;
      v4 = v107 + 8;
      v84 = v106 - 1;
      if (v108 + 1 != v105)
      {
        continue;
      }

      v9 = v105;
      v7 = v103;
      v10 = v101;
      if (v105 < v104)
      {
        goto LABEL_142;
      }

      goto LABEL_45;
    }

    break;
  }

  v6 = v89;
  sub_100005D7C();

  v90 = [v88 v11[5].base_prots];
  if (!v90)
  {

    goto LABEL_96;
  }

  v6 = v90;
  sub_100005D7C();

  sub_100005B1C();
  v91 = sub_100005E7C();

  if (v91 != -1)
  {
    v11 = &IntentHandler;
    goto LABEL_96;
  }

  if (v110)
  {
    v92 = *v4;
    v85 = *(v4 + 8);
    *v4 = v85;
    *(v4 + 8) = v92;
    v4 -= 8;
    v93 = __CFADD__(v84++, 1);
    v11 = &IntentHandler;
    if (v93)
    {
      goto LABEL_96;
    }

    goto LABEL_98;
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
}

uint64_t sub_100004924(void **__src, id *a2, id *a3, void **__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      v15 = *v4;
      v16 = *v6;
      v17 = v15;
      if (![v16 isInternal])
      {
        break;
      }

      v18 = [v17 isInternal];

      if (v18)
      {
        goto LABEL_17;
      }

      v19 = v6;
      v20 = v7 == v6++;
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_43;
      }
    }

LABEL_17:
    v19 = v4;
    v20 = v7 == v4++;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v19;
    goto LABEL_19;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    memmove(__dst, a2, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v21 = &IntentHandler;
    do
    {
      v30 = v6;
      v22 = v6 - 1;
      --v5;
      v23 = v14;
      while (1)
      {
        v24 = *--v23;
        v6 = v22;
        v25 = *v22;
        v26 = v24;
        v27 = v25;
        if (![v26 v21[7].base_meths])
        {

          goto LABEL_34;
        }

        v28 = [v27 v21[7].base_meths];

        if ((v28 & 1) == 0)
        {
          break;
        }

LABEL_34:
        v22 = v6;
        if (v5 + 1 != v14)
        {
          *v5 = *v23;
        }

        --v5;
        v14 = v23;
        v21 = &IntentHandler;
        if (v23 <= v4)
        {
          v14 = v23;
          v6 = v30;
          goto LABEL_43;
        }
      }

      if (v5 + 1 != v30)
      {
        *v5 = *v6;
      }

      v21 = &IntentHandler;
    }

    while (v14 > v4 && v6 > v7);
  }

LABEL_43:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_100004BFC(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v27 = __src;
    if (a4 != __src || &__src[v11] <= a4)
    {
      v28 = a4;
      memmove(a4, __src, 8 * v11);
      a4 = v28;
    }

    v14 = &a4[v11];
    v13 = a4;
    if (v9 < 8 || v27 <= v5)
    {
      goto LABEL_48;
    }

    v41 = a4;
LABEL_31:
    v29 = v27 - 1;
    --v4;
    v30 = v14;
    v42 = v27 - 1;
    v44 = v27;
    while (1)
    {
      v31 = *--v30;
      v32 = *v29;
      v33 = v31;
      v34 = v32;
      v35 = [v33 name];
      if (v35)
      {
        v46 = v14;
        v36 = v35;
        sub_100005D7C();

        v37 = [v34 name];
        if (v37)
        {
          v38 = v37;
          sub_100005D7C();

          sub_100005B1C();
          v39 = sub_100005E7C();

          v13 = v41;

          v29 = v42;
          v27 = v44;
          v14 = v46;
          if (v39 == -1)
          {
            if (v4 + 1 != v44)
            {
              *v4 = *v42;
            }

            if (v46 <= v41 || (v27 = v42, v42 <= v5))
            {
              v27 = v42;
              goto LABEL_48;
            }

            goto LABEL_31;
          }

          goto LABEL_40;
        }

        v27 = v44;
      }

      else
      {
      }

      v29 = v42;
LABEL_40:
      if (v4 + 1 != v14)
      {
        *v4 = *v30;
      }

      --v4;
      v14 = v30;
      if (v30 <= v13)
      {
        v14 = v30;
        goto LABEL_48;
      }
    }
  }

  v13 = a4;
  if (a4 != __dst || &__dst[v8] <= a4)
  {
    memmove(a4, __dst, 8 * v8);
  }

  v14 = &v13[v8];
  if (v6 >= 8 && __src < v4)
  {
    v15 = __src;
    v16 = &IntentHandler;
    v45 = v14;
    while (1)
    {
      v17 = *v13;
      v18 = *v15;
      v19 = v17;
      v20 = [v18 v16[5].base_prots];
      if (!v20)
      {
        break;
      }

      v21 = v20;
      sub_100005D7C();

      v22 = [v19 v16[5].base_prots];
      if (!v22)
      {

        v14 = v45;
        v16 = &IntentHandler;
LABEL_20:
        v26 = v13;
        v25 = v5 == v13++;
        if (v25)
        {
          goto LABEL_22;
        }

LABEL_21:
        *v5 = *v26;
        goto LABEL_22;
      }

      v23 = v22;
      sub_100005D7C();
      v43 = v15;

      sub_100005B1C();
      v24 = sub_100005E7C();

      v25 = v24 == -1;
      v14 = v45;
      v16 = &IntentHandler;
      if (!v25)
      {
        goto LABEL_20;
      }

      v26 = v15++;
      if (v5 != v43)
      {
        goto LABEL_21;
      }

LABEL_22:
      ++v5;
      if (v13 >= v14 || v15 >= v4)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_20;
  }

LABEL_24:
  v27 = v5;
LABEL_48:
  if (v27 != v13 || v27 >= (v13 + ((v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v27, v13, 8 * ((v14 - v13) / 8));
  }

  return 1;
}

uint64_t sub_10000502C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000050B8(v3);
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

uint64_t sub_1000050CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000593C(&qword_10000C4A8, &qword_1000065B0);
  v38 = a2;
  result = sub_100005F4C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_100005FAC();
      sub_100005D8C();
      result = sub_100005FBC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_10000536C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100005F8C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_100005424()
{
  v1 = v0;
  sub_10000593C(&qword_10000C4A8, &qword_1000065B0);
  v2 = *v0;
  v3 = sub_100005F3C();
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

uint64_t sub_10000558C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100005F2C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

void *sub_1000055F0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_100005F2C();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100002F18(v3, 0);
  sub_100005684(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100005684(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100005F2C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100005F2C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100005C80();
          for (i = 0; i != v6; ++i)
          {
            sub_10000593C(&qword_10000C4B8, &qword_1000065C0);
            v9 = sub_100005814(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100005AD4(0, &qword_10000C478, BCBatteryDevice_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_100005814(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100005EAC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100005894;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000589C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000058D4(uint64_t a1)
{
  v2 = sub_10000593C(&qword_10000C488, &qword_1000065A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000593C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100005984(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000059D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100005A30(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100005A94()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005AD4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_100005B1C()
{
  result = qword_10000C4A0;
  if (!qword_10000C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C4A0);
  }

  return result;
}

unint64_t sub_100005B84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000593C(&qword_10000C4A8, &qword_1000065B0);
    v3 = sub_100005F5C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100003548(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_100005C80()
{
  result = qword_10000C4C0;
  if (!qword_10000C4C0)
  {
    sub_100005CE4(&qword_10000C4B8, &qword_1000065C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C4C0);
  }

  return result;
}

uint64_t sub_100005CE4(uint64_t *a1, uint64_t *a2)
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
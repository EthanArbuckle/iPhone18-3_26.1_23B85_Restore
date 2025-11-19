void *FTRemoteEventHIDSessionFilter.filterEvent(_:for:)(void *a1, void *a2)
{
  if (v2[OBJC_IVAR___FTRemoteEventHIDSessionFilter_isRemoteControlActive] == 1)
  {
    v5 = OBJC_IVAR___FTRemoteEventHIDSessionFilter_remoteHIDServices;
    swift_beginAccess();
    v6 = *&v2[v5];

    v7 = sub_1E70(a2, v6);

    if (v7)
    {
      v8 = a2;
      variable initialization expression of FTRemoteEventHIDSessionFilter.isRemoteControlActive();
      variable initialization expression of FTRemoteEventHIDSessionFilter.isRemoteControlActive();
      v9 = v2;
      v10 = sub_4204();
      v11 = sub_4274();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134218240;
        *(v12 + 4) = [v8 serviceID];

        *(v12 + 12) = 1024;
        *(v12 + 14) = *(&v9->isa + OBJC_IVAR___FTRemoteEventHIDSessionFilter_allowRemoteEvents);

        _os_log_impl(&dword_0, v10, v11, "FaceTime remote event from 0x%llx  Allow: %{BOOL}d", v12, 0x12u);
      }

      else
      {

        v10 = v9;
      }

      if ((*(&v9->isa + OBJC_IVAR___FTRemoteEventHIDSessionFilter_allowRemoteEvents) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v2[OBJC_IVAR___FTRemoteEventHIDSessionFilter_allowRemoteEvents] == 1)
    {
      if ([a1 type] == 10)
      {
        v13 = a2;
        variable initialization expression of FTRemoteEventHIDSessionFilter.isRemoteControlActive();
        variable initialization expression of FTRemoteEventHIDSessionFilter.isRemoteControlActive();
        v14 = sub_4204();
        v15 = sub_4284();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 134217984;
          *(v16 + 4) = [v13 serviceID];

          _os_log_impl(&dword_0, v14, v15, "Ignore orientation event from 0x%llx", v16, 0xCu);
        }

        else
        {
        }
      }

      else if (IOHIDEventGetPolicy() == 3)
      {
        v19 = a2;
        variable initialization expression of FTRemoteEventHIDSessionFilter.isRemoteControlActive();
        variable initialization expression of FTRemoteEventHIDSessionFilter.isRemoteControlActive();
        v20 = a1;
        v21 = sub_4204();
        v22 = sub_4284();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 134349312;
          *(v23 + 4) = [v19 serviceID];

          *(v23 + 12) = 1026;
          *(v23 + 14) = [v20 type];

          _os_log_impl(&dword_0, v21, v22, "Terminate FaceTime remote event services due to local HID event.  serviceID: 0x%{public}llx  event type: %{public}u", v23, 0x12u);
        }

        else
        {

          v21 = v20;
        }

        sub_2168();
      }
    }
  }

  v17 = a1;
  return a1;
}

uint64_t sub_1454(uint64_t a1)
{
  v2 = sub_3E9C(&qword_C540, &qword_4958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double FTRemoteEventHIDSessionFilter.property(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  if (a1 == 0xD000000000000012 && 0x80000000000049F0 == a2 || (sub_43A4() & 1) != 0)
  {
    v6 = sub_3D7C(&_swiftEmptyArrayStorage);
    v17 = &type metadata for String;
    *&v16 = 0xD00000000000001DLL;
    *(&v16 + 1) = 0x8000000000004910;
    sub_3E8C(&v16, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_28A0(v15, 0x7373616C43, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v8 = OBJC_IVAR___FTRemoteEventHIDSessionFilter_remoteHIDServices;
    swift_beginAccess();
    v9 = *(v4 + v8);
    if ((v9 & 0xC000000000000001) != 0)
    {

      v10 = sub_42F4();
    }

    else
    {
      v10 = *(v9 + 16);
    }

    v17 = &type metadata for Int;
    *&v16 = v10;
    sub_3E8C(&v16, v15);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_28A0(v15, 0xD000000000000015, 0x8000000000004A10, v11);
    v12 = *(v4 + OBJC_IVAR___FTRemoteEventHIDSessionFilter_isRemoteControlActive);
    v17 = &type metadata for Bool;
    LOBYTE(v16) = v12;
    sub_3E8C(&v16, v15);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_28A0(v15, 0xD000000000000013, 0x8000000000004A30, v13);
    *(a3 + 24) = sub_3E9C(&qword_C520, &qword_4950);
    *a3 = v6;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void FTRemoteEventHIDSessionFilter.serviceNotification(_:added:)(void *a1, char a2)
{
  v4 = a1;
  variable initialization expression of FTRemoteEventHIDSessionFilter.isRemoteControlActive();
  variable initialization expression of FTRemoteEventHIDSessionFilter.isRemoteControlActive();
  v5 = v2;
  v6 = sub_4204();
  v7 = sub_4284();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134349824;
    v9 = [v4 serviceID];

    *(v8 + 4) = v9;
    *(v8 + 12) = 1026;
    *(v8 + 14) = a2 & 1;
    *(v8 + 18) = 1026;
    *(v8 + 20) = v5[OBJC_IVAR___FTRemoteEventHIDSessionFilter_isRemoteControlActive];

    *(v8 + 24) = 2050;
    v10 = OBJC_IVAR___FTRemoteEventHIDSessionFilter_remoteHIDServices;
    swift_beginAccess();
    v11 = *&v5[v10];
    if ((v11 & 0xC000000000000001) != 0)
    {

      v12 = sub_42F4();
    }

    else
    {
      v12 = *(v11 + 16);
    }

    *(v8 + 26) = v12;

    _os_log_impl(&dword_0, v6, v7, "HID serviceID: 0x%{public}llx  added: %{BOOL,public}d  rc: %{BOOL,public}d  count: %{public}ld", v8, 0x22u);

    if (a2)
    {
LABEL_13:
      v25 = *&v5[OBJC_IVAR___FTRemoteEventHIDSessionFilter_FTRemoteControlSessionIDKey];
      v26 = *&v5[OBJC_IVAR___FTRemoteEventHIDSessionFilter_FTRemoteControlSessionIDKey + 8];
      v27 = sub_4234();
      v28 = [v4 propertyForKey:v27];

      if (v28)
      {
        sub_42B4();
        swift_unknownObjectRelease();
      }

      else
      {
        v54 = 0u;
        v55 = 0u;
      }

      v56[0] = v54;
      v56[1] = v55;
      if (*(&v55 + 1))
      {
        if (swift_dynamicCast())
        {
          v29 = OBJC_IVAR___FTRemoteEventHIDSessionFilter_remoteHIDServices;
          swift_beginAccess();
          v30 = v4;
          sub_2CB8(&v54, v30);
          v31 = v54;
          swift_endAccess();

          v32 = OBJC_IVAR___FTRemoteEventHIDSessionFilter_allowRemoteEvents;
          if ((v5[OBJC_IVAR___FTRemoteEventHIDSessionFilter_allowRemoteEvents] & 1) != 0 || (v33 = OBJC_IVAR___FTRemoteEventHIDSessionFilter_currentEventSessionID, v53 != *&v5[OBJC_IVAR___FTRemoteEventHIDSessionFilter_currentEventSessionID]))
          {
            v39 = v30;
            variable initialization expression of FTRemoteEventHIDSessionFilter.isRemoteControlActive();
            variable initialization expression of FTRemoteEventHIDSessionFilter.isRemoteControlActive();
            v40 = v5;
            v41 = sub_4204();
            v42 = sub_4284();
            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              *v43 = 134218496;
              *(v43 + 4) = [v39 serviceID];

              *(v43 + 12) = 2048;
              *(v43 + 14) = v53;
              *(v43 + 22) = 2048;
              v44 = *&v5[v29];
              if ((v44 & 0xC000000000000001) != 0)
              {
                if (v44 < 0)
                {
                  v45 = *&v5[v29];
                }

                v46 = sub_42F4();
              }

              else
              {
                v46 = *(v44 + 16);
              }

              *(v43 + 24) = v46;

              _os_log_impl(&dword_0, v41, v42, "Add FaceTime remote event HID serviceID: 0x%llx sessionID: %ld  count: %ld", v43, 0x20u);
            }

            else
            {

              v41 = v40;
            }

            *(&v40->isa + OBJC_IVAR___FTRemoteEventHIDSessionFilter_isRemoteControlActive) = 1;
            v5[v32] = 1;
            *(&v40->isa + OBJC_IVAR___FTRemoteEventHIDSessionFilter_currentEventSessionID) = v53;
          }

          else
          {
            v34 = v30;
            variable initialization expression of FTRemoteEventHIDSessionFilter.isRemoteControlActive();
            variable initialization expression of FTRemoteEventHIDSessionFilter.isRemoteControlActive();
            v35 = v5;
            v36 = sub_4204();
            v37 = sub_4284();
            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              *v38 = 134349568;
              *(v38 + 4) = [v34 serviceID];

              *(v38 + 12) = 2050;
              *(v38 + 14) = v53;
              *(v38 + 22) = 2050;
              *(v38 + 24) = *&v5[v33];

              _os_log_impl(&dword_0, v36, v37, "Tried to add remote event virtual HID service with invalid sessionID.  serviceID: 0x%{public}llx sessionID: %{public}ld  current sessionID: %{public}ld", v38, 0x20u);
            }

            else
            {

              v36 = v35;
            }

            IOHIDServiceRequestTerminate();
          }
        }
      }

      else
      {
        sub_1454(v56);
      }

      return;
    }
  }

  else
  {

    if (a2)
    {
      goto LABEL_13;
    }
  }

  v13 = OBJC_IVAR___FTRemoteEventHIDSessionFilter_remoteHIDServices;
  swift_beginAccess();
  v14 = *&v5[v13];

  v15 = sub_1E70(v4, v14);

  if ((v15 & 1) == 0)
  {
    return;
  }

  v16 = v4;
  variable initialization expression of FTRemoteEventHIDSessionFilter.isRemoteControlActive();
  variable initialization expression of FTRemoteEventHIDSessionFilter.isRemoteControlActive();
  v17 = v5;
  v18 = sub_4204();
  v19 = sub_4284();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134218240;
    *(v20 + 4) = [v16 serviceID];

    *(v20 + 12) = 2048;
    v21 = *&v5[v13];
    if ((v21 & 0xC000000000000001) != 0)
    {
      if (v21 < 0)
      {
        v22 = *&v5[v13];
      }

      v23 = *&v5[v13];

      v24 = sub_42F4();
    }

    else
    {
      v24 = *(v21 + 16);
    }

    *(v20 + 14) = v24;

    _os_log_impl(&dword_0, v18, v19, "Remove remote event virtual HID sevice.  serviceID: 0x%llx count: %ld", v20, 0x16u);
  }

  else
  {

    v18 = v17;
  }

  swift_beginAccess();
  v47 = sub_2ED0(v16);
  swift_endAccess();

  v48 = *&v5[v13];
  if ((v48 & 0xC000000000000001) != 0)
  {

    v49 = sub_42F4();

    if (v49)
    {
      return;
    }
  }

  else if (*(v48 + 16))
  {
    return;
  }

  v50 = sub_4204();
  v51 = sub_4284();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_0, v50, v51, "FaceTime remote event HID services no longer active", v52, 2u);
  }

  *(&v17->isa + OBJC_IVAR___FTRemoteEventHIDSessionFilter_isRemoteControlActive) = 0;
  *(&v17->isa + OBJC_IVAR___FTRemoteEventHIDSessionFilter_currentEventSessionID) = 0;
}

uint64_t sub_1E70(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_4324();
  }

  else if (*(a2 + 16) && (sub_408C(), v5 = sub_4294(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_42A4();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

id FTRemoteEventHIDSessionFilter.__allocating_init(session:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_3CA0();

  return v4;
}

id FTRemoteEventHIDSessionFilter.init(session:)(void *a1)
{
  v2 = sub_3CA0();

  return v2;
}

Swift::Void __swiftcall FTRemoteEventHIDSessionFilter.activate()()
{
  oslog = sub_4204();
  v0 = sub_4284();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&dword_0, oslog, v0, "Activate remote event session filter", v1, 2u);
  }
}

void sub_2168()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___FTRemoteEventHIDSessionFilter_allowRemoteEvents) = 0;
  v2 = OBJC_IVAR___FTRemoteEventHIDSessionFilter_remoteHIDServices;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *(v1 + v2);
    }

    sub_42E4();
    sub_408C();
    sub_40D8();
    sub_4264();
    v3 = v23;
    v5 = v24;
    v6 = v25;
    v7 = v26;
    v8 = v27;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  while (v3 < 0)
  {
    if (!sub_4314() || (sub_408C(), swift_dynamicCast(), v18 = v22, v16 = v7, v17 = v8, !v22))
    {
LABEL_23:
      sub_4130();
      return;
    }

LABEL_21:
    v19 = v18;
    variable initialization expression of FTRemoteEventHIDSessionFilter.isRemoteControlActive();
    variable initialization expression of FTRemoteEventHIDSessionFilter.isRemoteControlActive();
    v13 = sub_4204();
    v20 = sub_4284();
    if (os_log_type_enabled(v13, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134349056;
      *(v21 + 4) = [v19 serviceID];

      _os_log_impl(&dword_0, v13, v20, "Terminate FaceTime HID service.  serviceID: 0x%{public}llx", v21, 0xCu);
    }

    else
    {

      v13 = v19;
    }

    IOHIDServiceRequestTerminate();
    v7 = v16;
    v8 = v17;
  }

  v14 = v7;
  v15 = v8;
  v16 = v7;
  if (v8)
  {
LABEL_17:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v3 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
      goto LABEL_23;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

id FTRemoteEventHIDSessionFilter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FTRemoteEventHIDSessionFilter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FTRemoteEventHIDSessionFilter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2570(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_43D4();
  sub_4254();
  v6 = sub_43E4();

  return sub_2A5C(a1, a2, v6);
}

uint64_t sub_25E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_3E9C(&qword_C5E8, &qword_4998);
  v36 = a2;
  result = sub_4374();
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
        sub_3E8C(v25, v37);
      }

      else
      {
        sub_4138(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_43D4();
      sub_4254();
      result = sub_43E4();
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
      result = sub_3E8C(v37, (*(v8 + 56) + 32 * v16));
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

_OWORD *sub_28A0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2570(a2, a3);
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
      sub_2B14();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25E8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2570(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_43C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_4040(v23);

    return sub_3E8C(a1, v23);
  }

  else
  {
    sub_29F0(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_29F0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_3E8C(a4, (a5[7] + 32 * a1));
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

unint64_t sub_2A5C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_43A4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_2B14()
{
  v1 = v0;
  sub_3E9C(&qword_C5E8, &qword_4998);
  v2 = *v0;
  v3 = sub_4364();
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
        sub_4138(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_3E8C(v25, (*(v4 + 56) + v22));
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

uint64_t sub_2CB8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_4304();

    if (v9)
    {

      sub_408C();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_42F4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_38DC(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_3514(v21 + 1);
    }

    v19 = v8;
    sub_3ABC(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_408C();
  v11 = sub_4294(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_3B40(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_42A4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_2ED0(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_4324();

    if (v7)
    {
      v8 = sub_3058();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_408C();
  v11 = sub_4294(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = sub_42A4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_31B0();
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_373C(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t sub_3058()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_42F4();
  v4 = swift_unknownObjectRetain();
  v5 = sub_38DC(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_4294(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_408C();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_42A4();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_373C(v9);
  result = sub_42A4();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_31B0()
{
  v1 = v0;
  sub_3E9C(&qword_C5D8, &qword_4990);
  v2 = *v0;
  v3 = sub_4334();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_3300(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_3E9C(&qword_C5D8, &qword_4990);
  result = sub_4344();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_4294(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_3514(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_3E9C(&qword_C5D8, &qword_4990);
  result = sub_4344();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_4294(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_373C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_42C4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_4294(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int sub_38DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_3E9C(&qword_C5D8, &qword_4990);
    v2 = sub_4354();
    v15 = v2;
    sub_42E4();
    if (sub_4314())
    {
      sub_408C();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_3514(v9 + 1);
        }

        v2 = v15;
        result = sub_4294(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_4314());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_3ABC(uint64_t a1, uint64_t a2)
{
  sub_4294(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_42D4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_3B40(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_3514(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_31B0();
      goto LABEL_12;
    }

    sub_3300(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_4294(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_408C();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_42A4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_43B4();
  __break(1u);
}

id sub_3CA0()
{
  *&v0[OBJC_IVAR___FTRemoteEventHIDSessionFilter_remoteHIDServices] = &_swiftEmptySetSingleton;
  v0[OBJC_IVAR___FTRemoteEventHIDSessionFilter_isRemoteControlActive] = 0;
  v0[OBJC_IVAR___FTRemoteEventHIDSessionFilter_allowRemoteEvents] = 0;
  *&v0[OBJC_IVAR___FTRemoteEventHIDSessionFilter_currentEventSessionID] = 0;
  v1 = &v0[OBJC_IVAR___FTRemoteEventHIDSessionFilter_FTRemoteControlSessionIDKey];
  *v1 = 0xD00000000000001ELL;
  v1[1] = 0x8000000000004990;
  sub_4214();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for FTRemoteEventHIDSessionFilter();
  return objc_msgSendSuper2(&v3, "init");
}

unint64_t sub_3D7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3E9C(&qword_C5E8, &qword_4998);
    v3 = sub_4384();
    v4 = a1 + 32;

    while (1)
    {
      sub_4194(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2570(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_3E8C(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_3E8C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_3E9C(uint64_t *a1, uint64_t *a2)
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

uint64_t type metadata accessor for FTRemoteEventHIDSessionFilter()
{
  result = qword_C668;
  if (!qword_C668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3F38()
{
  result = sub_4224();
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

void *sub_3FFC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_4040(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_408C()
{
  result = qword_C5D0;
  if (!qword_C5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C5D0);
  }

  return result;
}

unint64_t sub_40D8()
{
  result = qword_C5E0;
  if (!qword_C5E0)
  {
    sub_408C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5E0);
  }

  return result;
}

uint64_t sub_4138(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_4194(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E9C(&unk_C5F0, &unk_49A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}
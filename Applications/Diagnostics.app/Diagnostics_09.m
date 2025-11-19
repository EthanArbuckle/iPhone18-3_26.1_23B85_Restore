uint64_t sub_1001050D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v3(v5, v7);
  sub_10005F18C(v5, v7);
}

id sub_100105158()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10010523C(unsigned __int8 a1, void *a2, id a3)
{
  v3 = a3;
  if (a1 - 1 > 1)
  {
    v7 = [a3 state];
    [v7 setPhase:0];

    v8 = [v3 state];
    [v8 addErrorCode:0 userInfo:0];

    v9 = [v3 state];
    [v9 removeErrorCode:0];
  }

  else
  {
    if (a2)
    {
      if (([a3 respondsToSelector:"startInOperationMode:"] & 1) == 0)
      {
        return;
      }

      v5 = "startInOperationMode:";
      v6 = v3;
      a3 = a2;
    }

    else
    {
      v5 = "start";
      v6 = a3;
    }

    [v6 v5];
  }
}

void sub_100105504(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4)
{
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  v6 = a3;
  (*(a4 + 16))(a4, a1);
}

uint64_t sub_100105570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_delegate;
  swift_beginAccess();
  sub_1001059B4(v4 + v9, v16);
  if (!v17)
  {
    return sub_10003DD84(v16, &qword_100201810);
  }

  sub_10004476C(v16, v13);
  sub_10003DD84(v16, &qword_100201810);
  v10 = v14;
  v11 = v15;
  sub_1000442A0(v13, v14);
  (*(v11 + 16))(v4, a1, a2, a3, a4, v10, v11);
  return sub_100044554(v13);
}

uint64_t sub_100105760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_delegate;
  swift_beginAccess();
  sub_1001059B4(v4 + v9, v16);
  if (!v17)
  {
    return sub_10003DD84(v16, &qword_100201810);
  }

  sub_10004476C(v16, v13);
  sub_10003DD84(v16, &qword_100201810);
  v10 = v14;
  v11 = v15;
  sub_1000442A0(v13, v14);
  (*(v11 + 32))(v4, a1, a2, a3, a4, v10, v11);
  return sub_100044554(v13);
}

void sub_100105948(int a1, int a2, id a3, void (*a4)(void))
{
  v5 = [a3 identifier];
  a4();
}

uint64_t sub_1001059B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_100201810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100105A24()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100105A70()
{
  v0 = sub_10003C49C(&qword_1002018E0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1002018E8;
  }

  else
  {
    v2 = &unk_1001FD020;
  }

  return sub_10003C49C(v2);
}

void *sub_100105AE8(unint64_t a1, void *a2)
{
  v2 = a2;
  if (a2[2])
  {
    v52[0] = a1;
    v43 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v34 = a1;
      v3 = _CocoaArrayWrapper.endIndex.getter();
      a1 = v34;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = a1;

    if (v3)
    {
      v4 = 0;
      v49 = v48 & 0xC000000000000001;
      v47 = v48 & 0xFFFFFFFFFFFFFF8;
      v45 = v48 + 32;
      v51 = v2 + 7;
      while (1)
      {
        if (v49)
        {
          a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v47 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v45 + 8 * v4);
        }

        v50 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = NSObject._rawHashValue(seed:)(v2[5]);
        v7 = -1 << *(v2 + 32);
        v8 = v6 & ~v7;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v51[v8 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v11 = ~v7;
      sub_10003E110(0, &qword_100202990);
      while (1)
      {
        v12 = *(v2[6] + 8 * v8);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          break;
        }

        v8 = (v8 + 1) & v11;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v51[v8 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v52[1] = v4;

      v15 = *(v2 + 32);
      v16 = v15 & 0x3F;
      v17 = ((1 << v15) + 63) >> 6;
      v41 = v17;
      if (v16 <= 0xD)
      {
LABEL_19:
        v42 = &v40;
        __chkstk_darwin(v14);
        v19 = &v40 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v19, v51, v18);
        v20 = v2[2];
        v21 = *&v19[8 * v9] & ~v10;
        v46 = v19;
        *&v19[8 * v9] = v21;
        v44 = v20 - 1;
        if (v43)
        {
          a1 = _CocoaArrayWrapper.endIndex.getter();
          v50 = a1;
        }

        else
        {
          v50 = *(v47 + 16);
        }

        while (1)
        {
          if (v4 == v50)
          {
            v2 = sub_10012A804(v46, v41, v44, v2);
            goto LABEL_40;
          }

          if (v49)
          {
            a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v47 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v45 + 8 * v4);
          }

          v22 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v23 = NSObject._rawHashValue(seed:)(v2[5]);
          v24 = -1 << *(v2 + 32);
          v25 = v23 & ~v24;
          v26 = v25 >> 6;
          v27 = 1 << v25;
          if (((1 << v25) & v51[v25 >> 6]) != 0)
          {
            v28 = ~v24;
            while (1)
            {
              v29 = *(v2[6] + 8 * v25);
              v30 = static NSObject.== infix(_:_:)();

              if (v30)
              {
                break;
              }

              v25 = (v25 + 1) & v28;
              v26 = v25 >> 6;
              v27 = 1 << v25;
              if (((1 << v25) & v51[v25 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v31 = v46[v26];
            v46[v26] = v31 & ~v27;
            if ((v31 & v27) != 0)
            {
              v32 = v44 - 1;
              if (__OFSUB__(v44, 1))
              {
                __break(1u);
              }

              --v44;
              if (!v32)
              {

                v2 = &_swiftEmptySetSingleton;
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v35 = 8 * v17;

      v36 = v35;
      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_19;
      }

      v37 = swift_slowAlloc();
      memcpy(v37, v51, v36);
      sub_100106588(v37, v41, v2, v8, v52);
      v39 = v38;

      return v39;
    }

    else
    {
LABEL_40:
    }
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void *sub_100105FC0(unint64_t a1, void *a2)
{
  v2 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v3 = a1;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = -1 << *(a1 + 32);
  v43 = ~v6;
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = (63 - v6) >> 6;
  v10 = a2 + 7;
  v11 = 0;
  v12 = 0;
  v45 = a1 + 56;

  {
    v14 = v8;
    if (!v8)
    {
      break;
    }

LABEL_12:
    sub_1000681EC(*(v3 + 48) + 40 * (__clz(__rbit64(v14)) | (v12 << 6)), &v47);
    if (!*(&v48 + 1))
    {
      goto LABEL_42;
    }

    v8 = (v14 - 1) & v14;
    v50 = v47;
    v51 = v48;
    v52 = v49;
    v16 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v11 = v16 & ~v17;
    v3 = v11 >> 6;
    v14 = 1 << v11;
    if (((1 << v11) & v10[v11 >> 6]) != 0)
    {
      v18 = ~v17;
      while (1)
      {
        sub_1000681EC(v2[6] + 40 * v11, &v47);
        v19 = static AnyHashable.== infix(_:_:)();
        sub_10003DB48(&v47);
        if (v19)
        {
          break;
        }

        v11 = (v11 + 1) & v18;
        v3 = v11 >> 6;
        v14 = 1 << v11;
        if (((1 << v11) & v10[v11 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v54 = v43;
      v55 = v12;
      v56 = v8;
      v21 = v45;
      v20 = i;
      v53[0] = i;
      v53[1] = v45;
      v22 = sub_10003DB48(&v50);
      v23 = *(v2 + 32);
      v41[0] = ((1 << v23) + 63) >> 6;
      v13 = 8 * v41[0];
      if ((v23 & 0x3Fu) <= 0xD)
      {
        goto LABEL_20;
      }

      goto LABEL_48;
    }

LABEL_6:
    sub_10003DB48(&v50);
    v11 = v12;
    v5 = v45;
  }

  v15 = v11;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      v38 = v13;

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v39 = swift_slowAlloc();
        memcpy(v39, v2 + 7, v38);
        v40 = sub_1001067D8(v39, v41[0], v2, v11, v53);

        v43 = v54;
        v2 = v40;
        goto LABEL_43;
      }

      v21 = v45;
      v20 = i;
LABEL_20:
      v41[1] = v41;
      __chkstk_darwin(v22);
      v25 = v41 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v25, v2 + 7, v24);
      v26 = *&v25[8 * v3] & ~v14;
      v42 = v25;
      *&v25[8 * v3] = v26;
      v11 = v2[2] - 1;
      while (1)
      {
        while (1)
        {
          if (!v8)
          {
            v27 = v12;
            while (1)
            {
              v28 = v27 + 1;
              if (__OFADD__(v27, 1))
              {
                break;
              }

              if (v28 >= v9)
              {
                v49 = 0;
                v47 = 0u;
                v48 = 0u;
                goto LABEL_40;
              }

              v8 = *(v21 + 8 * v28);
              ++v27;
              if (v8)
              {
                v12 = v28;
                goto LABEL_28;
              }
            }

            __break(1u);
            goto LABEL_46;
          }

LABEL_28:
          v29 = __clz(__rbit64(v8));
          v8 &= v8 - 1;
          sub_1000681EC(*(v20 + 48) + 40 * (v29 | (v12 << 6)), &v47);
          if (!*(&v48 + 1))
          {
LABEL_40:
            sub_10003DD84(&v47, &qword_1002018D8);
            v2 = sub_10012AF70(v42, v41[0], v11, v2);
            goto LABEL_43;
          }

          v44 = v11;
          v50 = v47;
          v51 = v48;
          v52 = v49;
          v30 = AnyHashable._rawHashValue(seed:)(v2[5]);
          v14 = -1 << *(v2 + 32);
          v31 = v30 & ~v14;
          v3 = v31 >> 6;
          v32 = 1 << v31;
          if (((1 << v31) & v10[v31 >> 6]) != 0)
          {
            break;
          }

LABEL_21:
          sub_10003DB48(&v50);
          v21 = v45;
          v20 = i;
          v11 = v44;
        }

        sub_1000681EC(v2[6] + 40 * v31, &v47);
        v33 = static AnyHashable.== infix(_:_:)();
        sub_10003DB48(&v47);
        if ((v33 & 1) == 0)
        {
          v14 = ~v14;
          do
          {
            v31 = (v31 + 1) & v14;
            v3 = v31 >> 6;
            v32 = 1 << v31;
            if (((1 << v31) & v10[v31 >> 6]) == 0)
            {
              goto LABEL_21;
            }

            sub_1000681EC(v2[6] + 40 * v31, &v47);
            v34 = static AnyHashable.== infix(_:_:)();
            sub_10003DB48(&v47);
          }

          while ((v34 & 1) == 0);
        }

        v11 = v44;
        sub_10003DB48(&v50);
        v35 = v42[v3];
        v42[v3] = v35 & ~v32;
        v21 = v45;
        if ((v35 & v32) != 0)
        {
          v36 = __OFSUB__(v11--, 1);
          v20 = i;
          if (v36)
          {
            goto LABEL_47;
          }

          if (!v11)
          {

            v2 = &_swiftEmptySetSingleton;
            goto LABEL_43;
          }
        }

        else
        {
          v20 = i;
        }
      }
    }

    if (v12 >= v9)
    {
      break;
    }

    v14 = *(v5 + 8 * v12);
    ++v15;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  v49 = 0;
  v47 = 0u;
  v48 = 0u;
LABEL_42:
  sub_10003DD84(&v47, &qword_1002018D8);
LABEL_43:
  sub_10004A320();
  return v2;
}

void sub_100106588(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v30 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        if (*v5 >> 62)
        {
          v9 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v9 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v5[1];
        if (v10 == v9)
        {

          sub_10012A804(a1, a2, v27, a3);
          return;
        }

        v11 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v25 = v5[1];
          v13 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            return;
          }

          if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v12 = *(v11 + 8 * v10 + 32);
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_27;
          }
        }

        v5[1] = v13;
        v14 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v15 = -1 << *(a3 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v30 + 8 * (v16 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_10003E110(0, &qword_100202990);
        v19 = *(*(a3 + 48) + 8 * v16);
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          break;
        }

        v21 = ~v15;
        while (1)
        {
          v16 = (v16 + 1) & v21;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v30 + 8 * (v16 >> 6))) == 0)
          {
            break;
          }

          v22 = *(*(a3 + 48) + 8 * v16);
          v23 = static NSObject.== infix(_:_:)();

          if (v23)
          {
            goto LABEL_16;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_16:
      v5 = a5;

      v24 = a1[v17];
      a1[v17] = v24 & ~v18;
    }

    while ((v24 & v18) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_29;
    }

    if (v27 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t *sub_1001067D8(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v37 = v7 - 1;
  v8 = a3 + 56;
  while (1)
  {
    do
    {
      while (1)
      {
        v9 = *a5;
        v10 = a5[1];
        v12 = a5[2];
        v11 = a5[3];
        v13 = a5[4];
        if (!v13)
        {
          v15 = (v12 + 64) >> 6;
          v16 = a5[3];
          while (1)
          {
            v14 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
              goto LABEL_25;
            }

            if (v14 >= v15)
            {
              break;
            }

            v13 = *(v10 + 8 * v14);
            ++v16;
            if (v13)
            {
              goto LABEL_9;
            }
          }

          v34 = 0;
          if (v15 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (v12 + 64) >> 6;
          }

          v32 = 0u;
          v33 = 0u;
          *a5 = v9;
          a5[1] = v10;
          a5[2] = v12;
          a5[3] = v29 - 1;
          a5[4] = 0;
LABEL_23:
          sub_10003DD84(&v32, &qword_1002018D8);

          return sub_10012AF70(v31, a2, v37, a3);
        }

        v14 = a5[3];
LABEL_9:
        v17 = (v13 - 1) & v13;
        sub_1000681EC(*(v9 + 48) + 40 * (__clz(__rbit64(v13)) | (v14 << 6)), &v32);
        v18 = *(&v33 + 1);
        *a5 = v9;
        a5[1] = v10;
        a5[2] = v12;
        a5[3] = v14;
        a5[4] = v17;
        if (!v18)
        {
          goto LABEL_23;
        }

        v35[0] = v32;
        v35[1] = v33;
        v36 = v34;
        v19 = AnyHashable._rawHashValue(seed:)(*(a3 + 40));
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v8 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_2:
        result = sub_10003DB48(v35);
      }

      sub_1000681EC(*(a3 + 48) + 40 * v21, &v32);
      v24 = static AnyHashable.== infix(_:_:)();
      sub_10003DB48(&v32);
      if ((v24 & 1) == 0)
      {
        v25 = ~v20;
        do
        {
          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v8 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_2;
          }

          sub_1000681EC(*(a3 + 48) + 40 * v21, &v32);
          v26 = static AnyHashable.== infix(_:_:)();
          sub_10003DB48(&v32);
        }

        while ((v26 & 1) == 0);
      }

      result = sub_10003DB48(v35);
      v27 = v31[v22];
      v31[v22] = v27 & ~v23;
    }

    while ((v27 & v23) == 0);
    v28 = v37 - 1;
    if (__OFSUB__(v37, 1))
    {
      break;
    }

    --v37;
    if (!v28)
    {
      return &_swiftEmptySetSingleton;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100106A4C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_10003DD84(v11, &qword_1002018D8))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1000681EC(*(v2 + 48) + 40 * (v10 | (v9 << 6)), v12);
      sub_100127FFC(v11);
      sub_10003DB48(v12);
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100106B74(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
  swift_beginAccess();
  v11 = *(*(a5 + v10) + 16);

  if (v11)
  {

    sub_100064AFC(a1, a2);
    if (v12)
    {
      swift_unknownObjectRetain();

      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v15 = String._bridgeToObjectiveC()();
        v16 = swift_allocObject();
        *(v16 + 16) = sub_1001075C0;
        *(v16 + 24) = a6;
        aBlock[4] = sub_100107600;
        aBlock[5] = v16;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001050D0;
        aBlock[3] = &unk_1001C6BA8;
        v17 = _Block_copy(aBlock);

        [v14 getAsset:v15 completion:v17];
        _Block_release(v17);

        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v18 = static os_log_type_t.error.getter();
  sub_10003E110(0, &qword_1001FD6F0);
  v19 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v19, v18))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100056B7C(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v19, v18, "Unable to find the device with %s serial number or the device is not local", v20, 0xCu);
    sub_100044554(v21);
  }

  sub_1000876C4(0, 0xF000000000000000, a6);
}

void sub_100106E2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1001FC6B8 != -1)
    {
      swift_once();
    }

    v2 = qword_10020A368;
    v3 = OBJC_IVAR____TtC11Diagnostics10Assertions_reachabilityState;
    if (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_reachabilityState) == 2)
    {
      *(v2 + v3) = SBSIsReachabilityEnabled() != 0;
    }

    sub_10003C49C(&unk_1001FEAD0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v5 = qword_10020A4F8;
    *(v4 + 56) = sub_10003E110(0, &qword_1001FD6F0);
    *(v4 + 64) = sub_1000516BC();
    *(v4 + 32) = v5;
    v6 = v5;
    v7 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

LABEL_15:

    SBSSetReachabilityEnabled();
    return;
  }

  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  if (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_reachabilityState) != 2)
  {
    sub_10003C49C(&unk_1001FEAD0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v9 = qword_10020A4F8;
    *(v8 + 56) = sub_10003E110(0, &qword_1001FD6F0);
    *(v8 + 64) = sub_1000516BC();
    *(v8 + 32) = v9;
    v10 = v9;
    v11 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    goto LABEL_15;
  }
}

uint64_t sub_1001070CC(void *a1, char a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  v9 = [a1 state];
  v10 = [v9 suiteName];

  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_delegate;
    swift_beginAccess();
    sub_1001059B4(a3 + v14, v28);
    if (v29)
    {
      sub_10004476C(v28, v25);
      sub_10003DD84(v28, &qword_100201810);
      v24 = v11;
      v15 = a2;
      v17 = v26;
      v16 = v27;
      sub_1000442A0(v25, v26);
      v18 = [a1 state];
      v19 = [v18 serialNumber];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      (*(v16 + 8))(a3, v24, v13, v15 & 1, v20, v22, sub_1001074AC, v8, v17, v16);

      sub_100044554(v25);
    }

    else
    {

      sub_10003DD84(v28, &qword_100201810);
    }
  }

  else
  {
    a4[2](a4, 1);
  }
}

void sub_100107324(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_delegate;
  swift_beginAccess();
  sub_1001059B4(a3 + v9, &v14);
  if (v15)
  {
    sub_100049F74(&v14, v16);
    v10 = v17;
    v11 = v18;
    sub_1000442A0(v16, v17);
    v12 = *(v11 + 24);
    _Block_copy(a4);
    v12(a3, a1, a2, sub_1001074A4, v8, v10, v11);
    sub_100044554(v16);
  }

  else
  {
    _Block_copy(a4);
    sub_10003DD84(&v14, &qword_100201810);
    v13 = [a2 identifier];
    (a4)[2](a4, v13, 0);
  }
}

uint64_t sub_1001074C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100107504(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100107524()
{

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_100107578()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001075C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100107678()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0xD000000000000032;
  }

  return v1;
}

id sub_1001076CC()
{
  type metadata accessor for UIImageAsyncLoader();
  v0 = swift_allocObject();
  v0[2] = &_swiftEmptySetSingleton;
  v0[3] = &_swiftEmptySetSingleton;
  v0[4] = 10;
  result = [objc_allocWithZone(NSLock) init];
  v0[5] = result;
  qword_10020A588 = v0;
  return result;
}

void *sub_100107734(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  v19 = _swiftEmptyArrayStorage;
  v15 = dispatch_semaphore_create(0);
  sub_10010CFAC(a1, v2, &v19, v15);
  static DispatchTime.now()();
  *v7 = 10;
  (*(v5 + 104))(v7, enum case for DispatchTimeInterval.seconds(_:), v4);
  + infix(_:_:)();
  (*(v5 + 8))(v7, v4);
  v16 = *(v9 + 8);
  v16(v12, v8);
  OS_dispatch_semaphore.wait(timeout:)();

  v16(v14, v8);
  return v19;
}

void sub_10010795C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  if (!a1)
  {
    if (a2)
    {
      swift_errorRetain();
      static os_log_type_t.error.getter();
      sub_10003C49C(&unk_1001FEAD0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_10017EC00;
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = v16;
      *(v14 + 56) = &type metadata for String;
      *(v14 + 64) = sub_10003DFBC();
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      sub_10003E110(0, &qword_1001FD6F0);
      v18 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
    }

    goto LABEL_8;
  }

  swift_beginAccess();
  v9 = *(a3 + 16);
  v10 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v9;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = sub_10003B994();
  *(a3 + 16) = v9;
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (*(v9 + 16) > a4)
  {
    v12 = v9 + 8 * a4;
    v13 = *(v12 + 32);
    *(v12 + 32) = a1;
    *(a3 + 16) = v9;
    swift_endAccess();

LABEL_8:
    dispatch_group_leave(a5);
    return;
  }

LABEL_11:
  __break(1u);
}

id sub_100107B7C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_10003C49C(&qword_1001FDF98);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v15 = *(a3 + 40);
  [v15 lock];
  v16 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    type metadata accessor for ImageLoader();
    v17 = swift_allocObject();
    v24 = a5;
    v25 = a6;
    v18 = v17;
    v27[1] = 0;
    v27[2] = 0;
    v28 = 2;
    Published.init(initialValue:)();
    v26 = v15;
    v19 = OBJC_IVAR____TtC11Diagnostics11ImageLoader_lock;
    *(v18 + v19) = [objc_allocWithZone(NSLock) init];
    *(v18 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) = 0;
    v20 = (v18 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
    *v20 = a1;
    v20[1] = a2;
    swift_beginAccess();

    sub_10003C49C(&qword_1001FDFA0);
    Published.projectedValue.getter();
    swift_endAccess();
    v21 = swift_allocObject();
    v21[2] = v24;
    v21[3] = 0;
    v21[4] = a3;
    v21[5] = v18;
    sub_100107FEC();

    Publisher<>.sink(receiveValue:)();

    (*(v12 + 8))(v14, v11);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();

    sub_100108C88(v27, v18);
    swift_endAccess();

    sub_100086EF0();
    [v26 unlock];
  }

  else
  {

    return [v15 unlock];
  }
}

uint64_t sub_100107E8C(uint64_t *a1, void (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      v8 = a1[1];
      sub_10010C574();
      v9 = swift_allocError();
      *v10 = v7;
      v10[1] = v8;

      a2(0, v9);
    }
  }

  else
  {
    a2(*a1, 0);
  }

  swift_beginAccess();
  sub_100128134(a5);
  swift_endAccess();
}

uint64_t sub_100107F7C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100107FEC()
{
  result = qword_1001FDFA8;
  if (!qword_1001FDFA8)
  {
    sub_10003C4E4(&qword_1001FDF98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDFA8);
  }

  return result;
}

Swift::Int sub_100108050(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10003C49C(&qword_100201A30);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10003E110(0, &qword_100202990);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_100109A34();
        }

        v2 = v14;
        result = NSObject._rawHashValue(seed:)(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100108240(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10003C49C(&qword_100201A00);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for ImageLoader();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_100109EBC();
        }

        v2 = v14;
        Hasher.init(_seed:)();
        String.hash(into:)();
        result = Hasher._finalize()();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_10010844C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10003C49C(&qword_100201A18);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for CardState();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_10010A398();
        }

        v2 = v15;
        Hasher.init(_seed:)();
        v3 = [*(v14 + 40) serialNumber];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        String.hash(into:)();

        result = Hasher._finalize()();
        v5 = v15 + 56;
        v6 = -1 << *(v15 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v8 == v11;
            if (v8 == v11)
            {
              v8 = 0;
            }

            v10 |= v12;
            v13 = *(v5 + 8 * v8);
          }

          while (v13 == -1);
          v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v15 + 48) + 8 * v9) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100108684(void *a1, void *a2)
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

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_10003E110(0, &qword_100202990);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100108050(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_100109A34();
    }

    v18 = v8;
    sub_10010AB00(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_10003E110(0, &qword_100202990);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_10010AD18(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

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

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_1001088BC(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v26 = &v25 - v9;
  v27 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v11 = *(a2 + 8);
  Hasher._combine(_:)(*(a2 + 8));
  v12 = *(a2 + 16);
  Hasher._combine(_:)(v12);
  v30 = v4;
  v13 = *(v4 + 28);
  type metadata accessor for Date();
  sub_10010ED6C();
  v31 = a2;
  v29 = v13;
  dispatch thunk of Hashable.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = -1 << *(v10 + 32);
  v16 = v14 & ~v15;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    do
    {
      sub_10010EDC4(*(v10 + 48) + v18 * v16, v8);
      if (v11 == v8[8] && *(v8 + 2) == v12)
      {
        v19 = static Date.== infix(_:_:)();
        sub_10003DC58(v8);
        if (v19)
        {
          sub_10003DC58(v31);
          sub_10010EDC4(*(v10 + 48) + v18 * v16, v28);
          return 0;
        }
      }

      else
      {
        sub_10003DC58(v8);
      }

      v16 = (v16 + 1) & v17;
    }

    while (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  v21 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v31;
  v24 = v26;
  sub_10010EDC4(v31, v26);
  v32 = *v21;
  sub_10010AE88(v24, v16, isUniquelyReferenced_nonNull_native);
  *v21 = v32;
  sub_10003DBF4(v23, v28);
  return 1;
}

uint64_t sub_100108B3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_1000681EC(*(v6 + 48) + 40 * v9, v16);
      v11 = static AnyHashable.== infix(_:_:)();
      sub_10003DB48(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_10003DB48(a2);
    sub_1000681EC(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000681EC(a2, v16);
    v15 = *v3;
    sub_10010B104(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_100108C88(void *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for ImageLoader();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (!__OFADD__(result, 1))
    {
      v19 = sub_100108240(v7, result + 1);
      if (*(v19 + 24) <= *(v19 + 16))
      {
        sub_100109EBC();
      }

      sub_10010AB84(v20, v19);

      *v3 = v19;
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    Hasher.init(_seed:)();
    v10 = (a2 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
    String.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v2;

      sub_10010B27C(v18, v13, isUniquelyReferenced_nonNull_native);
      *v2 = v22;
LABEL_20:
      *a1 = a2;
      return 1;
    }

    v14 = ~v12;
    while (1)
    {
      v15 = (*(*(v6 + 48) + 8 * v13) + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
      v16 = *v15 == *v10 && v15[1] == v10[1];
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v13);

    return 0;
  }

  return result;
}

uint64_t sub_100108EC8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  if (a3 >= 9)
  {
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(qword_100184910[a3]);
  }

  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = (*(v6 + 48) + 16 * v9);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();
      if (v13 >= 9)
      {

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(qword_100184910[v13]);
        sub_100078568(v12, v13);
      }

      v14 = Hasher._finalize()();
      Hasher.init(_seed:)();
      if (a3 >= 9)
      {
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(qword_100184910[a3]);
      }

      v15 = Hasher._finalize()();
      sub_1000784F0(v12, v13);
      if (v14 == v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sub_1000784F0(a2, a3);
    v18 = *(*(v6 + 48) + 16 * v9);
    *a1 = v18;
    sub_100078568(v18, *(&v18 + 1));
    return 0;
  }

  else
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    sub_100078568(a2, a3);
    sub_10010B410(a2, a3, v9, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    *a1 = a2;
    *(a1 + 8) = a3;
    return 1;
  }
}

uint64_t sub_1001090EC(void *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for CardState();
      swift_dynamicCast();
      result = 0;
      *a1 = v32;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_10010844C(v7, result + 1);
        if (*(v27 + 24) <= *(v27 + 16))
        {
          sub_10010A398();
        }

        sub_10010AC34(v28, v27);

        *v3 = v27;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v29 = v2;
    Hasher.init(_seed:)();
    v10 = [*(a2 + 40) serialNumber];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.hash(into:)();

    v11 = Hasher._finalize()();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v31 = ~v12;
      while (1)
      {
        v14 = *(*(*(v6 + 48) + 8 * v13) + 40);

        v15 = [v14 serialNumber];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = [*(a2 + 40) serialNumber];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        if (v16 == v20 && v18 == v22)
        {

          goto LABEL_22;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          break;
        }

        v13 = (v13 + 1) & v31;
        if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

LABEL_22:
      *a1 = *(*(v6 + 48) + 8 * v13);

      return 0;
    }

    else
    {
LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v29;

      sub_10010B640(v26, v13, isUniquelyReferenced_nonNull_native);
      *v29 = v33;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_100109418(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10010B894(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100109568(_BYTE *a1, char a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  if (a2)
  {
    v5 = 0x776569766572;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  String.hash(into:)();

  v7 = Hasher._finalize()();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v4 + 48) + v9) ? 0x776569766572 : 0;
      v12 = *(*(v4 + 48) + v9) ? 0xE600000000000000 : 0xE000000000000000;
      if (v11 == v5 && v12 == v6)
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_23;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v16 = *(*(v4 + 48) + v9);
  }

  else
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    v16 = a2 & 1;
    sub_10010BA14(a2 & 1, v9, isUniquelyReferenced_nonNull_native);
    *v18 = v20;
    result = 1;
  }

  *a1 = v16;
  return result;
}

uint64_t sub_10010970C()
{
  v1 = v0;
  v2 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10003C49C(&qword_100201A28);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v32 + 72);
      sub_10003DBF4(v19 + v20 * (v16 | (v8 << 6)), v4);
      Hasher.init(_seed:)();
      NSObject.hash(into:)();
      Hasher._combine(_:)(v4[8]);
      Hasher._combine(_:)(*(v4 + 2));
      type metadata accessor for Date();
      sub_10010ED6C();
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_10003DBF4(v4, *(v7 + 48) + v15 * v20);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_100109A34()
{
  v1 = v0;
  v2 = *v0;
  sub_10003C49C(&qword_100201A30);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100109C5C()
{
  v1 = v0;
  v2 = *v0;
  sub_10003C49C(&unk_100202980);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
      v26 = *v17;
      v27 = *(v17 + 16);
      v28 = *(v17 + 32);
      result = AnyHashable._rawHashValue(seed:)(*(v4 + 40));
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 40 * v12;
      *v13 = v26;
      *(v13 + 16) = v27;
      *(v13 + 32) = v28;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100109EBC()
{
  v1 = v0;
  v2 = *v0;
  sub_10003C49C(&qword_100201A00);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10010A118()
{
  v1 = v0;
  v2 = *v0;
  sub_10003C49C(&qword_100201A38);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v19 = *v17;
      v18 = v17[1];
      Hasher.init(_seed:)();
      if (v18 >= 9)
      {
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(qword_100184910[v18]);
      }

      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10010A398()
{
  v1 = v0;
  v2 = *v0;
  sub_10003C49C(&qword_100201A18);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      v17 = [*(v16 + 40) serialNumber];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      String.hash(into:)();

      result = Hasher._finalize()();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10010A628()
{
  v1 = v0;
  v2 = *v0;
  sub_10003C49C(&qword_100201A40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10010A888()
{
  v1 = v0;
  v2 = *v0;
  sub_10003C49C(&qword_100201A48);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_10010AB00(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_10010AB84(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10010AC34(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = [*(a1 + 40) serialNumber];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.hash(into:)();

  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_10010AD18(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100109A34();
  }

  else
  {
    if (v7 > v6)
    {
      sub_100128764();
      goto LABEL_12;
    }

    sub_10010BEF4();
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10003E110(0, &qword_100202990);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

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
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10010AE88(uint64_t a1, unint64_t a2, char a3)
{
  v30 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  v7 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v27 = v7;
  v28 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10010970C();
  }

  else
  {
    if (v11 > v10)
    {
      sub_100128580();
      goto LABEL_16;
    }

    sub_10010BBFC();
  }

  v12 = *v3;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v13 = *(a1 + 8);
  Hasher._combine(_:)(*(a1 + 8));
  v14 = *(a1 + 16);
  Hasher._combine(_:)(v14);
  v15 = *(v30 + 28);
  type metadata accessor for Date();
  sub_10010ED6C();
  v29 = v15;
  dispatch thunk of Hashable.hash(into:)();
  v16 = Hasher._finalize()();
  v17 = -1 << *(v12 + 32);
  a2 = v16 & ~v17;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v7 + 72);
    do
    {
      sub_10010EDC4(*(v12 + 48) + v19 * a2, v9);
      if (v13 == v9[8] && *(v9 + 2) == v14)
      {
        v20 = static Date.== infix(_:_:)();
        sub_10003DC58(v9);
        if (v20)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_10003DC58(v9);
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10003DBF4(a1, *(v21 + 48) + *(v27 + 72) * a2);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

Swift::Int sub_10010B104(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100109C5C();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1001288B4();
      goto LABEL_12;
    }

    sub_10010C108();
  }

  v9 = *v3;
  result = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_1000681EC(*(v9 + 48) + 40 * a2, v19);
      v12 = static AnyHashable.== infix(_:_:)();
      result = sub_10003DB48(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10010B27C(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_100109EBC();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100128A2C();
      goto LABEL_16;
    }

    sub_10010C334();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  v9 = (v5 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
  String.hash(into:)();
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for ImageLoader();
    do
    {
      v12 = (*(*(v8 + 48) + 8 * a2) + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
      if (*v12 == *v9 && v12[1] == v9[1])
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v5;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10010B410(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v23 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a4)
  {
    sub_10010A118();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_100128A40();
      goto LABEL_21;
    }

    sub_10010C5C8();
  }

  v9 = *v4;
  Hasher.init(_seed:)();
  if (a2 >= 9)
  {
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(qword_100184910[a2]);
  }

  result = Hasher._finalize()();
  v10 = -1 << *(v9 + 32);
  a3 = result & ~v10;
  if ((*(v9 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v11 = ~v10;
    do
    {
      v12 = (*(v9 + 48) + 16 * a3);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();
      if (v14 >= 9)
      {

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(qword_100184910[v14]);
        sub_100078568(v13, v14);
      }

      v15 = Hasher._finalize()();
      Hasher.init(_seed:)();
      if (a2 >= 9)
      {
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(qword_100184910[a2]);
      }

      v16 = Hasher._finalize()();
      result = sub_1000784F0(v13, v14);
      if (v15 == v16)
      {
        goto LABEL_24;
      }

      a3 = (a3 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_21:
  v17 = *v22;
  *(*v22 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = v23;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_24:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10010B640(Swift::Int result, unint64_t a2, char a3)
{
  v27 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10010A398();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_100128B9C();
      goto LABEL_16;
    }

    sub_10010C82C();
  }

  v7 = *v3;
  Hasher.init(_seed:)();
  v8 = [*(v27 + 40) serialNumber];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.hash(into:)();

  result = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    type metadata accessor for CardState();
    do
    {
      v11 = *(*(*(v7 + 48) + 8 * a2) + 40);

      v12 = [v11 serialNumber];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = [*(v27 + 40) serialNumber];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if (v13 == v17 && v15 == v19)
      {
        goto LABEL_19;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v22 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + 8 * a2) = v27;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v22 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10010B894(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10010A628();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100128CF0();
      goto LABEL_16;
    }

    sub_10010CA98();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10010BA14(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v22 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_10010A888();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100128E4C();
      goto LABEL_28;
    }

    sub_10010CCD0();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  if (v5)
  {
    v9 = 0x776569766572;
  }

  else
  {
    v9 = 0;
  }

  if (v5)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  String.hash(into:)();

  result = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v8 + 48) + a2) ? 0x776569766572 : 0;
      v14 = *(*(v8 + 48) + a2) ? 0xE600000000000000 : 0xE000000000000000;
      if (v13 == v9 && v14 == v10)
      {
        goto LABEL_31;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_32;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v22 & 1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_31:

LABEL_32:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10010BBFC()
{
  v1 = v0;
  v2 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10003C49C(&qword_100201A28);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_10010EDC4(v19 + v20 * (v16 | (v8 << 6)), v4);
      Hasher.init(_seed:)();
      NSObject.hash(into:)();
      Hasher._combine(_:)(v4[8]);
      Hasher._combine(_:)(*(v4 + 2));
      type metadata accessor for Date();
      sub_10010ED6C();
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_10003DBF4(v4, *(v7 + 48) + v15 * v20);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_10010BEF4()
{
  v1 = v0;
  v2 = *v0;
  sub_10003C49C(&qword_100201A30);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = NSObject._rawHashValue(seed:)(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10010C108()
{
  v1 = v0;
  v2 = *v0;
  sub_10003C49C(&unk_100202980);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      sub_1000681EC(*(v2 + 48) + 40 * (v15 | (v5 << 6)), v25);
      result = AnyHashable._rawHashValue(seed:)(*(v4 + 40));
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v11 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 40 * v11;
      v13 = v25[0];
      v14 = v25[1];
      *(v12 + 32) = v26;
      *v12 = v13;
      *(v12 + 16) = v14;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10010C334()
{
  v1 = v0;
  v2 = *v0;
  sub_10003C49C(&qword_100201A00);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_10010C574()
{
  result = qword_100201A08;
  if (!qword_100201A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201A08);
  }

  return result;
}

uint64_t sub_10010C5C8()
{
  v1 = v0;
  v2 = *v0;
  sub_10003C49C(&qword_100201A38);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v18 = *v16;
      v17 = v16[1];
      Hasher.init(_seed:)();
      if (v17 >= 9)
      {

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(qword_100184910[v17]);
        sub_100078568(v18, v17);
      }

      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v18;
      v12[1] = v17;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_29;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10010C82C()
{
  v1 = v0;
  v2 = *v0;
  sub_10003C49C(&qword_100201A18);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      v17 = *(v16 + 40);

      v18 = [v17 serialNumber];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      String.hash(into:)();

      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10010CA98()
{
  v1 = v0;
  v2 = *v0;
  sub_10003C49C(&qword_100201A40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10010CCD0()
{
  v1 = v0;
  v2 = *v0;
  sub_10003C49C(&qword_100201A48);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

void *sub_10010CF18(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_10003C49C(&qword_100201A10);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v5;
  }

  return result;
}

uint64_t sub_10010CFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54[1] = a4;
  v54[0] = a3;
  v68 = sub_10003C49C(&qword_1001FDF98);
  v6 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = v54 - v7;
  v62 = type metadata accessor for DispatchTimeInterval();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v58 = (v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = type metadata accessor for DispatchTime();
  v59 = *(v60 - 8);
  v9 = __chkstk_darwin(v60);
  v56 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = v54 - v11;
  v12 = dispatch_group_create();
  v13 = swift_allocObject();
  v14 = *(a1 + 16);
  *(v13 + 16) = sub_10010CF18(0, v14);
  v55 = (v13 + 16);
  v64 = v13;
  v65 = v12;
  v70 = v14;
  if (v14)
  {
    v15 = 0;
    v66 = (v6 + 8);
    v16 = (a1 + 40);
    v63 = xmmword_10017EC00;
    v69 = a2;
    do
    {
      v27 = *(v16 - 1);
      v28 = *v16;

      dispatch_group_enter(v12);
      v29 = swift_allocObject();
      v29[2] = v13;
      v29[3] = v15;
      v74 = v29;
      v29[4] = v12;
      v30 = *(a2 + 40);
      swift_retain_n();
      v31 = v12;
      [v30 lock];
      v32 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v32 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {

        type metadata accessor for ImageLoader();
        v17 = swift_allocObject();
        v75[1] = 0;
        v75[2] = 0;
        v76 = 2;
        Published.init(initialValue:)();
        v72 = v30;
        v18 = OBJC_IVAR____TtC11Diagnostics11ImageLoader_lock;
        *(v17 + v18) = [objc_allocWithZone(NSLock) init];
        *(v17 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) = 0;
        v19 = (v17 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
        *v19 = v27;
        v19[1] = v28;
        swift_beginAccess();

        sub_10003C49C(&qword_1001FDFA0);
        v20 = v67;
        Published.projectedValue.getter();
        swift_endAccess();
        v21 = swift_allocObject();
        v73 = v15;
        v22 = v74;
        v21[2] = sub_10010F00C;
        v21[3] = v22;
        v21[4] = a2;
        v21[5] = v17;
        sub_100107FEC();

        v71 = v28;
        v23 = v13;
        v24 = v12;
        v25 = v68;
        Publisher<>.sink(receiveValue:)();

        v26 = v25;
        v12 = v24;
        v13 = v23;
        (*v66)(v20, v26);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        swift_beginAccess();

        sub_100108C88(v75, v17);
        swift_endAccess();

        sub_100086EF0();
        [v72 unlock];

        v15 = v73;
      }

      else
      {
        [v30 unlock];
        sub_10010C574();
        swift_allocError();
        *v33 = 0;
        v33[1] = 0;
        swift_errorRetain();
        static os_log_type_t.error.getter();
        sub_10003C49C(&unk_1001FEAD0);
        v34 = swift_allocObject();
        *(v34 + 16) = v63;
        swift_getErrorValue();
        v35 = Error.localizedDescription.getter();
        v37 = v36;
        *(v34 + 56) = &type metadata for String;
        *(v34 + 64) = sub_10003DFBC();
        *(v34 + 32) = v35;
        *(v34 + 40) = v37;
        v13 = v64;
        sub_10003E110(0, &qword_1001FD6F0);
        v38 = static OS_os_log.default.getter();
        v12 = v65;
        os_log(_:dso:log:_:_:)();

        dispatch_group_leave(v31);
      }

      ++v15;
      v16 += 2;
      a2 = v69;
    }

    while (v70 != v15);
  }

  v39 = v56;
  static DispatchTime.now()();
  v40 = v58;
  *v58 = 10;
  v41 = v61;
  v42 = v62;
  (*(v61 + 104))(v40, enum case for DispatchTimeInterval.seconds(_:), v62);
  v43 = v57;
  + infix(_:_:)();
  (*(v41 + 8))(v40, v42);
  v44 = *(v59 + 8);
  v45 = v60;
  v44(v39, v60);
  OS_dispatch_group.wait(timeout:)();
  v44(v43, v45);
  v46 = v55;
  swift_beginAccess();
  v47 = *v46;
  v48 = _swiftEmptyArrayStorage;
  v75[0] = _swiftEmptyArrayStorage;
  v49 = *(v47 + 16);

  for (i = 0; ; ++i)
  {
    if (v49 == i)
    {

      *v54[0] = v48;

      OS_dispatch_semaphore.signal()();
    }

    if (i >= *(v47 + 16))
    {
      break;
    }

    v52 = *(v47 + 8 * i + 32);
    if (v52)
    {
      v53 = v52;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v48 = v75[0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10010D8B0(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a7;
  v34 = a8;
  v14 = sub_10003C49C(&qword_1001FDF98);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v19 = *(a3 + 40);

  [v19 lock];
  v20 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v31 = a9;
    type metadata accessor for ImageLoader();
    v21 = swift_allocObject();
    v35[1] = 0;
    v35[2] = 0;
    v36 = 2;
    Published.init(initialValue:)();
    v32 = v19;
    v22 = OBJC_IVAR____TtC11Diagnostics11ImageLoader_lock;
    *(v21 + v22) = [objc_allocWithZone(NSLock) init];
    *(v21 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) = 0;
    v23 = (v21 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
    *v23 = a1;
    v23[1] = a2;
    swift_beginAccess();

    sub_10003C49C(&qword_1001FDFA0);
    Published.projectedValue.getter();
    swift_endAccess();
    v24 = swift_allocObject();
    v24[2] = v34;
    v24[3] = v18;
    v24[4] = a3;
    v24[5] = v21;
    sub_100107FEC();

    Publisher<>.sink(receiveValue:)();

    (*(v15 + 8))(v17, v14);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();

    sub_100108C88(v35, v21);
    swift_endAccess();

    sub_100086EF0();
    [v32 unlock];
  }

  else
  {
    [v19 unlock];
    sub_10010C574();
    swift_allocError();
    *v25 = 0;
    v25[1] = 0;
    swift_errorRetain();
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    sub_10003C49C(&unk_1001FEAD0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10017EC00;
    swift_getErrorValue();
    v27 = Error.localizedDescription.getter();
    v29 = v28;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_10003DFBC();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    os_log(_:dso:log:type:_:)();

    a4(0);
  }
}

uint64_t sub_10010DCF4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_10003C49C(&qword_1001FDF98);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v13 = *(a3 + 40);
  v14 = a4;
  [v13 lock];
  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    type metadata accessor for ImageLoader();
    v16 = swift_allocObject();
    v30[1] = 0;
    v30[2] = 0;
    v31 = 2;
    Published.init(initialValue:)();
    v29 = v13;
    v17 = v12;
    v18 = OBJC_IVAR____TtC11Diagnostics11ImageLoader_lock;
    *(v16 + v18) = [objc_allocWithZone(NSLock) init];
    *(v16 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) = 0;
    v19 = (v16 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
    *v19 = a1;
    v19[1] = a2;
    swift_beginAccess();

    sub_10003C49C(&qword_1001FDFA0);
    Published.projectedValue.getter();
    swift_endAccess();
    v20 = swift_allocObject();
    v20[2] = sub_10010EEA0;
    v20[3] = v17;
    v20[4] = a3;
    v20[5] = v16;
    sub_100107FEC();

    Publisher<>.sink(receiveValue:)();

    (*(v9 + 8))(v11, v8);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();

    sub_100108C88(v30, v16);
    swift_endAccess();

    sub_100086EF0();
    [v29 unlock];
  }

  else
  {
    [v13 unlock];
    sub_10010C574();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0;
    swift_errorRetain();
    static os_log_type_t.error.getter();
    sub_10003C49C(&unk_1001FEAD0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10017EC00;
    swift_getErrorValue();
    v23 = Error.localizedDescription.getter();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_10003DFBC();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    sub_10003E110(0, &qword_1001FD6F0);
    v26 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_10010E128(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void, uint64_t), uint64_t a5)
{
  v10 = sub_10003C49C(&qword_1001FDF98);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v15 = *(a3 + 40);

  [v15 lock];
  v16 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    type metadata accessor for ImageLoader();
    v17 = swift_allocObject();
    v24[1] = 0;
    v24[2] = 0;
    v25 = 2;
    Published.init(initialValue:)();
    v23 = v15;
    v18 = OBJC_IVAR____TtC11Diagnostics11ImageLoader_lock;
    *(v17 + v18) = [objc_allocWithZone(NSLock) init];
    *(v17 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) = 0;
    v19 = (v17 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
    *v19 = a1;
    v19[1] = a2;
    swift_beginAccess();

    sub_10003C49C(&qword_1001FDFA0);
    Published.projectedValue.getter();
    swift_endAccess();
    v20 = swift_allocObject();
    v20[2] = sub_10010E4D4;
    v20[3] = v14;
    v20[4] = a3;
    v20[5] = v17;
    sub_100107FEC();

    Publisher<>.sink(receiveValue:)();

    (*(v11 + 8))(v13, v10);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();

    sub_100108C88(v24, v17);
    swift_endAccess();

    sub_100086EF0();
    [v23 unlock];
  }

  else
  {
    [v15 unlock];
    a4(0, 1);
  }
}

uint64_t sub_10010E49C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10010E4E4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v55 = a4;
  v54 = a3;
  v69 = sub_10003C49C(&qword_1001FDF98);
  v6 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v54 - v7;
  v63 = type metadata accessor for DispatchTimeInterval();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v59 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for DispatchTime();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v58 = &v54 - v11;
  v12 = dispatch_group_create();
  v13 = swift_allocObject();
  v14 = *(a1 + 16);
  *(v13 + 16) = sub_10010CF18(0, v14);
  v56 = (v13 + 16);
  v65 = v12;
  v66 = v13;
  v71 = v14;
  if (v14)
  {
    v15 = 0;
    v67 = (v6 + 8);
    v16 = (a1 + 40);
    v64 = xmmword_10017EC00;
    v70 = a2;
    do
    {
      v27 = *(v16 - 1);
      v28 = *v16;

      dispatch_group_enter(v12);
      v29 = swift_allocObject();
      v29[2] = v13;
      v29[3] = v15;
      v75 = v29;
      v29[4] = v12;
      v30 = *(a2 + 40);
      swift_retain_n();
      v31 = v12;
      [v30 lock];
      v32 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v32 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {

        type metadata accessor for ImageLoader();
        v17 = swift_allocObject();
        v76[1] = 0;
        v76[2] = 0;
        v77 = 2;
        Published.init(initialValue:)();
        v73 = v30;
        v18 = OBJC_IVAR____TtC11Diagnostics11ImageLoader_lock;
        *(v17 + v18) = [objc_allocWithZone(NSLock) init];
        *(v17 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) = 0;
        v19 = (v17 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
        *v19 = v27;
        v19[1] = v28;
        swift_beginAccess();

        sub_10003C49C(&qword_1001FDFA0);
        v20 = v68;
        Published.projectedValue.getter();
        swift_endAccess();
        v21 = swift_allocObject();
        v74 = v15;
        v22 = v75;
        v21[2] = sub_10010ED60;
        v21[3] = v22;
        v21[4] = a2;
        v21[5] = v17;
        sub_100107FEC();

        v72 = v28;
        v23 = v13;
        v24 = v12;
        v25 = v69;
        Publisher<>.sink(receiveValue:)();

        v26 = v25;
        v12 = v24;
        v13 = v23;
        (*v67)(v20, v26);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        swift_beginAccess();

        sub_100108C88(v76, v17);
        swift_endAccess();

        sub_100086EF0();
        [v73 unlock];

        v15 = v74;
      }

      else
      {
        [v30 unlock];
        sub_10010C574();
        swift_allocError();
        *v33 = 0;
        v33[1] = 0;
        swift_errorRetain();
        static os_log_type_t.error.getter();
        sub_10003C49C(&unk_1001FEAD0);
        v34 = swift_allocObject();
        *(v34 + 16) = v64;
        swift_getErrorValue();
        v35 = Error.localizedDescription.getter();
        v37 = v36;
        *(v34 + 56) = &type metadata for String;
        *(v34 + 64) = sub_10003DFBC();
        *(v34 + 32) = v35;
        *(v34 + 40) = v37;
        v13 = v66;
        sub_10003E110(0, &qword_1001FD6F0);
        v38 = static OS_os_log.default.getter();
        v12 = v65;
        os_log(_:dso:log:_:_:)();

        dispatch_group_leave(v31);
      }

      ++v15;
      v16 += 2;
      a2 = v70;
    }

    while (v71 != v15);
  }

  v39 = v57;
  static DispatchTime.now()();
  v40 = v59;
  *v59 = 10;
  v41 = v62;
  v42 = v63;
  (*(v62 + 104))(v40, enum case for DispatchTimeInterval.seconds(_:), v63);
  v43 = v58;
  + infix(_:_:)();
  (*(v41 + 8))(v40, v42);
  v44 = *(v60 + 8);
  v45 = v61;
  v44(v39, v61);
  v46 = v12;
  OS_dispatch_group.wait(timeout:)();
  v44(v43, v45);
  v47 = v56;
  swift_beginAccess();
  v48 = *v47;
  v76[0] = _swiftEmptyArrayStorage;
  v49 = *(v48 + 16);

  for (i = 0; ; ++i)
  {
    if (v49 == i)
    {

      sub_1000EFD24(v54, v55);
    }

    if (i >= *(v48 + 16))
    {
      break;
    }

    v52 = *(v48 + 8 * i + 32);
    if (v52)
    {
      v53 = v52;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v46 = v65;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10010ED24()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10010ED6C()
{
  result = qword_100201A20;
  if (!qword_100201A20)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201A20);
  }

  return result;
}

uint64_t sub_10010EDC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010EE28()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10010EE68()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10010EEA8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10010EEF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10010EF40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10010EF94(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10010EFAC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_10010F060()
{
  v1 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10003DAAC(v2, qword_10020A510);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    type metadata accessor for DSHardwareButtonEvents(0);
    v7 = String.init<A>(describing:)();
    v9 = sub_100056B7C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Consuming %s event", v5, 0xCu);
    sub_100044554(v6);
  }

  v10 = *(v1 + OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler);
  if (v10)
  {

    v10(v11);
    sub_10003C52C(v10);
  }
}

id sub_10010F244()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ButtonEventsConsumer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10010F2B0()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10010F35C;

  return sub_10010F978();
}

uint64_t sub_10010F35C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010F498, v1, v0);
}

uint64_t sub_10010F498()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_10010F4F8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentVerticalMargin] = 0x4032000000000000;
  *&v4[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentLeadingMargin] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentTrailingMargin] = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_chevronTrailingMargin] = 0xC020000000000000;
  *&v4[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_mainStackViewSpacing] = 0x4028000000000000;
  v9 = OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_mainLayout;
  *&v4[v9] = [objc_allocWithZone(UIStackView) init];
  v10 = OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_imageView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = &v4[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentView];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_fileBrowsingURL] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for ReviewableFileView();
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  sub_10010F67C();

  return v12;
}

void sub_10010F67C()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_mainLayout];
  [v1 setAxis:0];
  [v1 setAlignment:3];
  [v1 setSpacing:12.0];
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_imageView];
  [v2 setContentMode:1];
  LODWORD(v3) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v3];
  [v0 addSubview:v1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10017ED60;
  v6 = [v1 leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [v1 trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [v1 topAnchor];
  v13 = [v0 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [v1 bottomAnchor];
  v16 = [v0 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];
}

uint64_t sub_10010F978()
{
  v1[2] = v0;
  sub_10003C49C(&unk_1001FFE20);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for UIListContentConfiguration();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v4;
  v1[9] = v3;

  return _swift_task_switch(sub_10010FAA4, v4, v3);
}

uint64_t sub_10010FAA4()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_mainLayout);
  v0[10] = v1;
  v2 = [v1 arrangedSubviews];
  sub_10003E110(0, &qword_1001FF090);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  v9 = v0[2];

  v10 = *(v9 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_fileBrowsingURL);
  v0[11] = v10;
  if (v10)
  {
    v11 = v0[3];
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v10;
    swift_retain_n();
    v14 = sub_1001101E4(0, 0, v11, &unk_1001849D8, v13);
    v0[12] = v14;
    sub_10011064C(v11);
    v15 = swift_task_alloc();
    v0[13] = v15;
    *v15 = v0;
    v15[1] = sub_10010FD70;
    v16 = v0[6];
    v17 = v0[4];

    return Task<>.value.getter(v16, v14, v17);
  }

  else
  {

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10010FD70()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10010FEB4, v3, v2);
}

uint64_t sub_10010FEB4()
{
  UIListContentConfiguration.directionalLayoutMargins.setter();
  if (sub_1000AD234())
  {
    v1 = [objc_opt_self() secondaryLabelColor];
    v2 = objc_opt_self();
    v3 = [v2 configurationWithHierarchicalColor:v1];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v4 = [v2 configurationWithTraitCollection:0];

      v3 = v4;
    }

    v5 = *(v0[2] + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_imageView);
    v6 = v3;
    v7 = String._bridgeToObjectiveC()();
    v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

    if (v8)
    {
      v9 = [v8 imageWithAlignmentRectInsets:{0.0, 0.0, 0.0, -8.0}];
    }

    else
    {
      v9 = 0;
    }

    [v5 setImage:v9];
  }

  else
  {
    v5 = *(v0[2] + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_imageView);
    [v5 setImage:0];
  }

  v10 = v0[10];
  v11 = v0[6];
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[2];
  v15 = UIListContentConfiguration.makeContentView()();
  v16 = (v14 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentView);
  v17 = *(v14 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentView);
  *v16 = v15;
  v16[1] = v18;
  v19 = v15;

  [v10 addArrangedSubview:v19];

  [v10 addArrangedSubview:v5];

  (*(v13 + 8))(v11, v12);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100110164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100110184, 0, 0);
}

uint64_t sub_100110184()
{
  sub_1000AD404();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001101E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000F00F0(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10011064C(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      type metadata accessor for UIListContentConfiguration();

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  type metadata accessor for UIListContentConfiguration();
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_100110494()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReviewableFileView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100110558()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100110598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003DEC8;

  return sub_100110164(a1, v4, v5, v6);
}

uint64_t sub_10011064C(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FFE20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001106B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001106EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000494BC;

  return sub_100056908(a1, v4);
}

uint64_t sub_1001107A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003DEC8;

  return sub_100056908(a1, v4);
}

void sub_10011085C()
{
  *(v0 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentVerticalMargin) = 0x4032000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentLeadingMargin) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentTrailingMargin) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_chevronTrailingMargin) = 0xC020000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_mainStackViewSpacing) = 0x4028000000000000;
  v1 = OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_mainLayout;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_imageView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = (v0 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentView);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_fileBrowsingURL) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100110CC8(uint64_t a1)
{
  v28 = a1;
  v2 = type metadata accessor for TargetDevice();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003C49C(&qword_1001FFE10);
  v7 = __chkstk_darwin(v6 - 8);
  v27 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v26 = &v26 - v10;
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = sub_10003C49C(&qword_100201B80);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_device;
  swift_beginAccess();
  v18 = *(v14 + 56);
  sub_100044704(v1 + v17, v16, &qword_1001FFE10);
  sub_100044704(v28, &v16[v18], &qword_1001FFE10);
  v19 = *(v3 + 48);
  if (v19(v16, 1, v2) == 1)
  {
    if (v19(&v16[v18], 1, v2) == 1)
    {
      return sub_10003DD84(v16, &qword_1001FFE10);
    }

    goto LABEL_6;
  }

  sub_100044704(v16, v12, &qword_1001FFE10);
  if (v19(&v16[v18], 1, v2) == 1)
  {
    (*(v3 + 8))(v12, v2);
LABEL_6:
    sub_10003DD84(v16, &qword_100201B80);
LABEL_7:
    v20 = *(v1 + OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_targetDeviceView);
    v16 = v26;
    sub_100044704(v1 + v17, v26, &qword_1001FFE10);
    v21 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_device;
    swift_beginAccess();
    v22 = v27;
    sub_100044704(v20 + v21, v27, &qword_1001FFE10);
    swift_beginAccess();
    sub_10008CF1C(v16, v20 + v21);
    swift_endAccess();
    sub_100122594(v22);
    sub_10003DD84(v22, &qword_1001FFE10);
    return sub_10003DD84(v16, &qword_1001FFE10);
  }

  (*(v3 + 32))(v5, &v16[v18], v2);
  sub_100112D58();
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v3 + 8);
  v25(v5, v2);
  v25(v12, v2);
  result = sub_10003DD84(v16, &qword_1001FFE10);
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1001110D4()
{
  v1 = sub_10003C49C(&unk_1001FFE20);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v51 = v0;
  v52 = &v43 - v5;
  v50 = *(v0 + OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_fileReviewStackView);
  v6 = [v50 arrangedSubviews];
  sub_10003E110(0, &qword_1001FF090);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      [v10 removeFromSuperview];

      ++v9;
      if (v12 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v13 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_files;
  v14 = *(v51 + OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_files);
  if (v14 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_16;
    }

LABEL_36:
    type metadata accessor for PaddedLabel();
    v52 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000022, 0x8000000100192A70);
    v37 = String._bridgeToObjectiveC()();

    [v52 setText:v37];

    v38 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v52 setFont:v38];

    v39 = [objc_opt_self() secondaryLabelColor];
    [v52 setTextColor:v39];

    [v52 setTextAlignment:1];
    v40 = v52;
    v41 = &v52[OBJC_IVAR____TtC11DiagnosticsP33_8A86E77067E9CB1515C284E58CEE59BA11PaddedLabel_padding];
    *v41 = xmmword_1001849F0;
    *(v41 + 1) = xmmword_1001849F0;
    [v40 invalidateIntrinsicContentSize];
    [v50 addArrangedSubview:v52];
    v42 = v52;

    return;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

LABEL_16:
  v15 = *(v51 + v13);
  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (!v16)
    {
      return;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      return;
    }
  }

  type metadata accessor for ReviewableFileView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v48 = type metadata accessor for MainActor();
  if (v16 < 1)
  {
    __break(1u);
  }

  else
  {
    v44 = v15 & 0xC000000000000001;
    v45 = "handleFileTapped:";

    v17 = 0;
    v18 = &unk_1001FFE20;
    v46 = v16;
    v47 = v15;
    do
    {
      if (v44)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v15 + 8 * v17 + 32);
      }

      v24 = [objc_allocWithZone(ObjCClassFromMetadata) init];
      *&v24[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_fileBrowsingURL] = v23;
      swift_retain_n();

      v25 = type metadata accessor for TaskPriority();
      v26 = *(v25 - 8);
      v27 = v52;
      (*(v26 + 56))(v52, 1, 1, v25);
      v28 = v24;
      v29 = static MainActor.shared.getter();
      v30 = swift_allocObject();
      v30[2] = v29;
      v30[3] = &protocol witness table for MainActor;
      v30[4] = v28;
      sub_100044704(v27, v4, v18);
      LODWORD(v29) = (*(v26 + 48))(v4, 1, v25);

      if (v29 == 1)
      {
        sub_10003DD84(v4, v18);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v26 + 8))(v4, v25);
      }

      v31 = v18;
      v32 = v30[2];
      swift_unknownObjectRetain();

      if (v32)
      {
        swift_getObjectType();
        v33 = dispatch thunk of Actor.unownedExecutor.getter();
        v35 = v34;
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      sub_10003DD84(v52, v31);
      v36 = swift_allocObject();
      *(v36 + 16) = &unk_100184A58;
      *(v36 + 24) = v30;
      if (v35 | v33)
      {
        v53 = 0;
        v54 = 0;
        v55 = v33;
        v56 = v35;
      }

      v19 = v46;
      v15 = v47;
      ++v17;
      swift_task_create();

      v20 = objc_allocWithZone(UITapGestureRecognizer);
      v21 = [v20 initWithTarget:v51 action:v45];
      [v28 addGestureRecognizer:v21];

      [v50 addArrangedSubview:v28];

      v22 = v19 == v17;
      v18 = v31;
    }

    while (!v22);
  }
}

void sub_1001117C0()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_fileReviewStackView];
  [v1 setAxis:1];
  [v1 setSpacing:0.0];
  [v0 setSelectionStyle:0];
  v2 = [objc_opt_self() systemGroupedBackgroundColor];
  [v0 setBackgroundColor:v2];

  if (_UISolariumEnabled())
  {
    v3 = [v0 layer];
    [v3 setCornerRadius:26.0];
  }
}

void sub_1001118C0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expandableContentView;
  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expandableContentView];
  v4 = *&v0[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_targetDeviceView];
  v5 = v3;
  v6 = v4;
  sub_100131CE8(v4);

  v7 = *&v1[v2];
  v8 = *&v1[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_fileReviewStackView];
  v9 = *&v7[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_detailsView];
  *&v7[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_detailsView] = v8;
  v10 = v8;
  v11 = v7;
  sub_100131DB8(v9);

  v12 = [v1 contentView];
  [v12 addSubview:*&v1[v2]];

  v13 = [v1 contentView];
  [v13 invalidateIntrinsicContentSize];

  sub_1001110D4();
}

void sub_1001119D8()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_targetDeviceView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expandableContentView;
  [*&v0[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expandableContentView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10017EDA0;
  v5 = [v1 heightAnchor];
  v6 = [v5 constraintEqualToConstant:80.0];

  *(v4 + 32) = v6;
  v7 = [*&v0[v2] leadingAnchor];
  v8 = [v0 contentView];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor:v9];
  *(v4 + 40) = v10;
  v11 = [*&v0[v2] trailingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 trailingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13];
  *(v4 + 48) = v14;
  v15 = [*&v0[v2] topAnchor];
  v16 = [v0 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor:v17];
  *(v4 + 56) = v18;
  v19 = [*&v0[v2] bottomAnchor];
  v20 = [v0 contentView];
  v21 = [v20 bottomAnchor];

  v22 = [v19 constraintEqualToAnchor:v21];
  *(v4 + 64) = v22;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

void sub_100111D0C()
{
  v1 = sub_10003C49C(&qword_1001FFE10);
  __chkstk_darwin(v1 - 8);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v14[-v5];
  v7 = type metadata accessor for DeviceFileReviewCell();
  v15.receiver = v0;
  v15.super_class = v7;
  objc_msgSendSuper2(&v15, "prepareForReuse");
  v8 = type metadata accessor for TargetDevice();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_device;
  swift_beginAccess();
  sub_100044704(&v0[v9], v3, &qword_1001FFE10);
  swift_beginAccess();
  sub_10008CF1C(v6, &v0[v9]);
  swift_endAccess();
  sub_100110CC8(v3);
  sub_10003DD84(v3, &qword_1001FFE10);
  sub_10003DD84(v6, &qword_1001FFE10);
  v10 = *&v0[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_files];
  *&v0[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_files] = _swiftEmptyArrayStorage;
  v11 = sub_10011291C(_swiftEmptyArrayStorage, v10);

  if ((v11 & 1) == 0)
  {
    sub_1001110D4();
  }

  v12 = *&v0[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expandableContentView];
  v12[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_isExpanded] = 0;
  v13 = v12;
  sub_1001321AC();
}

void sub_100111F3C(void *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v6 = v2;
    type metadata accessor for ReviewableFileView();
    v3 = swift_dynamicCastClass();
    if (v3 && (v4 = *(v3 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_fileBrowsingURL)) != 0 && (v5 = *(v1 + OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_didSelectURL)) != 0)
    {

      sub_10003C48C(v5);
      v5(v4);
      sub_10005A598(v5);
    }

    else
    {
    }
  }
}

void sub_1001120B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_headerViewHeight] = 0x4054000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expansionViewCornerRadius] = 0x403A000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_noFilesVerticalPadding] = 0x4038000000000000;
  v7 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_device;
  v8 = type metadata accessor for TargetDevice();
  v9 = *(*(v8 - 8) + 56);
  v9(&v4[v7], 1, 1, v8);
  *&v4[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_files] = _swiftEmptyArrayStorage;
  v10 = &v4[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_didSelectURL];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expandableContentView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for ExpandableSection()) init];
  sub_10008CB7C(v25);
  v12 = type metadata accessor for TargetDeviceDescriptionView();
  v13 = objc_allocWithZone(v12);
  v9(&v13[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_device], 1, 1, v8);
  *&v13[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView] = 0;
  *&v13[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_detailsStackView] = 0;
  *&v13[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView] = 0;
  v14 = &v13[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration];
  *v14 = v25[0];
  v15 = v25[1];
  v16 = v25[2];
  v17 = v25[3];
  *(v14 + 8) = v26;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 1) = v15;
  sub_1000CC778(v25, v24);
  v23.receiver = v13;
  v23.super_class = v12;
  v18 = objc_msgSendSuper2(&v23, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1001229B0();
  if (*&v18[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView])
  {
    v19 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_targetDeviceView;
    [v18 addSubview:?];
    sub_100122AFC();
    sub_100122E00();
    sub_1000CC900(v25);

    *&v4[v19] = v18;
    v20 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_fileReviewStackView;
    *&v4[v20] = [objc_allocWithZone(UIStackView) init];
    if (a3)
    {
      v21 = String._bridgeToObjectiveC()();
    }

    else
    {
      v21 = 0;
    }

    v22.receiver = v4;
    v22.super_class = type metadata accessor for DeviceFileReviewCell();
    objc_msgSendSuper2(&v22, "initWithStyle:reuseIdentifier:", a1, v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_1001123B4(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_headerViewHeight] = 0x4054000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expansionViewCornerRadius] = 0x403A000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_noFilesVerticalPadding] = 0x4038000000000000;
  v4 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_device;
  v5 = type metadata accessor for TargetDevice();
  v6 = *(*(v5 - 8) + 56);
  v6(&v2[v4], 1, 1, v5);
  *&v2[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_files] = _swiftEmptyArrayStorage;
  v7 = &v2[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_didSelectURL];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expandableContentView;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for ExpandableSection()) init];
  sub_10008CB7C(v22);
  v9 = type metadata accessor for TargetDeviceDescriptionView();
  v10 = objc_allocWithZone(v9);
  v6(&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_device], 1, 1, v5);
  *&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView] = 0;
  *&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_detailsStackView] = 0;
  *&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView] = 0;
  v11 = &v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration];
  *v11 = v22[0];
  v12 = v22[1];
  v13 = v22[2];
  v14 = v22[3];
  *(v11 + 8) = v23;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 1) = v12;
  sub_1000CC778(v22, v21);
  v20.receiver = v10;
  v20.super_class = v9;
  v15 = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1001229B0();
  if (*&v15[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView])
  {
    v16 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_targetDeviceView;
    [v15 addSubview:?];
    sub_100122AFC();
    sub_100122E00();
    sub_1000CC900(v22);

    *&v2[v16] = v15;
    v17 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_fileReviewStackView;
    *&v2[v17] = [objc_allocWithZone(UIStackView) init];
    v19.receiver = v2;
    v19.super_class = type metadata accessor for DeviceFileReviewCell();
    v18 = objc_msgSendSuper2(&v19, "initWithCoder:", a1);

    if (v18)
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100112670()
{
  sub_10003DD84(v0 + OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_device, &qword_1001FFE10);

  sub_10005A598(*(v0 + OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_didSelectURL));

  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_fileReviewStackView);
}

id sub_10011271C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for DeviceFileReviewCell()
{
  result = qword_100201B70;
  if (!qword_100201B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100112850()
{
  sub_1000CC568();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10011291C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            goto LABEL_26;
          }
        }

        specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        LOBYTE(v4) = static URL.== infix(_:_:)();

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v14 = (v3 + 32);
    v15 = (a2 + 32);
    v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v5 - 1;
    while (1)
    {
      if (!v16)
      {
        goto LABEL_40;
      }

      if (!v17)
      {
        break;
      }

      v19 = *v14++;
      a2 = v19;
      v20 = *v15++;
      v3 = v20;

      v4 = static URL.== infix(_:_:)();

      v22 = v18-- != 0;
      if (v4)
      {
        --v17;
        --v16;
        if (v22)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_100112B74()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100112BB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_10010F2B0();
}

uint64_t sub_100112C68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100112CA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003DEC8;

  return sub_100056810(a1, v4);
}

unint64_t sub_100112D58()
{
  result = qword_100201EE0;
  if (!qword_100201EE0)
  {
    type metadata accessor for TargetDevice();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201EE0);
  }

  return result;
}

uint64_t sub_100112DCC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_suiteLabel);
  v2 = objc_opt_self();
  v3 = [v2 defaultMetrics];
  v4 = objc_opt_self();
  v5 = [v4 boldSystemFontOfSize:14.0];
  v6 = [v3 scaledFontForFont:v5];

  [v1 setFont:v6];
  [v1 setNumberOfLines:0];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  [v1 setTextColor:v8];

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = *(v0 + OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_dateLabel);
  v10 = [v2 defaultMetrics];
  v11 = [v4 systemFontOfSize:14.0];
  v12 = [v10 scaledFontForFont:v11];

  [v9 setFont:v12];
  v13 = [v7 secondaryLabelColor];
  [v9 setTextColor:v13];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  return sub_10011351C();
}

void sub_100112FE0()
{
  v1 = [v0 contentView];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_suiteLabel]];

  v2 = [v0 contentView];
  [v2 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_dateLabel]];
}

void sub_100113084()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_suiteLabel];
  v35 = v1;
  v2 = [v1 leadingAnchor];
  v3 = [v0 contentView];
  v4 = [v3 leadingAnchor];

  v33 = [v2 constraintEqualToAnchor:v4 constant:15.0];
  v5 = [v1 trailingAnchor];
  v6 = [v0 contentView];
  v7 = [v6 trailingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:-15.0];
  v9 = *&v0[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_dateLabel];
  v10 = [v9 leadingAnchor];
  v11 = [v0 leadingAnchor];
  v38 = [v10 constraintEqualToAnchor:v11 constant:15.0];

  v12 = [v9 trailingAnchor];
  v13 = [v0 trailingAnchor];
  v36 = [v12 constraintEqualToAnchor:v13 constant:-15.0];

  LODWORD(v14) = 1148829696;
  [v33 setPriority:v14];
  LODWORD(v15) = 1148829696;
  [v8 setPriority:v15];
  LODWORD(v16) = 1148829696;
  [v38 setPriority:v16];
  LODWORD(v17) = 1148829696;
  [v36 setPriority:v17];
  v37 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100181CB0;
  v19 = [v35 topAnchor];
  v20 = [v0 contentView];
  v21 = [v20 topAnchor];

  v22 = [v19 constraintEqualToAnchor:v21 constant:12.0];
  *(v18 + 32) = v22;
  *(v18 + 40) = v33;
  *(v18 + 48) = v8;
  v34 = v33;
  v23 = v8;
  v24 = [v9 topAnchor];
  v25 = [v35 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:2.0];

  *(v18 + 56) = v26;
  v27 = [v9 bottomAnchor];
  v28 = [v0 contentView];
  v29 = [v28 bottomAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:-12.0];
  *(v18 + 64) = v30;
  *(v18 + 72) = v38;
  *(v18 + 80) = v36;
  sub_10007E540();
  v31 = v38;
  v32 = v36;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v37 activateConstraints:isa];
}

uint64_t sub_10011351C()
{
  [*&v0[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_suiteLabel] setAlpha:0.0];
  [*&v0[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_dateLabel] setAlpha:0.0];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = objc_opt_self();
  v6[4] = sub_1001139F0;
  v6[5] = v1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100031FA8;
  v6[3] = &unk_1001C7038;
  v3 = _Block_copy(v6);
  v4 = v0;

  [v2 animateWithDuration:0x10000 delay:v3 options:0 animations:0.375 completion:0.0];
  _Block_release(v3);
}

id sub_100113660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_fontSizeSuiteTitle] = 0x402C000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_fontSizeDate] = 0x402C000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_verticalMargin] = 0x4028000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_verticalPadding] = 0x4000000000000000;
  v6 = OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_suiteLabel;
  *&v3[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_dateLabel;
  *&v3[v7] = [objc_allocWithZone(UILabel) init];
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for HistoryTableViewCell();
  v9 = objc_msgSendSuper2(&v11, "initWithStyle:reuseIdentifier:", a1, v8);

  return v9;
}

id sub_1001137C0(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_fontSizeSuiteTitle] = 0x402C000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_fontSizeDate] = 0x402C000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_verticalMargin] = 0x4028000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_verticalPadding] = 0x4000000000000000;
  v3 = OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_suiteLabel;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_dateLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for HistoryTableViewCell();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_1001138D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_dateLabel);
}

id sub_100113914()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001139B8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1001139F0()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_suiteLabel) setAlpha:1.0];
  v2 = *(v1 + OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_dateLabel);

  return [v2 setAlpha:1.0];
}

uint64_t sub_100113A50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100113A68()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer];
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  [v1 setBackgroundColor:v2];

  v3 = [v1 layer];
  if (qword_1001FC750 != -1)
  {
    swift_once();
  }

  [v3 setCornerRadius:*&qword_10020A3D8];

  [v1 setClipsToBounds:0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView];
  [v4 setAxis:1];
  [v4 setDistribution:0];
  [v4 setAlignment:0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = *&v0[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView];
  v6 = type metadata accessor for CardViewSessionCell();
  v14 = v6;
  v15 = &off_1001C7078;
  v13[0] = v0;
  v7 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_delegate;
  swift_beginAccess();
  v8 = v0;
  sub_1001196C4(v13, v5 + v7, &unk_1001FD4D0);
  swift_endAccess();
  v9 = *&v8[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_deviceInformationView];
  v14 = v6;
  v15 = &off_1001C7060;
  v13[0] = v8;
  v10 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_delegate;
  swift_beginAccess();
  v11 = v8;
  sub_1001196C4(v13, v9 + v10, &qword_1001FD030);
  return swift_endAccess();
}

void sub_100113CA0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer];
  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView];
  [v2 addSubview:v3];
  v4 = [v1 contentView];
  [v4 addSubview:v2];

  v5 = *&v1[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_deviceInformationView];
  v6 = [v3 arrangedSubviews];
  sub_10003E110(0, &qword_1001FF090);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1000E9D04(v5, v8, 0);
}

uint64_t sub_100113DC4()
{
  *(*(v0 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_deviceInformationView) + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_state) = *(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState);
  swift_retain_n();

  sub_10003E6C8();
}

void sub_100113E48(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v6 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  if (*(a1 + 19) != 1)
  {
    sub_10003E110(0, &qword_1001FD040);
    v43 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v44 = *(v10 + 8);
    v44(v12, v9);
    v25 = swift_allocObject();
    *(v25 + 16) = v1;
    aBlock[4] = sub_1001196A0;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C7650;
    v26 = _Block_copy(aBlock);
    v27 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10005BD2C();
    sub_10003C49C(&unk_1001FD050);
    sub_1000446A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v28 = v43;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v26);

    (*(v46 + 8))(v5, v3);
    (*(v6 + 8))(v8, v45);
    v44(v15, v9);
    return;
  }

  v16 = sub_100066608();
  type metadata accessor for DashboardViewController();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {

    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();

    os_log(_:dso:log:type:_:)();
    return;
  }

  v18 = *(v17 + OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager);
  v19 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  swift_beginAccess();
  v20 = *(v18 + v19);
  if (!*(v20 + 16))
  {
    v24 = 0;
    goto LABEL_19;
  }

  v21 = sub_100068EB8(1);
  if (v22)
  {
    v23 = *(*(v20 + 56) + 8 * v21);
    if (v23 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (!*(v20 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!*(v20 + 16))
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v24 = 0;
    if (!*(v20 + 16))
    {
      goto LABEL_19;
    }
  }

  v29 = sub_100068EB8(0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_19;
  }

  v31 = *(*(v20 + 56) + 8 * v29);
  if (v31 >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
    v33 = __OFADD__(v24, v42);
    v24 += v42;
    if (v33)
    {
      goto LABEL_34;
    }

LABEL_19:
    v34 = *(a1 + 40);
    v35 = [v34 suiteName];
    if (!v35)
    {

      return;
    }

    v36 = v35;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v37;

    v8 = *(a1 + 56);
    if (!v8)
    {

      return;
    }

    v19 = *(a1 + 64);

    v38 = [v34 sessionSettings];
    v39 = [v38 fullscreenPromptsEnabled];

    if (v39)
    {
      goto LABEL_28;
    }

    if (qword_1001FC838 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v33 = __OFADD__(v24, v32);
  v24 += v32;
  if (!v33)
  {
    goto LABEL_19;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  swift_once();
LABEL_23:
  v40 = sub_100066608();
  v41 = [v40 presentedViewController];

  if (v41)
  {

LABEL_28:
    sub_100117874(v20, v5, v8, v19);
    sub_10003C52C(v8);

    return;
  }

  if (v24 >= 2)
  {
    goto LABEL_28;
  }

  v8(1);

  sub_10003C52C(v8);
}

void sub_1001144D4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_deviceInformationView);
  *(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelType) = a1;
  v3 = *(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel);
  v4 = &OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_serialNumber;
  if (a1)
  {
    v4 = &OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imei;
  }

  if (*(v2 + *v4 + 8))
  {

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v3 setText:v5];
}

void sub_1001145A4(void *a1)
{
  if (a1)
  {
    v56 = a1;
    [v56 floatValue];
    v3 = v2 / 100.0;
    v4 = *(v1 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView);
    v5 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView;
    v6 = *(v4 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView);
    v7 = OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView;
    v8 = *&v6[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView];
    [v8 alpha];
    if (v3 >= 0.0)
    {
      if (v9 == 1.0)
      {
        [v8 alpha];
        if (v31 == 1.0)
        {
          v32 = swift_allocObject();
          *(v32 + 16) = v8;
          v33 = objc_opt_self();
          v61 = sub_10004487C;
          v62 = v32;
          aBlock = _NSConcreteStackBlock;
          v58 = 1107296256;
          v59 = sub_100031FA8;
          v60 = &unk_1001C74E8;
          v34 = _Block_copy(&aBlock);
          v35 = v8;

          [v33 animateWithDuration:0x20000 delay:v34 options:0 animations:0.125 completion:0.0];
          _Block_release(v34);
        }
      }

      v36 = *&v6[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView];
      v37 = swift_allocObject();
      *(v37 + 16) = v6;
      v38 = v6;
      sub_10006D6C4(v36, sub_100119F94, v37);

      v39 = *&v38[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView];
      [v39 alpha];
      if (v40 == 1.0)
      {
        [v39 alpha];
        if (v41 == 1.0)
        {
          v42 = swift_allocObject();
          *(v42 + 16) = v39;
          v43 = objc_opt_self();
          v61 = sub_10004487C;
          v62 = v42;
          aBlock = _NSConcreteStackBlock;
          v58 = 1107296256;
          v59 = sub_100031FA8;
          v60 = &unk_1001C7498;
          v44 = _Block_copy(&aBlock);
          v45 = v39;

          [v43 animateWithDuration:0x20000 delay:v44 options:0 animations:0.125 completion:0.0];
          _Block_release(v44);
        }
      }

      v46 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView;
      v47 = *(v4 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView);
      [v47 alpha];
      if (v48 == 0.0)
      {
        v49 = swift_allocObject();
        *(v49 + 16) = v47;
        v50 = objc_opt_self();
        v61 = sub_10003E440;
        v62 = v49;
        aBlock = _NSConcreteStackBlock;
        v58 = 1107296256;
        v59 = sub_100031FA8;
        v60 = &unk_1001C7448;
        v51 = _Block_copy(&aBlock);
        v52 = v47;

        [v50 animateWithDuration:0x10000 delay:v51 options:0 animations:0.375 completion:0.0];
        _Block_release(v51);
      }

      UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *(v4 + v46));
      [*(v4 + v46) progress];
      v54 = v53 < v3;
      *&v55 = v3;
      [*(v4 + v46) setProgress:v54 animated:v55];
    }

    else
    {
      if (v9 == 0.0)
      {
        [v8 alpha];
        if (v10 == 0.0)
        {
          v11 = swift_allocObject();
          *(v11 + 16) = v8;
          v12 = objc_opt_self();
          v61 = sub_10003E440;
          v62 = v11;
          aBlock = _NSConcreteStackBlock;
          v58 = 1107296256;
          v59 = sub_100031FA8;
          v60 = &unk_1001C7600;
          v13 = _Block_copy(&aBlock);
          v14 = v8;

          [v12 animateWithDuration:0x10000 delay:v13 options:0 animations:0.375 completion:0.0];
          _Block_release(v13);
        }
      }

      v15 = *&v6[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView];
      v16 = swift_allocObject();
      *(v16 + 16) = v6;
      v17 = v6;
      sub_10006D6C4(v15, sub_100119F94, v16);

      v18 = *&v17[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView];
      [v18 alpha];
      if (v19 == 1.0)
      {
        [v18 alpha];
        if (v20 == 1.0)
        {
          v21 = swift_allocObject();
          *(v21 + 16) = v18;
          v22 = objc_opt_self();
          v61 = sub_10004487C;
          v62 = v21;
          aBlock = _NSConcreteStackBlock;
          v58 = 1107296256;
          v59 = sub_100031FA8;
          v60 = &unk_1001C75B0;
          v23 = _Block_copy(&aBlock);
          v24 = v18;

          [v22 animateWithDuration:0x20000 delay:v23 options:0 animations:0.125 completion:0.0];
          _Block_release(v23);
        }
      }

      [*&v6[v7] startAnimating];
      UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *(v4 + v5));
      v25 = *(v4 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView);
      [v25 alpha];
      if (v26 == 1.0)
      {
        v27 = swift_allocObject();
        *(v27 + 16) = v25;
        v28 = objc_opt_self();
        v61 = sub_10004487C;
        v62 = v27;
        aBlock = _NSConcreteStackBlock;
        v58 = 1107296256;
        v59 = sub_100031FA8;
        v60 = &unk_1001C7560;
        v29 = _Block_copy(&aBlock);
        v30 = v25;

        [v28 animateWithDuration:0x20000 delay:v29 options:0 animations:0.125 completion:0.0];
        _Block_release(v29);

        return;
      }
    }
  }
}

void sub_100114D8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10004BDE0(1u, a1, a2);
  }

  else
  {
    sub_10004BDE0(0, a1, 0);

    sub_100118EC0();
  }
}

uint64_t sub_100114DF0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_deviceInformationView);
  v4 = [a1 displayDeviceIdentifier];
  *(v3 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierVisible) = v4;
  v5 = *(v3 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierLabel);
  [v5 alpha];
  if (!v4)
  {
    if (v6 == 1.0)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v5;
      v18 = objc_opt_self();
      v33 = sub_10004487C;
      v34 = v17;
      v29 = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_100031FA8;
      v32 = &unk_1001C7330;
      v19 = _Block_copy(&v29);
      v20 = v5;

      [v18 animateWithDuration:0x20000 delay:v19 options:0 animations:0.125 completion:0.0];
      _Block_release(v19);
    }

    v11 = *(v3 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView);
    [v11 alpha];
    if (v21 == 0.0)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = v11;
      v23 = objc_opt_self();
      v33 = sub_10003E440;
      v34 = v22;
      v29 = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_100031FA8;
      v32 = &unk_1001C72E0;
      v15 = _Block_copy(&v29);
      v16 = v11;

      [v23 animateWithDuration:0x10000 delay:v15 options:0 animations:0.375 completion:0.0];
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (v6 == 0.0)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = objc_opt_self();
    v33 = sub_10003E440;
    v34 = v7;
    v29 = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_100031FA8;
    v32 = &unk_1001C73D0;
    v9 = _Block_copy(&v29);
    v10 = v5;

    [v8 animateWithDuration:0x10000 delay:v9 options:0 animations:0.375 completion:0.0];
    _Block_release(v9);
  }

  v11 = *(v3 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView);
  [v11 alpha];
  if (v12 != 1.0)
  {
    goto LABEL_11;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = objc_opt_self();
  v33 = sub_10004487C;
  v34 = v13;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100031FA8;
  v32 = &unk_1001C7380;
  v15 = _Block_copy(&v29);
  v16 = v11;

  [v14 animateWithDuration:0x20000 delay:v15 options:0 animations:0.125 completion:0.0];
LABEL_10:
  _Block_release(v15);

LABEL_12:
  v24 = [a1 deviceIdentifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  return sub_10003F294(v25, v27);
}

id sub_10011529C(void *a1, uint64_t a2)
{
  sub_100118EC0();
  sub_100116098(1);
  return sub_10004287C(a1, a2);
}

id sub_1001152EC()
{
  sub_100118EC0();
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView);
  v2 = [*(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView) arrangedSubviews];
  sub_10003E110(0, &qword_1001FF090);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1000E9D04(v1, v4, 1);
  v5 = *&v1[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler];
  if (v5)
  {

    v5(v6);
    sub_10003C52C(v5);
  }

  sub_10004BDE0(0, 0, 0);
  return sub_10004287C(2, 5);
}

id sub_100115428()
{
  sub_100118EC0();
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView);
  v2 = [*(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView) arrangedSubviews];
  sub_10003E110(0, &qword_1001FF090);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1000E9D04(v1, v4, 1);
  v5 = *&v1[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler];
  if (v5)
  {

    v5(v6);
    sub_10003C52C(v5);
  }

  sub_10004287C(2, 5);
  sub_10004BDE0(4u, 0, 0);
  v7 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView;
  v8 = *&v1[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView];
  v33 = OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView;
  v9 = *&v8[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView];
  [v9 alpha];
  if (v10 == 0.0)
  {
    [v9 alpha];
    if (v11 == 0.0)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      v13 = objc_opt_self();
      v38 = sub_10003D8B8;
      v39 = v12;
      aBlock = _NSConcreteStackBlock;
      v35 = 1107296256;
      v36 = sub_100031FA8;
      v37 = &unk_1001C7290;
      v14 = _Block_copy(&aBlock);
      v15 = v9;

      [v13 animateWithDuration:0x10000 delay:v14 options:0 animations:0.375 completion:0.0];
      _Block_release(v14);
    }
  }

  v16 = *&v8[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView];
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  v18 = v8;
  sub_10006D6C4(v16, sub_100119660, v17);

  v19 = *&v18[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView];
  [v19 alpha];
  if (v20 == 1.0)
  {
    [v19 alpha];
    if (v21 == 1.0)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = v19;
      v32 = objc_opt_self();
      v38 = sub_10004487C;
      v39 = v22;
      aBlock = _NSConcreteStackBlock;
      v35 = 1107296256;
      v36 = sub_100031FA8;
      v37 = &unk_1001C7240;
      v23 = _Block_copy(&aBlock);
      v24 = v19;

      [v32 animateWithDuration:0x20000 delay:v23 options:0 animations:0.125 completion:0.0];
      _Block_release(v23);
    }
  }

  [*&v8[v33] startAnimating];
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *&v1[v7]);
  v25 = *&v1[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView];
  result = [v25 alpha];
  if (v27 == 1.0)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    v29 = objc_opt_self();
    v38 = sub_10004487C;
    v39 = v28;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_100031FA8;
    v37 = &unk_1001C71F0;
    v30 = _Block_copy(&aBlock);
    v31 = v25;

    [v29 animateWithDuration:0x20000 delay:v30 options:0 animations:0.125 completion:0.0];
    _Block_release(v30);
  }

  return result;
}

uint64_t sub_100115954()
{
  v1 = v0;
  v2 = sub_100066608();
  type metadata accessor for DashboardViewController();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    sub_100118EC0();
    v5 = *&v0[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView];
    v6 = [*&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView] arrangedSubviews];
    sub_10003E110(0, &qword_1001FF090);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1000E9D04(v5, v8, 1);
    v9 = *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler];
    if (v9)
    {

      v9(v10);
      sub_10003C52C(v9);
    }

    sub_10004287C(3, 4);
    sub_10004BDE0(3u, 0, 0);
    v11 = v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_pauseStateAnimation];
    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    *(v12 + 24) = v4;
    v13 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView;
    v14 = *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView];
    v15 = *(v14 + OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView);
    v16 = v1;
    v17 = v2;
    [v15 alpha];
    if (v18 == 1.0)
    {
      if (v11)
      {
        [v15 setAlpha:0.0];
      }

      else
      {
        [v15 alpha];
        if (v20 == 1.0)
        {
          v21 = swift_allocObject();
          *(v21 + 16) = v15;
          v42 = sub_10004487C;
          v43 = v21;
          v37 = objc_opt_self();
          aBlock = _NSConcreteStackBlock;
          v39 = 1107296256;
          v40 = sub_100031FA8;
          v41 = &unk_1001C7178;
          v22 = _Block_copy(&aBlock);
          v23 = v15;

          [v37 animateWithDuration:0x20000 delay:v22 options:0 animations:0.125 completion:0.0];
          _Block_release(v22);
        }
      }
    }

    sub_1000856BC(v11 ^ 1, sub_100119640, v12);
    v24 = *(v14 + OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView);
    [v24 alpha];
    if (v25 == 1.0)
    {
      if (v11)
      {
        [v24 setAlpha:0.0];
      }

      else
      {
        [v24 alpha];
        if (v26 == 1.0)
        {
          v27 = swift_allocObject();
          *(v27 + 16) = v24;
          v28 = objc_opt_self();
          v42 = sub_10004487C;
          v43 = v27;
          aBlock = _NSConcreteStackBlock;
          v39 = 1107296256;
          v40 = sub_100031FA8;
          v41 = &unk_1001C7128;
          v29 = _Block_copy(&aBlock);
          v30 = v24;

          [v28 animateWithDuration:0x20000 delay:v29 options:0 animations:0.125 completion:0.0];
          _Block_release(v29);
        }
      }
    }

    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *&v5[v13]);
    v31 = *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView];
    [v31 alpha];
    if (v32 == 1.0)
    {
      v33 = swift_allocObject();
      *(v33 + 16) = v31;
      v34 = objc_opt_self();
      v42 = sub_100044298;
      v43 = v33;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_100031FA8;
      v41 = &unk_1001C70D8;
      v35 = _Block_copy(&aBlock);
      v36 = v31;

      [v34 animateWithDuration:0x20000 delay:v35 options:0 animations:0.125 completion:0.0];
      _Block_release(v35);
    }

    else
    {
    }
  }

  else
  {

    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();

    return os_log(_:dso:log:type:_:)();
  }
}

void sub_100115F74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if ((v5 & 1) == 0 && !sub_1000660CC() && (*(a2 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_pauseStateAnimation) & 1) == 0)
  {
    v6 = a3;
    sub_1000E8DD8(0, 0, v6);
  }
}

uint64_t sub_100116044(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    *(*(a2 + OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager) + OBJC_IVAR____TtC11Diagnostics11CardManager_persistentOnly) = 1;
    return sub_100151130();
  }

  return result;
}

void sub_100116098(int a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView);
  v5 = [v4 arrangedSubviews];
  sub_10003E110(0, &qword_1001FF090);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_15:

    v15 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_3:
  v22 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v7 < 0)
  {
    __break(1u);
    return;
  }

  v19 = v2;
  v20 = v4;
  v21 = a1;
  v8 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = [objc_allocWithZone(UIView) init];
    type metadata accessor for CardStackSubviewContainer();
    v12 = swift_dynamicCastClass();
    if (!v12)
    {
      goto LABEL_5;
    }

    v13 = *(v12 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
    v13;

    if (v13)
    {
      v10 = v11;
LABEL_5:
    }

    ++v8;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v7 != v8);

  v15 = v22;
  LOBYTE(a1) = v21;
  v2 = v19;
LABEL_16:
  v16 = *(v2 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView);
  v22 = v16;
  __chkstk_darwin(v14);
  v18[2] = &v22;
  v17 = sub_1000785D4(sub_1001199DC, v18, v15);

  if (v17)
  {
    sub_1000E9EE4(v16, a1 & 1);
  }
}

uint64_t sub_100116300(void *a1)
{
  v120 = 0;
  v122 = a1;
  v2 = [a1 errors];
  sub_10003C49C(&qword_100201C30);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v124 = sub_10014B558(v3);

  v113 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState;
  v114 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
LABEL_23:
    v152 = v5;

    result = sub_100074824(v124);
    v8 = v152;
    if (v152 >> 62)
    {
      goto LABEL_116;
    }

    v24 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_25;
    }

LABEL_117:
  }

  swift_beginAccess();
  v6 = *(v4 + 72);
  v152 = _swiftEmptyArrayStorage;
  if ((v6 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_10003E110(0, &qword_100202990);
    sub_1000AC8BC(&qword_1001FFED0, &qword_100202990);
    Set.Iterator.init(_cocoa:)();
    v6 = v127[5];
    v7 = v127[6];
    v8 = v127[7];
    v9 = v127[8];
    v10 = v127[9];
  }

  else
  {
    v11 = -1 << *(v6 + 32);
    v7 = (v6 + 56);
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = (v13 & *(v6 + 56));

    v9 = 0;
  }

  v123 = v8;
  v14 = (v8 + 64) >> 6;
  while ((v6 & 0x8000000000000000) != 0)
  {
    v20 = __CocoaSet.Iterator.next()();
    if (!v20 || (v142 = v20, sub_10003E110(0, &qword_100202990), v18 = swift_dynamicCast(), v19 = v147, v5 = v9, v17 = v10, !v147))
    {
LABEL_22:
      sub_10004A320();
      v5 = v152;
      goto LABEL_23;
    }

LABEL_20:
    v8 = &v106;
    v147 = v19;
    __chkstk_darwin(v18);
    v105 = &v147;
    v21 = v120;
    v22 = sub_1000785D4(sub_100119F78, v104, v124);
    v120 = v21;
    if (v22)
    {
    }

    else
    {
      v8 = &v152;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    v9 = v5;
    v10 = v17;
  }

  v15 = v9;
  v16 = v10;
  v5 = v9;
  if (v10)
  {
LABEL_16:
    v17 = (v16 - 1) & v16;
    v18 = *(*(v6 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v16)))));
    v19 = v18;
    if (!v18)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v5 = (v15 + 1);
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v5 >= v14)
    {
      goto LABEL_22;
    }

    v16 = v7[v5];
    ++v15;
    if (v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_116:
  result = _CocoaArrayWrapper.endIndex.getter();
  v24 = result;
  if (!result)
  {
    goto LABEL_117;
  }

LABEL_25:
  if (v24 >= 1)
  {
    v25 = 0;
    v116 = v8 & 0xC000000000000001;
    v110 = "AIRPODS_CONNECTION_LOST_IPAD";
    v111 = @"productClass";
    v115 = xmmword_10017EC10;
    v112 = xmmword_10017EC00;
    v108 = "AIRPODS_CONNECTION_LOST_PHONE";
    v109 = "Unimplemented Error Code cases";
    v107 = "AIRPODS_CONNECTION_LOST_IPOD";
    v118 = v8;
    v119 = v5;
    v117 = v24;
    while (1)
    {
      if (v116)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v8 + 8 * v25 + 32);
      }

      v30 = v29;
      v123 = v25;
      v31 = [v29 code];
      LODWORD(v124) = static os_log_type_t.error.getter();
      if (qword_1001FC7A0 != -1)
      {
        swift_once();
      }

      v32 = qword_10020A4E8;
      v121 = sub_10003C49C(&unk_1001FEAD0);
      v33 = swift_allocObject();
      *(v33 + 16) = v115;
      v34 = v30;
      v35 = [v34 description];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
      v39 = v34;

      *(v33 + 56) = &type metadata for String;
      v40 = sub_10003DFBC();
      *(v33 + 64) = v40;
      *(v33 + 32) = v36;
      *(v33 + 40) = v38;
      v41 = [v122 serialNumber];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      *(v33 + 96) = &type metadata for String;
      *(v33 + 104) = v40;
      *(v33 + 72) = v42;
      *(v33 + 80) = v44;
      os_log(_:dso:log:_:_:)();

      if (v31 > 6)
      {
        if (v31 <= 10)
        {
          v46 = v123;
          if ((v31 - 9) >= 2)
          {
            if (v31 == 7)
            {
              v125 = v39;
              __chkstk_darwin(v45);
              v105 = &v125;
              v75 = v120;
              v76 = sub_1000785D4(sub_100119F78, v104, v119);
              v120 = v75;
              if (v76)
              {
                goto LABEL_97;
              }

              v77 = 0xD000000000000015;
              v78 = (v110 | 0x8000000000000000);
              goto LABEL_76;
            }

            if (v31 != 8)
            {
              goto LABEL_85;
            }

            v152 = 6;
            v153 = 0u;
            v154 = 0u;
            v155 = 0;
            v156 = 2;
            goto LABEL_84;
          }

          goto LABEL_28;
        }

        if (v31 != 11)
        {
          v46 = v123;
          if (v31 == 12)
          {
            v125 = v39;
            __chkstk_darwin(v45);
            v105 = &v125;
            v67 = v120;
            v68 = sub_1000785D4(sub_100119958, v104, v119);
            v120 = v67;
            if (v68)
            {
              goto LABEL_97;
            }

            DeviceClass = GestaltGetDeviceClass();
            if (DeviceClass == 2)
            {
              v70 = 0xD00000000000001CLL;
              v71 = v108;
            }

            else if (DeviceClass == 3)
            {
              v70 = 0xD00000000000001CLL;
              v71 = v107;
            }

            else
            {
              v70 = 0xD00000000000001DLL;
              v71 = v109;
            }

            v81 = v114;
            sub_1001172F8(v70, (v71 | 0x8000000000000000));
            goto LABEL_110;
          }

          if (v31 != 13)
          {
            goto LABEL_85;
          }

LABEL_28:
          v26 = swift_allocObject();
          *(v26 + 16) = v112;
          *(v26 + 56) = sub_10003E110(0, &qword_1001FD6F0);
          *(v26 + 64) = sub_1000AC8BC(&qword_100201280, &qword_1001FD6F0);
          *(v26 + 32) = v32;
          v27 = v32;
          v28 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          goto LABEL_29;
        }

        v82 = [v122 attributes];
        sub_10003C49C(&unk_1001FD010);
        v83 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v123;
        if (!*(v83 + 16))
        {

LABEL_89:

LABEL_90:
          v142 = 4;
          v143 = 0u;
          v144 = 0u;
          v145 = 0;
          v146 = 2;
LABEL_104:
          sub_100088E48(0, 0);

          goto LABEL_30;
        }

        v86 = sub_100064AFC(v84, v85);
        v88 = v87;

        if ((v88 & 1) == 0)
        {
          goto LABEL_89;
        }

        v89 = *(*(v83 + 56) + 8 * v86);
        swift_unknownObjectRetain();

        v127[0] = v89;
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_90;
        }

        if (v125 == 0x646F50656D6F48 && v126 == 0xE700000000000000)
        {
LABEL_82:

          goto LABEL_30;
        }

        v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v103 & 1) == 0)
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v31 <= 3)
        {
          v46 = v123;
          if (v31 < 2)
          {
            v127[10] = 2;
            v128 = 0u;
            v129 = 0u;
            v130 = 0;
            v131 = 2;
LABEL_84:
            sub_100088E48(0, 0);
            goto LABEL_29;
          }

          if (v31 == 2)
          {
            v125 = v39;
            __chkstk_darwin(v45);
            v105 = &v125;
            v72 = v120;
            v73 = sub_1000785D4(sub_100119F78, v104, v119);
            v120 = v72;
            if (v73)
            {
              v74 = v114;
              sub_100118EC0();
              if (*(v74 + v113))
              {
                goto LABEL_98;
              }

              goto LABEL_29;
            }

            v91 = [v122 suiteName];
            if (v91)
            {
              v92 = v91;
              v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v95 = v94;
            }

            else
            {
              v93 = 0;
              v95 = 0xE000000000000000;
            }

            v101 = v93;
            v81 = v114;
            sub_100117F54(v101, v95);
LABEL_110:

            goto LABEL_111;
          }

          if (v31 != 3)
          {
LABEL_85:
            static os_log_type_t.fault.getter();
            v90 = swift_allocObject();
            *(v90 + 16) = v112;
            *(v90 + 56) = &type metadata for Int;
            *(v90 + 64) = &protocol witness table for Int;
            *(v90 + 32) = v31;
            os_log(_:dso:log:_:_:)();

            goto LABEL_29;
          }

          v47 = [v122 attributes];
          sub_10003C49C(&unk_1001FD010);
          v48 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (*(v48 + 16))
          {
            v51 = sub_100064AFC(v49, v50);
            v53 = v52;

            if (v53)
            {
              v54 = *(*(v48 + 56) + 8 * v51);
              swift_unknownObjectRetain();

              v127[0] = v54;
              v55 = swift_dynamicCast();
              if (v55)
              {
                v56 = v119;
                if (v125 == 0x646F50656D6F48 && v126 == 0xE700000000000000)
                {
                  goto LABEL_82;
                }

                v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v57)
                {
                  goto LABEL_29;
                }

                goto LABEL_94;
              }

LABEL_93:
              v56 = v119;
LABEL_94:
              v125 = v39;
              __chkstk_darwin(v55);
              v105 = &v125;
              v96 = v120;
              v97 = sub_1000785D4(sub_100119F78, v104, v56);
              v120 = v96;
              if (v97)
              {
                if (qword_10020A3C0)
                {
                  v98 = qword_10020A3C0;
                  sub_100125854(1, 0, 1, 0, 0);
                  v99 = qword_10020A3C0;
                  qword_10020A3C0 = 0;
                }

LABEL_97:
                if (*(v114 + v113))
                {
LABEL_98:
                  swift_beginAccess();

                  v100 = sub_100127BBC(v39);
                  swift_endAccess();

                  goto LABEL_30;
                }

                goto LABEL_29;
              }

              v132 = 1;
              v133 = 0u;
              v134 = 0u;
              v135 = 0;
              v136 = 2;
              sub_100088E48(0, 0);
              if (*(v114 + v113))
              {
                goto LABEL_112;
              }

              goto LABEL_29;
            }
          }

          else
          {
          }

          goto LABEL_93;
        }

        v46 = v123;
        if (v31 == 4)
        {
          v125 = v39;
          __chkstk_darwin(v45);
          v105 = &v125;
          v79 = v120;
          v80 = sub_1000785D4(sub_100119F78, v104, v119);
          v120 = v79;
          if (v80)
          {
            goto LABEL_97;
          }

          v77 = 0x5F4E574F4E4B4E55;
          v78 = 0xED0000524F525245;
LABEL_76:
          v81 = v114;
          sub_1001172F8(v77, v78);
LABEL_111:
          if (*(v81 + v113))
          {
LABEL_112:
            swift_beginAccess();
            v102 = v39;

            sub_100108684(v127, v102);
            swift_endAccess();

            goto LABEL_30;
          }

          goto LABEL_29;
        }

        if (v31 == 5)
        {
          v147 = 5;
          v148 = 0u;
          v149 = 0u;
          v150 = 0;
          v151 = 2;
          goto LABEL_84;
        }

        v58 = [v122 attributes];
        sub_10003C49C(&unk_1001FD010);
        v59 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (!*(v59 + 16))
        {

LABEL_102:

LABEL_103:
          v137 = 3;
          v138 = 0u;
          v139 = 0u;
          v140 = 0;
          v141 = 2;
          goto LABEL_104;
        }

        v62 = sub_100064AFC(v60, v61);
        v64 = v63;

        if ((v64 & 1) == 0)
        {
          goto LABEL_102;
        }

        v65 = *(*(v59 + 56) + 8 * v62);
        swift_unknownObjectRetain();

        v127[0] = v65;
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_103;
        }

        if (v125 == 0x646F50656D6F48 && v126 == 0xE700000000000000)
        {
          goto LABEL_82;
        }

        v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v66 & 1) == 0)
        {
          goto LABEL_103;
        }
      }

LABEL_29:

LABEL_30:
      v8 = v118;
      v25 = v46 + 1;
      if (v117 == v25)
      {
        goto LABEL_117;
      }
    }
  }

  __break(1u);
  return result;
}

id sub_1001172F8(uint64_t a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView);
  v6 = [*(v2 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView) arrangedSubviews];
  sub_10003E110(0, &qword_1001FF090);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1000E9D04(v5, v8, 1);
  v9 = *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler];
  if (v9)
  {

    v9(v10);
    sub_10003C52C(v9);
  }

  v11 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, a1, a2);
  sub_10004BDE0(5u, v11, v12);

  v13 = *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView];
  sub_10003E110(0, &unk_100202950);
  v14._countAndFlagsBits = 0x7261576465646E65;
  v14._object = 0xEC000000676E696ELL;
  v15.super.isa = UIImage.init(imageLiteralResourceName:)(v14).super.isa;
  v16 = *&v13[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView];
  [v16 alpha];
  if (v17 == 1.0)
  {
    [v16 alpha];
    if (v18 == 1.0)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v16;
      v20 = objc_opt_self();
      v45 = sub_10004487C;
      v46 = v19;
      v41 = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_100031FA8;
      v44 = &unk_1001C7858;
      v21 = _Block_copy(&v41);
      v22 = v16;

      [v20 animateWithDuration:0x20000 delay:v21 options:0 animations:0.125 completion:0.0];
      _Block_release(v21);
    }
  }

  v23 = *&v13[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView];
  v24 = swift_allocObject();
  *(v24 + 16) = v13;
  v25 = v13;
  sub_10006D6C4(v23, sub_100119F94, v24);

  v26 = OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView;
  [*&v25[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView] setImage:v15.super.isa];
  v27 = *&v25[v26];
  [v27 alpha];
  if (v28 == 0.0 && ([v27 alpha], v29 == 0.0))
  {
    v30 = swift_allocObject();
    *(v30 + 16) = v27;
    v31 = objc_opt_self();
    v45 = sub_10003E440;
    v46 = v30;
    v41 = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_100031FA8;
    v44 = &unk_1001C7808;
    v32 = _Block_copy(&v41);
    v33 = v27;

    [v31 animateWithDuration:0x10000 delay:v32 options:0 animations:0.375 completion:0.0];
    _Block_release(v32);
  }

  else
  {
  }

  v34 = *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView];
  result = [v34 alpha];
  if (v36 == 1.0)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = v34;
    v38 = objc_opt_self();
    v45 = sub_10004487C;
    v46 = v37;
    v41 = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_100031FA8;
    v44 = &unk_1001C77B8;
    v39 = _Block_copy(&v41);
    v40 = v34;

    [v38 animateWithDuration:0x20000 delay:v39 options:0 animations:0.125 completion:0.0];
    _Block_release(v39);
  }

  return result;
}

uint64_t sub_100117874(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*&v4[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView])
  {
    return result;
  }

  v8 = result;
  v45 = OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v44 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x5452415453, 0xE500000000000000);
  v46 = v10;
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a3;
  v11[4] = a4;

  v42 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 1346980691, 0xE400000000000000);
  v13 = v12;
  v14 = swift_allocObject();
  v14[2] = v9;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = v4;
  sub_10003C49C(&unk_1001FEAD0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10017EC00;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_10003DFBC();
  *(v15 + 32) = v8;
  *(v15 + 40) = a2;

  v39 = v4;

  sub_1000494C8(0, 0, v15, 0xD000000000000016, 0x8000000100192C40);

  sub_10003C49C(&unk_100201C20);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10017EC10;
  *(v16 + 32) = v42;
  *(v16 + 40) = v13;
  *(v16 + 48) = 6;
  *(v16 + 56) = sub_10011994C;
  *(v16 + 64) = v14;
  *(v16 + 72) = v44;
  *(v16 + 80) = v46;
  *(v16 + 88) = 4;
  *(v16 + 96) = sub_1001198F8;
  *(v16 + 104) = v11;
  v41 = type metadata accessor for PromptView();
  v17 = objc_allocWithZone(v41);
  v17[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  v18 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  v19 = objc_allocWithZone(UIStackView);

  v20 = v18;

  *&v17[v18] = [v19 init];
  v43 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *&v17[v43] = [objc_allocWithZone(UIStackView) init];
  *&v17[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = 0;
  v21 = OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel;
  *&v17[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel] = 0;
  *&v17[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel] = 0;
  v22 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *&v17[v22] = [objc_allocWithZone(UIStackView) init];
  v23 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *&v17[v23] = [objc_allocWithZone(UIProgressView) init];
  v24 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *&v17[v24] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v17[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel] = 0;
  v25 = &v17[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  *v25 = 0;
  v25[1] = 0;
  v17[OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight] = 0;
  v26 = [objc_allocWithZone(UILabel) init];
  v27 = *&v17[v21];
  *&v17[v21] = v26;

  v28 = *&v17[v21];
  if (v28)
  {
    v29 = v28;
    v30 = String._bridgeToObjectiveC()();

    [v29 setText:v30];

    if (*(v16 + 16))
    {
      goto LABEL_4;
    }
  }

  else
  {

    if (*(v16 + 16))
    {
LABEL_4:
      *&v17[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = v16;
      v31 = [objc_allocWithZone(UIStackView) init];
      *&v17[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = v31;
      if (v31)
      {
        v32 = v31;
        v33 = objc_opt_self();
        v34 = v32;
        v35 = [v33 sharedApplication];
        v36 = [v35 preferredContentSizeCategory];

        LOBYTE(v35) = UIContentSizeCategory.isAccessibilityCategory.getter();
        [v34 setAxis:v35 & 1];
      }

      goto LABEL_8;
    }
  }

  *&v17[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = _swiftEmptyArrayStorage;
  *&v17[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = 0;
LABEL_8:
  v17[OBJC_IVAR____TtC11Diagnostics10PromptView_type] = 1;
  [*&v17[v20] setSpacing:{10.0, v39}];
  [*&v17[v43] setSpacing:10.0];
  v47.receiver = v17;
  v47.super_class = v41;
  v37 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v38 = v37;
  if (!*&v4[v45])
  {
    *&v4[v45] = v37;
    sub_1000EA498(v37, *(v40 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView), 1);
  }
}

uint64_t sub_100117E48(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    return a3(1);
  }

  return result;
}

void sub_100117EC4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    a3(0);
    sub_100118EC0();
  }
}

void sub_100117F54(uint64_t a1, uint64_t a2)
{
  v5 = MobileGestalt_get_current_device();
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = 0xD000000000000017;
  wapiCapability = MobileGestalt_get_wapiCapability();

  v9 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  v10 = "contentUnavailableView";
  v11 = sub_1001184E8;
  if ((v9 & 1) == 0)
  {
    v12 = sub_100118530;
    if (sub_1000660CC())
    {
      goto LABEL_8;
    }

    v13 = "OPEN_WIFI_SETTINGS";
    if (wapiCapability)
    {
      v13 = "OPEN_WLAN_SETTINGS";
    }

    v10 = v13 - 32;
    v7 = 0xD000000000000012;
    v11 = sub_1000D71E0;
  }

  v12 = v11;
LABEL_8:
  v44 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v7, (v10 | 0x8000000000000000));
  v15 = v14;

  v16 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 1346980691, 0xE400000000000000);
  v18 = v17;
  v19 = swift_allocObject();
  v19[2] = v2;
  v19[3] = a1;
  v19[4] = a2;
  if (wapiCapability)
  {
    v20 = 0x5145525F4E414C57;
  }

  else
  {
    v20 = 0x5145525F49464957;
  }

  sub_10003C49C(&unk_1001FEAD0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10017EC00;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_10003DFBC();
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  swift_bridgeObjectRetain_n();
  v43 = v2;
  v41 = sub_1000494C8(0, 0, v21, v20, 0xED00004445524955);

  sub_10003C49C(&unk_100201C20);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10017EC10;
  *(v22 + 32) = v44;
  *(v22 + 40) = v15;
  *(v22 + 48) = 7;
  *(v22 + 56) = v12;
  *(v22 + 64) = 0;
  *(v22 + 72) = v16;
  *(v22 + 80) = v18;
  *(v22 + 88) = 7;
  *(v22 + 96) = sub_100119888;
  *(v22 + 104) = v19;
  v42 = type metadata accessor for PromptView();
  v23 = objc_allocWithZone(v42);
  v23[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  v24 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  v25 = objc_allocWithZone(UIStackView);

  *&v23[v24] = [v25 init];
  v26 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *&v23[v26] = [objc_allocWithZone(UIStackView) init];
  *&v23[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = 0;
  v27 = OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel;
  *&v23[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel] = 0;
  *&v23[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel] = 0;
  v28 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *&v23[v28] = [objc_allocWithZone(UIStackView) init];
  v29 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *&v23[v29] = [objc_allocWithZone(UIProgressView) init];
  v30 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *&v23[v30] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v23[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel] = 0;
  v31 = &v23[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  *v31 = 0;
  v31[1] = 0;
  v23[OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight] = 0;
  v32 = [objc_allocWithZone(UILabel) init];
  v33 = *&v23[v27];
  *&v23[v27] = v32;

  v34 = *&v23[v27];
  if (!v34)
  {

    if (*(v22 + 16))
    {
      goto LABEL_13;
    }

LABEL_15:

    *&v23[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = _swiftEmptyArrayStorage;
    *&v23[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = 0;
    goto LABEL_16;
  }

  v35 = v34;
  v36 = String._bridgeToObjectiveC()();

  [v35 setText:v36];

  if (!*(v22 + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  *&v23[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = v22;
  v37 = [objc_allocWithZone(UIStackView) init];
  *&v23[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = v37;
  [v37 setAxis:1];
LABEL_16:
  v23[OBJC_IVAR____TtC11Diagnostics10PromptView_type] = 2;
  [*&v23[v24] setSpacing:{10.0, v41}];
  [*&v23[v26] setSpacing:10.0];
  v45.receiver = v23;
  v45.super_class = v42;
  v38 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v39 = v38;
  v40 = v43;
  if (!*&v43[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView])
  {
    *&v43[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView] = v38;
    sub_1000EA498(v38, *&v40[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView], 1);
  }
}

uint64_t sub_100118538(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v44 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 1346980691, 0xE400000000000000);
  v7 = v6;
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v2;
  v8[4] = a1;
  v8[5] = a2;

  v9 = v2;
  v10 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x4C45434E4143, 0xE600000000000000);
  v45 = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v9;
  if (a2)
  {
    sub_10003C49C(&unk_1001FEAD0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10017EC00;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_10003DFBC();
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;

    v14 = v9;

    v40 = sub_1000494C8(0, 0, v13, 0x4955535F50494B53, 0xEA00000000004554);
  }

  else
  {

    v15 = v9;
    v40 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x4955535F50494B53, 0xEA00000000004554);
  }

  sub_10003C49C(&unk_100201C20);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10017EC10;
  *(v16 + 32) = v10;
  *(v16 + 40) = v45;
  *(v16 + 48) = 5;
  *(v16 + 56) = sub_100119840;
  *(v16 + 64) = v12;
  *(v16 + 72) = v44;
  *(v16 + 80) = v7;
  *(v16 + 88) = 6;
  *(v16 + 96) = sub_1001197F4;
  *(v16 + 104) = v8;
  v43 = type metadata accessor for PromptView();
  v17 = objc_allocWithZone(v43);
  v17[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  v18 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  v19 = objc_allocWithZone(UIStackView);

  v42 = v18;
  *&v17[v18] = [v19 init];
  v41 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *&v17[v41] = [objc_allocWithZone(UIStackView) init];
  *&v17[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = 0;
  v20 = OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel;
  *&v17[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel] = 0;
  *&v17[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel] = 0;
  v21 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *&v17[v21] = [objc_allocWithZone(UIStackView) init];
  v22 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *&v17[v22] = [objc_allocWithZone(UIProgressView) init];
  v23 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *&v17[v23] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v17[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel] = 0;
  v24 = &v17[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  *v24 = 0;
  v24[1] = 0;
  v17[OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight] = 0;
  v25 = [objc_allocWithZone(UILabel) init];
  v26 = *&v17[v20];
  *&v17[v20] = v25;

  v27 = *&v17[v20];
  if (v27)
  {
    v28 = v27;
    v29 = String._bridgeToObjectiveC()();

    [v28 setText:v29];
  }

  else
  {
  }

  if (*(v16 + 16))
  {
    *&v17[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = v16;
    v30 = [objc_allocWithZone(UIStackView) init];
    *&v17[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = v30;
    if (v30)
    {
      v31 = v30;
      v32 = objc_opt_self();
      v33 = v31;
      v34 = [v32 sharedApplication];
      v35 = [v34 preferredContentSizeCategory];

      LOBYTE(v34) = UIContentSizeCategory.isAccessibilityCategory.getter();
      [v33 setAxis:v34 & 1];
    }
  }

  else
  {

    *&v17[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = _swiftEmptyArrayStorage;
    *&v17[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = 0;
  }

  v17[OBJC_IVAR____TtC11Diagnostics10PromptView_type] = 3;
  [*&v17[v42] setSpacing:{10.0, v40}];
  [*&v17[v41] setSpacing:10.0];
  v46.receiver = v17;
  v46.super_class = v43;
  v36 = objc_msgSendSuper2(&v46, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v37 = v36;
  v38 = v9;
  if (!*&v9[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView])
  {
    *&v9[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView] = v36;
    sub_1000EA498(v36, *&v38[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView], 1);
  }
}

void sub_100118B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    sub_100118C0C(1, a4, a5);
  }
}

void sub_100118B9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    sub_100118EC0();
  }
}

void sub_100118C0C(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      sub_10003C49C(&unk_1001FEAD0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_10017EC00;
      *(v6 + 56) = &type metadata for String;
      *(v6 + 64) = sub_10003DFBC();
      *(v6 + 32) = a2;
      *(v6 + 40) = a3;

      v7 = sub_1000494C8(0, 0, v6, 0x474E495050494B53, 0xEE0045544955535FLL);
      v9 = v8;
    }

    else
    {
      v7 = sub_1000494C8(a2, 0, _swiftEmptyArrayStorage, 0x474E495050494B53, 0xEE0045544955535FLL);
      v9 = v10;
    }

    v11 = *(v3 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView);
    if (v11)
    {
      v12 = v11;
      sub_1000A1730(v7, v9);
    }

    v13 = *(v3 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState);
    if (v13)
    {
      v14 = [*(v13 + 40) serialNumber];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_controller;
      swift_beginAccess();
      sub_10011972C(v3 + v18, v26);
      if (!v27)
      {

        sub_1000A4AFC(v26);
        return;
      }

      sub_10004476C(v26, v25);
      sub_1000A4AFC(v26);
      v19 = *sub_1000442A0(v25, v25[3]);
      v20 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
      swift_beginAccess();
      v21 = *(v19 + v20);
      if (*(v21 + 16))
      {

        v22 = sub_100064AFC(v15, v17);
        if (v23)
        {
          v24 = *(*(v21 + 56) + 8 * v22);
          swift_unknownObjectRetain();

          [v24 idle];

          swift_unknownObjectRelease();
LABEL_19:
          sub_100044554(v25);
          return;
        }
      }

      goto LABEL_19;
    }
  }

  else
  {

    sub_100118EC0();
  }
}

void sub_100118EC0()
{
  v1 = OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView);
    v7 = v2;
    sub_1000EA498(v3, v7, 1);
    v4 = *(v0 + v1);
    *(v0 + v1) = 0;

    v5 = *(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState);
    if (v5 && (*(v5 + 19) & 1) != 0)
    {
      *(v5 + 19) = 0;
      v6 = *(v5 + 80);
      if ((v6 & 8) == 0)
      {
        *(v5 + 80) = v6 | 8;
      }

      sub_1000724B4();
    }

    else
    {
    }
  }
}

uint64_t sub_100118FD8(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState);
  if (v1)
  {
    v2 = result;
    v3 = [*(v1 + 40) serialNumber];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_controller;
    swift_beginAccess();
    sub_10011972C(v2 + v7, v15);
    if (!v16)
    {

      return sub_1000A4AFC(v15);
    }

    sub_10004476C(v15, v14);
    sub_1000A4AFC(v15);
    v8 = *sub_1000442A0(v14, v14[3]);
    v9 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
    swift_beginAccess();
    v10 = *(v8 + v9);
    if (*(v10 + 16))
    {

      v11 = sub_100064AFC(v4, v6);
      if (v12)
      {
        v13 = *(*(v10 + 56) + 8 * v11);
        swift_unknownObjectRetain();

        [v13 end];

        swift_unknownObjectRelease();
        return sub_100044554(v14);
      }
    }

    return sub_100044554(v14);
  }

  return result;
}
void sub_10005B8D4(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  [a1 samplingRate];
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v8 <= -1.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v8 >= 1.84467441e19)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = v8;
  v10 = *(a2 + 104);
  if (!is_mul_ok(v8, v10))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v11 = *(a2 + 96);
  if (!is_mul_ok(v11, 0x3E8uLL))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v12 = 1000 * v11;
  if (!(1000 * v11))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v13 = v9 * v10;
  v14 = v9 * v10 / v12;
  *(a3 + 16) = v14;
  if (!is_mul_ok(v14, v12))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = v14 * v12;
  v16 = v13 >= v15;
  v17 = v13 - v15;
  if (!v16)
  {
    goto LABEL_33;
  }

  if (HIWORD(v17))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!v11)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v18 = (v17 << 16) / v11;
  *(a3 + 24) = v18;
  *(a3 + 32) = 0;
  *(a3 + 40) = v10;
  *(a3 + 48) = v11;
  *(a3 + 56) = 8 * v11;
  *(a3 + 64) = v14;
  *(a3 + 72) = v18;
  *(a3 + 96) = sub_1000B817C() == 1;
  v19 = *(a3 + 80);
  *(a3 + 80) = _swiftEmptyArrayStorage;

  v20 = [a4 physicalFormat];
  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = v20;
  type metadata accessor for AUAStreamFormat();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    goto LABEL_20;
  }

  v23 = *(v22 + OBJC_IVAR___AUAStreamFormat_altSetting);

  if (!v23)
  {
    goto LABEL_21;
  }

  v21 = *(v23 + 112);

  if (!v21)
  {
    goto LABEL_21;
  }

  a2 = v21[13];

  v24 = *(a3 + 40);
  if (!v24)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v25 = a2 / v24;
  v26 = *(a3 + 48);
  if (!is_mul_ok(v25, v26))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v27 = v25 * v26;
  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_20:

LABEL_21:
    v27 = 0;
  }

  *(a3 + 104) = v27;
  if (*(a3 + 96) == 1)
  {
    a2 = *(a3 + 88);
    v28 = __chkstk_darwin(v20);
    __chkstk_darwin(v28);

    os_unfair_lock_lock((a2 + 16));
    sub_10001F004(v29);
    if (v4)
    {
LABEL_38:
      os_unfair_lock_unlock((a2 + 16));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((a2 + 16));
  }
}

void sub_10005BB84(void *a1, uint64_t a2)
{
  v2 = a1[7];
  if (v2 >> 61)
  {
    goto LABEL_29;
  }

  v4 = 8 * v2;
  if (*(a2 + OBJC_IVAR___AUAAudioDevice_function))
  {
    v5 = *(a2 + OBJC_IVAR___AUAAudioDevice_function + 8);
    v6 = *(a2 + OBJC_IVAR___AUAAudioDevice_function);
    ObjectType = swift_getObjectType();
    v8 = (*(v5 + 16))(ObjectType, v5);
    if (v8)
    {
      v9 = v8;
      v10 = *&v8[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
      if (v10)
      {
        v11 = sub_1000AA808(0x1Du, v10);

        v4 >>= v11;
        goto LABEL_6;
      }

      if (!v4)
      {
        return;
      }

LABEL_9:
      while (1)
      {
        v12 = a1[3];
        v13 = a1[4];
        v14 = __CFADD__(v13, v12);
        v15 = v13 + v12;
        if (v14)
        {
          break;
        }

        a1[4] = v15;
        v16 = a1[2];
        if (v15 < 0x3E80001)
        {
          v24 = a1[10];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a1[10] = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v24 = sub_10002400C(0, *(v24 + 2) + 1, 1, v24);
            a1[10] = v24;
          }

          v27 = *(v24 + 2);
          v26 = *(v24 + 3);
          if (v27 >= v26 >> 1)
          {
            v24 = sub_10002400C((v26 > 1), v27 + 1, 1, v24);
          }

          *(v24 + 2) = v27 + 1;
          *&v24[8 * v27 + 32] = v16;
          a1[10] = v24;
          if (!--v4)
          {
            return;
          }
        }

        else
        {
          v14 = __CFADD__(v16, 1);
          v17 = v16 + 1;
          if (v14)
          {
            goto LABEL_27;
          }

          v18 = a1[10];
          v19 = swift_isUniquelyReferenced_nonNull_native();
          a1[10] = v18;
          if ((v19 & 1) == 0)
          {
            v18 = sub_10002400C(0, *(v18 + 2) + 1, 1, v18);
            a1[10] = v18;
          }

          v21 = *(v18 + 2);
          v20 = *(v18 + 3);
          if (v21 >= v20 >> 1)
          {
            v18 = sub_10002400C((v20 > 1), v21 + 1, 1, v18);
          }

          *(v18 + 2) = v21 + 1;
          *&v18[8 * v21 + 32] = v17;
          a1[10] = v18;
          v22 = a1[4];
          v14 = v22 >= 0x3E80000;
          v23 = v22 - 65536000;
          if (!v14)
          {
            goto LABEL_28;
          }

          a1[4] = v23;
          if (!--v4)
          {
            return;
          }
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }
  }

LABEL_6:
  if (v4)
  {
    goto LABEL_9;
  }
}

char *sub_10005BDBC(int64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for LogID(0);
  v10 = *(*(v57 - 8) + 64);
  v11 = __chkstk_darwin(v57);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v56 - v15;
  v17 = *(v3 + 96);
  v58 = v5;
  v59 = v9;
  v60 = v6;
  if (v17 == 1)
  {
    v18 = *(v3 + 88);
    v19 = __chkstk_darwin(v14);
    *(&v56 - 2) = v3;
    *(&v56 - 1) = a1;
    __chkstk_darwin(v19);
    *(&v56 - 2) = sub_10005D88C;
    *(&v56 - 1) = v20;

    os_unfair_lock_lock(v18 + 4);
    sub_10000CEE0(&v63);
    os_unfair_lock_unlock(v18 + 4);
    v21 = v63;
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  if (!*(v21 + 2))
  {
    if (*(v3 + 96) == 1)
    {
      v43 = OBJC_IVAR____TtC9AUASDCore16AUASampleManager_logID;
      swift_beginAccess();
      sub_10000A2A4(v3 + v43, v16);
      sub_100038CD8("AUASampleManager_getSampleCounts", 32, 2, 0xD000000000000031, 0x800000010012D460, v16);
      sub_10000C9D0(v16);
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || a1 > *(v21 + 3) >> 1)
    {
      if (*(v21 + 2) <= a1)
      {
        v45 = a1;
      }

      else
      {
        v45 = *(v21 + 2);
      }

      result = sub_10002400C(result, v45, 0, v21);
      v21 = result;
    }

    if (a1 < 0)
    {
      __break(1u);
      return result;
    }

    if (a1)
    {
      v24 = 65536000;
      while (1)
      {
        v47 = *(v3 + 24);
        v48 = *(v3 + 32);
        v49 = __CFADD__(v48, v47);
        v50 = v48 + v47;
        if (v49)
        {
          break;
        }

        *(v3 + 32) = v50;
        v51 = *(v3 + 16);
        if (v50 < 0x3E80001)
        {
          v2 = *(v21 + 2);
          v46 = *(v21 + 3);
          if (v2 >= v46 >> 1)
          {
            v21 = sub_10002400C((v46 > 1), v2 + 1, 1, v21);
          }

          *(v21 + 2) = v2 + 1;
          *&v21[8 * v2 + 32] = v51;
          if (!--a1)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v49 = __CFADD__(v51, 1);
          v52 = v51 + 1;
          if (v49)
          {
            goto LABEL_40;
          }

          v2 = *(v21 + 2);
          v53 = *(v21 + 3);
          if (v2 >= v53 >> 1)
          {
            v21 = sub_10002400C((v53 > 1), v2 + 1, 1, v21);
          }

          *(v21 + 2) = v2 + 1;
          *&v21[8 * v2 + 32] = v52;
          v54 = *(v3 + 32);
          v49 = v54 >= 0x3E80000;
          v55 = v54 - 65536000;
          if (!v49)
          {
            goto LABEL_41;
          }

          *(v3 + 32) = v55;
          if (!--a1)
          {
            goto LABEL_5;
          }
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

LABEL_5:
  v63 = 0x20746C75736572;
  v64 = 0xE700000000000000;
  v61 = *(v21 + 2);

  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  v2 = v63;
  a1 = v64;
  v23 = OBJC_IVAR____TtC9AUASDCore16AUASampleManager_logID;
  swift_beginAccess();
  v24 = v13;
  sub_10000A2A4(v3 + v23, v13);
  if (qword_100173CB0 != -1)
  {
LABEL_42:
    swift_once();
  }

  v25 = v59;
  v26 = v60;
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v27, qword_100179508);
    v61 = StaticString.description.getter();
    v62 = v28;
    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v30._countAndFlagsBits = v2;
    v30._object = a1;
    String.append(_:)(v30);

    sub_100039AA0(4, v24, v61, v62);

    v31 = v24;
  }

  else
  {
    v56 = v2;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v32, qword_100179508);
    v33 = *(v32 + 24);
    v34 = v58;
    (*(v26 + 16))(v25, v24 + *(v57 + 20), v58);

    v35 = OSSignposter.logHandle.getter();
    v36 = v24;
    v37 = static os_signpost_type_t.event.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v57 = v36;
      v40 = v39;
      v61 = v39;
      *v38 = 136446210;
      v41 = sub_100035760(v56, a1, &v61);

      *(v38 + 4) = v41;
      v42 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, v37, v42, "AUASampleManager_getSampleCounts", "%{public}s", v38, 0xCu);
      sub_10000CE78(v40);

      (*(v26 + 8))(v25, v34);
      v31 = v57;
    }

    else
    {

      (*(v26 + 8))(v25, v34);
      v31 = v36;
    }
  }

  sub_10000C9D0(v31);

  return v21;
}

uint64_t sub_10005C45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = _swiftEmptyArrayStorage;
  result = *(a1 + 80);
  if (*(result + 16) >= a2)
  {
    if (a2 < 0)
    {
      __break(1u);
    }

    else
    {

      sub_10007DE94(v8, v8 + 32, 0, (2 * a2) | 1);
      result = *(a1 + 80);
      v5 = *(result + 16);
      if (v5 >= a2)
      {
        if (!a2)
        {

LABEL_6:
          *(a1 + 80) = v9;

          goto LABEL_7;
        }

LABEL_10:
        sub_1000B9D74(result, result + 32, a2, (2 * v5) | 1);
        v9 = v10;
        v11 = *(a1 + 80);
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_7:
  *a3 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10005C530(uint64_t result)
{
  v2 = v1[13];
  v3 = *(result + 16);
  if ((v2 * v3) >> 64 == (v2 * v3) >> 63)
  {
    v4 = result;
    v5 = sub_10002400C(0, (v2 * v3) & ~((v2 * v3) >> 63), 0, _swiftEmptyArrayStorage);
    v12 = v5;
    if (v3)
    {
      v6 = (v4 + 32);
      do
      {
        v7 = *v6++;
        *v11 = v7;
        sub_10005C664(v11, v1, &v12);
        --v3;
      }

      while (v3);
      v5 = v12;
    }

    v8 = v1[11];
    v10 = __chkstk_darwin(v5);
    __chkstk_darwin(v10);

    os_unfair_lock_lock(v8 + 4);
    sub_10001F004(v9);
    os_unfair_lock_unlock(v8 + 4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005C664(unint64_t *a1, void *a2, char **a3)
{
  v87 = a3;
  *&v81 = type metadata accessor for OSSignpostID();
  v6 = *(v81 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v81);
  v10 = &v76[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v76[-v11];
  v13 = type metadata accessor for LogID(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v76[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v15);
  v20 = &v76[-v19];
  v21 = *a1;
  v82 = a1[1];
  if (v21 | v82)
  {
    v22 = a2[8];
    if (v22 == -1)
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v22 + 1 >= v21)
    {
      if (v21 == -1)
      {
        __break(1u);
      }

      else
      {
        if (v21 + 1 < v22)
        {
          goto LABEL_6;
        }

        v80 = v6;
        v6 = v18;
        v85 = 0;
        v86 = 0xE000000000000000;
        _StringGuts.grow(_:)(21);

        v85 = 0x20656C6F6877;
        v86 = 0xE600000000000000;
        v83 = v21;
        v3 = &protocol witness table for UInt;
        v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v55);

        v56._countAndFlagsBits = 0x697463617266202CLL;
        v56._object = 0xEB00000000206E6FLL;
        String.append(_:)(v56);
        v83 = v82;
        v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v57);

        v20 = v85;
        v12 = v86;
        v58 = OBJC_IVAR____TtC9AUASDCore16AUASampleManager_logID;
        swift_beginAccess();
        sub_10000A2A4(a2 + v58, v17);
        if (qword_100173CB0 == -1)
        {
LABEL_32:
          if (byte_1001794E8 == 1)
          {
            if (qword_100173CC0 != -1)
            {
              swift_once();
            }

            v59 = type metadata accessor for AUALog(0);
            sub_10000A1BC(v59, qword_100179508);
            v83 = StaticString.description.getter();
            v84 = v60;
            v61._countAndFlagsBits = 32;
            v61._object = 0xE100000000000000;
            String.append(_:)(v61);
            v62._countAndFlagsBits = v20;
            v62._object = v12;
            String.append(_:)(v62);

            v12 = v84;
            sub_100039AA0(4, v17, v83, v84);
          }

          else
          {
            v79 = v20;
            if (qword_100173CC0 != -1)
            {
              swift_once();
            }

            v63 = type metadata accessor for AUALog(0);
            sub_10000A1BC(v63, qword_100179508);
            v64 = *(v63 + 24);
            v65 = *(v6 + 20);
            v66 = v80;
            v6 = v81;
            (*(v80 + 16))(v10, &v17[v65], v81);

            v67 = OSSignposter.logHandle.getter();
            v68 = static os_signpost_type_t.event.getter();

            if (OS_os_log.signpostsEnabled.getter())
            {
              v69 = swift_slowAlloc();
              v78 = v67;
              v77 = v68;
              v70 = v69;
              v83 = swift_slowAlloc();
              v6 = v83;
              *v70 = 136446210;
              v71 = sub_100035760(v79, v12, &v83);

              *(v70 + 4) = v71;
              v72 = OSSignpostID.rawValue.getter();
              v12 = v78;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v78, v77, v72, "AUASampleManager_addExplicitFeedbackSamples", "%{public}s", v70, 0xCu);
              sub_10000CE78(v6);

              v73 = *(v66 + 8);
              v3 = (v66 + 8);
              v73(v10, v81);
            }

            else
            {

              v74 = *(v66 + 8);
              v3 = (v66 + 8);
              v74(v10, v6);
            }
          }

          result = sub_10000C9D0(v17);
          v75 = v82;
          a2[8] = v21;
          a2[9] = v75;
          v20 = a2[13];
          if (v20 < 0)
          {
            goto LABEL_42;
          }

          goto LABEL_16;
        }
      }

      swift_once();
      goto LABEL_32;
    }
  }

LABEL_6:
  v3 = v18;
  v85 = 0;
  v86 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v85 = 0x20656C6F6877;
  v86 = 0xE600000000000000;
  v83 = v21;
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0x697463617266202CLL;
  v24._object = 0xEB00000000206E6FLL;
  String.append(_:)(v24);
  v83 = v82;
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  v21 = v85;
  v17 = v86;
  v26 = OBJC_IVAR____TtC9AUASDCore16AUASampleManager_logID;
  swift_beginAccess();
  sub_10000A2A4(a2 + v26, v20);
  if (qword_100173CB0 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    if (byte_1001794E8 == 1)
    {
      if (qword_100173CC0 != -1)
      {
LABEL_48:
        swift_once();
      }

      v27 = type metadata accessor for AUALog(0);
      v12 = sub_10000A1BC(v27, qword_100179508);
      v83 = StaticString.description.getter();
      v84 = v28;
      v29._countAndFlagsBits = 32;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);
      v30._countAndFlagsBits = v21;
      v30._object = v17;
      String.append(_:)(v30);

      sub_100039AA0(4, v20, v83, v84);
    }

    else
    {
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v31, qword_100179508);
      v32 = *(v31 + 24);
      v33 = v3[5];
      v34 = v6;
      v35 = *(v6 + 16);
      v36 = v81;
      v35(v12, v20 + v33, v81);

      v37 = v36;
      v6 = OSSignposter.logHandle.getter();
      LODWORD(v82) = static os_signpost_type_t.event.getter();

      if (OS_os_log.signpostsEnabled.getter())
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = v21;
        v41 = v39;
        v83 = v39;
        *v38 = 136446210;
        v42 = sub_100035760(v40, v17, &v83);

        *(v38 + 4) = v42;
        v43 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, v82, v43, "AUASampleManager_addExplicitFeedbackSamples using previous value", "%{public}s", v38, 0xCu);
        sub_10000CE78(v41);

        v44 = *(v34 + 8);
        v3 = (v34 + 8);
        v44(v12, v81);
      }

      else
      {

        v45 = *(v34 + 8);
        v3 = (v34 + 8);
        v45(v12, v37);
      }
    }

    result = sub_10000C9D0(v20);
    v21 = a2[8];
    v82 = a2[9];
    v20 = a2[13];
    if ((v20 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

LABEL_16:
  if (v20)
  {
    v79 = (v21 + 1);
    LODWORD(v80) = v21 == -1;
    v12 = &qword_100175398;
    v81 = xmmword_10011DE90;
    while (1)
    {
      v47 = a2[4];
      v48 = __CFADD__(v47, v82);
      v49 = v47 + v82;
      if (v48)
      {
        goto LABEL_43;
      }

      a2[4] = v49;
      v17 = v21;
      if (v49 >= 0x3E80001)
      {
        if (v80)
        {
          goto LABEL_45;
        }

        a2[4] = v49 - 65536000;
        v17 = v79;
      }

      v6 = v21;
      v21 = a2;
      sub_100001AB4(&qword_100175398, &qword_100121F30);
      inited = swift_initStackObject();
      *(inited + 16) = v81;
      *(inited + 32) = v17;
      a2 = v87;
      v17 = *v87;
      v3 = *(*v87 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v17;
      if (!isUniquelyReferenced_nonNull_native || (v52 = *(v17 + 3) >> 1, v52 <= v3))
      {
        if (*(v17 + 2) <= v3 + 1)
        {
          v53 = v3 + 1;
        }

        else
        {
          v53 = *(v17 + 2);
        }

        v17 = sub_10002400C(isUniquelyReferenced_nonNull_native, v53, 1, v17);
        *v87 = v17;
        v52 = *(v17 + 3) >> 1;
      }

      v54 = *(v17 + 2);
      if (v52 <= v54)
      {
        goto LABEL_44;
      }

      a2 = v21;
      *&v17[8 * v54 + 32] = *(inited + 32);

      ++*(v17 + 2);
      *v87 = v17;
      --v20;
      v21 = v6;
      if (!v20)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10005D044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = type metadata accessor for OSSignpostID();
  v8 = *(v49 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v49);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for LogID(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v45[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = 0;
  v55 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v54 = 544044398;
  v55 = 0xE400000000000000;
  v48 = a1;
  v52 = *(a1 + 16);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0xD000000000000011;
  v17._object = 0x800000010012D370;
  String.append(_:)(v17);
  v51 = a2;
  v52 = a2;
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._object = 0x800000010012D390;
  v19._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v19);
  v50 = a3;
  v52 = a3;
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v21 = v54;
  v22 = v55;
  v23 = OBJC_IVAR____TtC9AUASDCore16AUASampleManager_logID;
  swift_beginAccess();
  sub_10000A2A4(v4 + v23, v15);
  if (qword_100173CB0 != -1)
  {
    swift_once();
  }

  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v24, qword_100179508);
    v52 = StaticString.description.getter();
    v53 = v25;
    v26._countAndFlagsBits = 32;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    v27._countAndFlagsBits = v21;
    v27._object = v22;
    String.append(_:)(v27);

    sub_100039AA0(4, v15, v52, v53);
  }

  else
  {
    v47 = v21;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v28, qword_100179508);
    v29 = *(v28 + 24);
    v30 = v8;
    v31 = v49;
    (*(v8 + 16))(v11, &v15[*(v12 + 20)], v49);

    v32 = OSSignposter.logHandle.getter();
    v33 = static os_signpost_type_t.event.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v34 = swift_slowAlloc();
      v46 = v33;
      v35 = v34;
      v36 = swift_slowAlloc();
      v52 = v36;
      *v35 = 136446210;
      v37 = sub_100035760(v47, v22, &v52);

      *(v35 + 4) = v37;
      v38 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, v46, v38, "AUASampleManager_addImplicitFeedbackSamples", "%{public}s", v35, 0xCu);
      sub_10000CE78(v36);
    }

    else
    {
    }

    (*(v30 + 8))(v11, v31);
  }

  result = sub_10000C9D0(v15);
  if (v4[6] == v51 && v4[5] == v50)
  {
    v40 = v4[11];
    v41 = __chkstk_darwin(result);
    v42 = v48;
    *&v45[-16] = v4;
    *&v45[-8] = v42;
    __chkstk_darwin(v41);
    *&v45[-16] = sub_10005D784;
    *&v45[-8] = v43;

    os_unfair_lock_lock(v40 + 4);
    sub_10001EA48(v44);
    os_unfair_lock_unlock(v40 + 4);
  }

  return result;
}

uint64_t AUASampleManager.deinit()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 88);

  sub_10000C9D0(v0 + OBJC_IVAR____TtC9AUASDCore16AUASampleManager_logID);
  return v0;
}

uint64_t AUASampleManager.__deallocating_deinit()
{
  v1 = v0[10];

  v2 = v0[11];

  sub_10000C9D0(v0 + OBJC_IVAR____TtC9AUASDCore16AUASampleManager_logID);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AUASampleManager()
{
  result = qword_100176418;
  if (!qword_100176418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005D6B4()
{
  result = type metadata accessor for LogID(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10005D79C()
{
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 80) = _swiftEmptyArrayStorage;
  sub_100001AB4(&qword_100173D10, &qword_10011DF90);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 88) = v1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  v2 = OBJC_IVAR____TtC9AUASDCore16AUASampleManager_logID;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for LogID(0);
  v4 = sub_10000A1BC(v3, qword_1001794F0);
  sub_10000A2A4(v4, v0 + v2);
  return v0;
}

uint64_t sub_10005D858()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return sub_10007DFA8(v3);
}

uint64_t sub_10005D8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogID(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005D940(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  if ((BYTE1(a1) - 1) > 5u)
  {
    v1 = 5;
  }

  else
  {
    v1 = qword_100121FC0[(BYTE1(a1) - 1)];
  }

  v3 = BYTE4(a1) | (v1 << 8);
  v4 = v3 | (BYTE3(a1) << 16);
  v5 = v3 | a1 & 0xFFFF0000;
  if ((a1 & 0xFF0000000000) != 0)
  {
    v5 = BYTE5(a1);
  }

  if ((a1 & 2) != 0)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_10005D9E8(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for LogID(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = 0;
  v10 = USBDescriptorControl.pbLayout()();
  v11 = sub_1000A0FF0(v10, 4);
  if (v3)
  {
    return v2;
  }

  v14 = v12;
  v97 = v11;
  v90 = a1;
  v15 = v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v30 = 7;
    *(v30 + 8) = 0;
    *(v30 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_18:

    return v2;
  }

  v17 = Strong;
  v18 = *(Strong + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
  if (v18 && sub_1000AA808(7u, v18))
  {
    sub_10000CA2C();
    swift_allocError();
    *v19 = 126;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0xE000000000000000;
    swift_willThrow();

    return v2;
  }

  v93 = v10;
  v92 = v15;
  v88 = v6;
  v89 = v9;
  v105 = v17;
  v91 = (v97 >> 8) & 1;
  HIBYTE(v87._object) = -18;
  strcpy(&v87, "Unknown Device");
  v101 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
  v103 = *(a2 + 32);
  v98 = v90 & 0xFFFFFF00;
  v100 = "quest on device ";
  v95 = 0x800000010012BEE0;
  v96 = "ect number of bytes received";
  v102 = ((v90 & 0xFF00) << 16) | 0x1A1;
  v99 = xmmword_100120CD0;
  v94 = xmmword_10011DE90;
  v20 = 1;
  while (1)
  {
    v22 = *(v103 + 2);
    v23 = NSData.startIndex.getter();
    v24 = NSData.endIndex.getter();
    v25 = NSData.startIndex.getter();
    v26 = NSData.endIndex.getter();
    if (v23 < v25 || v26 < v23)
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      __break(1u);
      __break(1u);
      goto LABEL_55;
    }

    v25 = NSData.startIndex.getter();
    v27 = NSData.endIndex.getter();
    if (v24 < v25 || v27 < v24)
    {
      goto LABEL_52;
    }

    v28 = v24 - v23;
    if (__OFSUB__(v24, v23))
    {
      goto LABEL_53;
    }

    if (v28 >= 0xFFFF)
    {
      v28 = 0xFFFFLL;
    }

    v29 = v28 & ~(v28 >> 63);
    sub_1000FC690((v22 << 32) | (v29 << 48) | v102, v14, &v108);
    if (v20 == 4)
    {
      break;
    }

    if (__OFADD__(v20++, 1))
    {
      goto LABEL_54;
    }
  }

  v31 = v108;
  v2 = v14;
  v32 = NSData.startIndex.getter();
  v33 = NSData.endIndex.getter();
  v34 = NSData.startIndex.getter();
  v35 = NSData.endIndex.getter();
  if (v32 < v34 || v35 < v32)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    swift_once();
    v42 = sub_10000A1BC(v88, qword_1001794F0);
    v43 = v89;
    sub_10000A2A4(v42, v89);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for AUALog(0);
    v45 = sub_10000A1BC(v44, qword_100179508);
    v46 = v2;
    v2 = v45;
    sub_100039F58(2, v43, v46, v29);

    sub_10000C9D0(v43);
    sub_10000CA2C();
    swift_allocError();
    *v47 = 29;
    *(v47 + 8) = 0;
    *(v47 + 16) = 0xE000000000000000;
    swift_willThrow();

    return v2;
  }

  v2 = v14;
  v34 = NSData.startIndex.getter();
  v36 = NSData.endIndex.getter();
  if (v33 < v34 || v36 < v33)
  {
    goto LABEL_67;
  }

  if (__OFSUB__(v33, v32))
  {
    goto LABEL_68;
  }

  if (v33 - v32 < v31)
  {
    sub_10000CA2C();
    swift_allocError();
    *v37 = 30;
    *(v37 + 8) = 0;
    *(v37 + 16) = 0xE000000000000000;
    swift_willThrow();

    return v2;
  }

  if (v91)
  {
    v38 = 256;
  }

  else
  {
    v38 = 0;
  }

  v2 = v38 & 0xFFFFFF00 | v97;
  v39 = v14;
  v40 = sub_10009CAD4(v2, v39);
  v41 = v105;
  v49 = v40;

  if (v49 < 5u)
  {

    return v2;
  }

  v50 = sub_1000A0FF0(v93, v49);
  v52 = v51;
  v104 = 0;
  v98 = v50;

  v102 = sub_1000A2D88(v90 & 0xFFFFFF);
  v53 = *(v103 + 2);
  v14 = v52;
  v54 = NSData.startIndex.getter();
  v55 = v14;
  v25 = NSData.endIndex.getter();
  v56 = NSData.startIndex.getter();
  v57 = NSData.endIndex.getter();
  if (v54 < v56 || v57 < v54)
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v55 = v14;
  v58 = NSData.startIndex.getter();
  v59 = NSData.endIndex.getter();
  if (v25 < v58 || v59 < v25)
  {
    goto LABEL_70;
  }

  v60 = v25 - v54;
  if (__OFSUB__(v25, v54))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v25 = v41;
  if (v60 >= 0xFFFF)
  {
    v60 = 0xFFFFLL;
  }

  v61 = v60 & ~(v60 >> 63);
  v62 = v53;
  v63 = (v53 << 32) | (v61 << 48);
  v64 = v102;
  v65 = v104;
  sub_1000FC690(v63 & 0xFFFFFFFF00FFFFFFLL | (v102 << 24) | 0x1A1, v52, &v108);
  if (v65)
  {
    v104 = v65;
    v55 = _convertErrorToNSError(_:)();
    v66 = [v55 code];

    if (v66 >= 0xFFFFFFFF80000000)
    {
      if (v66 <= 0x7FFFFFFF)
      {
        v67 = [v25 boxName];
        if (v67)
        {
          v68 = v67;
          v87._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v87._object = v69;
        }

        v70 = v64 << 8;
        v106 = 0;
        v107 = 0xE000000000000000;
        if (v66 == -536850432)
        {
          _StringGuts.grow(_:)(32);

          v106 = 0xD000000000000012;
          v107 = v95;
          String.append(_:)(v87);

          v71._countAndFlagsBits = 0x64656C6C61745320;
          v71._object = 0xEA0000000000203ALL;
          String.append(_:)(v71);
          sub_100001AB4(&qword_100173C98, &unk_100120120);
        }

        else
        {
          _StringGuts.grow(_:)(45);

          v106 = 0x20726F727245;
          v107 = 0xE600000000000000;
          sub_100001AB4(&qword_100173C98, &unk_100120120);
          v78 = swift_allocObject();
          *(v78 + 16) = v94;
          *(v78 + 56) = &type metadata for Int32;
          *(v78 + 64) = &protocol witness table for Int32;
          *(v78 + 32) = v66;
          v79._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v79);

          v80._countAndFlagsBits = 0xD000000000000020;
          v80._object = (v96 | 0x8000000000000000);
          String.append(_:)(v80);
          String.append(_:)(v87);

          v81._countAndFlagsBits = 58;
          v81._object = 0xE100000000000000;
          String.append(_:)(v81);
        }

        v72 = swift_allocObject();
        *(v72 + 16) = v99;
        *(v72 + 56) = &type metadata for UInt8;
        *(v72 + 64) = &protocol witness table for UInt8;
        *(v72 + 32) = -95;
        *(v72 + 96) = &type metadata for UInt8;
        *(v72 + 104) = &protocol witness table for UInt8;
        *(v72 + 72) = 1;
        *(v72 + 136) = &type metadata for UInt16;
        *(v72 + 144) = &protocol witness table for UInt16;
        *(v72 + 112) = v70;
        *(v72 + 176) = &type metadata for UInt16;
        *(v72 + 184) = &protocol witness table for UInt16;
        *(v72 + 152) = v62;
        *(v72 + 216) = &type metadata for UInt16;
        *(v72 + 224) = &protocol witness table for UInt16;
        *(v72 + 192) = v61;
        v82._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v82);

        v55 = v106;
        v52 = v107;
        if (qword_100173CC0 == -1)
        {
          goto LABEL_64;
        }

        goto LABEL_74;
      }

LABEL_73:
      __break(1u);
LABEL_74:
      swift_once();
LABEL_64:
      v83 = type metadata accessor for AUALog(0);
      v84 = sub_10000A1BC(v83, qword_100179508);
      v85 = v55;
      v2 = v84;
      sub_100039F58(2, v25 + v101, v85, v52);

      swift_willThrow();

      goto LABEL_18;
    }

LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

LABEL_55:

  v73 = v108;
  v74 = NSData.startIndex.getter();
  v75 = NSData.endIndex.getter();
  v76 = NSData.startIndex.getter();
  result = NSData.endIndex.getter();
  if (v74 < v76 || result < v74)
  {
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v2 = v14;
  v77 = NSData.startIndex.getter();
  result = NSData.endIndex.getter();
  if (v75 < v77 || result < v75)
  {
    goto LABEL_76;
  }

  if (!__OFSUB__(v75, v74))
  {
    if (v73 == v75 - v74)
    {

      return v98 & 0x1FF;
    }

    else
    {
      sub_10000CA2C();
      swift_allocError();
      *v86 = 30;
      *(v86 + 8) = 0;
      *(v86 + 16) = 0xE000000000000000;
      swift_willThrow();
    }

    return v2;
  }

LABEL_77:
  __break(1u);
  return result;
}

unint64_t sub_10005EB10(int a1, uint64_t a2)
{
  v5 = type metadata accessor for LogID(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v9._countAndFlagsBits = 0xD000000000000028;
  v9._object = 0x800000010012D4F0;
  String.append(_:)(v9);
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10011DE90;
  *(v10 + 56) = &type metadata for Int32;
  *(v10 + 64) = &protocol witness table for Int32;
  *(v10 + 32) = a1;
  v11._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v11);

  v12._object = 0x800000010012BE30;
  v12._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v12);
  v25 = a2;
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v15 = v23;
  v14 = v24;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A1BC(v5, qword_1001794F0);
  sub_10000A2A4(v16, v8);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v17, qword_100179508);
  sub_100039AA0(2, v8, v15, v14);

  sub_10000C9D0(v8);
  if (a2 == 6 && (swift_beginAccess(), (v18 = *(v2 + 216)) != 0))
  {
    v19 = [v18 bytes];
    return sub_10005D940(*v19 | (*(v19 + 1) << 16));
  }

  else
  {
    sub_10000A2A4(v16, v8);
    sub_100039F58(2, v8, 0xD000000000000042, 0x800000010012D520);
    sub_10000C9D0(v8);
    sub_10000CA2C();
    swift_allocError();
    *v21 = 2;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }
}

unint64_t sub_10005EE4C(int a1, uint64_t a2)
{
  result = sub_10005EB10(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_10005EE74(unsigned int a1, uint64_t a2)
{
  v3 = (a1 >> 18) & 0x3C | (a1 >> 6);
  if (v3 == 53)
  {
    v4 = sub_10005D9E8(a1 & 0xFFFFFF, a2);
    if (!v2)
    {
      return v4 & 0x1FF;
    }
  }

  else
  {
    if (v3 != 54)
    {
      sub_10000CA2C();
      swift_allocError();
      *v6 = 30;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0xE000000000000000;
      swift_willThrow();
      return v5;
    }

    sub_1000201E4(a1 & 0xFFFFFF, a2);
    if (!v2)
    {
      return v4 & 0x1FF;
    }
  }

  return v5;
}

uint64_t sub_10005EF14(unsigned __int8 a1)
{
  if (a1 <= 5u)
  {
    return (0x30502010005uLL >> (8 * a1));
  }

  else
  {
    return 5;
  }
}

id sub_10005EF40(uint64_t a1, uint64_t a2, id a3)
{
  v7 = type metadata accessor for LogID(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 0;
  v11 = [objc_allocWithZone(NSMutableData) initWithLength:6];
  if (!v11)
  {
    sub_10000CA2C();
    swift_allocError();
    *v29 = 1;
    *(v29 + 8) = 0;
    *(v29 + 16) = 0xE000000000000000;
    swift_willThrow();
    return a3;
  }

  v12 = v11;
  v56 = a1;
  v57 = a2;
  v55 = v7;
  v13 = v11;
  v14 = NSData.startIndex.getter();
  v15 = v13;
  v16 = NSData.endIndex.getter();
  v17 = NSData.startIndex.getter();
  v18 = NSData.endIndex.getter();
  if (v14 < v17 || v18 < v14)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v17 = NSData.startIndex.getter();
  v15 = NSData.endIndex.getter();

  if (v16 < v17 || v15 < v16)
  {
    goto LABEL_46;
  }

  v21 = v16 - v14;
  if (__OFSUB__(v16, v14))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v21 >> 16)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v22 = a3 << 32;
  v15 = v57;
  sub_1000FC690(v22 | (v21 << 48) | (v56 << 16) | 0x6A1, v12, &v60);
  if (v3)
  {
    v23 = _convertErrorToNSError(_:)();
    v17 = [v23 code];

    if (v17 >= 0xFFFFFFFF80000000)
    {
      if (v17 <= 0x7FFFFFFF)
      {
        v58 = 0;
        v59 = 0xE000000000000000;
        _StringGuts.grow(_:)(29);

        v58 = 0x20726F727245;
        v59 = 0xE600000000000000;
        sub_100001AB4(&qword_100173C98, &unk_100120120);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_10011DE90;
        *(v24 + 56) = &type metadata for Int32;
        *(v24 + 64) = &protocol witness table for Int32;
        *(v24 + 32) = v17;
        v25._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v25);

        v26._object = 0x800000010012D570;
        v26._countAndFlagsBits = 0xD000000000000015;
        String.append(_:)(v26);
        v15 = v58;
        v17 = v59;
        if (qword_100173CB8 == -1)
        {
LABEL_17:
          v27 = sub_10000A1BC(v55, qword_1001794F0);
          sub_10000A2A4(v27, v10);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v28 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v28, qword_100179508);
          sub_100039F58(2, v10, v15, v17);

          sub_10000C9D0(v10);
          goto LABEL_43;
        }

LABEL_52:
        swift_once();
        goto LABEL_17;
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v54 = v10;
  v30 = v60;
  v13 = v13;
  a3 = NSData.startIndex.getter();
  v31 = v13;
  v32 = NSData.endIndex.getter();
  v33 = NSData.startIndex.getter();
  v34 = NSData.endIndex.getter();
  if (a3 < v33 || v34 < a3)
  {
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v31 = v13;
  v35 = NSData.startIndex.getter();
  v36 = NSData.endIndex.getter();

  if (v32 < v35 || v36 < v32)
  {
    goto LABEL_54;
  }

  if (__OFSUB__(v32, a3))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v32 - a3 < v30)
  {
    sub_10000CA2C();
    swift_allocError();
    v38 = 30;
LABEL_42:
    *v37 = v38;
    *(v37 + 8) = 0;
    *(v37 + 16) = 0xE000000000000000;
LABEL_43:
    swift_willThrow();

    return a3;
  }

  v39 = [v13 mutableBytes];
  v40 = *v39;
  if ([v13 length] >= v40)
  {
    sub_10000CA2C();
    swift_allocError();
    v38 = 37;
    goto LABEL_42;
  }

  result = [objc_allocWithZone(NSMutableData) initWithLength:*v39];
  if (result)
  {
    v53 = result;
    a3 = result;
    v42 = NSData.startIndex.getter();
    v31 = a3;
    v43 = NSData.endIndex.getter();
    v44 = NSData.startIndex.getter();
    v45 = NSData.endIndex.getter();
    if (v42 >= v44 && v45 >= v42)
    {
      v31 = a3;
      v46 = NSData.startIndex.getter();
      v47 = NSData.endIndex.getter();

      if (v43 >= v46 && v47 >= v43)
      {
        v48 = v43 - v42;
        v31 = v57;
        if (!__OFSUB__(v43, v42))
        {
          if ((v48 & 0x8000000000000000) == 0)
          {
            if (!(v48 >> 16))
            {
              sub_1000FC690(v22 | (v48 << 48) | (v56 << 16) | 0x6A1, v53, &v60);

              return a3;
            }

LABEL_60:
            __break(1u);
            __break(1u);
            __break(1u);
            swift_once();
            v49 = sub_10000A1BC(v55, qword_1001794F0);
            v50 = v54;
            sub_10000A2A4(v49, v54);
            if (qword_100173CC0 != -1)
            {
              swift_once();
            }

            v51 = type metadata accessor for AUALog(0);
            sub_10000A1BC(v51, qword_100179508);
            sub_100039F58(2, v50, v31, v22);

            sub_10000C9D0(v50);
            swift_willThrow();

            return a3;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005F6D4@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, _OWORD *a3@<X8>)
{
  v138 = a3;
  v8 = type metadata accessor for Mirror();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v13 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (!v14)
  {
    goto LABEL_174;
  }

  v15 = *(a1 + 41);
  if (v15 > 0xF || ((1 << v15) & 0xF3FC) == 0)
  {
    v22 = 49;
    goto LABEL_18;
  }

  ObjectType = *(a1 + 32);
  if (ObjectType[2] != a2)
  {
    v22 = 84;
LABEL_18:
    sub_10000CA2C();
    swift_allocError();
    *v23 = v22;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  if (!ObjectType[3])
  {
    v22 = 83;
    goto LABEL_18;
  }

  if (ObjectType[5] != 1)
  {
    v22 = 81;
    goto LABEL_18;
  }

  if (ObjectType[6] != 2)
  {
    v22 = 82;
    goto LABEL_18;
  }

  if (ObjectType[7] != 48)
  {
    v22 = 85;
    goto LABEL_18;
  }

  v134 = v13;
  v130 = v10;
  v123 = 0;
  v124 = 0;
  v122 = 0;
  v127 = 0;
  v126 = 0;
  v143 = 0;
  v144 = 0;
  LODWORD(v132) = 0;
  v135 = 0;
  v142 = 0;
  v17 = 0;
  v18 = 0;
  v19 = *(a1 + 40);
  v20 = ObjectType[4];
  v120 = v3;
  v121 = v20;
  v167 = &_swiftEmptySetSingleton;
  v168 = &_swiftEmptySetSingleton;
  v139 = v19 | (v15 << 8);
  v128 = a1 + 41;
  v129 = (v11 + 8);
  v125 = 65280;
  v5 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage;
  v131 = _swiftEmptyArrayStorage;
  v137 = ObjectType;
  v140 = v14;
  do
  {
    LODWORD(v136) = v135 & 1;
    v26 = (v128 + 16 * v18);
    while (1)
    {
      if (v18 >= v14)
      {
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      v146 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_173;
      }

      v27 = *v26;
      v28 = *(v26 - 1) | (v27 << 8);
      v148 = *(v26 - 9);
      if (_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v148, v28, ObjectType, v139))
      {
        goto LABEL_20;
      }

      if (v27 != 17)
      {
        break;
      }

      if (v17)
      {
        v145 = v17;
        v29 = v168;
        v30 = v168[2];
        if (v30)
        {
          v147 = v21;
          v141 = v5;
          sub_100001AB4(&qword_100175170, &qword_100120D48);
          v31 = swift_allocObject();
          v32 = j__malloc_size(v31);
          v31[2] = v30;
          v31[3] = 2 * v32 - 64;
          v33 = sub_10011B610(&v162, v31 + 32, v30, v29);
          v132 = *(&v162 + 1);
          v133 = v33;
          ObjectType = *(&v163 + 1);
          v5 = v164;

          sub_100022644();
          if (v133 != v30)
          {
            goto LABEL_177;
          }

          ObjectType = v137;
          v5 = v141;
          v21 = v147;
        }

        else
        {
          v31 = _swiftEmptyArrayStorage;
        }

        v34 = v145;
        v14 = v140;
        if (!v31[2])
        {

          v31 = 0;
        }

        v151 = 1;
        v152 = 1;
        if (!*(v21 + 2))
        {

          v21 = 0;
        }

        *&v157 = v34;
        *(&v157 + 1) = v142;
        *&v158 = v143;
        BYTE8(v158) = 0;
        *(&v158 + 10) = v154;
        HIWORD(v158) = v155;
        *(&v159 + 1) = *v156;
        DWORD1(v159) = *&v156[3];
        *(&v160 + 2) = v149;
        WORD3(v160) = v150;
        BYTE9(v158) = v152;
        LOBYTE(v159) = v136;
        *(&v159 + 1) = v144;
        LOBYTE(v160) = 0;
        *&v162 = v34;
        *(&v162 + 1) = v142;
        BYTE1(v160) = v151;
        *(&v160 + 1) = v21;
        *&v161 = 0;
        *(&v161 + 1) = v31;
        *&v163 = v143;
        BYTE8(v163) = 0;
        BYTE9(v163) = v152;
        *(&v163 + 10) = v154;
        HIWORD(v163) = v155;
        LOBYTE(v164) = v136;
        DWORD1(v164) = *&v156[3];
        *(&v164 + 1) = *v156;
        *(&v164 + 1) = v144;
        LOBYTE(v165) = 0;
        BYTE1(v165) = v151;
        WORD3(v165) = v150;
        *(&v165 + 2) = v149;
        *(&v165 + 1) = v21;
        *&v166 = 0;
        *(&v166 + 1) = v31;
        sub_100022594(&v157, v153);
        sub_1000225F0(&v162);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1000243F8(0, *(v5 + 2) + 1, 1, v5);
        }

        v36 = *(v5 + 2);
        v35 = *(v5 + 3);
        if (v36 >= v35 >> 1)
        {
          v5 = sub_1000243F8((v35 > 1), v36 + 1, 1, v5);
        }

        *(v5 + 2) = v36 + 1;
        v37 = &v5[80 * v36];
        *(v37 + 2) = v157;
        v38 = v158;
        v39 = v159;
        v40 = v161;
        *(v37 + 5) = v160;
        *(v37 + 6) = v40;
        *(v37 + 3) = v38;
        *(v37 + 4) = v39;
        LODWORD(v132) = v135;
      }

      else
      {
      }

      v26 += 16;
      ++v18;
      v143 = 0;
      v144 = 0;
      v142 = 0;
      v17 = v148;
      v21 = _swiftEmptyArrayStorage;
      if (v146 == v14)
      {
        v84 = v144;
        v85 = v144;
        v17 = v148;
        goto LABEL_122;
      }
    }

    if (v27 <= 19)
    {
      v25 = v131;
      if (v27 == 14)
      {
        goto LABEL_21;
      }

      if (v27 == 19)
      {
        v142 = v148;
        goto LABEL_21;
      }

      goto LABEL_77;
    }

    v25 = v131;
    if (v27 == 20)
    {
      v143 = v148;
      goto LABEL_21;
    }

    if (v27 != 73)
    {
      if (v27 == 71)
      {
        v145 = v17;
        v41 = v148;
        v42 = *(v148 + 1);
        if (v42)
        {
          if ((v42 & 2) != 0)
          {
            v68 = -3145343;
          }

          else
          {
            v68 = -3145344;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v131 = sub_100024518(0, *(v131 + 2) + 1, 1, v131);
          }

          v70 = *(v131 + 2);
          v69 = *(v131 + 3);
          if (v70 >= v69 >> 1)
          {
            v131 = sub_100024518((v69 > 1), v70 + 1, 1, v131);
          }

          v71 = v131;
          *(v131 + 2) = v70 + 1;
          v72 = &v71[3 * v70];
          v72[34] = BYTE2(v68);
          *(v72 + 16) = v68;
          if ((v42 & 2) != 0)
          {
            sub_10009B498(&v162, 12);
          }

          v25 = v131;
          v14 = v140;
          v41 = v148;
          v43 = *(v148 + 1);
          if ((v43 & 4) != 0)
          {
            goto LABEL_91;
          }

LABEL_49:
          v44 = *(v41 + 1);
          if ((v44 & 0x10) != 0)
          {
LABEL_101:
            if ((v44 & 0x20) != 0)
            {
              v77 = -3013695;
            }

            else
            {
              v77 = -3013696;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_100024518(0, *(v25 + 2) + 1, 1, v25);
            }

            v79 = *(v25 + 2);
            v78 = *(v25 + 3);
            if (v79 >= v78 >> 1)
            {
              v25 = sub_100024518((v78 > 1), v79 + 1, 1, v25);
            }

            *(v25 + 2) = v79 + 1;
            v80 = &v25[3 * v79];
            v80[34] = BYTE2(v77);
            *(v80 + 16) = v77;
            if ((v44 & 0x20) != 0)
            {
              sub_10009B498(&v162, 12);
            }

            v14 = v140;
            v41 = v148;
          }
        }

        else
        {
          v43 = *(v148 + 1);
          if ((v43 & 4) == 0)
          {
            goto LABEL_49;
          }

LABEL_91:
          if ((v43 & 8) != 0)
          {
            v73 = -2620863;
          }

          else
          {
            v73 = -2620864;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_100024518(0, *(v25 + 2) + 1, 1, v25);
          }

          v75 = *(v25 + 2);
          v74 = *(v25 + 3);
          if (v75 >= v74 >> 1)
          {
            v25 = sub_100024518((v74 > 1), v75 + 1, 1, v25);
          }

          *(v25 + 2) = v75 + 1;
          v76 = &v25[3 * v75];
          v76[34] = BYTE2(v73);
          *(v76 + 16) = v73;
          if ((v43 & 8) != 0)
          {
            sub_10009B498(&v162, 12);
          }

          v14 = v140;
          v41 = v148;
          v44 = *(v148 + 1);
          if ((v44 & 0x10) != 0)
          {
            goto LABEL_101;
          }
        }

        v81 = *(v41 + 10);
        v82 = v127;
        if ((v81 & 0x10) != 0)
        {
          v82 = 3;
        }

        if ((v81 & 8) != 0)
        {
          v82 = 4;
        }

        if ((v81 & 4) != 0)
        {
          v82 = 2;
        }

        if ((v81 & 3) != 0)
        {
          v83 = 1;
        }

        else
        {
          v83 = v82;
        }

        v127 = v83;
        v126 = *(v41 + 4);
        v123 = *(v41 + 3);
        v124 = *(v41 + 19);
        v122 = *(v41 + 18);
        v125 = 512;
        v17 = v145;
        goto LABEL_21;
      }

LABEL_77:
      sub_10009B498(&v162, 37);
      goto LABEL_21;
    }

    sub_100001AB4(&qword_100176820, &qword_100121FB8);
    v45 = swift_allocObject();
    v46 = 0;
    *(v45 + 32) = 0x200000001;
    *(v45 + 40) = 449;
    *(v45 + 42) = -64;
    *(v45 + 45) = -64;
    *(v45 + 43) = 448;
    *(v45 + 48) = 0x800000004;
    *(v45 + 56) = 577;
    *(v45 + 58) = 22;
    *(v45 + 61) = 22;
    *(v45 + 59) = 576;
    *(v45 + 64) = 0x2000000010;
    *(v45 + 72) = 769;
    *(v45 + 74) = 16;
    *(v45 + 77) = 16;
    v136 = v45;
    *(v45 + 75) = 768;
    v47 = v148;
    v141 = v5;
    v145 = v17;
    while (2)
    {
      v48 = v136 + v46;
      v49 = *(v47 + 3);
      if ((v49 & *(v136 + v46 + 32)) != 0)
      {
        v50 = *(v48 + 40) | (*(v48 + 42) << 16);
        v51 = *(v48 + 36) & v49;
        if (v51)
        {
          v52 = *(v48 + 40) | (*(v48 + 42) << 16);
        }

        else
        {
          v52 = *(v48 + 43) | (*(v48 + 45) << 16);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100024518(0, *(v21 + 2) + 1, 1, v21);
        }

        v53 = v21;
        v54 = *(v21 + 2);
        v147 = v53;
        v55 = *(v53 + 3);
        if (v54 >= v55 >> 1)
        {
          v147 = sub_100024518((v55 > 1), v54 + 1, 1, v147);
        }

        v56 = v147;
        *(v147 + 2) = v54 + 1;
        v57 = 3 * v54;
        v21 = v56;
        v58 = &v56[v57];
        v58[34] = BYTE2(v52);
        *(v58 + 16) = v52;
        if (!v51)
        {
          ObjectType = v137;
          v14 = v140;
          v5 = v141;
          goto LABEL_57;
        }

        *(&v163 + 1) = &type metadata for USBDescriptorControl;
        LOWORD(v162) = v50;
        BYTE2(v162) = BYTE2(v50);
        Mirror.init(reflecting:)();
        v59 = Mirror.children.getter();
        v60 = v59[2];
        v61 = v59[3];
        v62 = v59[4];
        v5 = v59[5];
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v133 = dispatch thunk of _AnyIndexBox._typeID.getter();
        swift_getObjectType();
        if (v133 != dispatch thunk of _AnyIndexBox._typeID.getter())
        {
          goto LABEL_176;
        }

        v63 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v63)
        {

          v64 = *v129;
          ObjectType = v137;
          v5 = v141;
          v21 = v147;
          goto LABEL_74;
        }

        dispatch thunk of _AnyCollectionBox.subscript.getter();

        v65 = v162;
        sub_10000CE78(&v163);
        v64 = *v129;
        ObjectType = v137;
        v5 = v141;
        v21 = v147;
        if (*(&v65 + 1))
        {
          v64(v134, v130);
          v14 = v140;
          if (v65 == __PAIR128__(0xE700000000000000, 0x68637469507065))
          {

            goto LABEL_57;
          }
        }

        else
        {
LABEL_74:
          v14 = v140;
          v64(v134, v130);
        }

        v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v66 & 1) == 0)
        {
          sub_10009B498(&v162, 12);
        }

LABEL_57:
        v17 = v145;
        v47 = v148;
      }

      v46 += 16;
      if (v46 != 48)
      {
        continue;
      }

      break;
    }

    swift_setDeallocating();
    swift_deallocClassInstance();
    v67 = *(v47 + 7);
    if (v67 == 2)
    {
      v144 = *(v47 + 4);
      LODWORD(v132) = 1;
      v135 = 1;
LABEL_20:
      v25 = v131;
      goto LABEL_21;
    }

    v25 = v131;
    if (v67 == 1)
    {
      LODWORD(v132) = 0;
      v135 = 0;
      v144 = *(v47 + 4);
    }

LABEL_21:
    v131 = v25;
    v18 = v146;
  }

  while (v146 != v14);
  v85 = v142;
  v84 = v143;
  if (!v17)
  {
    goto LABEL_135;
  }

LABEL_122:
  v145 = v17;
  v86 = v168;
  v87 = v168[2];
  if (!v87)
  {

    v88 = _swiftEmptyArrayStorage;
LABEL_126:
    v89 = v145;
    if (!v88[2])
    {

      v88 = 0;
    }

    v151 = 1;
    v152 = 1;
    if (*(v21 + 2))
    {
      v90 = v21;
    }

    else
    {

      v90 = 0;
    }

    *&v157 = v89;
    *(&v157 + 1) = v85;
    *&v158 = v84;
    BYTE8(v158) = 0;
    *(&v158 + 10) = v154;
    HIWORD(v158) = v155;
    *(&v159 + 1) = *v156;
    DWORD1(v159) = *&v156[3];
    *(&v160 + 2) = v149;
    WORD3(v160) = v150;
    BYTE9(v158) = v152;
    LOBYTE(v159) = v132 & 1;
    *(&v159 + 1) = v144;
    LOBYTE(v160) = 0;
    *&v162 = v89;
    *(&v162 + 1) = v85;
    BYTE1(v160) = v151;
    *(&v160 + 1) = v90;
    *&v161 = 0;
    *(&v161 + 1) = v88;
    *&v163 = v84;
    BYTE8(v163) = 0;
    BYTE9(v163) = v152;
    *(&v163 + 10) = v154;
    HIWORD(v163) = v155;
    LOBYTE(v164) = v132 & 1;
    DWORD1(v164) = *&v156[3];
    *(&v164 + 1) = *v156;
    *(&v164 + 1) = v144;
    LOBYTE(v165) = 0;
    BYTE1(v165) = v151;
    WORD3(v165) = v150;
    *(&v165 + 2) = v149;
    *(&v165 + 1) = v90;
    *&v166 = 0;
    *(&v166 + 1) = v88;
    sub_100022594(&v157, v153);
    sub_1000225F0(&v162);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_132:
      v92 = *(v5 + 2);
      v91 = *(v5 + 3);
      if (v92 >= v91 >> 1)
      {
        v5 = sub_1000243F8((v91 > 1), v92 + 1, 1, v5);
      }

      *(v5 + 2) = v92 + 1;
      v93 = &v5[80 * v92];
      *(v93 + 2) = v157;
      v94 = v158;
      v95 = v159;
      v96 = v161;
      *(v93 + 5) = v160;
      *(v93 + 6) = v96;
      *(v93 + 3) = v94;
      *(v93 + 4) = v95;
LABEL_135:
      v97 = *(v5 + 2);

      if (v97)
      {
        v98 = 0;
        v99 = 0;
        v100 = (v5 + 32);
        while (1)
        {
          if (v99 >= *(v5 + 2))
          {
            goto LABEL_175;
          }

          v162 = *v100;
          v101 = v100[1];
          v102 = v100[2];
          v103 = v100[4];
          v165 = v100[3];
          v166 = v103;
          v163 = v101;
          v164 = v102;
          if (!v98)
          {
            v104 = v162;
            sub_100022594(&v162, &v157);
            if (IOUSBGetEndpointUsageType(v104) || (wMaxPacketSize = v104->wMaxPacketSize, wMaxPacketSize <= 8) && wMaxPacketSize > 2)
            {
              v105 = IOUSBGetEndpointUsageType(v104);
              sub_1000225F0(&v162);
              v98 = v105 == 2;
              goto LABEL_139;
            }

            sub_1000225F0(&v162);
          }

          v98 = 1;
LABEL_139:
          ++v99;
          v100 += 5;
          if (v97 == v99)
          {
            if (v98)
            {
              goto LABEL_149;
            }

            break;
          }
        }
      }

      sub_10009B498(&v162, 90);
LABEL_149:
      if (*(v5 + 2) != v121)
      {
        sub_10009B498(&v162, 91);
      }

      v107 = v125 >> 8;
      if (v125 >> 8 <= 0xFE)
      {
        v108 = v126;
      }

      else
      {
        v108 = 0;
      }

      if (v107 <= 0xFE)
      {
        v109 = v125;
      }

      else
      {
        v109 = 0;
      }

      if (v107 <= 0xFE)
      {
        v110 = BYTE1(v125);
      }

      else
      {
        v110 = 2;
      }

      v111 = v167;
      v112 = v167[2];
      if (v112)
      {
        v113 = sub_1001193F0(v167[2], 0);
        v114 = sub_10011B610(&v162, v113 + 32, v112, v111);
        sub_100022644();
        if (v114 == v112)
        {
LABEL_164:
          v115 = v131;
          if (!v113[2])
          {

            v113 = 0;
          }

          if (*(v115 + 2))
          {
            v116 = v115;
          }

          else
          {

            v116 = 0;
          }

          *(&v157 + 9) = *v156;
          HIDWORD(v157) = *&v156[3];
          *(&v160 + 2) = v154;
          WORD3(v160) = v155;
          *&v157 = ObjectType;
          *&v162 = ObjectType;
          BYTE8(v157) = v127;
          *&v158 = v123;
          *(&v158 + 1) = v122;
          *&v159 = v124;
          *(&v159 + 1) = v108;
          LOBYTE(v160) = v109;
          BYTE1(v160) = v110;
          *(&v160 + 1) = v5;
          *&v161 = v116;
          *(&v161 + 1) = v113;
          BYTE8(v162) = v127;
          *(&v162 + 9) = *v156;
          HIDWORD(v162) = *&v156[3];
          *&v163 = v123;
          *(&v163 + 1) = v122;
          *&v164 = v124;
          *(&v164 + 1) = v108;
          LOBYTE(v165) = v109;
          BYTE1(v165) = v110;
          *(&v165 + 2) = v154;
          WORD3(v165) = v155;
          *(&v165 + 1) = v5;
          *&v166 = v116;
          *(&v166 + 1) = v113;
          sub_10001EBF0(&v157, v153);
          result = sub_10001EC4C(&v162);
          v117 = v160;
          v118 = v138;
          v138[2] = v159;
          v118[3] = v117;
          v118[4] = v161;
          v119 = v158;
          *v118 = v157;
          v118[1] = v119;
          return result;
        }

        __break(1u);
      }

      v113 = _swiftEmptyArrayStorage;
      goto LABEL_164;
    }

LABEL_178:
    v5 = sub_1000243F8(0, *(v5 + 2) + 1, 1, v5);
    goto LABEL_132;
  }

  v142 = v85;
  v143 = v84;
  v141 = v5;
  v88 = sub_1001193F0(v87, 0);
  v148 = sub_10011B610(&v162, v88 + 32, v87, v86);

  result = sub_100022644();
  if (v148 == v87)
  {
    ObjectType = v137;
    v5 = v141;
    v85 = v142;
    v84 = v143;
    goto LABEL_126;
  }

  __break(1u);
  return result;
}

char *sub_100060834(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  v3 = HIWORD(a1);
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _swiftEmptyArrayStorage;
  v10 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC4TerminalCompanionChannelMagnitudePhaseSegmentPoint(0);
  *(&v28 + 1) = v11;
  LODWORD(v27) = v1;
  WORD2(v27) = v2;
  WORD3(v27) = v3;
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v5 + 8))(v8, v4);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    sub_100022D40(v26, v10, &v23);
    sub_10000D040(v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100023EEC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100023EEC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v9;
}

char *sub_100060B70(unsigned int a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = HIWORD(a1);
  v6 = HIBYTE(a1);
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v30 + 1) = a2(0);
  LOBYTE(v29) = v3;
  BYTE1(v29) = v4;
  BYTE2(v29) = v5;
  BYTE3(v29) = v6;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v8 + 8))(v11, v7);
  v21[1] = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v13, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = sub_100023EEC((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      v17 = &v12[40 * v16];
      v18 = v22;
      v19 = v23;
      *(v17 + 8) = v24;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v12;
}

char *sub_100060E44(unint64_t a1, unint64_t a2, __int16 a3)
{
  v3 = a2;
  v4 = a1;
  *v32 = a2;
  *&v32[8] = a3;
  v5 = a1 >> 16;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v24 = a2 >> 16;
  HIDWORD(v23) = *&v32[6];
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _swiftEmptyArrayStorage;
  v14 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC4AudioStreamingValidFrequencyRangeDescriptor(0);
  *&v32[24] = v15;
  *v32 = v4;
  *&v32[2] = v5;
  *&v32[4] = v6;
  *&v32[6] = v7;
  *&v32[8] = v3;
  *&v32[10] = v24;
  *&v32[14] = HIDWORD(v23);
  Mirror.init(reflecting:)();
  v16 = Mirror.children.getter();
  (*(v9 + 8))(v12, v8);
  v24 = v16;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v33 + 1))
  {
    v31[0] = *v32;
    v31[1] = *&v32[16];
    v31[2] = v33;
    sub_100022D40(v31, v14, &v28);
    sub_10000D040(v31, &qword_100175248, &unk_100122110);
    if (*(&v29 + 1))
    {
      v25 = v28;
      v26 = v29;
      v27 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100023EEC(0, *(v13 + 2) + 1, 1, v13);
      }

      v18 = *(v13 + 2);
      v17 = *(v13 + 3);
      if (v18 >= v17 >> 1)
      {
        v13 = sub_100023EEC((v17 > 1), v18 + 1, 1, v13);
      }

      *(v13 + 2) = v18 + 1;
      v19 = &v13[40 * v18];
      v20 = v25;
      v21 = v26;
      *(v19 + 8) = v27;
      *(v19 + 2) = v20;
      *(v19 + 3) = v21;
    }

    else
    {
      sub_10000D040(&v28, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v13;
}

char *sub_10006116C(unint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v4 = a2;
  v5 = a1;
  v6 = a1 >> 16;
  v7 = HIDWORD(a1);
  v23 = HIDWORD(a2);
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _swiftEmptyArrayStorage;
  v14 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v32 + 1) = a3(0);
  LOWORD(v31) = v5;
  WORD1(v31) = v6;
  *(&v31 + 4) = __PAIR64__(v4, v7);
  HIDWORD(v31) = v23;
  Mirror.init(reflecting:)();
  v15 = Mirror.children.getter();
  (*(v9 + 8))(v12, v8);
  v23 = v15;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v33 + 1))
  {
    v30[0] = v31;
    v30[1] = v32;
    v30[2] = v33;
    sub_100022D40(v30, v14, &v27);
    sub_10000D040(v30, &qword_100175248, &unk_100122110);
    if (*(&v28 + 1))
    {
      v24 = v27;
      v25 = v28;
      v26 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100023EEC(0, *(v13 + 2) + 1, 1, v13);
      }

      v17 = *(v13 + 2);
      v16 = *(v13 + 3);
      if (v17 >= v16 >> 1)
      {
        v13 = sub_100023EEC((v16 > 1), v17 + 1, 1, v13);
      }

      *(v13 + 2) = v17 + 1;
      v18 = &v13[40 * v17];
      v19 = v24;
      v20 = v25;
      *(v18 + 8) = v26;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
    }

    else
    {
      sub_10000D040(&v27, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v13;
}

char *sub_10006146C(unsigned int a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = HIWORD(a1);
  v5 = type metadata accessor for Mirror();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v28 + 1) = a2(0);
  LOWORD(v27) = v3;
  WORD1(v27) = v4;
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v6 + 8))(v9, v5);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    sub_100022D40(v26, v11, &v23);
    sub_10000D040(v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        v10 = sub_100023EEC((v13 > 1), v14 + 1, 1, v10);
      }

      *(v10 + 2) = v14 + 1;
      v15 = &v10[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_100061748(unint64_t a1, unsigned int a2)
{
  v3 = a1;
  v4 = a1 >> 16;
  v5 = HIDWORD(a1);
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC4TerminalCompanionChannelBandwidthSegment(0);
  *(&v30 + 1) = v13;
  LOWORD(v29) = v3;
  WORD1(v29) = v4;
  *(&v29 + 4) = __PAIR64__(a2, v5);
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v7 + 8))(v10, v6);
  v21[1] = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v12, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_100023EEC((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      v18 = v22;
      v19 = v23;
      *(v17 + 8) = v24;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_100061A70(unint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v4 = a2;
  v5 = a1;
  v6 = a1 >> 16;
  v7 = HIDWORD(a1);
  v23 = HIWORD(a1);
  v24 = a2 >> 16;
  v25 = HIDWORD(a2);
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _swiftEmptyArrayStorage;
  v14 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v34 + 1) = a3(0);
  LOWORD(v33) = v5;
  WORD1(v33) = v6;
  WORD2(v33) = v7;
  WORD3(v33) = v23;
  WORD4(v33) = v4;
  WORD5(v33) = v24;
  WORD6(v33) = v25;
  Mirror.init(reflecting:)();
  v15 = Mirror.children.getter();
  (*(v9 + 8))(v12, v8);
  v25 = v15;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v35 + 1))
  {
    v32[0] = v33;
    v32[1] = v34;
    v32[2] = v35;
    sub_100022D40(v32, v14, &v29);
    sub_10000D040(v32, &qword_100175248, &unk_100122110);
    if (*(&v30 + 1))
    {
      v26 = v29;
      v27 = v30;
      v28 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100023EEC(0, *(v13 + 2) + 1, 1, v13);
      }

      v17 = *(v13 + 2);
      v16 = *(v13 + 3);
      if (v17 >= v16 >> 1)
      {
        v13 = sub_100023EEC((v16 > 1), v17 + 1, 1, v13);
      }

      *(v13 + 2) = v17 + 1;
      v18 = &v13[40 * v17];
      v19 = v26;
      v20 = v27;
      *(v18 + 8) = v28;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
    }

    else
    {
      sub_10000D040(&v29, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v13;
}

char *sub_100061DA4(unint64_t a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a1 >> 16;
  v5 = HIDWORD(a1);
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v29 + 1) = a2(0);
  LOWORD(v28) = v3;
  WORD1(v28) = v4;
  WORD2(v28) = v5;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v7 + 8))(v10, v6);
  v20[1] = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v30 + 1))
  {
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    sub_100022D40(v27, v12, &v24);
    sub_10000D040(v27, &qword_100175248, &unk_100122110);
    if (*(&v25 + 1))
    {
      v21 = v24;
      v22 = v25;
      v23 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v15 = *(v11 + 2);
      v14 = *(v11 + 3);
      if (v15 >= v14 >> 1)
      {
        v11 = sub_100023EEC((v14 > 1), v15 + 1, 1, v11);
      }

      *(v11 + 2) = v15 + 1;
      v16 = &v11[40 * v15];
      v17 = v21;
      v18 = v22;
      *(v16 + 8) = v23;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v24, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_100062070(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 16;
  v3 = a1 >> 24;
  v4 = HIDWORD(a1);
  v5 = a1 >> 40;
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC3ClusterChannelInformationSegment(0);
  *(&v30 + 1) = v13;
  LOWORD(v29) = v1;
  BYTE2(v29) = v2;
  BYTE3(v29) = v3;
  BYTE4(v29) = v4;
  BYTE5(v29) = v5;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v7 + 8))(v10, v6);
  v21[1] = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v12, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_100023EEC((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      v18 = v22;
      v19 = v23;
      *(v17 + 8) = v24;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_10006235C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 16;
  v3 = a1 >> 24;
  v4 = HIDWORD(a1);
  v5 = a1 >> 40;
  v22 = HIWORD(a1);
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC3ClusterChannelAmbiosonicSegment(0);
  *(&v31 + 1) = v13;
  LOWORD(v30) = v1;
  BYTE2(v30) = v2;
  BYTE3(v30) = v3;
  BYTE4(v30) = v4;
  BYTE5(v30) = v5;
  BYTE6(v30) = v22;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v7 + 8))(v10, v6);
  v22 = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    sub_100022D40(v29, v12, &v26);
    sub_10000D040(v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_100023EEC((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      v18 = v23;
      v19 = v24;
      *(v17 + 8) = v25;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_100062690(unint64_t a1, unsigned int a2)
{
  v2 = a1;
  *&v31 = a1;
  WORD4(v31) = a2;
  v3 = a1 >> 8;
  v4 = a1 >> 40;
  v5 = HIWORD(a1);
  v6 = *(&v31 + 7);
  LODWORD(v23) = a2 >> 8;
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC2ProcessingUnitDescriptorPart2(0);
  *(&v32 + 1) = v14;
  LOBYTE(v31) = v2;
  *(&v31 + 1) = v3;
  BYTE5(v31) = v4;
  BYTE6(v31) = v5;
  *(&v31 + 7) = v6;
  BYTE9(v31) = v23;
  Mirror.init(reflecting:)();
  v15 = Mirror.children.getter();
  (*(v8 + 8))(v11, v7);
  v23 = v15;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v33 + 1))
  {
    v30[0] = v31;
    v30[1] = v32;
    v30[2] = v33;
    sub_100022D40(v30, v13, &v27);
    sub_10000D040(v30, &qword_100175248, &unk_100122110);
    if (*(&v28 + 1))
    {
      v24 = v27;
      v25 = v28;
      v26 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
      }

      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      if (v17 >= v16 >> 1)
      {
        v12 = sub_100023EEC((v16 > 1), v17 + 1, 1, v12);
      }

      *(v12 + 2) = v17 + 1;
      v18 = &v12[40 * v17];
      v19 = v24;
      v20 = v25;
      *(v18 + 8) = v26;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
    }

    else
    {
      sub_10000D040(&v27, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v12;
}

char *sub_1000629A0(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = HIWORD(a1);
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _swiftEmptyArrayStorage;
  v10 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADCClassSpecificDescriptorHeader(0);
  *(&v28 + 1) = v11;
  LOBYTE(v27) = v1;
  BYTE1(v27) = v2;
  BYTE2(v27) = v3;
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v5 + 8))(v8, v4);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    sub_100022D40(v26, v10, &v23);
    sub_10000D040(v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100023EEC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100023EEC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v9;
}

char *sub_100062C7C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _swiftEmptyArrayStorage;
  v14 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC4AudioStreamingSelfDescriptor(0);
  *(&v33 + 1) = v15;
  v16 = swift_allocObject();
  *&v32 = v16;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  Mirror.init(reflecting:)();
  v17 = Mirror.children.getter();
  (*(v9 + 8))(v12, v8);
  v24[1] = v17;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v34 + 1))
  {
    v31[0] = v32;
    v31[1] = v33;
    v31[2] = v34;
    sub_100022D40(v31, v14, &v28);
    sub_10000D040(v31, &qword_100175248, &unk_100122110);
    if (*(&v29 + 1))
    {
      v25 = v28;
      v26 = v29;
      v27 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100023EEC(0, *(v13 + 2) + 1, 1, v13);
      }

      v19 = *(v13 + 2);
      v18 = *(v13 + 3);
      if (v19 >= v18 >> 1)
      {
        v13 = sub_100023EEC((v18 > 1), v19 + 1, 1, v13);
      }

      *(v13 + 2) = v19 + 1;
      v20 = &v13[40 * v19];
      v21 = v25;
      v22 = v26;
      *(v20 + 8) = v27;
      *(v20 + 2) = v21;
      *(v20 + 3) = v22;
    }

    else
    {
      sub_10000D040(&v28, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v13;
}

char *sub_100062F5C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 16;
  v3 = HIWORD(a1);
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _swiftEmptyArrayStorage;
  v10 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC3ExtensionUnitDescriptorPart2(0);
  *(&v28 + 1) = v11;
  LOWORD(v27) = v1;
  *(&v27 + 2) = v2;
  WORD3(v27) = v3;
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v5 + 8))(v8, v4);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    sub_100022D40(v26, v10, &v23);
    sub_10000D040(v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100023EEC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100023EEC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v9;
}

char *sub_100063238(unint64_t a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = type metadata accessor for Mirror();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v28 + 1) = a2(0);
  LODWORD(v27) = v3;
  WORD2(v27) = v4;
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v6 + 8))(v9, v5);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    sub_100022D40(v26, v11, &v23);
    sub_10000D040(v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        v10 = sub_100023EEC((v13 > 1), v14 + 1, 1, v10);
      }

      *(v10 + 2) = v14 + 1;
      v15 = &v10[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_1000634FC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 40;
  v4 = HIWORD(a1);
  v5 = HIBYTE(a1);
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC2ExtensionUnitDescriptorPart2(0);
  *(&v30 + 1) = v13;
  LOBYTE(v29) = v1;
  *(&v29 + 1) = v2;
  BYTE5(v29) = v3;
  BYTE6(v29) = v4;
  BYTE7(v29) = v5;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v7 + 8))(v10, v6);
  v21[1] = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v12, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_100023EEC((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      v18 = v22;
      v19 = v23;
      *(v17 + 8) = v24;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_100063800(unint64_t a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 24;
  v6 = HIDWORD(a1);
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v30 + 1) = a2(0);
  LOBYTE(v29) = v3;
  *(&v29 + 1) = v4;
  BYTE3(v29) = v5;
  BYTE4(v29) = v6;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v8 + 8))(v11, v7);
  v21[1] = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v13, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = sub_100023EEC((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      v17 = &v12[40 * v16];
      v18 = v22;
      v19 = v23;
      *(v17 + 8) = v24;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v12;
}

char *sub_100063AEC()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _swiftEmptyArrayStorage;
  v7 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC4PowerDomainEntityDescriptor(0);
  *(&v27 + 1) = v8;
  v9 = swift_allocObject();
  *&v26 = v9;
  v10 = *(v0 + 16);
  *(v9 + 16) = *v0;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v0 + 32);
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v2 + 8))(v5, v1);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    sub_100022D40(v25, v7, &v22);
    sub_10000D040(v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100023EEC(0, *(v6 + 2) + 1, 1, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = sub_100023EEC((v12 > 1), v13 + 1, 1, v6);
      }

      *(v6 + 2) = v13 + 1;
      v14 = &v6[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v6;
}

char *sub_100063DF0(unsigned int a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = type metadata accessor for Mirror();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v28 + 1) = a2(0);
  LOBYTE(v27) = v3;
  BYTE1(v27) = v4;
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v6 + 8))(v9, v5);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    sub_100022D40(v26, v11, &v23);
    sub_10000D040(v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        v10 = sub_100023EEC((v13 > 1), v14 + 1, 1, v10);
      }

      *(v10 + 2) = v14 + 1;
      v15 = &v10[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_1000640B4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = a1 >> 40;
  v22 = HIBYTE(a1);
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC1ACInterfaceHeaderDescriptor(0);
  *(&v31 + 1) = v13;
  LOBYTE(v30) = v1;
  BYTE1(v30) = v2;
  BYTE2(v30) = v3;
  *(&v30 + 3) = v4;
  *(&v30 + 5) = v5;
  BYTE7(v30) = v22;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v7 + 8))(v10, v6);
  v22 = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    sub_100022D40(v29, v12, &v26);
    sub_10000D040(v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_100023EEC((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      v18 = v23;
      v19 = v24;
      *(v17 + 8) = v25;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_1000643A0(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 >> 16;
  v5 = HIDWORD(a1);
  v6 = HIWORD(a1);
  v23 = a2 >> 16;
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC4AudioControlSelfDescriptor(0);
  *(&v32 + 1) = v14;
  LOWORD(v31) = v3;
  WORD1(v31) = v4;
  WORD2(v31) = v5;
  WORD3(v31) = v6;
  WORD4(v31) = v2;
  *(&v31 + 10) = v23;
  Mirror.init(reflecting:)();
  v15 = Mirror.children.getter();
  (*(v8 + 8))(v11, v7);
  v23 = v15;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v33 + 1))
  {
    v30[0] = v31;
    v30[1] = v32;
    v30[2] = v33;
    sub_100022D40(v30, v13, &v27);
    sub_10000D040(v30, &qword_100175248, &unk_100122110);
    if (*(&v28 + 1))
    {
      v24 = v27;
      v25 = v28;
      v26 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
      }

      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      if (v17 >= v16 >> 1)
      {
        v12 = sub_100023EEC((v16 > 1), v17 + 1, 1, v12);
      }

      *(v12 + 2) = v17 + 1;
      v18 = &v12[40 * v17];
      v19 = v24;
      v20 = v25;
      *(v18 + 8) = v26;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
    }

    else
    {
      sub_10000D040(&v27, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v12;
}

char *sub_1000646BC(unint64_t a1, unsigned int a2)
{
  v2 = a1;
  *&v31 = a1;
  DWORD2(v31) = a2;
  v3 = a1 >> 8;
  v4 = a1 >> 16;
  v5 = a1 >> 24;
  v6 = HIDWORD(a1);
  LODWORD(v23) = *(&v31 + 5);
  HIDWORD(v22) = a2 >> 8;
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC3ClockMultiplierDescriptor(0);
  *(&v32 + 1) = v14;
  LOBYTE(v31) = v2;
  BYTE1(v31) = v3;
  BYTE2(v31) = v4;
  BYTE3(v31) = v5;
  BYTE4(v31) = v6;
  *(&v31 + 5) = v23;
  *(&v31 + 9) = WORD2(v22);
  Mirror.init(reflecting:)();
  v15 = Mirror.children.getter();
  (*(v8 + 8))(v11, v7);
  v23 = v15;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v33 + 1))
  {
    v30[0] = v31;
    v30[1] = v32;
    v30[2] = v33;
    sub_100022D40(v30, v13, &v27);
    sub_10000D040(v30, &qword_100175248, &unk_100122110);
    if (*(&v28 + 1))
    {
      v24 = v27;
      v25 = v28;
      v26 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
      }

      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      if (v17 >= v16 >> 1)
      {
        v12 = sub_100023EEC((v16 > 1), v17 + 1, 1, v12);
      }

      *(v12 + 2) = v17 + 1;
      v18 = &v12[40 * v17];
      v19 = v24;
      v20 = v25;
      *(v18 + 8) = v26;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
    }

    else
    {
      sub_10000D040(&v27, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v12;
}

char *sub_1000649E4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v21 = a1 >> 40;
  v22 = HIWORD(a1);
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC2ClockMultiplierDescriptor(0);
  *(&v31 + 1) = v13;
  LOBYTE(v30) = v1;
  BYTE1(v30) = v2;
  BYTE2(v30) = v3;
  BYTE3(v30) = v4;
  BYTE4(v30) = v5;
  BYTE5(v30) = v21;
  BYTE6(v30) = v22;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v7 + 8))(v10, v6);
  v22 = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    sub_100022D40(v29, v12, &v26);
    sub_10000D040(v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_100023EEC((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      v18 = v23;
      v19 = v24;
      *(v17 + 8) = v25;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_100064D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _swiftEmptyArrayStorage;
  v14 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v31 + 1) = a4(0);
  *&v30 = a1;
  *(&v30 + 1) = a2;
  WORD2(v31) = WORD2(a3);
  LODWORD(v31) = a3;
  Mirror.init(reflecting:)();
  v15 = Mirror.children.getter();
  (*(v9 + 8))(v12, v8);
  v22[1] = v15;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    sub_100022D40(v29, v14, &v26);
    sub_10000D040(v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100023EEC(0, *(v13 + 2) + 1, 1, v13);
      }

      v17 = *(v13 + 2);
      v16 = *(v13 + 3);
      if (v17 >= v16 >> 1)
      {
        v13 = sub_100023EEC((v16 > 1), v17 + 1, 1, v13);
      }

      *(v13 + 2) = v17 + 1;
      v18 = &v13[40 * v17];
      v19 = v23;
      v20 = v24;
      *(v18 + 8) = v25;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v13;
}

char *sub_100064FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _swiftEmptyArrayStorage;
  v14 = sub_10000AA2C(_swiftEmptyArrayStorage);
  v15 = a4(0);
  *&v31 = a1;
  *(&v31 + 1) = a2;
  *&v32 = a3;
  *(&v32 + 1) = v15;
  Mirror.init(reflecting:)();
  v16 = Mirror.children.getter();
  (*(v9 + 8))(v12, v8);
  v23[1] = v16;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v33 + 1))
  {
    v30[0] = v31;
    v30[1] = v32;
    v30[2] = v33;
    sub_100022D40(v30, v14, &v27);
    sub_10000D040(v30, &qword_100175248, &unk_100122110);
    if (*(&v28 + 1))
    {
      v24 = v27;
      v25 = v28;
      v26 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100023EEC(0, *(v13 + 2) + 1, 1, v13);
      }

      v18 = *(v13 + 2);
      v17 = *(v13 + 3);
      if (v18 >= v17 >> 1)
      {
        v13 = sub_100023EEC((v17 > 1), v18 + 1, 1, v13);
      }

      *(v13 + 2) = v18 + 1;
      v19 = &v13[40 * v18];
      v20 = v24;
      v21 = v25;
      *(v19 + 8) = v26;
      *(v19 + 2) = v20;
      *(v19 + 3) = v21;
    }

    else
    {
      sub_10000D040(&v27, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v13;
}

char *sub_1000652AC(unint64_t a1, __int16 a2)
{
  v3 = a1;
  v4 = a1 >> 16;
  v5 = HIDWORD(a1);
  v6 = HIWORD(a1);
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC4ExtendedDescriptorHeader(0);
  *(&v31 + 1) = v14;
  LOWORD(v30) = v3;
  WORD1(v30) = v4;
  WORD2(v30) = v5;
  WORD3(v30) = v6;
  WORD4(v30) = a2;
  Mirror.init(reflecting:)();
  v15 = Mirror.children.getter();
  (*(v8 + 8))(v11, v7);
  v22[1] = v15;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    sub_100022D40(v29, v13, &v26);
    sub_10000D040(v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
      }

      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      if (v17 >= v16 >> 1)
      {
        v12 = sub_100023EEC((v16 > 1), v17 + 1, 1, v12);
      }

      *(v12 + 2) = v17 + 1;
      v18 = &v12[40 * v17];
      v19 = v23;
      v20 = v24;
      *(v18 + 8) = v25;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v12;
}

char *sub_100065598(uint64_t a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC3OutputTerminalDescriptor(0);
  *(&v30 + 1) = v13;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  BYTE2(v30) = BYTE2(a3);
  LOWORD(v30) = a3;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v7 + 8))(v10, v6);
  v21[1] = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v12, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_100023EEC((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      v18 = v22;
      v19 = v23;
      *(v17 + 8) = v24;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_100065878(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 16;
  v3 = a1 >> 24;
  v4 = HIDWORD(a1);
  v5 = type metadata accessor for Mirror();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC3HighCapabilityDescriptor(0);
  *(&v29 + 1) = v12;
  LOWORD(v28) = v1;
  BYTE2(v28) = v2;
  BYTE3(v28) = v3;
  WORD2(v28) = v4;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v6 + 8))(v9, v5);
  v20[1] = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v30 + 1))
  {
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    sub_100022D40(v27, v11, &v24);
    sub_10000D040(v27, &qword_100175248, &unk_100122110);
    if (*(&v25 + 1))
    {
      v21 = v24;
      v22 = v25;
      v23 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        v10 = sub_100023EEC((v14 > 1), v15 + 1, 1, v10);
      }

      *(v10 + 2) = v15 + 1;
      v16 = &v10[40 * v15];
      v17 = v21;
      v18 = v22;
      *(v16 + 8) = v23;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v24, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_100065B5C(unint64_t a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v21 = HIDWORD(a1);
  v22 = HIWORD(a1);
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v31 + 1) = a2(0);
  LOBYTE(v30) = v3;
  BYTE1(v30) = v4;
  BYTE2(v30) = v5;
  BYTE3(v30) = v6;
  WORD2(v30) = v21;
  BYTE6(v30) = v22;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v8 + 8))(v11, v7);
  v22 = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    sub_100022D40(v29, v13, &v26);
    sub_10000D040(v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = sub_100023EEC((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      v17 = &v12[40 * v16];
      v18 = v23;
      v19 = v24;
      *(v17 + 8) = v25;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v12;
}

char *sub_100065E90(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 40;
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _swiftEmptyArrayStorage;
  v10 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC2MixerUnitDescriptorPart2(0);
  *(&v28 + 1) = v11;
  LOBYTE(v27) = v1;
  *(&v27 + 1) = v2;
  BYTE5(v27) = v3;
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v5 + 8))(v8, v4);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    sub_100022D40(v26, v10, &v23);
    sub_10000D040(v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100023EEC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100023EEC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v9;
}

char *sub_100066184(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v29 + 1) = a3(0);
  *&v28 = a1;
  BYTE8(v28) = a2;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v7 + 8))(v10, v6);
  v20[1] = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v30 + 1))
  {
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    sub_100022D40(v27, v12, &v24);
    sub_10000D040(v27, &qword_100175248, &unk_100122110);
    if (*(&v25 + 1))
    {
      v21 = v24;
      v22 = v25;
      v23 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v15 = *(v11 + 2);
      v14 = *(v11 + 3);
      if (v15 >= v14 >> 1)
      {
        v11 = sub_100023EEC((v14 > 1), v15 + 1, 1, v11);
      }

      *(v11 + 2) = v15 + 1;
      v16 = &v11[40 * v15];
      v17 = v21;
      v18 = v22;
      *(v16 + 8) = v23;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v24, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_100066448(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = HIBYTE(a1);
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _swiftEmptyArrayStorage;
  v10 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC1MixerUnitDescriptorPart2(0);
  *(&v28 + 1) = v11;
  LOBYTE(v27) = v1;
  *(&v27 + 1) = v2;
  BYTE3(v27) = v3;
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v5 + 8))(v8, v4);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    sub_100022D40(v26, v10, &v23);
    sub_10000D040(v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100023EEC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100023EEC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v9;
}

char *sub_100066724()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001AB4(&qword_100176848, &qword_100122120);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000011;
  *(inited + 16) = xmmword_10011DE90;
  *(inited + 40) = 0x800000010012D590;
  *&v27 = sub_100073D3C(*(v0 + 12), *(v0 + 20), sub_100073EDC, 0);
  sub_100001AB4(&qword_100175CA8, &unk_100124860);
  sub_100073FB0();
  AnyHashable.init<A>(_:)();
  v7 = sub_10000AA2C(inited);
  swift_setDeallocating();
  sub_10000D040(inited + 32, &qword_100174A48, &qword_100120190);
  type metadata accessor for ADC4ExtensionUnitDescriptor(0);
  *(&v28 + 1) = v8;
  v9 = swift_allocObject();
  *&v27 = v9;
  v10 = *(v0 + 16);
  *(v9 + 16) = *v0;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v0 + 32);
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v2 + 8))(v5, v1);
  v19[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  if (*(&v29 + 1))
  {
    v12 = _swiftEmptyArrayStorage;
    do
    {
      v26[0] = v27;
      v26[1] = v28;
      v26[2] = v29;
      sub_100022D40(v26, v7, &v23);
      sub_10000D040(v26, &qword_100175248, &unk_100122110);
      if (*(&v24 + 1))
      {
        v20 = v23;
        v21 = v24;
        v22 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
        }

        v14 = *(v12 + 2);
        v13 = *(v12 + 3);
        if (v14 >= v13 >> 1)
        {
          v12 = sub_100023EEC((v13 > 1), v14 + 1, 1, v12);
        }

        *(v12 + 2) = v14 + 1;
        v15 = &v12[40 * v14];
        v16 = v20;
        v17 = v21;
        *(v15 + 8) = v22;
        *(v15 + 2) = v16;
        *(v15 + 3) = v17;
      }

      else
      {
        sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
      }

      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (*(&v29 + 1));
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  return v12;
}

char *sub_100066ACC(unint64_t a1, unsigned int a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 >> 16;
  v5 = HIDWORD(a1);
  v6 = HIWORD(a1);
  LODWORD(v23) = HIWORD(a2);
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC4ClusterDescriptorHeader(0);
  *(&v32 + 1) = v14;
  LOWORD(v31) = v3;
  WORD1(v31) = v4;
  WORD2(v31) = v5;
  WORD3(v31) = v6;
  WORD4(v31) = v2;
  WORD5(v31) = v23;
  Mirror.init(reflecting:)();
  v15 = Mirror.children.getter();
  (*(v8 + 8))(v11, v7);
  v23 = v15;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v33 + 1))
  {
    v30[0] = v31;
    v30[1] = v32;
    v30[2] = v33;
    sub_100022D40(v30, v13, &v27);
    sub_10000D040(v30, &qword_100175248, &unk_100122110);
    if (*(&v28 + 1))
    {
      v24 = v27;
      v25 = v28;
      v26 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
      }

      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      if (v17 >= v16 >> 1)
      {
        v12 = sub_100023EEC((v16 > 1), v17 + 1, 1, v12);
      }

      *(v12 + 2) = v17 + 1;
      v18 = &v12[40 * v17];
      v19 = v24;
      v20 = v25;
      *(v18 + 8) = v26;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
    }

    else
    {
      sub_10000D040(&v27, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v12;
}

char *sub_100066E00(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 16;
  v3 = a1 >> 24;
  v4 = HIDWORD(a1);
  v5 = HIWORD(a1);
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC3ClusterDescriptorHeader(0);
  *(&v30 + 1) = v13;
  LOWORD(v29) = v1;
  BYTE2(v29) = v2;
  BYTE3(v29) = v3;
  WORD2(v29) = v4;
  BYTE6(v29) = v5;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v7 + 8))(v10, v6);
  v21[1] = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v12, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_100023EEC((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      v18 = v22;
      v19 = v23;
      *(v17 + 8) = v24;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_1000670EC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC2InputTerminalDescriptor(0);
  *(&v30 + 1) = v13;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  LOBYTE(v30) = a3;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v7 + 8))(v10, v6);
  v21[1] = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v12, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_100023EEC((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      v18 = v22;
      v19 = v23;
      *(v17 + 8) = v24;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_1000673DC(unint64_t a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v22 = HIDWORD(a1);
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v31 + 1) = a2(0);
  LOBYTE(v30) = v3;
  BYTE1(v30) = v4;
  BYTE2(v30) = v5;
  BYTE3(v30) = v6;
  BYTE4(v30) = v22;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v8 + 8))(v11, v7);
  v22 = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    sub_100022D40(v29, v13, &v26);
    sub_10000D040(v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = sub_100023EEC((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      v17 = &v12[40 * v16];
      v18 = v23;
      v19 = v24;
      *(v17 + 8) = v25;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v12;
}

char *sub_1000676E0(uint64_t a1, int a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v29 + 1) = a3(0);
  *&v28 = a1;
  DWORD2(v28) = a2;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v7 + 8))(v10, v6);
  v20[1] = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v30 + 1))
  {
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    sub_100022D40(v27, v12, &v24);
    sub_10000D040(v27, &qword_100175248, &unk_100122110);
    if (*(&v25 + 1))
    {
      v21 = v24;
      v22 = v25;
      v23 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v15 = *(v11 + 2);
      v14 = *(v11 + 3);
      if (v15 >= v14 >> 1)
      {
        v11 = sub_100023EEC((v14 > 1), v15 + 1, 1, v11);
      }

      *(v11 + 2) = v15 + 1;
      v16 = &v11[40 * v15];
      v17 = v21;
      v18 = v22;
      *(v16 + 8) = v23;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v24, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_1000679BC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _swiftEmptyArrayStorage;
  v10 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v27 + 1) = a2(0);
  *&v26 = a1;
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v5 + 8))(v8, v4);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    sub_100022D40(v25, v10, &v22);
    sub_10000D040(v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100023EEC(0, *(v9 + 2) + 1, 1, v9);
      }

      v13 = *(v9 + 2);
      v12 = *(v9 + 3);
      if (v13 >= v12 >> 1)
      {
        v9 = sub_100023EEC((v12 > 1), v13 + 1, 1, v9);
      }

      *(v9 + 2) = v13 + 1;
      v14 = &v9[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v9;
}

char *sub_100067CA8(uint64_t a1, uint64_t a2, __int16 a3, uint64_t (*a4)(void))
{
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _swiftEmptyArrayStorage;
  v14 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v31 + 1) = a4(0);
  *&v30 = a1;
  *(&v30 + 1) = a2;
  LOWORD(v31) = a3;
  Mirror.init(reflecting:)();
  v15 = Mirror.children.getter();
  (*(v9 + 8))(v12, v8);
  v22[1] = v15;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    sub_100022D40(v29, v14, &v26);
    sub_10000D040(v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100023EEC(0, *(v13 + 2) + 1, 1, v13);
      }

      v17 = *(v13 + 2);
      v16 = *(v13 + 3);
      if (v17 >= v16 >> 1)
      {
        v13 = sub_100023EEC((v16 > 1), v17 + 1, 1, v13);
      }

      *(v13 + 2) = v17 + 1;
      v18 = &v13[40 * v17];
      v19 = v23;
      v20 = v24;
      *(v18 + 8) = v25;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v13;
}

char *sub_100068000(unint64_t a1, int a2)
{
  LODWORD(v23) = a2;
  v2 = a1;
  v3 = a1 >> 8;
  v4 = a1 >> 16;
  v5 = a1 >> 24;
  v6 = HIDWORD(a1);
  v22 = HIWORD(a1);
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC3PowerDomainDescriptor(0);
  *(&v32 + 1) = v14;
  LOBYTE(v31) = v2;
  BYTE1(v31) = v3;
  BYTE2(v31) = v4;
  BYTE3(v31) = v5;
  WORD2(v31) = v6;
  WORD3(v31) = v22;
  BYTE8(v31) = v23;
  Mirror.init(reflecting:)();
  v15 = Mirror.children.getter();
  (*(v8 + 8))(v11, v7);
  v23 = v15;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v33 + 1))
  {
    v30[0] = v31;
    v30[1] = v32;
    v30[2] = v33;
    sub_100022D40(v30, v13, &v27);
    sub_10000D040(v30, &qword_100175248, &unk_100122110);
    if (*(&v28 + 1))
    {
      v24 = v27;
      v25 = v28;
      v26 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
      }

      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      if (v17 >= v16 >> 1)
      {
        v12 = sub_100023EEC((v16 > 1), v17 + 1, 1, v12);
      }

      *(v12 + 2) = v17 + 1;
      v18 = &v12[40 * v17];
      v19 = v24;
      v20 = v25;
      *(v18 + 8) = v26;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
    }

    else
    {
      sub_10000D040(&v27, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v12;
}

char *sub_100068378(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v22 = a1 >> 40;
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC1FeatureUnitDescriptor(0);
  *(&v31 + 1) = v13;
  LOBYTE(v30) = v1;
  BYTE1(v30) = v2;
  BYTE2(v30) = v3;
  BYTE3(v30) = v4;
  BYTE4(v30) = v5;
  BYTE5(v30) = v22;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v7 + 8))(v10, v6);
  v22 = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    sub_100022D40(v29, v12, &v26);
    sub_10000D040(v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_100023EEC((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      v18 = v23;
      v19 = v24;
      *(v17 + 8) = v25;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_100068664(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v22 = a1 >> 40;
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC1ASInterfaceDescriptor(0);
  *(&v31 + 1) = v13;
  LOBYTE(v30) = v1;
  BYTE1(v30) = v2;
  BYTE2(v30) = v3;
  BYTE3(v30) = v4;
  BYTE4(v30) = v5;
  *(&v30 + 5) = v22;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v7 + 8))(v10, v6);
  v22 = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    sub_100022D40(v29, v12, &v26);
    sub_10000D040(v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_100023EEC((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      v18 = v23;
      v19 = v24;
      *(v17 + 8) = v25;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_100068968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v29 + 1) = a3(0);
  *&v28 = a1;
  *(&v28 + 1) = a2;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v7 + 8))(v10, v6);
  v20[1] = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v30 + 1))
  {
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    sub_100022D40(v27, v12, &v24);
    sub_10000D040(v27, &qword_100175248, &unk_100122110);
    if (*(&v25 + 1))
    {
      v21 = v24;
      v22 = v25;
      v23 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v15 = *(v11 + 2);
      v14 = *(v11 + 3);
      if (v15 >= v14 >> 1)
      {
        v11 = sub_100023EEC((v14 > 1), v15 + 1, 1, v11);
      }

      *(v11 + 2) = v15 + 1;
      v16 = &v11[40 * v15];
      v17 = v21;
      v18 = v22;
      *(v16 + 8) = v23;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v24, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_100068C70(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(void))
{
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _swiftEmptyArrayStorage;
  v14 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v31 + 1) = a4(0);
  *&v30 = a1;
  *(&v30 + 1) = a2;
  LODWORD(v31) = a3;
  Mirror.init(reflecting:)();
  v15 = Mirror.children.getter();
  (*(v9 + 8))(v12, v8);
  v22[1] = v15;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    sub_100022D40(v29, v14, &v26);
    sub_10000D040(v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100023EEC(0, *(v13 + 2) + 1, 1, v13);
      }

      v17 = *(v13 + 2);
      v16 = *(v13 + 3);
      if (v17 >= v16 >> 1)
      {
        v13 = sub_100023EEC((v16 > 1), v17 + 1, 1, v13);
      }

      *(v13 + 2) = v17 + 1;
      v18 = &v13[40 * v17];
      v19 = v23;
      v20 = v24;
      *(v18 + 8) = v25;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v13;
}

char *sub_100068FB0(unsigned int a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = HIWORD(a1);
  v5 = type metadata accessor for Mirror();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v28 + 1) = a2(0);
  LOWORD(v27) = v3;
  BYTE2(v27) = v4;
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v6 + 8))(v9, v5);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    sub_100022D40(v26, v11, &v23);
    sub_10000D040(v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        v10 = sub_100023EEC((v13 > 1), v14 + 1, 1, v10);
      }

      *(v10 + 2) = v14 + 1;
      v15 = &v10[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_10006928C(unint64_t a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a1 >> 16;
  v5 = a1 >> 24;
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v29 + 1) = a2(0);
  LOWORD(v28) = v3;
  BYTE2(v28) = v4;
  *(&v28 + 3) = v5;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v7 + 8))(v10, v6);
  v20[1] = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v30 + 1))
  {
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    sub_100022D40(v27, v12, &v24);
    sub_10000D040(v27, &qword_100175248, &unk_100122110);
    if (*(&v25 + 1))
    {
      v21 = v24;
      v22 = v25;
      v23 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v15 = *(v11 + 2);
      v14 = *(v11 + 3);
      if (v15 >= v14 >> 1)
      {
        v11 = sub_100023EEC((v14 > 1), v15 + 1, 1, v11);
      }

      *(v11 + 2) = v15 + 1;
      v16 = &v11[40 * v15];
      v17 = v21;
      v18 = v22;
      *(v16 + 8) = v23;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v24, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_100069558()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _swiftEmptyArrayStorage;
  v7 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v26 + 1) = &type metadata for MixerUnit;
  v8 = swift_allocObject();
  *&v25 = v8;
  v9 = *(v0 + 48);
  *(v8 + 48) = *(v0 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(v0 + 64);
  *(v8 + 96) = *(v0 + 80);
  v10 = *(v0 + 16);
  *(v8 + 16) = *v0;
  *(v8 + 32) = v10;
  sub_10002317C(v0, v28);
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v2 + 8))(v5, v1);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v25 = v28[0];
    v26 = v28[1];
    v27 = v29;
    sub_100022D40(&v25, v7, &v22);
    sub_10000D040(&v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100023EEC(0, *(v6 + 2) + 1, 1, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = sub_100023EEC((v12 > 1), v13 + 1, 1, v6);
      }

      *(v6 + 2) = v13 + 1;
      v14 = &v6[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v6;
}

char *sub_100069854()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _swiftEmptyArrayStorage;
  v7 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v26 + 1) = &type metadata for SampleRateConverter;
  v8 = swift_allocObject();
  *&v25 = v8;
  v9 = *(v0 + 48);
  *(v8 + 48) = *(v0 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(v0 + 64);
  v10 = *(v0 + 16);
  *(v8 + 16) = *v0;
  *(v8 + 32) = v10;
  sub_100076384(v0, v28);
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v2 + 8))(v5, v1);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v25 = v28[0];
    v26 = v28[1];
    v27 = v29;
    sub_100022D40(&v25, v7, &v22);
    sub_10000D040(&v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100023EEC(0, *(v6 + 2) + 1, 1, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = sub_100023EEC((v12 > 1), v13 + 1, 1, v6);
      }

      *(v6 + 2) = v13 + 1;
      v14 = &v6[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v6;
}

char *sub_100069B44()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _swiftEmptyArrayStorage;
  v7 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v27 + 1) = &type metadata for ControlInterface;
  v8 = swift_allocObject();
  *&v26 = v8;
  v9 = *(v0 + 80);
  *(v8 + 80) = *(v0 + 64);
  *(v8 + 96) = v9;
  *(v8 + 112) = *(v0 + 96);
  *(v8 + 128) = *(v0 + 112);
  v10 = *(v0 + 16);
  *(v8 + 16) = *v0;
  *(v8 + 32) = v10;
  v11 = *(v0 + 48);
  *(v8 + 48) = *(v0 + 32);
  *(v8 + 64) = v11;
  sub_100057294(v0, v29);
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v2 + 8))(v5, v1);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v30 + 1))
  {
    v26 = v29[0];
    v27 = v29[1];
    v28 = v30;
    sub_100022D40(&v26, v7, &v23);
    sub_10000D040(&v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100023EEC(0, *(v6 + 2) + 1, 1, v6);
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        v6 = sub_100023EEC((v13 > 1), v14 + 1, 1, v6);
      }

      *(v6 + 2) = v14 + 1;
      v15 = &v6[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v6;
}

char *sub_100069E1C()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _swiftEmptyArrayStorage;
  v7 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v25 + 1) = &type metadata for ClockMultiplier;
  v8 = swift_allocObject();
  *&v24 = v8;
  v9 = *(v0 + 16);
  *(v8 + 16) = *v0;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v0 + 32);
  *(v8 + 64) = *(v0 + 48);
  sub_10007624C(v0, v27);
  Mirror.init(reflecting:)();
  v10 = Mirror.children.getter();
  (*(v2 + 8))(v5, v1);
  v17[1] = v10;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v24 = v27[0];
    v25 = v27[1];
    v26 = v28;
    sub_100022D40(&v24, v7, &v21);
    sub_10000D040(&v24, &qword_100175248, &unk_100122110);
    if (*(&v22 + 1))
    {
      v18 = v21;
      v19 = v22;
      v20 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100023EEC(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_100023EEC((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      v13 = &v6[40 * v12];
      v14 = v18;
      v15 = v19;
      *(v13 + 8) = v20;
      *(v13 + 2) = v14;
      *(v13 + 3) = v15;
    }

    else
    {
      sub_10000D040(&v21, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v6;
}

char *sub_10006A108()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _swiftEmptyArrayStorage;
  v7 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v26 + 1) = &type metadata for ProcessingUnit;
  v8 = swift_allocObject();
  *&v25 = v8;
  v9 = v0[3];
  v8[3] = v0[2];
  v8[4] = v9;
  v8[5] = v0[4];
  v10 = v0[1];
  v8[1] = *v0;
  v8[2] = v10;
  sub_100076430(v0, v28);
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v2 + 8))(v5, v1);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v25 = v28[0];
    v26 = v28[1];
    v27 = v29;
    sub_100022D40(&v25, v7, &v22);
    sub_10000D040(&v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100023EEC(0, *(v6 + 2) + 1, 1, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = sub_100023EEC((v12 > 1), v13 + 1, 1, v6);
      }

      *(v6 + 2) = v13 + 1;
      v14 = &v6[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v6;
}

char *sub_10006A3FC()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _swiftEmptyArrayStorage;
  v7 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v27 + 1) = &type metadata for OutputTerminal;
  v8 = swift_allocObject();
  *&v26 = v8;
  v9 = v0[3];
  v8[3] = v0[2];
  v8[4] = v9;
  v10 = v0[5];
  v8[5] = v0[4];
  v8[6] = v10;
  v11 = v0[1];
  v8[1] = *v0;
  v8[2] = v11;
  sub_1000766B0(v0, v29);
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v2 + 8))(v5, v1);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v30 + 1))
  {
    v26 = v29[0];
    v27 = v29[1];
    v28 = v30;
    sub_100022D40(&v26, v7, &v23);
    sub_10000D040(&v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100023EEC(0, *(v6 + 2) + 1, 1, v6);
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        v6 = sub_100023EEC((v13 > 1), v14 + 1, 1, v6);
      }

      *(v6 + 2) = v14 + 1;
      v15 = &v6[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v6;
}

char *sub_10006A6F4()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _swiftEmptyArrayStorage;
  v7 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v27 + 1) = &type metadata for InputTerminal;
  v8 = swift_allocObject();
  *&v26 = v8;
  v9 = *(v0 + 80);
  *(v8 + 80) = *(v0 + 64);
  *(v8 + 96) = v9;
  *(v8 + 112) = *(v0 + 96);
  v10 = *(v0 + 16);
  *(v8 + 16) = *v0;
  *(v8 + 32) = v10;
  v11 = *(v0 + 48);
  *(v8 + 48) = *(v0 + 32);
  *(v8 + 64) = v11;
  sub_1000767C0(v0, v29);
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v2 + 8))(v5, v1);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v30 + 1))
  {
    v26 = v29[0];
    v27 = v29[1];
    v28 = v30;
    sub_100022D40(&v26, v7, &v23);
    sub_10000D040(&v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100023EEC(0, *(v6 + 2) + 1, 1, v6);
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        v6 = sub_100023EEC((v13 > 1), v14 + 1, 1, v6);
      }

      *(v6 + 2) = v14 + 1;
      v15 = &v6[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v6;
}

char *sub_10006A9C4()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _swiftEmptyArrayStorage;
  v7 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v27 + 1) = &type metadata for ExtensionUnit;
  v8 = swift_allocObject();
  *&v26 = v8;
  v9 = v0[3];
  v8[3] = v0[2];
  v8[4] = v9;
  v10 = v0[5];
  v8[5] = v0[4];
  v8[6] = v10;
  v11 = v0[1];
  v8[1] = *v0;
  v8[2] = v11;
  sub_10007651C(v0, v29);
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v2 + 8))(v5, v1);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v30 + 1))
  {
    v26 = v29[0];
    v27 = v29[1];
    v28 = v30;
    sub_100022D40(&v26, v7, &v23);
    sub_10000D040(&v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100023EEC(0, *(v6 + 2) + 1, 1, v6);
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        v6 = sub_100023EEC((v13 > 1), v14 + 1, 1, v6);
      }

      *(v6 + 2) = v14 + 1;
      v15 = &v6[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v6;
}

char *sub_10006ACBC()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _swiftEmptyArrayStorage;
  v7 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v28 + 1) = &type metadata for ClockSelector;
  v8 = swift_allocObject();
  v9 = *(v0 + 32);
  v31 = *(v0 + 40);
  v32[0] = v9;
  v10 = *(v0 + 48);
  *&v27 = v8;
  v30 = v10;
  v11 = *(v0 + 16);
  *(v8 + 16) = *v0;
  *(v8 + 32) = v11;
  *(v8 + 48) = *(v0 + 32);
  *(v8 + 64) = v10;
  sub_10000D0B8(v32, v26, &qword_100176860, &qword_100122138);
  sub_10000D0B8(&v31, v26, &qword_100176868, &unk_100122140);
  sub_10000D0B8(&v30, v26, &qword_100176870, &unk_100122880);
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v2 + 8))(v5, v1);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    sub_100022D40(v26, v7, &v23);
    sub_10000D040(v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100023EEC(0, *(v6 + 2) + 1, 1, v6);
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        v6 = sub_100023EEC((v13 > 1), v14 + 1, 1, v6);
      }

      *(v6 + 2) = v14 + 1;
      v15 = &v6[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v6;
}

char *sub_10006B028()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _swiftEmptyArrayStorage;
  v7 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v27 + 1) = &type metadata for PowerDomain;
  v8 = swift_allocObject();
  *&v26 = v8;
  v9 = *(v0 + 32);
  v29 = *(v0 + 40);
  v30 = v9;
  v10 = *(v0 + 16);
  v8[1] = *v0;
  v8[2] = v10;
  v8[3] = *(v0 + 32);
  sub_10000D0B8(&v30, v25, &qword_100176860, &qword_100122138);
  sub_10000D0B8(&v29, v25, &qword_100176868, &unk_100122140);
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v2 + 8))(v5, v1);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    sub_100022D40(v25, v7, &v22);
    sub_10000D040(v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100023EEC(0, *(v6 + 2) + 1, 1, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = sub_100023EEC((v12 > 1), v13 + 1, 1, v6);
      }

      *(v6 + 2) = v13 + 1;
      v14 = &v6[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v6;
}

char *sub_10006B36C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _OWORD *))
{
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v31 + 1) = a1;
  v13 = swift_allocObject();
  *&v30 = v13;
  v14 = *(v3 + 48);
  *(v13 + 48) = *(v3 + 32);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(v3 + 64);
  v15 = *(v3 + 16);
  *(v13 + 16) = *v3;
  *(v13 + 32) = v15;
  a3(v3, v33);
  Mirror.init(reflecting:)();
  v16 = Mirror.children.getter();
  (*(v7 + 8))(v10, v6);
  v23[1] = v16;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v34 + 1))
  {
    v30 = v33[0];
    v31 = v33[1];
    v32 = v34;
    sub_100022D40(&v30, v12, &v27);
    sub_10000D040(&v30, &qword_100175248, &unk_100122110);
    if (*(&v28 + 1))
    {
      v24 = v27;
      v25 = v28;
      v26 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v18 = *(v11 + 2);
      v17 = *(v11 + 3);
      if (v18 >= v17 >> 1)
      {
        v11 = sub_100023EEC((v17 > 1), v18 + 1, 1, v11);
      }

      *(v11 + 2) = v18 + 1;
      v19 = &v11[40 * v18];
      v20 = v24;
      v21 = v25;
      *(v19 + 8) = v26;
      *(v19 + 2) = v20;
      *(v19 + 3) = v21;
    }

    else
    {
      sub_10000D040(&v27, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_10006B660()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _swiftEmptyArrayStorage;
  v7 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v26 + 1) = &type metadata for ClockSource;
  v8 = swift_allocObject();
  *&v25 = v8;
  v9 = v0[1];
  v8[1] = *v0;
  v8[2] = v9;
  v10 = v0[3];
  v8[3] = v0[2];
  v8[4] = v10;
  sub_10002C080(v0, v28);
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v2 + 8))(v5, v1);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v25 = v28[0];
    v26 = v28[1];
    v27 = v29;
    sub_100022D40(&v25, v7, &v22);
    sub_10000D040(&v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100023EEC(0, *(v6 + 2) + 1, 1, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = sub_100023EEC((v12 > 1), v13 + 1, 1, v6);
      }

      *(v6 + 2) = v13 + 1;
      v14 = &v6[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v6;
}

char *sub_10006B948()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _swiftEmptyArrayStorage;
  v7 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v28 + 1) = &type metadata for EffectUnit;
  v8 = swift_allocObject();
  *&v27 = v8;
  v9 = *(v0 + 48);
  v30 = *(v0 + 56);
  v31 = v9;
  v10 = *(v0 + 16);
  v8[1] = *v0;
  v8[2] = v10;
  v11 = *(v0 + 48);
  v8[3] = *(v0 + 32);
  v8[4] = v11;
  sub_10000D0B8(&v31, v26, &qword_100176878, &qword_100122150);
  sub_10000D0B8(&v30, v26, &qword_100176860, &qword_100122138);
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v2 + 8))(v5, v1);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    sub_100022D40(v26, v7, &v23);
    sub_10000D040(v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100023EEC(0, *(v6 + 2) + 1, 1, v6);
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        v6 = sub_100023EEC((v13 > 1), v14 + 1, 1, v6);
      }

      *(v6 + 2) = v14 + 1;
      v15 = &v6[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v6;
}

uint64_t sub_10006BD58(unint64_t a1, unint64_t a2, __int16 a3, unint64_t a4, unint64_t a5, __int16 a6)
{
  v6 = a5;
  WORD3(v21[0]) = HIWORD(a2);
  WORD4(v21[0]) = a3;
  v8 = *(v21 + 6);
  WORD3(v21[0]) = HIWORD(a5);
  WORD4(v21[0]) = a6;
  v9 = a5 >> 16;
  v10 = *(v21 + 6);
  LOWORD(v21[0]) = a2;
  *(v21 + 2) = a2 >> 16;
  WORD3(v21[0]) = v8;
  v11 = sub_100060E44(a1, *&v21[0], SHIWORD(v8));
  LOWORD(v21[0]) = v6;
  *(v21 + 2) = __PAIR64__(v10, v9);
  result = sub_100060E44(a4, *&v21[0], SHIWORD(v10));
  v13 = result;
  v14 = 0;
  v15 = *(v11 + 2);
  for (i = 32; ; i += 40)
  {
    if (v15 == v14)
    {

      return 1;
    }

    if (v14 >= *(v11 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v11[i], v19);
    v17 = *(v13 + 16);
    if (v14 == v17)
    {

      sub_10001E070(v19);
      return 1;
    }

    if (v14++ >= v17)
    {
      goto LABEL_13;
    }

    v21[0] = v19[0];
    v21[1] = v19[1];
    v22 = v20;
    sub_10001EDEC(v13 + i, &v23);
    v18 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v21, &qword_100176840, &qword_100122108);
    if ((v18 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006C100(unint64_t a1, __int16 a2, unint64_t a3, unsigned int a4)
{
  v4 = a3;
  BYTE7(v21[0]) = HIBYTE(a1);
  WORD4(v21[0]) = a2;
  v5 = *(v21 + 7);
  BYTE7(v21[0]) = HIBYTE(a3);
  BYTE8(v21[0]) = a4;
  v6 = a3 >> 8;
  v7 = a3 >> 40;
  v8 = HIWORD(a3);
  v9 = *(v21 + 7);
  v10 = a4 >> 8;
  LOBYTE(v21[0]) = a1;
  *(v21 + 1) = a1 >> 8;
  BYTE5(v21[0]) = BYTE5(a1);
  BYTE6(v21[0]) = BYTE6(a1);
  *(v21 + 7) = v5;
  v11 = sub_100062690(*&v21[0], WORD4(v21[0]));
  LOBYTE(v21[0]) = v4;
  *(v21 + 1) = v6;
  BYTE5(v21[0]) = v7;
  BYTE6(v21[0]) = v8;
  *(v21 + 7) = v9;
  BYTE9(v21[0]) = v10;
  result = sub_100062690(*&v21[0], WORD4(v21[0]));
  v13 = result;
  v14 = 0;
  v15 = *(v11 + 2);
  for (i = 32; ; i += 40)
  {
    if (v15 == v14)
    {

      return 1;
    }

    if (v14 >= *(v11 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v11[i], v19);
    v17 = *(v13 + 16);
    if (v14 == v17)
    {

      sub_10001E070(v19);
      return 1;
    }

    if (v14++ >= v17)
    {
      goto LABEL_13;
    }

    v21[0] = v19[0];
    v21[1] = v19[1];
    v22 = v20;
    sub_10001EDEC(v13 + i, &v23);
    v18 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v21, &qword_100176840, &qword_100122108);
    if ((v18 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006C2F4(int a1, int a2)
{
  v3 = sub_1000629A0(a1 & 0xFFFFFF);
  result = sub_1000629A0(a2 & 0xFFFFFF);
  v5 = result;
  v6 = 0;
  v7 = *(v3 + 2);
  for (i = 32; ; i += 40)
  {
    if (v7 == v6)
    {

      return 1;
    }

    if (v6 >= *(v3 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v3[i], v11);
    v9 = *(v5 + 16);
    if (v6 == v9)
    {

      sub_10001E070(v11);
      return 1;
    }

    if (v6++ >= v9)
    {
      goto LABEL_13;
    }

    v13[0] = v11[0];
    v13[1] = v11[1];
    v14 = v12;
    sub_10001EDEC(v5 + i, &v15);
    v10 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v13, &qword_100176840, &qword_100122108);
    if ((v10 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006C478(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = sub_100062C7C(a1, a2, a3, a4);
  result = sub_100062C7C(a5, a6, a7, a8);
  v14 = result;
  v15 = 0;
  v16 = *(v12 + 2);
  for (i = 32; ; i += 40)
  {
    if (v16 == v15)
    {

      return 1;
    }

    if (v15 >= *(v12 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v12[i], v20);
    v18 = *(v14 + 16);
    if (v15 == v18)
    {

      sub_10001E070(v20);
      return 1;
    }

    if (v15++ >= v18)
    {
      goto LABEL_13;
    }

    v22[0] = v20[0];
    v22[1] = v20[1];
    v23 = v21;
    sub_10001EDEC(v14 + i, &v24);
    v19 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v22, &qword_100176840, &qword_100122108);
    if ((v19 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006C6B0()
{
  v0 = sub_100063AEC();
  result = sub_100063AEC();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006C864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  result = (a3)(a2);
  v7 = result;
  v8 = 0;
  v9 = *(v5 + 16);
  for (i = 32; ; i += 40)
  {
    if (v9 == v8)
    {

      return 1;
    }

    if (v8 >= *(v5 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v5 + i, v13);
    v11 = *(v7 + 16);
    if (v8 == v11)
    {

      sub_10001E070(v13);
      return 1;
    }

    if (v8++ >= v11)
    {
      goto LABEL_13;
    }

    v15[0] = v13[0];
    v15[1] = v13[1];
    v16 = v14;
    sub_10001EDEC(v7 + i, &v17);
    v12 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v15, &qword_100176840, &qword_100122108);
    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006C9C4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = sub_1000643A0(a1, a2 & 0xFFFFFFFFFFFFLL);
  result = sub_1000643A0(a3, a4 & 0xFFFFFFFFFFFFLL);
  v8 = result;
  v9 = 0;
  v10 = *(v6 + 2);
  for (i = 32; ; i += 40)
  {
    if (v10 == v9)
    {

      return 1;
    }

    if (v9 >= *(v6 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v6[i], v14);
    v12 = *(v8 + 16);
    if (v9 == v12)
    {

      sub_10001E070(v14);
      return 1;
    }

    if (v9++ >= v12)
    {
      goto LABEL_13;
    }

    v16[0] = v14[0];
    v16[1] = v14[1];
    v17 = v15;
    sub_10001EDEC(v8 + i, &v18);
    v13 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v16, &qword_100176840, &qword_100122108);
    if ((v13 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006CB3C(uint64_t a1, char a2, unint64_t a3, char a4)
{
  v4 = a3;
  *&v23[0] = a1;
  BYTE8(v23[0]) = a2;
  v5 = *(v23 + 7);
  BYTE7(v23[0]) = HIBYTE(a3);
  BYTE8(v23[0]) = a4;
  v6 = a3 >> 8;
  v7 = a3 >> 16;
  v8 = a3 >> 24;
  v9 = HIDWORD(a3);
  v10 = a3 >> 40;
  v11 = HIWORD(a3);
  v12 = *(v23 + 7);
  BYTE7(v23[0]) = v5;
  v13 = sub_100066184(*&v23[0], SHIBYTE(v5), type metadata accessor for ADC3SRConverterUnitDescriptor);
  LOBYTE(v23[0]) = v4;
  BYTE1(v23[0]) = v6;
  BYTE2(v23[0]) = v7;
  BYTE3(v23[0]) = v8;
  BYTE4(v23[0]) = v9;
  BYTE5(v23[0]) = v10;
  BYTE6(v23[0]) = v11;
  *(v23 + 7) = v12;
  result = sub_100066184(*&v23[0], SHIBYTE(v12), type metadata accessor for ADC3SRConverterUnitDescriptor);
  v15 = result;
  v16 = 0;
  v17 = *(v13 + 2);
  for (i = 32; ; i += 40)
  {
    if (v17 == v16)
    {

      return 1;
    }

    if (v16 >= *(v13 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v13[i], v21);
    v19 = *(v15 + 16);
    if (v16 == v19)
    {

      sub_10001E070(v21);
      return 1;
    }

    if (v16++ >= v19)
    {
      goto LABEL_13;
    }

    v23[0] = v21[0];
    v23[1] = v21[1];
    v24 = v22;
    sub_10001EDEC(v15 + i, &v25);
    v20 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v23, &qword_100176840, &qword_100122108);
    if ((v20 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006CD40(uint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a3;
  DWORD1(v22[0]) = HIDWORD(a1);
  BYTE8(v22[0]) = a2;
  v5 = *(v22 + 5);
  *(v22 + 4) = __PAIR64__(a4, HIDWORD(a3));
  v6 = a3 >> 8;
  v7 = a3 >> 16;
  v8 = a3 >> 24;
  v9 = HIDWORD(a3);
  v10 = __PAIR64__(a4, HIDWORD(a3)) >> 8;
  v11 = a4 >> 8;
  LOWORD(v22[0]) = a1;
  BYTE2(v22[0]) = BYTE2(a1);
  BYTE3(v22[0]) = BYTE3(a1);
  BYTE4(v22[0]) = BYTE4(a1);
  *(v22 + 5) = v5;
  *(v22 + 9) = a2 >> 8;
  v12 = sub_1000646BC(*&v22[0], DWORD2(v22[0]));
  LOBYTE(v22[0]) = v4;
  BYTE1(v22[0]) = v6;
  BYTE2(v22[0]) = v7;
  BYTE3(v22[0]) = v8;
  BYTE4(v22[0]) = v9;
  *(v22 + 5) = v10;
  *(v22 + 9) = v11;
  result = sub_1000646BC(*&v22[0], DWORD2(v22[0]));
  v14 = result;
  v15 = 0;
  v16 = *(v12 + 2);
  for (i = 32; ; i += 40)
  {
    if (v16 == v15)
    {

      return 1;
    }

    if (v15 >= *(v12 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v12[i], v20);
    v18 = *(v14 + 16);
    if (v15 == v18)
    {

      sub_10001E070(v20);
      return 1;
    }

    if (v15++ >= v18)
    {
      goto LABEL_13;
    }

    v22[0] = v20[0];
    v22[1] = v20[1];
    v23 = v21;
    sub_10001EDEC(v14 + i, &v24);
    v19 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v22, &qword_100176840, &qword_100122108);
    if ((v19 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006CF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v11 = sub_100064FE8(a1, a2, a3, a7);
  result = sub_100064FE8(a4, a5, a6, a7);
  v13 = result;
  v14 = 0;
  v15 = *(v11 + 2);
  for (i = 32; ; i += 40)
  {
    if (v15 == v14)
    {

      return 1;
    }

    if (v14 >= *(v11 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v11[i], v19);
    v17 = *(v13 + 16);
    if (v14 == v17)
    {

      sub_10001E070(v19);
      return 1;
    }

    if (v14++ >= v17)
    {
      goto LABEL_13;
    }

    v21[0] = v19[0];
    v21[1] = v19[1];
    v22 = v20;
    sub_10001EDEC(v13 + i, &v23);
    v18 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v21, &qword_100176840, &qword_100122108);
    if ((v18 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006D0E8(unint64_t a1, __int16 a2, unint64_t a3, __int16 a4)
{
  v6 = sub_1000652AC(a1, a2);
  result = sub_1000652AC(a3, a4);
  v8 = result;
  v9 = 0;
  v10 = *(v6 + 2);
  for (i = 32; ; i += 40)
  {
    if (v10 == v9)
    {

      return 1;
    }

    if (v9 >= *(v6 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v6[i], v14);
    v12 = *(v8 + 16);
    if (v9 == v12)
    {

      sub_10001E070(v14);
      return 1;
    }

    if (v9++ >= v12)
    {
      goto LABEL_13;
    }

    v16[0] = v14[0];
    v16[1] = v14[1];
    v17 = v15;
    sub_10001EDEC(v8 + i, &v18);
    v13 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v16, &qword_100176840, &qword_100122108);
    if ((v13 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006D25C(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  v6 = a5;
  BYTE7(v23[0]) = HIBYTE(a2);
  BYTE8(v23[0]) = a3;
  v8 = *(v23 + 7);
  BYTE7(v23[0]) = HIBYTE(a5);
  DWORD2(v23[0]) = a6;
  v9 = a5 >> 8;
  v10 = a5 >> 40;
  v11 = *(v23 + 7);
  v12 = a6 >> 8;
  LOBYTE(v23[0]) = a2;
  *(v23 + 1) = a2 >> 8;
  *(v23 + 5) = HIDWORD(a2) >> 8;
  *(v23 + 7) = v8;
  *(v23 + 9) = a3 >> 8;
  v13 = sub_100065598(a1, *&v23[0], SDWORD2(v23[0]));
  LOBYTE(v23[0]) = v6;
  *(v23 + 1) = v9;
  *(v23 + 5) = v10;
  *(v23 + 7) = v11;
  *(v23 + 9) = v12;
  result = sub_100065598(a4, *&v23[0], SDWORD2(v23[0]));
  v15 = result;
  v16 = 0;
  v17 = *(v13 + 2);
  for (i = 32; ; i += 40)
  {
    if (v17 == v16)
    {

      return 1;
    }

    if (v16 >= *(v13 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v13[i], v21);
    v19 = *(v15 + 16);
    if (v16 == v19)
    {

      sub_10001E070(v21);
      return 1;
    }

    if (v16++ >= v19)
    {
      goto LABEL_13;
    }

    v23[0] = v21[0];
    v23[1] = v21[1];
    v24 = v22;
    sub_10001EDEC(v15 + i, &v25);
    v20 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v23, &qword_100176840, &qword_100122108);
    if ((v20 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006D448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = a4(a1 & 0xFFFFFFFFFFFFLL, a3);
  result = a4(a2 & 0xFFFFFFFFFFFFLL, a3);
  v9 = result;
  v10 = 0;
  v11 = *(v7 + 16);
  for (i = 32; ; i += 40)
  {
    if (v11 == v10)
    {

      return 1;
    }

    if (v10 >= *(v7 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v7 + i, v15);
    v13 = *(v9 + 16);
    if (v10 == v13)
    {

      sub_10001E070(v15);
      return 1;
    }

    if (v10++ >= v13)
    {
      goto LABEL_13;
    }

    v17[0] = v15[0];
    v17[1] = v15[1];
    v18 = v16;
    sub_10001EDEC(v9 + i, &v19);
    v14 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v17, &qword_100176840, &qword_100122108);
    if ((v14 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006D648(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = sub_100066184(a1, a2, type metadata accessor for ADC1OutputTerminalDescriptor);
  result = sub_100066184(a3, a4, type metadata accessor for ADC1OutputTerminalDescriptor);
  v8 = result;
  v9 = 0;
  v10 = *(v6 + 2);
  for (i = 32; ; i += 40)
  {
    if (v10 == v9)
    {

      return 1;
    }

    if (v9 >= *(v6 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v6[i], v14);
    v12 = *(v8 + 16);
    if (v9 == v12)
    {

      sub_10001E070(v14);
      return 1;
    }

    if (v9++ >= v12)
    {
      goto LABEL_13;
    }

    v16[0] = v14[0];
    v16[1] = v14[1];
    v17 = v15;
    sub_10001EDEC(v8 + i, &v18);
    v13 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v16, &qword_100176840, &qword_100122108);
    if ((v13 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006D7C0(unsigned int a1, unsigned int a2)
{
  v3 = sub_100066448(a1);
  result = sub_100066448(a2);
  v5 = result;
  v6 = 0;
  v7 = *(v3 + 2);
  for (i = 32; ; i += 40)
  {
    if (v7 == v6)
    {

      return 1;
    }

    if (v6 >= *(v3 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v3[i], v11);
    v9 = *(v5 + 16);
    if (v6 == v9)
    {

      sub_10001E070(v11);
      return 1;
    }

    if (v6++ >= v9)
    {
      goto LABEL_13;
    }

    v13[0] = v11[0];
    v13[1] = v11[1];
    v14 = v12;
    sub_10001EDEC(v5 + i, &v15);
    v10 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v13, &qword_100176840, &qword_100122108);
    if ((v10 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006D92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t (*a7)(void))
{
  v8 = a5;
  *&v26[0] = a2;
  WORD4(v26[0]) = a3;
  v10 = *(v26 + 6);
  WORD3(v26[0]) = HIWORD(a5);
  *(&v26[0] + 1) = a6;
  v11 = a5 >> 16;
  v12 = HIDWORD(a5);
  v13 = *(v26 + 6);
  v14 = a6 >> 16;
  v15 = HIDWORD(a6);
  *(v26 + 6) = v10;
  WORD5(v26[0]) = WORD1(a3);
  WORD6(v26[0]) = WORD2(a3);
  v16 = sub_100064D00(a1, *&v26[0], *(&v26[0] + 1), a7);
  LOWORD(v26[0]) = v8;
  WORD1(v26[0]) = v11;
  WORD2(v26[0]) = v12;
  *(v26 + 6) = v13;
  WORD5(v26[0]) = v14;
  WORD6(v26[0]) = v15;
  result = sub_100064D00(a4, *&v26[0], *(&v26[0] + 1), a7);
  v18 = result;
  v19 = 0;
  v20 = *(v16 + 2);
  for (i = 32; ; i += 40)
  {
    if (v20 == v19)
    {

      return 1;
    }

    if (v19 >= *(v16 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v16[i], v24);
    v22 = *(v18 + 16);
    if (v19 == v22)
    {

      sub_10001E070(v24);
      return 1;
    }

    if (v19++ >= v22)
    {
      goto LABEL_13;
    }

    v26[0] = v24[0];
    v26[1] = v24[1];
    v27 = v25;
    sub_10001EDEC(v18 + i, &v28);
    v23 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v26, &qword_100176840, &qword_100122108);
    if ((v23 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006DAF8()
{
  v0 = sub_100066724();
  result = sub_100066724();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006DC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = a5();
  result = (a5)(a3, a4);
  v10 = result;
  v11 = 0;
  v12 = *(v8 + 16);
  for (i = 32; ; i += 40)
  {
    if (v12 == v11)
    {

      return 1;
    }

    if (v11 >= *(v8 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v8 + i, v16);
    v14 = *(v10 + 16);
    if (v11 == v14)
    {

      sub_10001E070(v16);
      return 1;
    }

    if (v11++ >= v14)
    {
      goto LABEL_13;
    }

    v18[0] = v16[0];
    v18[1] = v16[1];
    v19 = v17;
    sub_10001EDEC(v10 + i, &v20);
    v15 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v18, &qword_100176840, &qword_100122108);
    if ((v15 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006DE5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = sub_1000670EC(a1, a2, a3);
  result = sub_1000670EC(a4, a5, a6);
  v11 = result;
  v12 = 0;
  v13 = *(v9 + 2);
  for (i = 32; ; i += 40)
  {
    if (v13 == v12)
    {

      return 1;
    }

    if (v12 >= *(v9 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v9[i], v17);
    v15 = *(v11 + 16);
    if (v12 == v15)
    {

      sub_10001E070(v17);
      return 1;
    }

    if (v12++ >= v15)
    {
      goto LABEL_13;
    }

    v19[0] = v17[0];
    v19[1] = v17[1];
    v20 = v18;
    sub_10001EDEC(v11 + i, &v21);
    v16 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v19, &qword_100176840, &qword_100122108);
    if ((v16 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006E01C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t (*a5)(void))
{
  v8 = sub_1000676E0(a1, a2, a5);
  result = sub_1000676E0(a3, a4, a5);
  v10 = result;
  v11 = 0;
  v12 = *(v8 + 2);
  for (i = 32; ; i += 40)
  {
    if (v12 == v11)
    {

      return 1;
    }

    if (v11 >= *(v8 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v8[i], v16);
    v14 = *(v10 + 16);
    if (v11 == v14)
    {

      sub_10001E070(v16);
      return 1;
    }

    if (v11++ >= v14)
    {
      goto LABEL_13;
    }

    v18[0] = v16[0];
    v18[1] = v16[1];
    v19 = v17;
    sub_10001EDEC(v10 + i, &v20);
    v15 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v18, &qword_100176840, &qword_100122108);
    if ((v15 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006E1CC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t (*a7)(void))
{
  v11 = sub_100067CA8(a1, a2, a3, a7);
  result = sub_100067CA8(a4, a5, a6, a7);
  v13 = result;
  v14 = 0;
  v15 = *(v11 + 2);
  for (i = 32; ; i += 40)
  {
    if (v15 == v14)
    {

      return 1;
    }

    if (v14 >= *(v11 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v11[i], v19);
    v17 = *(v13 + 16);
    if (v14 == v17)
    {

      sub_10001E070(v19);
      return 1;
    }

    if (v14++ >= v17)
    {
      goto LABEL_13;
    }

    v21[0] = v19[0];
    v21[1] = v19[1];
    v22 = v20;
    sub_10001EDEC(v13 + i, &v23);
    v18 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v21, &qword_100176840, &qword_100122108);
    if ((v18 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006E368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = a4(a1, a3);
  result = a4(a2, a3);
  v9 = result;
  v10 = 0;
  v11 = *(v7 + 16);
  for (i = 32; ; i += 40)
  {
    if (v11 == v10)
    {

      return 1;
    }

    if (v10 >= *(v7 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v7 + i, v15);
    v13 = *(v9 + 16);
    if (v10 == v13)
    {

      sub_10001E070(v15);
      return 1;
    }

    if (v10++ >= v13)
    {
      goto LABEL_13;
    }

    v17[0] = v15[0];
    v17[1] = v15[1];
    v18 = v16;
    sub_10001EDEC(v9 + i, &v19);
    v14 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v17, &qword_100176840, &qword_100122108);
    if ((v14 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006E570(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = sub_100061A70(a1, a2 & 0xFFFFFFFFFFFFLL, a5);
  result = sub_100061A70(a3, a4 & 0xFFFFFFFFFFFFLL, a5);
  v10 = result;
  v11 = 0;
  v12 = *(v8 + 2);
  for (i = 32; ; i += 40)
  {
    if (v12 == v11)
    {

      return 1;
    }

    if (v11 >= *(v8 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v8[i], v16);
    v14 = *(v10 + 16);
    if (v11 == v14)
    {

      sub_10001E070(v16);
      return 1;
    }

    if (v11++ >= v14)
    {
      goto LABEL_13;
    }

    v18[0] = v16[0];
    v18[1] = v16[1];
    v19 = v17;
    sub_10001EDEC(v10 + i, &v20);
    v15 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v18, &qword_100176840, &qword_100122108);
    if ((v15 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006E6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v11 = sub_100064D00(a1, a2, a3 & 0xFFFFFFFFFFFFLL, a7);
  result = sub_100064D00(a4, a5, a6 & 0xFFFFFFFFFFFFLL, a7);
  v13 = result;
  v14 = 0;
  v15 = *(v11 + 2);
  for (i = 32; ; i += 40)
  {
    if (v15 == v14)
    {

      return 1;
    }

    if (v14 >= *(v11 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v11[i], v19);
    v17 = *(v13 + 16);
    if (v14 == v17)
    {

      sub_10001E070(v19);
      return 1;
    }

    if (v14++ >= v17)
    {
      goto LABEL_13;
    }

    v21[0] = v19[0];
    v21[1] = v19[1];
    v22 = v20;
    sub_10001EDEC(v13 + i, &v23);
    v18 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v21, &qword_100176840, &qword_100122108);
    if ((v18 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006E868(unint64_t a1, int a2, unint64_t a3, int a4)
{
  v6 = sub_100068000(a1, a2);
  result = sub_100068000(a3, a4);
  v8 = result;
  v9 = 0;
  v10 = *(v6 + 2);
  for (i = 32; ; i += 40)
  {
    if (v10 == v9)
    {

      return 1;
    }

    if (v9 >= *(v6 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v6[i], v14);
    v12 = *(v8 + 16);
    if (v9 == v12)
    {

      sub_10001E070(v14);
      return 1;
    }

    if (v9++ >= v12)
    {
      goto LABEL_13;
    }

    v16[0] = v14[0];
    v16[1] = v14[1];
    v17 = v15;
    sub_10001EDEC(v8 + i, &v18);
    v13 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v16, &qword_100176840, &qword_100122108);
    if ((v13 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006E9F0(uint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a3;
  *(v22 + 4) = __PAIR64__(a2, HIDWORD(a1));
  DWORD1(v22[0]) = HIDWORD(a3);
  BYTE8(v22[0]) = a4;
  v5 = *(v22 + 5);
  v6 = a3 >> 8;
  v7 = a3 >> 16;
  v8 = a3 >> 24;
  v9 = HIDWORD(a3);
  v10 = a4 >> 8;
  v11 = HIWORD(a4);
  LOWORD(v22[0]) = a1;
  BYTE2(v22[0]) = BYTE2(a1);
  BYTE3(v22[0]) = BYTE3(a1);
  BYTE4(v22[0]) = BYTE4(a1);
  *(v22 + 5) = __PAIR64__(a2, HIDWORD(a1)) >> 8;
  v12 = sub_1000676E0(*&v22[0], SDWORD2(v22[0]), type metadata accessor for ADC3ClockSourceDescriptor);
  LOBYTE(v22[0]) = v4;
  BYTE1(v22[0]) = v6;
  BYTE2(v22[0]) = v7;
  BYTE3(v22[0]) = v8;
  BYTE4(v22[0]) = v9;
  *(v22 + 5) = v5;
  BYTE9(v22[0]) = v10;
  WORD5(v22[0]) = v11;
  result = sub_1000676E0(*&v22[0], SDWORD2(v22[0]), type metadata accessor for ADC3ClockSourceDescriptor);
  v14 = result;
  v15 = 0;
  v16 = *(v12 + 2);
  for (i = 32; ; i += 40)
  {
    if (v16 == v15)
    {

      return 1;
    }

    if (v15 >= *(v12 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v12[i], v20);
    v18 = *(v14 + 16);
    if (v15 == v18)
    {

      sub_10001E070(v20);
      return 1;
    }

    if (v15++ >= v18)
    {
      goto LABEL_13;
    }

    v22[0] = v20[0];
    v22[1] = v20[1];
    v23 = v21;
    sub_10001EDEC(v14 + i, &v24);
    v19 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v22, &qword_100176840, &qword_100122108);
    if ((v19 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006EC50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_1000679BC(a1, a3);
  result = sub_1000679BC(a2, a3);
  v7 = result;
  v8 = 0;
  v9 = *(v5 + 2);
  for (i = 32; ; i += 40)
  {
    if (v9 == v8)
    {

      return 1;
    }

    if (v8 >= *(v5 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v5[i], v13);
    v11 = *(v7 + 16);
    if (v8 == v11)
    {

      sub_10001E070(v13);
      return 1;
    }

    if (v8++ >= v11)
    {
      goto LABEL_13;
    }

    v15[0] = v13[0];
    v15[1] = v13[1];
    v16 = v14;
    sub_10001EDEC(v7 + i, &v17);
    v12 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v15, &qword_100176840, &qword_100122108);
    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006EDC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1 & 0xFFFFFFFFFFFFLL);
  result = a3(a2 & 0xFFFFFFFFFFFFLL);
  v7 = result;
  v8 = 0;
  v9 = *(v5 + 16);
  for (i = 32; ; i += 40)
  {
    if (v9 == v8)
    {

      return 1;
    }

    if (v8 >= *(v5 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v5 + i, v13);
    v11 = *(v7 + 16);
    if (v8 == v11)
    {

      sub_10001E070(v13);
      return 1;
    }

    if (v8++ >= v11)
    {
      goto LABEL_13;
    }

    v15[0] = v13[0];
    v15[1] = v13[1];
    v16 = v14;
    sub_10001EDEC(v7 + i, &v17);
    v12 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v15, &qword_100176840, &qword_100122108);
    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006EF44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1 & 0xFFFFFFFFFFFFFFLL);
  result = a3(a2 & 0xFFFFFFFFFFFFFFLL);
  v7 = result;
  v8 = 0;
  v9 = *(v5 + 16);
  for (i = 32; ; i += 40)
  {
    if (v9 == v8)
    {

      return 1;
    }

    if (v8 >= *(v5 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v5 + i, v13);
    v11 = *(v7 + 16);
    if (v8 == v11)
    {

      sub_10001E070(v13);
      return 1;
    }

    if (v8++ >= v11)
    {
      goto LABEL_13;
    }

    v15[0] = v13[0];
    v15[1] = v13[1];
    v16 = v14;
    sub_10001EDEC(v7 + i, &v17);
    v12 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v15, &qword_100176840, &qword_100122108);
    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006F0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = a6(a1, a2, a5);
  result = a6(a3, a4, a5);
  v12 = result;
  v13 = 0;
  v14 = *(v10 + 16);
  for (i = 32; ; i += 40)
  {
    if (v14 == v13)
    {

      return 1;
    }

    if (v13 >= *(v10 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v10 + i, v18);
    v16 = *(v12 + 16);
    if (v13 == v16)
    {

      sub_10001E070(v18);
      return 1;
    }

    if (v13++ >= v16)
    {
      goto LABEL_13;
    }

    v20[0] = v18[0];
    v20[1] = v18[1];
    v21 = v19;
    sub_10001EDEC(v12 + i, &v22);
    v17 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v20, &qword_100176840, &qword_100122108);
    if ((v17 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006F278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_100065B5C(a1 & 0xFFFFFFFFFFFFFFLL, a3);
  result = sub_100065B5C(a2 & 0xFFFFFFFFFFFFFFLL, a3);
  v7 = result;
  v8 = 0;
  v9 = *(v5 + 2);
  for (i = 32; ; i += 40)
  {
    if (v9 == v8)
    {

      return 1;
    }

    if (v8 >= *(v5 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v5[i], v13);
    v11 = *(v7 + 16);
    if (v8 == v11)
    {

      sub_10001E070(v13);
      return 1;
    }

    if (v8++ >= v11)
    {
      goto LABEL_13;
    }

    v15[0] = v13[0];
    v15[1] = v13[1];
    v16 = v14;
    sub_10001EDEC(v7 + i, &v17);
    v12 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v15, &qword_100176840, &qword_100122108);
    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006F3F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t (*a7)(void))
{
  v11 = sub_100068C70(a1, a2, a3, a7);
  result = sub_100068C70(a4, a5, a6, a7);
  v13 = result;
  v14 = 0;
  v15 = *(v11 + 2);
  for (i = 32; ; i += 40)
  {
    if (v15 == v14)
    {

      return 1;
    }

    if (v14 >= *(v11 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v11[i], v19);
    v17 = *(v13 + 16);
    if (v14 == v17)
    {

      sub_10001E070(v19);
      return 1;
    }

    if (v14++ >= v17)
    {
      goto LABEL_13;
    }

    v21[0] = v19[0];
    v21[1] = v19[1];
    v22 = v20;
    sub_10001EDEC(v13 + i, &v23);
    v18 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v21, &qword_100176840, &qword_100122108);
    if ((v18 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006F600(unsigned int a1, unsigned int a2, uint64_t (*a3)(void))
{
  v5 = sub_100063DF0(a1, a3);
  result = sub_100063DF0(a2, a3);
  v7 = result;
  v8 = 0;
  v9 = *(v5 + 2);
  for (i = 32; ; i += 40)
  {
    if (v9 == v8)
    {

      return 1;
    }

    if (v8 >= *(v5 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v5[i], v13);
    v11 = *(v7 + 16);
    if (v8 == v11)
    {

      sub_10001E070(v13);
      return 1;
    }

    if (v8++ >= v11)
    {
      goto LABEL_13;
    }

    v15[0] = v13[0];
    v15[1] = v13[1];
    v16 = v14;
    sub_10001EDEC(v7 + i, &v17);
    v12 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v15, &qword_100176840, &qword_100122108);
    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006F778(int a1, int a2, uint64_t (*a3)(void))
{
  v5 = sub_100068FB0(a1 & 0xFFFFFF, a3);
  result = sub_100068FB0(a2 & 0xFFFFFF, a3);
  v7 = result;
  v8 = 0;
  v9 = *(v5 + 2);
  for (i = 32; ; i += 40)
  {
    if (v9 == v8)
    {

      return 1;
    }

    if (v8 >= *(v5 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v5[i], v13);
    v11 = *(v7 + 16);
    if (v8 == v11)
    {

      sub_10001E070(v13);
      return 1;
    }

    if (v8++ >= v11)
    {
      goto LABEL_13;
    }

    v15[0] = v13[0];
    v15[1] = v13[1];
    v16 = v14;
    sub_10001EDEC(v7 + i, &v17);
    v12 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v15, &qword_100176840, &qword_100122108);
    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006F908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = a4(a1 & 0xFFFFFFFFFFLL, a3);
  result = a4(a2 & 0xFFFFFFFFFFLL, a3);
  v9 = result;
  v10 = 0;
  v11 = *(v7 + 16);
  for (i = 32; ; i += 40)
  {
    if (v11 == v10)
    {

      return 1;
    }

    if (v10 >= *(v7 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v7 + i, v15);
    v13 = *(v9 + 16);
    if (v10 == v13)
    {

      sub_10001E070(v15);
      return 1;
    }

    if (v10++ >= v13)
    {
      goto LABEL_13;
    }

    v17[0] = v15[0];
    v17[1] = v15[1];
    v18 = v16;
    sub_10001EDEC(v9 + i, &v19);
    v14 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v17, &qword_100176840, &qword_100122108);
    if ((v14 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006FA78()
{
  v0 = sub_100069558();
  result = sub_100069558();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006FBD0()
{
  v0 = sub_100069854();
  result = sub_100069854();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006FD28()
{
  v0 = sub_100069B44();
  result = sub_100069B44();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006FE80()
{
  v0 = sub_100069E1C();
  result = sub_100069E1C();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006FFD8()
{
  v0 = sub_10006A108();
  result = sub_10006A108();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100070148()
{
  v0 = sub_10006A6F4();
  result = sub_10006A6F4();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1000702B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  result = a3();
  v6 = result;
  v7 = 0;
  v8 = *(v4 + 16);
  for (i = 32; ; i += 40)
  {
    if (v8 == v7)
    {

      return 1;
    }

    if (v7 >= *(v4 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v4 + i, v12);
    v10 = *(v6 + 16);
    if (v7 == v10)
    {

      sub_10001E070(v12);
      return 1;
    }

    if (v7++ >= v10)
    {
      goto LABEL_13;
    }

    v14[0] = v12[0];
    v14[1] = v12[1];
    v15 = v13;
    sub_10001EDEC(v6 + i, &v16);
    v11 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v14, &qword_100176840, &qword_100122108);
    if ((v11 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10007041C()
{
  v0 = sub_10006ACBC();
  result = sub_10006ACBC();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10007059C()
{
  v0 = sub_10006B028();
  result = sub_10006B028();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10007071C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _OWORD *))
{
  v8 = sub_10006B36C(a3, a4, a5);
  result = sub_10006B36C(a3, a4, a5);
  v10 = result;
  v11 = 0;
  v12 = *(v8 + 2);
  for (i = 32; ; i += 40)
  {
    if (v12 == v11)
    {

      return 1;
    }

    if (v11 >= *(v8 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v8[i], v16);
    v14 = *(v10 + 16);
    if (v11 == v14)
    {

      sub_10001E070(v16);
      return 1;
    }

    if (v11++ >= v14)
    {
      goto LABEL_13;
    }

    v18[0] = v16[0];
    v18[1] = v16[1];
    v19 = v17;
    sub_10001EDEC(v10 + i, &v20);
    v15 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v18, &qword_100176840, &qword_100122108);
    if ((v15 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1000708C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  result = a3();
  v6 = result;
  v7 = 0;
  v8 = *(v4 + 16);
  for (i = 32; ; i += 40)
  {
    if (v8 == v7)
    {

      return 1;
    }

    if (v7 >= *(v4 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v4 + i, v12);
    v10 = *(v6 + 16);
    if (v7 == v10)
    {

      sub_10001E070(v12);
      return 1;
    }

    if (v7++ >= v10)
    {
      goto LABEL_13;
    }

    v14[0] = v12[0];
    v14[1] = v12[1];
    v15 = v13;
    sub_10001EDEC(v6 + i, &v16);
    v11 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v14, &qword_100176840, &qword_100122108);
    if ((v11 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t ControlInterface.exceptionList.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t ControlInterface.highestExceptionLevel.getter()
{
  v1 = *(v0 + 32);
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    v3 = 0;
    v4 = (v1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 == 16 || v5 == 68 || v5 == 67)
      {
        if (!v3)
        {
          v3 = 1;
        }
      }

      else if (v3 < 2)
      {
        if (v5 == 16)
        {
          v3 = 1;
        }

        else
        {
          v3 = 2;
        }
      }

      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v7 = *(v0 + 8);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    do
    {
      v11 = (v10 + 40 * v9);
      v12 = v11[3];
      v13 = v11[4];
      sub_10001EAB8(v11, v12);
      v14 = (*(v13 + 40))(v12, v13);
      if (v14)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = (v14 + 32);
          do
          {
            v18 = *v16++;
            v17 = v18;
            if (v18 == 16 || v17 == 68 || v17 == 67)
            {
              if (!v3)
              {
                v3 = 1;
              }
            }

            else if (v3 < 2)
            {
              if (v17 == 16)
              {
                v3 = 1;
              }

              else
              {
                v3 = 2;
              }
            }

            --v15;
          }

          while (v15);
        }
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return v3;
}

void *sub_100070C8C(void *a1)
{
  if (*(*(v1 + 8) + 16) || (v6 = v1, (v7 = *(v1 + 24)) == 0))
  {
    sub_10000CA2C();
    swift_allocError();
    *v4 = 28;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v3;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = OBJC_IVAR____TtC9AUASDCore9USBDevice_hrlDescriptorData;
  v11 = (v7 + 32);
  v3 = _swiftEmptyArrayStorage;
  v27 = v1;
  while (1)
  {
    while (1)
    {
      v12 = *v11++;
      sub_100058B70(v12, a1, v6);
      if (v2)
      {

        return v3;
      }

      v14 = v13;
      swift_beginAccess();
      v15 = v14;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(a1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = *((*(a1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v6 = v27;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v16 = [v15 bytes];
      if (v16[1] != 1)
      {
LABEL_40:
        sub_10000CA2C();
        swift_allocError();
        *v22 = 37;
        *(v22 + 8) = 0;
        *(v22 + 16) = 0xE000000000000000;
        swift_willThrow();

        return v3;
      }

      v17 = v16[2];
      if (v17 > 6)
      {
        if (v16[2] > 0xDu)
        {
          if (v17 == 14)
          {
            v18 = 83;
          }

          else
          {
            if (v17 != 257)
            {
              goto LABEL_40;
            }

            v18 = 82;
          }
        }

        else if (v17 == 7)
        {
          v18 = 84;
        }

        else
        {
          if (v17 != 11)
          {
            goto LABEL_40;
          }

          v18 = 78;
        }
      }

      else if (v16[2] > 2u)
      {
        if (v17 == 3)
        {
          v18 = 81;
        }

        else
        {
          if (v17 != 5)
          {
            goto LABEL_40;
          }

          v18 = 85;
        }
      }

      else if (v17 == 1)
      {
        v18 = 77;
      }

      else
      {
        if (v17 != 2)
        {
          goto LABEL_40;
        }

        v18 = 80;
      }

      sub_1000A2FA8(v16, v18 << 8, &v25);
      if (v26)
      {
        break;
      }

      sub_10000D040(&v25, &qword_100176880, &qword_100122158);
      if (!--v8)
      {
        return v3;
      }
    }

    result = sub_10000D0B8(&v25, &v23, &qword_100176880, &qword_100122158);
    if (!v24)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1000249C8(0, v3[2] + 1, 1, v3);
    }

    v20 = v3[2];
    v19 = v3[3];
    if (v20 >= v19 >> 1)
    {
      v3 = sub_1000249C8((v19 > 1), v20 + 1, 1, v3);
    }

    v3[2] = v20 + 1;
    sub_10000D0A0(&v23, &v3[5 * v20 + 4]);
    sub_10000D040(&v25, &qword_100176880, &qword_100122158);
    v6 = v27;
    if (!--v8)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}
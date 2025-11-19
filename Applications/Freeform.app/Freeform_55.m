uint64_t sub_10089ABDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion) = 0;
  v10 = (v4 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_name);
  *v10 = a1;
  v10[1] = a2;

  _StringGuts.grow(_:)(32);

  v11._object = 0x8000000101572900;
  v11._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v11);
  v12 = (v4 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_runningboardAssertionExplanation);
  *v12 = a1;
  v12[1] = a2;
  v13 = OBJC_IVAR____TtC8Freeform14SQLiteDatabase_url;
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 32))(v5 + v13, a3, v14);
  *(v5 + 32) = a4;
  return v5;
}

uint64_t sub_10089ACF0(void (*a1)(void, void, void), uint64_t a2)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + 32);
  *v10 = v11;
  v12 = *(v7 + 104);
  v45 = enum case for DispatchPredicate.onQueue(_:);
  v44 = v12;
  v12(v10, v8);
  v13 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v46 = *(v7 + 8);
  v46(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  result = sub_10089B5D8();
  if (!v3 && (v15 & 1) == 0 && result >= 1)
  {
    v16 = result;
    result = sub_10089B2D8();
    v17 = a1 / v16;
    if (v17 <= -9.22337204e18)
    {
      goto LABEL_27;
    }

    if (v17 >= 9.22337204e18)
    {
      goto LABEL_28;
    }

    v18 = a2 / v16;
    if (COERCE__INT64(fabs(a1 / v16)) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(a2 / v16)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_29;
    }

    if (v18 <= -9.22337204e18)
    {
      goto LABEL_30;
    }

    if (v18 >= 9.22337204e18)
    {
      goto LABEL_31;
    }

    a1 = v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_32;
    }

    if (result >= v17 + v18)
    {
      v42 = 0;
      if (qword_1019F2098 != -1)
      {
        goto LABEL_33;
      }

      while (1)
      {
        v43 = static OS_os_log.crlDefault;
        v41 = sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        v40 = xmmword_10146C6B0;
        *(inited + 16) = xmmword_10146C6B0;
        if (a1)
        {
          v47 = a1;
          v48 = dispatch thunk of CustomStringConvertible.description.getter();
          v49 = v20;
          v21._countAndFlagsBits = 0x6170206565726620;
          v21._object = 0xEB00000000736567;
          String.append(_:)(v21);
          v22 = v48;
          v23 = v49;
        }

        else
        {
          v23 = 0xEE00736567617020;
          v22 = 0x65657266206C6C61;
        }

        v24 = sub_1000053B0();
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = v24;
        *(inited + 32) = v22;
        *(inited + 40) = v23;
        v25 = static os_log_type_t.default.getter();
        sub_100005404(v43, &_mh_execute_header, v25, "Performing incremental vacuum with %{public}@", 45, 2, inited);
        swift_setDeallocating();
        sub_100005070(inited + 32);
        v48 = 0;
        v49 = 0xE000000000000000;
        _StringGuts.grow(_:)(29);

        v48 = 0xD00000000000001ALL;
        v49 = 0x8000000101572AB0;
        v47 = a1;
        v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v26);

        v27._countAndFlagsBits = 41;
        v27._object = 0xE100000000000000;
        String.append(_:)(v27);
        v28 = v48;
        v29 = v49;
        type metadata accessor for SQLiteStatement();
        swift_initStackObject();

        v31 = v42;
        v32 = sub_10001CC04(v30, v28, v29);

        if (v31)
        {
          break;
        }

        v33 = v45;
        a1 = v44;
        while (1)
        {
          v34 = *(*(v32 + 16) + 32);
          *v10 = v34;
          a1(v10, v33, v6);
          v35 = v34;
          LOBYTE(v34) = _dispatchPreconditionTest(_:)();
          v46(v10, v6);
          if ((v34 & 1) == 0)
          {
            break;
          }

          v36 = *(v32 + 16);

          v37 = sub_10001CEC4(v36, v32);

          if (v37 != 100)
          {
            if (v37 == 101)
            {
            }

            v38 = swift_initStackObject();
            *(v38 + 16) = v40;
            *(v38 + 56) = &type metadata for Int32;
            *(v38 + 64) = &protocol witness table for Int32;
            *(v38 + 32) = v37;
            v39 = static os_log_type_t.default.getter();
            sub_100005404(v43, &_mh_execute_header, v39, "Failed to perform incremental vacuum on the database with error %d", 66, 2, v38);

            swift_setDeallocating();
            return sub_100005070(v38 + 32);
          }
        }

LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        swift_once();
      }
    }
  }

  return result;
}

uint64_t sub_10089B2D8()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 32);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v28 = *(v3 + 104);
  (v28)(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v27 = *(v3 + 8);
  v27(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();

  v12 = sub_10001CC04(v11, 0xD000000000000016, 0x8000000101572A60);

  if (v1)
  {
    return inited;
  }

  v13 = *(*(v12 + 16) + 32);
  *v6 = v13;
  v28(v6, v8, v2);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v27(v6, v2);
  if ((v13 & 1) == 0)
  {
    goto LABEL_14;
  }

  type metadata accessor for SQLiteRowIterator();
  v15 = swift_initStackObject();
  v15[4] = 0;
  v15[5] = 1;
  v15[2] = v12;
  v15[3] = 0;
  inited = sub_10001E1D0();
  swift_setDeallocating();
  sub_10001E364(v15[3], v15[4], v15[5]);
  if (inited)
  {
    v26 = sub_10001E378(0, inited);
    v16 = v8;
    v18 = v17;

    v19 = (v18 & 1) == 0;
    v8 = v16;
    if (v19)
    {
      inited = v26;
    }

    else
    {
      inited = 0;
    }
  }

  v20 = *(*(v12 + 16) + 32);
  *v6 = v20;
  v28(v6, v8, v2);
  v21 = v20;
  v22 = _dispatchPreconditionTest(_:)();
  v27(v6, v2);
  if ((v22 & 1) == 0)
  {
LABEL_15:
    __break(1u);
  }

  swift_beginAccess();
  v23 = *(v12 + 24);
  if (v23)
  {
    sqlite3_finalize(v23);
    *(v12 + 24) = 0;
  }

  return inited;
}

uint64_t sub_10089B5D8()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 32);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v25 = *(v3 + 104);
  (v25)(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v24 = *(v3 + 8);
  v24(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();

  v12 = sub_10001CC04(v11, 0xD000000000000011, 0x8000000101572A40);

  if (v1)
  {
    return inited;
  }

  v13 = *(*(v12 + 16) + 32);
  *v6 = v13;
  v25(v6, v8, v2);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v24(v6, v2);
  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

  v23 = v8;
  type metadata accessor for SQLiteRowIterator();
  v15 = swift_initStackObject();
  v15[4] = 0;
  v15[5] = 1;
  v15[2] = v12;
  v15[3] = 0;
  v16 = sub_10001E1D0();
  swift_setDeallocating();
  sub_10001E364(v15[3], v15[4], v15[5]);
  if (v16)
  {
    inited = sub_10001E378(0, v16);
  }

  else
  {
    inited = 0;
  }

  v17 = *(*(v12 + 16) + 32);
  *v6 = v17;
  v25(v6, v23, v2);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  v24(v6, v2);
  if ((v19 & 1) == 0)
  {
LABEL_14:
    __break(1u);
  }

  swift_beginAccess();
  v20 = *(v12 + 24);
  if (v20)
  {
    sqlite3_finalize(v20);
    *(v12 + 24) = 0;
  }

  return inited;
}

uint64_t sub_10089B8D0()
{
  v1 = OBJC_IVAR____TtC8Freeform14SQLiteDatabase_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10089B9A4(int a1, uint64_t a2)
{
  v20 = a2;
  v19 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v2 + 16);
  v8 = *(v7 + 32);
  *v6 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = *(v4 + 104);
  v10(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = *(v4 + 8);
  result = v13(v6, v3);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = *(v7 + 32);
  *v6 = v15;
  v10(v6, v9, v3);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  result = v13(v6, v3);
  if ((v17 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = swift_beginAccess();
  if (v20 < 0xFFFFFFFF80000000)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_int(*(v2 + 24), v20, v19 & 1);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10089BB64(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(*(v3 + 16) + 32);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  if (a2 >> 60 == 15)
  {
    v12 = v11;
    v13 = _dispatchPreconditionTest(_:)();
    result = (*(v8 + 8))(v10, v7);
    if (v13)
    {
      result = swift_beginAccess();
      if (a3 >= 0xFFFFFFFF80000000)
      {
        if (a3 <= 0x7FFFFFFF)
        {
          return sqlite3_bind_null(*(v3 + 24), a3);
        }

        goto LABEL_12;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100024E84(a1, a2);
  v15 = v11;
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if ((v16 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_100DCCAB4(a1, a2, v3, a3);
  return sub_100025870(a1, a2);
}

uint64_t sub_10089BD40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100060460(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1005C5FFC(v12);
    v17 = *(*(v3 + 16) + 32);
    *v9 = v17;
    (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
    v18 = v17;
    v19 = _dispatchPreconditionTest(_:)();
    result = (*(v7 + 8))(v9, v6);
    if (v19)
    {
      result = swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          return sqlite3_bind_null(*(v3 + 24), a2);
        }

        goto LABEL_12;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v27 = a2;
  (*(v14 + 32))(v16, v12, v13);
  v21 = UUID.crl_data()();
  v23 = v22;
  v24 = *(*(v3 + 16) + 32);
  *v9 = v24;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if ((v24 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_100DCCAB4(v21, v23, v3, v27);
  sub_10002640C(v21, v23);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_10089C088(uint64_t a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v12 = *(*(v3 + 16) + 32);
    *v11 = v12;
    (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
    v13 = v12;
    LOBYTE(v12) = _dispatchPreconditionTest(_:)();
    result = (*(v8 + 8))(v11, v7);
    if (v12)
    {
      result = swift_beginAccess();
      if (a3 >= 0xFFFFFFFF80000000)
      {
        if (a3 <= 0x7FFFFFFF)
        {
          return sqlite3_bind_null(*(v3 + 24), a3);
        }

        goto LABEL_17;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_14;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = *(*(v3 + 16) + 32);
  *v11 = v14;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if ((v14 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_beginAccess();
  if (a3 < 0xFFFFFFFF80000000)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  return sqlite3_bind_int(*(v3 + 24), a3, a1);
}

uint64_t sub_10089C2BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(a2 + 16) + 32);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = swift_beginAccess();
  if (a1 < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (sqlite3_column_type(*(a2 + 24), a1) == 5)
  {
    return 0;
  }

  result = sqlite3_column_text(*(a2 + 24), a1);
  if (result)
  {
    return String.init(cString:)();
  }

  return result;
}

uint64_t sub_10089C440@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001E1D0();
  *a1 = result;
  return result;
}

BOOL sub_10089C46C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 16);
  v6 = *(v5 + 32);
  *v4 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = *(v2 + 104);
  v8(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v9 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v10 = *(v2 + 8);
  v10(v4, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v5 + 24) = 0;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v12 = sub_10001CC04(v11, 0xD000000000000014, 0x8000000101572920);

  v13 = *(*(v12 + 16) + 32);
  *v4 = v13;
  v8(v4, v7, v1);

  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v10(v4, v1);
  if ((v13 & 1) == 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v15 = *(v12 + 16);

  v16 = sub_10001CEC4(v15, v12);

  v17 = v16 == 101;
  v18 = *(*(v12 + 16) + 32);
  *v4 = v18;
  v8(v4, v7, v1);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  v10(v4, v1);
  if ((v18 & 1) == 0)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  v20 = *(v12 + 24);
  if (v20)
  {
    sqlite3_finalize(v20);
    *(v12 + 24) = 0;
  }

  return v17;
}

uint64_t sub_10089C720()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10089C77C()
{
  result = qword_101A05D88;
  if (!qword_101A05D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A05D88);
  }

  return result;
}

unint64_t sub_10089C7D0()
{
  result = qword_101A05D90;
  if (!qword_101A05D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A05D90);
  }

  return result;
}

uint64_t sub_10089C824(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 32);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion;
  if (*(a1 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion) == 1)
  {
    swift_beginAccess();
    return sqlite3_close_v2(*(a2 + 16));
  }

  v31[1] = v2;
  v32 = a2;
  *(a1 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion) = 1;
  v13 = [objc_opt_self() currentProcess];
  sub_1005B981C(&unk_1019F4D60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10146CE00;
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() attributeWithDomain:v15 name:v16];

  *(v14 + 32) = v17;
  *(v14 + 40) = [objc_opt_self() attributeWithCompletionPolicy:1];
  v18 = objc_allocWithZone(RBSAssertion);
  v19 = String._bridgeToObjectiveC()();
  sub_100006370(0, &unk_101A135C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v18 initWithExplanation:v19 target:v13 attributes:isa];

  v35[0] = 0;
  if (([v5 acquireWithError:v35] & 1) == 0)
  {
    v22 = v35[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1019F2098 == -1)
    {
LABEL_7:
      v23 = static OS_os_log.crlDefault;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v25 = Error.publicDescription.getter(v33, v34);
      v27 = v26;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v25;
      *(inited + 40) = v27;
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v23, &_mh_execute_header, v28, "Failed to acquire RBS assertion to perform database operation. Still performing the operation. Error: %{public}@", 112, 2, inited);

      swift_setDeallocating();
      sub_100005070(inited + 32);
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  v21 = v35[0];
LABEL_8:
  v29 = v32;
  swift_beginAccess();
  v30 = sqlite3_close_v2(*(v29 + 16));
  [v5 invalidate];

  result = v30;
  *(v9 + a1) = 0;
  return result;
}

unint64_t sub_10089CD4C()
{
  result = qword_101A05D98;
  if (!qword_101A05D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A05D98);
  }

  return result;
}

id sub_10089CDB8()
{
  result = [objc_allocWithZone(CRLColor) initWithWhite:1.0 alpha:1.0];
  qword_101AD69E0 = result;
  return result;
}

id sub_10089CDF4()
{
  result = [objc_allocWithZone(CRLColor) initWithWhite:0.749019608 alpha:1.0];
  qword_101AD69E8 = result;
  return result;
}

id sub_10089CE34()
{
  result = [objc_allocWithZone(CRLColor) initWithWhite:0.0 alpha:1.0];
  qword_101AD69F0 = result;
  return result;
}

id sub_10089CE70()
{
  result = [objc_allocWithZone(CRLColor) initWithRed:0.423529412 green:0.894117647 blue:0.811764706 alpha:1.0];
  qword_101AD69F8 = result;
  return result;
}

id sub_10089CEC0()
{
  result = [objc_allocWithZone(CRLColor) initWithRed:0.921568627 green:0.325490196 blue:0.623529412 alpha:1.0];
  qword_101AD6A00 = result;
  return result;
}

id sub_10089CF10()
{
  result = [objc_allocWithZone(CRLColor) initWithRed:0.470588235 green:0.17254902 blue:0.964705882 alpha:1.0];
  qword_101AD6A08 = result;
  return result;
}

id sub_10089CF64()
{
  result = [objc_allocWithZone(CRLColor) initWithRed:0.917647059 green:0.301960784 blue:0.239215686 alpha:1.0];
  qword_101AD6A10 = result;
  return result;
}

id sub_10089CFB4()
{
  result = [objc_allocWithZone(CRLColor) initWithRed:0.937254902 green:0.549019608 blue:0.0 alpha:1.0];
  qword_101AD6A18 = result;
  return result;
}

id sub_10089D000()
{
  result = [objc_allocWithZone(CRLColor) initWithRed:0.964705882 green:0.807843137 blue:0.274509804 alpha:1.0];
  qword_101AD6A20 = result;
  return result;
}

id sub_10089D050()
{
  result = [objc_allocWithZone(CRLColor) initWithRed:0.392156863 green:0.768627451 blue:0.4 alpha:1.0];
  qword_101AD6A28 = result;
  return result;
}

id sub_10089D0A0()
{
  result = [objc_allocWithZone(CRLColor) initWithRed:0.352941176 green:0.768627451 blue:0.964705882 alpha:1.0];
  qword_101AD6A30 = result;
  return result;
}

id sub_10089D0F0()
{
  result = [objc_allocWithZone(CRLColor) initWithRed:0.160784314 green:0.37254902 blue:0.956862745 alpha:1.0];
  qword_101AD6A38 = result;
  return result;
}

void sub_10089D350(uint64_t a1, void *a2, void **a3, void *a4)
{
  if (*a2 != -1)
  {
    v9 = a3;
    swift_once();
    a3 = v9;
  }

  v5 = *a3;
  v6 = objc_allocWithZone(CRLColorFill);
  v7 = v5;
  v8 = [v6 initWithColor:v7];

  *a4 = v8;
}

void sub_10089D4C4(double a1, double a2, double a3, uint64_t a4, void *a5)
{
  v6 = [objc_allocWithZone(CRLColor) initWithRed:a1 green:a2 blue:a3 alpha:1.0];
  v7 = objc_allocWithZone(CRLColorFill);
  v8 = v6;
  v9 = [v7 initWithColor:v8];

  *a5 = v9;
}

uint64_t sub_10089D570(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_10089D58C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10089D5D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10089D618(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

BOOL sub_10089D640(void *a1, unsigned __int8 a2, void *a3, char a4)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a4 == 1)
      {
LABEL_12:
        sub_100006370(0, &qword_1019F54D0);
        return static NSObject.== infix(_:_:)() & 1;
      }
    }

    else if (!a4)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (a2 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }

    if (a1)
    {
      if (a3)
      {
        sub_100006370(0, &qword_101A2BF30);
        sub_10089D774(a3, 2u);
        sub_10089D774(a1, 2u);
        v6 = static NSObject.== infix(_:_:)();
        sub_1007A98C8(a1, 2u);
        sub_1007A98C8(a3, 2u);
        if (v6)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  else if (a4 != 3)
  {
    return 0;
  }

  return !a3;
}

id sub_10089D774(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

uint64_t sub_10089D788()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_10089D7D0()
{
  sub_1008A0F80();
  sub_10000CAAC(v0 + 16, &qword_101A15AD0);

  return swift_deallocClassInstance();
}

uint64_t sub_10089D844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[9] = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_10089D910, 0, 0);
}

uint64_t sub_10089D910(unint64_t a1)
{
  v3 = *(*(v1 + 40) + 104);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!is_mul_ok(v3, 0x3B9ACA00uLL))
  {
LABEL_11:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = 1000000000 * v3;
  v5 = swift_task_alloc();
  *(v1 + 96) = v5;
  *v5 = v1;
  v5[1] = sub_10089DA08;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_10089DA08()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10089DB5C, 0, 0);
  }
}

uint64_t sub_10089DB5C()
{
  v1 = *(*(v0 + 40) + 88);
  *(v0 + 104) = v1;
  return _swift_task_switch(sub_10089DB80, v1, 0);
}

uint64_t sub_10089DB80()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  *(v0 + 112) = *(v1 + 112);

  return _swift_task_switch(sub_10089DC08, 0, 0);
}

uint64_t sub_10089DC08()
{
  type metadata accessor for MainActor();
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10089DC9C, v2, v1);
}

uint64_t sub_10089DC9C()
{

  if (static Task<>.isCancelled.getter())
  {
  }

  else
  {
    v1 = v0[8];
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0[9];
      v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v5 = v1 + v4;
      v6 = *(v3 + 72);
      do
      {
        v7 = v0[14];
        v8 = v0[11];
        sub_10075ABD8(v5, v8);
        v9 = sub_10079EC58(v8, v7);
        v10 = v0[11];
        if (v9)
        {
          sub_100065C80(v10, v0[10], type metadata accessor for CRLBoardLibraryViewModel.Item);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100776764(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v12 = _swiftEmptyArrayStorage[2];
          v11 = _swiftEmptyArrayStorage[3];
          if (v12 >= v11 >> 1)
          {
            sub_100776764(v11 > 1, v12 + 1, 1);
          }

          v13 = v0[10];
          _swiftEmptyArrayStorage[2] = v12 + 1;
          sub_100065C80(v13, _swiftEmptyArrayStorage + v4 + v12 * v6, type metadata accessor for CRLBoardLibraryViewModel.Item);
        }

        else
        {
          sub_10000B9E4(v10, type metadata accessor for CRLBoardLibraryViewModel.Item);
        }

        v5 += v6;
        --v2;
      }

      while (v2);
    }

    v14 = v0[6];

    v14(_swiftEmptyArrayStorage);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_10089DE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v12;
  *(v8 + 232) = v11;
  *(v8 + 216) = a7;
  *(v8 + 224) = a8;
  *(v8 + 200) = a5;
  *(v8 + 208) = a6;
  *(v8 + 192) = a4;
  *(v8 + 256) = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_10089DFBC, 0, 0);
}

uint64_t sub_10089DFBC()
{
  v1 = *(*(v0 + 192) + 88);
  *(v0 + 328) = v1;
  return _swift_task_switch(sub_10089DFE0, v1, 0);
}

uint64_t sub_10089DFE0()
{
  v1 = v0[41];
  v2 = v0[26];
  v3 = v0[27];
  v1[16] = v0[25];
  v1[17] = v2;

  v1[15] = v3;

  swift_beginAccess();
  v1[14] = _swiftEmptySetSingleton;

  return _swift_task_switch(sub_10089E0A8, 0, 0);
}

uint64_t sub_10089E0A8()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    *(v0 + 336) = type metadata accessor for MainActor();
    *(v0 + 344) = static MainActor.shared.getter();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
    v15 = sub_10089E32C;
    v16 = v12;
    v17 = v14;
LABEL_15:

    return _swift_task_switch(v15, v16, v17);
  }

  *(v0 + 184) = _swiftEmptySetSingleton;
  v4 = sub_1008A13E4(*(v0 + 216), v1, v2);
  sub_10063FAF0(v4);

  v5 = *(v0 + 184);
  *(v0 + 360) = v5;
  v6 = *(v5 + 32);
  *(v0 + 440) = v6;
  v7 = -1;
  v8 = -1 << v6;
  if (-(-1 << v6) < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 56);

  if (v9)
  {
    v11 = 0;
LABEL_12:
    *(v0 + 368) = v9;
    *(v0 + 376) = v11;
    v19 = *(v0 + 312);
    v20 = *(v0 + 320);
    v21 = *(v0 + 192);
    sub_10075ABD8(*(v10 + 48) + *(*(v0 + 256) + 72) * (__clz(__rbit64(v9)) | (v11 << 6)), v20);
    sub_100065C80(v20, v19, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (*(v21 + 64))
    {

      sub_1005B981C(&unk_1019F6B40);
      Task.cancel()();
    }

    v16 = *(v0 + 328);
    v15 = sub_10089E960;
    v17 = 0;
    goto LABEL_15;
  }

  v18 = 0;
  while (((63 - v8) >> 6) - 1 != v18)
  {
    v11 = v18 + 1;
    v9 = *(v10 + 8 * v18++ + 64);
    if (v9)
    {
      goto LABEL_12;
    }
  }

  v22 = swift_task_alloc();
  *(v0 + 384) = v22;
  *v22 = v0;
  v22[1] = sub_10089E518;
  v23 = *(v0 + 224);
  v24 = *(v0 + 232);
  v25 = *(v0 + 208);
  v26 = *(v0 + 216);
  v27 = *(v0 + 200);

  return sub_10089F398(v26, v27, v25, v23, v24);
}

uint64_t sub_10089E32C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 216);

  v1(v2);

  return _swift_task_switch(sub_10089E3B0, 0, 0);
}

uint64_t sub_10089E3B0()
{
  *(v0 + 352) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10089E43C, v2, v1);
}

uint64_t sub_10089E43C()
{
  v1 = v0[30];
  v2 = v0[27];

  v1(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10089E518(uint64_t a1)
{
  *(*v1 + 392) = a1;

  return _swift_task_switch(sub_10089E618, 0, 0);
}

uint64_t sub_10089E618()
{
  sub_10063FAF0(*(v0 + 392));

  v1 = *(v0 + 184);
  *(v0 + 400) = v1;
  v2 = *(v1 + 32);
  *(v0 + 441) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);

  if (v5)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 408) = v5;
    *(v0 + 416) = v7;
    v9 = *(v0 + 304);
    v10 = *(v0 + 280);
    v11 = *(v0 + 192);
    sub_10075ABD8(*(v6 + 48) + *(*(v0 + 256) + 72) * (__clz(__rbit64(v5)) | (v7 << 6)), v9);
    sub_100065C80(v9, v10, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (*(v11 + 64))
    {

      sub_1005B981C(&unk_1019F6B40);
      Task.cancel()();
    }

    v12 = *(v0 + 328);
    v13 = sub_10089ED3C;
    v14 = 0;
  }

  else
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 64);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v15 = *(v0 + 216);

    v16 = *(v15 + 16);

    if (v16)
    {
      v17 = *(v0 + 256);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = *(v17 + 72);
      v20 = *(v0 + 216) + v18;
      do
      {
        v21 = *(v0 + 400);
        v22 = *(v0 + 272);
        sub_10075ABD8(v20, v22);

        LOBYTE(v22) = sub_10079EC58(v22, v21);

        v23 = *(v0 + 272);
        if (v22)
        {
          sub_100065C80(v23, *(v0 + 264), type metadata accessor for CRLBoardLibraryViewModel.Item);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100776764(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v25 = _swiftEmptyArrayStorage[2];
          v24 = _swiftEmptyArrayStorage[3];
          if (v25 >= v24 >> 1)
          {
            sub_100776764(v24 > 1, v25 + 1, 1);
          }

          v26 = *(v0 + 264);
          _swiftEmptyArrayStorage[2] = v25 + 1;
          sub_100065C80(v26, _swiftEmptyArrayStorage + v18 + v25 * v19, type metadata accessor for CRLBoardLibraryViewModel.Item);
        }

        else
        {
          sub_10000B9E4(v23, type metadata accessor for CRLBoardLibraryViewModel.Item);
        }

        v20 += v19;
        --v16;
      }

      while (v16);
    }

    *(v0 + 424) = _swiftEmptyArrayStorage;

    type metadata accessor for MainActor();
    *(v0 + 432) = static MainActor.shared.getter();
    v27 = dispatch thunk of Actor.unownedExecutor.getter();
    v29 = v28;
    v13 = sub_10089F248;
    v12 = v27;
    v14 = v29;
  }

  return _swift_task_switch(v13, v12, v14);
}

uint64_t sub_10089E960()
{
  v2 = v0[36];
  v1 = v0[37];
  sub_10075ABD8(v0[39], v2);
  swift_beginAccess();
  sub_100E6DFC0(v1, v2);
  sub_10000B9E4(v1, type metadata accessor for CRLBoardLibraryViewModel.Item);
  swift_endAccess();

  return _swift_task_switch(sub_10089EA24, 0, 0);
}

uint64_t sub_10089EA24()
{
  v1 = v0[24];
  v2 = *(v1 + 72);
  if (v2)
  {
    if ([v2 isValid])
    {
      goto LABEL_5;
    }

    v1 = v0[24];
  }

  v4 = v0[28];
  v3 = v0[29];
  v5 = objc_opt_self();
  v6 = *(v1 + 96);
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v4;
  v7[4] = v3;
  v0[6] = sub_1008A185C;
  v0[7] = v7;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = *"";
  v0[4] = sub_10068B39C;
  v0[5] = &unk_10188AD18;
  v8 = _Block_copy(v0 + 2);

  v9 = [v5 scheduledTimerWithTimeInterval:0 repeats:v8 block:v6];
  _Block_release(v8);
  v10 = *(v1 + 72);
  *(v1 + 72) = v9;

LABEL_5:
  v11 = sub_10000B9E4(v0[39], type metadata accessor for CRLBoardLibraryViewModel.Item);
  v14 = v0[47];
  v15 = (v0[46] - 1) & v0[46];
  if (v15)
  {
    v11 = v0[45];
LABEL_11:
    v0[46] = v15;
    v0[47] = v14;
    v17 = v0[39];
    v18 = v0[40];
    v19 = v0[24];
    sub_10075ABD8(*(v11 + 6) + *(v0[32] + 72) * (__clz(__rbit64(v15)) | (v14 << 6)), v18);
    sub_100065C80(v18, v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (*(v19 + 64))
    {

      sub_1005B981C(&unk_1019F6B40);
      Task.cancel()();
    }

    v12 = v0[41];
    v11 = sub_10089E960;
    v13 = 0;

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return _swift_task_switch(v11, v12, v13);
      }

      v11 = v0[45];
      if (v16 >= (((1 << *(v0 + 440)) + 63) >> 6))
      {
        break;
      }

      v15 = *(v11 + v16 + 7);
      ++v14;
      if (v15)
      {
        v14 = v16;
        goto LABEL_11;
      }
    }

    v20 = swift_task_alloc();
    v0[48] = v20;
    *v20 = v0;
    v20[1] = sub_10089E518;
    v21 = v0[28];
    v22 = v0[29];
    v23 = v0[26];
    v24 = v0[27];
    v25 = v0[25];

    return sub_10089F398(v24, v25, v23, v21, v22);
  }
}

uint64_t sub_10089ED3C()
{
  v2 = v0[36];
  v1 = v0[37];
  sub_10075ABD8(v0[35], v2);
  swift_beginAccess();
  sub_100E6DFC0(v1, v2);
  sub_10000B9E4(v1, type metadata accessor for CRLBoardLibraryViewModel.Item);
  swift_endAccess();

  return _swift_task_switch(sub_10089EE00, 0, 0);
}

uint64_t sub_10089EE00()
{
  v1 = v0[24];
  v2 = *(v1 + 72);
  if (v2)
  {
    if ([v2 isValid])
    {
      goto LABEL_5;
    }

    v1 = v0[24];
  }

  v4 = v0[28];
  v3 = v0[29];
  v5 = objc_opt_self();
  v6 = *(v1 + 96);
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v4;
  v7[4] = v3;
  v0[12] = sub_1008A1D50;
  v0[13] = v7;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = *"";
  v0[10] = sub_10068B39C;
  v0[11] = &unk_10188AD68;
  v8 = _Block_copy(v0 + 8);

  v9 = [v5 scheduledTimerWithTimeInterval:0 repeats:v8 block:v6];
  _Block_release(v8);
  v10 = *(v1 + 72);
  *(v1 + 72) = v9;

LABEL_5:
  v11 = sub_10000B9E4(v0[35], type metadata accessor for CRLBoardLibraryViewModel.Item);
  v14 = v0[52];
  v15 = (v0[51] - 1) & v0[51];
  if (v15)
  {
    v11 = v0[50];
LABEL_11:
    v0[51] = v15;
    v0[52] = v14;
    v17 = v0[38];
    v18 = v0[35];
    v19 = v0[24];
    sub_10075ABD8(*(v11 + 6) + *(v0[32] + 72) * (__clz(__rbit64(v15)) | (v14 << 6)), v17);
    sub_100065C80(v17, v18, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (*(v19 + 64))
    {

      sub_1005B981C(&unk_1019F6B40);
      Task.cancel()();
    }

    v12 = v0[41];
    v11 = sub_10089ED3C;
    v13 = 0;
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return _swift_task_switch(v11, v12, v13);
      }

      v11 = v0[50];
      if (v16 >= (((1 << *(v0 + 441)) + 63) >> 6))
      {
        break;
      }

      v15 = *(v11 + v16 + 7);
      ++v14;
      if (v15)
      {
        v14 = v16;
        goto LABEL_11;
      }
    }

    v20 = v0[27];

    v21 = *(v20 + 16);

    if (v21)
    {
      v22 = v0[32];
      v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v24 = *(v22 + 72);
      v25 = v0[27] + v23;
      do
      {
        v26 = v0[50];
        v27 = v0[34];
        sub_10075ABD8(v25, v27);

        LOBYTE(v27) = sub_10079EC58(v27, v26);

        v28 = v0[34];
        if (v27)
        {
          sub_100065C80(v28, v0[33], type metadata accessor for CRLBoardLibraryViewModel.Item);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100776764(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v30 = _swiftEmptyArrayStorage[2];
          v29 = _swiftEmptyArrayStorage[3];
          if (v30 >= v29 >> 1)
          {
            sub_100776764(v29 > 1, v30 + 1, 1);
          }

          v31 = v0[33];
          _swiftEmptyArrayStorage[2] = v30 + 1;
          sub_100065C80(v31, _swiftEmptyArrayStorage + v23 + v30 * v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
        }

        else
        {
          sub_10000B9E4(v28, type metadata accessor for CRLBoardLibraryViewModel.Item);
        }

        v25 += v24;
        --v21;
      }

      while (v21);
    }

    v0[53] = _swiftEmptyArrayStorage;

    type metadata accessor for MainActor();
    v0[54] = static MainActor.shared.getter();
    v32 = dispatch thunk of Actor.unownedExecutor.getter();
    v34 = v33;
    v11 = sub_10089F248;
    v12 = v32;
    v13 = v34;
  }

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10089F248()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 240);

  v2(v1);

  return _swift_task_switch(sub_10089F2D0, 0, 0);
}

uint64_t sub_10089F2D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10089F398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  return _swift_task_switch(sub_10089F3C0, 0, 0);
}

uint64_t sub_10089F3C0()
{
  v1 = v0[15];
  v2 = v0[16];
  v25 = v0[14];
  v3 = v0[11];
  [*(v2 + 80) cancel];
  v4 = swift_allocObject();
  v0[17] = v4;
  *(v4 + 16) = _swiftEmptyArrayStorage;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v5 crl_stringByEscapingForSpotlightSearch];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  _StringGuts.grow(_:)(22);

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 1684219690;
  v11._object = 0xE400000000000000;
  String.append(_:)(v11);
  v12 = [objc_allocWithZone(CSSearchQueryContext) init];
  v0[18] = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v12 setFetchAttributes:isa];

  v14 = objc_allocWithZone(CSSearchQuery);
  v15 = v12;
  v16 = String._bridgeToObjectiveC()();

  v17 = [v14 initWithQueryString:v16 queryContext:v15];
  v0[19] = v17;

  v18 = *(v2 + 80);
  *(v2 + 80) = v17;
  v19 = v17;

  v20 = swift_allocObject();
  v20[2] = v3;
  v20[3] = v2;
  v20[4] = v25;
  v20[5] = v1;
  v20[6] = v4;
  v0[6] = sub_1008A1930;
  v0[7] = v20;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = *"";
  v0[4] = sub_100C91A3C;
  v0[5] = &unk_10188AE58;
  v21 = _Block_copy(v0 + 2);

  [v19 setFoundItemsHandler:v21];
  _Block_release(v21);
  v22 = swift_task_alloc();
  v0[20] = v22;
  *(v22 + 16) = v19;
  v23 = swift_task_alloc();
  v0[21] = v23;
  *v23 = v0;
  v23[1] = sub_10089F74C;

  return withCheckedContinuation<A>(isolation:function:_:)(v23, 0, 0, 0xD000000000000038, 0x8000000101572DB0, sub_1008A1940, v22, &type metadata for () + 8);
}

uint64_t sub_10089F74C()
{

  return _swift_task_switch(sub_10089F864, 0, 0);
}

uint64_t sub_10089F864()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);

  swift_beginAccess();
  v3 = *(v2 + 16);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_10089F8F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v73[1] = a6;
  v90 = a5;
  v89 = a4;
  v88 = a3;
  v78 = a2;
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v100 = v73 - v11;
  v12 = _s5BoardVMa(0);
  __chkstk_darwin(v12 - 8);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v77 = *(v91 - 8);
  v15 = *(v77 + 64);
  __chkstk_darwin(v91);
  v87 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v99 = v73 - v17;
  __chkstk_darwin(v18);
  v20 = v73 - v19;
  __chkstk_darwin(v21);
  v23 = v73 - v22;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v25 = 0;
    v82 = a1 & 0xC000000000000001;
    v79 = *(v78 + 16);
    v75 = a1 & 0xFFFFFFFFFFFFFF8;
    v74 = a1 + 32;
    v76 = v15 + 7;
    v101 = _swiftEmptyArrayStorage;
    v86 = v9;
    v85 = v14;
    v9 = v91;
    v81 = a1;
    v98 = v20;
    v80 = i;
    v84 = v23;
    while (1)
    {
      if (v82)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v75 + 16))
        {
          goto LABEL_45;
        }

        v26 = *(v74 + 8 * v25);
      }

      v102 = v26;
      v27 = __OFADD__(v25, 1);
      v28 = v25 + 1;
      if (v27)
      {
        break;
      }

      v83 = v28;
      v29 = v79;
      if (v79)
      {
        v30 = *(v77 + 80);
        v94 = (v30 + 32) & ~v30;
        v95 = v30;
        v31 = v78 + v94;
        v103 = *(v77 + 72);
        v92 = (v76 + ((v30 + 40) & ~v30)) & 0xFFFFFFFFFFFFFFF8;
        v93 = (v30 + 40) & ~v30;
        while (1)
        {
          sub_10075ABD8(v31, v23);
          sub_10075ABD8(v23, v20);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            break;
          }

          v15 = type metadata accessor for CRLBoardLibraryViewModel.Item;
          sub_10000B9E4(v23, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v32 = v20;
          v33 = type metadata accessor for CRLBoardLibraryViewModel.Item;
LABEL_13:
          sub_10000B9E4(v32, v33);
LABEL_14:
          v31 += v103;
          if (!--v29)
          {
            goto LABEL_4;
          }
        }

        sub_100065C80(v20, v14, _s5BoardVMa);
        v34 = [v102 attributeSet];
        v35 = [v34 contentType];

        if (v35)
        {
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;
        }

        else
        {
          v36 = 0;
          v38 = 0;
        }

        if (qword_1019F19B0 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for UTType();
        sub_1005EB3DC(v39, qword_101AD6CD0);
        v40 = UTType.identifier.getter();
        v15 = v41;
        if (v38)
        {
          if (v36 == v40 && v38 == v41)
          {

            goto LABEL_27;
          }

          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v42)
          {
LABEL_27:
            v43 = [v102 uniqueIdentifier];
            v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v46 = v45;

            v110 = v44;
            v111 = v46;
            v108 = UUID.uuidString.getter();
            v109 = v47;

            v48._countAndFlagsBits = 58;
            v48._object = 0xE100000000000000;
            String.append(_:)(v48);

            v49 = v108;
            v50 = v109;
            v51 = &v14[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
            v52 = *v51;
            v53 = v51[1];
            v108 = v49;
            v109 = v50;

            v54._countAndFlagsBits = v52;
            v54._object = v53;
            String.append(_:)(v54);

            sub_100017CD8();
            v15 = StringProtocol.contains<A>(_:)();

            if ((v15 & 1) == 0)
            {
              sub_10000B9E4(v23, type metadata accessor for CRLBoardLibraryViewModel.Item);
              sub_10000B9E4(v14, _s5BoardVMa);
              v20 = v98;
              goto LABEL_14;
            }

            sub_10075ABD8(v23, v99);
            v55 = v101;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v55 = sub_100B3648C(0, v55[2] + 1, 1, v55);
            }

            v57 = v55[2];
            v56 = v55[3];
            if (v57 >= v56 >> 1)
            {
              v55 = sub_100B3648C(v56 > 1, v57 + 1, 1, v55);
            }

            v55[2] = v57 + 1;
            v101 = v55;
            sub_100065C80(v99, v55 + v94 + v57 * v103, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v58 = type metadata accessor for TaskPriority();
            v59 = *(v58 - 8);
            v60 = v100;
            (*(v59 + 56))(v100, 1, 1, v58);
            v61 = v87;
            sub_10075ABD8(v23, v87);
            v62 = v92;
            v63 = swift_allocObject();
            v63[2] = 0;
            v63[3] = 0;
            v63[4] = v88;
            sub_100065C80(v61, v63 + v93, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v64 = (v63 + v62);
            v65 = v90;
            *v64 = v89;
            v64[1] = v65;
            v66 = v86;
            sub_10000BE14(v60, v86, &qword_1019FB750);
            v96 = v59;
            v97 = v58;
            LODWORD(v59) = (*(v59 + 48))(v66, 1, v58);

            if (v59 == 1)
            {
              sub_10000CAAC(v66, &qword_1019FB750);
            }

            else
            {
              TaskPriority.rawValue.getter();
              (*(v96 + 8))(v66, v97);
            }

            v14 = v85;
            v9 = v91;
            v67 = v63[2];
            swift_unknownObjectRetain();

            v23 = v84;
            if (v67)
            {
              swift_getObjectType();
              v68 = dispatch thunk of Actor.unownedExecutor.getter();
              v70 = v69;
              swift_unknownObjectRelease();
            }

            else
            {
              v68 = 0;
              v70 = 0;
            }

            v71 = swift_allocObject();
            *(v71 + 16) = &unk_1014838A0;
            *(v71 + 24) = v63;
            if (v70 | v68)
            {
              v104 = 0;
              v105 = 0;
              v106 = v68;
              v107 = v70;
            }

            v20 = v98;
            v15 = swift_task_create();
            sub_10000CAAC(v100, &qword_1019FB750);
            sub_10000B9E4(v23, type metadata accessor for CRLBoardLibraryViewModel.Item);

            goto LABEL_43;
          }
        }

        else
        {
        }

        sub_10000B9E4(v23, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_43:
        v33 = _s5BoardVMa;
        v32 = v14;
        goto LABEL_13;
      }

LABEL_4:

      v25 = v83;
      a1 = v81;
      if (v83 == v80)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  v101 = _swiftEmptyArrayStorage;
LABEL_48:
  swift_beginAccess();
  sub_10079ADBC(v101);
  return swift_endAccess();
}

uint64_t sub_1008A0300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_10002D3D4;

  return sub_1008A0574(a5, a6, a7);
}

id sub_1008A03B4(uint64_t a1, void *a2)
{
  v4 = sub_1005B981C(&qword_101A15A30);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1008A1948;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_1008BE72C;
  aBlock[3] = &unk_10188AEA8;
  v11 = _Block_copy(aBlock);

  [a2 setCompletionHandler:v11];
  _Block_release(v11);
  return [a2 start];
}

uint64_t sub_1008A0574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_1008A0614, 0, 0);
}

uint64_t sub_1008A0614()
{
  v1 = *(v0 + 112);
  if (*(v1 + 64))
  {

    sub_1005B981C(&unk_1019F6B40);
    Task.cancel()();

    v1 = *(v0 + 112);
  }

  v2 = *(v1 + 88);
  *(v0 + 136) = v2;

  return _swift_task_switch(sub_1008A06CC, v2, 0);
}

uint64_t sub_1008A06CC()
{
  v1 = v0[16];
  v2 = v0[15];
  sub_10075ABD8(v0[11], v2);
  swift_beginAccess();
  sub_100E6DFC0(v1, v2);
  sub_10000B9E4(v1, type metadata accessor for CRLBoardLibraryViewModel.Item);
  swift_endAccess();

  return _swift_task_switch(sub_1008A0790, 0, 0);
}

uint64_t sub_1008A0790()
{
  v1 = v0[14];
  v2 = *(v1 + 72);
  v3 = v1;
  if (v2)
  {
    if ([v2 isValid])
    {
      goto LABEL_5;
    }

    v3 = v0[14];
  }

  v5 = v0[12];
  v4 = v0[13];
  v6 = objc_opt_self();
  v7 = *(v3 + 96);
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = v5;
  v8[4] = v4;
  v0[6] = sub_1008A1D50;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = *"";
  v0[4] = sub_10068B39C;
  v0[5] = &unk_10188ADE0;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 scheduledTimerWithTimeInterval:0 repeats:v9 block:v7];
  _Block_release(v9);
  v11 = *(v1 + 72);
  *(v1 + 72) = v10;

LABEL_5:

  v12 = v0[1];

  return v12();
}

uint64_t sub_1008A0924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;

  sub_10064191C(0, 0, v9, &unk_101483878, v11);
}

uint64_t sub_1008A0A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v6[8] = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_1008A0B18, 0, 0);
}

uint64_t sub_1008A0B18()
{
  if (static Task<>.isCancelled.getter())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = *(v0[5] + 88);
    v0[11] = v3;

    return _swift_task_switch(sub_1008A0BC8, v3, 0);
  }
}

uint64_t sub_1008A0BC8()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  *(v0 + 96) = *(v1 + 112);

  return _swift_task_switch(sub_1008A0C50, v1, 0);
}

uint64_t sub_1008A0C50()
{
  *(v0 + 104) = *(*(v0 + 88) + 120);

  return _swift_task_switch(sub_1008A0CC4, 0, 0);
}

uint64_t sub_1008A0CC4()
{
  type metadata accessor for MainActor();
  *(v0 + 112) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008A0D58, v2, v1);
}

uint64_t sub_1008A0D58()
{

  result = static Task<>.isCancelled.getter();
  v2 = v0[13];
  if (result)
  {

LABEL_15:

    v16 = v0[1];

    return v16();
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_14:
    v15 = v0[6];

    v15(_swiftEmptyArrayStorage);

    goto LABEL_15;
  }

  v4 = 0;
  v5 = v0[8];
  v17 = v0[13];
  while (v4 < *(v2 + 16))
  {
    v6 = v0[12];
    v7 = v0[10];
    v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v9 = *(v5 + 72);
    sub_10075ABD8(v0[13] + v8 + v9 * v4, v7);
    v10 = sub_10079EC58(v7, v6);
    v11 = v0[10];
    if (v10)
    {
      sub_100065C80(v11, v0[9], type metadata accessor for CRLBoardLibraryViewModel.Item);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100776764(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_100776764(v12 > 1, v13 + 1, 1);
      }

      v14 = v0[9];
      _swiftEmptyArrayStorage[2] = v13 + 1;
      result = sub_100065C80(v14, _swiftEmptyArrayStorage + v8 + v13 * v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v2 = v17;
    }

    else
    {
      result = sub_10000B9E4(v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }

    if (v3 == ++v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

id sub_1008A0F80()
{
  [*(v0 + 80) cancel];
  if (*(v0 + 64))
  {

    sub_1005B981C(&unk_1019F6B40);
    Task.cancel()();
  }

  if (*(v0 + 56))
  {

    sub_1005B981C(&unk_1019F6B40);
    Task.cancel()();
  }

  v1 = *(v0 + 72);

  return [v1 invalidate];
}

uint64_t sub_1008A1060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v9 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_1005B981C(&qword_101A06060);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v26 - v15;
  (*(v13 + 16))(&v26 - v15, a1, v12, v14);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  sub_1008A0F80();
  v19 = type metadata accessor for TaskPriority();
  v20 = *(*(v19 - 8) + 56);
  v20(v11, 1, 1, v19);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a2;
  v21[5] = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
  v21[6] = 0;
  v21[7] = a3;

  *(a2 + 64) = sub_100796D54(0, 0, v11, &unk_1014838B8, v21);

  TaskPriority.init(rawValue:)();
  v20(v11, 0, 1, v19);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v23 = v27;
  v22[4] = a2;
  v22[5] = v23;
  v22[6] = a5;
  v22[7] = a3;
  v22[8] = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
  v22[9] = 0;
  v22[10] = sub_1008A1AF0;
  v22[11] = v18;

  v24 = sub_1006E2398(0, 0, v11, &unk_1014838C0, v22);

  sub_10000CAAC(v11, &qword_1019FB750);
  *(a2 + 56) = v24;
}

uint64_t sub_1008A1390()
{

  sub_1005B981C(&qword_101A06060);
  CheckedContinuation.resume(returning:)();
  return 0;
}

void *sub_1008A13E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v37 = a2;
  v40 = _s5BoardVMa(0);
  __chkstk_darwin(v40);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v5 - 8);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v44);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v41 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = a1 + v41;
  v17 = *(v12 + 72);
  v18 = _swiftEmptyArrayStorage;
  v19 = v37;
  v42 = v17;
  do
  {
    sub_10075ABD8(v16, v14);
    sub_10075ABD8(v14, v10);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v21 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        v22 = v38;
        sub_100065C80(v10, v38, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v23 = sub_10006A888();
        v25 = v24;
      }

      else
      {
        v21 = _s5BoardVMa;
        v22 = v39;
        sub_100065C80(v10, v39, _s5BoardVMa);
        v26 = (v22 + *(v40 + 24));
        v23 = *v26;
        v25 = v26[1];
      }

      sub_10000B9E4(v22, v21);
      v17 = v42;
    }

    else if (*v10)
    {
      v25 = 0xE700000000000000;
      v23 = 0x737265646C6F46;
    }

    else
    {
      v31 = [objc_opt_self() mainBundle];
      v32 = String._bridgeToObjectiveC()();
      v33 = String._bridgeToObjectiveC()();
      v34 = [v31 localizedStringForKey:v32 value:v33 table:0];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v35;

      v17 = v42;
      v19 = v37;
    }

    v48 = v23;
    v49 = v25;
    v46 = v19;
    v47 = v45;
    sub_100017CD8();
    v27 = StringProtocol.localizedStandardContains<A>(_:)();

    if (v27)
    {
      sub_100065C80(v14, v43, type metadata accessor for CRLBoardLibraryViewModel.Item);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100776764(0, v18[2] + 1, 1);
        v18 = v50;
      }

      v30 = v18[2];
      v29 = v18[3];
      if (v30 >= v29 >> 1)
      {
        sub_100776764(v29 > 1, v30 + 1, 1);
        v18 = v50;
      }

      v18[2] = v30 + 1;
      sub_100065C80(v43, v18 + v41 + v30 * v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }

    else
    {
      sub_10000B9E4(v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }

    v16 += v17;
    --v15;
  }

  while (v15);
  return v18;
}

uint64_t sub_1008A1868(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_1008A0A4C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1008A19B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002D4C8;

  return sub_1008A0300(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1008A1AF0()
{
  sub_1005B981C(&qword_101A06060);

  return sub_1008A1390();
}

uint64_t sub_1008A1B6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D3D4;

  return sub_10089D844(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1008A1C40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002D4C8;

  return sub_10089DE90(a1, v4, v5, v6, v7, v8, v9, v10);
}

id sub_1008A1E94(uint64_t a1, void *a2, void *a3, id a4)
{
  v5 = v4;
  v18 = v5;
  v10 = objc_allocWithZone(v5);
  v11 = OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_id;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v10[v11], a1, v12);
  if (a2)
  {
    v14 = a2;
    [v14 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100006370(0, &unk_1019F5730);
    swift_dynamicCast();
    *&v10[OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_imageGeometry] = v19;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    *&v10[OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_maskGeometry] = 0;
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_7:
    *&v10[OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_maskPathSource] = 0;
    goto LABEL_8;
  }

  *&v10[OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_imageGeometry] = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = a3;
  [v15 copy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  sub_100006370(0, &unk_1019F5730);
  swift_dynamicCast();
  *&v10[OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_maskGeometry] = v19;
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_4:
  a4 = a4;
  [a4 copy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  sub_100006370(0, &qword_101A031A8);
  swift_dynamicCast();
  *&v10[OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_maskPathSource] = v19;
LABEL_8:
  v20.receiver = v10;
  v20.super_class = v18;
  v16 = objc_msgSendSuper2(&v20, "init");

  (*(v13 + 8))(a1, v12);
  return v16;
}

void sub_1008A23B0(void *a1, uint64_t a2, char a3)
{
  v5 = v4;
  v6 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v10 = [a1 getBoardItemForUUID:isa];

  if (!v10)
  {
    goto LABEL_18;
  }

  type metadata accessor for CRLImageItem();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {

LABEL_18:
    v29 = objc_opt_self();
    v30 = [v29 _atomicIncrementAssertCount];
    v57 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v57);
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    v33 = [v32 lastPathComponent];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v37 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v30;
    v39 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v39;
    v40 = sub_1005CF04C();
    *(inited + 104) = v40;
    *(inited + 72) = v31;
    *(inited + 136) = &type metadata for String;
    v41 = sub_1000053B0();
    *(inited + 112) = v34;
    *(inited + 120) = v36;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v41;
    *(inited + 152) = 46;
    v42 = v57;
    *(inited + 216) = v39;
    *(inited + 224) = v40;
    *(inited + 192) = v42;
    v43 = v31;
    v44 = v42;
    v45 = static os_log_type_t.error.getter();
    sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v46 = static os_log_type_t.error.getter();
    sub_100005404(v37, &_mh_execute_header, v46, "Unable to retrieve image item", 29, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve image item");
    type metadata accessor for __VaListBuilder();
    v47 = swift_allocObject();
    v47[2] = 8;
    v47[3] = 0;
    v47[4] = 0;
    v47[5] = 0;
    v48 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    [v29 handleFailureInFunction:v49 file:v50 lineNumber:46 isFatal:1 format:v51 args:v48];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v52, v53);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = *(v6 + OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_imageGeometry);
  if (v13)
  {
    v55 = a3;
    v14 = v13;
    v15 = v10;
    sub_1012E0400(v12, &off_10188FE10);
    if (v4)
    {
LABEL_14:

LABEL_15:
      return;
    }

    v16 = v14;
    v17 = v15;
    if ((sub_1011255D4(v17) & 1) != 0 && (v54 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData, v18 = *(**(v12 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296), v19 = , v20 = v18(v19), , sub_100006370(0, &unk_1019F5730), v21 = static NSObject.== infix(_:_:)(), v20, (v21 & 1) == 0))
    {
      v22 = *(**(v12 + v54) + 304);

      v22(v16);
    }

    else
    {
    }

    v23 = v17;
    a3 = v55;
    sub_1012CF6CC(v12, &off_10188FE10, v55);
  }

  v24 = *(v6 + OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_maskGeometry);
  if (!v24)
  {
    goto LABEL_15;
  }

  v25 = *(v6 + OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_maskPathSource);
  if (!v25)
  {
    goto LABEL_15;
  }

  v56 = a3;
  v26 = v10;
  v27 = v24;
  v14 = v25;
  sub_1012E0400(v12, &off_10188FE10);
  if (v5)
  {

    goto LABEL_14;
  }

  sub_100BB584C([objc_allocWithZone(CRLMaskInfo) initWithImageItem:v12 geometry:v27 pathSource:v14]);
  v28 = v26;
  sub_1012CF6CC(v12, &off_10188FE10, v56);
}

void sub_1008A2A60()
{
  v1 = OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_maskPathSource);
}

id sub_1008A2AF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetImageItemGeometry();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetImageItemGeometry()
{
  result = qword_101A06090;
  if (!qword_101A06090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008A2C20()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1008A2CBC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_id;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v4[v9], a1, v10);
  if (a2)
  {
    v12 = a2;
    [v12 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100006370(0, &unk_1019F5730);
    swift_dynamicCast();
    *&v4[OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_imageGeometry] = v17;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    *&v4[OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_maskGeometry] = 0;
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_7:
    *&v4[OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_maskPathSource] = 0;
    goto LABEL_8;
  }

  *&v4[OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_imageGeometry] = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = a3;
  [v13 copy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  sub_100006370(0, &unk_1019F5730);
  swift_dynamicCast();
  *&v4[OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_maskGeometry] = v17;
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v14 = a4;
  [v14 copy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  sub_100006370(0, &qword_101A031A8);
  swift_dynamicCast();
  *&v4[OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_maskPathSource] = v17;
LABEL_8:
  v18.receiver = v4;
  v18.super_class = type metadata accessor for CRLCommandSetImageItemGeometry();
  v15 = objc_msgSendSuper2(&v18, "init");
  (*(v11 + 8))(a1, v10);
  return v15;
}

id sub_1008A2F70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPLaidOutColumnProxy();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1008A33D4(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v159 = a1;
  v160 = a2;
  v5 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v5 - 8);
  v158 = &v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for UUID();
  v7 = *(v175 - 8);
  __chkstk_darwin(v175);
  v157 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v156 = &v149 - v10;
  __chkstk_darwin(v11);
  v155 = &v149 - v12;
  __chkstk_darwin(v13);
  v154 = &v149 - v14;
  v165 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_index);
  v177 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_index + 8);
  v161 = v2;
  v15 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_boardItems);
  if (v15 >> 62)
  {
LABEL_20:
    v162 = v15 & 0xFFFFFFFFFFFFFF8;
    v164 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v162 = v15 & 0xFFFFFFFFFFFFFF8;
    v164 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = 0;
  v163 = v15 & 0xC000000000000001;
  v174 = (v7 + 8);
  v152 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v153 = OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_destinationContainer;
  v151 = xmmword_101483930;
  v150 = v15;
  while (1)
  {
    do
    {
      if (v164 == v16)
      {
        return;
      }

      if (v163)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *(v162 + 16))
        {
          goto LABEL_19;
        }

        v17 = *(v15 + 8 * v16 + 32);
      }

      v18 = v17;
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v19 = [v17 parentContainerItem];
      v172 = v4;
      if (!v19)
      {
        goto LABEL_22;
      }

      v20 = v19;
      v149 = v16 + 1;
      v166 = v16;
      if (qword_1019F22B8 != -1)
      {
        swift_once();
      }

      v171 = static OS_os_log.boardItemLifecycle;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = v151;
      v22 = v154;
      (*((swift_isaMask & *v18) + 0x88))();
      v23 = UUID.uuidString.getter();
      v25 = v24;
      v173 = *v174;
      v26 = v22;
      v27 = v175;
      v173(v26, v175);
      *(inited + 56) = &type metadata for String;
      v28 = sub_1000053B0();
      *(inited + 64) = v28;
      v29 = v28;
      v167 = v28;
      *(inited + 32) = v23;
      v170 = inited + 32;
      *(inited + 40) = v25;
      v30 = v18;
      v169 = v30;
      v31 = [v30 description];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v29;
      *(inited + 72) = v32;
      *(inited + 80) = v34;
      v35 = v155;
      (*(**&v20[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();
      v36 = UUID.uuidString.getter();
      v38 = v37;
      v39 = v173;
      v173(v35, v27);
      v40 = v167;
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v40;
      *(inited + 112) = v36;
      *(inited + 120) = v38;
      v41 = v20;
      v168 = v41;
      v42 = [v41 description];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      *(inited + 176) = &type metadata for String;
      *(inited + 184) = v40;
      v46 = v40;
      *(inited + 152) = v43;
      *(inited + 160) = v45;
      v47 = *(v161 + v153);
      v48 = v156;
      (*(**&v47[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();
      v49 = UUID.uuidString.getter();
      v51 = v50;
      v39(v48, v175);
      *(inited + 216) = &type metadata for String;
      *(inited + 224) = v46;
      *(inited + 192) = v49;
      *(inited + 200) = v51;
      v52 = v47;
      v53 = [v52 description];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      *(inited + 256) = &type metadata for String;
      *(inited + 264) = v46;
      *(inited + 232) = v54;
      *(inited + 240) = v56;
      v57 = *(v159 + v152);
      v58 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v59 = v57 + v58;
      v60 = v158;
      sub_1005E2B78(v59, v158);
      sub_1005B981C(&unk_1019F5250);
      v61 = v157;
      CRRegister.wrappedValue.getter();
      sub_1005E2BDC(v60);
      v62 = UUID.uuidString.getter();
      v64 = v63;
      v173(v61, v175);
      *(inited + 296) = &type metadata for String;
      *(inited + 304) = v46;
      *(inited + 272) = v62;
      *(inited + 280) = v64;
      v65 = static os_log_type_t.default.getter();
      sub_100005404(v171, &_mh_execute_header, v65, "↔️ CRLCommandReparentBoardItems commit() move %{public}@%{public}@ from %{public}@%{public}@ to parent %{public}@%{public}@. Board: %{public}@", 146, 0, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v7 = v177;
      v18 = v168;
      v66 = v169;
      v67 = v172;
      sub_10096F978(v169, v168, v165, v177, v160);
      v4 = v67;

      if (v67)
      {
        return;
      }

      v16 = v166 + 1;
      v15 = v150;
    }

    while ((v7 & 1) != 0);
    v68 = __OFADD__(v165++, 1);
    if (v68)
    {
      break;
    }

    v16 = v149;
  }

  __break(1u);
LABEL_22:
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1005B981C(&qword_1019F54E0);
  if (Strong)
  {
    goto LABEL_49;
  }

  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_10146C6B0;
  v71 = [v18 description];
  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;

  *(v70 + 56) = &type metadata for String;
  v75 = sub_1000053B0();
  *(v70 + 32) = v72;
  v175 = v70 + 32;
  *(v70 + 64) = v75;
  *(v70 + 40) = v74;
  v173 = objc_opt_self();
  LODWORD(v174) = [v173 _atomicIncrementAssertCount];
  v176 = [objc_allocWithZone(NSString) init];
  sub_100604538(v70, &v176);
  StaticString.description.getter();
  v76 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v77 = String._bridgeToObjectiveC()();

  v78 = [v77 lastPathComponent];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = v79;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_84;
  }

LABEL_24:
  v80 = static OS_os_log.crlAssert;
  v81 = swift_initStackObject();
  *(v81 + 16) = xmmword_10146CA70;
  *(v81 + 56) = &type metadata for Int32;
  *(v81 + 64) = &protocol witness table for Int32;
  *(v81 + 32) = v174;
  v82 = sub_1005CF000();
  *(v81 + 96) = v82;
  v83 = sub_1005CF04C();
  *(v81 + 72) = v76;
  *(v81 + 136) = &type metadata for String;
  *(v81 + 144) = v75;
  *(v81 + 104) = v83;
  *(v81 + 112) = v18;
  *(v81 + 120) = Strong;
  *(v81 + 176) = &type metadata for UInt;
  *(v81 + 184) = &protocol witness table for UInt;
  *(v81 + 152) = 68;
  v84 = v176;
  *(v81 + 216) = v82;
  *(v81 + 224) = v83;
  *(v81 + 192) = v84;
  v85 = v76;
  v86 = v84;
  v87 = static os_log_type_t.error.getter();
  sub_100005404(v80, &_mh_execute_header, v87, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v81);

  v88 = static os_log_type_t.error.getter();
  sub_100005404(v80, &_mh_execute_header, v88, "Trying to reparent a board item (%{public}@) which has no parent.", 65, 2, v70);

  sub_10063DF98(v70, "Trying to reparent a board item (%{public}@) which has no parent.");
  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v89 = v18 + 3;
  v18[4] = 0;
  v18[5] = 0;
  v76 = *(v70 + 16);
  if (v76)
  {
    v90 = 0;
    while (1)
    {
      v91 = (v175 + 40 * v90);
      v70 = v91[3];
      Strong = v91[4];
      sub_100020E58(v91, v70);
      v92 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v75 = *v89;
      v93 = *(v92 + 16);
      v68 = __OFADD__(*v89, v93);
      v94 = *v89 + v93;
      if (v68)
      {
        goto LABEL_78;
      }

      v95 = v18[4];
      if (v95 >= v94)
      {
        goto LABEL_41;
      }

      if (v95 + 0x4000000000000000 < 0)
      {
        goto LABEL_80;
      }

      v70 = v18[5];
      if (2 * v95 > v94)
      {
        v94 = 2 * v95;
      }

      v18[4] = v94;
      if ((v94 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_82;
      }

      Strong = v92;
      v96 = swift_slowAlloc();
      v97 = v96;
      v18[5] = v96;
      if (!v70)
      {
        break;
      }

      if (v96 != v70 || v96 >= v70 + 8 * v75)
      {
        memmove(v96, v70, 8 * v75);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v92 = Strong;
LABEL_41:
      v97 = v18[5];
      if (!v97)
      {
        goto LABEL_48;
      }

LABEL_42:
      v99 = *(v92 + 16);
      if (v99)
      {
        v100 = (v92 + 32);
        v101 = *v89;
        while (1)
        {
          v102 = *v100++;
          v97[v101] = v102;
          v101 = *v89 + 1;
          if (__OFADD__(*v89, 1))
          {
            break;
          }

          *v89 = v101;
          if (!--v99)
          {
            goto LABEL_26;
          }
        }

LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        swift_once();
        goto LABEL_24;
      }

LABEL_26:

      if (++v90 == v76)
      {
        goto LABEL_85;
      }
    }

    v92 = Strong;
    if (v97)
    {
      goto LABEL_42;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    v103 = swift_initStackObject();
    *(v103 + 16) = xmmword_10146BDE0;
    v104 = [v18 description];
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v106;

    *(v103 + 56) = &type metadata for String;
    v108 = sub_1000053B0();
    *(v103 + 32) = v105;
    v175 = v103 + 32;
    *(v103 + 64) = v108;
    *(v103 + 40) = v107;
    v109 = [Strong description];
    v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v111;

    *(v103 + 96) = &type metadata for String;
    *(v103 + 104) = v108;
    *(v103 + 72) = v110;
    *(v103 + 80) = v112;
    v173 = objc_opt_self();
    LODWORD(v174) = [v173 _atomicIncrementAssertCount];
    v176 = [objc_allocWithZone(NSString) init];
    sub_100604538(v103, &v176);
    StaticString.description.getter();
    v113 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v114 = String._bridgeToObjectiveC()();

    v115 = [v114 lastPathComponent];

    v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v118 = v117;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v119 = static OS_os_log.crlAssert;
    v120 = swift_initStackObject();
    *(v120 + 16) = xmmword_10146CA70;
    *(v120 + 56) = &type metadata for Int32;
    *(v120 + 64) = &protocol witness table for Int32;
    *(v120 + 32) = v174;
    v121 = sub_1005CF000();
    *(v120 + 96) = v121;
    v122 = sub_1005CF04C();
    *(v120 + 72) = v113;
    *(v120 + 136) = &type metadata for String;
    *(v120 + 144) = v108;
    *(v120 + 104) = v122;
    *(v120 + 112) = v116;
    *(v120 + 120) = v118;
    *(v120 + 176) = &type metadata for UInt;
    *(v120 + 184) = &protocol witness table for UInt;
    *(v120 + 152) = 66;
    v123 = v176;
    *(v120 + 216) = v121;
    *(v120 + 224) = v122;
    *(v120 + 192) = v123;
    v124 = v113;
    v125 = v123;
    v126 = static os_log_type_t.error.getter();
    sub_100005404(v119, &_mh_execute_header, v126, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v120);

    v127 = static os_log_type_t.error.getter();
    sub_100005404(v119, &_mh_execute_header, v127, "Trying to reparent a board item (%{public}@) which is not in a container (%{public}@).", 86, 2, v103);

    sub_10063DF98(v103, "Trying to reparent a board item (%{public}@) which is not in a container (%{public}@).");
    type metadata accessor for __VaListBuilder();
    v18 = swift_allocObject();
    v18[2] = 8;
    v18[3] = 0;
    v128 = v18 + 3;
    v18[4] = 0;
    v18[5] = 0;
    v76 = *(v103 + 16);
    if (v76)
    {
      v129 = 0;
      while (1)
      {
        v130 = (v175 + 40 * v129);
        v70 = v130[3];
        Strong = v130[4];
        sub_100020E58(v130, v70);
        v131 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v75 = *v128;
        v132 = *(v131 + 16);
        v68 = __OFADD__(*v128, v132);
        v133 = *v128 + v132;
        if (v68)
        {
          goto LABEL_79;
        }

        v134 = v18[4];
        if (v134 >= v133)
        {
          goto LABEL_68;
        }

        if (v134 + 0x4000000000000000 < 0)
        {
          goto LABEL_81;
        }

        v70 = v18[5];
        if (2 * v134 > v133)
        {
          v133 = 2 * v134;
        }

        v18[4] = v133;
        if ((v133 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_83;
        }

        Strong = v131;
        v135 = swift_slowAlloc();
        v136 = v135;
        v18[5] = v135;
        if (v70)
        {
          break;
        }

        v131 = Strong;
        if (!v136)
        {
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

LABEL_69:
        v138 = *(v131 + 16);
        if (v138)
        {
          v139 = (v131 + 32);
          v140 = *v128;
          do
          {
            v141 = *v139++;
            v136[v140] = v141;
            v140 = *v128 + 1;
            if (__OFADD__(*v128, 1))
            {
              goto LABEL_77;
            }

            *v128 = v140;
          }

          while (--v138);
        }

        if (++v129 == v76)
        {
          goto LABEL_86;
        }
      }

      if (v135 != v70 || v135 >= v70 + 8 * v75)
      {
        memmove(v135, v70, 8 * v75);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v131 = Strong;
LABEL_68:
      v136 = v18[5];
      if (!v136)
      {
        goto LABEL_75;
      }

      goto LABEL_69;
    }

LABEL_86:
    v146 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v143 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v144 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v145 = String._bridgeToObjectiveC()();

    [v173 handleFailureInFunction:v143 file:v144 lineNumber:66 isFatal:1 format:v145 args:{v146, v149}];
  }

  else
  {
LABEL_85:
    v142 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v143 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v144 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v145 = String._bridgeToObjectiveC()();

    [v173 handleFailureInFunction:v143 file:v144 lineNumber:68 isFatal:1 format:v145 args:{v142, v149}];
  }

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v147, v148);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1008A4500()
{
}

id sub_1008A4540()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandReparentBoardItems();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1008A45E4()
{
  v1 = v0;
  v2 = [v0 layout];
  v3 = [v2 connectedLayouts];

  if (!v3 || ((sub_100006370(0, &qword_101A06118), sub_10000FDE0(&qword_101A06120, &qword_101A06118), v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v3, (v4 & 0xC000000000000001) == 0) ? (v5 = *(v4 + 16)) : (v5 = __CocoaSet.count.getter()), , v5 < 1))
  {
LABEL_41:
    v57 = [v1 interactiveCanvasController];
    v58 = [v57 highestZOrderConnectionLineLayoutAcrossBoard];
    goto LABEL_42;
  }

  v6 = &selRef_ignoreUrl_;
  [v1 info];
  v7 = type metadata accessor for CRLBoardItem(0);
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v9 = [v8 parentContainerItem];
  if (!v9)
  {
    v60 = objc_opt_self();
    v61 = [v60 _atomicIncrementAssertCount];
    v92[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v92);
    StaticString.description.getter();
    v62 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v63 = String._bridgeToObjectiveC()();

    v64 = [v63 lastPathComponent];

    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v68 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v61;
    v70 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v70;
    v71 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v71;
    *(inited + 72) = v62;
    *(inited + 136) = &type metadata for String;
    v72 = sub_1000053B0();
    *(inited + 112) = v65;
    *(inited + 120) = v67;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v72;
    *(inited + 152) = 20;
    v73 = v92[0];
    *(inited + 216) = v70;
    *(inited + 224) = v71;
    *(inited + 192) = v73;
    v74 = v62;
    v75 = v73;
    v76 = static os_log_type_t.error.getter();
    sub_100005404(v68, &_mh_execute_header, v76, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v77 = static os_log_type_t.error.getter();
    sub_100005404(v68, &_mh_execute_header, v77, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v78 = swift_allocObject();
    v78[2] = 8;
    v78[3] = 0;
    v78[4] = 0;
    v78[5] = 0;
    v79 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v80 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v81 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v82 = String._bridgeToObjectiveC()();

    [v60 handleFailureInFunction:v80 file:v81 lineNumber:20 isFatal:0 format:v82 args:v79];
    swift_unknownObjectRelease();

    return 0;
  }

  v10 = v9;
  v11 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v12 = *&v9[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
  if (!v12)
  {
    sub_10096C7D4();
    v12 = *&v10[v11];
  }

  v84 = v10;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (v13 >> 62)
  {
LABEL_59:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    v86 = v1;
    if (v14)
    {
      goto LABEL_15;
    }

    goto LABEL_60;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v86 = v1;
  if (!v14)
  {
LABEL_60:

LABEL_38:

    v34 = objc_opt_self();
    v35 = [v34 _atomicIncrementAssertCount];
    v92[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v92);
    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    v38 = [v37 lastPathComponent];

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v42 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v43 = swift_initStackObject();
    *(v43 + 16) = xmmword_10146CA70;
    *(v43 + 56) = &type metadata for Int32;
    *(v43 + 64) = &protocol witness table for Int32;
    *(v43 + 32) = v35;
    v44 = sub_100006370(0, &qword_1019F4D30);
    *(v43 + 96) = v44;
    v45 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v43 + 104) = v45;
    *(v43 + 72) = v36;
    *(v43 + 136) = &type metadata for String;
    v46 = sub_1000053B0();
    *(v43 + 112) = v39;
    *(v43 + 120) = v41;
    *(v43 + 176) = &type metadata for UInt;
    *(v43 + 184) = &protocol witness table for UInt;
    *(v43 + 144) = v46;
    *(v43 + 152) = 37;
    v47 = v92[0];
    *(v43 + 216) = v44;
    *(v43 + 224) = v45;
    *(v43 + 192) = v47;
    v48 = v36;
    v49 = v47;
    v50 = static os_log_type_t.error.getter();
    sub_100005404(v42, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v43);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v51 = static os_log_type_t.error.getter();
    sub_100005404(v42, &_mh_execute_header, v51, "Unexpected to hit here as the topmost z-order connection line should be early returned", 86, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v52 = swift_allocObject();
    v52[2] = 8;
    v52[3] = 0;
    v52[4] = 0;
    v52[5] = 0;
    v53 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v54 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v55 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v56 = String._bridgeToObjectiveC()();

    [v34 handleFailureInFunction:v54 file:v55 lineNumber:37 isFatal:0 format:v56 args:v53];

    swift_unknownObjectRelease();

    v1 = v86;
    goto LABEL_41;
  }

LABEL_15:
  v15 = v13 & 0xC000000000000001;
  v90 = (v13 + 32);
  v91 = v13 & 0xFFFFFFFFFFFFFF8;

  v88 = v13;
  v89 = v7;
  v87 = v13 & 0xC000000000000001;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (__OFSUB__(v14--, 1))
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v15)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_57;
          }

          if (v14 >= *(v91 + 16))
          {
            goto LABEL_58;
          }

          v17 = v90[v14];
        }

        v18 = v17;
        type metadata accessor for CRLConnectionLineItem();
        v19 = swift_dynamicCastClass();
        if (v19)
        {
          break;
        }

        if (!v14)
        {
          goto LABEL_38;
        }
      }

      v20 = v19;
      v21 = [v1 v6[130]];
      if (swift_dynamicCastClass())
      {
        v22 = [v1 interactiveCanvasController];
        if (v22)
        {
          break;
        }
      }

      swift_unknownObjectRelease();
      if (!v14)
      {
        goto LABEL_38;
      }
    }

    v23 = v22;
    v24 = [v22 board];

    if (v24)
    {
      break;
    }

    swift_unknownObjectRelease();
LABEL_37:
    v15 = v87;
    v13 = v88;
    if (!v14)
    {
      goto LABEL_38;
    }
  }

  v25 = v24;
  sub_1008A824C(v25, v20);
  v27 = v26;
  sub_1008A85E0(v25, v20);
  v29 = v28;
  if (v27)
  {
    v30 = v27;
    swift_unknownObjectRetain();
    v31 = static NSObject.== infix(_:_:)();
    swift_unknownObjectRelease();

    if (v31)
    {

      goto LABEL_50;
    }
  }

  if (!v29)
  {

    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  swift_unknownObjectRetain();
  v32 = v29;
  v33 = static NSObject.== infix(_:_:)();

  swift_unknownObjectRelease();
  if ((v33 & 1) == 0)
  {

    swift_unknownObjectRelease();
LABEL_36:
    v1 = v86;
    v6 = &selRef_ignoreUrl_;
    v7 = v89;
    goto LABEL_37;
  }

LABEL_50:
  v58 = [v86 interactiveCanvasController];
  if (!v58)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v58;
  }

  v83 = v18;
  v57 = [v58 layoutForInfo:v20];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v57)
  {
    return 0;
  }

  objc_opt_self();
  v58 = swift_dynamicCastObjCClass();
  if (v58)
  {
    return v58;
  }

LABEL_42:

  return v58;
}

void sub_1008A5258(CGFloat a1, CGFloat a2)
{
  v3 = v2;
  [v2 info];
  type metadata accessor for CRLBoardItem(0);
  v6 = swift_dynamicCastClass();
  if (!v6 || (v7 = v6, (sub_1009AFD54(v6) & 1) == 0) || (sub_1009AFD54(v7) & 1) == 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
LABEL_18:

    swift_unknownObjectRelease();
    return;
  }

  v25 = Strong;
  type metadata accessor for CRLTableItem();
  v9 = v25;
  while (1)
  {
    v26 = v9;
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      break;
    }

    v11 = swift_unknownObjectWeakLoadStrong();

    v9 = v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  v12 = v10;
  v13 = [v3 interactiveCanvasController];
  if (!v13 || (v14 = v13, v15 = [v13 layoutForInfo:v12], v14, !v15))
  {

    goto LABEL_18;
  }

  v16 = [v15 pureGeometryInRoot];

  if (v16)
  {
    [v16 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v29.origin.x = v18;
    v29.origin.y = v20;
    v29.size.width = v22;
    v29.size.height = v24;
    v28.x = a1;
    v28.y = a2;
    if (!CGRectContainsPoint(v29, v28))
    {
      sub_1008A5484(v7, v12);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1008A5484(void *a1, void *a2)
{
  v3 = v2;
  v77[0] = a2;
  v5 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v5 - 8);
  v85 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v86 = v77 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*((swift_isaMask & *a1) + 0xE0))(v11);
  v15 = [v2 layout];
  [v15 transformInRoot];
  v16 = v93;
  v17 = v94;
  v82 = v92;
  v83 = v91;

  v18 = [v14 widthValid];
  v87 = v14;
  v19 = [v14 heightValid];
  v20 = objc_opt_self();
  v91 = v83;
  v92 = v82;
  v93 = v16;
  v94 = v17;
  v21 = [v20 geometryFromFullTransform:&v91 widthValid:v18 heightValid:v19];
  v22 = objc_allocWithZone(type metadata accessor for CRLCommandSetInfoGeometry());
  v23 = *((swift_isaMask & *a1) + 0x88);
  v77[1] = ((swift_isaMask & *a1) + 136);
  v78 = v23;
  v23();
  v24 = v21;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *&v82 = v10;
  v26 = *(v10 + 8);
  v80 = v13;
  *&v83 = v9;
  v26(v13, v9);
  v27 = [v22 initWithId:isa geometry:v24];

  v81 = v24;
  v28 = [v3 commandController];
  if (v28)
  {
    v29 = v28;
    sub_100888700(v27, 0, 0, 4, 0);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v88 = v3;
  v84 = a1;
  v79 = v27;
  if (!Strong)
  {
    goto LABEL_8;
  }

  v31 = Strong;
  type metadata accessor for CRLRootContainerItem(0);
  v32 = swift_dynamicCastClass();
  if (!v32)
  {

LABEL_8:
    v77[0] = objc_opt_self();
    v44 = [v77[0] _atomicIncrementAssertCount];
    *&v91 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v91);
    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    v47 = [v46 lastPathComponent];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v51 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v44;
    v53 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v53;
    v54 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v54;
    *(inited + 72) = v45;
    *(inited + 136) = &type metadata for String;
    v55 = sub_1000053B0();
    *(inited + 112) = v48;
    *(inited + 120) = v50;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v55;
    *(inited + 152) = 79;
    v56 = v91;
    *(inited + 216) = v53;
    *(inited + 224) = v54;
    *(inited + 192) = v56;
    v57 = v45;
    v58 = v56;
    v59 = static os_log_type_t.error.getter();
    sub_100005404(v51, &_mh_execute_header, v59, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v60 = static os_log_type_t.error.getter();
    sub_100005404(v51, &_mh_execute_header, v60, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v61 = swift_allocObject();
    v61[2] = 8;
    v61[3] = 0;
    v61[4] = 0;
    v61[5] = 0;
    v62 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    [v77[0] handleFailureInFunction:v43 file:v41 lineNumber:79 isFatal:0 format:v40 args:v62];

    goto LABEL_11;
  }

  v33 = v32;
  v34 = type metadata accessor for CRLCommandReparentBoardItems();
  v35 = objc_allocWithZone(v34);
  sub_1005B981C(&unk_1019F4D60);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_101465920;
  *(v36 + 32) = a1;
  v37 = objc_allocWithZone(v34);
  *&v37[OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_boardItems] = v36;
  *&v37[OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_destinationContainer] = v33;
  v38 = &v37[OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_index];
  *v38 = 0;
  v38[8] = 1;
  v89.receiver = v37;
  v89.super_class = v34;
  v39 = a1;
  v40 = v31;
  v41 = objc_msgSendSuper2(&v89, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v42 = [v3 commandController];
  if (!v42)
  {
    goto LABEL_12;
  }

  v43 = v42;
  sub_100888700(v41, 0, 0, 4, 0);
LABEL_11:

LABEL_12:
  v63 = type metadata accessor for CRLTableAnchorHint();
  v64 = v86;
  (*(*(v63 - 8) + 56))(v86, 1, 1, v63);
  v65 = objc_allocWithZone(sub_1005B981C(&unk_101A2D9D0));
  v66 = v85;
  v67 = sub_10000BE14(v64, v85, &unk_101A09DD0);
  __chkstk_darwin(v67);
  v77[-2] = type metadata accessor for CRLBoardItem(0);
  KeyPath = swift_getKeyPath();
  v69 = &v65[*((swift_isaMask & *v65) + 0xF0)];
  *v69 = 0;
  *(v69 + 1) = 0xE000000000000000;
  v70 = v80;
  v78();
  (*(v82 + 32))(&v65[*((swift_isaMask & *v65) + 0xD8)], v70, v83);
  sub_10000BE14(v66, &v65[*((swift_isaMask & *v65) + 0xE0)], &unk_101A09DD0);
  *&v65[*((swift_isaMask & *v65) + 0xE8)] = KeyPath;
  v71 = sub_1005B981C(&unk_101A2C790);
  v90.receiver = v65;
  v90.super_class = v71;
  v72 = objc_msgSendSuper2(&v90, "init");
  sub_10000CAAC(v66, &unk_101A09DD0);
  v73 = v72;
  sub_10000CAAC(v64, &unk_101A09DD0);
  v74 = (v73 + *((swift_isaMask & *v73) + 0xF0));
  *v74 = 0;
  v74[1] = 0xE000000000000000;

  v75 = [v88 commandController];
  if (v75)
  {
    v76 = v75;
    sub_100888700(v73, 0, 0, 4, 0);
  }
}

uint64_t sub_1008A5F54(int a1, double a2, double a3)
{
  v4 = v3;
  LODWORD(v113) = a1;
  v99 = _s13StyleCRDTDataVMa();
  __chkstk_darwin(v99);
  v100 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1005B981C(&unk_101A2C890);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v90 - v8;
  v94 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v94);
  v95 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for CRLTableAnchorHint();
  v116 = *(v114 - 8);
  __chkstk_darwin(v114);
  v101 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRKeyPath();
  v105 = *(v11 - 8);
  v106 = v11;
  __chkstk_darwin(v11);
  v104 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v103 = &v90 - v14;
  v110 = sub_1005B981C(&qword_101A06110);
  __chkstk_darwin(v110);
  v111 = &v90 - v15;
  v16 = _s6CellIDVMa(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v108 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v90 - v20;
  v22 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v22 - 8);
  v102 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v90 - v25;
  v27 = sub_1005B981C(&qword_101A10760);
  __chkstk_darwin(v27 - 8);
  v109 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v90 - v30;
  __chkstk_darwin(v32);
  v34 = &v90 - v33;
  __chkstk_darwin(v35);
  v115 = &v90 - v36;
  *&v38 = __chkstk_darwin(v37).n128_u64[0];
  v40 = &v90 - v39;
  v41 = [v3 info];
  v107 = type metadata accessor for CRLBoardItem(0);
  v42 = swift_dynamicCastClass();
  if (v42)
  {
    v43 = v42;
    v112 = v41;
    if (sub_1009AFD54(v42))
    {
      v92 = v21;
      v93 = v4;
      (*((swift_isaMask & *v43) + 0x128))();
      v44 = *(v116 + 48);
      v45 = 1;
      v46 = v114;
      v116 += 48;
      v91 = v44;
      if (!v44(v26, 1, v114))
      {
        sub_1008A8E9C(v26, v40, _s6CellIDVMa);
        v45 = 0;
      }

      sub_10000CAAC(v26, &unk_101A09DD0);
      v47 = *(v17 + 56);
      v47(v40, v45, 1, v16);
      v48 = v115;
      sub_1008A6DD8(v113 & 1, v115, a2, a3);
      sub_10000BE14(v48, v34, &qword_101A10760);
      v49 = *(v17 + 48);
      if (v49(v34, 1, v16) == 1)
      {
        sub_10000CAAC(v34, &qword_101A10760);
LABEL_25:
        v71 = v115;
        sub_1008A76BC(v115);
        swift_unknownObjectRelease();
        sub_10000CAAC(v71, &qword_101A10760);
        return sub_10000CAAC(v40, &qword_101A10760);
      }

      v51 = v34;
      v52 = v92;
      sub_1008A819C(v51, v92, _s6CellIDVMa);
      sub_1008A8E9C(v52, v31, _s6CellIDVMa);
      v47(v31, 0, 1, v16);
      v53 = v111;
      v54 = *(v110 + 48);
      sub_10000BE14(v31, v111, &qword_101A10760);
      sub_10000BE14(v40, v53 + v54, &qword_101A10760);
      if (v49(v53, 1, v16) == 1)
      {
        sub_10000CAAC(v31, &qword_101A10760);
        v55 = v49((v53 + v54), 1, v16);
        v56 = v93;
        v57 = v92;
        if (v55 == 1)
        {
          sub_10000CAAC(v53, &qword_101A10760);
LABEL_18:
          v66 = v56;
          v67 = [v56 info];
          v68 = swift_dynamicCastClass();
          if (v68 && (v69 = v68, (sub_1009AFD54(v68) & 1) != 0))
          {
            v70 = v102;
            (*((swift_isaMask & *v69) + 0x128))();
            if (v91(v70, 1, v46) == 1)
            {
              swift_unknownObjectRelease();
              sub_10000CAAC(v70, &unk_101A09DD0);
            }

            else
            {
              v72 = v101;
              sub_1008A819C(v70, v101, type metadata accessor for CRLTableAnchorHint);
              if (sub_1009AFD54(v69))
              {
                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v74 = Strong;
                  type metadata accessor for CRLTableItem();
                  while (1)
                  {
                    v75 = swift_dynamicCastClass();
                    if (v75)
                    {
                      break;
                    }

                    v76 = swift_unknownObjectWeakLoadStrong();

                    v74 = v76;
                    if (!v76)
                    {
                      goto LABEL_31;
                    }
                  }

                  v77 = v75;
                  type metadata accessor for CRLTableItemData();
                  v78 = swift_dynamicCastClassUnconditional();
                  v79 = qword_101AD9268;
                  swift_beginAccess();
                  v80 = v97;
                  v81 = v78 + v79;
                  v82 = v96;
                  v83 = v98;
                  (*(v97 + 16))(v96, v81, v98);
                  v84 = v95;
                  Capsule.root.getter();
                  (*(v80 + 8))(v82, v83);
                  v85 = v100;
                  sub_1008A8E9C(v84 + *(v94 + 32), v100, _s13StyleCRDTDataVMa);
                  sub_1008A8F04(v84, _s15CapsuleDatabaseVMa);
                  sub_1005B981C(&qword_101A2C810);
                  CRRegister.wrappedValue.getter();
                  sub_1008A8F04(v85, _s13StyleCRDTDataVMa);
                  if (v117)
                  {
                    v86 = [v66 interactiveCanvasController];
                    if (v86)
                    {
                      v87 = v86;
                      v88 = [v86 layoutForInfo:v77];

                      if (v88)
                      {
                        type metadata accessor for CRLTableLayout();
                        if (swift_dynamicCastClass())
                        {
                          v89 = v88;
                          sub_10120E8DC(v72, v66);

                          swift_unknownObjectRelease();
                          sub_1008A8F04(v72, type metadata accessor for CRLTableAnchorHint);
                          goto LABEL_23;
                        }
                      }
                    }
                  }

                  sub_1008A8F04(v72, type metadata accessor for CRLTableAnchorHint);
                  swift_unknownObjectRelease();

                  goto LABEL_23;
                }
              }

LABEL_31:
              swift_unknownObjectRelease();
              sub_1008A8F04(v72, type metadata accessor for CRLTableAnchorHint);
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }

LABEL_23:
          v59 = v92;
          goto LABEL_24;
        }
      }

      else
      {
        v58 = v109;
        sub_10000BE14(v53, v109, &qword_101A10760);
        if (v49((v53 + v54), 1, v16) != 1)
        {
          sub_1008A819C(v53 + v54, v108, _s6CellIDVMa);
          sub_1008A8204(&unk_101A0B020, _s6CellIDVMa);
          v113 = v40;
          v60 = v103;
          dispatch thunk of RawRepresentable.rawValue.getter();
          v61 = v104;
          dispatch thunk of RawRepresentable.rawValue.getter();
          sub_1008A8204(&unk_101A2C5A0, &type metadata accessor for CRKeyPath);
          v62 = v106;
          v63 = dispatch thunk of static Equatable.== infix(_:_:)();
          v64 = *(v105 + 8);
          v64(v61, v62);
          v65 = v60;
          v40 = v113;
          v64(v65, v62);
          sub_1008A8F04(v108, _s6CellIDVMa);
          sub_10000CAAC(v31, &qword_101A10760);
          sub_1008A8F04(v109, _s6CellIDVMa);
          sub_10000CAAC(v53, &qword_101A10760);
          v56 = v93;
          v57 = v92;
          if (v63)
          {
            goto LABEL_18;
          }

LABEL_16:
          v59 = v57;
LABEL_24:
          sub_1008A8F04(v59, _s6CellIDVMa);
          goto LABEL_25;
        }

        sub_10000CAAC(v31, &qword_101A10760);
        sub_1008A8F04(v58, _s6CellIDVMa);
        v57 = v92;
      }

      sub_10000CAAC(v53, &qword_101A06110);
      goto LABEL_16;
    }
  }

  return swift_unknownObjectRelease();
}

id sub_1008A6DD8@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v5 = v4;
  v10 = sub_1005B981C(&qword_101A10760);
  __chkstk_darwin(v10 - 8);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v80 - v14;
  v16 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v16 - 8);
  v18 = &v80 - v17;
  v19 = type metadata accessor for CRLTableAnchorHint();
  v20 = *(v19 - 8);
  *&v21 = __chkstk_darwin(v19).n128_u64[0];
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [v5 interactiveCanvasController];
  if (!v24)
  {
    goto LABEL_7;
  }

  v25 = v24;
  v91 = a1;
  v92 = v15;
  v26 = [v5 info];
  type metadata accessor for CRLBoardItem(0);
  v27 = swift_dynamicCastClass();
  if (!v27 || (v28 = v27, (sub_1009AFD54(v27) & 1) == 0))
  {

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  (*((swift_isaMask & *v28) + 0x128))();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    swift_unknownObjectRelease();

    sub_10000CAAC(v18, &unk_101A09DD0);
LABEL_7:
    v29 = _s6CellIDVMa(0);
    return (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
  }

  v90 = a2;
  sub_1008A819C(v18, v23, type metadata accessor for CRLTableAnchorHint);
  if ((sub_1009AFD54(v28) & 1) == 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
LABEL_13:
    swift_unknownObjectRelease();

    sub_1008A8F04(v23, type metadata accessor for CRLTableAnchorHint);
    a2 = v90;
    goto LABEL_7;
  }

  v32 = Strong;
  type metadata accessor for CRLTableItem();
  while (1)
  {
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      break;
    }

    v34 = swift_unknownObjectWeakLoadStrong();

    v32 = v34;
    if (!v34)
    {
      goto LABEL_13;
    }
  }

  v35 = v33;
  v36 = [v25 layoutForInfo:v33];
  a2 = v90;
  if (!v36)
  {
    sub_1008A8F04(v23, type metadata accessor for CRLTableAnchorHint);

    goto LABEL_20;
  }

  v37 = v36;
  type metadata accessor for CRLTableLayout();
  v38 = swift_dynamicCastClass();
  if (!v38)
  {

    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v89 = v37;
  v87 = v38;
  result = [v38 boardItem];
  if (result)
  {
    v88 = result;
    swift_dynamicCastClassUnconditional();
    v86 = sub_1011DB2A8(v23);
    v40 = v39;

    if (v40)
    {
      sub_1008A8F04(v23, type metadata accessor for CRLTableAnchorHint);
      swift_unknownObjectRelease();

      goto LABEL_7;
    }

    v85 = _s6CellIDVMa(0);
    v88 = *(v85 + 20);
    result = [v87 boardItem];
    if (result)
    {
      v41 = result;
      swift_dynamicCastClassUnconditional();
      v88 = sub_1011DB340(&v23[v88]);
      v43 = v42;

      if (v43)
      {
        sub_1008A8F04(v23, type metadata accessor for CRLTableAnchorHint);
        swift_unknownObjectRelease();

        a2 = v90;
        goto LABEL_7;
      }

      v44 = [v25 repForInfo:v35];
      a2 = v90;
      if (v44)
      {
        v45 = v44;
        type metadata accessor for CRLTableRep();
        v84 = v45;
        v46 = swift_dynamicCastClass();
        if (v46)
        {
          v47 = v46;
          v48 = *(v85 - 8);
          v49 = *(v48 + 56);
          v82 = v48 + 56;
          v83 = v49;
          (v49)(v92, 1, 1);
          [v47 convertNaturalPointFromUnscaledCanvas:{a3, a4}];
          v51 = v50;
          v53 = v52;
          [v87 boundsForStandardKnobs];
          v80 = v55;
          v81 = v54;
          v57 = v56;
          v59 = v58;
          v60 = [v5 layout];
          [v60 frame];
          v62 = v61;
          v64 = v63;
          v66 = v65;
          v68 = v67;

          sub_10120C854(v86, v88);
          if (sub_10011FF38(v62, v64, v66, v68, v69, v70, v71, v72))
          {
            v73 = v92;
            sub_10000CAAC(v92, &qword_101A10760);
            swift_unknownObjectRelease();

            sub_1008A8E9C(v23, v73, _s6CellIDVMa);
            sub_1008A8F04(v23, type metadata accessor for CRLTableAnchorHint);
            v83(v73, 0, 1, v85);
          }

          else
          {
            if ((v91 & 1) == 0 || (v74 = sub_10120C344(v51, v53), (v76)) && (v77 = sub_100120414(v62, v64, v66, v68), v74 = sub_10120C344(v77, v78), (v79))
            {
              if (!sub_10011FF38(v62, v64, v66, v68, v81, v80, v57, v59))
              {
                sub_1008A8F04(v23, type metadata accessor for CRLTableAnchorHint);
                swift_unknownObjectRelease();

                v73 = v92;
                return sub_1008A8E2C(v73, a2);
              }

              sub_10120F8D8(v12, v62, v64, v66, v68);
            }

            else
            {
              sub_1011DB87C(v74, v75, v12);
            }

            swift_unknownObjectRelease();
            v73 = v92;
            sub_10000CAAC(v92, &qword_101A10760);
            sub_1008A8F04(v23, type metadata accessor for CRLTableAnchorHint);
            sub_1008A8E2C(v12, v73);
          }

          return sub_1008A8E2C(v73, a2);
        }

        swift_unknownObjectRelease();
LABEL_22:
        sub_1008A8F04(v23, type metadata accessor for CRLTableAnchorHint);
        goto LABEL_7;
      }

      sub_1008A8F04(v23, type metadata accessor for CRLTableAnchorHint);

LABEL_20:
      swift_unknownObjectRelease();

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1008A76BC(void *a1)
{
  v2 = v1;
  v92 = a1;
  v3 = type metadata accessor for UUID();
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3);
  v88 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v5 - 8);
  v91 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v76 - v8;
  v10 = type metadata accessor for CRLTableAnchorHint();
  v86 = *(v10 - 8);
  v87 = v10;
  __chkstk_darwin(v10);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&qword_101A10760);
  __chkstk_darwin(v13 - 8);
  v15 = &v76 - v14;
  v16 = _s6CellIDVMa(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v76 - v22;
  v24 = [v2 info];
  v85 = type metadata accessor for CRLBoardItem(0);
  v25 = swift_dynamicCastClass();
  if (!v25 || (v26 = v25, v84 = v9, (sub_1009AFD54(v25) & 1) == 0) || (sub_1009AFD54(v26) & 1) == 0 || (v81 = v12, v82 = v23, v83 = v24, (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
LABEL_8:

    swift_unknownObjectRelease();
    return;
  }

  v28 = Strong;
  type metadata accessor for CRLTableItem();
  while (1)
  {
    v29 = swift_dynamicCastClass();
    if (v29)
    {
      break;
    }

    v30 = swift_unknownObjectWeakLoadStrong();

    v28 = v30;
    if (!v30)
    {
      goto LABEL_8;
    }
  }

  v31 = v29;
  sub_10000BE14(v92, v15, &qword_101A10760);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000CAAC(v15, &qword_101A10760);
    sub_1008A5484(v26, v31);
    swift_unknownObjectRelease();

    return;
  }

  v32 = v82;
  sub_1008A819C(v15, v82, _s6CellIDVMa);
  v33 = [v2 interactiveCanvasController];
  if (!v33)
  {
    v48 = v32;
LABEL_23:
    sub_1008A8F04(v48, _s6CellIDVMa);

    swift_unknownObjectRelease();
    return;
  }

  v34 = v33;
  v35 = [v33 layoutForInfo:v31];

  if (!v35)
  {
    v48 = v82;
    goto LABEL_23;
  }

  type metadata accessor for CRLTableLayout();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {

    swift_unknownObjectRelease();
    sub_1008A8F04(v82, _s6CellIDVMa);
    return;
  }

  v92 = v35;
  v80 = v36;
  v37 = [v36 boardItem];
  if (!v37)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v38 = v37;
  swift_dynamicCastClassUnconditional();
  v39 = v82;
  v79 = sub_1011DB2A8(v82);
  v41 = v40;

  if (v41)
  {
LABEL_20:
    sub_1008A8F04(v39, _s6CellIDVMa);
    swift_unknownObjectRelease();

    return;
  }

  v42 = *(v16 + 20);
  v43 = [v80 boardItem];
  if (!v43)
  {
    goto LABEL_30;
  }

  v44 = v43;
  swift_dynamicCastClassUnconditional();
  v39 = v82;
  v45 = sub_1011DB340(&v82[v42]);
  v47 = v46;

  if (v47)
  {
    goto LABEL_20;
  }

  v49 = [v2 interactiveCanvasController];
  if (v49 && (v50 = v49, v51 = [v49 commandController], v50, v51))
  {
    sub_10120E014(v79, v45);
    v53 = v52;
    v55 = v54;
    v56 = [v2 layout];
    v57 = [v56 geometry];

    v58 = [v57 geometryByTranslatingBy:{sub_10011F340(v53, v55, -1.0)}];
    v80 = v58;

    v59 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithLayoutGeometry:v58];
    v78 = v59;
    sub_1008A8E9C(v39, v19, _s6CellIDVMa);
    v77 = v51;
    v60 = v87;
    v61 = v81;
    *&v81[*(v87 + 24)] = _swiftEmptyDictionarySingleton;
    sub_1008A8E9C(v19, v61, _s6CellIDVMa);
    sub_101271CCC(v59, v94);
    v79 = _s6CellIDVMa;
    sub_1008A8F04(v19, _s6CellIDVMa);
    v62 = (v61 + *(v60 + 20));
    v63 = v94[1];
    *v62 = v94[0];
    v62[1] = v63;
    v64 = v84;
    sub_1008A8E9C(v61, v84, type metadata accessor for CRLTableAnchorHint);
    (*(v86 + 56))(v64, 0, 1, v60);
    v65 = objc_allocWithZone(sub_1005B981C(&unk_101A2D9D0));
    v66 = v91;
    v67 = sub_10000BE14(v64, v91, &unk_101A09DD0);
    __chkstk_darwin(v67);
    *(&v76 - 2) = v85;
    KeyPath = swift_getKeyPath();
    v69 = &v65[*((swift_isaMask & *v65) + 0xF0)];
    *v69 = 0;
    *(v69 + 1) = 0xE000000000000000;
    v70 = v88;
    (*((swift_isaMask & *v26) + 0x88))();
    (*(v89 + 32))(&v65[*((swift_isaMask & *v65) + 0xD8)], v70, v90);
    sub_10000BE14(v66, &v65[*((swift_isaMask & *v65) + 0xE0)], &unk_101A09DD0);
    *&v65[*((swift_isaMask & *v65) + 0xE8)] = KeyPath;
    v71 = sub_1005B981C(&unk_101A2C790);
    v93.receiver = v65;
    v93.super_class = v71;
    v72 = objc_msgSendSuper2(&v93, "init");
    sub_10000CAAC(v66, &unk_101A09DD0);
    v73 = v72;
    sub_10000CAAC(v64, &unk_101A09DD0);
    v74 = (v73 + *((swift_isaMask & *v73) + 0xF0));
    *v74 = 0;
    v74[1] = 0xE000000000000000;

    v75 = v77;
    sub_100888700(v73, 0, 0, 4, 0);

    swift_unknownObjectRelease();
    sub_1008A8F04(v61, type metadata accessor for CRLTableAnchorHint);
    sub_1008A8F04(v82, v79);
  }

  else
  {
    sub_1008A8F04(v39, _s6CellIDVMa);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1008A819C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008A8204(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1008A824C(void *a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for CRLConnectionLineCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v14 == &off_101A0C0B8)
  {
    v15 = qword_101A0C430;
    swift_beginAccess();
    sub_1008A8E9C(v14 + v15, v9, type metadata accessor for CRLConnectionLineCRDTData);
    sub_1005B981C(&qword_101A06128);
    CRRegister.wrappedValue.getter();
    sub_1008A8F04(v9, type metadata accessor for CRLConnectionLineCRDTData);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {
      sub_10000CAAC(v6, &qword_1019F6990);
    }

    else
    {
      (*(v11 + 32))(v13, v6, v10);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v17 = [a1 getBoardItemForUUID:isa];

      if (v17)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        v19 = swift_unknownObjectWeakLoadStrong();
        v20 = v19;
        if (Strong)
        {
          if (v19)
          {
            type metadata accessor for CRLBoardItem(0);
            v21 = static NSObject.== infix(_:_:)();
            (*(v11 + 8))(v13, v10);

            if ((v21 & 1) == 0)
            {
            }
          }

          else
          {

            (*(v11 + 8))(v13, v10);
          }
        }

        else
        {
          (*(v11 + 8))(v13, v10);
          if (v20)
          {
          }
        }
      }

      else
      {
        (*(v11 + 8))(v13, v10);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1008A85E0(void *a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A0AFE0);
  __chkstk_darwin(v4);
  v6 = &v56 - v5;
  v7 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v7 - 8);
  v62 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = &v56 - v10;
  __chkstk_darwin(v11);
  v68 = &v56 - v12;
  __chkstk_darwin(v13);
  v15 = &v56 - v14;
  v16 = type metadata accessor for CRLConnectionLineCRDTData(0);
  __chkstk_darwin(v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v56 - v20;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  __chkstk_darwin(v24);
  v28 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v69 = a2;
  v29 = *(a2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v29 != &off_101A0C0B8)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v64 = v18;
  v65 = v4;
  v59 = v27;
  v66 = v6;
  v70 = &v56 - v26;
  v61 = a1;
  v30 = v25;
  v31 = qword_101A0C430;
  swift_beginAccess();
  sub_1008A8E9C(v29 + v31, v21, type metadata accessor for CRLConnectionLineCRDTData);
  sub_1005B981C(&qword_101A06128);
  CRRegister.wrappedValue.getter();
  sub_1008A8F04(v21, type metadata accessor for CRLConnectionLineCRDTData);
  v63 = *(v23 + 48);
  if (v63(v15, 1, v30) == 1)
  {
    sub_10000CAAC(v15, &qword_1019F6990);
    return;
  }

  v32 = v23;
  v33 = v23 + 32;
  v34 = *(v23 + 32);
  v35 = v70;
  v57 = v34;
  v58 = v33;
  v34(v70, v15, v30);
  v36 = v68;
  (*(v32 + 16))(v68, v35, v30);
  v60 = v32;
  (*(v32 + 56))(v36, 0, 1, v30);
  v37 = *(v69 + v28);
  if (*v37 != &off_101A0C0B8)
  {
    goto LABEL_25;
  }

  swift_beginAccess();
  v38 = v64;
  sub_1008A8E9C(v37 + v31, v64, type metadata accessor for CRLConnectionLineCRDTData);
  v39 = v67;
  CRRegister.wrappedValue.getter();
  sub_1008A8F04(v38, type metadata accessor for CRLConnectionLineCRDTData);
  v40 = v66;
  v41 = *(v65 + 48);
  sub_10000BE14(v36, v66, &qword_1019F6990);
  sub_10000BE14(v39, v40 + v41, &qword_1019F6990);
  v42 = v63;
  if (v63(v40, 1, v30) == 1)
  {
    sub_10000CAAC(v39, &qword_1019F6990);
    sub_10000CAAC(v36, &qword_1019F6990);
    v43 = v42(v40 + v41, 1, v30);
    v44 = v70;
    if (v43 == 1)
    {
      sub_10000CAAC(v40, &qword_1019F6990);
      (*(v60 + 8))(v44, v30);
      return;
    }

    goto LABEL_10;
  }

  v45 = v62;
  sub_10000BE14(v40, v62, &qword_1019F6990);
  v46 = v42(v40 + v41, 1, v30);
  v44 = v70;
  if (v46 == 1)
  {
    sub_10000CAAC(v39, &qword_1019F6990);
    sub_10000CAAC(v36, &qword_1019F6990);
    (*(v60 + 8))(v45, v30);
LABEL_10:
    sub_10000CAAC(v40, &unk_101A0AFE0);
    goto LABEL_11;
  }

  v54 = v59;
  v57(v59, v40 + v41, v30);
  sub_1008A8204(&qword_1019F37C0, &type metadata accessor for UUID);
  LODWORD(v65) = dispatch thunk of static Equatable.== infix(_:_:)();
  v55 = *(v60 + 8);
  v55(v54, v30);
  sub_10000CAAC(v39, &qword_1019F6990);
  sub_10000CAAC(v36, &qword_1019F6990);
  v55(v62, v30);
  sub_10000CAAC(v40, &qword_1019F6990);
  if (v65)
  {
    v55(v44, v30);
    return;
  }

LABEL_11:
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v48 = [v61 getBoardItemForUUID:isa];

  if (!v48)
  {
    (*(v60 + 8))(v44, v30);
    return;
  }

  v49 = v48;
  Strong = swift_unknownObjectWeakLoadStrong();
  v51 = swift_unknownObjectWeakLoadStrong();
  v52 = v51;
  if (!Strong)
  {
    (*(v60 + 8))(v44, v30);
    if (!v52)
    {
      return;
    }

LABEL_21:
    return;
  }

  if (!v51)
  {

    (*(v60 + 8))(v44, v30);
    return;
  }

  type metadata accessor for CRLBoardItem(0);
  v53 = static NSObject.== infix(_:_:)();
  (*(v60 + 8))(v44, v30);

  if ((v53 & 1) == 0)
  {
    goto LABEL_21;
  }
}

uint64_t sub_1008A8E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A10760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008A8E9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008A8F04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1008A8F64()
{
  v1 = sub_1005B981C(&qword_101A06190);
  __chkstk_darwin(v1 - 8);
  v36 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v38 = &v35 - v4;
  __chkstk_darwin(v5);
  v37 = &v35 - v6;
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = type metadata accessor for CRLWPReplaceTextCommand.CoalescingData(0);
  v17 = *(v16 + 24);
  v39 = v0;
  v40 = v17;
  sub_10000BE14(v0 + v17, v15, &qword_101A06190);
  v18 = sub_1005B981C(qword_1019F8700);
  v19 = *(*(v18 - 8) + 48);
  v20 = v19(v15, 1, v18);
  sub_10000CAAC(v15, &qword_101A06190);
  if (v20 != 1)
  {
    sub_10000BE14(v39 + *(v16 + 28), v12, &qword_101A06190);
    v21 = v19(v12, 1, v18);
    sub_10000CAAC(v12, &qword_101A06190);
    if (v21 != 1)
    {
      return 3;
    }
  }

  v22 = v16;
  v23 = v39;
  sub_10000BE14(v39 + v40, v9, &qword_101A06190);
  v24 = v19(v9, 1, v18);
  sub_10000CAAC(v9, &qword_101A06190);
  if (v24 == 1 || (v25 = v23 + *(v16 + 28), v26 = v37, sub_10000BE14(v25, v37, &qword_101A06190), v27 = 1, v28 = v19(v26, 1, v18), sub_10000CAAC(v26, &qword_101A06190), v28 != 1))
  {
    v29 = v40;
    v30 = v38;
    sub_10000BE14(v23 + *(v22 + 28), v38, &qword_101A06190);
    v31 = v19(v30, 1, v18);
    sub_10000CAAC(v30, &qword_101A06190);
    if (v31 == 1)
    {
      return 0;
    }

    else
    {
      v32 = v36;
      sub_10000BE14(v23 + v29, v36, &qword_101A06190);
      v33 = v19(v32, 1, v18) == 1;
      sub_10000CAAC(v32, &qword_101A06190);
      return (2 * v33);
    }
  }

  return v27;
}

uint64_t sub_1008A9310(_BYTE *a1)
{
  v2 = v1;
  v158 = a1;
  v3 = sub_1005B981C(qword_101A0CF60);
  v151 = *(v3 - 8);
  v152 = v3;
  __chkstk_darwin(v3);
  v154 = &v136 - v4;
  v5 = sub_1005B981C(&unk_101A0DAE0);
  __chkstk_darwin(v5 - 8);
  v155 = &v136 - v6;
  v150 = sub_1005B981C(&qword_101A06250);
  __chkstk_darwin(v150);
  v153 = &v136 - v7;
  v8 = sub_1005B981C(&unk_1019FFD10);
  v9 = *(v8 - 8);
  v156 = v8;
  v157 = v9;
  __chkstk_darwin(v8);
  v11 = &v136 - v10;
  v12 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v12);
  v14 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&qword_101A06190);
  __chkstk_darwin(v18 - 8);
  v20 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v136 - v22;
  __chkstk_darwin(v24);
  v26 = &v136 - v25;
  __chkstk_darwin(v27);
  v29 = &v136 - v28;
  v30 = sub_1005B981C(qword_1019F8700);
  __chkstk_darwin(v30);
  __chkstk_darwin(v31);
  __chkstk_darwin(v32);
  __chkstk_darwin(v33);
  v40 = v2;
  v41 = *v2;
  v42 = v158;
  if (v41 != *v158)
  {
    goto LABEL_2;
  }

  v144 = v29;
  v139 = v26;
  v137 = v20;
  v138 = v35;
  v140 = v39;
  v141 = v38;
  v142 = v11;
  v143 = v41;
  v145 = &v136 - v36;
  v146 = v34;
  v148 = v14;
  v149 = v17;
  v147 = v37;
  v45 = sub_1008A8F64();
  v46 = sub_1008A8F64();
  v47 = v40;
  if (v45 <= 1u)
  {
    v48 = v149;
    if (!v45 || v46 != 1)
    {
      goto LABEL_2;
    }

    goto LABEL_14;
  }

  v49 = v148;
  v48 = v149;
  if (v45 != 2)
  {
    if (v46 == 3)
    {
      if (*(v40 + 8) == 1)
      {
        v43 = v42[8];
        return v43 & 1;
      }
    }

    else if (v46 == 1)
    {
LABEL_14:
      v57 = type metadata accessor for CRLWPReplaceTextCommand.CoalescingData(0);
      v58 = v144;
      sub_10000BE14(&v42[*(v57 + 24)], v144, &qword_101A06190);
      v59 = v146;
      v60 = v147;
      v61 = *(v147 + 48);
      if (v61(v58, 1, v146) == 1)
      {
        v56 = v58;
        goto LABEL_22;
      }

      v62 = v58;
      v63 = *(v60 + 32);
      v63(v145, v62, v59);
      v149 = v57;
      v64 = v47 + *(v57 + 24);
      v65 = v139;
      sub_10000BE14(v64, v139, &qword_101A06190);
      if (v61(v65, 1, v59) == 1)
      {
        (*(v60 + 8))(v145, v59);
        v56 = v65;
        goto LABEL_22;
      }

      result = v63(v141, v65, v59);
      v69 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
      v70 = *(v143 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
      if (v70)
      {
        v71 = v148;
        (*(*v70 + 896))(result);
        sub_1008ACCC4(v71 + *(v12 + 20), v48, type metadata accessor for CRLWPStorageCRDTData);
        sub_1008ACBF0(v71, type metadata accessor for CRLWPShapeItemCRDTData);
        v72 = v156;
        v73 = v157;
        v74 = v142;
        v144 = v157[2];
        v144(v142, v48, v156);
        sub_1008ACBF0(v48, type metadata accessor for CRLWPStorageCRDTData);
        v75 = v145;
        v76 = CRAttributedString.range(of:)();
        v77 = v72;
        v139 = v78;
        v140 = v76;
        LOBYTE(v72) = v79;
        v80 = v73[1];
        result = v80(v74, v77);
        if (v72)
        {
          v81 = v146;
          v82 = *(v147 + 8);
          v82(v141, v146);
          v83 = v75;
LABEL_32:
          v82(v83, v81);
          goto LABEL_2;
        }

        v157 = v47;
        v95 = *(v143 + v69);
        if (v95)
        {
          v96 = v148;
          (*(*v95 + 896))(result);
          sub_1008ACCC4(v96 + *(v12 + 20), v48, type metadata accessor for CRLWPStorageCRDTData);
          sub_1008ACBF0(v96, type metadata accessor for CRLWPShapeItemCRDTData);
          v97 = v48;
          v98 = v142;
          v99 = v156;
          v144(v142, v97, v156);
          sub_1008ACBF0(v97, type metadata accessor for CRLWPStorageCRDTData);
          v100 = v141;
          v101 = CRAttributedString.range(of:)();
          v103 = v102;
          v105 = v104;
          v80(v98, v99);
          v107 = v154;
          v106 = v155;
          if (v105)
          {
            v82 = *(v147 + 8);
            v108 = v100;
            v81 = v146;
            v82(v108, v146);
            v83 = v145;
            goto LABEL_32;
          }

          v122 = *(v149 + 8);
          v123 = *(v150 + 48);
          v124 = v153;
          sub_10000BE14(&v158[v122], v153, &unk_101A0DAE0);
          sub_10000BE14(v157 + v122, v124 + v123, &unk_101A0DAE0);
          v125 = v151;
          v126 = v152;
          v127 = *(v151 + 48);
          if (v127(v124, 1, v152) == 1)
          {
            v128 = v146;
            v129 = *(v147 + 8);
            v129(v141, v146);
            v130 = v128;
            v124 = v153;
            v129(v145, v130);
            if (v127(v124 + v123, 1, v126) == 1)
            {
              sub_10000CAAC(v124, &unk_101A0DAE0);
              v43 = 1;
              goto LABEL_48;
            }
          }

          else
          {
            sub_10000BE14(v124, v106, &unk_101A0DAE0);
            if (v127(v124 + v123, 1, v126) != 1)
            {
              (*(v125 + 32))(v107, v124 + v123, v126);
              sub_1008ACC50();
              v43 = dispatch thunk of static Equatable.== infix(_:_:)();
              v133 = *(v125 + 8);
              v133(v107, v126);
              v134 = v146;
              v135 = *(v147 + 8);
              v135(v141, v146);
              v135(v145, v134);
              v133(v106, v126);
              sub_10000CAAC(v153, &unk_101A0DAE0);
LABEL_48:
              if (v140 != v103)
              {
                v43 &= v139 == v101;
              }

              return v43 & 1;
            }

            v131 = v146;
            v132 = *(v147 + 8);
            v132(v141, v146);
            v132(v145, v131);
            (*(v125 + 8))(v106, v126);
          }

          sub_10000CAAC(v124, &qword_101A06250);
          v43 = 0;
          goto LABEL_48;
        }

        goto LABEL_52;
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_2:
    v43 = 0;
    return v43 & 1;
  }

  if (v46 != 2)
  {
    goto LABEL_2;
  }

  v50 = v12;
  v51 = type metadata accessor for CRLWPReplaceTextCommand.CoalescingData(0);
  v52 = v23;
  sub_10000BE14(&v42[*(v51 + 28)], v23, &qword_101A06190);
  v54 = v146;
  v53 = v147;
  v55 = *(v147 + 48);
  if (v55(v52, 1, v146) == 1)
  {
    v56 = v52;
LABEL_22:
    sub_10000CAAC(v56, &qword_101A06190);
    goto LABEL_2;
  }

  v66 = v140;
  v158 = *(v53 + 32);
  (v158)(v140, v52, v54);
  v67 = v47 + *(v51 + 28);
  v68 = v137;
  sub_10000BE14(v67, v137, &qword_101A06190);
  if (v55(v68, 1, v54) == 1)
  {
    (*(v53 + 8))(v66, v54);
    v56 = v68;
    goto LABEL_22;
  }

  result = (v158)(v138, v68, v54);
  v84 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v85 = *(v143 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v85)
  {
    goto LABEL_51;
  }

  (*(*v85 + 896))(result);
  v86 = v149;
  sub_1008ACCC4(v49 + *(v50 + 20), v149, type metadata accessor for CRLWPStorageCRDTData);
  sub_1008ACBF0(v49, type metadata accessor for CRLWPShapeItemCRDTData);
  v87 = v156;
  v88 = v157;
  v89 = v142;
  v158 = v157[2];
  (v158)(v142, v86, v156);
  sub_1008ACBF0(v86, type metadata accessor for CRLWPStorageCRDTData);
  v90 = v140;
  v91 = CRAttributedString.range(of:)();
  v154 = v92;
  v155 = v91;
  LOBYTE(v86) = v93;
  v94 = v88[1];
  v157 = v88 + 1;
  result = v94(v89, v87);
  if (v86)
  {
    v81 = v146;
    v82 = *(v147 + 8);
    v82(v138, v146);
    v83 = v90;
    goto LABEL_32;
  }

  v109 = *(v143 + v84);
  if (v109)
  {
    (*(*v109 + 896))(result);
    v110 = v149;
    sub_1008ACCC4(v49 + *(v50 + 20), v149, type metadata accessor for CRLWPStorageCRDTData);
    sub_1008ACBF0(v49, type metadata accessor for CRLWPShapeItemCRDTData);
    v111 = v142;
    v112 = v156;
    (v158)(v142, v110, v156);
    sub_1008ACBF0(v110, type metadata accessor for CRLWPStorageCRDTData);
    v113 = v138;
    v114 = CRAttributedString.range(of:)();
    v116 = v115;
    v118 = v117;
    v94(v111, v112);
    v119 = v146;
    v120 = *(v147 + 8);
    v120(v113, v146);
    v120(v140, v119);
    if ((v118 & 1) == 0)
    {
      v43 = v155 == v116 || v154 == v114;
      return v43 & 1;
    }

    goto LABEL_2;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_1008AA24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a1;
  v10 = sub_1005B981C(&unk_101A0DAA0);
  __chkstk_darwin(v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v41 - v14);
  v16 = sub_1005B981C(&unk_101A096B0);
  __chkstk_darwin(v16 - 8);
  v18 = &v41 - v17;
  v19 = sub_1005B981C(&unk_101A0DAB0);
  __chkstk_darwin(v19 - 8);
  v21 = &v41 - v20;
  result = NSNotFound.getter();
  if (result == a2)
  {
    __break(1u);
  }

  else
  {
    v23 = __OFADD__(a2, a3);
    v24 = a2 + a3;
    if (!v23)
    {
      v25 = type metadata accessor for CRLWPTextString();
      v41 = v5;
      v26 = v25;
      v27 = objc_allocWithZone(v25);
      v28 = &v27[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
      *v28 = a4;
      *(v28 + 1) = a5;
      v28[16] = 0;
      v44.receiver = v27;
      v44.super_class = v26;
      v29 = objc_msgSendSuper2(&v44, "init");
      v30 = sub_1005B981C(&qword_101A0D850);
      (*(*(v30 - 8) + 56))(v21, 1, 1, v30);
      v31 = sub_1005B981C(&qword_101A06188);
      (*(*(v31 - 8) + 56))(v18, 1, 1, v31);
      v32 = type metadata accessor for CRLWPReplaceTextCommand(0);
      v33 = objc_allocWithZone(v32);
      *v15 = a2;
      v15[1] = v24;
      v15[2] = v29;
      sub_10003DFF8(v21, v15 + *(v10 + 64), &unk_101A0DAB0);
      sub_10003DFF8(v18, v15 + *(v10 + 80), &unk_101A096B0);
      v34 = OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalescingData;
      v35 = type metadata accessor for CRLWPReplaceTextCommand.CoalescingData(0);
      (*(*(v35 - 8) + 56))(&v33[v34], 1, 1, v35);
      v33[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalesceReplaceTextCommands] = 0;
      v33[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_didUseWritingTools] = 0;
      *&v33[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_shapeItem] = v42;
      sub_10000BE14(v15, v12, &unk_101A0DAA0);
      v36 = *(v12 + 2);
      v37 = *(v10 + 64);
      v38 = *(v10 + 80);
      v39 = &v33[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_replacement];
      *v39 = *v12;
      *(v39 + 2) = v36;
      sub_10003DFF8(&v12[v37], &v39[*(v10 + 64)], &unk_101A0DAB0);
      sub_10003DFF8(&v12[v38], &v39[*(v10 + 80)], &unk_101A096B0);
      v43.receiver = v33;
      v43.super_class = v32;
      v40 = objc_msgSendSuper2(&v43, "init");
      sub_10000CAAC(v15, &unk_101A0DAA0);
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v40;
    }
  }

  __break(1u);
  return result;
}

void sub_1008AA6E8(uint64_t a1, uint64_t a2, int a3)
{
  v248 = a3;
  v236 = a2;
  v206 = a1;
  v200 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v200);
  v201 = &v200 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_101A0DAE0);
  __chkstk_darwin(v5 - 8);
  v205 = &v200 - v6;
  v211 = sub_1005B981C(&qword_101A06188);
  v210 = *(v211 - 8);
  __chkstk_darwin(v211);
  v208 = &v200 - v7;
  v216 = sub_1005B981C(&qword_101A0D850);
  v213 = *(v216 - 8);
  __chkstk_darwin(v216);
  v209 = &v200 - v8;
  v9 = sub_1005B981C(&qword_101A06190);
  __chkstk_darwin(v9 - 8);
  v204 = &v200 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v215 = &v200 - v12;
  v13 = sub_1005B981C(&qword_101A06248);
  __chkstk_darwin(v13 - 8);
  v232 = &v200 - v14;
  v244 = sub_1005B981C(&unk_1019FFD10);
  v233 = *(v244 - 8);
  __chkstk_darwin(v244);
  v207 = &v200 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v243 = &v200 - v17;
  v240 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v240);
  v241 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v19 - 8);
  v239 = &v200 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1005B981C(&unk_101A0DAA0);
  __chkstk_darwin(v21);
  v214 = &v200 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v212 = &v200 - v24;
  __chkstk_darwin(v25);
  v220 = &v200 - v26;
  __chkstk_darwin(v27);
  v226 = &v200 - v28;
  __chkstk_darwin(v29);
  v31 = &v200 - v30;
  __chkstk_darwin(v32);
  v34 = &v200 - v33;
  v242 = *(v3 + OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_shapeItem);
  v221 = OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage;
  v35 = *(v242 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v35)
  {
    goto LABEL_97;
  }

  v36 = OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_replacement;
  sub_10000BE14(v3 + OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_replacement, &v200 - v33, &unk_101A0DAA0);
  v235 = *(v34 + 2);
  v37 = *(v21 + 64);
  v246 = v21;
  v38 = *(v21 + 80);
  v39 = v35;
  sub_10000CAAC(&v34[v38], &unk_101A096B0);
  sub_10000CAAC(&v34[v37], &unk_101A0DAB0);
  v237 = v3;
  v245 = v36;
  sub_10000BE14(v3 + v36, v31, &unk_101A0DAA0);
  v40 = *v31;
  v41 = *(v31 + 1);

  v238 = v39;
  v223 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v42 = *&v39[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v42)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v43 = v241;
  (*(*v42 + 896))();
  v44 = v239;
  sub_1008ACCC4(v43 + *(v240 + 20), v239, type metadata accessor for CRLWPStorageCRDTData);
  sub_1008ACBF0(v43, type metadata accessor for CRLWPShapeItemCRDTData);
  v45 = v233;
  v46 = *(v233 + 16);
  v48 = v243;
  v47 = v244;
  v225 = v233 + 16;
  v224 = v46;
  v46(v243, v44, v244);
  sub_1008ACBF0(v44, type metadata accessor for CRLWPStorageCRDTData);
  v49 = CRAttributedString.count.getter();
  v50 = *(v45 + 8);
  v230 = v45 + 8;
  v229 = v50;
  v50(v48, v47);
  if (v49 >= (v40 & ~(v40 >> 63)))
  {
    v51 = v40 & ~(v40 >> 63);
  }

  else
  {
    v51 = v49;
  }

  v52 = v41 & ~(v41 >> 63);
  if (v49 >= v52)
  {
    v53 = v41 & ~(v41 >> 63);
  }

  else
  {
    v53 = v49;
  }

  v222 = v53;
  if (v52 < v51)
  {
    __break(1u);
    goto LABEL_88;
  }

  v227 = v51;
  v54 = *(v246 + 64);
  sub_10000CAAC(&v31[*(v246 + 80)], &unk_101A096B0);
  sub_10000CAAC(&v31[v54], &unk_101A0DAB0);
  v55 = v237;
  LOBYTE(v54) = *(v237 + OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalesceReplaceTextCommands);
  v56 = type metadata accessor for CRLWPReplaceTextCommand.CoalescingData(0);
  v57 = v56[6];
  v58 = sub_1005B981C(qword_1019F8700);
  v59 = *(v58 - 8);
  v60 = *(v59 + 56);
  v61 = v59 + 56;
  v62 = v232;
  v60(&v232[v57], 1, 1, v58);
  v63 = v62 + v56[7];
  v219 = v58;
  v218 = v60;
  v217 = v61;
  v60(v63, 1, 1, v58);
  v64 = v56[8];
  v65 = sub_1005B981C(qword_101A0CF60);
  v66 = *(v65 - 8);
  v67 = *(v66 + 56);
  v68 = v66 + 56;
  v67(v62 + v64, 1, 1, v65);
  v69 = v238;
  *v62 = v238;
  *(v62 + 8) = v54;
  v228 = *(v56 - 1);
  v70 = *(v228 + 56);
  v234 = v56;
  v70(v62, 0, 1, v56);
  v71 = OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalescingData;
  swift_beginAccess();
  v72 = v69;
  sub_10002C638(v62, v55 + v71, &qword_101A06248);
  swift_endAccess();
  v73 = v55;
  sub_10000BE14(v55 + v245, v34, &unk_101A0DAA0);
  v74 = *v34;
  v75 = *(v34 + 1);

  v76 = __OFSUB__(v75, v74);
  v77 = v75 - v74;
  if (v76)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v202 = v68;
  v203 = v67;
  v232 = v65;
  v78 = *(v246 + 64);
  sub_10000CAAC(&v34[*(v246 + 80)], &unk_101A096B0);
  sub_10000CAAC(&v34[v78], &unk_101A0DAB0);
  if (v77 >= 1)
  {
    v79 = v72;
    v80 = sub_1008AA19C();
    v82 = v81;
    if ((*(v228 + 48))(v81, 1, v234))
    {
      (v80)(aBlock, 0);
    }

    else
    {
      v83 = *&v238[v223];
      if (!v83)
      {
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      v84 = v241;
      (*(*v83 + 896))();
      v85 = v239;
      sub_1008ACCC4(v84 + *(v240 + 20), v239, type metadata accessor for CRLWPStorageCRDTData);
      sub_1008ACBF0(v84, type metadata accessor for CRLWPShapeItemCRDTData);
      v86 = v243;
      v87 = v244;
      v224(v243, v85, v244);
      sub_1008ACBF0(v85, type metadata accessor for CRLWPStorageCRDTData);
      v88 = v215;
      CRAttributedString.cursor(range:)();
      v229(v86, v87);
      v218(v88, 0, 1, v219);
      sub_10002C638(v88, v82 + v234[7], &qword_101A06190);
      (v80)(aBlock, 0);
    }

    v72 = v79;
  }

  v89 = v242;
  v90 = v231;
  sub_1012E0400(v242, &off_10188FE10);
  v91 = v90;
  if (v90)
  {
    goto LABEL_81;
  }

  v231 = v72;
  v92 = *&v235[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  v93 = *&v235[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text + 8];
  v94 = *(v89 + v221);
  if (v235[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text + 16])
  {
    if (!v94)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    sub_1008ACCB4(v92, v93, 1);
    sub_1008ACCB4(v92, v93, 1);
    sub_1008ACCB4(v92, v93, 1);
    sub_10068D144();
    v215 = v94;
    v95 = v207;
    CRAttributedString.init(_:)();
    v96 = v243;
    v97 = v95;
    v98 = v244;
    (*(v233 + 32))(v243, v97, v244);
    v99 = [v92 length];
    v100 = swift_allocObject();
    *(v100 + 16) = v96;
    v101 = swift_allocObject();
    *(v101 + 16) = sub_10068D198;
    *(v101 + 24) = v100;
    aBlock[4] = sub_10068D1A0;
    aBlock[5] = v101;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_10110DB0C;
    aBlock[3] = &unk_10188AFF8;
    v102 = _Block_copy(aBlock);

    [v92 enumerateAttributesInRange:0 options:v99 usingBlock:{0, v102}];
    sub_1007EF850(v92, v93, 1);
    _Block_release(v102);
    LOBYTE(v102) = swift_isEscapingClosureAtFileLocation();

    if (v102)
    {
      goto LABEL_92;
    }

    v103 = v215;
    sub_100A30128(v227, v222, v96, 0);

    sub_1007EF850(v92, v93, 1);
    v229(v96, v98);
    v73 = v237;
  }

  else
  {
    if (!v94)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    sub_1008ACCB4(v92, v93, 0);
    v104 = v94;
    sub_100A2E55C(v227, v222, v92, v93, 1);

    sub_1007EF850(v92, v93, 0);
  }

  v105 = v226;
  sub_10000BE14(v73 + v245, v226, &unk_101A0DAA0);
  v106 = *(v105 + 16);
  v107 = *&v106[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  v108 = *&v106[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text + 8];
  v109 = v106[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text + 16];
  if (v109)
  {
    v110 = [v107 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v73 = v237;
    v111 = String.count.getter();
  }

  else
  {

    v111 = String.UTF16View.count.getter();
  }

  v112 = v246;

  sub_1007EF850(v107, v108, v109);
  v113 = *(v112 + 64);
  v114 = v226;
  sub_10000CAAC(v226 + *(v112 + 80), &unk_101A096B0);
  sub_10000CAAC(v114 + v113, &unk_101A0DAB0);
  if (v111 < 1)
  {
LABEL_79:
    sub_1012CF6CC(v242, &off_10188FE10, v248);
    if (v91)
    {
      v72 = v231;
    }

    else
    {
      v196 = v206;
      if (*(v73 + OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_didUseWritingTools) != 1 || (v197 = *(v206 + OBJC_IVAR____TtC8Freeform8CRLBoard_data), v198 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, swift_beginAccess(), v199 = v201, sub_1008ACCC4(v197 + v198, v201, type metadata accessor for CRLBoardCRDTData), type metadata accessor for CRLSharedBoardMetadataCRDTData(0), sub_1005B981C(&qword_101A22790), CRMaxRegister.wrappedValue.getter(), sub_1008ACBF0(v199, type metadata accessor for CRLBoardCRDTData), (v249 & 1) != 0))
      {

        goto LABEL_82;
      }

      sub_1012E0400(v196, &off_1018A75D0);
      v72 = v231;
      sub_100EC7294();
      sub_1012CF6CC(v196, &off_1018A75D0, 0);
    }

LABEL_81:

LABEL_82:
    return;
  }

  v226 = 0;
  v115 = v220;
  sub_10000BE14(v73 + v245, v220, &unk_101A0DAA0);
  v116 = *(v115 + 16);
  v117 = *&v116[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  v118 = *&v116[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text + 8];
  v119 = v116[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text + 16];
  if (v119)
  {
    v120 = [v117 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v121 = String.count.getter();
    v73 = v237;
  }

  else
  {

    v121 = String.UTF16View.count.getter();
  }

  v122 = v214;

  sub_1007EF850(v117, v118, v119);
  v123 = v227;
  v124 = v227 + v121;
  if (__OFADD__(v227, v121))
  {
    goto LABEL_89;
  }

  v125 = *(v246 + 64);
  v126 = v220;
  sub_10000CAAC(v220 + *(v246 + 80), &unk_101A096B0);
  v127 = sub_10000CAAC(v126 + v125, &unk_101A0DAB0);
  v128 = v243;
  if (v124 < v123)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v129 = *&v238[v223];
  if (!v129)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v130 = v241;
  (*(*v129 + 896))(v127);
  v131 = v239;
  sub_1008ACCC4(v130 + *(v240 + 20), v239, type metadata accessor for CRLWPStorageCRDTData);
  sub_1008ACBF0(v130, type metadata accessor for CRLWPShapeItemCRDTData);
  v132 = v244;
  v224(v128, v131, v244);
  sub_1008ACBF0(v131, type metadata accessor for CRLWPStorageCRDTData);
  v133 = CRAttributedString.count.getter();
  v229(v128, v132);
  if (v133 >= (v123 & ~(v123 >> 63)))
  {
    v134 = v123 & ~(v123 >> 63);
  }

  else
  {
    v134 = v133;
  }

  v135 = v124 & ~(v124 >> 63);
  if (v133 >= v135)
  {
    v136 = v124 & ~(v124 >> 63);
  }

  else
  {
    v136 = v133;
  }

  v233 = v136;
  if (v135 < v134)
  {
    goto LABEL_91;
  }

  v137 = v212;
  sub_10000BE14(v73 + v245, v212, &unk_101A0DAA0);

  v138 = *(v246 + 64);
  v139 = *(v246 + 80);
  v140 = (*(v213 + 48))(v137 + v138, 1, v216);
  v237 = v134;
  if (v140 == 1)
  {
    sub_10000CAAC(v137 + v139, &unk_101A096B0);
    sub_10000CAAC(v137 + v138, &unk_101A0DAB0);
    goto LABEL_58;
  }

  sub_10003DFF8(v137 + v138, v209, &qword_101A0D850);
  sub_10000CAAC(v137 + v139, &unk_101A096B0);
  v141 = *(v242 + v221);
  if (!v141)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v143 = Strong;
    ObjectType = swift_getObjectType();
    v145 = swift_conformsToProtocol2();
    if (!v145)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v146 = v145;
    v147 = v141;
    v148 = sub_1012778D4(ObjectType, v146);

    v134 = v237;
    if ((v148 & 1) == 0)
    {

      sub_10000CAAC(v209, &qword_101A0D850);
      goto LABEL_58;
    }
  }

  else
  {
    v149 = v141;
  }

  v150 = *&v141[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v150)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v151 = v241;
  (*(*v150 + 896))(v149);
  v152 = v239;
  sub_1008ACCC4(v151 + *(v240 + 20), v239, type metadata accessor for CRLWPStorageCRDTData);
  sub_1008ACBF0(v151, type metadata accessor for CRLWPShapeItemCRDTData);
  v153 = v244;
  v224(v128, v152, v244);
  sub_1008ACBF0(v152, type metadata accessor for CRLWPStorageCRDTData);
  v154 = CRAttributedString.count.getter();
  v229(v128, v153);
  if (v154 >= (v134 & ~(v134 >> 63)))
  {
    v155 = v134 & ~(v134 >> 63);
  }

  else
  {
    v155 = v154;
  }

  v156 = v233 & ~(v233 >> 63);
  if (v156 < v155)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (v154 >= v156)
  {
    v157 = v233 & ~(v233 >> 63);
  }

  else
  {
    v157 = v154;
  }

  v158 = v209;
  sub_100A33634(v209 + *(v216 + 36), v155, v157);
  sub_10000CAAC(v158, &qword_101A0D850);
  v141[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties] = 0;

LABEL_58:
  v159 = v242;
  v160 = v211;
  sub_10000BE14(v73 + v245, v122, &unk_101A0DAA0);

  v161 = *(v246 + 64);
  v162 = *(v246 + 80);
  if ((*(v210 + 48))(v122 + v162, 1, v160) == 1)
  {
    sub_10000CAAC(v122 + v162, &unk_101A096B0);
    sub_10000CAAC(v122 + v161, &unk_101A0DAB0);
LABEL_70:
    v176 = sub_1008AA19C();
    v178 = v177;
    v179 = *(v228 + 48);
    v180 = v234;
    if (v179(v177, 1, v234))
    {
      (v176)(aBlock, 0);
LABEL_74:
      v187 = sub_1008AA19C();
      v189 = v188;
      if (v179(v188, 1, v180))
      {
        (v187)(aBlock, 0);
LABEL_78:
        v91 = v226;
        goto LABEL_79;
      }

      v190 = *&v238[v223];
      if (v190)
      {
        v191 = v241;
        (*(*v190 + 896))();
        v192 = v239;
        sub_1008ACCC4(v191 + *(v240 + 20), v239, type metadata accessor for CRLWPStorageCRDTData);
        sub_1008ACBF0(v191, type metadata accessor for CRLWPShapeItemCRDTData);
        v193 = v243;
        v194 = v244;
        v224(v243, v192, v244);
        sub_1008ACBF0(v192, type metadata accessor for CRLWPStorageCRDTData);
        v195 = v205;
        CRAttributedString.attributes(at:effectiveRange:)();
        v229(v193, v194);
        v203(v195, 0, 1, v232);
        sub_10002C638(v195, v189 + v234[8], &unk_101A0DAE0);
        (v187)(aBlock, 0);
        goto LABEL_78;
      }

      goto LABEL_106;
    }

    v181 = *&v238[v223];
    if (v181)
    {
      v182 = v241;
      (*(*v181 + 896))();
      v183 = v239;
      sub_1008ACCC4(v182 + *(v240 + 20), v239, type metadata accessor for CRLWPStorageCRDTData);
      sub_1008ACBF0(v182, type metadata accessor for CRLWPShapeItemCRDTData);
      v184 = v243;
      v185 = v244;
      v224(v243, v183, v244);
      sub_1008ACBF0(v183, type metadata accessor for CRLWPStorageCRDTData);
      v186 = v204;
      CRAttributedString.cursor(range:)();
      v229(v184, v185);
      v218(v186, 0, 1, v219);
      v180 = v234;
      sub_10002C638(v186, v178 + v234[6], &qword_101A06190);
      (v176)(aBlock, 0);
      goto LABEL_74;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  sub_10003DFF8(v122 + v162, v208, &qword_101A06188);
  sub_10000CAAC(v122 + v161, &unk_101A0DAB0);
  v163 = *(v159 + v221);
  if (!v163)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v164 = swift_unknownObjectWeakLoadStrong();
  if (!v164)
  {
    v171 = v163;
    goto LABEL_66;
  }

  v165 = v164;
  v166 = swift_getObjectType();
  v167 = swift_conformsToProtocol2();
  if (v167)
  {
    v168 = v167;
    v169 = v163;
    v170 = sub_1012778D4(v166, v168);

    if ((v170 & 1) == 0)
    {

      sub_10000CAAC(v208, &qword_101A06188);
      goto LABEL_70;
    }

LABEL_66:
    if (!__OFSUB__(v233, v237))
    {
      v172 = [v163 textRangeForParagraphsInCharRange:{v237, v233 - v237}];
      v174 = v172 + v173;
      if (!__OFADD__(v172, v173))
      {
        if (v174 >= v172)
        {
          v175 = v208;
          sub_100A33634(v208 + *(v160 + 36), v172, v174);
          sub_10000CAAC(v175, &qword_101A06188);
          *(v163 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) = 0;

          goto LABEL_70;
        }

        goto LABEL_96;
      }

LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

LABEL_109:
  __break(1u);
}

uint64_t sub_1008AC374(void *a1)
{
  v3 = sub_1005B981C(&qword_101A06248);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v18[-v7];
  type metadata accessor for CRLWPReplaceTextCommand(0);
  v9 = swift_dynamicCastClass();
  if (!v9 || *(v9 + OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_shapeItem) != *(v1 + OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_shapeItem))
  {
    v10 = 0;
    return v10 & 1;
  }

  v11 = v9;
  v12 = OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalescingData;
  swift_beginAccess();
  sub_10000BE14(v1 + v12, v8, &qword_101A06248);
  v13 = type metadata accessor for CRLWPReplaceTextCommand.CoalescingData(0);
  v14 = *(*(v13 - 8) + 48);
  result = v14(v8, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v16 = OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalescingData;
    swift_beginAccess();
    sub_10000BE14(v11 + v16, v5, &qword_101A06248);
    result = v14(v5, 1, v13);
    if (result != 1)
    {
      v17 = a1;
      v10 = sub_1008A9310(v5);

      sub_1008ACBF0(v5, type metadata accessor for CRLWPReplaceTextCommand.CoalescingData);
      sub_1008ACBF0(v8, type metadata accessor for CRLWPReplaceTextCommand.CoalescingData);
      return v10 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1008AC710()
{
  sub_10000CAAC(v0 + OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalescingData, &qword_101A06248);

  return sub_10000CAAC(v0 + OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_replacement, &unk_101A0DAA0);
}

id sub_1008AC774()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPReplaceTextCommand(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1008AC844()
{
  sub_1008AC9B8();
  if (v1 <= 0x3F)
  {
    v5 = *(v0 - 8) + 64;
    v6 = &unk_1014839C8;
    v7 = &unk_1014839C8;
    v8 = &value witness table for Builtin.UnknownObject + 64;
    sub_1006C550C(319, &qword_101A06178, &qword_101A0D850);
    if (v2 <= 0x3F)
    {
      sub_1006C550C(319, &qword_101A06180, &qword_101A06188);
      if (v3 <= 0x3F)
      {
        swift_getTupleTypeLayout();
        v9 = &v4;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1008AC9B8()
{
  if (!qword_101A06170)
  {
    type metadata accessor for CRLWPReplaceTextCommand.CoalescingData(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A06170);
    }
  }
}

void sub_1008ACA58()
{
  type metadata accessor for CRLWPStorage();
  if (v0 <= 0x3F)
  {
    sub_1006C550C(319, &qword_101A06200, qword_1019F8700);
    if (v1 <= 0x3F)
    {
      sub_1006C550C(319, &unk_101A06208, qword_101A0CF60);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1008ACB2C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_1008ACBF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1008ACC50()
{
  result = qword_101A06258;
  if (!qword_101A06258)
  {
    sub_1005C4E5C(qword_101A0CF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A06258);
  }

  return result;
}

id sub_1008ACCB4(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1008ACCC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1008ACD34(char *a1)
{
  swift_beginAccess();
  v2 = *(v1 + 24);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v1 + 24) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v24 = *(v1 + 24);
  swift_bridgeObjectRetain_n();
  v10 = 0;
  while (v8)
  {
LABEL_8:
    v12 = *(v24 + 56) + 48 * (__clz(__rbit64(v8)) | (v10 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    sub_1008AE244();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v16 = v13;

    v25 = v14;
    v17 = [v16 mostSpecificSelectionOfClass:ObjCClassFromMetadata];
    if (v17)
    {
      v18 = v17;
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (!v19)
      {

        goto LABEL_17;
      }

      v20 = [v19 range];
      v22 = v21;

      if (v20 <= a1)
      {
        if (__OFSUB__(a1, v20))
        {
          goto LABEL_23;
        }

        if (a1 - v20 < v22)
        {
          goto LABEL_20;
        }
      }

      if (__OFADD__(v20, v22))
      {
        goto LABEL_22;
      }

      if (&v20[v22] == a1)
      {
LABEL_20:

        return;
      }
    }

    v18 = v16;
    v16 = v25;
LABEL_17:
    v8 &= v8 - 1;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v4 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_1008ACFA8()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v81 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v66 - v6;
  swift_beginAccess();
  v8 = *(v0 + 24);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v83 = v3 + 16;
  v79 = (v3 + 8);
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v68 = v0;
  v75 = v2;
  v67 = v3;
  v74 = v7;
  v66 = v8;
  if (v12)
  {
    while (1)
    {
LABEL_11:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = *(v8 + 48);
      v78 = *(v3 + 72);
      v82 = *(v3 + 16);
      v82(v7, v17 + v78 * (v16 | (v14 << 6)), v2);
      v18 = *(v1 + 24);
      if (!*(v18 + 16))
      {
        goto LABEL_6;
      }

      v19 = sub_10003E994(v7);
      if (v20)
      {
        v21 = *(v18 + 56) + 48 * v19;
        v22 = *v21;
        v77 = *(v21 + 8);
        v23 = *(v21 + 16);
        v80 = *(v21 + 24);
        v24 = *(v21 + 32);
        v25 = *(v21 + 40);
        v72 = v23;
        v73 = v24;

        v26 = v22;
        v70 = v77;

        v82(v81, v7, v2);
        v27 = objc_allocWithZone(type metadata accessor for CRLPersistableSelectionPath(0));
        v28 = v26;
        v29 = v25;
        v30 = v28;
        sub_100702EC8(v30);
        v71 = v31;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84 = *(v1 + 24);
        v33 = v84;
        *(v1 + 24) = 0x8000000000000000;
        v35 = sub_10003E994(v81);
        v36 = v33[2];
        v37 = (v34 & 1) == 0;
        v38 = v36 + v37;
        if (__OFADD__(v36, v37))
        {
          goto LABEL_27;
        }

        v39 = v34;
        v76 = v29;
        v77 = v30;
        if (v33[3] >= v38)
        {
          v7 = v74;
          v42 = v79;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100AA8EB8();
          }
        }

        else
        {
          sub_100A912E4(v38, isUniquelyReferenced_nonNull_native);
          v40 = sub_10003E994(v81);
          v7 = v74;
          v42 = v79;
          if ((v39 & 1) != (v41 & 1))
          {
            goto LABEL_29;
          }

          v35 = v40;
        }

        v43 = v84;
        v69 = v42 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v39)
        {
          v44 = v84[7] + 48 * v35;
          v45 = v42;
          v46 = *v44;
          v47 = *(v44 + 8);
          v82 = *(v44 + 24);
          v48 = v76;
          v50 = v71;
          v49 = v72;
          *v44 = v77;
          *(v44 + 8) = v50;
          *(v44 + 16) = v49;
          v51 = v73;
          *(v44 + 24) = v80;
          *(v44 + 32) = v51;
          *(v44 + 40) = v48;

          v52 = *v45;
          v53 = v75;
          (*v45)(v81, v75);
        }

        else
        {
          v84[(v35 >> 6) + 8] |= 1 << v35;
          v54 = v81;
          v55 = v75;
          v82((v43[6] + v35 * v78), v81, v75);
          v56 = (v43[7] + 48 * v35);
          v58 = v71;
          v57 = v72;
          *v56 = v77;
          v56[1] = v58;
          v59 = v80;
          v56[2] = v57;
          v56[3] = v59;
          v60 = v76;
          v56[4] = v73;
          v56[5] = v60;
          v52 = *v42;
          (*v42)(v54, v55);
          v61 = v43[2];
          v62 = __OFADD__(v61, 1);
          v63 = v61 + 1;
          if (v62)
          {
            goto LABEL_28;
          }

          v43[2] = v63;
          v7 = v74;
          v53 = v75;
        }

        v64 = v68;
        *(v68 + 24) = v43;

        swift_endAccess();

        v1 = v64;

        v52(v7, v53);
        v2 = v53;
        v3 = v67;
        v8 = v66;
        if (!v12)
        {
          break;
        }
      }

      else
      {

LABEL_6:
        (*v79)(v7, v2);
        if (!v12)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return 0;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1008AD52C(uint64_t a1, uint64_t a2, size_t *a3)
{
  v94 = a3;
  v6 = type metadata accessor for UUID();
  v93 = *(v6 - 8);
  __chkstk_darwin(v6);
  v92 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019FC080);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v96 = &v76 - v10;
  v99 = sub_1005B981C(&unk_1019FFD10);
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v12 = &v76 - v11;
  v98 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v98);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v15 - 8);
  v95 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v76 - v18;
  swift_beginAccess();
  v100 = a2;
  v20 = *(a2 + 24);
  if (!*(v20 + 16))
  {
    return;
  }

  v90 = a1;
  v21 = sub_10003E994(a1);
  if ((v22 & 1) == 0)
  {

    return;
  }

  v85 = v9;
  v86 = v8;
  v87 = v6;
  v91 = v3;
  v23 = *(v20 + 56) + 48 * v21;
  v24 = *v23;
  v25 = *(v23 + 8);
  v26 = *(v23 + 24);
  v84 = *(v23 + 16);
  v27 = *(v23 + 40);
  v83 = *(v23 + 32);

  v28 = v24;

  v29 = v25;

  if (!v25)
  {

    return;
  }

  v88 = v27;
  v89 = v28;
  v30 = v29;
  v31 = sub_1006D2420(v30, 0);
  if (!v26)
  {

    return;
  }

  sub_1008AE244();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v33 = [v31 mostSpecificSelectionOfClass:ObjCClassFromMetadata];
  if (!v33)
  {

    swift_bridgeObjectRelease_n();

    return;
  }

  v34 = v33;
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {

    swift_bridgeObjectRelease_n();

    return;
  }

  v36 = v35;
  v79 = v31;
  v80 = v26;
  v82 = *(v100 + 32);
  v37 = [v36 range];
  v38 = [v36 range];
  if (__OFADD__(v38, v39))
  {
    __break(1u);
    goto LABEL_35;
  }

  v77 = v30;
  v81 = v37;
  v40 = &v38[v39] < v37;
  v42 = v98;
  v41 = v99;
  if (v40)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v78 = &v38[v39];
  v43 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v44 = *&v82[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v44)
  {
    __break(1u);
    goto LABEL_39;
  }

  (*(*v44 + 896))();
  sub_1005E0A78(&v14[*(v42 + 20)], v19);
  sub_1005E0ADC(v14, type metadata accessor for CRLWPShapeItemCRDTData);
  v45 = v97;
  (v97)[2](v12, v19, v41);
  sub_1005E0ADC(v19, type metadata accessor for CRLWPStorageCRDTData);
  v36 = CRAttributedString.count.getter();
  v46 = (v45[1])(v12, v41);
  if (v36 >= (v81 & ~(v81 >> 63)))
  {
    v19 = (v81 & ~(v81 >> 63));
  }

  else
  {
    v19 = v36;
  }

  v47 = v78 & ~(v78 >> 63);
  if (v36 >= v47)
  {
    v12 = (v78 & ~(v78 >> 63));
  }

  else
  {
    v12 = v36;
  }

  if (v47 >= v19)
  {
    v48 = v82;
    v49 = *&v82[v43];
    if (v49)
    {
      v97 = v34;
      (*(*v49 + 896))(v46);
      v50 = v95;
      sub_1005E0A78(&v14[*(v42 + 20)], v95);
      v51 = v48;
      sub_1005E0ADC(v14, type metadata accessor for CRLWPShapeItemCRDTData);
      v52 = v96;
      CRAttributedString.subscript.getter();
      sub_1005E0ADC(v50, type metadata accessor for CRLWPStorageCRDTData);
      v53 = v86;
      v54 = CRAttributedString.Substring.attributedString.getter();
      (*(v85 + 8))(v52, v53);
      v55 = [v54 string];
      v19 = v87;
      v12 = v77;
      if (v55)
      {
        v56 = v55;

        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;

        v60 = v84;
        v34 = v89;
        v61 = v80;
        v62 = v88;
        if (v57 == v84 && v80 == v59)
        {

          v63 = v90;
LABEL_28:
          v65 = v79;
          v101 = v79;
          v102 = v60;
          v103 = v61;
          v104 = v83;
          v105 = v62;
          v66 = v100;
          swift_beginAccess();

          v67 = v65;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v106 = *(v66 + 24);
          *(v66 + 24) = 0x8000000000000000;
          sub_100A9ED3C(&v101, v63, isUniquelyReferenced_nonNull_native);
          *(v66 + 24) = v106;
          swift_endAccess();

          return;
        }

        v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v63 = v90;
        if (v64)
        {
          goto LABEL_28;
        }

        (*(v93 + 16))(v92, v90, v19);
        v69 = v94;
        v36 = *v94;
        v70 = swift_isUniquelyReferenced_nonNull_native();
        *v69 = v36;
        if (v70)
        {
          goto LABEL_30;
        }

        goto LABEL_37;
      }

LABEL_40:
      __break(1u);
      return;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  v36 = sub_100B356D0(0, v36[2] + 1, 1, v36);
  *v94 = v36;
LABEL_30:
  v72 = v36[2];
  v71 = v36[3];
  if (v72 >= v71 >> 1)
  {
    v75 = sub_100B356D0(v71 > 1, v72 + 1, 1, v36);
    *v94 = v75;
  }

  v73 = v93;
  v74 = *v94;
  *(v74 + 16) = v72 + 1;
  (*(v73 + 32))(v74 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v72, v92, v19);
}

uint64_t sub_1008ADF10()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1008ADF8C(uint64_t a1, uint64_t a2, size_t *a3)
{
  v19 = a2;
  v20 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v18[1] = v6 + 16;
  v14 = (v6 + 8);
  v21 = a1;

  v16 = 0;
  if (v12)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      (*(v6 + 16))(v8, *(v21 + 48) + *(v6 + 72) * (__clz(__rbit64(v12)) | (v17 << 6)), v5);
      sub_1008AD52C(v8, v19, v20);
      if (v3)
      {
        break;
      }

      v12 &= v12 - 1;
      result = (*v14)(v8, v5);
      v16 = v17;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    (*v14)(v8, v5);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v13)
      {
      }

      v12 = *(v9 + 8 * v17);
      ++v16;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1008AE16C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = sub_100BD6ECC(_swiftEmptyArrayStorage);
  *(v2 + 40) = 0;
  v4 = [objc_allocWithZone(CRLSelectionModelTranslator) init];
  v5 = type metadata accessor for CRLSelectionPathValidator();
  v6 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v6[OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator] = v4;
  v8.receiver = v6;
  v8.super_class = v5;
  *(v2 + 16) = objc_msgSendSuper2(&v8, "init");
  *(v2 + 32) = a2;
  return v2;
}

unint64_t sub_1008AE244()
{
  result = qword_1019FFDF0;
  if (!qword_1019FFDF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019FFDF0);
  }

  return result;
}

uint64_t sub_1008AE290()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = _swiftEmptyArrayStorage;
  swift_beginAccess();

  sub_1008ADF8C(v6, v0, &v31);

  v7 = v31[2];
  if (v7)
  {
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = *(v8 + 64);
    v25 = v31;
    v26 = v10;
    v12 = v31 + ((v11 + 32) & ~v11);
    v13 = *(v8 + 56);
    v28 = v8;
    v29 = v13;
    v14 = (v8 - 8);
    v27 = v5;
    v10(v5, v12, v2);
    while (1)
    {
      swift_beginAccess();
      v19 = sub_10003E994(v5);
      if (v20)
      {
        v21 = v19;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *(v1 + 24);
        v30 = v23;
        *(v1 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100AA8EB8();
          v23 = v30;
        }

        (*v14)(*(v23 + 48) + v21 * v29, v2);
        v15 = *(v23 + 56) + 48 * v21;
        v16 = v2;
        v18 = *v15;
        v17 = *(v15 + 8);

        v2 = v16;

        sub_100BCFC50(v21, v23);
        *(v1 + 24) = v23;
        v5 = v27;
        v9 = v26;
      }

      swift_endAccess();
      (*v14)(v5, v2);
      v12 += v29;
      if (!--v7)
      {
        break;
      }

      v9(v5, v12, v2);
    }
  }
}

uint64_t sub_1008AE59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1008B4034();
  v7 = sub_1008B2CCC();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_1008AE60C()
{
  sub_1008B4034();
  sub_1008B1C98();
  return CRValue<>.init(from:)();
}

uint64_t sub_1008AE678()
{
  sub_1008B4034();
  sub_1008B1C98();
  return CRValue<>.encode(to:)();
}

uint64_t sub_1008AE6D4(uint64_t a1)
{
  v2 = sub_1008B4034();
  v3 = sub_1008B1C98();

  return CRValue<>.minEncodingVersion.getter(a1, v2, v3, &protocol witness table for Int);
}

uint64_t sub_1008AE78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1008B1C98();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

uint64_t sub_1008AE7E4(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A065D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1008B43C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = *(v3 + 8);
  v11 = 0;
  sub_1005B981C(&qword_101A065B0);
  sub_1008B4CF4(&qword_101A065D8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v3[3];
    v11 = 4;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1008AEA68()
{
  v1 = *v0;
  v2 = 0x617053726F6C6F63;
  v3 = 0x6E65657267;
  v4 = 1702194274;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6579570;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1008AEAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008B2D20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1008AEB5C(uint64_t a1)
{
  v2 = sub_1008B43C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008AEB98(uint64_t a1)
{
  v2 = sub_1008B43C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008AEBDC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  return sub_1008AE7E0(v5, v6) & 1;
}

double sub_1008AEC18@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1008B2EDC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1008AEC88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1008B4EB4();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1008AECDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1008B4EB4();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1008AED30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1008B4258();
  v7 = sub_1008B4F08();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_1008AEDA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1008B4EB4();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_1008AEE84(uint64_t a1)
{
  v2 = sub_1008B44F8();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1008AEED0(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A065E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100020E58(a1, a1[3]);
  sub_1008B4768();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 16);
    v10[15] = 4;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1008AF104()
{
  v1 = *v0;
  v2 = 1851881827;
  v3 = 0x776F6C6C6579;
  v4 = 7955819;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x61746E6567616DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1008AF190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008B3198(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1008AF1F4(uint64_t a1)
{
  v2 = sub_1008B4768();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008AF230(uint64_t a1)
{
  v2 = sub_1008B4768();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1008AF26C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1008B334C(a1, &v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1008AF2EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1008B4E0C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1008AF340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1008B4E0C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1008AF394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1008B4600();
  v7 = sub_1008B4E60();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_1008AF404(uint64_t a1, uint64_t a2)
{
  v4 = sub_1008B4E0C();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_1008AF4E8(uint64_t a1)
{
  v2 = sub_1008B48A0();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1008AF534(void *a1, uint64_t a2)
{
  v5 = sub_1005B981C(&qword_101A065E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1008B4B10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[1] = a2;
    v11 = 1;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1008AF6CC()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6574696877;
  }
}

uint64_t sub_1008AF708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574696877 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1008AF824(uint64_t a1)
{
  v2 = sub_1008B4B10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008AF860(uint64_t a1)
{
  v2 = sub_1008B4B10();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1008AF89C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1008B35B4(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t sub_1008AF8EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1008B4D64();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1008AF940(uint64_t a1, uint64_t a2)
{
  v4 = sub_1008B4D64();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1008AF994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1008B49A8();
  v7 = sub_1008B4DB8();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_1008AFA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1008B4D64();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_1008AFAE8(uint64_t a1)
{
  v2 = sub_1008B4C48();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1008AFB34()
{
  v1 = *v0;
  v2 = 0x6168706C61;
  v3 = 0x617461446B796D63;
  v4 = 0x6F7268636F6E6F6DLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x61746144626772;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1008AFBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008B3790(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1008AFC40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return static CodingKey<>.intCases.getter(a1, a2, v7, v8);
}

uint64_t sub_1008AFCAC(uint64_t a1)
{
  v2 = sub_1008B2A34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008AFCE8(uint64_t a1)
{
  v2 = sub_1008B2A34();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1008AFD24()
{
  if ((*(v0 + 4) & 1) == 0)
  {
    if ((*v0 & 0x7FFFFFFF) != 0)
    {
      v1 = *v0;
    }

    else
    {
      v1 = 0;
    }

    Hasher._combine(_:)(v1);
  }

  if (*(v0 + 32))
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = HIDWORD(v2);
    v5 = v2 & 0x7F80000000000000;
    if ((v4 & 0x7FFFFF) == 0 && v5 == 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = v4;
    }

    Hasher._combine(_:)(v7);
    if ((v3 & 0x7FFFFF) == 0 && (v3 & 0x7F800000) == 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = v3;
    }

    Hasher._combine(_:)(v9);
    if ((v3 & 0x7FFFFF00000000) == 0 && (v3 & 0x7F80000000000000) == 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = HIDWORD(v3);
    }

    Hasher._combine(_:)(v11);
  }

  if (*(v0 + 56))
  {
    v13 = *(v0 + 40);
    v12 = *(v0 + 48);
    if ((v13 & 0x7FFFFF) == 0 && (*(v0 + 40) & 0x7F800000) == 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(v0 + 40);
    }

    Hasher._combine(_:)(v15);
    if ((v13 & 0x7FFFFF00000000) == 0 && (v13 & 0x7F80000000000000) == 0)
    {
      v17 = 0;
    }

    else
    {
      v17 = HIDWORD(v13);
    }

    Hasher._combine(_:)(v17);
    if ((v12 & 0x7FFFFF) == 0 && (v12 & 0x7F800000) == 0)
    {
      v19 = 0;
    }

    else
    {
      v19 = v12;
    }

    Hasher._combine(_:)(v19);
    if ((v12 & 0x7FFFFF00000000) == 0 && (v12 & 0x7F80000000000000) == 0)
    {
      v21 = 0;
    }

    else
    {
      v21 = HIDWORD(v12);
    }

    Hasher._combine(_:)(v21);
  }

  if (*(v0 + 72))
  {
    if ((*(v0 + 64) & 0x7FFFFF) == 0 && (*(v0 + 64) & 0x7F800000) == 0)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v0 + 64);
    }

    Hasher._combine(_:)(v23);
  }
}

uint64_t sub_1008AFE48(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A06450);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1008B2A34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 4);
  LOBYTE(v12) = 0;
  v14 = v9;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v10 = *(v3 + 24);
    v12 = *(v3 + 8);
    v13 = v10;
    v14 = 1;
    sub_1008B3EF0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 40);
    *&v13 = *(v3 + 56);
    v14 = 2;
    sub_1008B3F44();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 64);
    v14 = 3;
    sub_1008B3F98();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v12 = *(v3 + 80);
    v14 = 4;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.Group.children.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

Swift::Int sub_1008B00E8()
{
  Hasher.init(_seed:)();
  sub_1008AFD24();
  return Hasher._finalize()();
}

Swift::Int sub_1008B012C()
{
  Hasher.init(_seed:)();
  sub_1008AFD24();
  return Hasher._finalize()();
}

uint64_t sub_1008B0168(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1008AFE44(v7, v9) & 1;
}

double sub_1008B01D4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1008B394C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1008B0248(uint64_t a1, uint64_t a2)
{
  v4 = sub_1008B4088();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1008B029C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1008B4088();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1008B02F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1008B2824();
  v7 = sub_1008B2B6C();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_1008B0360(uint64_t a1, uint64_t a2)
{
  v4 = sub_1008B4088();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_1008B0444(uint64_t a1)
{
  v2 = sub_1008B2BC4();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

id sub_1008B0490(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = *a1;
  }

  if (*(a1 + 32))
  {
    v137 = *(a1 + 8);
    v3 = *(a1 + 16);
    v5 = *(a1 + 20);
    v4 = *(a1 + 24);
    v6 = *(a1 + 28);
    if (*(a1 + 56) || *(a1 + 72))
    {
      v138 = *(a1 + 16);
      v7 = objc_opt_self();

      v8 = [v7 _atomicIncrementAssertCount];
      v140[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v140);
      StaticString.description.getter();
      v9 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v10 = String._bridgeToObjectiveC()();

      v11 = [v10 lastPathComponent];

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v15 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10146CA70;
      *(v16 + 56) = &type metadata for Int32;
      *(v16 + 64) = &protocol witness table for Int32;
      *(v16 + 32) = v8;
      v17 = sub_1005CF000();
      *(v16 + 96) = v17;
      v18 = sub_1008B3FEC(&qword_1019F52E0, sub_1005CF000);
      *(v16 + 104) = v18;
      *(v16 + 72) = v9;
      *(v16 + 136) = &type metadata for String;
      v19 = sub_1000053B0();
      *(v16 + 112) = v12;
      *(v16 + 120) = v14;
      *(v16 + 176) = &type metadata for UInt;
      *(v16 + 144) = v19;
      *(v16 + 152) = 242;
      v20 = v140[0];
      *(v16 + 216) = v17;
      *(v16 + 224) = v18;
      *(v16 + 184) = &protocol witness table for UInt;
      *(v16 + 192) = v20;
      v21 = v9;
      v22 = v20;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v16);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v24 = static os_log_type_t.error.getter();
      sub_100005404(v15, &_mh_execute_header, v24, "Should only have one kind of color model data per color data. Unarchiving RGB.", 78, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v25 = swift_allocObject();
      v25[2] = 8;
      v25[3] = 0;
      v25[4] = 0;
      v25[5] = 0;
      v26 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v27 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v28 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v29 = String._bridgeToObjectiveC()();

      [v7 handleFailureInFunction:v27 file:v28 lineNumber:242 isFatal:0 format:v29 args:v26];

      if (v138)
      {
        goto LABEL_10;
      }
    }

    else
    {

      if (v3)
      {
LABEL_10:
        v30 = objc_opt_self();
        v31 = [v30 _atomicIncrementAssertCount];
        v140[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v140);
        StaticString.description.getter();
        v32 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v33 = String._bridgeToObjectiveC()();

        v34 = [v33 lastPathComponent];

        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v38 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_10146CA70;
        *(v39 + 56) = &type metadata for Int32;
        *(v39 + 64) = &protocol witness table for Int32;
        *(v39 + 32) = v31;
        v40 = sub_1005CF000();
        *(v39 + 96) = v40;
        v41 = sub_1008B3FEC(&qword_1019F52E0, sub_1005CF000);
        *(v39 + 104) = v41;
        *(v39 + 72) = v32;
        *(v39 + 136) = &type metadata for String;
        v42 = sub_1000053B0();
        *(v39 + 112) = v35;
        *(v39 + 120) = v37;
        *(v39 + 176) = &type metadata for UInt;
        *(v39 + 144) = v42;
        *(v39 + 152) = 254;
        v43 = v140[0];
        *(v39 + 216) = v40;
        *(v39 + 224) = v41;
        *(v39 + 184) = &protocol witness table for UInt;
        *(v39 + 192) = v43;
        v44 = v32;
        v45 = v43;
        v46 = static os_log_type_t.error.getter();
        sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v39);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v47 = static os_log_type_t.error.getter();
        sub_100005404(v38, &_mh_execute_header, v47, "Tried to decode unknown RGB color space value. Falling back to unarchiving sRGB.", 80, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v48 = swift_allocObject();
        v48[2] = 8;
        v48[3] = 0;
        v48[4] = 0;
        v48[5] = 0;
        v49 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v50 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v51 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v52 = String._bridgeToObjectiveC()();

        [v30 handleFailureInFunction:v50 file:v51 lineNumber:254 isFatal:0 format:v52 args:v49];

        result = sub_1000CCD4C();
        if (result)
        {
          v54 = result;
          v55 = 0;
LABEL_28:
          sub_1008B2660(a1);
          sub_1005B981C(&qword_101A06398);
          v84 = swift_allocObject();
          *(v84 + 16) = xmmword_10146D2A0;
          *(v84 + 32) = v5;
          *(v84 + 40) = v4;
          v87 = v54;

          *(v84 + 48) = v6;
          *(v84 + 56) = v2;
LABEL_33:
          v89 = CGColorCreate(v87, (v84 + 32));

          if (v89)
          {
            v90 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCGColor:v89 colorSpace:v55];
          }

          else
          {
            v91 = objc_opt_self();
            v92 = [v91 _atomicIncrementAssertCount];
            v140[0] = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, v140);
            StaticString.description.getter();
            v93 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v94 = String._bridgeToObjectiveC()();

            v95 = [v94 lastPathComponent];

            v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v98 = v97;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v99 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146CA70;
            *(inited + 56) = &type metadata for Int32;
            *(inited + 64) = &protocol witness table for Int32;
            *(inited + 32) = v92;
            v101 = sub_1005CF000();
            *(inited + 96) = v101;
            v102 = sub_1008B3FEC(&qword_1019F52E0, sub_1005CF000);
            *(inited + 104) = v102;
            *(inited + 72) = v93;
            *(inited + 136) = &type metadata for String;
            v103 = sub_1000053B0();
            *(inited + 112) = v96;
            *(inited + 120) = v98;
            *(inited + 176) = &type metadata for UInt;
            *(inited + 184) = &protocol witness table for UInt;
            *(inited + 144) = v103;
            *(inited + 152) = 281;
            v104 = v140[0];
            *(inited + 216) = v101;
            *(inited + 224) = v102;
            *(inited + 192) = v104;
            v105 = v93;
            v106 = v104;
            v107 = static os_log_type_t.error.getter();
            sub_100005404(v99, &_mh_execute_header, v107, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v108 = static os_log_type_t.error.getter();
            sub_100005404(v99, &_mh_execute_header, v108, "Unable to create CGColor from archived color space and components. Falling back to unarchiving black.", 101, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v109 = swift_allocObject();
            v109[2] = 8;
            v109[3] = 0;
            v109[4] = 0;
            v109[5] = 0;
            v110 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v111 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v112 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v113 = String._bridgeToObjectiveC()();

            [v91 handleFailureInFunction:v111 file:v112 lineNumber:281 isFatal:0 format:v113 args:v110];

            v90 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:0 green:0.0 blue:0.0 alpha:0.0 colorSpace:1.0];
          }

          return v90;
        }

        __break(1u);
        goto LABEL_44;
      }
    }

    if ((v137 & 1) == 0)
    {
      result = sub_1000CCD4C();
      if (result)
      {
        v54 = result;
        v55 = 0;
        goto LABEL_28;
      }

      goto LABEL_46;
    }

    result = sub_1000CCE28();
    if (result)
    {
      v54 = result;
      v55 = 1;
      goto LABEL_28;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (*(a1 + 56))
  {
    v57 = *(a1 + 40);
    v56 = *(a1 + 44);
    v59 = *(a1 + 48);
    v58 = *(a1 + 52);
    if (*(a1 + 72))
    {
      v60 = objc_opt_self();

      v139 = v60;
      v61 = [v60 _atomicIncrementAssertCount];
      v140[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v140);
      StaticString.description.getter();
      v62 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v63 = String._bridgeToObjectiveC()();

      v64 = [v63 lastPathComponent];

      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v68 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v69 = swift_initStackObject();
      *(v69 + 16) = xmmword_10146CA70;
      *(v69 + 56) = &type metadata for Int32;
      *(v69 + 64) = &protocol witness table for Int32;
      *(v69 + 32) = v61;
      v70 = sub_1005CF000();
      *(v69 + 96) = v70;
      v71 = sub_1008B3FEC(&qword_1019F52E0, sub_1005CF000);
      *(v69 + 104) = v71;
      *(v69 + 72) = v62;
      *(v69 + 136) = &type metadata for String;
      v72 = sub_1000053B0();
      *(v69 + 112) = v65;
      *(v69 + 120) = v67;
      *(v69 + 176) = &type metadata for UInt;
      *(v69 + 184) = &protocol witness table for UInt;
      *(v69 + 144) = v72;
      *(v69 + 152) = 261;
      v73 = v140[0];
      *(v69 + 216) = v70;
      *(v69 + 224) = v71;
      *(v69 + 192) = v73;
      v74 = v62;
      v75 = v73;
      v76 = static os_log_type_t.error.getter();
      sub_100005404(v68, &_mh_execute_header, v76, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v69);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v77 = static os_log_type_t.error.getter();
      sub_100005404(v68, &_mh_execute_header, v77, "Should only have one kind of color model data per color data. Unarchiving CMYK.", 79, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v78 = swift_allocObject();
      v78[2] = 8;
      v78[3] = 0;
      v78[4] = 0;
      v78[5] = 0;
      v79 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v80 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v81 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v82 = String._bridgeToObjectiveC()();

      [v139 handleFailureInFunction:v80 file:v81 lineNumber:261 isFatal:0 format:v82 args:v79];
    }

    else
    {
    }

    sub_1005B981C(&qword_101A06398);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_10146CA70;
    *(v84 + 32) = v57;
    *(v84 + 40) = v56;
    *(v84 + 48) = v59;
    *(v84 + 56) = v58;
    *(v84 + 64) = v2;
    result = sub_1000CCC9C();
    if (!result)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v88 = result;

    sub_1008B2660(a1);
    v86 = v88;
LABEL_32:
    v87 = v86;
    v55 = 2;
    goto LABEL_33;
  }

  if (!*(a1 + 72))
  {
    sub_1008B2660(a1);
    v114 = objc_opt_self();
    v115 = [v114 _atomicIncrementAssertCount];
    v140[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v140);
    StaticString.description.getter();
    v116 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v117 = String._bridgeToObjectiveC()();

    v118 = [v117 lastPathComponent];

    v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v120;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v122 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v123 = swift_initStackObject();
    *(v123 + 16) = xmmword_10146CA70;
    *(v123 + 56) = &type metadata for Int32;
    *(v123 + 64) = &protocol witness table for Int32;
    *(v123 + 32) = v115;
    v124 = sub_1005CF000();
    *(v123 + 96) = v124;
    v125 = sub_1008B3FEC(&qword_1019F52E0, sub_1005CF000);
    *(v123 + 104) = v125;
    *(v123 + 72) = v116;
    *(v123 + 136) = &type metadata for String;
    v126 = sub_1000053B0();
    *(v123 + 112) = v119;
    *(v123 + 120) = v121;
    *(v123 + 176) = &type metadata for UInt;
    *(v123 + 184) = &protocol witness table for UInt;
    *(v123 + 144) = v126;
    *(v123 + 152) = 275;
    v127 = v140[0];
    *(v123 + 216) = v124;
    *(v123 + 224) = v125;
    *(v123 + 192) = v127;
    v128 = v116;
    v129 = v127;
    v130 = static os_log_type_t.error.getter();
    sub_100005404(v122, &_mh_execute_header, v130, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v123);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v131 = static os_log_type_t.error.getter();
    sub_100005404(v122, &_mh_execute_header, v131, "Missing color model data. Falling back to unarchiving black.", 60, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v132 = swift_allocObject();
    v132[2] = 8;
    v132[3] = 0;
    v132[4] = 0;
    v132[5] = 0;
    v133 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v134 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v135 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v136 = String._bridgeToObjectiveC()();

    [v114 handleFailureInFunction:v134 file:v135 lineNumber:275 isFatal:0 format:v136 args:v133];

    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:0 green:0.0 blue:0.0 alpha:0.0 colorSpace:1.0];
  }

  v83 = *(a1 + 64);
  sub_1005B981C(&qword_101A06398);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_10146BDE0;
  *(v84 + 32) = v83;
  *(v84 + 40) = v2;

  result = sub_1000CCCF4();
  if (result)
  {
    v85 = result;

    sub_1008B2660(a1);
    v86 = v85;
    goto LABEL_32;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1008B1988(uint64_t a1, uint64_t a2)
{
  sub_1008B1C98();
  if ((static CRExtensible.== infix(_:_:)() & 1) != 0 && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20))
  {
    v4 = sub_100B3216C(*(a1 + 24), *(a2 + 24));
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1008B1A4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (!v3)
    {
      return 0;
    }

    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v34 = *(a1 + 32);
    v35 = v7;
    v36 = v8 & 1;
    v37 = HIDWORD(v8);
    v38 = v9;
    v39 = v3;
    v30 = v4;
    v31 = v5 & 1;
    v32 = HIDWORD(v5);
    v33 = v6;
    v10 = a1;
    v11 = a2;

    v12 = sub_1008B1988(&v30, &v35);

    a1 = v10;
    a2 = v11;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v13 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!v13)
    {
      return 0;
    }

    v14 = *(a1 + 40);
    v15 = *(a2 + 40);
    if (*&v14 != *&v15)
    {
      return 0;
    }

    v16 = *(&v14 + 1) == *(&v15 + 1) && COERCE_FLOAT(*(a1 + 48)) == COERCE_FLOAT(*(a2 + 48));
    if (!v16 || COERCE_FLOAT(HIDWORD(*(a1 + 48))) != COERCE_FLOAT(HIDWORD(*(a2 + 48))))
    {
      return 0;
    }

    v18 = a1;
    v19 = a2;

    v21 = sub_100B3216C(v20, v13);

    a1 = v18;
    a2 = v19;
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v23 = *(a1 + 72);
  v24 = *(a2 + 72);
  if (!v23)
  {
    if (!v24)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (!v24)
  {
    return 0;
  }

  if (COERCE_FLOAT(*(a1 + 64)) != COERCE_FLOAT(*(a2 + 64)))
  {
    return 0;
  }

  v25 = a1;
  v26 = a2;

  v27 = sub_100B3216C(v23, v24);

  a1 = v25;
  a2 = v26;
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  v28 = *(a1 + 80);
  v29 = *(a2 + 80);

  return sub_100B3216C(v28, v29);
}

unint64_t sub_1008B1C98()
{
  result = qword_101A06390;
  if (!qword_101A06390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A06390);
  }

  return result;
}

double sub_1008B1CEC@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2;
  if (a2 < 2)
  {
    goto LABEL_4;
  }

  v35 = objc_opt_self();
  LODWORD(v3) = [v35 _atomicIncrementAssertCount];
  v36 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v36);
  StaticString.description.getter();
  v6 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v9 lastPathComponent];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v11;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v14 = sub_1005CF000();
    *(inited + 96) = v14;
    v15 = sub_1008B3FEC(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v4;
    *(inited + 120) = v5;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 152;
    v17 = v36;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v4 = v17;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "Color should be converted to RGB by the time it is archived. Falling back to archiving sRGB.", 92, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    [v35 handleFailureInFunction:v23 file:v24 lineNumber:152 isFatal:0 format:v3 args:v22];

    v6 = 0;
LABEL_4:
    v25 = *(a1 + 16);
    if (v25 >= 4)
    {
      break;
    }

    LOBYTE(v36) = 1;
    switch(v25)
    {
      case 3uLL:
        v29 = 0.0;
        goto LABEL_10;
      case 0uLL:
        goto LABEL_14;
      case 1uLL:
        __break(1u);
LABEL_14:
        __break(1u);
        break;
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v26 = *(a1 + 56);
  v27 = sub_1008B2634(v26);
  v28 = v26;
  v29 = v28;
  if (v27)
  {
    v29 = 0.0;
  }

  LOBYTE(v36) = v27;
LABEL_10:
  *&v30 = *(a1 + 40);
  *&v31 = *(a1 + 32);
  *&v32 = *(a1 + 48);
  v33 = v36;
  *a3 = v29;
  *(a3 + 4) = v33;
  *(a3 + 8) = v6;
  *(a3 + 16) = v31 << 32;
  *(a3 + 24) = v30 | (v32 << 32);
  *(a3 + 32) = _swiftEmptyDictionarySingleton;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0;
  *(a3 + 80) = _swiftEmptyDictionarySingleton;
  return result;
}

double sub_1008B2170@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 CGColor];
  v5 = CGColorGetColorSpace(v4);

  if (v5 && (Model = CGColorSpaceGetModel(v5), v5, Model == kCGColorSpaceModelRGB) && (v7 = [a1 CGColor], v8 = CGColorRef.components.getter(), v7, v8))
  {
    sub_1008B1CEC(v8, [a1 colorRGBSpace], &v36);
  }

  else
  {
    v35 = objc_opt_self();
    v9 = [v35 _atomicIncrementAssertCount];
    v36 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v36);
    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v11 lastPathComponent];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v9;
    v18 = sub_1005CF000();
    *(inited + 96) = v18;
    v19 = sub_1008B3FEC(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v19;
    *(inited + 72) = v10;
    *(inited + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(inited + 112) = v13;
    *(inited + 120) = v15;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v20;
    *(inited + 152) = 134;
    v21 = v36;
    *(inited + 216) = v18;
    *(inited + 224) = v19;
    *(inited + 192) = v21;
    v22 = v10;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v25, "Asked to archive a CGColor that we can't handle. Falling back to archiving black.", 81, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v26 = swift_allocObject();
    v26[2] = 8;
    v26[3] = 0;
    v26[4] = 0;
    v26[5] = 0;
    v27 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    [v35 handleFailureInFunction:v28 file:v29 lineNumber:134 isFatal:0 format:v30 args:v27];

    sub_1008B1CEC(&off_101872B10, 0, &v36);
  }

  v32 = v41;
  v31 = v42;
  v33 = BYTE4(v36);
  *a2 = v36;
  *(a2 + 4) = v33;
  *(a2 + 8) = v37;
  *(a2 + 24) = v38;
  *(a2 + 40) = v39;
  result = *&v40;
  *(a2 + 56) = v40;
  *(a2 + 72) = v32;
  *(a2 + 80) = v31;
  return result;
}

__n128 sub_1008B26A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1008B26C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1008B270C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1008B2774()
{
  result = qword_101A063A0;
  if (!qword_101A063A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A063A0);
  }

  return result;
}

unint64_t sub_1008B27CC()
{
  result = qword_101A063A8;
  if (!qword_101A063A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A063A8);
  }

  return result;
}

unint64_t sub_1008B2824()
{
  result = qword_101A063B0;
  if (!qword_101A063B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A063B0);
  }

  return result;
}

unint64_t sub_1008B287C()
{
  result = qword_101A063B8;
  if (!qword_101A063B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A063B8);
  }

  return result;
}

unint64_t sub_1008B28D4()
{
  result = qword_101A063C0;
  if (!qword_101A063C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A063C0);
  }

  return result;
}

unint64_t sub_1008B292C()
{
  result = qword_101A063C8;
  if (!qword_101A063C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A063C8);
  }

  return result;
}

unint64_t sub_1008B2984()
{
  result = qword_101A063D0;
  if (!qword_101A063D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A063D0);
  }

  return result;
}

unint64_t sub_1008B29DC()
{
  result = qword_101A063D8;
  if (!qword_101A063D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A063D8);
  }

  return result;
}

unint64_t sub_1008B2A34()
{
  result = qword_101A063E0;
  if (!qword_101A063E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A063E0);
  }

  return result;
}

unint64_t sub_1008B2A8C()
{
  result = qword_101A063E8;
  if (!qword_101A063E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A063E8);
  }

  return result;
}

unint64_t sub_1008B2AE4()
{
  result = qword_101A063F0;
  if (!qword_101A063F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A063F0);
  }

  return result;
}

unint64_t sub_1008B2B6C()
{
  result = qword_101A06408;
  if (!qword_101A06408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A06408);
  }

  return result;
}

unint64_t sub_1008B2BC4()
{
  result = qword_101A06410;
  if (!qword_101A06410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A06410);
  }

  return result;
}

unint64_t sub_1008B2C1C()
{
  result = qword_101A06418;
  if (!qword_101A06418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A06418);
  }

  return result;
}

unint64_t sub_1008B2C74()
{
  result = qword_101A06420;
  if (!qword_101A06420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A06420);
  }

  return result;
}

unint64_t sub_1008B2CCC()
{
  result = qword_101A06428;
  if (!qword_101A06428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A06428);
  }

  return result;
}

uint64_t sub_1008B2D20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617053726F6C6F63 && a2 == 0xEA00000000006563;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6579570 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1008B2EDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A065A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1008B43C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  sub_1005B981C(&qword_101A065B0);
  v20 = 0;
  sub_1008B4CF4(&qword_101A065B8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v21;
  v10 = v22;
  LOBYTE(v21) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v21) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  LOBYTE(v21) = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  sub_1005B981C(&unk_101A0D960);
  v20 = 4;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  result = sub_100005070(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 12) = v12;
  *(a2 + 16) = v14;
  *(a2 + 20) = v16;
  *(a2 + 24) = v17;
  return result;
}

uint64_t sub_1008B3198(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1851881827 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746E6567616DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C6C6579 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}
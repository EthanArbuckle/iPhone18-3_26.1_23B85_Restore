uint64_t sub_10016CA58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v3 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v3 - 8);
  v5 = &v52 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  DebugMetricsEvent.date.getter();
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v54 = a1;
    (*(v7 + 32))(v9, v5, v6);
    v53 = v6;
    if (qword_10096D1A8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Date.FormatStyle();
    sub_1000056A8(v36, qword_100976960);
    sub_100170A04(&qword_100976B20, &type metadata accessor for Date.FormatStyle);
    Date.formatted<A>(_:)();
    v56 = v58;
    v57 = v59;
    sub_10007FED4();
    v37 = Text.init<A>(_:)();
    v39 = v38;
    v52 = v9;
    v41 = v40;
    static Font.footnote.getter();
    v42 = Text.font(_:)();
    v44 = v43;
    v46 = v45;

    sub_100170894(v37, v39, v41 & 1);

    LODWORD(v58) = static HierarchicalShapeStyle.secondary.getter();
    v10 = Text.foregroundStyle<A>(_:)();
    v11 = v47;
    LOBYTE(v37) = v48;
    v13 = v49;
    sub_100170894(v42, v44, v46 & 1);

    (*(v7 + 8))(v52, v53);
    v12 = v37 & 1;
    sub_100170840(v10, v11, v37 & 1);

    v14 = DebugMetricsEvent.topic.getter();
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_7:
    v26 = 0;
    v28 = 0;
    v35 = 0;
    v32 = 0;
    goto LABEL_8;
  }

  sub_10002B894(v5, &qword_100979710);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = DebugMetricsEvent.topic.getter();
  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_3:
  v58 = v14;
  v59 = v15;
  sub_10007FED4();
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  static Font.footnote.getter();
  v21 = Text.font(_:)();
  v53 = v11;
  v54 = v10;
  v23 = v22;
  v25 = v24;
  v52 = v13;

  sub_100170894(v16, v18, v20 & 1);

  LODWORD(v58) = static HierarchicalShapeStyle.secondary.getter();
  v26 = Text.foregroundStyle<A>(_:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v25 & 1;
  v34 = v23;
  v11 = v53;
  v10 = v54;
  sub_100170894(v21, v34, v33);
  v13 = v52;

  v35 = v30 & 1;
  sub_100170840(v26, v28, v35);

LABEL_8:
  sub_1001707FC(v10, v11, v12, v13);
  sub_1001707FC(v26, v28, v35, v32);
  sub_100170850(v10, v11, v12, v13);
  sub_100170850(v26, v28, v35, v32);
  v50 = v55;
  *v55 = v10;
  v50[1] = v11;
  v50[2] = v12;
  v50[3] = v13;
  v50[4] = v26;
  v50[5] = v28;
  v50[6] = v35;
  v50[7] = v32;
  sub_100170850(v26, v28, v35, v32);
  return sub_100170850(v10, v11, v12, v13);
}

uint64_t sub_10016CF3C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v35 = sub_10002849C(&qword_100976BF0);
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = v30 - v3;
  v36 = sub_10002849C(&qword_100976BF8);
  __chkstk_darwin(v36);
  v38 = v30 - v5;
  v32 = sub_10002849C(&qword_100976C00);
  __chkstk_darwin(v32);
  v33 = v30 - v6;
  v37 = sub_10002849C(&qword_100976C08);
  __chkstk_darwin(v37);
  v34 = v30 - v7;
  v8 = sub_10002849C(&qword_100976C10);
  __chkstk_darwin(v8);
  v10 = v30 - v9;
  v11 = sub_10002849C(&qword_100976C18);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v30 - v13;
  v31 = sub_10002849C(&qword_100976C20);
  __chkstk_darwin(v31);
  v16 = v30 - v15;
  sub_100031660((v1 + 2), &v41, &unk_1009711D0);
  if (*(&v42[0] + 1))
  {
    sub_10002849C(&qword_100976C58);
    if (swift_dynamicCast())
    {
      v17 = v40;
      if (*(v40 + 16))
      {
        sub_100170F40(v1, &v41);
        v18 = swift_allocObject();
        v30[1] = v30;
        v19 = v42[0];
        *(v18 + 16) = v41;
        *(v18 + 32) = v19;
        *(v18 + 48) = v42[1];
        *(v18 + 64) = v17;
        __chkstk_darwin(v18);
        v30[-2] = v1;
        sub_10002849C(&qword_100976C60);
        sub_100170E30();
        sub_100170FEC();
        DisclosureGroup.init(content:label:)();
        (*(v12 + 16))(v10, v14, v11);
        swift_storeEnumTagMultiPayload();
        sub_100097060(&qword_100976C38, &qword_100976C18);
        _ConditionalContent<>.init(storage:)();
        (*(v12 + 8))(v14, v11);
      }

      else
      {

        v27 = *v1;
        v28 = v1[1];
        sub_100031660((v1 + 2), v42, &unk_1009711D0);
        *&v41 = v27;
        *(&v41 + 1) = v28;
        sub_100170C88(&v41, v10);
        swift_storeEnumTagMultiPayload();
        sub_100097060(&qword_100976C38, &qword_100976C18);
        sub_100170E30();

        _ConditionalContent<>.init(storage:)();
        sub_100170E84(&v41);
      }

      sub_100031660(v16, v33, &qword_100976C20);
      swift_storeEnumTagMultiPayload();
      sub_100170D78();
      sub_100097060(&qword_100976C48, &qword_100976BF0);
      v29 = v34;
      _ConditionalContent<>.init(storage:)();
      sub_100031660(v29, v38, &qword_100976C08);
      swift_storeEnumTagMultiPayload();
      sub_100170CC0();
      sub_100170E30();
      _ConditionalContent<>.init(storage:)();
      sub_10002B894(v29, &qword_100976C08);
      return sub_10002B894(v16, &qword_100976C20);
    }
  }

  else
  {
    sub_10002B894(&v41, &unk_1009711D0);
  }

  sub_100031660((v1 + 2), &v41, &unk_1009711D0);
  if (*(&v42[0] + 1))
  {
    sub_10002849C(&qword_10096FE78);
    if (swift_dynamicCast())
    {
      v20 = v40;
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      __chkstk_darwin(v21);
      v30[-2] = v1;
      sub_10002849C(&qword_100976BB0);
      sub_100170E30();
      sub_100170EBC();
      DisclosureGroup.init(content:label:)();
      v22 = v35;
      (*(v2 + 16))(v33, v4, v35);
      swift_storeEnumTagMultiPayload();
      sub_100170D78();
      sub_100097060(&qword_100976C48, &qword_100976BF0);
      v23 = v34;
      _ConditionalContent<>.init(storage:)();
      sub_100031660(v23, v38, &qword_100976C08);
      swift_storeEnumTagMultiPayload();
      sub_100170CC0();
      _ConditionalContent<>.init(storage:)();
      sub_10002B894(v23, &qword_100976C08);
      return (*(v2 + 8))(v4, v22);
    }
  }

  else
  {
    sub_10002B894(&v41, &unk_1009711D0);
  }

  v25 = *v1;
  v26 = v1[1];
  sub_100031660((v1 + 2), v42, &unk_1009711D0);
  *&v41 = v25;
  *(&v41 + 1) = v26;
  sub_100170C88(&v41, v38);
  swift_storeEnumTagMultiPayload();
  sub_100170CC0();
  sub_100170E30();

  _ConditionalContent<>.init(storage:)();
  return sub_100170E84(&v41);
}

uint64_t sub_10016D8C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10002849C(&qword_100976C90);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - v8;
  v31 = sub_10002849C(&qword_100976C98);
  __chkstk_darwin(v31);
  v32 = v28 - v10;
  v33 = sub_10002849C(&qword_100976C78);
  v30 = *(v33 - 8);
  __chkstk_darwin(v33);
  v29 = v28 - v11;
  if (*a1 == 0x6973736572706D69 && a1[1] == 0xEB00000000736E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v28[2] = v6;
    v12 = sub_1006E2FBC(a2);
    v13 = *(v12 + 16);
    v28[0] = v12;
    v28[1] = a3;
    if (v13)
    {
      v14 = v12 + 32;
      v15 = _swiftEmptyArrayStorage;
      do
      {
        sub_100031660(v14, v38, &qword_100976CB0);
        v34 = v38[0];
        v35 = v38[1];
        v36 = v39;
        sub_10002849C(&qword_10096FE78);
        if (swift_dynamicCast())
        {
          v16 = v37;
          if (v37 != 0.0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_100034954(0, *(v15 + 2) + 1, 1, v15);
            }

            v18 = *(v15 + 2);
            v17 = *(v15 + 3);
            if (v18 >= v17 >> 1)
            {
              v15 = sub_100034954((v17 > 1), v18 + 1, 1, v15);
            }

            *(v15 + 2) = v18 + 1;
            v15[v18 + 4] = v16;
          }
        }

        v14 += 40;
        --v13;
      }

      while (v13);
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    v19 = sub_1001DABA8(v15);
    v21 = v20;
    *&v38[0] = v28[0];
    swift_getKeyPath();
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1001711D4;
    *(v23 + 24) = v22;
    sub_10002849C(&qword_100976CA0);
    sub_100097060(&qword_100976CA8, &qword_100976CA0);
    sub_1001710FC();
    v24 = v29;
    ForEach<>.init(_:id:content:)();
    v25 = v30;
    v26 = v33;
    (*(v30 + 16))(v32, v24, v33);
    swift_storeEnumTagMultiPayload();
    sub_100171078();
    sub_100171150();
    _ConditionalContent<>.init(storage:)();
    return (*(v25 + 8))(v24, v26);
  }

  else
  {
    *&v38[0] = sub_1006E2FBC(a2);
    swift_getKeyPath();
    sub_10002849C(&qword_100976CA0);
    sub_100097060(&qword_100976CA8, &qword_100976CA0);
    sub_100170BF0();
    ForEach<>.init(_:id:content:)();
    (*(v7 + 16))(v32, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_100171078();
    sub_100171150();
    _ConditionalContent<>.init(storage:)();
    return (*(v7 + 8))(v9, v6);
  }
}

unint64_t sub_10016DE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000073E8(a2, v10);
  sub_10002849C(&qword_10096FE78);
  if (swift_dynamicCast())
  {
    v5 = v9;
    if (!*(v9 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = sub_100398EF4(_swiftEmptyArrayStorage);
    if (!*(v5 + 16))
    {
LABEL_7:
      memset(v10, 0, sizeof(v10));
      goto LABEL_8;
    }
  }

  v6 = sub_1000072B8(0xD000000000000012, 0x8000000100803E90);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1000073E8(*(v5 + 56) + 32 * v6, v10);
LABEL_8:
  sub_1001DAEA0(v10, a4);
  sub_10002B894(v10, &unk_1009711D0);
  return v5;
}

uint64_t sub_10016DF9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + 8;
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 93;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  result = sub_1000073E8(v3, (a2 + 2));
  *a2 = 91;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_10016E034(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_100035410(*(a1 + 16), 0);
  v4 = sub_10039FBF4(&v6, v3 + 4, v2, a1);

  sub_100081680();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = _swiftEmptyArrayStorage;
  }

  v6 = v3;
  sub_10016FC88(&v6);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  sub_10002849C(&unk_100977380);
  sub_100097060(&qword_100976BC8, &unk_100977380);
  sub_100170BF0();
  return ForEach<>.init(_:id:content:)();
}

double sub_10016E1E8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*(a2 + 16))
  {

    v7 = sub_1000072B8(v4, v5);
    if (v8)
    {
      sub_1000073E8(*(a2 + 56) + 32 * v7, &v11);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  result = *&v11;
  v10 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v10;
  return result;
}

uint64_t sub_10016E27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  LOBYTE(v19[0]) = 1;
  sub_10016E410(v16);
  *&v15[7] = v16[0];
  *&v15[23] = v16[1];
  *&v15[39] = v16[2];
  *&v15[55] = v16[3];
  v5 = v19[0];
  sub_100031660(a1 + 16, v12, &unk_1009711D0);
  v13 = 0;
  v14 = 1;
  sub_100171448(v12, v11);
  v17[0] = v4;
  v17[1] = 0;
  v18[0] = v5;
  *&v18[1] = *v15;
  *&v18[17] = *&v15[16];
  *&v18[33] = *&v15[32];
  *&v18[49] = *&v15[48];
  *&v18[64] = *&v15[63];
  v6 = *&v15[63];
  v7 = *v18;
  *a2 = v4;
  *(a2 + 16) = v7;
  v8 = *&v18[16];
  v9 = *&v18[48];
  *(a2 + 48) = *&v18[32];
  *(a2 + 64) = v9;
  *(a2 + 32) = v8;
  *(a2 + 80) = v6;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  sub_100171448(v11, a2 + 104);
  sub_100031660(v17, v19, &qword_100976CC8);
  sub_100171480(v12);
  sub_100171480(v11);
  v19[0] = v4;
  v19[1] = 0;
  v20 = v5;
  v22 = *&v15[16];
  v23 = *&v15[32];
  *v24 = *&v15[48];
  *&v24[15] = *&v15[63];
  v21 = *v15;
  return sub_10002B894(v19, &qword_100976CC8);
}

uint64_t sub_10016E410@<X0>(uint64_t a1@<X8>)
{
  sub_10007FED4();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v25 = Text.bold()();
  v26 = v7;
  v9 = v8;
  v24 = v10;
  sub_100170894(v2, v4, v6 & 1);

  sub_10016E5DC();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  static HierarchicalShapeStyle.secondary.getter();
  v16 = Text.foregroundStyle<A>(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_100170894(v11, v13, v15 & 1);

  *a1 = v25;
  *(a1 + 8) = v9;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v26;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  *(a1 + 48) = v20 & 1;
  *(a1 + 56) = v22;
  sub_100170840(v25, v9, v24 & 1);

  sub_100170840(v16, v18, v20 & 1);

  sub_100170894(v16, v18, v20 & 1);

  sub_100170894(v25, v9, v24 & 1);
}

uint64_t sub_10016E5DC()
{
  sub_100031660(v0, v5, &unk_1009711D0);
  if (v6)
  {
    if (swift_dynamicCast())
    {

      return 0x676E69727453;
    }
  }

  else
  {
    sub_10002B894(v5, &unk_1009711D0);
  }

  sub_100031660(v0, v5, &unk_1009711D0);
  if (v6)
  {
    sub_100005744(0, &qword_10097FB80);
    if (swift_dynamicCast())
    {
      v2 = CFGetTypeID(cf);
      if (CFBooleanGetTypeID() == v2)
      {

        return 0x6E61656C6F6F42;
      }

      else if (CFNumberGetTypeID() == v2)
      {
        IsFloatType = CFNumberIsFloatType(cf);

        if (IsFloatType)
        {
          return 0x656C62756F44;
        }

        else
        {
          return 7630409;
        }
      }

      else
      {

        return 0x7265626D754ELL;
      }
    }
  }

  else
  {
    sub_10002B894(v5, &unk_1009711D0);
  }

  sub_100031660(v0, v5, &unk_1009711D0);
  if (v6)
  {
    sub_10002849C(&qword_100976C58);
    if (swift_dynamicCast())
    {

      return 0x7961727241;
    }
  }

  else
  {
    sub_10002B894(v5, &unk_1009711D0);
  }

  sub_100031660(v0, v5, &unk_1009711D0);
  if (v6)
  {
    sub_10002849C(&qword_10096FE78);
    if (swift_dynamicCast())
    {

      return 0x7463656A624FLL;
    }
  }

  else
  {
    sub_10002B894(v5, &unk_1009711D0);
  }

  result = 0x6E776F6E6B6E753CLL;
  if (*(v0 + 24))
  {
    sub_100031660(v0, v5, &unk_1009711D0);
    if (v6)
    {
      sub_100005744(0, &qword_100976CD8);
      if (swift_dynamicCast())
      {

        return 0x6E776F6E6B6E753CLL;
      }
    }

    else
    {
      sub_10002B894(v5, &unk_1009711D0);
    }

    v5[0] = sub_10002849C(&unk_1009711D0);
    sub_10002849C(&qword_100976CD0);
    return String.init<A>(describing:)();
  }

  return result;
}

uint64_t sub_10016E984@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return sub_10016E27C(v1, a1 + 24);
}

uint64_t sub_10016E9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10002849C(&qword_100976CE0);
  v11 = __chkstk_darwin(v8);
  v13 = &v43 - v12;
  if (a1)
  {
    v46 = v10;
    v47 = v9;
    v48 = a4;
    *v13 = static HorizontalAlignment.center.getter();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v14 = *(a1 + 16);
    if (!v14)
    {
      v15 = _swiftEmptyArrayStorage;
      goto LABEL_9;
    }

    v44 = a2;
    v45 = a3;
    v15 = sub_100035410(v14, 0);
    v16 = sub_10039FBF4(&v49, v15 + 4, v14, a1);

    sub_100081680();
    if (v16 == v14)
    {
      a2 = v44;
      a3 = v45;
LABEL_9:
      v49 = v15;
      sub_10016FC88(&v49);
      sub_10002849C(&qword_100976CE8);
      swift_getKeyPath();
      v19 = swift_allocObject();
      v19[2] = a1;
      v19[3] = a2;
      v19[4] = a3;

      sub_10002849C(&unk_100977380);
      sub_10002849C(&qword_100976CF0);
      sub_100097060(&qword_100976BC8, &unk_100977380);
      sub_100097060(&qword_100976CF8, &qword_100976CF0);
      ForEach<>.init(_:id:content:)();
      v20 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = &v13[*(sub_10002849C(&qword_100976D00) + 36)];
      *v29 = v20;
      *(v29 + 1) = v22;
      *(v29 + 2) = v24;
      *(v29 + 3) = v26;
      *(v29 + 4) = v28;
      v29[40] = 0;
      v30 = static Edge.Set.all.getter();
      v31 = &v13[*(sub_10002849C(&qword_100976D08) + 36)];
      *v31 = 1;
      v31[8] = v30;
      v32 = v47;
      v33 = &v13[*(v47 + 36)];
      v34 = *(type metadata accessor for RoundedRectangle() + 20);
      v35 = enum case for RoundedCornerStyle.continuous(_:);
      v36 = type metadata accessor for RoundedCornerStyle();
      (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
      __asm { FMOV            V0.2D, #8.0 }

      *v33 = _Q0;
      *&v33[*(sub_10002849C(&qword_100976D10) + 36)] = 256;
      v42 = v48;
      sub_100171518(v13, v48);
      return (*(v46 + 56))(v42, 0, 1, v32);
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v17 = *(v10 + 56);

    return v17(a4, 1, 1, v11);
  }

  return result;
}

uint64_t sub_10016EE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v26[0] = a1;
  v26[1] = a2;
  sub_10007FED4();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v14 = Text.bold()();
  v16 = v15;
  v21 = v17;
  v19 = v18;
  sub_100170894(v9, v11, v13 & 1);

  sub_10016EF7C(a1, a2, a3, a4, a5, v26);
  v26[4] = 3;
  v27 = 0;
  sub_100171448(v26, v25);
  *a6 = v14;
  *(a6 + 8) = v16;
  *(a6 + 16) = v21 & 1;
  *(a6 + 24) = v19;
  *(a6 + 32) = 0x4030000000000000;
  *(a6 + 40) = 0;
  sub_100171448(v25, a6 + 48);
  sub_100170840(v14, v16, v21 & 1);

  sub_100171480(v26);
  sub_100171480(v25);
  sub_100170894(v14, v16, v21 & 1);
}

double sub_10016EF7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000100803E90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && a3 && *(a3 + 16) && (v12 = sub_1000072B8(a1, a2), (v13))
  {
    sub_1000073E8(*(a3 + 56) + 32 * v12, v21);
    sub_100056164(v21, v22);
    if (a5)
    {
      *&v21[0] = 0;
      *(&v21[0] + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v14._countAndFlagsBits = 10272;
      v14._object = 0xE200000000000000;
      String.append(_:)(v14);
      v15._countAndFlagsBits = a4;
      v15._object = a5;
      String.append(_:)(v15);
      v16._countAndFlagsBits = 41;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);
      v17 = v21[0];
      *(a6 + 24) = &type metadata for String;
      *a6 = v17;
      sub_100007000(v22);
      return result;
    }

    sub_100007000(v22);
    if (!*(a3 + 16))
    {
      goto LABEL_14;
    }
  }

  else if (!a3 || !*(a3 + 16))
  {
    goto LABEL_14;
  }

  v19 = sub_1000072B8(a1, a2);
  if (v20)
  {
    sub_1000073E8(*(a3 + 56) + 32 * v19, a6);
    return result;
  }

LABEL_14:
  result = 0.0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  return result;
}

__n128 sub_10016F11C@<Q0>(uint64_t a1@<X8>)
{
  sub_100031660(v1, &v37, &unk_1009711D0);
  if (v38.n128_u64[1])
  {
    sub_10002849C(&qword_100976C58);
    if (swift_dynamicCast())
    {
      v3 = *(*&v55[0] + 16);

      *&cf = v3;
      *&v56 = dispatch thunk of CustomStringConvertible.description.getter();
      *(&v56 + 1) = v4;
      v5._countAndFlagsBits = 0x736D65746920;
      v5._object = 0xE600000000000000;
      String.append(_:)(v5);
      cf = v56;
      v49.n128_u64[0] = 0;
      v49.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v50) = 0;

      _ConditionalContent<>.init(storage:)();
      v47 = v58;
      v46 = 0;
      v59[18] = 0;
      sub_10002849C(&qword_100976D90);
      sub_10002849C(&qword_100976DA0);
      sub_1001719A8();
      sub_100171A24();
      _ConditionalContent<>.init(storage:)();
      v57 = v42;
      v58 = v43;
      *v59 = *v44;
      *&v59[15] = *&v44[15];
      v56 = v41;
LABEL_8:
      LOBYTE(v53) = 0;
      v59[19] = 0;
      sub_10002849C(&qword_100976D78);
      sub_10017191C();
      _ConditionalContent<>.init(storage:)();

      goto LABEL_23;
    }
  }

  else
  {
    sub_10002B894(&v37, &unk_1009711D0);
  }

  sub_100031660(v1, &v37, &unk_1009711D0);
  if (v38.n128_u64[1])
  {
    sub_10002849C(&qword_10096FE78);
    if (swift_dynamicCast())
    {
      v6 = *(*&v55[0] + 16);

      *&cf = v6;
      *&v56 = dispatch thunk of CustomStringConvertible.description.getter();
      *(&v56 + 1) = v7;
      v8._countAndFlagsBits = 0x7379656B20;
      v8._object = 0xE500000000000000;
      String.append(_:)(v8);
      cf = v56;
      v49.n128_u64[0] = 0;
      v49.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v50) = 1;

      _ConditionalContent<>.init(storage:)();
      v47 = v58;
      v46 = 0;
      v59[18] = 0;
      sub_10002849C(&qword_100976D90);
      sub_10002849C(&qword_100976DA0);
      sub_1001719A8();
      sub_100171A24();
      _ConditionalContent<>.init(storage:)();
      v58 = v43;
      *v59 = *v44;
      *&v59[15] = *&v44[15];
      v56 = v41;
      v57 = v42;
      goto LABEL_8;
    }
  }

  else
  {
    sub_10002B894(&v37, &unk_1009711D0);
  }

  sub_100031660(v1, &v56, &unk_1009711D0);
  if (v57.n128_u64[1])
  {
    sub_100005744(0, &qword_10097FB80);
    if (swift_dynamicCast())
    {
      v9 = cf;
      v10 = CFGetTypeID(cf);
      v36 = v9;
      if (CFBooleanGetTypeID() == v10)
      {
        v11 = [v9 BOOLValue];
        if (v11)
        {
          v12 = 1702195828;
        }

        else
        {
          v12 = 0x65736C6166;
        }

        if (v11)
        {
          v13 = 0xE400000000000000;
        }

        else
        {
          v13 = 0xE500000000000000;
        }

        KeyPath = swift_getKeyPath();
        *&cf = v12;
        *(&cf + 1) = v13;
        v49.n128_u64[0] = 0;
        v49.n128_u64[1] = _swiftEmptyArrayStorage;
        *&v50 = KeyPath;
        v15 = 2;
      }

      else
      {
        v27 = [v9 stringValue];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = swift_getKeyPath();
        *&cf = v28;
        *(&cf + 1) = v30;
        v49.n128_u64[0] = 0;
        v49.n128_u64[1] = _swiftEmptyArrayStorage;
        *&v50 = v31;
        v15 = 258;
      }

      WORD4(v50) = v15;
      sub_10002849C(&qword_100976DC0);
      sub_100171B34();
      _ConditionalContent<>.init(storage:)();
      v47 = BYTE9(v58);
      v46 = 0;
      v59[17] = 0;
      v32 = v56;
      v33 = v57.n128_u8[0];
      v34 = v57.n128_u8[0];
      v35 = v56;
      sub_100171CA4(v56, *(&v56 + 1), v57.n128_i8[0]);
      sub_100171CA4(v32, *(&v32 + 1), v33);
      sub_10002849C(&qword_100976DB0);
      sub_10002849C(&qword_100976DE0);
      sub_100171AB0();
      sub_100171BEC();
      _ConditionalContent<>.init(storage:)();
      v58 = v50;
      *v59 = v51;
      *&v59[16] = v52;
      v56 = cf;
      v57 = v49;
      LOBYTE(v53) = 1;
      v59[18] = 1;
      sub_10002849C(&qword_100976D90);
      sub_10002849C(&qword_100976DA0);
      sub_1001719A8();
      sub_100171A24();
      _ConditionalContent<>.init(storage:)();
      v43 = v39;
      *v44 = *v40;
      *&v44[15] = *&v40[15];
      v41 = v37;
      v42 = v38;
      v58 = v39;
      *v59 = *v40;
      *&v59[15] = *&v40[15];
      v56 = v37;
      v57 = v38;
      LOBYTE(v55[0]) = 0;
      v59[19] = 0;
      sub_100031660(&v41, &cf, &qword_100976D78);
      sub_10002849C(&qword_100976D78);
      sub_10017191C();
      _ConditionalContent<>.init(storage:)();
      sub_100171CEC(v35, *(&v32 + 1), v34);
      sub_10002B894(&v41, &qword_100976D78);

      sub_100171CEC(v35, *(&v32 + 1), v34);
      v58 = v50;
      *v59 = v51;
      *&v59[16] = v52;
      v24 = cf;
      v23 = v49;
      goto LABEL_24;
    }
  }

  else
  {
    sub_10002B894(&v56, &unk_1009711D0);
  }

  sub_100031660(v1, &v53, &unk_1009711D0);
  if (!v54)
  {
    sub_10002B894(&v53, &unk_1009711D0);
    LOBYTE(v41) = 0;
    LOBYTE(v37) = 1;
    cf = xmmword_1007BB620;
    v49.n128_u8[0] = 0;
    v49.n128_u64[1] = _swiftEmptyArrayStorage;
    HIBYTE(v52) = 1;
    sub_10002849C(&qword_100976D78);
    sub_10017191C();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_25;
  }

  sub_100056164(&v53, v55);
  sub_1000073E8(v55, &v56);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  v19 = swift_getKeyPath();
  v20 = *(v1 + 32);
  v21 = *(v1 + 40);
  v22 = swift_getKeyPath();
  LOBYTE(cf) = v21;
  *&v37 = v16;
  *(&v37 + 1) = v18;
  v38.n128_u8[0] = 0;
  v38.n128_u64[1] = _swiftEmptyArrayStorage;
  *&v39 = v19;
  BYTE8(v39) = 2;
  *v40 = v22;
  *&v40[8] = v20;
  v40[16] = v21;
  v58 = v39;
  *v59 = *v40;
  v59[16] = v21;
  v56 = v37;
  v57 = v38;
  v45 = 1;
  v59[17] = 1;
  sub_100031660(&v37, &cf, &qword_100976DE0);
  sub_10002849C(&qword_100976DB0);
  sub_10002849C(&qword_100976DE0);
  sub_100171AB0();
  sub_100171BEC();
  _ConditionalContent<>.init(storage:)();
  v58 = v50;
  *v59 = v51;
  *&v59[16] = v52;
  v56 = cf;
  v57 = v49;
  v46 = 1;
  v59[18] = 1;
  sub_10002849C(&qword_100976D90);
  sub_10002849C(&qword_100976DA0);
  sub_1001719A8();
  sub_100171A24();
  _ConditionalContent<>.init(storage:)();
  v58 = v43;
  *v59 = *v44;
  *&v59[15] = *&v44[15];
  v56 = v41;
  v57 = v42;
  v47 = 0;
  v59[19] = 0;
  sub_10002849C(&qword_100976D78);
  sub_10017191C();
  _ConditionalContent<>.init(storage:)();
  sub_10002B894(&v37, &qword_100976DE0);
  sub_100007000(v55);
LABEL_23:
  v58 = v50;
  *v59 = v51;
  *&v59[16] = v52;
  v24 = cf;
  v23 = v49;
LABEL_24:
  v56 = v24;
  v57 = v23;
LABEL_25:
  v25 = *v59;
  *(a1 + 32) = v58;
  *(a1 + 48) = v25;
  *(a1 + 64) = *&v59[16];
  result = v57;
  *a1 = v56;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10016FBEC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10016FC3C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

Swift::Int sub_10016FC88(double **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002B6F3C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_10016FCF4(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10016FCF4(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 2) = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10016FEBC(v7, v8, a1, v4);
      v6[2] = 0.0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10016FDEC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10016FDEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10016FEBC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1002B6D90(v8);
      v8 = result;
    }

    v85 = v8 + 2;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[2 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_100170498((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100034940(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100034940((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[2 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[2 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[2 * v44 + 4];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[2 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[2 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = v8[2 * v9 + 4];
        v83 = v8[2 * v44 + 5];
        sub_100170498((*a3 + 16 * *&v82), (*a3 + 16 * *&v8[2 * v44 + 4]), (*a3 + 16 * *&v83), v43);
        if (v5)
        {
        }

        if (*&v83 < *&v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1002B6D90(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[2 * v9];
        v84[4] = v82;
        v84[5] = v83;
        result = sub_1002B6D04(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[2 * v41 + 4];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[2 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[2 * v44 + 4];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_100170498(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

unint64_t sub_1001706C0()
{
  result = qword_100976AE0;
  if (!qword_100976AE0)
  {
    sub_10002D1A8(&qword_100976AD0);
    sub_100170744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976AE0);
  }

  return result;
}

unint64_t sub_100170744()
{
  result = qword_100976AE8;
  if (!qword_100976AE8)
  {
    sub_10002D1A8(&qword_100976AF0);
    sub_100097060(&qword_100976AF8, &qword_100976B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976AE8);
  }

  return result;
}

uint64_t sub_1001707FC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100170840(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100170840(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100170850(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100170894(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100170894(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1001708B4()
{
  result = qword_100976B78;
  if (!qword_100976B78)
  {
    sub_10002D1A8(&qword_100976B40);
    sub_10002D1A8(&qword_100976B38);
    type metadata accessor for PlainListStyle();
    sub_100097060(&qword_100976B68, &qword_100976B38);
    swift_getOpaqueTypeConformance2();
    sub_100097060(&qword_100976B80, &qword_100976B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976B78);
  }

  return result;
}

uint64_t sub_100170A04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100170A4C(uint64_t a1)
{
  v2 = type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100170AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEventDetailView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100170B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEventDetailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100170B70@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for DebugMetricsEventDetailView(0);

  return sub_10016B3FC(a1, a2);
}

unint64_t sub_100170BF0()
{
  result = qword_100976BD0;
  if (!qword_100976BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976BD0);
  }

  return result;
}

uint64_t sub_100170C44(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_100170CC0()
{
  result = qword_100976C28;
  if (!qword_100976C28)
  {
    sub_10002D1A8(&qword_100976C08);
    sub_100170D78();
    sub_100097060(&qword_100976C48, &qword_100976BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976C28);
  }

  return result;
}

unint64_t sub_100170D78()
{
  result = qword_100976C30;
  if (!qword_100976C30)
  {
    sub_10002D1A8(&qword_100976C20);
    sub_100097060(&qword_100976C38, &qword_100976C18);
    sub_100170E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976C30);
  }

  return result;
}

unint64_t sub_100170E30()
{
  result = qword_100976C40;
  if (!qword_100976C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976C40);
  }

  return result;
}

unint64_t sub_100170EBC()
{
  result = qword_100976C50;
  if (!qword_100976C50)
  {
    sub_10002D1A8(&qword_100976BB0);
    sub_100170BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976C50);
  }

  return result;
}

uint64_t sub_100170F88@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v4 = v3[1];
  sub_100031660((v3 + 2), (a1 + 2), &unk_1009711D0);
  *a1 = v5;
  a1[1] = v4;
}

unint64_t sub_100170FEC()
{
  result = qword_100976C68;
  if (!qword_100976C68)
  {
    sub_10002D1A8(&qword_100976C60);
    sub_100171078();
    sub_100171150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976C68);
  }

  return result;
}

unint64_t sub_100171078()
{
  result = qword_100976C70;
  if (!qword_100976C70)
  {
    sub_10002D1A8(&qword_100976C78);
    sub_1001710FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976C70);
  }

  return result;
}

unint64_t sub_1001710FC()
{
  result = qword_100976C80;
  if (!qword_100976C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976C80);
  }

  return result;
}

unint64_t sub_100171150()
{
  result = qword_100976C88;
  if (!qword_100976C88)
  {
    sub_10002D1A8(&qword_100976C90);
    sub_100170BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976C88);
  }

  return result;
}

uint64_t sub_1001711DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1 + 1);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_100171220(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10017127C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001712E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100171328(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100171384()
{
  result = qword_100976CB8;
  if (!qword_100976CB8)
  {
    sub_10002D1A8(&qword_100976CC0);
    sub_100170CC0();
    sub_100170E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976CB8);
  }

  return result;
}

uint64_t sub_1001714B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *a1;
  v8 = a1[1];
  *a2 = static VerticalAlignment.firstTextBaseline.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_10016EE24(v7, v8, v4, v5, v6, a2 + 24);
}

uint64_t sub_100171518(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100976CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100171588(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001715E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_100171654()
{
  result = qword_100976D28;
  if (!qword_100976D28)
  {
    sub_10002D1A8(&qword_100976D30);
    sub_1001716D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976D28);
  }

  return result;
}

unint64_t sub_1001716D8()
{
  result = qword_100976D38;
  if (!qword_100976D38)
  {
    sub_10002D1A8(&qword_100976CE0);
    sub_100171790();
    sub_100097060(&qword_100976D70, &qword_100976D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976D38);
  }

  return result;
}

unint64_t sub_100171790()
{
  result = qword_100976D40;
  if (!qword_100976D40)
  {
    sub_10002D1A8(&qword_100976D08);
    sub_100171848();
    sub_100097060(&qword_100976D60, &qword_100976D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976D40);
  }

  return result;
}

unint64_t sub_100171848()
{
  result = qword_100976D48;
  if (!qword_100976D48)
  {
    sub_10002D1A8(&qword_100976D00);
    sub_100097060(&qword_100976D50, &qword_100976D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976D48);
  }

  return result;
}

unint64_t sub_10017191C()
{
  result = qword_100976D80;
  if (!qword_100976D80)
  {
    sub_10002D1A8(&qword_100976D78);
    sub_1001719A8();
    sub_100171A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976D80);
  }

  return result;
}

unint64_t sub_1001719A8()
{
  result = qword_100976D88;
  if (!qword_100976D88)
  {
    sub_10002D1A8(&qword_100976D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976D88);
  }

  return result;
}

unint64_t sub_100171A24()
{
  result = qword_100976D98;
  if (!qword_100976D98)
  {
    sub_10002D1A8(&qword_100976DA0);
    sub_100171AB0();
    sub_100171BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976D98);
  }

  return result;
}

unint64_t sub_100171AB0()
{
  result = qword_100976DA8;
  if (!qword_100976DA8)
  {
    sub_10002D1A8(&qword_100976DB0);
    sub_100171B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976DA8);
  }

  return result;
}

unint64_t sub_100171B34()
{
  result = qword_100976DB8;
  if (!qword_100976DB8)
  {
    sub_10002D1A8(&qword_100976DC0);
    sub_100097060(&qword_100976DC8, &qword_100976DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976DB8);
  }

  return result;
}

unint64_t sub_100171BEC()
{
  result = qword_100976DD8;
  if (!qword_100976DD8)
  {
    sub_10002D1A8(&qword_100976DE0);
    sub_100171B34();
    sub_100097060(&qword_100976AF8, &qword_100976B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976DD8);
  }

  return result;
}

uint64_t sub_100171CA4(uint64_t a1, uint64_t a2, char a3)
{
  sub_100170840(a1, a2, a3 & 1);
}

uint64_t sub_100171CEC(uint64_t a1, uint64_t a2, char a3)
{
  sub_100170894(a1, a2, a3 & 1);
}

unint64_t sub_100171D34()
{
  result = qword_100976DE8;
  if (!qword_100976DE8)
  {
    sub_10002D1A8(&qword_100976DF0);
    sub_10017191C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976DE8);
  }

  return result;
}

void sub_100171DDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_isCollapsing] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_objectGraph] = a2;
  *&v3[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_presenter] = a1;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  *&v3[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_artworkLoader] = v24;

  dispatch thunk of BasePresenter.pageRenderMetrics.getter();

  ArtworkLoader.pageRenderMetrics.setter();

  v9 = &v3[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver];
  *(v9 + 3) = type metadata accessor for AppEventDetailPagePresenter();
  *(v9 + 4) = &protocol witness table for BasePresenter;
  *v9 = a1;
  v10 = objc_allocWithZone(type metadata accessor for AppEventDetailPageView());

  v11 = [v10 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_pageView] = v11;
  v12 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageTransitioningDelegate());
  v13 = a3;
  v14 = sub_1004D2B88(a3);

  *&v4[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_containerTransitioningDelegate] = v14;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
  type metadata accessor for VideoPlaybackCoordinator();
  v16 = v15;
  inject<A, B>(_:from:)();
  v17 = v24;
  v18 = v16;
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  sub_100175A94(&qword_100976E68, v19, type metadata accessor for AppEventDetailPageViewController);
  dispatch thunk of AppEventDetailPagePresenter.view.setter();
  v20 = [v18 view];

  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v21 = [v18 view];
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v21 setClipsToBounds:0];

  v22 = [v18 view];
  if (v22)
  {
    [v22 addSubview:*&v18[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_pageView]];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1001722E0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1, v7);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v6 + 8))(v9, v5);
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100175A94(&qword_100973190, 255, type metadata accessor for VideoView);
  }

  sub_100175A94(&qword_1009811D0, 255, type metadata accessor for AppEventDetailPageView);
  dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();
}

void sub_100172598(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v11);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v10 + 8))(v13, v9);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v6 + 8))(v8, v5);
    PendingPageRender.appearTime.setter();
  }

  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of BasePresenter.referrer.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  [v15 addObserver:v2 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v16 = [v14 defaultCenter];
  [v16 addObserver:v2 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v17 = v18[1];
  dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  sub_10034E624();
}

uint64_t sub_10017296C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ViewWillDisappearReason();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10002849C(&qword_1009729C8);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewWillDisappear:", a1 & 1, v14);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver + 24]);
  static ViewWillDisappearReason.inferred(for:)();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v13 + 8))(v16, v12);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    static ViewWillDisappearReason.inferred(for:)();
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v19 + 8))(v7, v20);
    PendingPageRender.DisappearTimeAndReason.init(reason:timeInterval:)();
    v17 = type metadata accessor for PendingPageRender.DisappearTimeAndReason();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    PendingPageRender.disappearTime.setter();
  }

  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();
}

void sub_100172D3C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidDisappear:", a1 & 1, v7);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v5);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v6 + 8))(v9, v5);
  v10 = *&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_pageView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    type metadata accessor for VideoView();
    sub_100175A94(&unk_1009840E0, 255, type metadata accessor for VideoView);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  else
  {
    sub_100005744(0, &qword_100973120);
    sub_1000D0150();
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  v13 = *(*(v10 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  type metadata accessor for ArtworkView();
  sub_100175A94(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
  v14 = v13;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v15 = v17[1];
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    sub_100175A94(&qword_100973190, 255, type metadata accessor for VideoView);
  }

  sub_100175A94(&qword_1009811D0, 255, type metadata accessor for AppEventDetailPageView);
  dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();
}

uint64_t sub_1001731D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewDidBecomeFullyVisible", v5);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of BasePresenter.referrer.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();
}

uint64_t sub_1001733D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewWillBecomePartiallyVisible", v5);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver + 24]);
  static ViewWillDisappearReason.inferred(for:)();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();
}

void sub_1001735EC(SEL *a1, unsigned int *a2, void (*a3)(uint64_t))
{
  v7 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v7;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, *a1, v11);
  sub_10002A400(&v7[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver], *&v7[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, *a2, v9);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v10 + 8))(v13, v9);
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v15 = v16[1];
  a3(v14);
}

id sub_100173804()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_pageView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = sub_100041CD0([v1 setFrame:{v5, v7, v9, v11}]);
    v13 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_defaultPageMargin;
    *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_defaultPageMargin] = v12;
    v14 = [v1 traitCollection];
    LOBYTE(v3) = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v3)
    {
      v15 = -*&v1[v13];
    }

    else
    {
      v15 = 0.0;
    }

    return [*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardScrollView] setScrollIndicatorInsets:{0.0, v15}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100173988(void *a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = UITraitCollection.prefersAccessibilityLayouts.getter() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    goto LABEL_12;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    dispatch thunk of AppEventDetailPagePresenter.sizeClassDidChange()();
    goto LABEL_13;
  }

  v9 = [a1 preferredContentSizeCategory];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    goto LABEL_13;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v15 = [v2 view];
  if (v15)
  {
    v16 = v15;
    [v15 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_100173C2C()
{
  v1 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400((v0 + OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver), *(v0 + OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver + 24));
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v1);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v2 + 8))(v4, v1);
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v5 = v6[1];
  dispatch thunk of VideoPlaybackCoordinator.startAutoPlayVideo()();
}

uint64_t sub_100173F20(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v10 = a1;
  }

  (*(v6 + 104))(v8, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v5);
  type metadata accessor for AppEventDetailPagePresenter();
  sub_100175A94(&qword_100976E60, 255, &type metadata accessor for AppEventDetailPagePresenter);
  MetricsPagePresenter.observe(lifecycleEvent:)();
  (*(v6 + 8))(v8, v5);
  [a1 dismissViewControllerAnimated:1 completion:0];

  return sub_10002B894(v12, &unk_1009711D0);
}

void sub_1001740D8()
{
  v1 = v0;
  v2 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v2, v4);
  type metadata accessor for AppEventDetailPagePresenter();
  sub_100175A94(&qword_100976E60, 255, &type metadata accessor for AppEventDetailPagePresenter);
  MetricsPagePresenter.observe(lifecycleEvent:)();
  (*(v3 + 8))(v6, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  aBlock[4] = sub_100175AEC;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008B67B0;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  [v9 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

uint64_t sub_1001742D8(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  result = dispatch thunk of AppEventDetailPagePresenter.lockupClickAction.getter();
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_objectGraph;
    v8 = sub_10002849C(&unk_100974490);

    BaseObjectGraph.injectIfAvailable<A>(_:)();

    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {

      return sub_10002B894(v4, &unk_100972A00);
    }

    else
    {
      v10 = *(a1 + v7);

      sub_1005F9AF4(v6, 1, v10, v4);

      return (*(v9 + 8))(v4, v8);
    }
  }

  return result;
}

id sub_100174500(uint64_t a1)
{
  v2 = v1;
  v83 = a1;
  v79 = type metadata accessor for MediaOverlayStyle();
  v75 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v77 = &v68 - v5;
  __chkstk_darwin(v6);
  v76 = &v68 - v7;
  v8 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v8 - 8);
  v74 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v68 - v11;
  v12 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v12 - 8);
  v70 = &v68 - v13;
  v14 = type metadata accessor for VideoControls();
  __chkstk_darwin(v14 - 8);
  v68 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v17 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - v18;
  v20 = type metadata accessor for VideoFillMode();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for VideoConfiguration();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v81 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = *&v1[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_pageView];
  v26 = [v1 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v27 = UITraitCollection.isSizeClassCompact.getter();
  }

  else
  {
    v27 = 0;
  }

  result = [v2 view];
  if (result)
  {
    v29 = result;
    [result bounds];

    v30 = *&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_artworkLoader];
    v31 = *&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_objectGraph];
    *(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkLoader) = v30;

    v32 = AppEventDetailPage.appEvent.getter();
    v84 = v31;
    sub_100392D28(v32, v27 & 1, v31);

    if (AppEventDetailPage.video.getter())
    {
      v33 = Video.preview.getter();
    }

    else
    {
      v33 = AppEventDetailPage.artwork.getter();
    }

    *(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mainArtwork) = v33;

    if (AppEventDetailPage.video.getter())
    {
      (*(v21 + 104))(v23, enum case for VideoFillMode.scaleAspectFill(_:), v20);
      Video.preview.getter();
      Artwork.size.getter();
      AspectRatio.init(_:_:)();

      v34 = type metadata accessor for AspectRatio();
      (*(*(v34 - 8) + 56))(v19, 0, 1, v34);
      Video.playbackControls.getter();
      Video.autoPlayPlaybackControls.getter();
      Video.canPlayFullScreen.getter();
      Video.allowsAutoPlay.getter();
      Video.looping.getter();
      v35 = v69;
      VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
      type metadata accessor for VideoViewManager();
      BaseObjectGraph.inject<A>(_:)();
      Video.playbackId.getter();
      v36 = v70;
      Video.videoUrl.getter();
      v37 = type metadata accessor for URL();
      (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
      v38 = v73;
      Video.templateMediaEvent.getter();
      v39 = v74;
      Video.templateClickEvent.getter();
      type metadata accessor for VideoView();
      sub_100175A94(&qword_100973190, 255, type metadata accessor for VideoView);
      v40 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
      sub_10002B894(v39, &unk_100973A50);
      sub_10002B894(v38, &unk_100973A50);
      sub_10002B894(v36, &qword_100982460);
      sub_10002B894(v85, &qword_10096FB90);
      sub_1003578C8();
      swift_unknownObjectWeakAssign();
      sub_10035338C();

      Video.preview.getter();
      v41 = Artwork.backgroundColor.getter();

      sub_100352F00(v41);

      (*(v71 + 8))(v35, v72);
    }

    else
    {
      sub_1003578C8();
      swift_unknownObjectWeakAssign();
      sub_10035338C();
    }

    v42 = (v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButtonActionBlock);
    v43 = *(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButtonActionBlock);
    v44 = v82;
    *v42 = sub_100175AF4;
    v42[1] = v44;
    swift_retain_n();
    sub_10001F63C(v43);

    [*(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButton) addTarget:v25 action:"didTapCloseButton:" forControlEvents:64];

    v45 = (v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureActionBlock);
    v46 = *(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureActionBlock);
    v47 = v81;
    *v45 = sub_100175A68;
    v45[1] = v47;

    sub_10001F63C(v46);
    sub_100352718();
    v48 = AppEventDetailPage.shareAction.getter();
    if (v48)
    {
      v49 = v48;
      v50 = swift_allocObject();
      *(v50 + 16) = v84;
      *(v50 + 24) = v49;

      sub_100357ABC(sub_100175A8C, v50);
    }

    else
    {
      sub_100357ABC(0, 0);
    }

    v51 = (v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureActionBlock);
    v52 = *(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureActionBlock);
    v53 = v80;
    *v51 = sub_100175A84;
    v51[1] = v53;

    sub_10001F63C(v52);
    sub_1003528B8();
    v54 = v76;
    AppEventDetailPage.mediaOverlayStyle.getter();
    v55 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v56 = v75;
    v57 = v77;
    v58 = v79;
    (*(v75 + 16))(v77, v25 + v55, v79);
    swift_beginAccess();
    (*(v56 + 24))(v25 + v55, v54, v58);
    swift_endAccess();
    sub_1003530A8();
    v59 = *(v56 + 8);
    v59(v57, v58);
    v59(v54, v58);
    v60 = v78;
    AppEventDetailPage.mediaOverlayStyle.getter();
    v61 = MediaOverlayStyle.userInterfaceStyle.getter();
    v59(v60, v58);
    v62 = *(*(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
    if (v61 == 2)
    {
      v63 = objc_opt_self();
      v64 = v62;
      v65 = [v63 whiteColor];
    }

    else
    {
      sub_100005744(0, &qword_100970180);
      v66 = v62;
      v65 = static UIColor.appTint.getter();
    }

    v67 = v65;
    [v62 setTintColor:v65];

    *(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_includeBorderInDarkMode) = AppEventDetailPage.includeBorderInDarkMode.getter() & 1;
    sub_100351E5C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001750B8()
{
  v0 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*(v1 + 104))(v3, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v0);
    type metadata accessor for AppEventDetailPagePresenter();
    sub_100175A94(&qword_100976E60, 255, &type metadata accessor for AppEventDetailPagePresenter);
    MetricsPagePresenter.observe(lifecycleEvent:)();
    (*(v1 + 8))(v3, v0);
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100175248()
{
  v0 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*(v1 + 104))(v3, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v0);
    type metadata accessor for AppEventDetailPagePresenter();
    sub_100175A94(&qword_100976E60, 255, &type metadata accessor for AppEventDetailPagePresenter);
    MetricsPagePresenter.observe(lifecycleEvent:)();
    (*(v1 + 8))(v3, v0);
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    aBlock[4] = sub_100175ADC;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008B6760;
    v7 = _Block_copy(aBlock);
    v8 = v5;

    [v8 dismissViewControllerAnimated:1 completion:v7];
    _Block_release(v7);
  }
}

uint64_t sub_100175470(uint64_t a1)
{
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_objectGraph;
  v7 = sub_10002849C(&unk_100974490);

  BaseObjectGraph.injectIfAvailable<A>(_:)();

  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10002B894(v5, &unk_100972A00);
  }

  v10 = *(v1 + v6);

  sub_1005F9AF4(a1, 1, v10, v5);

  return (*(v8 + 8))(v5, v7);
}

CGFloat sub_1001758B8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_pageView);
  [v1 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

void *sub_100175920()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_pageView) + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButton);
  v2 = v1;
  return v1;
}

id sub_100175960(char a1)
{
  *(v1 + OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_isCollapsing) = a1;
  *(*(v1 + OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_pageView) + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_isCollapsing) = a1;
  return sub_100352F9C();
}

uint64_t sub_1001759A8()
{
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of BasePresenter.referrer.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();
}

uint64_t sub_100175A94(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100175B10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FontSource();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Shelf.ContentType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_1009731F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v29 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v12 + 8))(v14, v11);
  v15 = (*(v8 + 88))(v10, v7);
  if (v15 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:) || v15 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
  {
    if (qword_10096E6B0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for StaticDimension();
    v18 = v17;
    v19 = qword_1009D2430;
    goto LABEL_9;
  }

  if (v15 == enum case for Shelf.ContentType.singleColumnList(_:) || v15 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    if (qword_10096EC98 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (v15 == enum case for Shelf.ContentType.scrollablePill(_:))
  {
    if (qword_10096EC98 == -1)
    {
LABEL_19:
      v24 = qword_1009D32B0;
      *v6 = qword_1009D32B0;
      v26 = v30;
      v25 = v31;
      (*(v30 + 104))(v6, enum case for FontSource.textStyle(_:), v31);
      a2[3] = type metadata accessor for StaticDimension();
      a2[4] = &protocol witness table for StaticDimension;
      sub_1000056E0(a2);
      v32[3] = v25;
      v32[4] = &protocol witness table for FontSource;
      v27 = sub_1000056E0(v32);
      (*(v26 + 16))(v27, v6, v25);
      v28 = v24;
      StaticDimension.init(_:scaledLike:)();
      return (*(v26 + 8))(v6, v25);
    }

LABEL_25:
    swift_once();
    goto LABEL_19;
  }

  if (v15 == enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    if (qword_10096E6D0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for StaticDimension();
    v18 = v17;
    v19 = qword_1009D2490;
LABEL_9:
    v20 = sub_1000056A8(v17, v19);
    a2[3] = v18;
    a2[4] = &protocol witness table for StaticDimension;
    v21 = sub_1000056E0(a2);
    return (*(*(v18 - 8) + 16))(v21, v20, v18);
  }

  sub_100753DA8(v29, a2);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10017604C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v116 = type metadata accessor for FontSource();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = (&v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v4 - 8);
  v108 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = &v99 - v7;
  __chkstk_darwin(v8);
  v10 = &v99 - v9;
  __chkstk_darwin(v11);
  v109 = &v99 - v12;
  __chkstk_darwin(v13);
  v15 = &v99 - v14;
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v117 = type metadata accessor for Shelf.ContentType();
  v119 = *(v117 - 8);
  __chkstk_darwin(v117);
  v105 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v106 = &v99 - v21;
  __chkstk_darwin(v22);
  v103 = &v99 - v23;
  __chkstk_darwin(v24);
  v104 = &v99 - v25;
  __chkstk_darwin(v26);
  v110 = &v99 - v27;
  __chkstk_darwin(v28);
  v111 = &v99 - v29;
  __chkstk_darwin(v30);
  v118 = &v99 - v31;
  v32 = sub_10002849C(&unk_1009731F0);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v107 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v99 - v36;
  __chkstk_darwin(v38);
  v113 = &v99 - v39;
  __chkstk_darwin(v40);
  v42 = &v99 - v41;
  __chkstk_darwin(v43);
  v45 = &v99 - v44;
  v121 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v46 = *(v33 + 8);
  v120 = v32;
  v46(v45, v32);
  if (!*(v123 + 16))
  {

    v127 = 0u;
    v128 = 0u;
    v129 = 0;
    goto LABEL_10;
  }

  v102 = v46;
  sub_10002C0AC(v123 + 32, &v124);

  sub_10002849C(&qword_100973D50);
  sub_10002849C(&unk_100980530);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    goto LABEL_10;
  }

  if (!*(&v128 + 1))
  {
LABEL_10:
    result = sub_10002B894(&v127, &unk_100992FE0);
LABEL_11:
    v55 = v122;
    v122[3] = &type metadata for Double;
    v55[4] = &protocol witness table for Double;
    *v55 = 0;
    return result;
  }

  sub_100005A38(&v127, v130);
  sub_10002A400(v130, v130[3]);
  if ((SearchAdOpportunityProviding.isSearchAd.getter() & 1) == 0)
  {
    result = sub_100007000(v130);
    goto LABEL_11;
  }

  v100 = v37;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v47 = v118;
  v48 = v120;
  ReadOnlyLens.subscript.getter();

  v49 = v42;
  v50 = v48;
  v101 = v33 + 8;
  v102(v49, v48);
  v51 = v119;
  v52 = v117;
  v53 = (*(v119 + 88))(v47, v117);
  if (v53 != enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:))
  {
    v56 = (v33 + 48);
    if (v53 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
    {
      v57 = v109;
      ShelfLayoutContext.surroundingShelves.getter();
      sub_10002B894(v10, &unk_10098FFB0);
      if ((*v56)(v57, 1, v50) == 1)
      {
        sub_10002B894(v57, &unk_10098FFB0);
        goto LABEL_31;
      }

      v58 = v100;
      (*(v33 + 32))(v100, v57, v50);
      swift_getKeyPath();
      v67 = v104;
      ReadOnlyLens.subscript.getter();

      v68 = v103;
      (*(v51 + 104))(v103, enum case for Shelf.ContentType.unifiedMessage(_:), v52);
      sub_10017720C();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v127 == v124)
      {
        v69 = *(v51 + 8);
        v69(v68, v52);
        v69(v67, v52);
      }

      else
      {
        v74 = v51;
        v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v76 = *(v74 + 8);
        v76(v68, v52);
        v76(v67, v52);
        v50 = v120;

        if ((v75 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      if ((v127 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_30:
      v102(v58, v50);
      goto LABEL_31;
    }

    v62 = v112;
    v63 = v108;
    ShelfLayoutContext.surroundingShelves.getter();
    sub_10002B894(v63, &unk_10098FFB0);
    if ((*v56)(v62, 1, v50) == 1)
    {
      sub_10002B894(v62, &unk_10098FFB0);
LABEL_40:
      v94 = v114;
      *v114 = UIFontTextStyleBody;
      v95 = v115;
      v96 = v116;
      (*(v115 + 104))(v94, enum case for FontSource.textStyle(_:), v116);
      v125 = type metadata accessor for StaticDimension();
      v126 = &protocol witness table for StaticDimension;
      sub_1000056E0(&v124);
      *(&v128 + 1) = v96;
      v129 = &protocol witness table for FontSource;
      v97 = sub_1000056E0(&v127);
      (*(v95 + 16))(v97, v94, v96);
      v98 = UIFontTextStyleBody;
      StaticDimension.init(_:scaledLike:)();
      (*(v95 + 8))(v94, v96);
      goto LABEL_41;
    }

    v70 = v107;
    (*(v33 + 32))(v107, v62, v50);
    swift_getKeyPath();
    v71 = v106;
    ReadOnlyLens.subscript.getter();

    v72 = v105;
    (*(v51 + 104))(v105, enum case for Shelf.ContentType.unifiedMessage(_:), v52);
    sub_10017720C();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v127 == v124)
    {
      v73 = *(v51 + 8);
      v73(v72, v52);
      v73(v71, v52);
    }

    else
    {
      v82 = v51;
      v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v84 = *(v82 + 8);
      v84(v72, v52);
      v84(v71, v52);

      if ((v83 & 1) == 0)
      {
        v86 = v70;
        v87 = v120;
LABEL_39:
        v102(v86, v87);
        goto LABEL_40;
      }
    }

    swift_getKeyPath();
    v85 = v120;
    ReadOnlyLens.subscript.getter();

    if ((v127 & 1) == 0)
    {
      v125 = &type metadata for CGFloat;
      v126 = &protocol witness table for CGFloat;
      *&v124 = 0x4020000000000000;
      v102(v70, v85);
LABEL_41:
      sub_100005A38(&v124, &v127);
      (*(v119 + 8))(v118, v52);
      goto LABEL_42;
    }

    v86 = v70;
    v87 = v85;
    goto LABEL_39;
  }

  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v15, &unk_10098FFB0);
  if ((*(v33 + 48))(v18, 1, v50) != 1)
  {
    v58 = v113;
    (*(v33 + 32))(v113, v18, v50);
    swift_getKeyPath();
    v59 = v111;
    ReadOnlyLens.subscript.getter();

    v60 = v110;
    (*(v51 + 104))(v110, enum case for Shelf.ContentType.unifiedMessage(_:), v52);
    sub_10017720C();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v127 == v124)
    {
      v61 = *(v51 + 8);
      v61(v60, v52);
      v61(v59, v52);

      goto LABEL_21;
    }

    v64 = v51;
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v66 = *(v64 + 8);
    v66(v60, v52);
    v66(v59, v52);
    v50 = v120;

    if (v65)
    {
LABEL_21:
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      if (v127)
      {
        goto LABEL_30;
      }

LABEL_36:
      v88 = v114;
      *v114 = UIFontTextStyleBody;
      v89 = v50;
      v90 = v115;
      v91 = v116;
      (*(v115 + 104))(v88, enum case for FontSource.textStyle(_:), v116);
      v125 = type metadata accessor for StaticDimension();
      v126 = &protocol witness table for StaticDimension;
      sub_1000056E0(&v124);
      *(&v128 + 1) = v91;
      v129 = &protocol witness table for FontSource;
      v92 = sub_1000056E0(&v127);
      (*(v90 + 16))(v92, v88, v91);
      v93 = UIFontTextStyleBody;
      StaticDimension.init(_:scaledLike:)();
      (*(v90 + 8))(v88, v91);
      v102(v58, v89);
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  sub_10002B894(v18, &unk_10098FFB0);
LABEL_31:
  v77 = v114;
  *v114 = UIFontTextStyleBody;
  v78 = v115;
  v79 = v116;
  (*(v115 + 104))(v77, enum case for FontSource.textStyle(_:), v116);
  v125 = type metadata accessor for StaticDimension();
  v126 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v124);
  *(&v128 + 1) = v79;
  v129 = &protocol witness table for FontSource;
  v80 = sub_1000056E0(&v127);
  (*(v78 + 16))(v80, v77, v79);
  v81 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  (*(v78 + 8))(v77, v79);
LABEL_32:
  sub_100005A38(&v124, &v127);
LABEL_42:
  sub_100005A38(&v127, v122);
  return sub_100007000(v130);
}

unint64_t sub_10017720C()
{
  result = qword_100971EE8;
  if (!qword_100971EE8)
  {
    type metadata accessor for Shelf.ContentType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100971EE8);
  }

  return result;
}

uint64_t sub_100177268@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v37 = a3;
  v4 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v4 - 8);
  v40 = &v36 - v5;
  v6 = type metadata accessor for Date();
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for AdamId();
  v8 = *(v39 - 8);
  __chkstk_darwin(v39);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TodayCardTriggerIdentifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0AC(a1, v46);
  sub_10002A400(a1, a1[3]);
  v15 = v6;
  v16 = v38;
  dispatch thunk of TodayCardTrigger.identifier.getter();
  sub_1001795EC(&qword_100976EB0, &type metadata accessor for TodayCardTriggerIdentifier);
  *&v43 = dispatch thunk of CustomStringConvertible.description.getter();
  *(&v43 + 1) = v17;
  (*(v12 + 8))(v14, v11);
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  sub_10002A400(a1, a1[3]);
  dispatch thunk of TodayCardTrigger.adamId.getter();
  v19 = AdamId.stringValue.getter();
  v21 = v20;
  (*(v8 + 8))(v10, v39);
  v22 = v40;
  v23._countAndFlagsBits = v19;
  v23._object = v21;
  String.append(_:)(v23);
  v24 = v41;

  v44 = v43;
  sub_100031660(v24, v22, &qword_100979710);
  if ((*(v16 + 48))(v22, 1, v15) == 1)
  {
    sub_10002B894(v22, &qword_100979710);
    sub_10002B894(v24, &qword_100979710);
    v25 = 0xED00002E74657920;
    v26 = 0x6E65657320746F4ELL;
LABEL_8:
    *&v45 = v26;
    *(&v45 + 1) = v25;
    v33 = v46[1];
    v34 = v37;
    *(v37 + 32) = v46[0];
    *(v34 + 48) = v33;
    *(v34 + 64) = v47;
    v35 = v45;
    *v34 = v44;
    *(v34 + 16) = v35;
    return sub_100007000(a1);
  }

  v27 = v36;
  (*(v16 + 32))(v36, v22, v15);
  result = Date.timeIntervalSinceNow.getter();
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v30 = -v29;
  if (!__OFSUB__(0, v29))
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    *&v43 = 0x206E656553;
    *(&v43 + 1) = 0xE500000000000000;
    v42 = v30;
    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 0x73646E6F63657320;
    v32._object = 0xED00002E6F676120;
    String.append(_:)(v32);
    v25 = *(&v43 + 1);
    v26 = v43;
    sub_10002B894(v24, &qword_100979710);
    (*(v16 + 8))(v27, v15);
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100177794@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  v13 = type metadata accessor for TodayCardTriggerIdentifier();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v8 - 8);
  v10 = &v12 - v9;
  sub_10002C0AC(a1, v15);
  sub_10002A400(a2, a2[3]);
  sub_10002A400(a1, a1[3]);
  dispatch thunk of TodayCardTrigger.identifier.getter();
  dispatch thunk of TriggerPersistantStore.date(for:)();
  (*(v5 + 8))(v7, v13);
  return sub_100177268(v15, v10, v14);
}

id sub_100177934(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8AppStore35DebugTodayCardTriggerViewController_triggerController] = a1;

  *&v1[OBJC_IVAR____TtC8AppStore35DebugTodayCardTriggerViewController_sections] = sub_100178F40(v4);
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithStyle:", 1);
  v6 = [v5 navigationItem];
  v7 = String._bridgeToObjectiveC()();
  [v6 setTitle:v7];

  v8 = [v5 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  v9 = [objc_allocWithZone(UIRefreshControl) init];
  [v5 setRefreshControl:v9];

  v10 = [v5 refreshControl];
  if (v10)
  {
    [v10 addTarget:v5 action:"refreshContent" forControlEvents:4096];
  }

  return v5;
}

void sub_100177B30()
{
  *&v0[OBJC_IVAR____TtC8AppStore35DebugTodayCardTriggerViewController_sections] = sub_100178F40(*&v0[OBJC_IVAR____TtC8AppStore35DebugTodayCardTriggerViewController_triggerController]);

  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 reloadData];

    v3 = [v0 refreshControl];
    [v3 endRefreshing];
  }

  else
  {
    __break(1u);
  }
}

void sub_100177C34(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  sub_10002C0AC(a1, v17);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  sub_100005A38(v17, v8 + 24);
  *(v8 + 64) = v4;
  v9 = v2;
  v10 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_100179960;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100768994;
  aBlock[3] = &unk_1008B6940;
  v11 = _Block_copy(aBlock);

  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [v7 addAction:v13];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 actionWithTitle:v14 style:1 handler:0];

  [v7 addAction:v15];
  [v9 presentViewController:v7 animated:1 completion:0];
}

void sub_100177EA4(void *a1, char a2)
{
  v5 = type metadata accessor for TodayCardTriggerIdentifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC8AppStore35DebugTodayCardTriggerViewController_triggerController))
  {
    TodayCardTriggerController.persistantStore.getter();
    sub_100005A38(v11, v12);
    if (a2)
    {
      sub_10002A400(v12, v13);
      sub_10002849C(&qword_100976ED0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007B10D0;
      sub_10002A400(a1, a1[3]);
      dispatch thunk of TodayCardTrigger.identifier.getter();
      TriggerPersistantStore.markTriggerIdsSeen(_:)(v9);
    }

    else
    {
      sub_10002A400(a1, a1[3]);
      dispatch thunk of TodayCardTrigger.clearActivationContext()();
      sub_10002A400(v12, v13);
      sub_10002A400(a1, a1[3]);
      dispatch thunk of TodayCardTrigger.identifier.getter();
      dispatch thunk of TriggerPersistantStore.remove(_:)();
      (*(v6 + 8))(v8, v5);
    }

    v10 = [objc_opt_self() sharedCoordinator];
    [v10 simulateStorefrontChange];

    sub_100007000(v12);
  }
}

uint64_t sub_100178828(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100178840(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100178864(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001788AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100178910()
{
  result = qword_100976EA8;
  if (!qword_100976EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976EA8);
  }

  return result;
}

uint64_t sub_100178964(uint64_t a1)
{
  v65 = type metadata accessor for TriggerBuilderError();
  v2 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TodayCardTriggerIdentifier();
  v4 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10002849C(&qword_100976EB8);
  v6 = __chkstk_darwin(v61);
  v60 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = &v46 - v8;
  v9 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v74 = &_swiftEmptyArrayStorage;
  sub_10014430C(0, v9, 0);
  v10 = v74;
  v11 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v13 = result;
  v14 = 0;
  v15 = *(a1 + 36);
  v56 = v2 + 16;
  v57 = v4 + 16;
  v54 = v2 + 32;
  v55 = v4 + 32;
  v58 = v2;
  v53 = v2 + 8;
  v52 = v4 + 8;
  v47 = a1 + 72;
  v73 = v4;
  v48 = v9;
  v50 = a1 + 64;
  v49 = v15;
  v51 = a1;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_22;
    }

    if (v15 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v67 = 1 << v13;
    v68 = v13 >> 6;
    v66 = v14;
    v16 = v61;
    v17 = *(v61 + 48);
    v18 = *(a1 + 48) + *(v4 + 72) * v13;
    v70 = *(v4 + 16);
    v19 = v59;
    v20 = v63;
    v70(v59, v18, v63);
    v21 = v58;
    v22 = *(a1 + 56) + *(v58 + 72) * v13;
    v69 = *(v58 + 16);
    v71 = v13;
    v23 = v65;
    v69(&v19[v17], v22, v65);
    v24 = *(v73 + 32);
    v72 = v10;
    v25 = v60;
    v24(v60, v19, v20);
    v26 = *(v16 + 48);
    (*(v21 + 32))(&v25[v26], &v19[v17], v23);
    v27 = v62;
    v70(v62, v25, v20);
    v28 = v64;
    v69(v64, &v25[v26], v23);
    v70 = TodayCardTriggerIdentifier.rawValue.getter();
    v30 = v29;
    sub_1001795EC(&qword_100976EC0, &type metadata accessor for TriggerBuilderError);
    v31 = Error.localizedDescription.getter();
    v33 = v32;
    v34 = *(v21 + 8);
    v4 = v73;
    v34(v28, v23);
    (*(v4 + 8))(v27, v20);
    v35 = v25;
    v10 = v72;
    sub_10002B894(v35, &qword_100976EB8);
    v74 = v10;
    v37 = v10[2];
    v36 = v10[3];
    if (v37 >= v36 >> 1)
    {
      sub_10014430C((v36 > 1), v37 + 1, 1);
      v10 = v74;
    }

    v10[2] = v37 + 1;
    v38 = &v10[9 * v37];
    result = v71;
    v38[4] = v70;
    v38[5] = v30;
    v38[6] = v31;
    v38[7] = v33;
    *(v38 + 4) = 0u;
    *(v38 + 5) = 0u;
    v38[12] = 0;
    a1 = v51;
    v13 = 1 << *(v51 + 32);
    if (result >= v13)
    {
      goto LABEL_24;
    }

    v11 = v50;
    v39 = *(v50 + 8 * v68);
    if ((v39 & v67) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v15) = v49;
    if (v49 != *(v51 + 36))
    {
      goto LABEL_26;
    }

    v40 = v39 & (-2 << (result & 0x3F));
    if (v40)
    {
      v13 = __clz(__rbit64(v40)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v41 = v68 << 6;
      v42 = v68 + 1;
      v43 = (v47 + 8 * v68);
      while (v42 < (v13 + 63) >> 6)
      {
        v45 = *v43++;
        v44 = v45;
        v41 += 64;
        ++v42;
        if (v45)
        {
          result = sub_1000CAE24(result, v49, 0);
          v13 = __clz(__rbit64(v44)) + v41;
          goto LABEL_4;
        }
      }

      result = sub_1000CAE24(result, v49, 0);
    }

LABEL_4:
    v14 = v66 + 1;
    if (v66 + 1 == v48)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_100178F40(uint64_t a1)
{
  if (!a1)
  {
    sub_10002849C(&qword_10096FCB0);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_1007B10D0;
    v9[4] = 0xD000000000000015;
    v9[5] = 0x8000000100803FF0;
    v9[6] = &_swiftEmptyArrayStorage;
    *(v9 + 56) = 2;
    return v9;
  }

  dispatch thunk of TodayCardTriggerController.snapshot()();
  v1 = v39;
  v2 = v40;
  v3 = v41;
  v4 = v42;
  v5 = v43;
  isUniquelyReferenced_nonNull_native = TodayCardTriggerController.persistantStore.getter();
  v7 = *(v38 + 16);
  v36 = v38;
  v37 = v39;
  if (v7)
  {
    v8 = sub_100178964(v38);
    isUniquelyReferenced_nonNull_native = sub_100034774(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = isUniquelyReferenced_nonNull_native;
    v11 = *(isUniquelyReferenced_nonNull_native + 16);
    v10 = *(isUniquelyReferenced_nonNull_native + 24);
    if (v11 >= v10 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_100034774((v10 > 1), v11 + 1, 1, isUniquelyReferenced_nonNull_native);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v9[2] = v11 + 1;
    v12 = &v9[4 * v11];
    *(v12 + 4) = 0xD000000000000013;
    *(v12 + 5) = 0x8000000100804010;
    *(v12 + 6) = v8;
    v12[56] = 2;
    v1 = v37;
    if (*(v37 + 16))
    {
LABEL_6:
      __chkstk_darwin(isUniquelyReferenced_nonNull_native);
      v35 = &v38;
      v13 = sub_1000B4238(sub_1001795CC, v34, v1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_100034774(0, v9[2] + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100034774((v14 > 1), v15 + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v9[2] = v15 + 1;
      v16 = &v9[4 * v15];
      *(v16 + 4) = 0xD00000000000001DLL;
      *(v16 + 5) = 0x8000000100804030;
      *(v16 + 6) = v13;
      v16[56] = 1;
      if (!*(v2 + 16))
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
    if (*(v39 + 16))
    {
      goto LABEL_6;
    }
  }

  if (*(v2 + 16))
  {
LABEL_15:
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v35 = &v38;
    v17 = sub_1000B4238(sub_100179990, v34, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_100034774(0, v9[2] + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v19 = v9[2];
    v18 = v9[3];
    if (v19 >= v18 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_100034774((v18 > 1), v19 + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v9[2] = v19 + 1;
    v20 = &v9[4 * v19];
    *(v20 + 4) = 0xD00000000000001BLL;
    *(v20 + 5) = 0x8000000100804050;
    *(v20 + 6) = v17;
    v20[56] = 1;
  }

LABEL_20:
  if (*(v3 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v35 = &v38;
    v21 = sub_1000B4238(sub_100179990, v34, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_100034774(0, v9[2] + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v23 = v9[2];
    v22 = v9[3];
    if (v23 >= v22 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_100034774((v22 > 1), v23 + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v9[2] = v23 + 1;
    v24 = &v9[4 * v23];
    *(v24 + 4) = 0xD00000000000001CLL;
    *(v24 + 5) = 0x8000000100804070;
    *(v24 + 6) = v21;
    v24[56] = 0;
  }

  if (*(v4 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v35 = &v38;
    v25 = sub_1000B4238(sub_100179990, v34, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_100034774(0, v9[2] + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v27 = v9[2];
    v26 = v9[3];
    if (v27 >= v26 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_100034774((v26 > 1), v27 + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v9[2] = v27 + 1;
    v28 = &v9[4 * v27];
    *(v28 + 4) = 0xD000000000000020;
    *(v28 + 5) = 0x8000000100804090;
    *(v28 + 6) = v25;
    v28[56] = 0;
  }

  if (*(v5 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v35 = &v38;
    v29 = sub_1000B4238(sub_100179990, v34, v5);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100034774(0, v9[2] + 1, 1, v9);
    }

    v31 = v9[2];
    v30 = v9[3];
    if (v31 >= v30 >> 1)
    {
      v9 = sub_100034774((v30 > 1), v31 + 1, 1, v9);
    }

    v9[2] = v31 + 1;
    v32 = &v9[4 * v31];
    *(v32 + 4) = 0xD000000000000017;
    *(v32 + 5) = 0x80000001008040C0;
    *(v32 + 6) = v29;
    v32[56] = 0;
    sub_100007000(&v38);
  }

  else
  {
    sub_100007000(&v38);
  }

  return v9;
}

uint64_t sub_1001795EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100179634(void *a1)
{
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *(v1 + OBJC_IVAR____TtC8AppStore35DebugTodayCardTriggerViewController_sections);
  if (result >= *(v4 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4 + 32 * result;
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);

  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result < *(v6 + 16))
  {
    sub_1001798F8(v6 + 72 * result + 32, &v15);
    v8 = [a1 textLabel];
    if (v8)
    {
      v9 = v8;
      v10 = String._bridgeToObjectiveC()();
      [v9 setText:v10];
    }

    v11 = [a1 detailTextLabel];
    if (v11)
    {
      v12 = v11;
      v13 = String._bridgeToObjectiveC()();
      [v12 setText:v13];

      if (v7 == 2)
      {
LABEL_9:
        v14 = 0;
LABEL_12:
        [a1 setAccessoryType:v14];
        return sub_100179930(&v15);
      }
    }

    else
    {

      if (v7 == 2)
      {
        goto LABEL_9;
      }
    }

    v14 = 1;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1001797D0()
{
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8AppStore35DebugTodayCardTriggerViewController_sections);
  if (result >= *(v2 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2 + 32 * result;
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);

  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result >= *(v4 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1001798F8(v4 + 72 * result + 32, v9);

  if (v5 != 2)
  {
    sub_100031660(&v10, &v6, &qword_100976EC8);
    if (!v7)
    {
      sub_100179930(v9);
      return sub_10002B894(&v6, &qword_100976EC8);
    }

    sub_100005A38(&v6, v8);
    sub_100177C34(v8, v5 & 1);
    sub_100007000(v8);
  }

  return sub_100179930(v9);
}

uint64_t sub_1001799F4(uint64_t a1)
{
  v2 = type metadata accessor for PageGrid();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v59 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Shelf.ContentsMetadata();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v55 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_1009731F0);
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for ProductMediaMetadata();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = type metadata accessor for AspectRatio();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v56 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v60 = &v46 - v22;
  type metadata accessor for ProductMediaItem();
  sub_10017A174(&qword_100972AC0, &type metadata accessor for ProductMediaItem);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v61)
  {
    v52 = a1;
    if (ProductMediaItem.screenshot.getter())
    {
      Artwork.size.getter();
      AspectRatio.init(_:_:)();

      v24 = *(v19 + 56);
      v24(v14, 0, 1, v18);
      (*(v19 + 32))(v17, v14, v18);
      v24(v17, 0, 1, v18);
      v25 = (*(v19 + 48))(v17, 1, v18);
    }

    else
    {
      v47 = v3;
      v48 = v2;
      v26 = *(v19 + 56);
      v27 = 1;
      v26(v14, 1, 1, v18);
      if (ProductMediaItem.video.getter())
      {
        Video.preview.getter();

        Artwork.size.getter();
        AspectRatio.init(_:_:)();

        v27 = 0;
      }

      v26(v17, v27, 1, v18);
      v28 = *(v19 + 48);
      if (v28(v14, 1, v18) != 1)
      {
        sub_100072810(v14);
      }

      v3 = v47;
      v2 = v48;
      v25 = v28(v17, 1, v18);
    }

    if (v25 == 1)
    {

      return sub_100072810(v17);
    }

    (*(v19 + 32))(v60, v17, v18);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    v29 = v54;
    v30 = v55;
    ReadOnlyLens.subscript.getter();

    (*(v53 + 8))(v9, v29);
    v32 = v57;
    v31 = v58;
    v33 = v3;
    if ((*(v57 + 88))(v30, v58) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v32 + 96))(v30, v31);
      v35 = v49;
      v34 = v50;
      v36 = v30;
      v37 = v51;
      (*(v50 + 32))(v49, v36, v51);
      v38 = ProductMediaMetadata.hasPortraitMedia.getter();
      v39 = v56;
      if (v38)
      {
        v40 = v60;
        v41 = AspectRatio.isPortrait.getter();
        v42 = v34;
        v43 = v41;
        (*(v42 + 8))(v35, v37);
        if ((v43 & 1) == 0 && (AspectRatio.isPortrait.getter() & 1) == 0)
        {
          AspectRatio.inverted.getter();
LABEL_21:
          swift_getKeyPath();
          v44 = v59;
          ItemLayoutContext.subscript.getter();

          PageGrid.columnWidth.getter();
          (*(v33 + 8))(v44, v2);
          AspectRatio.height(fromWidth:)();

          v45 = *(v19 + 8);
          v45(v39, v18);
          return (v45)(v40, v18);
        }

LABEL_20:
        (*(v19 + 16))(v39, v40, v18);
        goto LABEL_21;
      }

      (*(v34 + 8))(v35, v37);
    }

    else
    {
      (*(v32 + 8))(v30, v31);
      v39 = v56;
    }

    v40 = v60;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10017A174(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_10017A1BC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView;
  *&v4[v14] = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v46.receiver = v4;
  v46.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v15 setClipsToBounds:0];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v20 = OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView;
  v21 = *(*&v15[OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v22 = v21;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v42);
  sub_10003D444(&v44);
  UIView.setAutomationSemantics(_:)();

  v23 = *(v11 + 8);
  v23(v13, v10);
  v24 = *(*&v15[v20] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = v24;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v42);
  sub_10003D444(&v44);
  UIView.setAutomationSemantics(_:)();

  v23(v13, v10);
  v26 = *(*&v15[v20] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v27 = v26;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v42);
  sub_10003D444(&v44);
  UIView.setAutomationSemantics(_:)();

  v23(v13, v10);
  v28 = *(*&v15[v20] + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v29 = v28;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v42);
  sub_10003D444(&v44);
  UIView.setAutomationSemantics(_:)();

  v23(v13, v10);
  v30 = *&v15[v20];
  v31 = *(v30 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
  if (v31)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v32 = v31;
    static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
    sub_10003D444(&v42);
    sub_10003D444(&v44);
    UIView.setAutomationSemantics(_:)();

    v23(v13, v10);
    v30 = *&v15[v20];
  }

  v33 = *(v30 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
  if (v33)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v34 = v33;
    static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
    sub_10003D444(&v42);
    sub_10003D444(&v44);
    UIView.setAutomationSemantics(_:)();

    v23(v13, v10);
    v30 = *&v15[v20];
  }

  v35 = *(v30 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = v35;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v42);
  sub_10003D444(&v44);
  UIView.setAutomationSemantics(_:)();

  v23(v13, v10);
  v37 = *&v15[v20];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v38 = v37;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v42);
  sub_10003D444(&v44);
  UIView.setAutomationSemantics(_:)();

  v23(v13, v10);
  v39 = [v15 contentView];
  [v39 setClipsToBounds:0];

  v40 = [v15 contentView];
  [v40 addSubview:*&v15[v20]];

  return v15;
}

double sub_10017AA74()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_metrics;
  swift_beginAccess();
  return *v1;
}

void sub_10017AAD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  ArtworkView.isImageHidden.setter();

  v4 = *(v1 + v2);
  type metadata accessor for ArtworkView();
  sub_10017AC10(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
  v5 = v4;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_10017ABB8(uint64_t a1, uint64_t a2)
{
  result = sub_10017AC10(&qword_100976F08, a2, type metadata accessor for TodayCardSmallLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10017AC10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10017ACF4(void *a1)
{
  v13 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (v13)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      sub_100481F04(v3, a1, 1);
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v6 = OBJC_IVAR____TtC8AppStore27AnimatedTransitionWithTasks_tasks;
      swift_beginAccess();
      v7 = *(v1 + v6);
      v8 = v13;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v6) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_1000340DC(0, *(v7 + 2) + 1, 1, v7);
        *(v1 + v6) = v7;
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_1000340DC((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      v12 = &v7[3 * v11];
      *(v12 + 4) = sub_10017BC38;
      *(v12 + 5) = v5;
      *(v12 + 48) = 2;
      *(v1 + v6) = v7;
      swift_endAccess();
    }

    else
    {
    }
  }
}

void sub_10017AEAC(void *a1)
{
  v2 = v1;
  v89 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v85 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DispatchQoS();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for DispatchTime();
  v84 = *(v91 - 8);
  __chkstk_darwin(v91);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v81 = &v77 - v10;
  sub_1005F3D78(0);
  v11 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v11)
  {
    v12 = v11;
    [a1 finalFrameForViewController:v11];
  }

  else
  {
    v12 = [a1 containerView];
    [v12 bounds];
  }

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;

  v21 = &v1[OBJC_IVAR____TtC8AppStore23BouncyFromRectAnimation_fromRect];
  v22 = v1[OBJC_IVAR____TtC8AppStore23BouncyFromRectAnimation_fromRect + 32];
  if (v22)
  {
    v96.origin.x = v17;
    v96.origin.y = v18;
    v96.size.width = v19;
    v96.size.height = v20;
    v23 = CGRectGetWidth(v96) * 0.2;
    v97.origin.x = v17;
    v97.origin.y = v18;
    v97.size.width = v19;
    v97.size.height = v20;
    v24 = CGRectGetHeight(v97) * 0.2;
    v98.origin.x = v17;
    v98.origin.y = v18;
    v98.size.width = v19;
    v98.size.height = v20;
    v99 = CGRectInset(v98, v23, v24);
    x = v99.origin.x;
    y = v99.origin.y;
    width = v99.size.width;
    height = v99.size.height;
  }

  else
  {
    v25 = v21[2];
    height = v21[3];
    width = v25;
    v26 = *v21;
    y = v21[1];
    x = v26;
  }

  v27 = x;
  v100.origin.x = x;
  v28 = y;
  v100.origin.y = y;
  v29 = width;
  v100.size.width = width;
  v30 = height;
  v100.size.height = height;
  v83 = CGRectGetWidth(v100);
  v101.origin.x = v17;
  v101.origin.y = v18;
  v101.size.width = v19;
  v101.size.height = v20;
  v82 = CGRectGetWidth(v101);
  v102.origin.x = v27;
  v102.origin.y = v28;
  v102.size.width = v29;
  v102.size.height = v30;
  v80 = CGRectGetHeight(v102);
  v103.origin.x = v17;
  v103.origin.y = v18;
  v103.size.width = v19;
  v103.size.height = v20;
  v79 = CGRectGetHeight(v103);
  v104.origin.x = v27;
  x = v27;
  v104.origin.y = v28;
  v104.size.width = v29;
  width = v29;
  v104.size.height = v30;
  height = v30;
  MidX = CGRectGetMidX(v104);
  v105.origin.x = v17;
  v105.origin.y = v18;
  v105.size.width = v19;
  v105.size.height = v20;
  v77 = CGRectGetMidX(v105);
  v106.origin.x = v27;
  v106.origin.y = v28;
  v31 = v28;
  v106.size.width = v29;
  v106.size.height = v30;
  MidY = CGRectGetMidY(v106);
  v107.origin.x = v17;
  v107.origin.y = v18;
  v107.size.width = v19;
  v107.size.height = v20;
  v33 = CGRectGetMidY(v107);
  v34 = sqrt((v83 - v82) * (v83 - v82) + (v80 - v79) * (v80 - v79));
  v35 = sqrt((MidX - v77) * (MidX - v77) + (MidY - v33) * (MidY - v33));
  if (v34 > v35)
  {
    v35 = v34;
  }

  v80 = v35 / 0.7 / v35;
  v108.origin.x = v17;
  v108.origin.y = v18;
  v108.size.width = v19;
  v108.size.height = v20;
  v36 = CGRectGetMidX(v108);
  v37 = x;
  v109.origin.x = x;
  v109.origin.y = v31;
  v109.size.width = width;
  v38 = height;
  v109.size.height = height;
  v39 = v36 - CGRectGetMidX(v109);
  v83 = v17;
  v110.origin.x = v17;
  v40 = v18;
  v110.origin.y = v18;
  v79 = v19;
  v110.size.width = v19;
  v82 = v20;
  v110.size.height = v20;
  MinY = CGRectGetMinY(v110);
  v111.origin.x = v37;
  v111.origin.y = v31;
  v111.size.width = width;
  v111.size.height = v38;
  v42 = MinY - CGRectGetMinY(v111);
  v43 = [a1 viewForKey:UITransitionContextToViewKey];
  v44 = v43;
  if (v43)
  {
    v45 = y + v42;
    v46 = x + v39;
    v47 = v43;
    v48 = [a1 containerView];
    [v48 addSubview:v47];

    [v47 setFrame:{v46, v45, width, height}];
    if (v22)
    {
      [v47 setAlpha:0.0];
    }
  }

  [v44 layoutIfNeeded];
  CATransform3DMakeTranslation(&aBlock, -v39, -v42, 0.0);
  v49 = String._bridgeToObjectiveC()();
  v50 = [objc_opt_self() animationWithKeyPath:v49];

  v51 = objc_opt_self();
  v52 = v50;
  v53 = [v51 valueWithCATransform3D:&aBlock];
  [v52 setFromValue:v53];

  v54 = *&CATransform3DIdentity.m33;
  *&aBlock.m31 = *&CATransform3DIdentity.m31;
  *&aBlock.m33 = v54;
  v55 = *&CATransform3DIdentity.m43;
  *&aBlock.m41 = *&CATransform3DIdentity.m41;
  *&aBlock.m43 = v55;
  v56 = *&CATransform3DIdentity.m13;
  *&aBlock.m11 = *&CATransform3DIdentity.m11;
  *&aBlock.m13 = v56;
  v57 = *&CATransform3DIdentity.m23;
  *&aBlock.m21 = *&CATransform3DIdentity.m21;
  *&aBlock.m23 = v57;
  v58 = [v51 valueWithCATransform3D:&aBlock];
  [v52 setToValue:v58];

  [v52 setDamping:16.0];
  [v52 setMass:1.0];
  [v52 setStiffness:150.0];
  [v52 setInitialVelocity:v80];
  v59 = v52;
  [v59 settlingDuration];
  [v59 setDuration:?];
  [v59 setFillMode:kCAFillModeBackwards];

  width = *&v44;
  if (*&v44 != 0.0)
  {
    v60 = [*&width layer];
    v61 = String._bridgeToObjectiveC()();
    [v60 addAnimation:v59 forKey:v61];
  }

  [v59 settlingDuration];
  sub_1000076C0();
  v62 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v63 = v81;
  + infix(_:_:)();
  height = *(v84 + 8);
  (*&height)(v8, v91);
  v64 = swift_allocObject();
  *(v64 + 16) = a1;
  *(v64 + 24) = v2;
  *&aBlock.m21 = sub_10017BBF0;
  *&aBlock.m22 = v64;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_100007A08;
  *&aBlock.m14 = &unk_1008B69B8;
  v65 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  x = COERCE_DOUBLE(v2);

  static DispatchQoS.unspecified.getter();
  *&aBlock.m11 = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0);
  sub_1000079A4();
  v66 = v85;
  v67 = v89;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v65);

  (*(v88 + 8))(v66, v67);
  (*(v86 + 8))(v6, v87);
  (*&height)(v63, v91);
  v68 = objc_opt_self();
  v69 = swift_allocObject();
  v70 = x;
  v71 = width;
  *(v69 + 16) = x;
  *(v69 + 24) = v71;
  *(v69 + 32) = v83;
  *(v69 + 40) = v40;
  v72 = v82;
  *(v69 + 48) = v79;
  *(v69 + 56) = v72;
  *&aBlock.m21 = sub_10017BC28;
  *&aBlock.m22 = v69;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_100007A08;
  *&aBlock.m14 = &unk_1008B6A08;
  v73 = _Block_copy(&aBlock);
  v74 = *&v71;
  v75 = *&v70;

  *&aBlock.m21 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  aBlock.m22 = 0.0;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_100504C5C;
  *&aBlock.m14 = &unk_1008B6A30;
  v76 = _Block_copy(&aBlock);
  [v68 animateWithDuration:129 delay:v73 options:v76 animations:0.35 completion:0.0];

  _Block_release(v76);
  _Block_release(v73);
}

id sub_10017BAC4(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  sub_1005F3D78(1);
  result = [a6 setFrame:{a1, a2, a3, a4}];
  if (a6)
  {

    return [a6 setAlpha:1.0];
  }

  return result;
}

id sub_10017BB98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BouncyFromRectAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10017BC38()
{
  v1 = [*(v0 + 16) tabBar];
  [v1 setHidden:0];
}

void sub_10017BCA4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = *(v0 + 40);
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_iconViews;

    swift_beginAccess();
    v8 = 0;
    v9 = (v4 + 63) >> 6;
    while (v6)
    {
LABEL_10:
      v11 = (v8 << 9) | (8 * __clz(__rbit64(v6)));
      v12 = *(*(v3 + 48) + v11);
      v13 = *(*(v3 + 56) + v11);
      v14 = *&v2[v7];
      if (v14 >> 62)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 &= v6 - 1;
      if ((v12 & 0x8000000000000000) == 0 && v12 < v15)
      {
        swift_beginAccess();
        v16 = *&v2[v7];
        if ((v16 & 0xC000000000000001) != 0)
        {
          v22 = v13;
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v17 = *(v16 + 8 * v12 + 32);
          v18 = v13;
          v19 = v17;
        }

        v20 = v19;
        swift_endAccess();
        v21 = v13;
        ArtworkView.image.setter();
        [v2 setNeedsDisplay];
      }
    }

    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        return;
      }

      v6 = *(v3 + 64 + 8 * v10);
      ++v8;
      if (v6)
      {
        v8 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_10017BE94(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_iconViews;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (a2 < 0)
    {
      return;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2 < 0)
    {
      return;
    }
  }

  if (v8 > a2)
  {
    swift_beginAccess();
    v9 = *&v3[v6];
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __break(1u);
        return;
      }

      v10 = *(v9 + 8 * a2 + 32);
    }

    v11 = v10;
    swift_endAccess();
    v12 = a1;
    ArtworkView.image.setter();
    [v3 setNeedsDisplay];
  }
}

uint64_t sub_10017BF98()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10017BFD8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v39 = type metadata accessor for Shadow();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_iconViews;
  result = swift_beginAccess();
  v6 = *&v1[v4];
  if (v6 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    v8 = &type metadata for AppEventCardLayout;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = &type metadata for AppEventCardLayout;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v35 = v2;
  v36 = v4;

  v9 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    ++v9;
    v40 = v10;
    swift_beginAccess();
    sub_10002849C(&qword_100977078);
    ReusePool.recycle(_:)();
    swift_endAccess();
  }

  while (v7 != v9);

  v2 = v35;
  v4 = v36;
  v8 = &type metadata for AppEventCardLayout;
LABEL_10:
  *&v1[v4] = _swiftEmptyArrayStorage;

  v12 = *&v1[OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_configuration];
  if (!v12)
  {
    return result;
  }

  v13 = *(v12 + 24);
  if (v13 < 0)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  if (v13)
  {
    Description = v8[247].Description;
    v35 = v2 + 2;
    v36 = Description;
    v34 = (v2 + 1);

    do
    {
      while (1)
      {
        __chkstk_darwin(v15);
        v16 = ObjectType;
        *(&v33 - 2) = v12;
        *(&v33 - 1) = v16;
        swift_beginAccess();
        sub_10002849C(&qword_100977078);
        ReusePool.dequeue(or:)();
        swift_endAccess();
        v17 = v40;
        if (*(v12 + 24) == 3)
        {
          v18 = qword_1009CFE40;
          if (qword_10096DAA0 != -1)
          {
            swift_once();
            v18 = qword_1009CFE40;
          }
        }

        else
        {
          v18 = qword_1009CFE28;
          if (qword_10096DA98 != -1)
          {
            swift_once();
            v18 = qword_1009CFE28;
          }
        }

        v19 = v39;
        v20 = sub_1000056A8(v39, v18);
        (*v35)(v38, v20, v19);
        v21 = v17;
        v22 = [v21 layer];
        Shadow.offset.getter();
        [v22 setShadowOffset:?];

        v23 = [v21 layer];
        v24 = Shadow.color.getter();
        v25 = [v24 CGColor];

        [v23 setShadowColor:v25];
        v26 = [v21 layer];
        Shadow.blurRadius.getter();
        [v26 setShadowRadius:?];

        v27 = [v21 layer];
        LODWORD(v28) = 1.0;
        [v27 setShadowOpacity:v28];

        [v21 setClipsToBounds:0];
        swift_beginAccess();
        v29 = v21;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v1[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v30 = [v29 superview];

        if (v30)
        {
          sub_100005744(0, &qword_100972EB0);
          v31 = v1;
          v32 = static NSObject.== infix(_:_:)();

          if (v32)
          {
            break;
          }
        }

        [v1 addSubview:v29];

        v15 = (*v34)(v38, v39);
        if (!--v13)
        {
        }
      }

      (*v34)(v38, v39);

      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_10017C594(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_configuration;
  if (*&v1[OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_configuration])
  {
    swift_unknownObjectWeakAssign();

    sub_10017BCA4();
  }

  *&v1[v3] = a1;

  if (a1)
  {
    sub_10017BFD8();
    swift_unknownObjectWeakAssign();
    sub_10017BCA4();
    [v1 setNeedsLayout];
  }

  return result;
}

void sub_10017C8E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  type metadata accessor for ArtworkView();
  if (v3 == 1)
  {
    v4 = static ArtworkView.prerenderedIconArtworkView.getter();
  }

  else
  {
    v4 = static ArtworkView.iconArtworkView.getter();
  }

  v5 = v4;
  sub_100005744(0, &qword_100970180);
  static UIColor.placeholderBackground.getter();
  ArtworkView.backgroundColor.setter();
  v6 = v5;
  static ArtworkView.iconBorderColor.getter();
  dispatch thunk of RoundedCornerView.borderColor.setter();
  static ArtworkView.iconBorderWidth.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *a2 = v6;
}

void sub_10017C990()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_configuration];
  if (v2 && *(v2 + 24) >= 1)
  {
    v3 = OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_iconViews;
    swift_beginAccess();
    v4 = *&v1[v3];
    v5 = v4 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 == *(v2 + 24))
    {
      v6 = *&v1[v3];
      if (v6 >> 62)
      {
        sub_100005744(0, &qword_100972EB0);

        v7 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        swift_bridgeObjectRetain_n();

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100005744(0, &qword_100972EB0);
        v7 = v6;
      }

      if (v1[OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_sizeCategory] == 7)
      {
        v8 = 5;
      }

      else
      {
        v8 = v1[OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_sizeCategory];
      }

      LayoutMarginsAware<>.layoutFrame.getter();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [v1 traitCollection];
      sub_1001E1F78(v10, v12, v14, v16, v17, v7, v8);
    }
  }
}

uint64_t sub_10017CBC4(uint64_t result, double a2, double a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_configuration);
  if (v4 && *(v4 + 24) >= 1)
  {
    v5 = result;
    v8 = OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_iconViews;
    swift_beginAccess();
    v9 = *(v3 + v8);
    result = v9 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == *(v4 + 24))
    {
      v10 = *(v3 + v8);
      if (v10 >> 62)
      {
        sub_100005744(0, &qword_100972EB0);

        v11 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        swift_bridgeObjectRetain_n();

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100005744(0, &qword_100972EB0);
        v11 = v10;
      }

      if (*(v3 + OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_sizeCategory) == 7)
      {
        v12 = 5;
      }

      else
      {
        v12 = *(v3 + OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_sizeCategory);
      }

      sub_1001E20A8(a2, a3, v5, v11, v12);
    }
  }

  return result;
}

uint64_t type metadata accessor for MultiAppFallbackIconView()
{
  result = qword_100976FA8;
  if (!qword_100976FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10017CEEC()
{
  sub_10017CFA0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10017CFA0()
{
  if (!qword_100976FB8)
  {
    sub_10002D1A8(&qword_100975330);
    sub_10017D010();
    v0 = type metadata accessor for ReusePool();
    if (!v1)
    {
      atomic_store(v0, &qword_100976FB8);
    }
  }
}

unint64_t sub_10017D010()
{
  result = qword_100975338;
  if (!qword_100975338)
  {
    sub_10002D1A8(&qword_100975330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975338);
  }

  return result;
}

id sub_10017D0C4(char a1)
{
  *(v1 + OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_isCollapsing) = a1;
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_detailPageView);
  *(v2 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_isCollapsing) = a1;
  *(*(v2 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView) + OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_isCollapsing) = a1;
  [*(v2 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_closeButton) setAlpha:0.0];
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView);

  return [v3 setAlpha:0.0];
}

void sub_10017D170(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_isCollapsing] = 0;
  v9 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_learnMoreActionMetrics;
  v10 = type metadata accessor for ActionMetrics();
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_backButtonActionMetrics], 1, 1, v10);
  v11(&v4[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_closeButtonActionMetrics], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_objectGraph] = a2;
  *&v4[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_presenter] = a1;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  *&v4[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_artworkLoader] = v25;

  dispatch thunk of BasePresenter.pageRenderMetrics.getter();

  ArtworkLoader.pageRenderMetrics.setter();

  v12 = &v4[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver];
  *(v12 + 3) = type metadata accessor for AppPromotionDetailPagePresenter();
  *(v12 + 4) = &protocol witness table for BasePresenter;
  *v12 = a1;
  v13 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageView());

  *&v4[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_detailPageView] = sub_1004044C8(a2);
  v14 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageTransitioningDelegate());
  v15 = a3;
  v16 = sub_1004D2B88(a3);

  *&v4[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_containerTransitioningDelegate] = v16;
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  type metadata accessor for VideoPlaybackCoordinator();
  v18 = v17;
  inject<A, B>(_:from:)();
  v19 = v25;
  v20 = v18;
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  sub_100181038(&qword_100977120, type metadata accessor for AppPromotionDetailPageViewController);
  dispatch thunk of AppPromotionDetailPagePresenter.view.setter();
  v21 = [v20 view];

  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = [v20 view];
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v22 setClipsToBounds:0];

  v23 = [v20 view];
  if (v23)
  {
    [v23 addSubview:*&v20[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_detailPageView]];

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_10017D63C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidLoad", v5);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  *(*&v1[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_detailPageView] + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_delegate + 8) = &off_1008B6A80;
  swift_unknownObjectWeakAssign();
  return dispatch thunk of BasePresenter.didLoad()();
}

void sub_10017D808(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1, v7);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v6 + 8))(v9, v5);
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100181038(&qword_100973190, type metadata accessor for VideoView);
  }

  sub_100181038(&qword_1009846C0, type metadata accessor for AppPromotionDetailPageView);
  dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();
}

void sub_10017DAC8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v11);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v10 + 8))(v13, v9);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v6 + 8))(v8, v5);
    PendingPageRender.appearTime.setter();
  }

  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of BasePresenter.referrer.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  [v15 addObserver:v2 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v16 = [v14 defaultCenter];
  [v16 addObserver:v2 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v17 = v18[1];
  dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  sub_100407078();
}

uint64_t sub_10017DE9C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ViewWillDisappearReason();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10002849C(&qword_1009729C8);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewWillDisappear:", a1 & 1, v14);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  static ViewWillDisappearReason.inferred(for:)();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v13 + 8))(v16, v12);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    static ViewWillDisappearReason.inferred(for:)();
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v19 + 8))(v7, v20);
    PendingPageRender.DisappearTimeAndReason.init(reason:timeInterval:)();
    v17 = type metadata accessor for PendingPageRender.DisappearTimeAndReason();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    PendingPageRender.disappearTime.setter();
  }

  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();
}

void sub_10017E26C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1, v7);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v5);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v6 + 8))(v9, v5);
  sub_10019DC68();
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100181038(&qword_100973190, type metadata accessor for VideoView);
  }

  sub_100181038(&qword_1009846C0, type metadata accessor for AppPromotionDetailPageView);
  dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();
}

uint64_t sub_10017E5E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewDidBecomeFullyVisible", v5);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of BasePresenter.referrer.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();
}

uint64_t sub_10017E7E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewWillBecomePartiallyVisible", v5);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  static ViewWillDisappearReason.inferred(for:)();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();
}

void sub_10017E9FC(SEL *a1, unsigned int *a2, void (*a3)(uint64_t))
{
  v7 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v7;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, *a1, v11);
  sub_10002A400(&v7[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver], *&v7[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, *a2, v9);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v10 + 8))(v13, v9);
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v15 = v16[1];
  a3(v14);
}

id sub_10017EC14()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_detailPageView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = sub_100041CD0([v1 setFrame:{v5, v7, v9, v11}]);
    v13 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_defaultPageMargin;
    *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_defaultPageMargin] = v12;
    v14 = [v1 traitCollection];
    LOBYTE(v3) = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v3)
    {
      v15 = -*&v1[v13];
    }

    else
    {
      v15 = 0.0;
    }

    return [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView] setScrollIndicatorInsets:{0.0, v15}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10017ED98(void *a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = UITraitCollection.prefersAccessibilityLayouts.getter() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    goto LABEL_12;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    dispatch thunk of AppPromotionDetailPagePresenter.sizeClassDidChange()();
    goto LABEL_13;
  }

  v9 = [a1 preferredContentSizeCategory];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    goto LABEL_13;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v15 = [v2 view];
  if (v15)
  {
    v16 = v15;
    [v15 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_10017F03C()
{
  v1 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400((v0 + OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver), *(v0 + OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 24));
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v1);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v2 + 8))(v4, v1);
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v5 = v6[1];
  dispatch thunk of VideoPlaybackCoordinator.startAutoPlayVideo()();
}

id sub_10017F330(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100993040);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  type metadata accessor for ContingentOfferDetailPage();
  if (swift_dynamicCastClass())
  {

    ContingentOfferDetailPage.learnMoreActionMetrics.getter();
    v7 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_learnMoreActionMetrics;
    swift_beginAccess();
    sub_1001804F0(v6, &v1[v7]);
    swift_endAccess();
    ContingentOfferDetailPage.backButtonActionMetrics.getter();
    v8 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_backButtonActionMetrics;
    swift_beginAccess();
    sub_1001804F0(v6, &v1[v8]);
    swift_endAccess();
    ContingentOfferDetailPage.closeButtonActionMetrics.getter();
  }

  else
  {
    type metadata accessor for OfferItemDetailPage();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_6;
    }

    OfferItemDetailPage.learnMoreActionMetrics.getter();
    v9 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_learnMoreActionMetrics;
    swift_beginAccess();
    sub_1001804F0(v6, &v1[v9]);
    swift_endAccess();
    OfferItemDetailPage.backButtonActionMetrics.getter();
    v10 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_backButtonActionMetrics;
    swift_beginAccess();
    sub_1001804F0(v6, &v1[v10]);
    swift_endAccess();
    OfferItemDetailPage.closeButtonActionMetrics.getter();
  }

  v11 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_closeButtonActionMetrics;
  swift_beginAccess();
  sub_1001804F0(v6, &v2[v11]);
  swift_endAccess();
LABEL_6:
  v12 = [v2 traitCollection];
  if (v12)
  {
    v13 = v12;
    if (UITraitCollection.isSizeClassCompact.getter())
    {
      UITraitCollection.prefersAccessibilityLayouts.getter();
    }
  }

  result = [v2 view];
  if (result)
  {
    v15 = result;
    [result bounds];

    v16 = *&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_artworkLoader];
    v17 = *&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_objectGraph];

    sub_10019EB50(a1, v16, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10017F5F4(uint64_t a1)
{
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_objectGraph;
  v7 = sub_10002849C(&unk_100974490);

  BaseObjectGraph.injectIfAvailable<A>(_:)();

  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10002B894(v5, &unk_100972A00);
  }

  v10 = *(v1 + v6);

  sub_1005F9AF4(a1, 1, v10, v5);

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_10017F77C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.currentPageFields.getter();

  static MetricsActivity.current.getter();

  dispatch thunk of MetricsActivity.currentPageFields.setter();

  v6 = dispatch thunk of AppPromotionDetailPagePresenter.lockupClickAction.getter();
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_objectGraph;
    v9 = sub_10002849C(&unk_100974490);

    BaseObjectGraph.injectIfAvailable<A>(_:)();

    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) == 1)
    {
      sub_10002B894(v5, &unk_100972A00);
    }

    else
    {
      v12 = *(a2 + v8);

      sub_1005F9AF4(v7, 1, v12, v5);

      (*(v10 + 8))(v5, v9);
    }

    static MetricsActivity.current.getter();
    dispatch thunk of MetricsActivity.currentPageFields.setter();
  }

  else
  {
  }
}

uint64_t sub_10017F9D4()
{
  v0 = type metadata accessor for Dependency();
  v17 = *(v0 - 8);
  v18 = v0;
  __chkstk_darwin(v0);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MetricsFieldsContext();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v16 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  sub_10002849C(&qword_100977128);

  BaseObjectGraph.optional<A>(_:)();

  v14 = v22;
  v15 = v21;
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.currentPageFields.getter();

  static MetricsActivity.current.getter();
  v13[3] = dispatch thunk of MetricsActivity.preloaded.getter();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.currentSearchAdRotationDataProvider.getter();

  v9 = type metadata accessor for SearchGhostHintMetricsTracker();

  BaseObjectGraph.optional<A>(_:)();

  if (v19[0])
  {
    v10 = &protocol witness table for SearchGhostHintMetricsTracker;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[3] = v9;
  v19[4] = v10;
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.contextualAction.getter();

  sub_10002849C(&qword_100977130);

  BaseObjectGraph.optional<A>(_:)();

  static MetricsFieldsContext.createFieldsContext(impressionsTracker:adamIdString:pageContextOverride:referrer:participatingInCrossfireReferral:pageFields:preloaded:advertRotationData:searchGhostHintData:contextualAction:deviceWindowData:impressionsAppendixData:)();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10002B894(v20, &qword_100977138);
  sub_10002B894(v19, &qword_100977140);
  (*(v4 + 16))(v16, v8, v3);

  Dependency.init<A>(satisfying:with:)();
  v11 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  (*(v17 + 8))(v2, v18);
  (*(v4 + 8))(v8, v3);
  return v11;
}

uint64_t type metadata accessor for AppPromotionDetailPageViewController()
{
  result = qword_1009770F8;
  if (!qword_1009770F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001800A0()
{
  sub_10018016C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10018016C()
{
  if (!qword_100977108)
  {
    type metadata accessor for ActionMetrics();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100977108);
    }
  }
}

CGFloat sub_100180224()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_detailPageView);
  [v1 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

void *sub_10018028C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_detailPageView) + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_closeButton);
  v2 = v1;
  return v1;
}

uint64_t sub_1001802D0()
{
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of BasePresenter.referrer.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();
}

id sub_100180344()
{
  v1 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v1, v3);
  type metadata accessor for AppPromotionDetailPagePresenter();
  sub_100181038(&qword_100977118, &type metadata accessor for AppPromotionDetailPagePresenter);
  MetricsPagePresenter.observe(lifecycleEvent:)();
  (*(v2 + 8))(v5, v1);
  return [v0 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_1001804F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100993040);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100180560()
{
  v1 = v0;
  v2 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  v6 = dispatch thunk of MetricsActivity.currentPageFields.getter();

  (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v2);
  type metadata accessor for AppPromotionDetailPagePresenter();
  sub_100181038(&qword_100977118, &type metadata accessor for AppPromotionDetailPagePresenter);
  MetricsPagePresenter.observe(lifecycleEvent:)();
  (*(v3 + 8))(v5, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v0;
  aBlock[4] = sub_100181030;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008B6B40;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  [v9 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

id sub_100180788()
{
  v1 = v0;
  v2 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_10002849C(&unk_100993040);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for ActionMetrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  v18 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_closeButtonActionMetrics;
  swift_beginAccess();
  sub_100180C3C(v1 + v18, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10002B894(v10, &unk_100993040);
  }

  else
  {
    v26 = v3;
    (*(v12 + 32))(v17, v10, v11);
    v19 = sub_10002849C(&unk_100974490);

    BaseObjectGraph.injectIfAvailable<A>(_:)();

    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v7, 1, v19) == 1)
    {
      (*(v12 + 8))(v17, v11);
      sub_10002B894(v7, &unk_100972A00);
    }

    else
    {
      type metadata accessor for BlankAction();
      (*(v12 + 16))(v14, v17, v11);
      v21 = BlankAction.__allocating_init(actionMetrics:)();
      v22 = sub_10017F9D4();
      sub_1005FA048(v21, 1, v22, v7);
      v25 = v2;

      v2 = v25;

      (*(v12 + 8))(v17, v11);
      (*(v20 + 8))(v7, v19);
    }

    v3 = v26;
  }

  v23 = v27;
  (*(v3 + 104))(v27, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v2);
  type metadata accessor for AppPromotionDetailPagePresenter();
  sub_100181038(&qword_100977118, &type metadata accessor for AppPromotionDetailPagePresenter);
  MetricsPagePresenter.observe(lifecycleEvent:)();
  (*(v3 + 8))(v23, v2);
  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_100180C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100993040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100180CC4(uint64_t *a1)
{
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_10002849C(&unk_100993040);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ActionMetrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v16 = *a1;
  swift_beginAccess();
  sub_100180C3C(v1 + v16, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v17 = &unk_100993040;
    v18 = v8;
    return sub_10002B894(v18, v17);
  }

  (*(v10 + 32))(v15, v8, v9);
  v19 = sub_10002849C(&unk_100974490);

  BaseObjectGraph.injectIfAvailable<A>(_:)();

  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v5, 1, v19) == 1)
  {
    (*(v10 + 8))(v15, v9);
    v17 = &unk_100972A00;
    v18 = v5;
    return sub_10002B894(v18, v17);
  }

  type metadata accessor for BlankAction();
  (*(v10 + 16))(v12, v15, v9);
  v22 = BlankAction.__allocating_init(actionMetrics:)();
  v23 = sub_10017F9D4();
  sub_1005FA048(v22, 1, v23, v5);

  (*(v10 + 8))(v15, v9);
  return (*(v20 + 8))(v5, v19);
}

uint64_t sub_100181038(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100181084()
{
  v17 = type metadata accessor for MetricsFieldsContext();
  v1 = *(v17 - 8);
  __chkstk_darwin(v17);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetricsPipeline();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MetricsData();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16) != 1 || *(v0 + 17) == 1)
  {
    v16 = v10;
    static AppEnterMetricsEvent.makeData(enterKind:)();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    static MetricsFieldsContext.emptyContext.getter();
    MetricsPipeline.process(_:using:)();
    (*(v1 + 8))(v3, v17);
    v13 = sub_1000076C0();

    v14 = static OS_dispatch_queue.main.getter();
    v18[3] = v13;
    v18[4] = &protocol witness table for OS_dispatch_queue;
    v18[0] = v14;
    Promise.always(on:perform:)();

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v12, v16);
    sub_100007000(v18);
  }
}

void sub_100181348(uint64_t a1, void *a2)
{
  v68 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v3 - 8);
  __chkstk_darwin(v3);
  v61 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v64 = *(v60 - 8);
  __chkstk_darwin(v60);
  v66 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v69 = v6;
  v70 = v7;
  __chkstk_darwin(v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = &v48 - v11;
  v59 = type metadata accessor for MetricsPipeline();
  v62 = *(v59 - 8);
  v12 = *(v62 + 64);
  __chkstk_darwin(v59);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for MetricsData();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  __chkstk_darwin(v18);
  v63 = v2;
  if ((*(v2 + 17) & 1) == 0)
  {
    v22 = &v48 - v20;
    v51 = v19;
    v58 = v21;
    v23 = String._bridgeToObjectiveC()();
    v57 = v3;
    v24 = v23;
    v52 = [v68 beginBackgroundTaskWithName:v23 expirationHandler:0];

    v54 = v22;
    static AppExitMetricsEvent.makeData()();
    type metadata accessor for BaseObjectGraph();
    v25 = v15;
    v55 = v15;
    v26 = v59;
    inject<A, B>(_:from:)();
    sub_1000076C0();
    v53 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v27 = *(v70 + 8);
    v70 += 8;
    v56 = v27;
    v27(v9, v69);
    v28 = v62;
    v29 = *(v62 + 16);
    v50 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = v26;
    v29(v50, v25, v26);
    v31 = v58;
    v32 = v22;
    v33 = v51;
    (*(v58 + 16))(&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v51);
    v34 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v35 = *(v31 + 80);
    v49 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = (v12 + v35 + v34) & ~v35;
    v37 = (v17 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    (*(v28 + 32))(v39 + v34, v50, v30);
    (*(v31 + 32))(v39 + v36, v49, v33);
    v40 = v68;
    *(v39 + v37) = v68;
    *(v39 + v38) = v52;
    *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v63;
    aBlock[4] = sub_100181B90;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008B6B90;
    v41 = _Block_copy(aBlock);
    v42 = v40;

    v43 = v66;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10002D150();
    sub_10002849C(&unk_1009729F0);
    sub_1000079A4();
    v44 = v61;
    v45 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v46 = v67;
    v47 = v53;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v41);

    (*(v65 + 8))(v44, v45);
    (*(v64 + 8))(v43, v60);
    v56(v46, v69);
    (*(v28 + 8))(v55, v30);
    (*(v58 + 8))(v54, v33);
  }
}

uint64_t sub_1001819FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for MetricsFieldsContext();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MetricsFieldsContext.emptyContext.getter();
  MetricsPipeline.process(_:using:)();
  (*(v9 + 8))(v11, v8);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v13 = sub_1000076C0();
  v14 = a3;

  v15 = static OS_dispatch_queue.main.getter();
  v18[3] = v13;
  v18[4] = &protocol witness table for OS_dispatch_queue;
  v18[0] = v15;
  Promise.always(on:perform:)();

  return sub_100007000(v18);
}

uint64_t sub_100181B90()
{
  v1 = *(type metadata accessor for MetricsPipeline() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for MetricsData() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v6);
  v9 = *(v0 + v7);
  v10 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001819FC(v0 + v2, v0 + v5, v8, v9, v10);
}

id sub_100181CA0()
{
  v1 = *(v0 + 32);
  result = [*(v0 + 16) endBackgroundTask:*(v0 + 24)];
  *(v1 + 17) = 1;
  return result;
}

unint64_t sub_100181CF8()
{
  result = qword_100977230;
  if (!qword_100977230)
  {
    type metadata accessor for UpdateGranularNotificationSettingsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977230);
  }

  return result;
}

void sub_100181D50(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v12 = v1 & 0xC000000000000001;
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v12)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v4 + 16))
        {
          goto LABEL_12;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [v5 items];
      sub_100005744(0, &qword_100977250);
      v9 = v1;
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = v10;
      v1 = v9;
      sub_1003949A4(v11);

      ++v3;
      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_100181E88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  if (a1)
  {
    v43 = a6;
    v44 = a4;
    v11 = swift_allocObject();
    *(v11 + 16) = _swiftEmptyArrayStorage;
    v12 = (v11 + 16);
    v45 = a1;
    updated = UpdateGranularNotificationSettingsAction.settingIDs.getter();
    if (updated)
    {
      v14 = updated;
      if (qword_10096D120 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for OSLogger();
      sub_1000056A8(v15, qword_1009CE218);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v16._countAndFlagsBits = 0xD00000000000004DLL;
      v16._object = 0x8000000100804710;
      LogMessage.StringInterpolation.appendLiteral(_:)(v16);
      v49 = sub_10002849C(&unk_100977380);
      aBlock = v14;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10003D444(&aBlock);
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v17);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v18 = [v45 sections];
      sub_100005744(0, &qword_100977248);
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100182F10(v19, v12, v14);

      swift_bridgeObjectRelease_n();
    }

    else
    {
      if (qword_10096D120 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for OSLogger();
      sub_1000056A8(v20, qword_1009CE218);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      v21 = [v45 sections];
      sub_100005744(0, &qword_100977248);
      v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100181D50(v22);
    }

    v23 = *v12;
    if (*v12 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!i)
      {
        break;
      }

      v25 = 0;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v26 = *(v23 + 8 * v25 + 32);
        }

        v27 = v26;
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        [v26 setEnabled:1];

        ++v25;
        if (v28 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_22:

    v29 = ASKBagContract.amsBag.getter();
    v30 = objc_allocWithZone(AMSNotificationSettingsTask);
    v31 = String._bridgeToObjectiveC()();
    v32 = [v30 initWithIdentifier:v31 account:v44 bag:v29];

    swift_unknownObjectRelease();
    sub_100005744(0, &qword_100977250);

    isa = Array._bridgeToObjectiveC()().super.isa;

    v34 = [v32 updateSettings:isa];

    if (v34)
    {
      v35 = swift_allocObject();
      *(v35 + 16) = v11;
      *(v35 + 24) = v43;
      v50 = sub_1001835E4;
      v51 = v35;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_100235C48;
      v49 = &unk_1008B6CA0;
      v36 = _Block_copy(&aBlock);

      [v34 addFinishBlock:v36];

      _Block_release(v36);
    }

    else
    {
    }
  }

  else
  {
    if (!a2)
    {
      sub_100183584();
      swift_allocError();
      *v37 = 1;
    }

    swift_errorRetain();
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for OSLogger();
    sub_1000056A8(v38, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v39._countAndFlagsBits = 0xD000000000000030;
    v39._object = 0x8000000100804680;
    LogMessage.StringInterpolation.appendLiteral(_:)(v39);
    swift_getErrorValue();
    v40 = Error.localizedDescription.getter();
    v49 = &type metadata for String;
    aBlock = v40;
    v47 = v41;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&aBlock);
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v42);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    Promise.reject(_:)();
  }
}

uint64_t sub_100182714(id *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v4 = [*a1 items];
  sub_100005744(0, &qword_100977250);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v17[5] = a2;
    v18 = i;
    v7 = 0;
    v19 = v5 & 0xFFFFFFFFFFFFFF8;
    v20 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v20)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v19 + 16))
        {
          goto LABEL_15;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 identifier];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a2 = v13;

      v22[0] = v12;
      v22[1] = a2;
      __chkstk_darwin(v14);
      v17[2] = v22;
      LOBYTE(v11) = sub_10003C224(sub_1001835EC, v17, v21);

      if (v11)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        a2 = *(v23 + 2);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v7;
      if (v10 == v18)
      {
        v15 = v23;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_18:

  return sub_1003949A4(v15);
}

uint64_t sub_100182944(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ActionOutcome();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 48;
  v12 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  if (a1)
  {
    v26 = a4;
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for OSLogger();
    sub_1000056A8(v13, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._countAndFlagsBits = 0xD000000000000037;
    v14._object = 0x8000000100804790;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    swift_beginAccess();
    v15 = *(a3 + 16);
    v28 = sub_10002849C(&qword_1009829E0);
    v27[0] = v15;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v27);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    Promise.resolve(_:)();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    if (!a2)
    {
      sub_100183584();
      swift_allocError();
      *v18 = 2;
    }

    swift_errorRetain();
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for OSLogger();
    sub_1000056A8(v19, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._object = 0x8000000100804760;
    v20._countAndFlagsBits = 0xD00000000000002DLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    swift_beginAccess();
    v21 = *(a3 + 16);
    v28 = sub_10002849C(&qword_1009829E0);
    v27[0] = v21;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v27);
    v22._countAndFlagsBits = 0x3A726F727245202ELL;
    v22._object = 0xE900000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    swift_getErrorValue();
    v23 = Error.localizedDescription.getter();
    v28 = &type metadata for String;
    v27[0] = v23;
    v27[1] = v24;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v27);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    Promise.reject(_:)();
  }
}

void sub_100182E7C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_100182F10(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_100182714(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_100183010(uint64_t a1)
{
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  sub_10002849C(&qword_1009764A0);
  v3 = Promise.__allocating_init()();
  sub_100005744(0, &qword_10098D1A0);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v4 = [aBlock[0] ams_activeiTunesAccount];

  if (v4)
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for OSLogger();
    sub_1000056A8(v5, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v6._countAndFlagsBits = 0xD00000000000002DLL;
    v6._object = 0x8000000100804610;
    LogMessage.StringInterpolation.appendLiteral(_:)(v6);
    v23 = sub_100005744(0, &qword_100977240);
    aBlock[0] = v4;
    v7 = v4;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(aBlock);
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    type metadata accessor for ASKBagContract();
    inject<A, B>(_:from:)();
    v9 = aBlock[0];
    v10 = v7;
    v11 = ASKBagContract.amsBag.getter();
    v12 = objc_allocWithZone(AMSNotificationSettingsTask);
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 initWithIdentifier:v13 account:v10 bag:v11];

    swift_unknownObjectRelease();
    v15 = [v14 fetchAllSettings];
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = v10;
    v16[4] = v9;
    v16[5] = v3;
    v24 = sub_1001835D8;
    v25 = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100182E7C;
    v23 = &unk_1008B6C28;
    v17 = _Block_copy(aBlock);
    v18 = v10;

    [v15 addFinishBlock:v17];
    _Block_release(v17);
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for OSLogger();
    sub_1000056A8(v19, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100183584();
    swift_allocError();
    *v20 = 0;
    Promise.reject(_:)();
  }

  return v3;
}

unint64_t sub_100183584()
{
  result = qword_100977238;
  if (!qword_100977238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977238);
  }

  return result;
}

unint64_t sub_100183620()
{
  result = qword_100977258;
  if (!qword_100977258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977258);
  }

  return result;
}

uint64_t type metadata accessor for MediaPageHeaderCollectionViewHostingCell()
{
  result = qword_100977288;
  if (!qword_100977288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1001837EC()
{
  v0 = type metadata accessor for Shelf.ContentType();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for Shelf.ContentType.mediaPageHeader(_:), v0, v2);
  v5 = COERCE_DOUBLE(static ComponentHeightFactory.estimatedComponentHeight(for:)());
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  result = v5;
  if (v7)
  {
    return 0.0;
  }

  return result;
}

void *sub_1001838F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController);
  v2 = v1;
  return v1;
}

void sub_100183928(void *a1)
{
  sub_1001872C0(a1);
}

void sub_100183998(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Uber.Style();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Uber.AssetType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Uber.assetType.getter();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for Uber.AssetType.artwork(_:))
  {
    v13 = [v1 traitCollection];
    v14 = UITraitCollection.isSizeClassCompact.getter();

    if (v14)
    {
      v15 = Uber.compactArtwork.getter();
      if (!v15)
      {
        return;
      }

LABEL_27:

      Uber.style.getter();
      sub_100183ED8(v15, a1, v7);

      (*(v5 + 8))(v7, v4);
      return;
    }

    v15 = Uber.artwork.getter();
    if (v15)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v12 == enum case for Uber.AssetType.video(_:))
    {
      v16 = *(a1 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView);
      v37 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
      v38 = v16;
      v17 = *(v16 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
      v18 = &unk_100986000;
      v19 = *&v17[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
      v39 = v2;
      if (v19)
      {
        type metadata accessor for VideoView();
        v20 = swift_dynamicCastClass();
        if (v20)
        {
          sub_1001873D4(&qword_100973190, type metadata accessor for VideoView);
          v21 = v19;
          v22 = [v20 superview];
          if (v22)
          {
            v23 = v22;
            v35 = sub_100005744(0, &qword_100972EB0);
            v24 = v21;
            v25 = v17;
            v36 = a1;
            v26 = static NSObject.== infix(_:_:)();
            a1 = v36;
            LODWORD(v35) = v26;

            v18 = &unk_100986000;
            if (v35)
            {
              [v20 removeFromSuperview];
            }
          }

          else
          {
          }
        }
      }

      else
      {
        v20 = 0;
      }

      v27 = v18;
      v28 = v18[422];
      v29 = *&v17[v28];
      *&v17[v28] = v20;
      v30 = v20;
      sub_10047C6C8(v29);

      if (v20)
      {
        *&v30[qword_100988CB8 + 8] = &off_1008B4C68;
        swift_unknownObjectWeakAssign();
      }

      type metadata accessor for VideoPlaybackCoordinator();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v31 = v40;
      v32 = *(*(v38 + v37) + v27[422]);
      if (v32)
      {
        type metadata accessor for VideoView();
        v33 = swift_dynamicCastClass();
        if (v33)
        {
          sub_1001873D4(&qword_100973190, type metadata accessor for VideoView);
          v34 = v32;
        }
      }

      else
      {
        v33 = 0;
      }

      sub_1001873D4(&qword_100974F38, type metadata accessor for UberHeaderView);
      dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();

      if (!Uber.video.getter())
      {

        return;
      }

      v15 = Video.preview.getter();

      goto LABEL_27;
    }

    if (v12 != enum case for Uber.AssetType.icon(_:))
    {
      (*(v9 + 8))(v11, v8);
      return;
    }

    v15 = Uber.iconArtwork.getter();
    if (v15)
    {
      goto LABEL_27;
    }
  }
}

id sub_100183ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for AspectRatio();
  v59 = *(v8 - 8);
  v60 = v8;
  __chkstk_darwin(v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Uber.Style();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v3 tabBarController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 tabBar];

    [v18 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v67.origin.x = v20;
    v67.origin.y = v22;
    v67.size.width = v24;
    v67.size.height = v26;
    Height = CGRectGetHeight(v67);
  }

  else
  {
    Height = 0.0;
  }

  v61 = a1;
  v28 = Artwork.backgroundColor.getter();
  v29 = *(a2 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView);
  v30 = type metadata accessor for MediaView();
  v66.receiver = v29;
  v66.super_class = v30;
  objc_msgSendSuper2(&v66, "setBackgroundColor:", v28);
  [*(*&v29[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) setBackgroundColor:v28];
  v31 = *&v29[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView];
  if (v31)
  {
    v32 = v31;
    [v32 setBackgroundColor:v28];
  }

  result = [v4 view];
  if (result)
  {
    v34 = result;
    [result bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v68.origin.x = v36;
    v68.origin.y = v38;
    v68.size.width = v40;
    v68.size.height = v42;
    v43 = CGRectGetHeight(v68);
    v44 = *(a2 + OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset);
    result = [v4 view];
    if (result)
    {
      v45 = result;
      *&v46 = v43 - Height - v44;
      [result bounds];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;

      v69.origin.x = v48;
      v69.origin.y = v50;
      v69.size.width = v52;
      v69.size.height = v54;
      Width = CGRectGetWidth(v69);
      v56 = [v4 traitCollection];
      sub_1001158BC(v56, a3, 1, Width, v46, 0);
      if (UITraitCollection.isSizeClassCompact.getter())
      {
        (*(v12 + 104))(v15, enum case for Uber.Style.inline(_:), v11);
        sub_1001873D4(&qword_100973B50, &type metadata accessor for Uber.Style);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v64 == v62 && v65 == v63)
        {
          (*(v12 + 8))(v15, v11);

LABEL_14:
          Artwork.config(_:mode:prefersLayeredImage:)();

          type metadata accessor for UberHeaderView();
          sub_1001873D4(&qword_100973B48, type metadata accessor for UberHeaderView);
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
        }

        v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
        (*(v12 + 8))(v15, v11);

        if (v57)
        {
          goto LABEL_14;
        }
      }

      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      AspectRatio.width(fromHeight:)();
      (*(v59 + 8))(v10, v60);
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10018442C(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for TimingCurve();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100982E40);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &aBlock[-1] - v10;
  v12 = a1 < 0.5;
  if (*&v2[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_statusBarStyle] != v12)
  {
    aBlock[0] = 0x3FC999999999999ALL;
    aBlock[6] = 0x3FA999999999999ALL;
    (*(v5 + 104))(v7, enum case for TimingCurve.linear(_:), v4);
    Interpolator.init(fromValue:toValue:curve:)();
    Interpolator.value(forInput:)();
    (*(v9 + 8))(v11, v8);
    v13 = *aBlock;
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    *(v15 + 24) = v12;
    aBlock[4] = sub_1001873CC;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008B6F08;
    v16 = _Block_copy(aBlock);
    v17 = v2;

    [v14 animateWithDuration:v16 animations:v13];
    _Block_release(v16);
  }
}

void sub_1001846F8()
{
  if (!*&v0[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver])
  {
    return;
  }

  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = sub_10006C73C();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = v2;
    [v10 setContentInset:{v3, v5, v7, v9}];
    [v10 setScrollIndicatorInsets:{v3, v5, v7, v9}];

    v11 = OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_hasAnimatedToShowUber;
    if ((v0[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_hasAnimatedToShowUber] & 1) == 0 && [v0 isViewLoaded])
    {
      if ([v0 transitionCoordinator])
      {
        swift_unknownObjectRelease();
      }

      else
      {
        [v10 contentOffset];
        if (v12 <= 0.0)
        {
          v13 = [v0 collectionView];
          if (!v13)
          {
            goto LABEL_19;
          }

          v14 = v13;
          [v13 _effectiveContentInset];
          v16 = v15;

          [v10 setContentOffset:1 animated:{0.0, -v16}];
          v0[v11] = 1;
        }
      }
    }

    v17 = [v0 collectionView];
    if (v17)
    {
      v18 = v17;
      sub_10006C4B8(v17);

      return;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }
}

void sub_100184928()
{
  v1 = type metadata accessor for Uber.Style();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v28 - v6;
  __chkstk_darwin(v8);
  v10 = v28 - v9;
  MaxY = 0.0;
  if (*&v0[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber])
  {

    Uber.style.getter();

    (*(v2 + 32))(v10, v7, v1);
    (*(v2 + 104))(v4, enum case for Uber.Style.above(_:), v1);
    sub_1001873D4(&qword_100973B50, &type metadata accessor for Uber.Style);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v28[2] == v28[0] && v28[3] == v28[1])
    {
      v12 = 1;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v13 = *(v2 + 8);
    v13(v4, v1);

    if (v12)
    {
      v14 = [v0 navigationController];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 navigationBar];

        [v16 frame];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v29.origin.x = v18;
        v29.origin.y = v20;
        v29.size.width = v22;
        v29.size.height = v24;
        MaxY = CGRectGetMaxY(v29);
      }

      v25 = [v0 traitCollection];
      v26 = sub_100115CEC(v25, 1);

      v13(v10, v1);
      MaxY = v26 - MaxY;
    }

    else
    {
      v13(v10, v1);
    }
  }

  v27 = &v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationBarTransitionDistance];
  *v27 = fmax(MaxY, 16.0);
  *(v27 + 8) = 0;
  sub_1000625B0();
}

char *sub_100184C6C()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber];
    if (!v4)
    {
      v6 = 0;
      goto LABEL_38;
    }

    v5 = OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberHeaderView;
    v6 = *&v0[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberHeaderView];
    if (v6)
    {
      v7 = v6;
LABEL_38:

      return v6;
    }

    v63 = OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber;
    v8 = *&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
    v9 = objc_allocWithZone(type metadata accessor for UberHeaderView());
    swift_retain_n();

    v10 = sub_100112C00(v4, 1, v8);
    [v1 pageMarginInsets];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView;
    [*&v10[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView] layoutMargins];
    if (v12 != v23 || v14 != v20 || v16 != v21 || v18 != v22)
    {
      [*&v10[v19] setLayoutMargins:{v12, v14, v16, v18}];
      [v10 invalidateIntrinsicContentSize];
      v27 = *&v10[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver];
      if (v27)
      {

        v27(v28);
        sub_10001F63C(v27);
      }
    }

    v29 = [v1 navigationItem];
    v30 = OBJC_IVAR____TtC8AppStore14UberHeaderView_navigationItem;
    v31 = *&v10[OBJC_IVAR____TtC8AppStore14UberHeaderView_navigationItem];
    if (v31)
    {
      v32 = v31;
      v33 = String._bridgeToObjectiveC()();
      [v32 removeObserver:v10 forKeyPath:v33 context:&unk_100974E90];

      v34 = *&v10[v30];
    }

    else
    {
      v34 = 0;
    }

    *&v10[v30] = v29;
    v35 = v29;

    v36 = *&v10[v30];
    if (v36)
    {
      v37 = v36;
      v38 = String._bridgeToObjectiveC()();
      [v37 addObserver:v10 forKeyPath:v38 options:0 context:&unk_100974E90];

      v39 = *&v10[v30];
      if (v39)
      {
        v39 = [v39 title];
        if (v39)
        {
          v40 = v39;
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;

          v44 = v43;
          v39 = v41;
LABEL_28:
          sub_1001136B0(v39, v44);

          v45 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v46 = &v10[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver];
          v47 = *&v10[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver];
          *v46 = sub_1001873BC;
          v46[1] = v45;

          sub_10001F63C(v47);

          type metadata accessor for UberScrollObserver();
          v48 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v48[5] = 0;
          v48[6] = 0;
          v48[3] = v10;
          v48[4] = v3;
          swift_unknownObjectWeakAssign();
          v6 = v10;
          v49 = v3;
          sub_10006C3BC();
          v50 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v51 = v48[5];
          v48[5] = sub_1001873C4;
          v48[6] = v50;

          sub_10001F63C(v51);

          v52 = [v1 navigationItem];
          v53 = [v52 _largeTitleAccessoryView];

          if (v53)
          {
            v54 = [v1 navigationItem];
            [v54 _setLargeTitleAccessoryView:0];

            v55 = v53;
            sub_1003F02B0(v53);
          }

          v56 = *&v1[v5];
          v57 = v6;
          if (v56)
          {
            [v56 removeFromSuperview];
            v56 = *&v1[v5];
          }

          *&v1[v5] = v6;
          v3 = v6;

          v58 = [v1 viewIfLoaded];
          if (v58)
          {
            v59 = v58;
            [v58 insertSubview:v3 atIndex:0];
          }

          *&v1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver] = v48;

          v1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_contentInsetsInvalid] = 1;
          v60 = [v1 viewIfLoaded];
          [v60 setNeedsLayout];

          if (v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] == 1 && !*&v1[v64])
          {
            v61 = [v1 navigationItem];
            [v61 setLargeTitleDisplayMode:3];
          }

          else
          {
            v61 = [v1 navigationItem];
            [v61 setLargeTitleDisplayMode:2];
          }

          goto LABEL_38;
        }
      }
    }

    else
    {
      v39 = 0;
    }

    v44 = 0;
    goto LABEL_28;
  }

  return 0;
}

void sub_10018526C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberHeaderView;
  v3 = *&v0[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberHeaderView];
  if (v3)
  {
    type metadata accessor for UberHeaderView();
    sub_1001873D4(&qword_100973B48, type metadata accessor for UberHeaderView);
    v4 = v3;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    v5 = *(*&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView] + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView);
    if (v5)
    {
      v6 = v5;
      v7 = [v1 navigationItem];
      v8 = v6;
      [v7 _setLargeTitleAccessoryView:v8];
    }
  }

  v9 = OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver;
  v10 = *&v1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver];
  if (v10)
  {
    v11 = *(v10 + 40);
    if (v11)
    {

      v12 = sub_10000827C(v11);
      v11(v12, 1.0, 0.0);

      sub_10001F63C(v11);
    }
  }

  v13 = *&v1[v2];
  if (v13)
  {
    [v13 removeFromSuperview];
    v14 = *&v1[v2];
  }

  else
  {
    v14 = 0;
  }

  *&v1[v2] = 0;

  *&v1[v9] = 0;

  v1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_contentInsetsInvalid] = 1;
  v15 = [v1 viewIfLoaded];
  [v15 setNeedsLayout];

  if (v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] == 1 && !*&v1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber])
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  v17 = [v1 navigationItem];
  [v17 setLargeTitleDisplayMode:v16];
}

id sub_1001854CC(void *a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_inlineLockupHeight) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_statusBarStyle) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_contentInsetsInvalid) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_hasAnimatedToShowUber) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberHeaderView) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_startedAsFlowPreview) = 0;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_artworkLoader) = v9;
  v5 = a1;

  v6 = sub_1000659FC(v5, a2);

  type metadata accessor for VideoPlaybackCoordinator();
  v7 = v6;
  inject<A, B>(_:from:)();
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();
  inject<A, B>(_:from:)();
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  return v7;
}

void sub_100185654()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    sub_100005744(0, &qword_100970180);
    v4 = static UIColor.defaultBackground.getter();
    [v3 setBackgroundColor:v4];

    v5 = [v1 collectionView];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() clearColor];
      [v6 setBackgroundColor:v7];
    }

    v8 = *&v1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberHeaderView];
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = v8;
    v10 = [v1 view];
    if (v10)
    {
      v11 = v10;
      [v10 insertSubview:v9 atIndex:0];

LABEL_7:
      sub_100184928();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100185808()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v3, "as_viewWillBecomeFullyVisible");
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  type metadata accessor for PlaybackCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  if (v2)
  {
    v1 = v2;
    dispatch thunk of PlaybackCoordinator.resume()();
  }

  ArtworkLoader.isOccluded.setter();
}

uint64_t sub_10018592C(char a1)
{
  v2 = v1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v21, "viewWillAppear:", a1 & 1);
  result = ArtworkLoader.isOccluded.setter();
  v5 = *&v2[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver];
  if (v5 && !*&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController])
  {

    v6 = [v2 navigationController];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 navigationBar];

      if (v8)
      {

        v9 = [v2 transitionCoordinator];
        if (v9)
        {
          v10 = v9;
          v19 = sub_1001872B4;
          v20 = v5;
          v15 = _NSConcreteStackBlock;
          v16 = 1107296256;
          v17 = sub_1006D1458;
          v18 = &unk_1008B6E68;
          v11 = _Block_copy(&v15);

          v12 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v13 = swift_allocObject();
          *(v13 + 16) = v12;
          *(v13 + 24) = v5;
          v19 = sub_1001872B8;
          v20 = v13;
          v15 = _NSConcreteStackBlock;
          v16 = 1107296256;
          v17 = sub_1006D1458;
          v18 = &unk_1008B6EB8;
          v14 = _Block_copy(&v15);

          [v10 animateAlongsideTransition:v11 completion:v14];

          _Block_release(v14);
          _Block_release(v11);
          return swift_unknownObjectRelease();
        }

        sub_10006C3BC();
      }
    }
  }

  return result;
}

void sub_100185B9C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v7)
    {
      v8 = v7;
      sub_100005744(0, &qword_1009711C0);
      v9 = v6;
      v10 = static NSObject.== infix(_:_:)();

      if ((v10 & 1) != 0 && ([a1 isCancelled] & 1) != 0 && (v11 = *(a3 + 40)) != 0)
      {

        v11(v12, 1.0, 0.0);

        sub_10001F63C(v11);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_100185D1C(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  *(v1 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_contentInsetsInvalid) = 1;
  v3 = [v1 viewIfLoaded];
  [v3 setNeedsLayout];

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v4 = v6;
  dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  type metadata accessor for PlaybackCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  if (v6)
  {
    v5 = v6;
    dispatch thunk of PlaybackCoordinator.resume()();

    v4 = v5;
  }
}

void sub_100185E7C(char a1)
{
  v2 = v1;
  v23.receiver = v1;
  v23.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v23, "viewWillDisappear:", a1 & 1);
  type metadata accessor for PlaybackCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  v4 = v17;
  if (v17)
  {
    v5 = v17;
    dispatch thunk of PlaybackCoordinator.pause()();
  }

  v6 = *&v2[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v2 presentedViewController];
  if (v7)
  {
    v8 = v7;

LABEL_6:
    return;
  }

  if (v2[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation] == 1 || (v9 = [v2 transitionCoordinator]) == 0)
  {
    v15 = *(v6 + 40);
    if (!v15)
    {

      goto LABEL_6;
    }

    v15(v16, 1.0, 0.0);

    sub_10001F63C(v15);
  }

  else
  {
    v10 = v9;
    v21 = sub_1001872A4;
    v22 = v6;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_1006D1458;
    v20 = &unk_1008B6DC8;
    v11 = _Block_copy(&v17);

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v6;
    v21 = sub_1001872AC;
    v22 = v13;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_1006D1458;
    v20 = &unk_1008B6E40;
    v14 = _Block_copy(&v17);

    [v10 animateAlongsideTransition:v11 completion:v14];

    _Block_release(v14);
    _Block_release(v11);
    swift_unknownObjectRelease();
  }
}

void sub_100186144(void *a1, uint64_t a2)
{
  v3 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for StoreCollectionViewController();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      (*((swift_isaMask & *v5) + 0x158))();
    }
  }

  v6 = *(a2 + 40);
  if (v6)
  {

    v6(v7, 1.0, 0.0);

    sub_10001F63C(v6);
  }
}

void sub_10018623C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([a1 isCancelled])
    {
      v4 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v4)
      {
        v5 = v4;
        sub_100005744(0, &qword_1009711C0);
        v6 = v3;
        v7 = static NSObject.== infix(_:_:)();

        if ((v7 & 1) != 0 && !*&v6[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController])
        {
          v8 = [v6 navigationController];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 navigationBar];

            if (v10)
            {

              sub_10006C3BC();
            }
          }
        }
      }
    }
  }
}

void sub_1001863DC()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v3, "as_viewDidBecomePartiallyVisible");
  ArtworkLoader.isOccluded.setter();
  type metadata accessor for PlaybackCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  if (v2)
  {
    v1 = v2;
    dispatch thunk of PlaybackCoordinator.pause()();
  }
}

id sub_10018652C(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = type metadata accessor for UberedCollectionViewController();
  result = objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = *&v3[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver];
  if (v8)
  {
    v10[4] = sub_100187444;
    v10[5] = v8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1006D1458;
    v10[3] = &unk_1008B6DA0;
    v9 = _Block_copy(v10);
    swift_retain_n();

    [a1 animateAlongsideTransition:v9 completion:0];
    _Block_release(v9);
  }

  return result;
}

void sub_1001866C4()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v21, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberHeaderView];
  if (v1)
  {
    v2 = v1;
    [v0 pageMarginInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView;
    [*&v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView] layoutMargins];
    v18 = v4 == v15 && v6 == v12 && v8 == v13 && v10 == v14;
    if (v18 || ([*&v2[v11] setLayoutMargins:{v4, v6, v8, v10}], objc_msgSend(v2, "invalidateIntrinsicContentSize"), (v19 = *&v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver]) == 0))
    {
    }

    else
    {

      v19(v20);

      sub_10001F63C(v19);
    }
  }

  if (v0[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_contentInsetsInvalid] == 1)
  {
    v0[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_contentInsetsInvalid] = 0;
    sub_1001846F8();
  }
}

void sub_1001868CC(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber);
  if (v4)
  {
    v15 = v4;
    if (!a1)
    {
      goto LABEL_14;
    }

    type metadata accessor for Uber();
    sub_1001873D4(&qword_100973B40, &type metadata accessor for Uber);

    v5 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v5)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v6 = *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberHeaderView);
  if (v6)
  {
    v7 = v6;
    if (Uber.video.getter())
    {

      type metadata accessor for VideoPlaybackCoordinator();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v8 = *(*(*&v7[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      if (v8)
      {
        type metadata accessor for VideoView();
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          sub_1001873D4(&qword_100973190, type metadata accessor for VideoView);
          v10 = v8;
        }
      }

      else
      {
        v9 = 0;
      }

      sub_1001873D4(&qword_100974F38, type metadata accessor for UberHeaderView);
      v11 = v7;
      dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();
    }

    else
    {
    }
  }

LABEL_14:
  v12 = sub_100184C6C();
  if (!v12)
  {
LABEL_20:
    sub_10018526C();
    return;
  }

  v13 = v12;
  if (!*(v2 + v3))
  {

    goto LABEL_20;
  }

  v14 = *(*(*&v12[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);

  if (v14)
  {
    sub_100183998(v13);
  }

  sub_100184928();
}

void sub_100186B90()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver];
  if (v1)
  {
    if (*&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController])
    {
      v2 = *(v1 + 40);
      if (v2)
      {

        v3 = sub_10000827C(v2);
        v2(v3, 1.0, 0.0);

        sub_10001F63C(v2);
      }
    }

    else
    {

      v4 = [v0 navigationController];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 navigationBar];

        if (v6)
        {

          sub_10006C3BC();
        }
      }
    }
  }
}

void sub_100186CC0(char *a1, uint64_t a2)
{
  v3 = *&a1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_statusBarStyle];
  *&a1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_statusBarStyle] = a2;
  if (v3 != a2)
  {
    v5 = [objc_allocWithZone(UIStatusBarAnimationParameters) init];
    [v5 setSkipFencing:1];
    [a1 _setNeedsStatusBarAppearanceUpdateWithAnimationParameters:v5];
  }
}

void sub_100186D5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_contentInsetsInvalid] = 1;
    v1 = Strong;
    v2 = [Strong viewIfLoaded];
    [v2 setNeedsLayout];
  }
}

void sub_100186DE4(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10018442C(a1);
  }
}

void sub_100186FF8(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.isSizeClassCompact.getter();

  if (!a1 || (UITraitCollection.isSizeClassCompact.getter() & 1) != (v5 & 1))
  {
    v6 = sub_100184C6C();
    if (v6)
    {
      v7 = v6;
      if (*&v2[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber])
      {

        sub_100183998(v7);

        return;
      }
    }

    sub_10018526C();
  }
}

uint64_t sub_10018714C()
{
}

id sub_1001871AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UberedCollectionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100187270(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_startedAsFlowPreview) = result;
  if (result)
  {
    *(v1 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation) = 1;
  }

  return result;
}

void sub_1001872C0(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  static ViewControllerContainment.remove(_:)();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v7 = v5;

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];

    static ViewControllerContainment.add(_:to:frame:)();

    sub_100186B90();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001873D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10018744C()
{
  result = qword_100974A48;
  if (!qword_100974A48)
  {
    type metadata accessor for BadgeCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974A48);
  }

  return result;
}

double sub_1001874A4()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  (*(v1 + 8))(v3, v0);
  if (qword_10096E6F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  sub_1000056A8(v4, qword_1009D2508);
  v5 = ShelfLayoutContext.traitCollection.getter();
  static BadgeViewRibbonLayout.estimatedHeight(fitting:using:with:)();
  v7 = v6;

  return v7;
}

uint64_t sub_100187608(uint64_t a1)
{
  v3 = type metadata accessor for SmallStoryCardLayout.Metrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_mainContentView);
  v18 = sub_100005744(0, &qword_100972EB0);
  v19 = &protocol witness table for UIView;
  v17 = v7;
  v8 = *(v1 + OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_headingLabel);
  v15 = type metadata accessor for DynamicTypeLabel();
  v16 = &protocol witness table for UIView;
  v9 = *(v1 + OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_descriptionLabel);
  v14[5] = &protocol witness table for UIView;
  v14[6] = v8;
  v14[4] = v15;
  v14[1] = v9;
  (*(v4 + 16))(v6, a1, v3);
  v10 = v7;
  v11 = v8;
  v12 = v9;
  return SmallStoryCardLayout.init(contentView:headingLabel:descriptionLabel:metrics:)();
}

uint64_t sub_100187770(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v3 = type metadata accessor for PageGrid();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  (*(v4 + 56))(v12, 0, 1, v3);
  v13 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000315F8(v12, v2 + v13, &qword_10097DBD0);
  swift_endAccess();
  type metadata accessor for TodayCard();
  sub_100189B2C(&qword_100977390, &type metadata accessor for TodayCard);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v15 = v17;
  if (v17)
  {
    sub_100031660(v2 + v13, v9, &qword_10097DBD0);
    if ((*(v4 + 48))(v9, 1, v3) == 1)
    {

      return sub_10002B894(v9, &qword_10097DBD0);
    }

    else
    {
      (*(v4 + 32))(v6, v9, v3);
      (*((swift_isaMask & *v2) + 0xD8))(v15, v6, v16);
      [v2 setNeedsLayout];

      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

uint64_t sub_100187A84@<X0>(objc_class *a1@<X0>, uint64_t a2@<X8>)
{
  v37.super.isa = a1;
  v39 = a2;
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AspectRatio();
  __chkstk_darwin(v6 - 8);
  v38 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AspectRatio.init(_:_:)();
  if (qword_10096E2A0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D1760);
  v10 = *(v8 - 8);
  v11 = *(v10 + 16);
  v12 = v10 + 16;
  v34 = v9;
  v11(v5);
  v13 = enum case for FontSource.useCase(_:);
  v36 = v3[13];
  v36(v5);
  v43 = type metadata accessor for StaticDimension();
  v56[3] = v43;
  v56[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v56);
  v54 = v2;
  v55 = &protocol witness table for FontSource;
  v14 = sub_1000056E0(&v53);
  v35 = v3[2];
  v41 = v3 + 2;
  v35(v14, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v15 = v3[1];
  v42 = v3 + 1;
  v32 = v15;
  v15(v5, v2);
  if (qword_10096E2A8 != -1)
  {
    swift_once();
  }

  v33 = sub_1000056A8(v8, qword_1009D1778);
  (v11)(v5, v33, v8);
  v40 = v13;
  v16 = v13;
  v17 = v36;
  (v36)(v5, v16, v2);
  v54 = v43;
  v31 = v3 + 13;
  v29 = v8;
  v55 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v53);
  v28 = v12;
  v30 = v11;
  v51 = v2;
  v52 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v50);
  v19 = v35;
  v35(v18, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v20 = v32;
  v32(v5, v2);
  (v11)(v5, v34, v8);
  (v17)(v5, v40, v2);
  v51 = v43;
  v52 = &protocol witness table for StaticDimension;
  sub_1000056E0(v50);
  v21 = v20;
  isa = v37.super.isa;
  v23 = FontSource.font(compatibleWith:)(v37).super.isa;
  [(objc_class *)v23 lineHeight];
  v48 = v2;
  v49 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v47);
  v19(v24, v5, v2);
  StaticDimension.init(_:scaledLike:)();

  v21(v5, v2);
  v30(v5, v33, v29);
  (v17)(v5, v40, v2);
  v48 = v43;
  v49 = &protocol witness table for StaticDimension;
  sub_1000056E0(v47);
  v25 = FontSource.font(compatibleWith:)(isa).super.isa;
  [(objc_class *)v25 lineHeight];
  v45 = v2;
  v46 = &protocol witness table for FontSource;
  v26 = sub_1000056E0(v44);
  v19(v26, v5, v2);
  StaticDimension.init(_:scaledLike:)();

  v21(v5, v2);
  v45 = type metadata accessor for ZeroDimension();
  v46 = &protocol witness table for ZeroDimension;
  sub_1000056E0(v44);
  static ZeroDimension.zero.getter();
  return SmallStoryCardLayout.Metrics.init(contentAspectRatio:headingPrimarySpace:descriptionPrimarySpace:headingSecondarySpace:descriptionSecondarySpace:descriptionBottomSpace:descriptionNumberOfLines:headingNumberOfLines:)();
}

char *sub_10018807C(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for DirectionalTextAlignment();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  v15 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  v17 = *(*(v16 - 8) + 56);
  v53 = v4;
  v17(&v4[v15], 1, 1, v16);
  v51 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_headingLabel;
  if (qword_10096E2A0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009D1760);
  v20 = *(v18 - 8);
  v50 = *(v20 + 16);
  v50(v14, v19, v18);
  v49 = *(v20 + 56);
  v49(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.leading(_:);
  v22 = *(v10 + 104);
  v22(v52, enum case for DirectionalTextAlignment.leading(_:), v9);
  v23 = type metadata accessor for DynamicTypeLabel();
  v48 = v9;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v53[v51] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v51 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_descriptionLabel;
  if (qword_10096E2A8 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v18, qword_1009D1778);
  v50(v14, v26, v18);
  v49(v14, 0, 1, v18);
  v22(v52, v21, v48);
  v27 = objc_allocWithZone(v24);
  v28 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v29 = v53;
  *&v53[v51] = v28;
  v30 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_mainContentView;
  *&v29[v30] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v31 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageGrid;
  v32 = type metadata accessor for PageGrid();
  (*(*(v32 - 8) + 56))(&v29[v31], 1, 1, v32);
  *&v29[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageTraits] = 0;
  v33 = type metadata accessor for BaseTodayBrickCollectionViewCell();
  v54.receiver = v29;
  v54.super_class = v33;
  v34 = objc_msgSendSuper2(&v54, "initWithFrame:", a1, a2, a3, a4);
  v35 = [v34 contentView];
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v36 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_mainContentView;
  [*&v34[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_mainContentView] _setCornerRadius:20.0];
  [*&v34[v36] setClipsToBounds:1];
  v37 = *&v34[v36];
  sub_100005744(0, &qword_100970180);
  v38 = v37;
  v39 = static UIColor.placeholderBackground.getter();
  [v38 setBackgroundColor:v39];

  v40 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_headingLabel;
  v41 = *&v34[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_headingLabel];
  v42 = static UIColor.secondaryText.getter();
  [v41 setTextColor:v42];

  [*&v34[v40] setNumberOfLines:2];
  v43 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_descriptionLabel;
  [*&v34[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_descriptionLabel] setNumberOfLines:2];
  v44 = [v34 contentView];
  [v44 addSubview:*&v34[v40]];

  v45 = [v34 contentView];
  [v45 addSubview:*&v34[v43]];

  v46 = [v34 contentView];
  [v46 addSubview:*&v34[v36]];

  return v34;
}

id sub_1001886B8()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SmallStoryCardLayout();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SmallStoryCardLayout.Metrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BaseTodayBrickCollectionViewCell();
  v20.receiver = v1;
  v20.super_class = v13;
  result = objc_msgSendSuper2(&v20, "layoutSubviews");
  if (*&v1[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageTraits])
  {
    swift_unknownObjectRetain();
    v15 = [v1 traitCollection];
    v18 = v2;
    v16 = v15;
    sub_100187A84(v15, v12);

    sub_100187608(v12);
    v17 = [v1 contentView];
    sub_100005744(0, &qword_100972EB0);
    LayoutMarginsAware<>.layoutFrame.getter();

    SmallStoryCardLayout.placeChildren(relativeTo:in:)();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v18);
    (*(v6 + 8))(v8, v19);
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

id sub_1001889EC()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageTraits;
  *&v0[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageTraits] = 0;
  swift_unknownObjectRelease();
  if (*&v0[v1])
  {
    [v0 setNeedsLayout];
  }

  [*&v0[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_headingLabel] setText:0];
  return [*&v0[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_descriptionLabel] setText:0];
}

uint64_t sub_100188BB0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_headingLabel) text];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v21[0] = v4;
  v5 = [*(v0 + OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_descriptionLabel) text];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = 0;
  v21[1] = v7;
  v21[2] = v9;
  v11 = _swiftEmptyArrayStorage;
LABEL_8:
  v12 = &v21[2 * v10];
  while (++v10 != 3)
  {
    v13 = v12 + 2;
    v14 = *v12;
    v12 += 2;
    if (v14)
    {
      v15 = *(v13 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100033E38(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_100033E38((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[2 * v17];
      *(v18 + 4) = v15;
      *(v18 + 5) = v14;
      goto LABEL_8;
    }
  }

  sub_10002849C(&unk_100984350);
  swift_arrayDestroy();
  sub_10002849C(&unk_100977380);
  sub_10015872C();
  v19 = BidirectionalCollection<>.joined(separator:)();

  return v19;
}
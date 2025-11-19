uint64_t sub_1004E4A08@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC13D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC13C0);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004F08E8(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC13D0);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC13C0);
  result = sub_10022C350(&qword_100CC1170);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E4E00@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC1430);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC1420);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004F0360(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC1430);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC1420);
  result = sub_10022C350(&qword_100CC1168);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E51F8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC1488);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC1478);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_10014E1B8(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC1488);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC1478);
  result = sub_10022C350(&qword_100CC1150);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E55F0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC14F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC14E0);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004EFDD8(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC14F0);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC14E0);
  result = sub_10022C350(&qword_100CC1148);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E59E8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC1548);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC1538);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004EF850(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC1548);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC1538);
  result = sub_10022C350(&qword_100CC1120);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E5DE0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC15A8);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC1598);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004EF2C8(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC15A8);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC1598);
  result = sub_10022C350(&qword_100CC1118);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E61D8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC1600);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC15F0);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004EED40(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC1600);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC15F0);
  result = sub_10022C350(&qword_100CC1100);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E65D0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC1670);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC1660);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004EE7B8(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC1670);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC1660);
  result = sub_10022C350(&qword_100CC10F8);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E69C8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC16C8);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC16B8);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004EE230(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC16C8);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC16B8);
  result = sub_10022C350(&qword_100CC10B8);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E6DC0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC1728);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC1718);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004EDCA8(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC1728);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC1718);
  result = sub_10022C350(&qword_100CC10A8);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E71B8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC1780);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC1770);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004ED720(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC1780);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC1770);
  result = sub_10022C350(&qword_100CC1090);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E75B0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC17E8);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC17D8);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004ED198(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC17E8);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC17D8);
  result = sub_10022C350(&qword_100CC1088);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E79A8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC1840);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC1830);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004ECC10(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC1840);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC1830);
  result = sub_10022C350(&qword_100CC1058);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E7DA0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC18A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC1890);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004EC688(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC18A0);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC1890);
  result = sub_10022C350(&qword_100CC1050);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E8198@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC18F8);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC18E8);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004EC100(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC18F8);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC18E8);
  result = sub_10022C350(&qword_100CC1038);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E8590@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC12A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC1290);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004EBB78(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC12A0);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC1290);
  result = sub_10022C350(&qword_100CC1030);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E8988@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC12F8);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC12E8);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004EB5F0(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC12F8);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC12E8);
  result = sub_10022C350(&qword_100CC1008);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E8D80@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC11E8);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC11D8);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004EB068(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC11E8);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC11D8);
  result = sub_10022C350(&qword_100CC1000);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E9178@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC1240);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC1230);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004EAAE0(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC1240);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC1230);
  result = sub_10022C350(&qword_100CC0FE8);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1004E9570@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v33 = sub_10022C350(&unk_100CABD90);
  __chkstk_darwin(v33);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DailyForecastComponentViewModel(0);
  __chkstk_darwin(v12 - 8);
  sub_1001993DC();
  v13 = type metadata accessor for LocationComponentContainerContentView(0);
  v14 = *(a1 + *(v13 + 28));
  v15 = (a1 + *(v13 + 32));
  v16 = v15[1];
  v31 = *v15;
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  v30 = v14;
  swift_unknownObjectRetain();

  if (v18 != 1)
  {
    sub_10022BF9C(v17, 0);
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v17, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(v17) = v34;
  }

  if (v17)
  {
    v20 = 12.0;
  }

  else
  {
    v20 = 16.0;
  }

  sub_1001AD070();
  v21 = type metadata accessor for DailyComponentView(0);
  *(a2 + v21[5]) = v30;
  v22 = (a2 + v21[6]);
  *v22 = v31;
  v22[1] = v16;
  *(a2 + v21[7]) = v20;
  v23 = v21[8];
  *(a2 + v23) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  v24 = a2 + v21[9];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = a2 + v21[10];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  Text.Measurements.init()();
  v26 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_10001B350(v7, 1, 1, v26);
  sub_1000302D8(v7, v32, &unk_100CABD90);
  State.init(wrappedValue:)();
  sub_100018198(v7, &unk_100CABD90);
  v27 = (a2 + v21[13]);
  type metadata accessor for ObservableResolver();
  sub_100061A3C(&qword_100CB0468, &type metadata accessor for ObservableResolver);
  result = EnvironmentObject.init()();
  *v27 = result;
  v27[1] = v29;
  return result;
}

uint64_t sub_1004E9988@<X0>(uint64_t a1@<X8>)
{
  sub_1001993DC();
  v2 = type metadata accessor for FeelsLikeComponentView();
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath();
  *(v3 + 8) = 0;
  v4 = a1 + v2[6];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = a1 + v2[7];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = v2[8];
  *(a1 + v6) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  v7 = *(sub_10022C350(&qword_100CC1998) + 36);
  *(a1 + v7) = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1004E9ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = *(sub_10022C350(&qword_100CC19D0) + 36);
  *(a3 + v10) = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  *a3 = a4;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = KeyPath;
  *(a3 + 32) = 0;
  *(a3 + 40) = v9;
  *(a3 + 48) = 0;
}

uint64_t sub_1004E9B98@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MapComponentViewModel();
  __chkstk_darwin(v2 - 8);
  sub_1001993DC();
  sub_100957ED4(a1);
  v3 = *(sub_10022C350(&qword_100CC19F0) + 36);
  *(a1 + v3) = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1004E9C84@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MoonComponentView(0);
  sub_1001993DC();
  *(a1 + v2[5]) = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0);
  swift_storeEnumTagMultiPayload();
  *(a1 + v2[10]) = swift_getKeyPath();
  sub_10022C350(&unk_100CE1000);
  swift_storeEnumTagMultiPayload();
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v3 = a1 + v2[6];
  *v3 = swift_getKeyPath();
  *(v3 + 8) = 0;
  v4 = a1 + v2[7];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = v2[8];
  *(a1 + v5) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  v6 = v2[9];
  *(a1 + v6) = swift_getKeyPath();
  sub_10022C350(&qword_100CB6EF8);
  swift_storeEnumTagMultiPayload();
  Text.Measurements.init()();
  v7 = a1 + v2[13];
  type metadata accessor for CGRect(0);
  State.init(wrappedValue:)();
  *v7 = v11;
  *(v7 + 16) = v12;
  *(v7 + 32) = v13;
  v8 = a1 + v2[14];
  State.init(wrappedValue:)();
  *v8 = v11;
  *(v8 + 8) = *(&v11 + 1);
  v9 = *(sub_10022C350(&qword_100CC1A10) + 36);
  *(a1 + v9) = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1004E9ED4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NewsArticleComponentView();
  sub_1001993DC();
  *a1 = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0);
  swift_storeEnumTagMultiPayload();
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath();
  v3[8] = 0;
  v4 = a1 + v2[6];
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v5 = v2[7];
  *(a1 + v5) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  result = swift_storeEnumTagMultiPayload();
  *(a1 + v2[9]) = 0;
  *(a1 + v2[10]) = 0;
  return result;
}

uint64_t sub_1004E9FE4@<X0>(uint64_t a1@<X8>)
{
  sub_1001993DC();
  HourPrecipitationComponentView = type metadata accessor for NextHourPrecipitationComponentView();
  v3 = a1 + *(HourPrecipitationComponentView + 20);
  *v3 = swift_getKeyPath();
  *(v3 + 8) = 0;
  v4 = a1 + *(HourPrecipitationComponentView + 24);
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  sub_1001BB6FC();
  ScaledMetric.init(wrappedValue:)();
  v5 = *(sub_10022C350(&qword_100CC1A48) + 36);
  *(a1 + v5) = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1004EA0EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1001993DC();
  v4 = *(type metadata accessor for LocationComponentContainerContentView(0) + 28);
  *(a2 + *(type metadata accessor for NotificationsOptInComponentView() + 20)) = *(a1 + v4);

  return swift_unknownObjectRetain();
}

uint64_t sub_1004EA168@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for LocationComponentContainerContentView(0) + 28));

  return swift_unknownObjectRetain();
}

uint64_t sub_1004EA1B4@<X0>(uint64_t a1@<X8>)
{
  sub_1001993DC();
  v2 = *(type metadata accessor for PressureComponentView(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  v3 = *(sub_10022C350(&qword_100CC1A98) + 36);
  *(a1 + v3) = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1004EA288@<X0>(void *__src@<X0>, char *a2@<X8>)
{
  memcpy(a2, __src, 0x70uLL);
  v4 = type metadata accessor for PrecipitationTotalComponentView(0);
  v5 = *(v4 + 20);
  *&a2[v5] = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  v6 = &a2[*(v4 + 24)];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = *(sub_10022C350(&qword_100CC1AB8) + 36);
  *&a2[v7] = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  return sub_100428584(__src, &v9);
}

void *sub_1004EA384@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + *(type metadata accessor for LocationComponentContainerContentView(0) + 28));
  swift_unknownObjectRetain();
  sub_10023ACB8(__src);
  type metadata accessor for ReportWeatherTipViewFactory();
  v5 = swift_allocObject();
  *a3 = a1;
  *(a3 + 8) = v7;
  result = memcpy((a3 + 24), __src, 0x48uLL);
  *(a3 + 96) = v5;
  return result;
}

uint64_t sub_1004EA418@<X0>(uint64_t a1@<X8>)
{
  sub_1001993DC();
  v2 = a1 + *(type metadata accessor for SevereAlertComponentView(0) + 20);
  *v2 = swift_getKeyPath();
  *(v2 + 8) = 0;
  v3 = *(sub_10022C350(&qword_100CC1AF0) + 36);
  *(a1 + v3) = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1004EA4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SunriseSunsetViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = type metadata accessor for SunriseSunsetComponentView();
  v6 = v5[5];
  *(a2 + v6) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v5[6];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a2 + v5[7];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a2 + v5[8];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a2 + v5[9];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = *(sub_10022C350(&qword_100CC1B10) + 36);
  *(a2 + v11) = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1004EA644@<X0>(const void *a1@<X0>, char *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = type metadata accessor for AveragesComponentView(0);
  *&a2[v5[5]] = KeyPath;
  sub_10022C350(&qword_100CA71B0);
  swift_storeEnumTagMultiPayload();
  *&a2[v5[7]] = swift_getKeyPath();
  sub_10022C350(&qword_100CA2E38);
  swift_storeEnumTagMultiPayload();
  memcpy(a2, a1, 0xB0uLL);
  v6 = &a2[v5[6]];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = &a2[v5[8]];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = *(sub_10022C350(&qword_100CC1B30) + 36);
  *&a2[v8] = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  return sub_100470A6C(a1, &v10);
}

uint64_t sub_1004EA7A0@<X0>(uint64_t a1@<X8>)
{
  sub_1001993DC();
  v2 = type metadata accessor for UVIndexComponentView();
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath();
  *(v3 + 8) = 0;
  v4 = a1 + v2[6];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = a1 + v2[7];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = v2[8];
  *(a1 + v6) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  sub_10014AB54();
  ScaledValue.init(wrappedValue:step:)();
  v7 = *(sub_10022C350(&qword_100CC1B50) + 36);
  *(a1 + v7) = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1004EA900@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *a1;
  v14 = a1[1];
  v10 = v14;
  v15 = v5;
  v13 = a1[2];
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v17 = 0;
  v16 = 0;
  v8 = *(sub_10022C350(&qword_100CC1B70) + 36);
  *(a2 + v8) = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  *a2 = v11;
  *(a2 + 16) = v10;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = v17;
  *(a2 + 64) = v7;
  *(a2 + 72) = v16;
  sub_100358150(&v15, v12);
  sub_100358150(&v14, v12);
  return sub_100358150(&v13, v12);
}

uint64_t sub_1004EAA10@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WindComponentView(0);
  sub_1001993DC();
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  v2 = *(sub_10022C350(&qword_100CC1B90) + 36);
  *(a1 + v2) = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1004EAAE0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC1B78);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC1260);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC1B80);
      sub_100018198(v39, &qword_100CC1B80);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC1270);
      sub_1004FCEDC();
      sub_10023FBF4(&qword_100CC1268, &qword_100CC1270);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC1B80);
  sub_100018198(v39, &qword_100CC1B80);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC1260);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC1270);
  sub_1004FCEDC();
  sub_10023FBF4(&qword_100CC1268, &qword_100CC1270);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC1260);
}

uint64_t sub_1004EB068@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC1B58);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC1208);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC1B60);
      sub_100018198(v39, &qword_100CC1B60);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC1218);
      sub_1004FCBCC();
      sub_10023FBF4(&qword_100CC1210, &qword_100CC1218);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC1B60);
  sub_100018198(v39, &qword_100CC1B60);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC1208);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC1218);
  sub_1004FCBCC();
  sub_10023FBF4(&qword_100CC1210, &qword_100CC1218);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC1208);
}

uint64_t sub_1004EB5F0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC1B38);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC1318);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC1B40);
      sub_100018198(v39, &qword_100CC1B40);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC1328);
      sub_1004FD588();
      sub_10023FBF4(&qword_100CC1320, &qword_100CC1328);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC1B40);
  sub_100018198(v39, &qword_100CC1B40);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC1318);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC1328);
  sub_1004FD588();
  sub_10023FBF4(&qword_100CC1320, &qword_100CC1328);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC1318);
}

uint64_t sub_1004EBB78@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC1B18);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC12C0);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC1B20);
      sub_100018198(v39, &qword_100CC1B20);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC12D0);
      sub_1004FD278();
      sub_10023FBF4(&qword_100CC12C8, &qword_100CC12D0);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC1B20);
  sub_100018198(v39, &qword_100CC1B20);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC12C0);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC12D0);
  sub_1004FD278();
  sub_10023FBF4(&qword_100CC12C8, &qword_100CC12D0);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC12C0);
}

uint64_t sub_1004EC100@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC1AF8);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC1918);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC1B00);
      sub_100018198(v39, &qword_100CC1B00);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC1928);
      sub_1004FFAEC();
      sub_10023FBF4(&qword_100CC1920, &qword_100CC1928);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC1B00);
  sub_100018198(v39, &qword_100CC1B00);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC1918);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC1928);
  sub_1004FFAEC();
  sub_10023FBF4(&qword_100CC1920, &qword_100CC1928);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC1918);
}

uint64_t sub_1004EC688@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC1AD8);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC18C0);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC1AE0);
      sub_100018198(v39, &qword_100CC1AE0);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC18D0);
      sub_1004FF7DC();
      sub_10023FBF4(&qword_100CC18C8, &qword_100CC18D0);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC1AE0);
  sub_100018198(v39, &qword_100CC1AE0);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC18C0);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC18D0);
  sub_1004FF7DC();
  sub_10023FBF4(&qword_100CC18C8, &qword_100CC18D0);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC18C0);
}

uint64_t sub_1004ECC10@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC1AC0);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC1860);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC1AC8);
      sub_100018198(v39, &qword_100CC1AC8);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC1870);
      sub_1004FF440();
      sub_10023FBF4(&qword_100CC1868, &qword_100CC1870);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC1AC8);
  sub_100018198(v39, &qword_100CC1AC8);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC1860);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC1870);
  sub_1004FF440();
  sub_10023FBF4(&qword_100CC1868, &qword_100CC1870);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC1860);
}

uint64_t sub_1004ED198@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC1AA0);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC1808);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC1AA8);
      sub_100018198(v39, &qword_100CC1AA8);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC1818);
      sub_1001C7580();
      sub_10023FBF4(&qword_100CC1810, &qword_100CC1818);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC1AA8);
  sub_100018198(v39, &qword_100CC1AA8);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC1808);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC1818);
  sub_1001C7580();
  sub_10023FBF4(&qword_100CC1810, &qword_100CC1818);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC1808);
}

uint64_t sub_1004ED720@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC1A80);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC17A0);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC1A88);
      sub_100018198(v39, &qword_100CC1A88);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC17B0);
      sub_1001BCD78();
      sub_10023FBF4(&qword_100CC17A8, &qword_100CC17B0);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC1A88);
  sub_100018198(v39, &qword_100CC1A88);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC17A0);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC17B0);
  sub_1001BCD78();
  sub_10023FBF4(&qword_100CC17A8, &qword_100CC17B0);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC17A0);
}

uint64_t sub_1004EDCA8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC1A68);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC1748);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC1A70);
      sub_100018198(v39, &qword_100CC1A70);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC1758);
      sub_1001BCBD8();
      sub_10023FBF4(&qword_100CC1750, &qword_100CC1758);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC1A70);
  sub_100018198(v39, &qword_100CC1A70);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC1748);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC1758);
  sub_1001BCBD8();
  sub_10023FBF4(&qword_100CC1750, &qword_100CC1758);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC1748);
}

uint64_t sub_1004EE230@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC1A50);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC16E8);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC1A58);
      sub_100018198(v39, &qword_100CC1A58);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC16F8);
      sub_1001BCA38();
      sub_10023FBF4(&qword_100CC16F0, &qword_100CC16F8);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC1A58);
  sub_100018198(v39, &qword_100CC1A58);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC16E8);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC16F8);
  sub_1001BCA38();
  sub_10023FBF4(&qword_100CC16F0, &qword_100CC16F8);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC16E8);
}

uint64_t sub_1004EE7B8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC1A30);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC1690);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC1A38);
      sub_100018198(v39, &qword_100CC1A38);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC16A0);
      sub_1001BC898();
      sub_10023FBF4(&qword_100CC1698, &qword_100CC16A0);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC1A38);
  sub_100018198(v39, &qword_100CC1A38);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC1690);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC16A0);
  sub_1001BC898();
  sub_10023FBF4(&qword_100CC1698, &qword_100CC16A0);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC1690);
}

uint64_t sub_1004EED40@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC1A18);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC1620);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC1A20);
      sub_100018198(v39, &qword_100CC1A20);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC1630);
      sub_1001BC6F8();
      sub_10023FBF4(&qword_100CC1628, &qword_100CC1630);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC1A20);
  sub_100018198(v39, &qword_100CC1A20);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC1620);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC1630);
  sub_1001BC6F8();
  sub_10023FBF4(&qword_100CC1628, &qword_100CC1630);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC1620);
}

uint64_t sub_1004EF2C8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC19F8);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC15C8);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC1A00);
      sub_100018198(v39, &qword_100CC1A00);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC15D8);
      sub_1001BC558();
      sub_10023FBF4(&qword_100CC15D0, &qword_100CC15D8);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC1A00);
  sub_100018198(v39, &qword_100CC1A00);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC15C8);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC15D8);
  sub_1001BC558();
  sub_10023FBF4(&qword_100CC15D0, &qword_100CC15D8);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC15C8);
}

uint64_t sub_1004EF850@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC19D8);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC1568);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC19E0);
      sub_100018198(v39, &qword_100CC19E0);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC1578);
      sub_1001BC3B8();
      sub_10023FBF4(&qword_100CC1570, &qword_100CC1578);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC19E0);
  sub_100018198(v39, &qword_100CC19E0);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC1568);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC1578);
  sub_1001BC3B8();
  sub_10023FBF4(&qword_100CC1570, &qword_100CC1578);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC1568);
}

uint64_t sub_1004EFDD8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC19B8);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC1510);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC19C0);
      sub_100018198(v39, &qword_100CC19C0);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC1520);
      sub_1001BBED8();
      sub_10023FBF4(&qword_100CC1518, &qword_100CC1520);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC19C0);
  sub_100018198(v39, &qword_100CC19C0);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC1510);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC1520);
  sub_1001BBED8();
  sub_10023FBF4(&qword_100CC1518, &qword_100CC1520);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC1510);
}

uint64_t sub_1004F0360@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC1980);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC1450);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC1988);
      sub_100018198(v39, &qword_100CC1988);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC1460);
      sub_1001BB88C();
      sub_10023FBF4(&qword_100CC1458, &qword_100CC1460);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC1988);
  sub_100018198(v39, &qword_100CC1988);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC1450);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC1460);
  sub_1001BB88C();
  sub_10023FBF4(&qword_100CC1458, &qword_100CC1460);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC1450);
}

uint64_t sub_1004F08E8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC1968);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC13F0);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC1970);
      sub_100018198(v39, &qword_100CC1970);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC1400);
      sub_1001BC218();
      sub_10023FBF4(&qword_100CC13F8, &qword_100CC1400);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC1970);
  sub_100018198(v39, &qword_100CC1970);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC13F0);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC1400);
  sub_1001BC218();
  sub_10023FBF4(&qword_100CC13F8, &qword_100CC1400);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC13F0);
}

uint64_t sub_1004F0E70@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC1938);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC1398);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC1940);
      sub_100018198(v39, &qword_100CC1940);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC13A8);
      sub_1001BC078();
      sub_10023FBF4(&qword_100CC13A0, &qword_100CC13A8);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC1940);
  sub_100018198(v39, &qword_100CC1940);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC1398);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC13A8);
  sub_1001BC078();
  sub_10023FBF4(&qword_100CC13A0, &qword_100CC13A8);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC1398);
}

void sub_1004F13F8()
{
  sub_100040DC8();
  v35 = v2;
  v34 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v33 = v10;
  v12 = v11;
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v29 = v14;
  v30 = v13;
  __chkstk_darwin(v13);
  sub_1000037D8();
  sub_10001365C();
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = v7;
  type metadata accessor for WireframeContentManager();
  sub_100061A3C(&qword_100CC1948, type metadata accessor for WireframeContentManager);

  v32 = Environment.init<A>(_:)();
  LOBYTE(v9) = v16;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v17 = v9 & 1;
  v58 = v9 & 1;
  type metadata accessor for LocationComponentContainerContentView(0);
  sub_1005026C8();
  v18 = type metadata accessor for LocationComponentContainerViewModel();
  v31 = sub_1009A2A00(*(v1 + *(v18 + 24)) | (*(v1 + *(v18 + 24) + 1) << 8));
  v19 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    sub_100016A84();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v19, 0);
    (*(v29 + 8))(v0, v30);
  }

  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v59 = 0;
  v37[208] = 0;
  v38[0] = v32;
  LOBYTE(v38[1]) = v17;
  BYTE1(v38[1]) = v33 & 1;
  *(&v38[1] + 2) = v56;
  HIWORD(v38[1]) = v57;
  v38[2] = v34;
  v38[3] = v15;
  memcpy(&v38[4], v55, 0x70uLL);
  LOBYTE(v38[18]) = v31;
  *(&v38[18] + 1) = *v60;
  HIDWORD(v38[18]) = *&v60[3];
  v38[19] = v22;
  v38[20] = v24;
  v38[21] = v26;
  v38[22] = v28;
  LOBYTE(v38[23]) = 0;
  *(&v38[23] + 1) = v61[0];
  HIDWORD(v38[23]) = *(v61 + 3);
  v38[24] = 0x3FF0000000000000;
  memcpy(&v37[7], v38, 0xC8uLL);
  v36[200] = 0;
  *v12 = 0;
  *(v12 + 8) = 0;
  memcpy((v12 + 9), v37, 0xCFuLL);
  *(v12 + 216) = 0;
  *(v12 + 224) = 0;
  v39 = v32;
  v40 = v17;
  v41 = v33 & 1;
  v42 = v56;
  v43 = v57;
  v44 = v34;
  v45 = v15;
  memcpy(v46, v55, 0x70uLL);
  v46[112] = v31;
  *v47 = *v60;
  *&v47[3] = *&v60[3];
  v48 = v22;
  v49 = v24;
  v50 = v26;
  v51 = v28;
  v52 = 0;
  *v53 = v61[0];
  *&v53[3] = *(v61 + 3);
  v54 = 0x3FF0000000000000;
  sub_1000302D8(v38, v36, v35);
  sub_100018198(&v39, v35);
  sub_100040CB4();
}

void *sub_1004F17E0@<X0>(void (*a1)(void *__return_ptr)@<X0>, void *a2@<X8>)
{
  a1(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v7, __src, sizeof(v7));
  sub_100500140(__dst, &v4);
  sub_10050019C(v7);
  return memcpy(a2, __dst, 0x68uLL);
}

void sub_1004F18A4()
{
  sub_100020DF0();
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_100019530();
  if ((*v0 & 1) == 0)
  {
    v12 = *(v0 + 16);
    v2 = *(v0 + 8);
    v11 = v2;
    if (v12 == 1)
    {
      if (v2)
      {
        goto LABEL_9;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v6 = static Log.runtimeIssuesLog.getter();
      sub_100016A84();

      EnvironmentValues.init()();
      sub_10000C918();
      swift_getAtKeyPath();
      sub_100018198(&v11, &qword_100CB91B8);
      v7 = sub_1000053B8();
      v8(v7);
      if (v9)
      {
        goto LABEL_9;
      }
    }
  }

  v10 = *(v0 + 32);
  v9 = *(v0 + 24);
  if (v10 != 1)
  {

    static os_log_type_t.fault.getter();
    v3 = static Log.runtimeIssuesLog.getter();
    sub_100016A84();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018198(&v9, &unk_100CC09F8);
    v4 = sub_1000053B8();
    v5(v4);
  }

LABEL_9:
  sub_1000212EC();
}

uint64_t sub_1004F1AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationComponentHeaderMetrics(0);
  __chkstk_darwin(v4);
  v5 = sub_10022C350(&qword_100CC1CA8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (v19 - v10);
  *v11 = static Alignment.top.getter();
  v11[1] = v12;
  v13 = sub_10022C350(&qword_100CC1CB0);
  sub_1004F1D34(a1, v11 + *(v13 + 44));
  v14 = *(sub_10022C350(&qword_100CC1CB8) + 36);
  *(v11 + v14) = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LocationComponentContainerBackgroundView(0);
  sub_10019200C();
  sub_100192034();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = (v11 + *(sub_10022C350(&qword_100CC1CC0) + 36));
  v16 = v19[1];
  *v15 = v19[0];
  v15[1] = v16;
  v15[2] = v19[2];
  *(v11 + *(v6 + 44)) = 1;
  sub_1000302D8(v11, v8, &qword_100CC1CA8);
  sub_1000302D8(v8, a2, &qword_100CC1CA8);
  v17 = a2 + *(sub_10022C350(&qword_100CC1CC8) + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_100018198(v11, &qword_100CC1CA8);
  return sub_100018198(v8, &qword_100CC1CA8);
}

uint64_t sub_1004F1D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v149 = sub_10022C350(&qword_100CC1CD0);
  __chkstk_darwin(v149);
  v120 = &v116 - v3;
  v4 = sub_10022C350(&qword_100CC1CD8);
  __chkstk_darwin(v4 - 8);
  v151 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v150 = &v116 - v7;
  v148 = sub_10022C350(&qword_100CC1CE0);
  __chkstk_darwin(v148);
  v132 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v133 = &v116 - v10;
  v144 = sub_10022C350(&qword_100CC1CE8);
  __chkstk_darwin(v144);
  v145 = &v116 - v11;
  v12 = type metadata accessor for LocationComponentCornerRadiusConfiguration(0);
  __chkstk_darwin(v12 - 8);
  v131 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = type metadata accessor for LocationComponentViewModel();
  __chkstk_darwin(KeyPath);
  v123 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v122 = &v116 - v16;
  v119 = type metadata accessor for LocationComponentHeaderViewModel(0);
  __chkstk_darwin(v119);
  v118 = (&v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v121 = &v116 - v19;
  __chkstk_darwin(v20);
  v22 = &v116 - v21;
  v137 = type metadata accessor for LocationComponentHeaderMetrics(0);
  __chkstk_darwin(v137);
  v143 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v116 - v25;
  __chkstk_darwin(v27);
  v124 = &v116 - v28;
  __chkstk_darwin(v29);
  v31 = &v116 - v30;
  v32 = type metadata accessor for LocationComponentHeaderView();
  __chkstk_darwin(v32 - 8);
  v139 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v136 = &v116 - v35;
  v140 = sub_10022C350(&qword_100CC1CF0);
  __chkstk_darwin(v140);
  v126 = &v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v129 = &v116 - v38;
  v125 = sub_10022C350(&qword_100CC1CF8);
  __chkstk_darwin(v125);
  v128 = &v116 - v39;
  v141 = sub_10022C350(&qword_100CC1D00);
  __chkstk_darwin(v141);
  v127 = &v116 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v130 = &v116 - v42;
  v43 = type metadata accessor for EnvironmentValues();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v116 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10022C350(&qword_100CC1D08);
  __chkstk_darwin(v47 - 8);
  v147 = &v116 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v146 = &v116 - v50;
  v51 = type metadata accessor for LocationComponentContainerBackgroundView(0);
  v52 = a1 + *(v51 + 32);
  v53 = *v52;
  v134 = *(v52 + 8);
  v153 = v51;
  v154 = a1;
  v116 = v46;
  v117 = v43;
  v142 = v44;
  v135 = v53;
  if (v134 == 1)
  {
    if ((v53 & 1) == 0)
    {
LABEL_3:
      sub_10019200C();
      v54 = v121;
      if (v26[*(v137 + 32)] == 1)
      {
        sub_100357854();
        sub_100192034();
      }

      else
      {
        sub_1001AD070();
      }

      sub_1001A3214(v54, v139);
      sub_1001993DC();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        sub_100192034();
        KeyPath = swift_getKeyPath();
        sub_10019200C();
        sub_100192034();
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v136 = v170;
        v137 = v168;
        v56 = v172;
        v57 = v173;
        LOBYTE(v157) = 0;
        LOBYTE(v156[0]) = v169;
        v155[0] = v171;
        v58 = v131;
        sub_1001D3424();
        v59 = *v58;
        sub_100192034();
        v60 = v157;
        v61 = LOBYTE(v156[0]);
        LODWORD(v131) = 256;
        v62 = 3;
        v63 = v155[0];
      }

      else
      {
        sub_100192034();
        v137 = 0;
        KeyPath = 0;
        v136 = 0;
        v56 = 0;
        v57 = 0;
        v59 = 0;
        v62 = 0;
        LODWORD(v131) = 0;
        v63 = 0;
        v61 = 0;
        v60 = 255;
      }

      v125 = v60;
      v129 = v61;
      v130 = v62;
      v70 = static Alignment.center.getter();
      v127 = v71;
      v128 = v70;
      v73 = v137;
      v72 = KeyPath;
      *&v156[0] = KeyPath;
      *(&v156[0] + 1) = v60;
      *&v156[1] = v137;
      *(&v156[1] + 1) = v61;
      v74 = v136;
      *&v156[2] = v136;
      *(&v156[2] + 1) = v63;
      v75 = v63;
      *&v156[3] = v56;
      *(&v156[3] + 1) = v57;
      *&v156[4] = v59;
      *(&v156[4] + 1) = v62;
      v76 = v131;
      LOWORD(v156[5]) = v131;
      *(&v156[5] + 1) = v70;
      *&v156[6] = v71;
      v77 = v126;
      sub_1001AD070();
      memcpy((v77 + *(v140 + 36)), v156, 0x68uLL);
      v157 = v72;
      v158 = v125;
      *&v159 = v73;
      *(&v159 + 1) = v129;
      *&v160 = v74;
      *(&v160 + 1) = v75;
      v161 = v56;
      v162 = v57;
      v163 = v59;
      v164 = v130;
      v165 = v76;
      v166 = v128;
      v167 = v127;
      sub_1000302D8(v156, v155, &qword_100CC1D10);
      sub_100018198(&v157, &qword_100CC1D10);
      v78 = v132;
      sub_10011C0F0(v77, v132, &qword_100CC1CF0);
      *(v78 + *(v148 + 36)) = 0x3FF0000000000000;
      v79 = &qword_100CC1CE0;
      v80 = v133;
      sub_10011C0F0(v78, v133, &qword_100CC1CE0);
      sub_1000302D8(v80, v145, &qword_100CC1CE0);
      swift_storeEnumTagMultiPayload();
      sub_1005006D4();
      sub_100500950();
      v81 = v146;
      goto LABEL_18;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v55 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v53, 0);
    (*(v44 + 8))(v46, v43);
    if (v157 != 1)
    {
      goto LABEL_3;
    }
  }

  sub_10019200C();
  if (v31[*(v137 + 32)] == 1)
  {
    sub_100357854();
    sub_100192034();
  }

  else
  {
    sub_1001AD070();
  }

  sub_1001A3214(v22, v136);
  sub_1001993DC();
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_100192034();
    KeyPath = swift_getKeyPath();
    sub_10019200C();
    sub_100192034();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v64 = v168;
    v137 = v170;
    v132 = v173;
    v133 = v172;
    LOBYTE(v157) = 0;
    LOBYTE(v156[0]) = v169;
    v155[0] = v171;
    v65 = v131;
    sub_1001D3424();
    v66 = *v65;
    sub_100192034();
    v67 = v157;
    v68 = LOBYTE(v156[0]);
    LODWORD(v139) = 256;
    v131 = 3;
    v69 = v155[0];
  }

  else
  {
    sub_100192034();
    v137 = 0;
    KeyPath = 0;
    v64 = 0;
    v132 = 0;
    v133 = 0;
    v66 = 0;
    v131 = 0;
    LODWORD(v139) = 0;
    v69 = 0;
    v68 = 0;
    v67 = 255;
  }

  v122 = v66;
  v123 = v68;
  v124 = v67;
  v126 = v69;
  v82 = static Alignment.center.getter();
  v84 = v83;
  v85 = KeyPath;
  *&v156[0] = KeyPath;
  *(&v156[0] + 1) = v67;
  *&v156[1] = v64;
  *(&v156[1] + 1) = v68;
  v86 = v137;
  *&v156[2] = v137;
  *(&v156[2] + 1) = v69;
  v88 = v132;
  v87 = v133;
  *&v156[3] = v133;
  *(&v156[3] + 1) = v132;
  v89 = v131;
  *&v156[4] = v66;
  *(&v156[4] + 1) = v131;
  LOWORD(v156[5]) = v139;
  *(&v156[5] + 1) = v82;
  *&v156[6] = v83;
  v90 = v129;
  sub_1001AD070();
  memcpy((v90 + *(v140 + 36)), v156, 0x68uLL);
  v157 = v85;
  v158 = v124;
  *&v159 = v64;
  *(&v159 + 1) = v123;
  *&v160 = v86;
  *(&v160 + 1) = v126;
  v161 = v87;
  v162 = v88;
  v163 = v122;
  v164 = v89;
  v165 = v139;
  v166 = v82;
  v167 = v84;
  sub_1000302D8(v156, v155, &qword_100CC1D10);
  sub_100018198(&v157, &qword_100CC1D10);
  v91 = v128;
  v92 = &v128[*(v125 + 36)];
  *v92 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v93 = v92 + *(type metadata accessor for HeaderModifier(0) + 20);
  *v93 = swift_getKeyPath();
  v93[8] = 0;
  sub_10011C0F0(v90, v91, &qword_100CC1CF0);
  v94 = v127;
  sub_10011C0F0(v91, v127, &qword_100CC1CF8);
  *(v94 + *(v141 + 36)) = 0x3FF0000000000000;
  v79 = &qword_100CC1D00;
  v80 = v130;
  sub_10011C0F0(v94, v130, &qword_100CC1D00);
  sub_1000302D8(v80, v145, &qword_100CC1D00);
  swift_storeEnumTagMultiPayload();
  sub_1005006D4();
  sub_100500950();
  v81 = v146;
LABEL_18:
  _ConditionalContent<>.init(storage:)();
  sub_100018198(v80, v79);
  sub_10019200C();
  sub_100357470();
  sub_100192034();
  v95 = v158;
  v96 = v150;
  v97 = v142;
  if (v158)
  {
    v98 = v157;
    v156[0] = v159;
    v156[1] = v160;
    *&v156[2] = v161;
    if (v134)
    {
      if ((v135 & 1) == 0)
      {
LABEL_21:
        sub_100018198(&v157, &unk_100CC1D58);
        goto LABEL_22;
      }
    }

    else
    {
      v101 = v135;

      static os_log_type_t.fault.getter();
      v102 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v103 = v116;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v101, 0);
      (*(v97 + 8))(v103, v117);
      if (v155[0] != 1)
      {
        goto LABEL_21;
      }
    }

    v104 = v118;
    *v118 = v98;
    *(v104 + 8) = v95;
    v105 = v156[1];
    *(v104 + 16) = v156[0];
    *(v104 + 32) = v105;
    *(v104 + 48) = *&v156[2];
    swift_storeEnumTagMultiPayload();
    v106 = v120;
    sub_1001A3214(v104, v120);
    v100 = v149;
    v107 = v106 + *(v149 + 36);
    *v107 = swift_getKeyPath();
    *(v107 + 8) = 0;
    v108 = type metadata accessor for PinningHeaderModifier(0);
    v109 = *(v108 + 20);
    *(v107 + v109) = swift_getKeyPath();
    sub_10022C350(&qword_100CC0970);
    swift_storeEnumTagMultiPayload();
    v110 = v107 + *(v108 + 24);
    *v110 = swift_getKeyPath();
    *(v110 + 8) = 0;
    sub_10011C0F0(v106, v96, &qword_100CC1CD0);
    v99 = 0;
    goto LABEL_25;
  }

LABEL_22:
  v99 = 1;
  v100 = v149;
LABEL_25:
  sub_10001B350(v96, v99, 1, v100);
  v111 = v147;
  sub_1000302D8(v81, v147, &qword_100CC1D08);
  v112 = v151;
  sub_1000302D8(v96, v151, &qword_100CC1CD8);
  v113 = v152;
  sub_1000302D8(v111, v152, &qword_100CC1D08);
  v114 = sub_10022C350(&qword_100CC1D50);
  sub_1000302D8(v112, v113 + *(v114 + 48), &qword_100CC1CD8);
  sub_100018198(v96, &qword_100CC1CD8);
  sub_100018198(v81, &qword_100CC1D08);
  sub_100018198(v112, &qword_100CC1CD8);
  return sub_100018198(v111, &qword_100CC1D08);
}

uint64_t sub_1004F2F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for RoundedRectangle();
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for LocationComponentCornerRadiusConfiguration(0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for LocationComponentContainerBackgroundView(0);
  sub_1001D3424();
  v16 = *v15;
  v17 = *(v13 + 28);
  v18 = *(v9 + 28);
  v19 = type metadata accessor for RoundedCornerStyle();
  (*(*(v19 - 8) + 32))(&v11[v18], &v15[v17], v19);
  *v11 = v16;
  *(v11 + 1) = v16;
  static Color.black.getter();
  v20 = *(a1 + 16);
  if (*(a1 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v20, 0);
    (*(v5 + 8))(v7, v4);
  }

  v22 = Color.opacity(_:)();

  sub_1001AD070();
  result = sub_10022C350(&qword_100CBDCE8);
  *(a2 + *(result + 52)) = v22;
  *(a2 + *(result + 56)) = 256;
  return result;
}

uint64_t sub_1004F3208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v65 = a3;
  v57 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v57);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocationComponentCornerRadiusConfiguration(0);
  __chkstk_darwin(v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10022C350(&qword_100CC1C40);
  __chkstk_darwin(v64);
  v10 = &v55 - v9;
  v60 = sub_10022C350(&qword_100CC1C48);
  __chkstk_darwin(v60);
  v62 = &v55 - v11;
  v61 = sub_10022C350(&qword_100CC1C50);
  __chkstk_darwin(v61);
  v56 = &v55 - v12;
  v13 = type metadata accessor for EnvironmentValues();
  v58 = *(v13 - 8);
  v59 = v13;
  __chkstk_darwin(v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LocationComponentHeaderMetrics(0);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for LocationComponentContainerBackgroundView(0);
  sub_10019200C();
  v21 = &v19[*(v17 + 36)];
  v22 = *v21;
  v23 = v21[8];
  sub_100192034();
  if (v23)
  {
    goto LABEL_2;
  }

  v30 = a1 + *(v20 + 32);
  v31 = *v30;
  if (*(v30 + 8) == 1)
  {
    if (v31)
    {
      goto LABEL_10;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v47 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v31, 0);
    (*(v58 + 8))(v15, v59);
    if (v66 == 1)
    {
LABEL_10:
      v48 = *a1;
      if (*(a1 + 8) == 1)
      {
        v49 = *a1;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v50 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000EBD74(v48, 0);
        (*(v58 + 8))(v15, v59);
        v49 = v66;
      }

      v51 = v56;
      v52 = &v56[*(v61 + 36)];
      *(v52 + 2) = swift_getKeyPath();
      v52[24] = 0;
      v53 = *(type metadata accessor for BackgroundModifier(0) + 28);
      *&v52[v53] = swift_getKeyPath();
      sub_10022C350(&qword_100CABDD0);
      swift_storeEnumTagMultiPayload();
      *v52 = v49;
      *(v52 + 1) = v22;
      sub_1000302D8(v63, v51, &qword_100CC1C10);
      v45 = &qword_100CC1C50;
      sub_1000302D8(v51, v62, &qword_100CC1C50);
      swift_storeEnumTagMultiPayload();
      sub_1005003F0();
      sub_10050061C();
      _ConditionalContent<>.init(storage:)();
      v46 = v51;
      return sub_100018198(v46, v45);
    }
  }

LABEL_2:
  sub_1001D3424();
  v24 = *v8;
  v25 = *(v6 + 20);
  v26 = *(v57 + 20);
  v27 = type metadata accessor for RoundedCornerStyle();
  (*(*(v27 - 8) + 32))(&v5[v26], &v8[v25], v27);
  *v5 = v24;
  *(v5 + 1) = v24;
  static Color.white.getter();
  v28 = Color.opacity(_:)();

  v29 = *a1;
  if (*(a1 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v29, 0);
    (*(v58 + 8))(v15, v59);
  }

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v33 = &v10[*(v64 + 36)];
  sub_1001993DC();
  v34 = &v33[*(sub_10022C350(&qword_100CBACF8) + 36)];
  v35 = v67;
  *v34 = v66;
  *(v34 + 1) = v35;
  *(v34 + 4) = v68;
  v36 = sub_10022C350(&qword_100CBAD00);
  *&v33[*(v36 + 52)] = v28;
  *&v33[*(v36 + 56)] = 256;
  v37 = static Alignment.center.getter();
  v39 = v38;
  sub_100192034();
  v40 = &v33[*(sub_10022C350(&qword_100CBAD08) + 36)];
  *v40 = v37;
  v40[1] = v39;
  v41 = static Alignment.center.getter();
  v43 = v42;
  v44 = &v33[*(sub_10022C350(&qword_100CC1C58) + 36)];
  *v44 = v41;
  v44[1] = v43;
  sub_1000302D8(v63, v10, &qword_100CC1C10);
  v45 = &qword_100CC1C40;
  sub_1000302D8(v10, v62, &qword_100CC1C40);
  swift_storeEnumTagMultiPayload();
  sub_1005003F0();
  sub_10050061C();
  _ConditionalContent<>.init(storage:)();
  v46 = v10;
  return sub_100018198(v46, v45);
}

uint64_t sub_1004F3A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v3 = type metadata accessor for LocationComponentHeaderViewModel(0);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  v5 = type metadata accessor for LocationComponentHeaderMetrics(0);
  __chkstk_darwin(v5 - 8);
  __chkstk_darwin(v6);
  v7 = sub_10022C350(&qword_100CC2448);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = static Edge.Set.top.getter();
  sub_10019200C();
  sub_1001AD070();
  swift_getEnumCaseMultiPayload();
  sub_100192034();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = sub_10022C350(&qword_100CC2450);
  (*(*(v20 - 8) + 16))(v10, v33, v20);
  v21 = &v10[*(v8 + 44)];
  *v21 = v11;
  *(v21 + 1) = v13;
  *(v21 + 2) = v15;
  *(v21 + 3) = v17;
  *(v21 + 4) = v19;
  v21[40] = 0;
  LOBYTE(v8) = static Edge.Set.bottom.getter();
  sub_10019200C();
  sub_1001993DC();
  swift_getEnumCaseMultiPayload();
  sub_100192034();
  sub_100192034();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_10011C0F0(v10, a2, &qword_100CC2448);
  result = sub_10022C350(&qword_100CC2458);
  v31 = a2 + *(result + 36);
  *v31 = v8;
  *(v31 + 8) = v23;
  *(v31 + 16) = v25;
  *(v31 + 24) = v27;
  *(v31 + 32) = v29;
  *(v31 + 40) = 0;
  return result;
}

uint64_t sub_1004F3D54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v89 = a1;
  v84 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v84);
  v71 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10022C350(&qword_100CC2368);
  __chkstk_darwin(v78);
  v72 = &v68 - v4;
  v75 = sub_10022C350(&qword_100CC2370);
  __chkstk_darwin(v75);
  v77 = &v68 - v5;
  v93 = sub_10022C350(&qword_100CC2378);
  __chkstk_darwin(v93);
  v79 = &v68 - v6;
  v76 = sub_10022C350(&qword_100CC2380);
  __chkstk_darwin(v76);
  v70 = &v68 - v7;
  v8 = sub_10022C350(&qword_100CA60E8);
  __chkstk_darwin(v8 - 8);
  v10 = &v68 - v9;
  v11 = sub_10022C350(&qword_100CC2388);
  __chkstk_darwin(v11);
  v74 = (&v68 - v12);
  v90 = sub_10022C350(&qword_100CC2390);
  __chkstk_darwin(v90);
  v92 = &v68 - v13;
  v87 = sub_10022C350(&qword_100CC2398);
  __chkstk_darwin(v87);
  v15 = &v68 - v14;
  v91 = sub_10022C350(&qword_100CC23A0);
  __chkstk_darwin(v91);
  v88 = &v68 - v16;
  v17 = type metadata accessor for Color.RGBColorSpace();
  v81 = *(v17 - 8);
  v82 = v17;
  __chkstk_darwin(v17);
  v80 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for LocationComponentCornerRadiusConfiguration(0);
  __chkstk_darwin(v85);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10022C350(&qword_100CBDCE8);
  __chkstk_darwin(v86);
  v83 = &v68 - v21;
  v22 = type metadata accessor for EnvironmentValues();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for LocationComponentBackground(0);
  v27 = v2 + v26[9];
  v28 = *v27;
  if (*(v27 + 8) == 1)
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v39 = v20;
    sub_1001D3424();
    v40 = *v20;
    v41 = *(v85 + 20);
    v42 = *(v84 + 20);
    v43 = type metadata accessor for RoundedCornerStyle();
    v44 = v83;
    (*(*(v43 - 8) + 32))(&v83[v42], &v39[v41], v43);
    *v44 = v40;
    v44[1] = v40;
    (*(v81 + 104))(v80, enum case for Color.RGBColorSpace.sRGB(_:), v82);
    v45 = Color.init(_:white:opacity:)();
    v46 = v86;
    *(v44 + *(v86 + 52)) = v45;
    *(v44 + *(v46 + 56)) = 256;
    v33 = &qword_100CBDCE8;
    sub_1000302D8(v44, v15, &qword_100CBDCE8);
    swift_storeEnumTagMultiPayload();
    sub_10023FBF4(&qword_100CC23F0, &qword_100CBDCE8);
    sub_10023FBF4(&qword_100CC23F8, &qword_100CC2388);
    v47 = v88;
    _ConditionalContent<>.init(storage:)();
    sub_1000302D8(v47, v92, &qword_100CC23A0);
    swift_storeEnumTagMultiPayload();
    sub_100501B90();
    sub_100501C74();
    _ConditionalContent<>.init(storage:)();
    sub_100018198(v47, &qword_100CC23A0);
    v35 = v44;
    goto LABEL_7;
  }

  v73 = v26;

  static os_log_type_t.fault.getter();
  v36 = static Log.runtimeIssuesLog.getter();
  v69 = v20;
  v37 = v2;
  v38 = v36;
  os_log(_:dso:log:_:_:)();

  v2 = v37;
  v20 = v69;
  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_1000EBD74(v28, 0);
  (*(v23 + 8))(v25, v22);
  v26 = v73;
  if (v95 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v2 + v26[6]) == 1)
  {
    v29 = static Alignment.center.getter();
    v30 = v74;
    *v74 = v29;
    *(v30 + 8) = v31;
    v32 = sub_10022C350(&qword_100CC2408);
    sub_1004F4BC0(v2, v30 + *(v32 + 44));
    v33 = &qword_100CC2388;
    sub_1000302D8(v30, v15, &qword_100CC2388);
    swift_storeEnumTagMultiPayload();
    sub_10023FBF4(&qword_100CC23F0, &qword_100CBDCE8);
    sub_10023FBF4(&qword_100CC23F8, &qword_100CC2388);
    v34 = v88;
    _ConditionalContent<>.init(storage:)();
    sub_1000302D8(v34, v92, &qword_100CC23A0);
    swift_storeEnumTagMultiPayload();
    sub_100501B90();
    sub_100501C74();
    _ConditionalContent<>.init(storage:)();
    sub_100018198(v34, &qword_100CC23A0);
    v35 = v30;
LABEL_7:
    v48 = v33;
    return sub_100018198(v35, v48);
  }

  v49 = v23;
  v50 = v2 + v26[10];
  v51 = *v50;
  if (*(v50 + 8) == 1)
  {
    if ((v51 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v73 = v26;

    static os_log_type_t.fault.getter();
    v52 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v51, 0);
    (*(v49 + 8))(v25, v22);
    v26 = v73;
    if (v94 != 1)
    {
      goto LABEL_16;
    }
  }

  if (*(v2 + v26[11]))
  {

    v53 = WeatherVFXConditionBackground.foregroundEffectsAreAbleToRender.getter();

    if (v53 & 1) != 0 && (sub_1004F503C())
    {
      sub_1009E9514();
      v54 = type metadata accessor for ForegroundEffect();
      v55 = sub_100024D10(v10, 1, v54);
      sub_100018198(v10, &qword_100CA60E8);
      if (v55 != 1)
      {
        v63 = v70;
        sub_1004F5450(v70);
        v65 = &qword_100CC2380;
        sub_1000302D8(v63, v77, &qword_100CC2380);
        swift_storeEnumTagMultiPayload();
        sub_1005019F4();
        sub_10023FBF4(&qword_100CC23E0, &qword_100CC2368);
        v66 = v79;
LABEL_19:
        _ConditionalContent<>.init(storage:)();
        sub_1000302D8(v66, v92, &qword_100CC2378);
        swift_storeEnumTagMultiPayload();
        sub_100501B90();
        sub_100501C74();
        _ConditionalContent<>.init(storage:)();
        sub_100018198(v66, &qword_100CC2378);
        v35 = v63;
        v48 = v65;
        return sub_100018198(v35, v48);
      }
    }

LABEL_16:
    sub_1001D3424();
    v56 = *v20;
    v57 = *(v85 + 20);
    v58 = *(v84 + 20);
    v59 = type metadata accessor for RoundedCornerStyle();
    v60 = v71;
    (*(*(v59 - 8) + 32))(&v71[v58], &v20[v57], v59);
    *v60 = v56;
    v60[1] = v56;
    if (qword_100CA23A0 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Material();
    v62 = sub_10000703C(v61, qword_100D90600);
    v63 = v72;
    sub_1001993DC();
    v64 = v78;
    (*(*(v61 - 8) + 16))(v63 + *(v78 + 52), v62, v61);
    sub_100192034();
    *(v63 + *(v64 + 56)) = 256;
    v65 = &qword_100CC2368;
    sub_1000302D8(v63, v77, &qword_100CC2368);
    swift_storeEnumTagMultiPayload();
    sub_1005019F4();
    sub_10023FBF4(&qword_100CC23E0, &qword_100CC2368);
    v66 = v79;
    goto LABEL_19;
  }

  type metadata accessor for WeatherVFXConditionBackground();
  sub_100061A3C(&qword_100CB0478, &type metadata accessor for WeatherVFXConditionBackground);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1004F4BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36[1] = a1;
  v42 = a2;
  v2 = type metadata accessor for RoundedRectangle() - 8;
  v36[0] = v2;
  __chkstk_darwin(v2);
  v37 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10022C350(&qword_100CC2368);
  __chkstk_darwin(v38);
  v41 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = v36 - v6;
  v7 = type metadata accessor for LocationComponentCornerRadiusConfiguration(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = (v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10022C350(&qword_100CC2410);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v39 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  type metadata accessor for LocationComponentBackground(0);
  sub_1001D3424();
  v17 = *v10;
  v18 = *(v8 + 28);
  v19 = *(v2 + 28);
  v20 = type metadata accessor for RoundedCornerStyle();
  v21 = *(*(v20 - 8) + 32);
  v21(&v16[v19], v10 + v18, v20);
  *v16 = v17;
  *(v16 + 1) = v17;
  v22 = static Color.black.getter();
  v23 = sub_10022C350(&qword_100CBDCE8);
  *&v16[*(v23 + 52)] = v22;
  *&v16[*(v23 + 56)] = 256;
  *&v16[*(v12 + 44)] = 0x3FD3333333333333;
  sub_1001D3424();
  v24 = *v10;
  v25 = v20;
  v26 = v37;
  v21(&v37[*(v36[0] + 28)], v10 + *(v8 + 28), v25);
  *v26 = v24;
  v26[1] = v24;
  if (qword_100CA23A0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Material();
  v28 = sub_10000703C(v27, qword_100D90600);
  v29 = v40;
  sub_1001993DC();
  v30 = v38;
  (*(*(v27 - 8) + 16))(v29 + *(v38 + 52), v28, v27);
  sub_100192034();
  *(v29 + *(v30 + 56)) = 256;
  v31 = v39;
  sub_1000302D8(v16, v39, &qword_100CC2410);
  v32 = v41;
  sub_1000302D8(v29, v41, &qword_100CC2368);
  v33 = v42;
  sub_1000302D8(v31, v42, &qword_100CC2410);
  v34 = sub_10022C350(&qword_100CC2418);
  sub_1000302D8(v32, v33 + *(v34 + 48), &qword_100CC2368);
  sub_100018198(v29, &qword_100CC2368);
  sub_100018198(v16, &qword_100CC2410);
  sub_100018198(v32, &qword_100CC2368);
  return sub_100018198(v31, &qword_100CC2410);
}

uint64_t sub_1004F503C()
{
  v1 = type metadata accessor for Location.Identifier();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CADD58);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  if (*(v0 + *(type metadata accessor for LocationComponentBackground(0) + 32)))
  {
    goto LABEL_2;
  }

  (*(v2 + 16))(v16, v0, v1);
  sub_10001B350(v16, 0, 1, v1);
  sub_1000E7B34();
  v18 = *(v5 + 48);
  sub_1000302D8(v16, v7, &qword_100CADBA0);
  sub_10011C0F0(v10, &v7[v18], &qword_100CADBA0);
  if (sub_100024D10(v7, 1, v1) != 1)
  {
    sub_1000302D8(v7, v13, &qword_100CADBA0);
    if (sub_100024D10(&v7[v18], 1, v1) != 1)
    {
      (*(v2 + 32))(v4, &v7[v18], v1);
      sub_100061A3C(&qword_100CA3A48, &type metadata accessor for Location.Identifier);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v2 + 8);
      v19(v4, v1);
      sub_100018198(v16, &qword_100CADBA0);
      v19(v13, v1);
      sub_100018198(v7, &qword_100CADBA0);
      return v17 & 1;
    }

    sub_100018198(v16, &qword_100CADBA0);
    (*(v2 + 8))(v13, v1);
    goto LABEL_8;
  }

  sub_100018198(v16, &qword_100CADBA0);
  if (sub_100024D10(&v7[v18], 1, v1) != 1)
  {
LABEL_8:
    sub_100018198(v7, &qword_100CADD58);
    v17 = 0;
    return v17 & 1;
  }

  sub_100018198(v7, &qword_100CADBA0);
LABEL_2:
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1004F5450@<X0>(uint64_t a1@<X8>)
{
  v31 = type metadata accessor for LocationComponentCornerRadiusConfiguration(0);
  __chkstk_darwin(v31);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CC23C8);
  __chkstk_darwin(v5);
  v7 = v30 - v6;
  v8 = sub_10022C350(&qword_100CC2420);
  __chkstk_darwin(v8);
  v10 = v30 - v9;
  v11 = sub_10022C350(&qword_100CC23B8);
  __chkstk_darwin(v11);
  v13 = (v30 - v12);
  v14 = type metadata accessor for LocationComponentBackground(0);
  v15 = v1 + *(v14 + 28);
  if (*(v15 + 32))
  {
    v30[4] = v11;
    v30[1] = v30;
    __chkstk_darwin(v14);
    v30[-2] = v1;
    v30[3] = a1;
    sub_10022C350(&qword_100CC2368);
    v30[2] = v8;
    sub_10023FBF4(&qword_100CC23E0, &qword_100CC2368);
    ForegroundEffectView.init(fallbackContent:)();
    sub_1001D3424();
    v16 = *v4;
    v17 = *(v31 + 20);
    v18 = &v7[*(v5 + 36)];
    v19 = *(type metadata accessor for RoundedRectangle() + 20);
    v20 = type metadata accessor for RoundedCornerStyle();
    (*(*(v20 - 8) + 32))(&v18[v19], &v4[v17], v20);
    *v18 = v16;
    *(v18 + 1) = v16;
    *&v18[*(sub_10022C350(&qword_100CB34E0) + 36)] = 256;
    v21 = &qword_100CC23C8;
    sub_1000302D8(v7, v10, &qword_100CC23C8);
    swift_storeEnumTagMultiPayload();
    sub_10023FBF4(&qword_100CC23B0, &qword_100CC23B8);
    sub_100501AAC();
    _ConditionalContent<>.init(storage:)();
    v22 = v7;
  }

  else
  {
    v24 = *(v15 + 16);
    v23 = *(v15 + 24);
    v26 = *v15;
    v25 = *(v15 + 8);
    *v13 = static Alignment.center.getter();
    v13[1] = v27;
    v28 = sub_10022C350(&qword_100CC2428);
    sub_1004F58B0(v1, v13 + *(v28 + 44), v26, v25, v24, v23);
    v21 = &qword_100CC23B8;
    sub_1000302D8(v13, v10, &qword_100CC23B8);
    swift_storeEnumTagMultiPayload();
    sub_10023FBF4(&qword_100CC23B0, &qword_100CC23B8);
    sub_100501AAC();
    _ConditionalContent<>.init(storage:)();
    v22 = v13;
  }

  return sub_100018198(v22, v21);
}

uint64_t sub_1004F58B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v55 = a2;
  v53 = sub_10022C350(&qword_100CC2430);
  __chkstk_darwin(v53);
  v54 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v47 - v13;
  v15 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v15);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LocationComponentCornerRadiusConfiguration(0);
  __chkstk_darwin(v18);
  v20 = (v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_10022C350(&qword_100CC2438);
  __chkstk_darwin(v21);
  v52 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v47 - v24;
  v26 = *(type metadata accessor for LocationComponentBackground(0) + 52);
  v51 = a1;
  v47[0] = v26;
  sub_1001D3424();
  v27 = *v20;
  v49 = v18;
  v50 = v15;
  v28 = *(v18 + 20);
  v29 = *(v15 + 20);
  v30 = type metadata accessor for RoundedCornerStyle();
  v31 = *(v30 - 8);
  v32 = *(v31 + 32);
  v47[1] = v31 + 32;
  v48 = v32;
  v32(&v17[v29], v20 + v28, v30);
  *v17 = v27;
  *(v17 + 1) = v27;
  if (qword_100CA23A0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Material();
  v34 = sub_10000703C(v33, qword_100D90600);
  sub_1001993DC();
  v35 = sub_10022C350(&qword_100CC2368);
  (*(*(v33 - 8) + 16))(&v25[*(v35 + 52)], v34, v33);
  v36 = sub_100192034();
  *&v25[*(v35 + 56)] = 256;
  v37 = &v25[*(v21 + 36)];
  *v37 = a3;
  *(v37 + 1) = a4;
  *(v37 + 2) = a5;
  *(v37 + 3) = a6;
  v37[32] = 0;
  __chkstk_darwin(v36);
  v47[-2] = v51;
  sub_10023FBF4(&qword_100CC23E0, &qword_100CC2368);
  ForegroundEffectView.init(fallbackContent:)();
  sub_1001D3424();
  v38 = *v20;
  v39 = *(v49 + 20);
  v40 = &v14[*(sub_10022C350(&qword_100CC23C8) + 36)];
  v48(&v40[*(v50 + 20)], v20 + v39, v30);
  *v40 = v38;
  *(v40 + 1) = v38;
  *&v40[*(sub_10022C350(&qword_100CB34E0) + 36)] = 256;
  v41 = v52;
  v42 = &v14[*(v53 + 36)];
  *v42 = a3;
  *(v42 + 1) = a4;
  *(v42 + 2) = a5;
  *(v42 + 3) = a6;
  v42[32] = 1;
  sub_1000302D8(v25, v41, &qword_100CC2438);
  v43 = v54;
  sub_1000302D8(v14, v54, &qword_100CC2430);
  v44 = v55;
  sub_1000302D8(v41, v55, &qword_100CC2438);
  v45 = sub_10022C350(&qword_100CC2440);
  sub_1000302D8(v43, v44 + *(v45 + 48), &qword_100CC2430);
  sub_100018198(v14, &qword_100CC2430);
  sub_100018198(v25, &qword_100CC2438);
  sub_100018198(v43, &qword_100CC2430);
  return sub_100018198(v41, &qword_100CC2438);
}

uint64_t sub_1004F5E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v27);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for EnvironmentValues();
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CABDD0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for LocationComponentCornerRadiusConfiguration(0);
  __chkstk_darwin(v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LocationComponentBackground(0);
  sub_1000302D8(a1 + *(v14 + 52), v10, &qword_100CABDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001AD070();
  }

  else
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v26);
  }

  v16 = *v13;
  v17 = *(v11 + 20);
  v18 = *(v27 + 20);
  v19 = type metadata accessor for RoundedCornerStyle();
  (*(*(v19 - 8) + 32))(&v4[v18], &v13[v17], v19);
  *v4 = v16;
  *(v4 + 1) = v16;
  if (qword_100CA23A0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Material();
  v21 = sub_10000703C(v20, qword_100D90600);
  v22 = v28;
  sub_1001993DC();
  v23 = sub_10022C350(&qword_100CC2368);
  (*(*(v20 - 8) + 16))(v22 + *(v23 + 52), v21, v20);
  result = sub_100192034();
  *(v22 + *(v23 + 56)) = 256;
  return result;
}

double sub_1004F61E4@<D0>(uint64_t a1@<X8>)
{
  Path.init()();
  if (*(v1 + 32))
  {
    Rectangle.path(in:)();
    v10 = 0x3FF0000000000000;
    v11 = 0;
    v12 = 0;
    v13 = 0x3FF0000000000000;
    v14 = 0;
    v15 = 0;
    Path.addPath(_:transform:)();
    sub_1001A8674(v7);
    Circle.path(in:)();
    sub_1004F630C(v9);
    sub_1001A8674(v8);
  }

  else
  {
    Circle.path(in:)();
    v10 = 0x3FF0000000000000;
    v11 = 0;
    v12 = 0;
    v13 = 0x3FF0000000000000;
    v14 = 0;
    v15 = 0;
  }

  Path.addPath(_:transform:)();
  sub_1001A8674(v9);
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

double sub_1004F630C@<D0>(uint64_t a1@<X8>)
{
  v2 = Path.cgPath.getter();
  v3 = [objc_opt_self() bezierPathWithCGPath:v2];

  v4 = [v3 bezierPathByReversingPath];
  v5 = [v4 CGPath];

  Path.init(_:)();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

double sub_1004F63D4@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v8 = *v1;
  v9 = v3;
  v10 = *(v1 + 32);
  sub_1004F61E4(v6);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

void (*sub_1004F6488(void *a1))(void *a1)
{
  v2 = sub_10023FBC0(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return sub_10023DD88;
}

uint64_t sub_1004F64FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10050260C();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1004F6560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10050260C();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1004F65C4(uint64_t a1)
{
  v2 = sub_10050260C();

  return Shape.body.getter(a1, v2);
}

void sub_1004F6610(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(a1, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(a1) = v11[15];
  }

  *a3 = a1 & 1;
}

double sub_1004F6770()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CC0970);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for LocationComponentHeaderMetrics(0);
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000302D8(v1, v8, &qword_100CC0970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001AD070();
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  v13 = *&v11[*(v9 + 24)];
  sub_100192034();
  return v13;
}

uint64_t sub_1004F69CC()
{
  v1 = type metadata accessor for LocationComponentHeaderMetrics(0);
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for HeaderModifier(0) + 20);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v8 = *v6;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v7, 0);
    (*(v3 + 8))(v5, v2);
    v8 = v22;
  }

  v10 = sub_1004F6770();
  sub_10019200C();
  sub_100357470();
  sub_100192034();
  v11 = v23;
  if (v23)
  {
    sub_100018198(&v22, &unk_100CC1D58);
  }

  v12 = v8 + v10;
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11 != 0;
  *(v13 + 32) = v12 + -10.0;
  *(v13 + 40) = v12 + -10.0 + 5.0;
  sub_10022C350(&qword_100CC2338);
  sub_10022C350(&qword_100CA4670);
  sub_10023FBF4(&qword_100CC2340, &qword_100CC2338);
  v14 = sub_10022E824(&qword_100CA4680);
  v15 = type metadata accessor for EmptyVisualEffect();
  v16 = sub_100061A3C(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v20 = v15;
  v21 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v14;
  v21 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();
}

uint64_t sub_1004F6D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[1] = a2;
  v4 = sub_10022C350(&qword_100CC0FA0);
  __chkstk_darwin(v4);
  v6 = v29 - v5;
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + *(type metadata accessor for RowModifier(0) + 20);
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    v13 = *v11;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v12, 0);
    (*(v8 + 8))(v10, v7);
    v13 = v30;
  }

  v15 = 0.0;
  v16 = 0.0;
  if (!sub_1001AC764())
  {
    v16 = sub_100191DB4();
  }

  if (!sub_1001AC764())
  {
    v15 = -250.0;
  }

  v17 = &v6[*(v4 + 36)];
  *v17 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for RowMaskModifier(0);
  v19 = v17 + *(v18 + 20);
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = v17 + *(v18 + 24);
  v33 = 0;
  v34 = 0;
  State.init(wrappedValue:)();
  v21 = v31;
  *v20 = v30;
  *(v20 + 2) = v21;
  v22 = sub_10022C350(&qword_100CC0FA8);
  (*(*(v22 - 8) + 16))(v6, a1, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = v13;
  *(v23 + 24) = v16;
  *(v23 + 32) = v15;
  sub_10022C350(&qword_100CC0FB0);
  sub_1004FC890();
  v24 = type metadata accessor for EmptyVisualEffect();
  v25 = sub_10022E824(&qword_100CC0FD0);
  v26 = sub_100061A3C(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v27 = sub_10023FBF4(&qword_100CC0FD8, &qword_100CC0FD0);
  *&v30 = v24;
  *(&v30 + 1) = v25;
  v31 = v26;
  v32 = v27;
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  return sub_100018198(v6, &qword_100CC0FA0);
}

void sub_1004F71A0(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v8 = type metadata accessor for NamedCoordinateSpace();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1001AC764())
  {
    static CoordinateSpaceProtocol<>.scrollView.getter();
    GeometryProxy.bounds(of:)();
    v26 = a4;
    v12 = v27;
    v13 = v28;
    v14 = v29;
    v15 = v30;
    (*(v9 + 8))(v11, v8);
    if (v31)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v12;
    }

    if (v31)
    {
      v13 = 0.0;
      v14 = 0.0;
      v15 = 0.0;
    }

    GeometryProxy.size.getter();
    v24 = v18;
    v25 = v17;
    v23 = -v13;
    v32.origin.x = v16;
    v32.origin.y = v13;
    v32.size.width = v14;
    v32.size.height = v15;
    v19 = -CGRectGetMinY(v32);
    if (v19 < a2)
    {
      v19 = a2;
    }

    if (v19 >= a3)
    {
      v19 = a3;
    }

    v20 = (v19 - a2) / (a3 - a2);
    v33.origin.x = -v16;
    v33.origin.y = v23;
    v33.size.height = v24;
    v33.size.width = v25;
    v21 = v26 - CGRectGetMinY(v33);
    if (v21 < 0.0)
    {
      v21 = 0.0;
    }

    *a1 = v21;
    *(a1 + 8) = v20;
    *(a1 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }
}

uint64_t sub_1004F7364(uint64_t result)
{
  if ((*(result + 16) & 1) == 0)
  {
    sub_100191DB4();
    type metadata accessor for RowMaskModifier(0);
    sub_10022C350(&qword_100CC22D0);
    return State.wrappedValue.setter();
  }

  return result;
}

double sub_1004F73F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for RowMaskModifier(0) + 24));
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  sub_10022C350(&qword_100CC22D0);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  State.wrappedValue.getter();
  result = v5;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v5;
  return result;
}

uint64_t sub_1004F74FC()
{
  v0 = type metadata accessor for NamedCoordinateSpace();
  sub_100007074(v0, qword_100D90358);
  v1 = sub_100003940();
  sub_10000703C(v1, v2);

  static CoordinateSpaceProtocol<>.named<A>(_:)();
}

uint64_t sub_1004F7584(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CC0908);
  __chkstk_darwin(v2);
  v26 = &v22 - v3;
  v4 = sub_10022C350(&qword_100CC0910);
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v7 = sub_10022C350(&qword_100CC0918);
  __chkstk_darwin(v7);
  v25 = &v22 - v8;
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a1 + 24);
  v14 = *(a1 + 16);
  v28 = v14;
  if (v29 != 1)
  {
    v23 = v11;

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    v24 = v6;
    v18 = v17;
    os_log(_:dso:log:_:_:)();

    v6 = v24;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018198(&v28, &qword_100CB91B8);
    (*(v10 + 8))(v13, v23);
    if (v27 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = v25;
    sub_1004F7950(v25);
    v19 = (v15 + *(v7 + 36));
    *v19 = swift_getKeyPath();
    sub_10022C350(&qword_100CC0970);
    swift_storeEnumTagMultiPayload();
    v20 = v19 + *(type metadata accessor for RowModifier(0) + 20);
    *v20 = swift_getKeyPath();
    v20[8] = 0;
    v16 = &qword_100CC0918;
    sub_1000302D8(v15, v6, &qword_100CC0918);
    goto LABEL_6;
  }

  if (v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = v26;
  sub_1004F7950(v26);
  v16 = &qword_100CC0908;
  sub_1000302D8(v15, v6, &qword_100CC0908);
LABEL_6:
  swift_storeEnumTagMultiPayload();
  sub_1004F9A98();
  sub_1004F9B54();
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v15, v16);
}

uint64_t sub_1004F7950@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v39 = type metadata accessor for ColorScheme();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10022C350(&qword_100CC0948);
  __chkstk_darwin(v35);
  v9 = &v35 - v8;
  v36 = sub_10022C350(&qword_100CC0938);
  __chkstk_darwin(v36);
  v11 = &v35 - v10;
  v48 = *(v1 + 64);
  v47 = *(v1 + 48);
  v12 = v47;
  v37 = v5;
  if (v48)
  {
    v13 = &v47 + 8;
  }

  else
  {
    v13 = &v44;

    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018198(&v47, &unk_100CC08E8);
    (*(v41 + 8))(v7, v5);
    v12 = v43;
  }

  v15 = *v13;
  v44 = *(v2 + 24);
  v16 = *(v2 + 16);
  v43 = v16;
  if (v44 != 1)
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018198(&v43, &qword_100CB91B8);
    (*(v41 + 8))(v7, v37);
    LOBYTE(v16) = v45;
  }

  v18 = sub_10022C350(&qword_100CC0958);
  *&v9[v18[9]] = 0x4020000000000000;
  sub_1004F8090(v2);
  v19 = &v9[v18[10]];
  *v19 = v12;
  *(v19 + 1) = v15;
  v19[16] = 0;
  v9[v18[11]] = (v16 & 1) == 0;
  v20 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v22 = &v9[*(v35 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = *(v2 + 72);
  v45 = v23;
  v46 = *(v2 + 80);
  if (v46 != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018198(&v45, &qword_100CB91B8);
    (*(v41 + 8))(v7, v37);
    if (v42)
    {
      goto LABEL_8;
    }

LABEL_10:
    v24 = &enum case for ColorScheme.dark(_:);
    goto LABEL_11;
  }

  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v24 = &enum case for ColorScheme.light(_:);
LABEL_11:
  v27 = v38;
  v26 = v39;
  (*(v3 + 104))(v38, *v24, v39);
  v28 = swift_getKeyPath();
  v29 = &v11[*(v36 + 36)];
  v30 = sub_10022C350(&qword_100CE15A0);
  (*(v3 + 32))(v29 + *(v30 + 28), v27, v26);
  *v29 = v28;
  sub_10011C0F0(v9, v11, &qword_100CC0948);
  v31 = swift_getKeyPath();
  v32 = v40;
  sub_10011C0F0(v11, v40, &qword_100CC0938);
  result = sub_10022C350(&qword_100CC0908);
  v34 = v32 + *(result + 36);
  *v34 = v31;
  *(v34 + 8) = 0;
  return result;
}

double sub_1004F7F10()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = 0.0;
  if ((*(v0 + 97) & 0xFE) == 2)
  {
    v10 = *(v0 + 96);
    v6 = *(v0 + 88);
    v9 = v6;
    if (v10 != 1)
    {

      static os_log_type_t.fault.getter();
      v7 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018198(&v9, &qword_100CB91B8);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v6) = v8[15];
    }

    result = -15.0;
    if (v6)
    {
      return -11.0;
    }
  }

  return result;
}

uint64_t sub_1004F8090(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CC0978);
  __chkstk_darwin(v2);
  v4 = v12 - v3;
  v5 = sub_10022C350(&qword_100CC0980);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  sub_1004F8274(a1, v4);
  v12[1] = static Color.clear.getter();
  sub_1001BB974(&qword_100CC0988, &qword_100CC0978, &unk_100A59370, sub_1004F9DD0);
  View.tipBackground<A>(_:)();

  sub_100018198(v4, &qword_100CC0978);
  v8 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  v10 = &v7[*(v5 + 36)];
  *v10 = KeyPath;
  v10[1] = v8;
  sub_1004FA01C();
  View.onTapGesture(count:perform:)();
  return sub_100018198(v7, &qword_100CC0980);
}

uint64_t sub_1004F8274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v63 = sub_10022C350(&qword_100CC09D0);
  __chkstk_darwin(v63);
  v4 = &v62 - v3;
  v73 = sub_10022C350(&qword_100CC09C0);
  __chkstk_darwin(v73);
  v64 = &v62 - v5;
  v70 = sub_10022C350(&qword_100CC09D8);
  __chkstk_darwin(v70);
  v72 = &v62 - v6;
  v65 = sub_10022C350(&qword_100CC09E0);
  __chkstk_darwin(v65);
  v8 = &v62 - v7;
  v67 = sub_10022C350(&qword_100CB74D8);
  __chkstk_darwin(v67);
  v10 = &v62 - v9;
  v69 = sub_10022C350(&qword_100CB74F0);
  __chkstk_darwin(v69);
  v68 = &v62 - v11;
  v71 = sub_10022C350(&qword_100CC09A8);
  __chkstk_darwin(v71);
  v66 = &v62 - v12;
  v13 = sub_10022C350(&qword_100CB74E0);
  __chkstk_darwin(v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v62 - v17;
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  __chkstk_darwin(v22);
  v24 = &v62 - v23;
  __chkstk_darwin(v25);
  v27 = &v62 - v26;
  __chkstk_darwin(v28);
  v32 = &v62 - v31;
  switch(*(a1 + 97))
  {
    case 1:
      v78[0] = *a1;
      if (!*&v78[0])
      {
        goto LABEL_30;
      }

      v52 = v30;
      v53 = v29;
      type metadata accessor for TipCoordinator();

      ObservableResolver.resolve<A>(_:)();
      sub_100018198(v78, &unk_100CC08E0);
      if (!v75)
      {
        goto LABEL_28;
      }

      v76 = &unk_100C59068;
      v77 = sub_10047A8F0();
      TipView.init<>(_:isPresented:arrowEdge:action:)();
      (*(v52 + 16))(v10, v32, v53);
      swift_storeEnumTagMultiPayload();
      sub_10023FBF4(&qword_100CB7500, &qword_100CB74E0);
      v54 = v68;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v54, v8, &qword_100CB74F0);
      swift_storeEnumTagMultiPayload();
      sub_1004F9EE0();
      v55 = v66;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v54, &qword_100CB74F0);
      sub_1000302D8(v55, v72, &qword_100CC09A8);
      swift_storeEnumTagMultiPayload();
      sub_1004F9E5C();
      sub_1004F9F90();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v55, &qword_100CC09A8);
      result = (*(v52 + 8))(v32, v53);
      break;
    case 2:
      v78[0] = *a1;
      if (!*&v78[0])
      {
        goto LABEL_30;
      }

      v44 = v30;
      v45 = v29;
      type metadata accessor for TipCoordinator();

      ObservableResolver.resolve<A>(_:)();
      sub_100018198(v78, &unk_100CC08E0);
      if (!v75)
      {
        goto LABEL_25;
      }

      v76 = &unk_100C59048;
      v77 = sub_10047A89C();
      TipView.init<>(_:isPresented:arrowEdge:action:)();
      (*(v44 + 16))(v10, v24, v45);
      swift_storeEnumTagMultiPayload();
      sub_10023FBF4(&qword_100CB7500, &qword_100CB74E0);
      v46 = v68;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v46, v8, &qword_100CB74F0);
      swift_storeEnumTagMultiPayload();
      sub_1004F9EE0();
      v47 = v66;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v46, &qword_100CB74F0);
      sub_1000302D8(v47, v72, &qword_100CC09A8);
      swift_storeEnumTagMultiPayload();
      sub_1004F9E5C();
      sub_1004F9F90();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v47, &qword_100CC09A8);
      result = (*(v44 + 8))(v24, v45);
      break;
    case 3:
      v78[0] = *a1;
      if (!*&v78[0])
      {
        goto LABEL_30;
      }

      v48 = v30;
      v49 = v29;
      type metadata accessor for TipCoordinator();

      ObservableResolver.resolve<A>(_:)();
      sub_100018198(v78, &unk_100CC08E0);
      if (!v75)
      {
        goto LABEL_26;
      }

      v76 = &unk_100C59028;
      v77 = sub_10047A848();
      TipView.init<>(_:isPresented:arrowEdge:action:)();
      (*(v48 + 16))(v10, v21, v49);
      swift_storeEnumTagMultiPayload();
      sub_10023FBF4(&qword_100CB7500, &qword_100CB74E0);
      v50 = v68;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v50, v8, &qword_100CB74F0);
      swift_storeEnumTagMultiPayload();
      sub_1004F9EE0();
      v51 = v66;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v50, &qword_100CB74F0);
      sub_1000302D8(v51, v72, &qword_100CC09A8);
      swift_storeEnumTagMultiPayload();
      sub_1004F9E5C();
      sub_1004F9F90();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v51, &qword_100CC09A8);
      result = (*(v48 + 8))(v21, v49);
      break;
    case 4:
      v78[0] = *a1;
      if (!*&v78[0])
      {
        goto LABEL_30;
      }

      v39 = v30;
      v40 = v29;
      type metadata accessor for TipCoordinator();

      ObservableResolver.resolve<A>(_:)();
      sub_100018198(v78, &unk_100CC08E0);
      if (!v75)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v41 = sub_10074A4C8();

      v76 = &unk_100C59000;
      v77 = sub_10047A7F4();
      LOBYTE(v75) = v41 & 1;
      TipView.init<>(_:isPresented:arrowEdge:action:)();
      (*(v39 + 16))(v10, v18, v40);
      swift_storeEnumTagMultiPayload();
      sub_10023FBF4(&qword_100CB7500, &qword_100CB74E0);
      v42 = v68;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v42, v4, &qword_100CB74F0);
      swift_storeEnumTagMultiPayload();
      sub_1004F9EE0();
      v43 = v64;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v42, &qword_100CB74F0);
      sub_1000302D8(v43, v72, &qword_100CC09C0);
      swift_storeEnumTagMultiPayload();
      sub_1004F9E5C();
      sub_1004F9F90();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v43, &qword_100CC09C0);
      result = (*(v39 + 8))(v18, v40);
      break;
    case 5:
      v78[0] = *a1;
      if (!*&v78[0])
      {
        goto LABEL_30;
      }

      v56 = v30;
      v57 = v29;
      type metadata accessor for TipCoordinator();

      ObservableResolver.resolve<A>(_:)();
      sub_100018198(v78, &unk_100CC08E0);
      if (!v75)
      {
        goto LABEL_29;
      }

      v58 = sub_10074A548();

      v76 = &unk_100C58F80;
      v77 = sub_10047A7A0();
      LOBYTE(v75) = v58 & 1;
      TipView.init<>(_:isPresented:arrowEdge:action:)();
      (*(v56 + 16))(v10, v15, v57);
      swift_storeEnumTagMultiPayload();
      sub_10023FBF4(&qword_100CB7500, &qword_100CB74E0);
      v59 = v68;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v59, v4, &qword_100CB74F0);
      swift_storeEnumTagMultiPayload();
      sub_1004F9EE0();
      v60 = v64;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v59, &qword_100CB74F0);
      sub_1000302D8(v60, v72, &qword_100CC09C0);
      swift_storeEnumTagMultiPayload();
      sub_1004F9E5C();
      sub_1004F9F90();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v60, &qword_100CC09C0);
      result = (*(v56 + 8))(v15, v57);
      break;
    case 6:
      swift_storeEnumTagMultiPayload();
      sub_1004F9EE0();
      v61 = v64;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v61, v72, &qword_100CC09C0);
      swift_storeEnumTagMultiPayload();
      sub_1004F9E5C();
      sub_1004F9F90();
      _ConditionalContent<>.init(storage:)();
      result = sub_100018198(v61, &qword_100CC09C0);
      break;
    default:
      v78[0] = *a1;
      if (*&v78[0])
      {
        v33 = v30;
        v34 = v29;
        type metadata accessor for TipCoordinator();

        ObservableResolver.resolve<A>(_:)();
        sub_100018198(v78, &unk_100CC08E0);
        if (v75)
        {
          v35 = sub_10074A448();

          v76 = &unk_100C590E0;
          v77 = sub_10047A944();
          LOBYTE(v75) = v35 & 1;
          TipView.init<>(_:isPresented:arrowEdge:action:)();
          (*(v33 + 16))(v10, v27, v34);
          swift_storeEnumTagMultiPayload();
          sub_10023FBF4(&qword_100CB7500, &qword_100CB74E0);
          v36 = v68;
          _ConditionalContent<>.init(storage:)();
          sub_1000302D8(v36, v8, &qword_100CB74F0);
          swift_storeEnumTagMultiPayload();
          sub_1004F9EE0();
          v37 = v66;
          _ConditionalContent<>.init(storage:)();
          sub_100018198(v36, &qword_100CB74F0);
          sub_1000302D8(v37, v72, &qword_100CC09A8);
          swift_storeEnumTagMultiPayload();
          sub_1004F9E5C();
          sub_1004F9F90();
          _ConditionalContent<>.init(storage:)();
          sub_100018198(v37, &qword_100CC09A8);
          return (*(v33 + 8))(v27, v34);
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

LABEL_30:
      type metadata accessor for ObservableResolver();
      sub_100061A3C(&qword_100CB0468, &type metadata accessor for ObservableResolver);
      result = EnvironmentObject.error()();
      __break(1u);
      break;
  }

  return result;
}

double sub_1004F942C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(a2, 0);
    (*(v9 + 8))(v11, v8);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = sub_10022C350(&qword_100CC0F90);
  (*(*(v13 - 8) + 16))(a4, a1, v13);
  v14 = (a4 + *(sub_10022C350(&qword_100CC0F98) + 36));
  v15 = v17[1];
  *v14 = v17[0];
  v14[1] = v15;
  result = *&v18;
  v14[2] = v18;
  return result;
}

uint64_t sub_1004F9630@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  KeyPath = swift_getKeyPath();
  v4 = (a2 + *(sub_10022C350(&qword_100CC0A58) + 36));
  sub_10022C350(&qword_100CC0A60);
  result = sub_1001993DC();
  *v4 = KeyPath;
  return result;
}

uint64_t sub_1004F9710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = sub_1000926C0();
  v11 = v10(v9);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000426CC();
  sub_100025214();
  sub_1001993DC();
  return a7(v7);
}

uint64_t sub_1004F97A0()
{
  sub_100017580();
  type metadata accessor for ColorScheme();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_100019530();
  v1 = sub_1000053B8();
  v2(v1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_1004F9868(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 98))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004F98BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1004F992C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[33])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004F9978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1004F99E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004F9A28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1004F9A98()
{
  result = qword_100CC0920;
  if (!qword_100CC0920)
  {
    sub_10022E824(&qword_100CC0918);
    sub_1004F9B54();
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0920);
  }

  return result;
}

unint64_t sub_1004F9B54()
{
  result = qword_100CC0928;
  if (!qword_100CC0928)
  {
    sub_10022E824(&qword_100CC0908);
    sub_1004F9BE0();
    sub_1004F9D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0928);
  }

  return result;
}

unint64_t sub_1004F9BE0()
{
  result = qword_100CC0930;
  if (!qword_100CC0930)
  {
    sub_10022E824(&qword_100CC0938);
    sub_1004F9C98();
    sub_10023FBF4(&qword_100CE1780, &qword_100CE15A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0930);
  }

  return result;
}

unint64_t sub_1004F9C98()
{
  result = qword_100CC0940;
  if (!qword_100CC0940)
  {
    sub_10022E824(&qword_100CC0948);
    sub_10023FBF4(&qword_100CC0950, &qword_100CC0958);
    sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0940);
  }

  return result;
}

unint64_t sub_1004F9D7C()
{
  result = qword_100CC0960;
  if (!qword_100CC0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0960);
  }

  return result;
}

unint64_t sub_1004F9DD0()
{
  result = qword_100CC0990;
  if (!qword_100CC0990)
  {
    sub_10022E824(&qword_100CC0998);
    sub_1004F9E5C();
    sub_1004F9F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0990);
  }

  return result;
}

unint64_t sub_1004F9E5C()
{
  result = qword_100CC09A0;
  if (!qword_100CC09A0)
  {
    sub_10022E824(&qword_100CC09A8);
    sub_1004F9EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC09A0);
  }

  return result;
}

unint64_t sub_1004F9EE0()
{
  result = qword_100CC09B0;
  if (!qword_100CC09B0)
  {
    sub_10022E824(&qword_100CB74F0);
    sub_10023FBF4(&qword_100CB7500, &unk_100CB74E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC09B0);
  }

  return result;
}

unint64_t sub_1004F9F90()
{
  result = qword_100CC09B8;
  if (!qword_100CC09B8)
  {
    sub_10022E824(&qword_100CC09C0);
    sub_1004F9EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC09B8);
  }

  return result;
}

unint64_t sub_1004FA01C()
{
  result = qword_100CC09C8;
  if (!qword_100CC09C8)
  {
    sub_10022E824(&qword_100CC0980);
    sub_10022E824(&qword_100CC0978);
    sub_1001BB974(&qword_100CC0988, &qword_100CC0978, &unk_100A59370, sub_1004F9DD0);
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC09C8);
  }

  return result;
}

uint64_t sub_1004FA158(char a1)
{
  v2 = type metadata accessor for LocationComponentContainerView(0);
  sub_100003810(v2);
  sub_100008550();

  return sub_1004E11B0(a1);
}

uint64_t sub_1004FA1BC()
{
  type metadata accessor for LocationComponentContainerView(0);
  sub_100003A0C();
  sub_1000B90D8();
  sub_100031D74();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 4u:

      goto LABEL_6;
    case 1u:

      goto LABEL_6;
    case 2u:

      goto LABEL_6;
    case 3u:
      type metadata accessor for WeatherDescription();
      sub_100003D98();
      (*(v7 + 8))(v1);
      type metadata accessor for LocationComponentHeaderViewModel.Description(0);
      sub_100021D70();

LABEL_6:

      break;
    default:
      break;
  }

  type metadata accessor for LocationComponentContainerViewModel();
  sub_100020F80();
  switch(sub_100088740())
  {
    case 0u:

      type metadata accessor for AirQualityComponentViewModel();
      sub_10005235C();
      sub_100003D98();
      (*(v8 + 8))(v3 + v5);
      v9 = v4[16];
      goto LABEL_55;
    case 1u:

      v4 = type metadata accessor for DailyForecastComponentViewModel(0);
      v11 = v4[5];
      v12 = sub_10022C350(&qword_100CA53F8);
      sub_1000037E8();
      v14 = *(v13 + 8);
      v14(v3 + v11, v12);
      v15 = sub_100020214();
      (v14)(v15);
      v16 = sub_10006A7B8();
      (v14)(v16);
      v17 = v4[8];
      goto LABEL_23;
    case 2u:

      type metadata accessor for FeelsLikeComponentViewModel(0);
      v42 = sub_100041A2C();
      if (!sub_1000138DC(v42))
      {

        sub_10007175C();
        type metadata accessor for TemperatureScaleConfiguration();
        sub_100003D98();
        (*(v43 + 8))(v5);
        type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
        sub_1000BAEF0();
      }

      sub_10000EADC(v4[7]);

      v9 = v4[8];
      goto LABEL_55;
    case 3u:
      v39 = type metadata accessor for UUID();
      if (!sub_100005BB8(v39))
      {
        sub_100022BC0();
        v40 = sub_10002C598();
        v41(v40);
      }

      type metadata accessor for HourlyForecastComponentViewModel(0);
      goto LABEL_56;
    case 4u:
      goto LABEL_56;
    case 5u:
      type metadata accessor for WeatherMapOverlayKind();
      sub_100003D98();
      (*(v18 + 8))(v3);
      v19 = type metadata accessor for MapComponentViewModel();
      v20 = *(v19 + 20);
      type metadata accessor for Location();
      sub_100003D98();
      v22 = v3 + v20;
      v23 = v19;
      (*(v21 + 8))(v22);
      v24 = sub_100071988();
      v25 = type metadata accessor for WeatherData(v24);
      if (!sub_1000138DC(v25))
      {
        v85 = v19;

        v26 = v6[5];
        v27 = type metadata accessor for Locale();
        if (!sub_10000CAFC(v5 + v26))
        {
          sub_100022BC0();
          (*(v28 + 8))(v5 + v26, v27);
        }

        v29 = v6[6];
        type metadata accessor for WeatherDataModel();
        sub_100003D98();
        (*(v30 + 8))(v5 + v29);
        v31 = v5 + v6[7];
        v32 = sub_10022C350(&qword_100CAC710);
        if (!sub_10000CAFC(v31))
        {
          type metadata accessor for Date();
          sub_100003D98();
          v83 = *(v33 + 8);
          v84 = v34;
          v83(v31);
          v32 = *(v32 + 48);
          v35 = type metadata accessor for WeatherDataRelevancy();
          if (!sub_100024D10(v31 + v32, 1, v35))
          {
            (v83)(v31 + v32, v84);
          }
        }

        sub_1001706D8();
        v36 = sub_1000C8BBC();
        if (v36 == 1)
        {
          type metadata accessor for WeatherStatisticsModel();
          sub_100003D98();
          (*(v62 + 8))(v32);
          v23 = v85;
        }

        else
        {
          v23 = v85;
          if (!v36)
          {
          }
        }

        sub_10007175C();
        v63 = type metadata accessor for WeatherDataOverrides();
        if (!sub_1000138DC(v63))
        {
          type metadata accessor for Date();
          v64 = sub_1000175DC();
          v86 = v65;
          if (!sub_100024D10(v64, v66, v65))
          {
            sub_100049884();
            (*(v67 + 8))(v5);
          }

          v68 = sub_100036D44();
          if (!sub_100024D10(v68, v69, v86))
          {
            sub_100049884();
            (*(v70 + 8))(v5 + v32);
          }
        }
      }

      v9 = *(v23 + 28);
      goto LABEL_55;
    case 6u:

      sub_1000453EC();
      if (!v45)
      {
        sub_1002773E8(*(v3 + 16), *(v3 + 24), v44);
      }

      v46 = type metadata accessor for MoonComponentViewModel();
      v47 = *(v46 + 28);
      type metadata accessor for Date();
      sub_100003D98();
      (*(v48 + 8))(v3 + v47);
      v9 = *(v46 + 40);
      goto LABEL_55;
    case 7u:
      type metadata accessor for NewsArticleComponentViewModel(0);
      if (sub_100088740() == 1)
      {

        type metadata accessor for NewsArticleComponentContentViewModel(0);
        v49 = sub_1000C89D0();
        if (!sub_100037190(v49))
        {
          sub_100022BC0();
          v50 = sub_100040EC0();
          v51(v50);
        }

        sub_10000EADC(*(v5 + 24));

        sub_10003C52C();
        v53 = *(v52 + 8);
        v53(v3 + v54, v4);
        if (!sub_10003BA14())
        {
          v53(v3 + v5, v4);
        }
      }

      break;
    case 8u:

      v10 = *(type metadata accessor for NextHourPrecipitationComponentViewModel() + 20);
      type metadata accessor for NextHourPrecipitationChartViewModel();
      goto LABEL_43;
    case 9u:
      type metadata accessor for Location();
      goto LABEL_41;
    case 0xAu:

      goto LABEL_56;
    case 0xBu:
      type metadata accessor for PressureTrend();
      sub_100003D98();
      (*(v37 + 8))(v3);
      type metadata accessor for PressureComponentViewModel();
      sub_10001325C();
      sub_10000EADC(v38);

      sub_10000EADC(v4[6]);

      v17 = v4[7];
LABEL_23:
      sub_10000EADC(v17);

      v9 = v4[9];
LABEL_55:
      sub_10000EADC(v9);
      goto LABEL_56;
    case 0xDu:

      v10 = *(type metadata accessor for SevereAlertComponentViewModel() + 36);
      type metadata accessor for WeatherAlert.Prominence();
LABEL_43:
      sub_100003D98();
      (*(v59 + 8))(v3 + v10);
      break;
    case 0xEu:
      type metadata accessor for SunriseSunsetViewModel();
LABEL_41:
      sub_100003D98();
      (*(v58 + 8))(v3);
      break;
    case 0xFu:

      goto LABEL_56;
    case 0x10u:

      v55 = type metadata accessor for UVIndexComponentViewModel();
      v56 = *(v55 + 28);
      type metadata accessor for WeatherDescription();
      sub_100003D98();
      (*(v57 + 8))(v3 + v56);
      sub_10000EADC(*(v55 + 32));

      goto LABEL_56;
    case 0x11u:

      goto LABEL_56;
    case 0x12u:

      v60 = *(type metadata accessor for WindComponentViewModel() + 68);
      type metadata accessor for WindComponentCompassViewModel();
      sub_100003D98();
      (*(v61 + 8))(v3 + v60);
LABEL_56:

      break;
    default:
      break;
  }

  sub_100502684();
  v71 = sub_1005026C8();
  v72 = type metadata accessor for LocationComponentAction(v71);
  if (!sub_100003EB0(v72))
  {
    sub_100025214();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        type metadata accessor for URL();
        goto LABEL_62;
      case 1u:
        type metadata accessor for WeatherMapOverlayKind();
        goto LABEL_62;
      case 2u:
        type metadata accessor for DetailCondition();
LABEL_62:
        sub_100003D98();
        (*(v73 + 8))(v2);
        break;
      case 4u:
        v74 = *(sub_10022C350(&qword_100CA6688) + 48);
        type metadata accessor for Location();
        sub_100003D98();
        (*(v75 + 8))(v2 + v74);
        break;
      default:
        break;
    }
  }

  swift_unknownObjectRelease();
  sub_100006F14(v1 + v0[6]);
  v76 = v0[8];
  type metadata accessor for Location.Identifier();
  sub_100003D98();
  (*(v77 + 8))(v1 + v76);

  sub_10012CCDC();
  v78 = v0[17];
  sub_10022C350(&qword_100CA2D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_100003D98();
    (*(v79 + 8))(v1 + v78);
  }

  else
  {
  }

  sub_100037B34(v0[18]);
  sub_100037B34(v0[19]);
  v80 = v0[20];
  sub_10022C350(&qword_100CAD618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003D98();
    (*(v81 + 8))(v1 + v80);
  }

  else
  {
  }

  sub_100037B34(v0[21]);
  sub_100037B34(v0[22]);
  sub_100037B34(v0[23]);
  sub_100037B34(v0[24]);
  sub_100037B34(v0[25]);
  sub_100037B34(v0[26]);
  sub_100037B34(v0[27]);

  return swift_deallocObject();
}

uint64_t sub_1004FAE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationComponentContainerView(0);
  sub_100003810(v4);
  sub_100008550();

  return sub_1004E1514(a1, v5, a2);
}

void sub_1004FAEA0()
{
  v1 = sub_100017580();
  v2 = type metadata accessor for LocationComponentContainerView(v1);
  sub_100003810(v2);
  sub_100008550();

  sub_1004E1EC8(v0, v3);
}

uint64_t sub_1004FAF00()
{
  v2 = sub_1000926C0();
  v3 = type metadata accessor for LocationComponentContainerView(v2);
  sub_100003AE8(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for DateInterval();
  sub_100003810(v8);
  v10 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = swift_task_alloc();
  v14 = sub_100011378(v13);
  *v14 = v15;
  v14[1] = sub_1004FB038;

  return sub_1004E217C(v1, v11, v12, v0 + v5, v0 + v10);
}

uint64_t sub_1004FB038()
{
  sub_100003B08();

  sub_100003B14();

  return v0();
}

unint64_t sub_1004FB124()
{
  result = qword_100CC0AB0;
  if (!qword_100CC0AB0)
  {
    sub_10022E824(&qword_100CC0AB8);
    sub_1004FB1DC();
    sub_10023FBF4(&qword_100CC0AF8, &unk_100CC0B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0AB0);
  }

  return result;
}

unint64_t sub_1004FB1DC()
{
  result = qword_100CC0AC0;
  if (!qword_100CC0AC0)
  {
    sub_10022E824(&qword_100CC0AC8);
    sub_1001CCCE8();
    sub_10023FBF4(&qword_100CC0AF8, &unk_100CC0B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0AC0);
  }

  return result;
}

unint64_t sub_1004FB294()
{
  result = qword_100CC0AF0;
  if (!qword_100CC0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0AF0);
  }

  return result;
}

unint64_t sub_1004FB2E8()
{
  result = qword_100CC0B08;
  if (!qword_100CC0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0B08);
  }

  return result;
}

void sub_1004FB33C(char a1, uint64_t a2)
{
  v4 = sub_1000B7B8C();
  v5 = type metadata accessor for LocationComponentContainerView(v4);
  sub_100003810(v5);
  v6 = sub_10001E728();

  sub_1004E2614(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_1004FB3CC()
{
  v0 = sub_1000926C0();
  v1 = type metadata accessor for LocationComponentContainerView(v0);
  sub_100003AE8(v1);
  v2 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v2);
  sub_1000883B4();
  v3 = swift_task_alloc();
  v4 = sub_100011378(v3);
  *v4 = v5;
  v11 = sub_1000714E8(v4);

  return sub_1004E294C(v11, v12, v13, v14, v6, v7, v8, v9, v10);
}

uint64_t sub_1004FC1B4()
{
  v0 = sub_1000926C0();
  v1 = type metadata accessor for LocationComponentContainerView(v0);
  sub_100003AE8(v1);
  v2 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v2);
  sub_1000883B4();
  v3 = swift_task_alloc();
  v4 = sub_100011378(v3);
  *v4 = v5;
  v11 = sub_1000714E8(v4);

  return sub_1004E294C(v11, v12, v13, v14, v6, v7, v8, v9, v10);
}

uint64_t sub_1004FC330(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 9);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004FC370(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004FC404(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 26))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004FC444(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1004FC4DC()
{
  result = qword_100CC0F18;
  if (!qword_100CC0F18)
  {
    sub_10022E824(&qword_100CC0F20);
    sub_1001D2B64();
    sub_10023FBF4(&qword_100CC08C8, &qword_100CC08B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0F18);
  }

  return result;
}

unint64_t sub_1004FC594()
{
  result = qword_100CC0F38;
  if (!qword_100CC0F38)
  {
    sub_10022E824(&qword_100CC0A00);
    sub_1001BB974(&qword_100CC0F40, &unk_100CC0F48, &unk_100A59A30, sub_1004FC67C);
    sub_100061A3C(&qword_100CC0F60, type metadata accessor for ComputeAppropriateLocationComponentHeaderViewModelModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0F38);
  }

  return result;
}

unint64_t sub_1004FC67C()
{
  result = qword_100CC0F50;
  if (!qword_100CC0F50)
  {
    sub_10022E824(&qword_100CC0F58);
    sub_1001CCA44();
    sub_1001CB964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0F50);
  }

  return result;
}

unint64_t sub_1004FC7C0(uint64_t a1)
{
  result = sub_1004FC7E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004FC7E8()
{
  result = qword_100CC0F88;
  if (!qword_100CC0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0F88);
  }

  return result;
}

unint64_t sub_1004FC890()
{
  result = qword_100CC0FB8;
  if (!qword_100CC0FB8)
  {
    sub_10022E824(&qword_100CC0FA0);
    sub_10023FBF4(&qword_100CC0FC0, &unk_100CC0FA8);
    sub_100061A3C(&qword_100CC0FC8, type metadata accessor for RowMaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0FB8);
  }

  return result;
}

unint64_t sub_1004FC9A4()
{
  result = qword_100CC11C8;
  if (!qword_100CC11C8)
  {
    sub_10022E824(&qword_100CC1000);
    sub_1004FCA5C();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC11C8);
  }

  return result;
}

unint64_t sub_1004FCA5C()
{
  result = qword_100CC11D0;
  if (!qword_100CC11D0)
  {
    sub_10022E824(&qword_100CC11D8);
    sub_1001BB974(&qword_100CC11E0, &qword_100CC11E8, &unk_100A59FA0, sub_1004FCB14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC11D0);
  }

  return result;
}

unint64_t sub_1004FCB14()
{
  result = qword_100CC11F0;
  if (!qword_100CC11F0)
  {
    sub_10022E824(&qword_100CC11F8);
    sub_1004FCBCC();
    sub_10023FBF4(&qword_100CC1210, &qword_100CC1218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC11F0);
  }

  return result;
}

unint64_t sub_1004FCBCC()
{
  result = qword_100CC1200;
  if (!qword_100CC1200)
  {
    sub_10022E824(&qword_100CC1208);
    sub_10023FBF4(&qword_100CC1210, &unk_100CC1218);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1200);
  }

  return result;
}

unint64_t sub_1004FCCB4()
{
  result = qword_100CC1220;
  if (!qword_100CC1220)
  {
    sub_10022E824(&qword_100CC0FE8);
    sub_1004FCD6C();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1220);
  }

  return result;
}

unint64_t sub_1004FCD6C()
{
  result = qword_100CC1228;
  if (!qword_100CC1228)
  {
    sub_10022E824(&qword_100CC1230);
    sub_1001BB974(&qword_100CC1238, &qword_100CC1240, &unk_100A59FD0, sub_1004FCE24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1228);
  }

  return result;
}

unint64_t sub_1004FCE24()
{
  result = qword_100CC1248;
  if (!qword_100CC1248)
  {
    sub_10022E824(&qword_100CC1250);
    sub_1004FCEDC();
    sub_10023FBF4(&qword_100CC1268, &qword_100CC1270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1248);
  }

  return result;
}

unint64_t sub_1004FCEDC()
{
  result = qword_100CC1258;
  if (!qword_100CC1258)
  {
    sub_10022E824(&qword_100CC1260);
    sub_10023FBF4(&qword_100CC1268, &unk_100CC1270);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1258);
  }

  return result;
}

unint64_t sub_1004FCFC4()
{
  result = qword_100CC1278;
  if (!qword_100CC1278)
  {
    sub_10022E824(&qword_100CC1020);
    sub_1004FD050();
    sub_1004FD360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1278);
  }

  return result;
}

unint64_t sub_1004FD050()
{
  result = qword_100CC1280;
  if (!qword_100CC1280)
  {
    sub_10022E824(&qword_100CC1030);
    sub_1004FD108();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1280);
  }

  return result;
}

unint64_t sub_1004FD108()
{
  result = qword_100CC1288;
  if (!qword_100CC1288)
  {
    sub_10022E824(&qword_100CC1290);
    sub_1001BB974(&qword_100CC1298, &qword_100CC12A0, &unk_100A59FF8, sub_1004FD1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1288);
  }

  return result;
}

unint64_t sub_1004FD1C0()
{
  result = qword_100CC12A8;
  if (!qword_100CC12A8)
  {
    sub_10022E824(&qword_100CC12B0);
    sub_1004FD278();
    sub_10023FBF4(&qword_100CC12C8, &qword_100CC12D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC12A8);
  }

  return result;
}

unint64_t sub_1004FD278()
{
  result = qword_100CC12B8;
  if (!qword_100CC12B8)
  {
    sub_10022E824(&qword_100CC12C0);
    sub_10023FBF4(&qword_100CC12C8, &unk_100CC12D0);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC12B8);
  }

  return result;
}

unint64_t sub_1004FD360()
{
  result = qword_100CC12D8;
  if (!qword_100CC12D8)
  {
    sub_10022E824(&qword_100CC1008);
    sub_1004FD418();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC12D8);
  }

  return result;
}

unint64_t sub_1004FD418()
{
  result = qword_100CC12E0;
  if (!qword_100CC12E0)
  {
    sub_10022E824(&qword_100CC12E8);
    sub_1001BB974(&qword_100CC12F0, &qword_100CC12F8, &unk_100A5A020, sub_1004FD4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC12E0);
  }

  return result;
}

unint64_t sub_1004FD4D0()
{
  result = qword_100CC1300;
  if (!qword_100CC1300)
  {
    sub_10022E824(&qword_100CC1308);
    sub_1004FD588();
    sub_10023FBF4(&qword_100CC1320, &qword_100CC1328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1300);
  }

  return result;
}

unint64_t sub_1004FD588()
{
  result = qword_100CC1310;
  if (!qword_100CC1310)
  {
    sub_10022E824(&qword_100CC1318);
    sub_10023FBF4(&qword_100CC1320, &unk_100CC1328);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1310);
  }

  return result;
}

unint64_t sub_1004FD670()
{
  result = qword_100CC1330;
  if (!qword_100CC1330)
  {
    sub_10022E824(&qword_100CC0FF8);
    sub_1004FC9A4();
    sub_1004FCCB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1330);
  }

  return result;
}

unint64_t sub_1004FD6FC()
{
  result = qword_100CC1338;
  if (!qword_100CC1338)
  {
    sub_10022E824(&qword_100CC11B8);
    sub_1004FD788();
    sub_1004FE6DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1338);
  }

  return result;
}

unint64_t sub_1004FD788()
{
  result = qword_100CC1340;
  if (!qword_100CC1340)
  {
    sub_10022E824(&qword_100CC11B0);
    sub_1004FD814();
    sub_1004FDF78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1340);
  }

  return result;
}

unint64_t sub_1004FD814()
{
  result = qword_100CC1348;
  if (!qword_100CC1348)
  {
    sub_10022E824(&qword_100CC11A8);
    sub_1004FD8A0();
    sub_1004FDC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1348);
  }

  return result;
}

unint64_t sub_1004FD8A0()
{
  result = qword_100CC1350;
  if (!qword_100CC1350)
  {
    sub_10022E824(&qword_100CC11A0);
    sub_1004FD92C();
    sub_1004FDA9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1350);
  }

  return result;
}

unint64_t sub_1004FD92C()
{
  result = qword_100CC1358;
  if (!qword_100CC1358)
  {
    sub_10022E824(&qword_100CC11C0);
    sub_1004FD9E4();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1358);
  }

  return result;
}

unint64_t sub_1004FD9E4()
{
  result = qword_100CC1360;
  if (!qword_100CC1360)
  {
    sub_10022E824(&qword_100CC1368);
    sub_1001BB974(&qword_100CC1370, &qword_100CC1378, &unk_100A5A048, sub_1001BBFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1360);
  }

  return result;
}

unint64_t sub_1004FDA9C()
{
  result = qword_100CC13B0;
  if (!qword_100CC13B0)
  {
    sub_10022E824(&qword_100CC1170);
    sub_1004FDB54();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC13B0);
  }

  return result;
}

unint64_t sub_1004FDB54()
{
  result = qword_100CC13B8;
  if (!qword_100CC13B8)
  {
    sub_10022E824(&qword_100CC13C0);
    sub_1001BB974(&qword_100CC13C8, &qword_100CC13D0, &unk_100A5A070, sub_1001BC160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC13B8);
  }

  return result;
}

unint64_t sub_1004FDC0C()
{
  result = qword_100CC1408;
  if (!qword_100CC1408)
  {
    sub_10022E824(&qword_100CC1160);
    sub_1004FDC98();
    sub_1004FDE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1408);
  }

  return result;
}

unint64_t sub_1004FDC98()
{
  result = qword_100CC1410;
  if (!qword_100CC1410)
  {
    sub_10022E824(&qword_100CC1168);
    sub_1004FDD50();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1410);
  }

  return result;
}

unint64_t sub_1004FDD50()
{
  result = qword_100CC1418;
  if (!qword_100CC1418)
  {
    sub_10022E824(&qword_100CC1420);
    sub_1001BB974(&qword_100CC1428, &qword_100CC1430, &unk_100A5A098, sub_1001BB750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1418);
  }

  return result;
}

unint64_t sub_1004FDE08()
{
  result = qword_100CC1468;
  if (!qword_100CC1468)
  {
    sub_10022E824(&qword_100CC1150);
    sub_1004FDEC0();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1468);
  }

  return result;
}

unint64_t sub_1004FDEC0()
{
  result = qword_100CC1470;
  if (!qword_100CC1470)
  {
    sub_10022E824(&qword_100CC1478);
    sub_1001BB974(&qword_100CC1480, &qword_100CC1488, &unk_100A5A0C0, sub_1001BB9EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1470);
  }

  return result;
}

unint64_t sub_1004FDF78()
{
  result = qword_100CC14C0;
  if (!qword_100CC14C0)
  {
    sub_10022E824(&qword_100CC1140);
    sub_1004FE004();
    sub_1004FE370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC14C0);
  }

  return result;
}

unint64_t sub_1004FE004()
{
  result = qword_100CC14C8;
  if (!qword_100CC14C8)
  {
    sub_10022E824(&qword_100CC1138);
    sub_1004FE090();
    sub_1004FE200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC14C8);
  }

  return result;
}

unint64_t sub_1004FE090()
{
  result = qword_100CC14D0;
  if (!qword_100CC14D0)
  {
    sub_10022E824(&qword_100CC1148);
    sub_1004FE148();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC14D0);
  }

  return result;
}

unint64_t sub_1004FE148()
{
  result = qword_100CC14D8;
  if (!qword_100CC14D8)
  {
    sub_10022E824(&qword_100CC14E0);
    sub_1001BB974(&qword_100CC14E8, &qword_100CC14F0, &unk_100A5A0E8, sub_1001BBE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC14D8);
  }

  return result;
}

unint64_t sub_1004FE200()
{
  result = qword_100CC1528;
  if (!qword_100CC1528)
  {
    sub_10022E824(&qword_100CC1120);
    sub_1004FE2B8();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1528);
  }

  return result;
}

unint64_t sub_1004FE2B8()
{
  result = qword_100CC1530;
  if (!qword_100CC1530)
  {
    sub_10022E824(&qword_100CC1538);
    sub_1001BB974(&qword_100CC1540, &qword_100CC1548, &unk_100A5A110, sub_1001BC300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1530);
  }

  return result;
}

unint64_t sub_1004FE370()
{
  result = qword_100CC1580;
  if (!qword_100CC1580)
  {
    sub_10022E824(&qword_100CC1110);
    sub_1004FE3FC();
    sub_1004FE56C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1580);
  }

  return result;
}

unint64_t sub_1004FE3FC()
{
  result = qword_100CC1588;
  if (!qword_100CC1588)
  {
    sub_10022E824(&qword_100CC1118);
    sub_1004FE4B4();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1588);
  }

  return result;
}

unint64_t sub_1004FE4B4()
{
  result = qword_100CC1590;
  if (!qword_100CC1590)
  {
    sub_10022E824(&qword_100CC1598);
    sub_1001BB974(&qword_100CC15A0, &qword_100CC15A8, &unk_100A5A138, sub_1001BC4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1590);
  }

  return result;
}

unint64_t sub_1004FE56C()
{
  result = qword_100CC15E0;
  if (!qword_100CC15E0)
  {
    sub_10022E824(&qword_100CC1100);
    sub_1004FE624();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC15E0);
  }

  return result;
}

unint64_t sub_1004FE624()
{
  result = qword_100CC15E8;
  if (!qword_100CC15E8)
  {
    sub_10022E824(&qword_100CC15F0);
    sub_1001BB974(&qword_100CC15F8, &qword_100CC1600, &unk_100A5A160, sub_1001BC640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC15E8);
  }

  return result;
}

unint64_t sub_1004FE6DC()
{
  result = qword_100CC1638;
  if (!qword_100CC1638)
  {
    sub_10022E824(&qword_100CC10F0);
    sub_1004FE768();
    sub_1004FEF4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1638);
  }

  return result;
}

unint64_t sub_1004FE768()
{
  result = qword_100CC1640;
  if (!qword_100CC1640)
  {
    sub_10022E824(&qword_100CC10E8);
    sub_1004FE7F4();
    sub_1004FEBA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1640);
  }

  return result;
}

unint64_t sub_1004FE7F4()
{
  result = qword_100CC1648;
  if (!qword_100CC1648)
  {
    sub_10022E824(&qword_100CC10E0);
    sub_1004FE8C4();
    sub_10022E824(&qword_100CC10B8);
    sub_1004FEA34();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1648);
  }

  return result;
}

unint64_t sub_1004FE8C4()
{
  result = qword_100CC1650;
  if (!qword_100CC1650)
  {
    sub_10022E824(&qword_100CC10F8);
    sub_1004FE97C();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1650);
  }

  return result;
}

unint64_t sub_1004FE97C()
{
  result = qword_100CC1658;
  if (!qword_100CC1658)
  {
    sub_10022E824(&qword_100CC1660);
    sub_1001BB974(&qword_100CC1668, &qword_100CC1670, &unk_100A5A188, sub_1001BC7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1658);
  }

  return result;
}

unint64_t sub_1004FEA34()
{
  result = qword_100CC16A8;
  if (!qword_100CC16A8)
  {
    sub_10022E824(&qword_100CC10B8);
    sub_1004FEAEC();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC16A8);
  }

  return result;
}

unint64_t sub_1004FEAEC()
{
  result = qword_100CC16B0;
  if (!qword_100CC16B0)
  {
    sub_10022E824(&qword_100CC16B8);
    sub_1001BB974(&qword_100CC16C0, &qword_100CC16C8, &unk_100A5A1B0, sub_1001BC980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC16B0);
  }

  return result;
}

unint64_t sub_1004FEBA4()
{
  result = qword_100CC1700;
  if (!qword_100CC1700)
  {
    sub_10022E824(&qword_100CC10A0);
    sub_10022E824(&qword_100CC10A8);
    sub_1004FEC6C();
    swift_getOpaqueTypeConformance2();
    sub_1004FEDDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1700);
  }

  return result;
}

unint64_t sub_1004FEC6C()
{
  result = qword_100CC1708;
  if (!qword_100CC1708)
  {
    sub_10022E824(&qword_100CC10A8);
    sub_1004FED24();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1708);
  }

  return result;
}

unint64_t sub_1004FED24()
{
  result = qword_100CC1710;
  if (!qword_100CC1710)
  {
    sub_10022E824(&qword_100CC1718);
    sub_1001BB974(&qword_100CC1720, &qword_100CC1728, &unk_100A5A1D8, sub_1001BCB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1710);
  }

  return result;
}

unint64_t sub_1004FEDDC()
{
  result = qword_100CC1760;
  if (!qword_100CC1760)
  {
    sub_10022E824(&qword_100CC1090);
    sub_1004FEE94();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1760);
  }

  return result;
}

unint64_t sub_1004FEE94()
{
  result = qword_100CC1768;
  if (!qword_100CC1768)
  {
    sub_10022E824(&qword_100CC1770);
    sub_1001BB974(&qword_100CC1778, &qword_100CC1780, &unk_100A5A200, sub_1001BCCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1768);
  }

  return result;
}

unint64_t sub_1004FEF4C()
{
  result = qword_100CC17B8;
  if (!qword_100CC17B8)
  {
    sub_10022E824(&qword_100CC1080);
    sub_1004FEFD8();
    sub_1004FF528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC17B8);
  }

  return result;
}

unint64_t sub_1004FEFD8()
{
  result = qword_100CC17C0;
  if (!qword_100CC17C0)
  {
    sub_10022E824(&qword_100CC1078);
    sub_1004FF0A8();
    sub_10022E824(&qword_100CC1058);
    sub_1004FF218();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC17C0);
  }

  return result;
}

unint64_t sub_1004FF0A8()
{
  result = qword_100CC17C8;
  if (!qword_100CC17C8)
  {
    sub_10022E824(&qword_100CC1088);
    sub_1004FF160();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC17C8);
  }

  return result;
}

unint64_t sub_1004FF160()
{
  result = qword_100CC17D0;
  if (!qword_100CC17D0)
  {
    sub_10022E824(&qword_100CC17D8);
    sub_1001BB974(&qword_100CC17E0, &qword_100CC17E8, &unk_100A5A228, sub_1001C74C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC17D0);
  }

  return result;
}

unint64_t sub_1004FF218()
{
  result = qword_100CC1820;
  if (!qword_100CC1820)
  {
    sub_10022E824(&qword_100CC1058);
    sub_1004FF2D0();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1820);
  }

  return result;
}

unint64_t sub_1004FF2D0()
{
  result = qword_100CC1828;
  if (!qword_100CC1828)
  {
    sub_10022E824(&qword_100CC1830);
    sub_1001BB974(&qword_100CC1838, &qword_100CC1840, &unk_100A5A250, sub_1004FF388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1828);
  }

  return result;
}

unint64_t sub_1004FF388()
{
  result = qword_100CC1848;
  if (!qword_100CC1848)
  {
    sub_10022E824(&qword_100CC1850);
    sub_1004FF440();
    sub_10023FBF4(&qword_100CC1868, &qword_100CC1870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1848);
  }

  return result;
}

unint64_t sub_1004FF440()
{
  result = qword_100CC1858;
  if (!qword_100CC1858)
  {
    sub_10022E824(&qword_100CC1860);
    sub_10023FBF4(&qword_100CC1868, &unk_100CC1870);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1858);
  }

  return result;
}

unint64_t sub_1004FF528()
{
  result = qword_100CC1878;
  if (!qword_100CC1878)
  {
    sub_10022E824(&qword_100CC1048);
    sub_1004FF5B4();
    sub_1004FF8C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1878);
  }

  return result;
}

unint64_t sub_1004FF5B4()
{
  result = qword_100CC1880;
  if (!qword_100CC1880)
  {
    sub_10022E824(&qword_100CC1050);
    sub_1004FF66C();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1880);
  }

  return result;
}

unint64_t sub_1004FF66C()
{
  result = qword_100CC1888;
  if (!qword_100CC1888)
  {
    sub_10022E824(&qword_100CC1890);
    sub_1001BB974(&qword_100CC1898, &qword_100CC18A0, &unk_100A5A278, sub_1004FF724);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1888);
  }

  return result;
}

unint64_t sub_1004FF724()
{
  result = qword_100CC18A8;
  if (!qword_100CC18A8)
  {
    sub_10022E824(&qword_100CC18B0);
    sub_1004FF7DC();
    sub_10023FBF4(&qword_100CC18C8, &qword_100CC18D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC18A8);
  }

  return result;
}

unint64_t sub_1004FF7DC()
{
  result = qword_100CC18B8;
  if (!qword_100CC18B8)
  {
    sub_10022E824(&qword_100CC18C0);
    sub_10023FBF4(&qword_100CC18C8, &unk_100CC18D0);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC18B8);
  }

  return result;
}

unint64_t sub_1004FF8C4()
{
  result = qword_100CC18D8;
  if (!qword_100CC18D8)
  {
    sub_10022E824(&qword_100CC1038);
    sub_1004FF97C();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC18D8);
  }

  return result;
}

unint64_t sub_1004FF97C()
{
  result = qword_100CC18E0;
  if (!qword_100CC18E0)
  {
    sub_10022E824(&qword_100CC18E8);
    sub_1001BB974(&qword_100CC18F0, &qword_100CC18F8, &unk_100A5A2A0, sub_1004FFA34);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC18E0);
  }

  return result;
}

unint64_t sub_1004FFA34()
{
  result = qword_100CC1900;
  if (!qword_100CC1900)
  {
    sub_10022E824(&qword_100CC1908);
    sub_1004FFAEC();
    sub_10023FBF4(&qword_100CC1920, &qword_100CC1928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1900);
  }

  return result;
}

unint64_t sub_1004FFAEC()
{
  result = qword_100CC1910;
  if (!qword_100CC1910)
  {
    sub_10022E824(&qword_100CC1918);
    sub_10023FBF4(&qword_100CC1920, &unk_100CC1928);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1910);
  }

  return result;
}

unint64_t sub_1004FFBD4()
{
  result = qword_100CC1930;
  if (!qword_100CC1930)
  {
    sub_10022E824(&qword_100CC1028);
    sub_1004FCFC4();
    sub_1004FD670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1930);
  }

  return result;
}

void *sub_1004FFCF4()
{
  v2 = sub_10000C76C();
  v3 = type metadata accessor for LocationComponentContainerContentView(v2);
  sub_100003810(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 17) & ~*(v4 + 80));

  return sub_1004EA384(v5, v6, v0);
}

uint64_t sub_1004FFD94()
{
  v0 = sub_10000C76C();
  v1 = type metadata accessor for LocationComponentContainerContentView(v0);
  sub_100003810(v1);
  v3 = sub_1001ACFEC(*(v2 + 80));

  return sub_1004EA168(v3, v4);
}

uint64_t sub_1004FFF5C(uint64_t a1, uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = sub_10000C76C();
  v5 = v4(v3);
  sub_100003AE8(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for LocationComponentContainerContentView(0);
  sub_100003810(v10);
  v12 = v2 + ((v7 + v9 + *(v11 + 80)) & ~*(v11 + 80));

  return a2(v2 + v7, v12);
}

uint64_t sub_100500068(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = sub_10000C76C();
  v4 = v3(v2);
  sub_100003810(v4);
  v6 = sub_1001ACFEC(*(v5 + 80));

  return a2(v6);
}

uint64_t sub_100500108@<X0>(void (*a1)(uint64_t *__return_ptr)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1004F1864(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1005001F0()
{
  result = qword_100CC1BD0;
  if (!qword_100CC1BD0)
  {
    sub_10022E824(&qword_100CC1BB8);
    sub_1005002A8();
    sub_10023FBF4(&qword_100CC1BF0, &unk_100CC1BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1BD0);
  }

  return result;
}

unint64_t sub_1005002A8()
{
  result = qword_100CC1BD8;
  if (!qword_100CC1BD8)
  {
    sub_10022E824(&qword_100CC1BB0);
    sub_10022E824(&qword_100CC1BC0);
    sub_10023FBF4(&qword_100CC1BC8, &qword_100CC1BC0);
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CC1BE0, &unk_100CC1BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1BD8);
  }

  return result;
}

unint64_t sub_1005003F0()
{
  result = qword_100CC1C60;
  if (!qword_100CC1C60)
  {
    sub_10022E824(&qword_100CC1C50);
    sub_1005004AC();
    sub_100061A3C(&qword_100CC1C90, type metadata accessor for BackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1C60);
  }

  return result;
}

unint64_t sub_1005004AC()
{
  result = qword_100CC1C68;
  if (!qword_100CC1C68)
  {
    sub_10022E824(&qword_100CC1C10);
    sub_100500538();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1C68);
  }

  return result;
}

unint64_t sub_100500538()
{
  result = qword_100CC1C70;
  if (!qword_100CC1C70)
  {
    sub_10022E824(&qword_100CC1C20);
    sub_10023FBF4(&qword_100CC1C78, &unk_100CC1C80);
    sub_10023FBF4(&qword_100CC1C88, &unk_100CC1C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1C70);
  }

  return result;
}

unint64_t sub_10050061C()
{
  result = qword_100CC1C98;
  if (!qword_100CC1C98)
  {
    sub_10022E824(&qword_100CC1C40);
    sub_1005004AC();
    sub_10023FBF4(&qword_100CC1CA0, &unk_100CC1C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1C98);
  }

  return result;
}

unint64_t sub_1005006D4()
{
  result = qword_100CC1D18;
  if (!qword_100CC1D18)
  {
    sub_10022E824(&qword_100CC1D00);
    sub_10050078C();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1D18);
  }

  return result;
}

unint64_t sub_10050078C()
{
  result = qword_100CC1D20;
  if (!qword_100CC1D20)
  {
    sub_10022E824(&qword_100CC1CF8);
    sub_100500848();
    sub_100061A3C(&qword_100CC1D40, type metadata accessor for HeaderModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1D20);
  }

  return result;
}

unint64_t sub_100500848()
{
  result = qword_100CC1D28;
  if (!qword_100CC1D28)
  {
    sub_10022E824(&qword_100CC1CF0);
    sub_100061A3C(&qword_100CC1D30, type metadata accessor for LocationComponentHeaderView);
    sub_10023FBF4(&qword_100CC1D38, &unk_100CC1D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1D28);
  }

  return result;
}

unint64_t sub_100500950()
{
  result = qword_100CC1D48;
  if (!qword_100CC1D48)
  {
    sub_10022E824(&qword_100CC1CE0);
    sub_100500848();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1D48);
  }

  return result;
}

void sub_100500A60()
{
  sub_10013D854(319, &unk_100CC0C48, type metadata accessor for LocationComponentHeaderMetrics, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000816EC(319, &unk_100CA41F0, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1000816EC(319, &unk_100CC1DD8, &type metadata for RowMaskModifier.RowGeometry, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100500BEC()
{
  sub_1000816EC(319, &unk_100CA41F0, &type metadata for CGFloat, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10013D854(319, &qword_100CABE70, type metadata accessor for LocationComponentCornerRadiusConfiguration, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100500CF4()
{
  type metadata accessor for Location.Identifier();
  if (v0 <= 0x3F)
  {
    sub_10013B178();
    if (v1 <= 0x3F)
    {
      sub_1000816EC(319, &qword_100CC0CE8, &type metadata for ForegroundEffectViewMask, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000816EC(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_1000816EC(319, &qword_100CA3C60, &type metadata for PerformanceTestFeatures, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_100500ED4();
            if (v5 <= 0x3F)
            {
              sub_1000827BC(319, &qword_100CB6E88, &qword_100CA60E8, &unk_100A5A9F0, &type metadata accessor for Environment);
              if (v6 <= 0x3F)
              {
                sub_10013D854(319, &qword_100CABE70, type metadata accessor for LocationComponentCornerRadiusConfiguration, &type metadata accessor for Environment);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100500ED4()
{
  if (!qword_100CC2038)
  {
    type metadata accessor for WeatherVFXConditionBackground();
    sub_100061A3C(&qword_100CB0478, &type metadata accessor for WeatherVFXConditionBackground);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC2038);
    }
  }
}

void sub_100500FB0()
{
  sub_1000D422C();
  sub_10013D854(319, v0, v1, &type metadata accessor for Environment);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100501064()
{
  sub_1000816EC(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10013D854(319, &unk_100CC0C48, type metadata accessor for LocationComponentHeaderMetrics, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1000816EC(319, &unk_100CA41F0, &type metadata for CGFloat, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10050118C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10022C350(&qword_100CC0BD8);
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_100042260(*(a1 + *(a3 + 20) + 8));
  }

  return sub_100024D10(a1, a2, v6);
}

void sub_10050124C()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CC0BD8);
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    sub_10002FDE8();
    sub_1000178C4();

    sub_10001B350(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = -v0;
  }
}

unint64_t sub_1005012FC()
{
  result = qword_100CC2240;
  if (!qword_100CC2240)
  {
    sub_10022E824(&qword_100CC0F98);
    sub_10023FBF4(&qword_100CC2248, &qword_100CC0F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC2240);
  }

  return result;
}

unint64_t sub_1005013B4()
{
  result = qword_100CC2250;
  if (!qword_100CC2250)
  {
    sub_10022E824(&qword_100CC2258);
    sub_1004FD6FC();
    sub_1004FFBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC2250);
  }

  return result;
}

unint64_t sub_100501440()
{
  result = qword_100CC2260;
  if (!qword_100CC2260)
  {
    sub_10022E824(&qword_100CC1BA0);
    sub_10023FBF4(&qword_100CC2268, &qword_100CC1B98);
    sub_10023FBF4(&qword_100CC2270, &qword_100CC2278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC2260);
  }

  return result;
}

unint64_t sub_100501524()
{
  result = qword_100CC2280;
  if (!qword_100CC2280)
  {
    sub_10022E824(&qword_100CC2288);
    sub_1005001F0();
    sub_100061A3C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC2280);
  }

  return result;
}

unint64_t sub_1005015E0()
{
  result = qword_100CC2290;
  if (!qword_100CC2290)
  {
    sub_10022E824(&qword_100CC1C08);
    sub_10023FBF4(&qword_100CC2298, &qword_100CC1C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC2290);
  }

  return result;
}

unint64_t sub_100501698()
{
  result = qword_100CC22B0;
  if (!qword_100CC22B0)
  {
    sub_10022E824(&qword_100CC22B8);
    sub_1005003F0();
    sub_10050061C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC22B0);
  }

  return result;
}

unint64_t sub_100501724()
{
  result = qword_100CC22C0;
  if (!qword_100CC22C0)
  {
    sub_10022E824(&qword_100CC1D68);
    sub_10023FBF4(&qword_100CC22C8, &qword_100CC1D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC22C0);
  }

  return result;
}

void sub_1005018D8(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RowMaskModifier(0);
  sub_100003AE8(v3);
  v6 = (*(v5 + 64) + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v6);
  v9 = *(v1 + v7);
  v10 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1004F71A0(a1, v8, v9, v10);
}

uint64_t sub_100501994()
{
  v1 = sub_100017580();
  v2 = type metadata accessor for RowMaskModifier(v1);
  sub_100003810(v2);
  sub_100008550();

  return sub_1004F7364(v0);
}

unint64_t sub_1005019F4()
{
  result = qword_100CC23A8;
  if (!qword_100CC23A8)
  {
    sub_10022E824(&qword_100CC2380);
    sub_10023FBF4(&qword_100CC23B0, &qword_100CC23B8);
    sub_100501AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC23A8);
  }

  return result;
}

unint64_t sub_100501AAC()
{
  result = qword_100CC23C0;
  if (!qword_100CC23C0)
  {
    sub_10022E824(&qword_100CC23C8);
    sub_10023FBF4(&qword_100CC23D0, &unk_100CC23D8);
    sub_10023FBF4(&qword_100CB80A0, &qword_100CB34E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC23C0);
  }

  return result;
}

unint64_t sub_100501B90()
{
  result = qword_100CC23E8;
  if (!qword_100CC23E8)
  {
    sub_10022E824(&qword_100CC23A0);
    sub_10023FBF4(&qword_100CC23F0, &qword_100CBDCE8);
    sub_10023FBF4(&qword_100CC23F8, &unk_100CC2388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC23E8);
  }

  return result;
}

unint64_t sub_100501C74()
{
  result = qword_100CC2400;
  if (!qword_100CC2400)
  {
    sub_10022E824(&qword_100CC2378);
    sub_1005019F4();
    sub_10023FBF4(&qword_100CC23E0, &qword_100CC2368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC2400);
  }

  return result;
}

uint64_t sub_100501D44(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100501D90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100501DE8()
{
  result = qword_100CC2470;
  if (!qword_100CC2470)
  {
    sub_10022E824(&qword_100CC22F8);
    sub_100501EA0();
    sub_10023FBF4(&qword_100CC2490, &unk_100CC2498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC2470);
  }

  return result;
}

unint64_t sub_100501EA0()
{
  result = qword_100CC2478;
  if (!qword_100CC2478)
  {
    sub_10022E824(&qword_100CC22F0);
    sub_10022E824(&qword_100CC22D8);
    sub_10023FBF4(&qword_100CC22E0, &qword_100CC22D8);
    sub_1001ACC6C();
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CC2480, &unk_100CC2488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC2478);
  }

  return result;
}

unint64_t sub_100501FDC()
{
  result = qword_100CC24A0;
  if (!qword_100CC24A0)
  {
    sub_10022E824(&qword_100CC2350);
    sub_10023FBF4(&qword_100CC24A8, &qword_100CC2348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC24A0);
  }

  return result;
}

unint64_t sub_100502094()
{
  result = qword_100CC24B0;
  if (!qword_100CC24B0)
  {
    sub_10022E824(&qword_100CC24B8);
    sub_10023FBF4(&qword_100CC2360, &qword_100CC2358);
    sub_100061A3C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC24B0);
  }

  return result;
}

unint64_t sub_10050217C()
{
  result = qword_100CC24C0;
  if (!qword_100CC24C0)
  {
    sub_10022E824(&qword_100CC24C8);
    sub_100501B90();
    sub_100501C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC24C0);
  }

  return result;
}

unint64_t sub_100502208()
{
  result = qword_100CC24D0;
  if (!qword_100CC24D0)
  {
    sub_10022E824(&qword_100CC2458);
    sub_100502294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC24D0);
  }

  return result;
}

unint64_t sub_100502294()
{
  result = qword_100CC24D8;
  if (!qword_100CC24D8)
  {
    sub_10022E824(&qword_100CC2448);
    sub_10023FBF4(&qword_100CC24E0, &qword_100CC2450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC24D8);
  }

  return result;
}

uint64_t sub_10050234C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = sub_100003A24(a1, a2);
  sub_10022E824(v6);
  sub_10022E824(&qword_100CA4670);
  sub_100007EB8();
  sub_10023FBF4(a4, a2);
  sub_10022E824(&qword_100CA4680);
  type metadata accessor for EmptyVisualEffect();
  sub_100010208();
  sub_100061A3C(v7, v8);
  sub_100005B34();
  swift_getOpaqueTypeConformance2();
  sub_100017540();
  return sub_1000043A0();
}

unint64_t sub_100502440()
{
  result = qword_100CC24E8;
  if (!qword_100CC24E8)
  {
    sub_10022E824(&qword_100CC24F0);
    sub_1005024C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC24E8);
  }

  return result;
}

unint64_t sub_1005024C4()
{
  result = qword_100CC24F8;
  if (!qword_100CC24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC24F8);
  }

  return result;
}

unint64_t sub_100502560()
{
  result = qword_100CC2510;
  if (!qword_100CC2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC2510);
  }

  return result;
}

unint64_t sub_1005025B8()
{
  result = qword_100CC2518;
  if (!qword_100CC2518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC2518);
  }

  return result;
}

unint64_t sub_10050260C()
{
  result = qword_100CC2520[0];
  if (!qword_100CC2520[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC2520);
  }

  return result;
}

uint64_t sub_100502684()
{
}

uint64_t sub_1005026B4@<X0>(int a1@<W8>)
{
  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1005026D4()
{

  return type metadata accessor for LocationComponentViewModel();
}

uint64_t sub_1005026F4()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_10050270C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10050274C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005027C4(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for SevereAlertComponentViewModel() + 40));
  v9 = [objc_opt_self() mainBundle];
  if (v3 <= a1)
  {
    sub_100008414(0xD00000000000001ALL, 0x8000000100AD0110, v4, v5, v6, v7, v8, 0xD00000000000005FLL);

    sub_10022C350(&qword_100CA40C8);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100A2C3F0;
    *(v11 + 56) = &type metadata for Int;
    *(v11 + 64) = &protocol witness table for Int;
    *(v11 + 32) = a1;
  }

  else
  {
    sub_100008414(0xD000000000000023, 0x8000000100AD0190, v4, v5, v6, v7, v8, 0xD00000000000007DLL);

    sub_10022C350(&qword_100CA40C8);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100A2D320;
    *(v10 + 56) = &type metadata for Int;
    *(v10 + 64) = &protocol witness table for Int;
    *(v10 + 32) = a1;
    *(v10 + 96) = &type metadata for Int;
    *(v10 + 104) = &protocol witness table for Int;
    *(v10 + 72) = v3;
  }

  v12 = static String.localizedStringWithFormat(_:_:)();

  return v12;
}

BOOL sub_100502988(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  sub_1001CAA30();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = a1[5] == a2[5] && a1[6] == a2[6];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = a1[8];
  v11 = a2[8];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = a1[7] == a2[7] && v10 == v11;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = type metadata accessor for SevereAlertComponentViewModel();
  if (static WeatherAlert.Prominence.== infix(_:_:)())
  {
    return *(a1 + *(v13 + 40)) == *(a2 + *(v13 + 40));
  }

  return 0;
}

uint64_t sub_100502AB8(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  switch(a1)
  {
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 10:
      sub_10001EEFC();
      sub_100014800();
      v15 = v3;
      goto LABEL_3;
    case 2:
    case 11:
    case 12:
      sub_1000043D4();
      sub_100010220();
      v11 = 0x1000000000000142;
      goto LABEL_5;
    case 9:
      sub_10001EEFC();
      v15 = v14;
      goto LABEL_3;
    default:
      sub_10001EEFC();
      sub_100005FAC();
LABEL_3:
      sub_100010220();
LABEL_5:
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, *&v6, v8, *&v9, *(&v15 - 1))._countAndFlagsBits;

      return countAndFlagsBits;
  }
}

uint64_t sub_100502D28(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  switch(a1)
  {
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 10:
      sub_10001C434();
      sub_1000087B4();
      v15 = v3;
      goto LABEL_3;
    case 2:
    case 11:
    case 12:
      sub_1000043D4();
      sub_100010220();
      v11 = 0x10000000000000AELL;
      goto LABEL_5;
    case 9:
      sub_10001C434();
      v15 = v14;
      goto LABEL_3;
    default:
      sub_10001C434();
      sub_100005FAC();
LABEL_3:
      sub_100010220();
LABEL_5:
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, *&v6, v8, *&v9, *(&v15 - 1))._countAndFlagsBits;

      return countAndFlagsBits;
  }
}

uint64_t sub_100502FA0()
{
  v1 = type metadata accessor for LocationsConfiguration();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0((v0 + 16), *(v0 + 40));
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.locationsConfiguration.getter();
  (*(v6 + 8))(v8, v5);
  LocationsConfiguration.locationsOfInterestSupportURLiOS.getter();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100503140()
{
  v0 = type metadata accessor for URL();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  String.LocalizationValue.init(stringLiteral:)();
  sub_100502FA0();
  URL.absoluteString.getter();
  (*(v2 + 8))(v6, v0);
  return AttributedString.init(localized:bundle:linkA:linkB:)();
}

uint64_t sub_100503288()
{
  v0 = sub_10022C350(&qword_100CB3AB0);
  sub_100003810(v0);
  sub_100003828();
  __chkstk_darwin(v1);
  v3 = &v17 - v2;
  v4 = type metadata accessor for URL();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for String.LocalizationValue();
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  sub_1000037D8();
  String.LocalizationValue.init(stringLiteral:)();
  URL.init(string:)();
  result = sub_100024D10(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v16 = *(v6 + 32);
    v16(v9, v3, v4);
    v16(v12, v9, v4);
    URL.absoluteString.getter();
    (*(v6 + 8))(v12, v4);
    return AttributedString.init(localized:bundle:linkA:linkB:)();
  }

  return result;
}

uint64_t sub_1005034B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = sub_10022C350(&qword_100CB8BD0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  v54 = &v53 - v5;
  v6 = sub_10022C350(&qword_100CB3AB0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  v61 = &v53 - v8;
  sub_1000038CC();
  v62 = type metadata accessor for AttributeContainer();
  sub_1000037C4();
  v58 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v66 = type metadata accessor for AttributedString.Runs.Index();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v65 = v18 - v17;
  sub_1000038CC();
  v68 = type metadata accessor for AttributedString.Runs.Run();
  v19 = *(v68 - 8);
  __chkstk_darwin(v68 - 8);
  v67 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v63 = &v53 - v22;
  sub_1000038CC();
  v23 = type metadata accessor for AttributedString.Runs();
  sub_1000037C4();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_1000037D8();
  v29 = v28 - v27;
  v30 = sub_10022C350(&qword_100CC26F8) - 8;
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = &v53 - v32;
  type metadata accessor for AttributedString();
  sub_1000037E8();
  (*(v34 + 16))(a2, a1);
  v70[0] = [objc_opt_self() secondaryLabelColor];
  sub_100504088();
  AttributedString.subscript.setter();
  v56 = a2;
  AttributedString.runs.getter();
  (*(v25 + 16))(v33, v29, v23);
  v35 = *(v30 + 44);
  v36 = v23;
  sub_1005040DC(&qword_100CC2708, &type metadata accessor for AttributedString.Runs);
  dispatch thunk of Collection.startIndex.getter();
  (*(v25 + 8))(v29, v23);
  v64 = (v15 + 8);
  v59 = (v19 + 32);
  v60 = (v19 + 16);
  v57 = (v19 + 8);
  ++v58;
  v53 = v13;
  while (1)
  {
    v37 = v65;
    dispatch thunk of Collection.endIndex.getter();
    sub_1005040DC(&qword_100CC2710, &type metadata accessor for AttributedString.Runs.Index);
    v38 = v36;
    v39 = v66;
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v64)(v37, v39);
    if (v40)
    {
      break;
    }

    v41 = dispatch thunk of Collection.subscript.read();
    v42 = v63;
    v43 = v68;
    (*v60)(v63);
    v41(v70, 0);
    v44 = v35;
    v45 = v38;
    dispatch thunk of Collection.formIndex(after:)();
    v46 = v67;
    (*v59)(v67, v42, v43);
    AttributedString.Runs.Run.attributes.getter();
    sub_100504124();
    v47 = v61;
    AttributeContainer.subscript.getter();
    (*v58)(v13, v62);
    v48 = type metadata accessor for URL();
    LODWORD(v41) = sub_100024D10(v47, 1, v48);
    sub_1000180EC(v47, &qword_100CB3AB0);
    if (v41 != 1)
    {
      v49 = v54;
      AttributedString.Runs.Run.range.getter();
      v50 = static Color.accentColor.getter();
      sub_100504178();
      v51 = AttributedString.subscript.modify();
      v69 = v50;
      v46 = v67;
      sub_1005041DC();
      AttributedSubstring.subscript.setter();
      v51(v70, 0);
      v13 = v53;
      sub_1000180EC(v49, &qword_100CB8BD0);
    }

    (*v57)(v46, v68);
    v36 = v45;
    v35 = v44;
  }

  return sub_1000180EC(v33, &qword_100CC26F8);
}

uint64_t sub_100503B50@<X0>(uint64_t a1@<X0>, Swift::String *a2@<X8>)
{
  type metadata accessor for AttributedString();
  sub_1000037C4();
  v45 = v5;
  v46 = v4;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v8 = v7 - v6;
  sub_1000038CC();
  v9 = type metadata accessor for HomeAndWorkRefinementInput();
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = type metadata accessor for Location();
  sub_1000037C4();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_1000037D8();
  v27 = v26 - v25;
  sub_100503FC8(a1, v13);
  v28 = sub_10022C350(&qword_100CA6650);
  if (sub_100024D10(v13, 1, v28) == 1)
  {
    sub_10050402C(v13);
    v29 = type metadata accessor for HomeAndWorkRefinementContentViewModel(0);
    v30 = a2;
    v31 = 1;
  }

  else
  {
    v32 = *(v28 + 48);
    (*(v23 + 32))(v27, v13, v21);
    v43 = v14;
    (*(v16 + 32))(v20, v13 + v32, v14);
    if ([objc_opt_self() authorizationStatusForEntityType:0] == 3 && (v33 = objc_msgSend(objc_allocWithZone(CNContactStore), "init"), v34 = objc_msgSend(v33, "w_meContact"), v34, v33, v34))
    {
      v35 = v8;
      sub_100503288();
      v44 = 1;
    }

    else
    {
      v35 = v8;
      sub_100503140();
      v44 = 0;
    }

    v36 = [objc_opt_self() mainBundle];
    v47._object = 0x8000000100AD2790;
    v37._countAndFlagsBits = 0x736C6961746544;
    v37._object = 0xE700000000000000;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v47._countAndFlagsBits = 0xD00000000000002FLL;
    v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v47);

    v40 = type metadata accessor for HomeAndWorkRefinementContentViewModel(0);
    (*(v23 + 16))(a2 + v40[5], v27, v21);
    (*(v16 + 16))(a2 + v40[6], v20, v43);
    sub_1005034B0(v35, a2 + v40[7]);
    (*(v45 + 8))(v35, v46);
    (*(v16 + 8))(v20, v43);
    (*(v23 + 8))(v27, v21);
    *a2 = v39;
    *(&a2->_countAndFlagsBits + v40[8]) = v44;
    v30 = a2;
    v31 = 0;
    v29 = v40;
  }

  sub_10001B350(v30, v31, 1, v29);
  v41 = type metadata accessor for HomeAndWorkRefinementViewModel(0);
  return sub_10001B350(a2, 0, 1, v41);
}

uint64_t sub_100503FC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAndWorkRefinementInput();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10050402C(uint64_t a1)
{
  v2 = type metadata accessor for HomeAndWorkRefinementInput();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100504088()
{
  result = qword_100CC2700;
  if (!qword_100CC2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC2700);
  }

  return result;
}

uint64_t sub_1005040DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100504124()
{
  result = qword_100CC2718;
  if (!qword_100CC2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC2718);
  }

  return result;
}

unint64_t sub_100504178()
{
  result = qword_100CB8C08;
  if (!qword_100CB8C08)
  {
    sub_10022E824(&qword_100CB8BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB8C08);
  }

  return result;
}

unint64_t sub_1005041DC()
{
  result = qword_100CC2720;
  if (!qword_100CC2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC2720);
  }

  return result;
}

uint64_t sub_100504230@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_100035B30(v2 + 16, a1 + 24);

  sub_10022C350(&qword_100CA4A10);
  sub_1005042D4();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = a2;
  return result;
}

unint64_t sub_1005042D4()
{
  result = qword_100CA4A18;
  if (!qword_100CA4A18)
  {
    sub_10022E824(&qword_100CA4A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4A18);
  }

  return result;
}

void sub_100504360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_1000037D8();
  v31 = v30 - v29;
  sub_10022C350(&qword_100CA71B0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  v35 = type metadata accessor for DailyComponentForecastRowViewLargeText();
  sub_1000302D8(v20 + *(v35 + 20), v34, &qword_100CA71B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_1000037E8();
    (*(v36 + 32))(v24, v34);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v37 = static Log.runtimeIssuesLog.getter();
    sub_100016A84();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v27 + 8))(v31, v25);
  }

  sub_10000536C();
}
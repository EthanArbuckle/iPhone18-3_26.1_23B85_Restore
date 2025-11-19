unint64_t sub_100021D58()
{
  result = qword_1001D4618;
  if (!qword_1001D4618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4618);
  }

  return result;
}

uint64_t sub_100021DBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100021E04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100021E58()
{
  result = qword_1001D4628;
  if (!qword_1001D4628)
  {
    type metadata accessor for ConfigToggle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4628);
  }

  return result;
}

unint64_t sub_100021EB4()
{
  result = qword_1001D4630;
  if (!qword_1001D4630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4630);
  }

  return result;
}

unint64_t sub_100021F0C()
{
  result = qword_1001D4638;
  if (!qword_1001D4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4638);
  }

  return result;
}

unint64_t sub_100021F64()
{
  result = qword_1001D4640;
  if (!qword_1001D4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4640);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriRequestStateResponder.SiriRequestState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriRequestStateResponder.SiriRequestState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100022110()
{
  result = qword_1001D4648;
  if (!qword_1001D4648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4648);
  }

  return result;
}

__n128 sub_100022164(uint64_t a1, uint64_t a2)
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

uint64_t sub_100022188(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1000221D0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100022250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v61 = sub_1000033A8(&qword_1001D4678);
  v68 = *(v61 - 8);
  __chkstk_darwin(v61);
  v4 = &v54 - v3;
  v62 = sub_1000033A8(&qword_1001D4680);
  v69 = *(v62 - 8);
  __chkstk_darwin(v62);
  v6 = &v54 - v5;
  v7 = sub_1000033A8(&qword_1001D4688);
  v8 = __chkstk_darwin(v7 - 8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v65 = &v54 - v11;
  v12 = __chkstk_darwin(v10);
  v64 = &v54 - v13;
  __chkstk_darwin(v12);
  v60 = &v54 - v14;
  v15 = sub_1000033A8(&qword_1001D4690);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v63 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v54 - v19;
  v21 = *(a1 + 8);
  v22 = *(a1 + 16);
  v23 = *(a1 + 40);
  v24 = *(a1 + 48);
  v70 = *a1;
  v71 = v21;
  v72 = v22;
  v73 = *(a1 + 24);
  v74 = v23;
  v75 = v24;
  sub_100022C48();

  v59 = v20;
  View.accessibilityIdentifier(_:)();

  LOBYTE(v21) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v25 = &v20[*(v16 + 44)];
  *v25 = v21;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  v30 = swift_allocObject();
  v31 = *(a1 + 48);
  *(v30 + 48) = *(a1 + 32);
  *(v30 + 64) = v31;
  *(v30 + 80) = *(a1 + 64);
  *(v30 + 96) = *(a1 + 80);
  v32 = *(a1 + 16);
  *(v30 + 16) = *a1;
  *(v30 + 32) = v32;
  sub_100022CC8(a1, &v70);
  v58 = sub_1000033A8(&qword_1001D46A0);
  v57 = sub_100022D00();
  v55 = v4;
  Button.init(action:label:)();
  v33 = sub_100013608(&qword_1001D46E0, &qword_1001D4678);
  v34 = sub_100022E70();
  v35 = v6;
  v36 = v61;
  View.buttonStyle<A>(_:)();
  v37 = *(v68 + 8);
  v68 += 8;
  v56 = v37;
  v37(v4, v36);
  v70 = v36;
  v71 = &type metadata for ReplayControlButtonStyle;
  v72 = v33;
  *&v73 = v34;
  swift_getOpaqueTypeConformance2();
  v38 = v60;
  v39 = v62;
  View.accessibilityIdentifier(_:)();
  v40 = *(v69 + 8);
  v69 += 8;
  v40(v35, v39);
  v41 = swift_allocObject();
  v42 = *(a1 + 48);
  *(v41 + 48) = *(a1 + 32);
  *(v41 + 64) = v42;
  *(v41 + 80) = *(a1 + 64);
  *(v41 + 96) = *(a1 + 80);
  v43 = *(a1 + 16);
  *(v41 + 16) = *a1;
  *(v41 + 32) = v43;
  sub_100022CC8(a1, &v70);
  v44 = v55;
  Button.init(action:label:)();
  View.buttonStyle<A>(_:)();
  v56(v44, v36);
  v45 = v64;
  View.accessibilityIdentifier(_:)();
  v40(v35, v39);
  v46 = v59;
  v47 = v63;
  sub_1000138BC(v59, v63, &qword_1001D4690);
  v48 = v38;
  v49 = v65;
  sub_100022F44(v38, v65);
  v50 = v66;
  sub_100022F44(v45, v66);
  v51 = v67;
  sub_1000138BC(v47, v67, &qword_1001D4690);
  v52 = sub_1000033A8(&qword_1001D46F0);
  sub_100022F44(v49, v51 + *(v52 + 48));
  sub_100022F44(v50, v51 + *(v52 + 64));
  sub_100022FB4(v45);
  sub_100022FB4(v48);
  sub_10001370C(v46, &qword_1001D4690);
  sub_100022FB4(v50);
  sub_100022FB4(v49);
  return sub_10001370C(v47, &qword_1001D4690);
}

uint64_t sub_100022980@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(_internalSystemName:)();
  v3 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v5 = static Color.secondary.getter();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_100022A08@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(_internalSystemName:)();
  v3 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v5 = static Color.secondary.getter();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

double sub_100022A90@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v23[2] = *(v1 + 32);
  v23[3] = v3;
  v23[4] = *(v1 + 64);
  v24 = *(v1 + 80);
  v4 = *(v1 + 16);
  v23[0] = *v1;
  v23[1] = v4;
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v5 = sub_1000033A8(&qword_1001D4650);
  sub_100022250(v23, a1 + *(v5 + 44));
  v6 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a1 + *(sub_1000033A8(&qword_1001D4658) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = a1 + *(sub_1000033A8(&qword_1001D4660) + 36);
  static Material.thin.getter();
  v17 = sub_1000033A8(&qword_1001D4668);
  v18 = *(v17 + 52);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = type metadata accessor for RoundedCornerStyle();
  (*(*(v20 - 8) + 104))(v16 + v18, v19, v20);
  *(v16 + *(v17 + 56)) = 256;
  LOBYTE(v16) = static Edge.Set.horizontal.getter();
  v21 = a1 + *(sub_1000033A8(&qword_1001D4670) + 36);
  *v21 = v16;
  result = 0.0;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  *(v21 + 40) = 1;
  return result;
}

unint64_t sub_100022C48()
{
  result = qword_1001D4698;
  if (!qword_1001D4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4698);
  }

  return result;
}

unint64_t sub_100022D00()
{
  result = qword_1001D46A8;
  if (!qword_1001D46A8)
  {
    sub_10001276C(&qword_1001D46A0);
    sub_100022DB8();
    sub_100013608(&qword_1001D46D0, &qword_1001D46D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D46A8);
  }

  return result;
}

unint64_t sub_100022DB8()
{
  result = qword_1001D46B0;
  if (!qword_1001D46B0)
  {
    sub_10001276C(&qword_1001D46B8);
    sub_100013608(&qword_1001D46C0, &qword_1001D46C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D46B0);
  }

  return result;
}

unint64_t sub_100022E70()
{
  result = qword_1001D46E8;
  if (!qword_1001D46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D46E8);
  }

  return result;
}

uint64_t sub_100022EC4()
{

  return swift_deallocObject();
}

uint64_t sub_100022F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D4688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022FB4(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D4688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002301C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_1000033A8(&qword_1001D4728);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v43[-v3 - 8];
  v5 = sub_1000033A8(&qword_1001D4730);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v43[-v7 - 8];
  v9 = sub_1000033A8(&qword_1001D4738);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v43[-v11 - 8];
  ButtonStyleConfiguration.label.getter();
  v13 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v14 = &v4[*(v2 + 44)];
  *v14 = v13;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  static Color.black.getter();
  ButtonStyleConfiguration.isPressed.getter();
  v19 = Color.opacity(_:)();

  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v20 = 1.3;
  }

  else
  {
    v20 = 0.6;
  }

  static UnitPoint.center.getter();
  v22 = v21;
  v24 = v23;
  v25 = static Alignment.center.getter();
  v27 = v26;
  *&v44 = v19;
  WORD4(v44) = 256;
  *&v45 = v20;
  *(&v45 + 1) = v20;
  *&v46 = v22;
  *(&v46 + 1) = v24;
  *&v47 = v25;
  *(&v47 + 1) = v26;
  sub_10002091C(v4, v8, &qword_1001D4728);
  v28 = &v8[*(v6 + 44)];
  v29 = v45;
  *v28 = v44;
  *(v28 + 1) = v29;
  v30 = v47;
  *(v28 + 2) = v46;
  *(v28 + 3) = v30;
  v48 = v19;
  v49 = 256;
  v50 = v20;
  v51 = v20;
  v52 = v22;
  v53 = v24;
  v54 = v25;
  v55 = v27;
  sub_1000138BC(&v44, v43, &qword_1001D4740);
  sub_10001370C(&v48, &qword_1001D4740);
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v31 = 0.8;
  }

  else
  {
    v31 = 1.0;
  }

  static UnitPoint.center.getter();
  v33 = v32;
  v35 = v34;
  sub_10002091C(v8, v12, &qword_1001D4730);
  v36 = &v12[*(v10 + 44)];
  *v36 = v31;
  *(v36 + 1) = v31;
  *(v36 + 2) = v33;
  *(v36 + 3) = v35;
  v37 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v38 = ButtonStyleConfiguration.isPressed.getter();
  v39 = v42;
  sub_10002091C(v12, v42, &qword_1001D4738);
  result = sub_1000033A8(&qword_1001D4748);
  v41 = v39 + *(result + 36);
  *v41 = v37;
  *(v41 + 8) = v38 & 1;
  return result;
}

unint64_t sub_1000233DC()
{
  result = qword_1001D4700;
  if (!qword_1001D4700)
  {
    sub_10001276C(&qword_1001D4660);
    sub_100023494();
    sub_100013608(&qword_1001D4720, &qword_1001D4668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4700);
  }

  return result;
}

unint64_t sub_100023494()
{
  result = qword_1001D4708;
  if (!qword_1001D4708)
  {
    sub_10001276C(&qword_1001D4658);
    sub_100013608(&qword_1001D4710, &qword_1001D4718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4708);
  }

  return result;
}

unint64_t sub_10002356C()
{
  result = qword_1001D4750;
  if (!qword_1001D4750)
  {
    sub_10001276C(&qword_1001D4748);
    sub_100023624();
    sub_100013608(&qword_1001D4780, &qword_1001D4788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4750);
  }

  return result;
}

unint64_t sub_100023624()
{
  result = qword_1001D4758;
  if (!qword_1001D4758)
  {
    sub_10001276C(&qword_1001D4738);
    sub_1000236B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4758);
  }

  return result;
}

unint64_t sub_1000236B0()
{
  result = qword_1001D4760;
  if (!qword_1001D4760)
  {
    sub_10001276C(&qword_1001D4730);
    sub_100023794(&qword_1001D4768, &qword_1001D4728, &unk_1001717C0, sub_100023818);
    sub_100013608(&qword_1001D4778, &qword_1001D4740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4760);
  }

  return result;
}

uint64_t sub_100023794(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001276C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100023818()
{
  result = qword_1001D4770;
  if (!qword_1001D4770)
  {
    type metadata accessor for ButtonStyleConfiguration.Label();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4770);
  }

  return result;
}

uint64_t sub_100023888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000033A8(&qword_1001D4790);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100023958(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000033A8(&qword_1001D4790);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SwipeToDismissModifier()
{
  result = qword_1001D47F0;
  if (!qword_1001D47F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100023A54()
{
  sub_10001B610();
  if (v0 <= 0x3F)
  {
    sub_100023B6C(319, &qword_1001D4800);
    if (v1 <= 0x3F)
    {
      sub_100023B6C(319, &qword_1001D44A0);
      if (v2 <= 0x3F)
      {
        sub_100023B6C(319, &qword_1001D4808);
        if (v3 <= 0x3F)
        {
          sub_100023BB8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100023B6C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for State();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_100023BB8()
{
  if (!qword_1001D4810)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1001D4810);
    }
  }
}

uint64_t sub_100023C2C()
{
  if (*v0)
  {
    return 1853321060;
  }

  else
  {
    return 28789;
  }
}

uint64_t sub_100023C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v57 = a2;
  v45 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v45);
  v44[1] = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DragGesture();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v46 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000033A8(&qword_1001D4860);
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = v44 - v7;
  v56 = sub_1000033A8(&qword_1001D4868);
  __chkstk_darwin(v56);
  v55 = v44 - v8;
  v9 = type metadata accessor for SwipeToDismissModifier();
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  __chkstk_darwin(v9);
  v11 = sub_1000033A8(&qword_1001D4870);
  __chkstk_darwin(v11);
  v13 = v44 - v12;
  v54 = sub_1000033A8(&qword_1001D4878);
  __chkstk_darwin(v54);
  v15 = v44 - v14;
  v58 = sub_1000033A8(&qword_1001D4880);
  __chkstk_darwin(v58);
  v17 = v44 - v16;
  v18 = *(v2 + 32);
  v61 = *(v2 + 24);
  v62 = v18;
  sub_1000033A8(&qword_1001D4888);
  State.wrappedValue.getter();
  v19 = v60;
  v20 = sub_1000033A8(&qword_1001D4890);
  (*(*(v20 - 8) + 16))(v13, v52, v20);
  v21 = &v13[*(sub_1000033A8(&qword_1001D4898) + 36)];
  *v21 = 0;
  *(v21 + 1) = v19;
  sub_1000033A8(&qword_1001D48A0);
  sub_1000033A8(&qword_1001D4790);
  State.wrappedValue.getter();
  v22 = *(v2 + 96);
  v61 = *(v2 + 88);
  v62 = v22;
  State.wrappedValue.getter();
  v23 = &v13[*(v11 + 36)];
  *v23 = v60;
  v23[8] = 0;
  v59 = v2;
  sub_1000033A8(&qword_1001D48A8);
  sub_100025748();
  sub_100025800();
  View.ifCondition<A>(_:transform:)();
  sub_10001370C(v13, &qword_1001D4870);
  sub_10002588C(v2, v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v25 = swift_allocObject();
  sub_1000258F4(v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v26 = &v15[*(sub_1000033A8(&qword_1001D48C8) + 36)];
  *v26 = sub_100025958;
  *(v26 + 1) = v25;
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  sub_10002588C(v2, v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = swift_allocObject();
  sub_1000258F4(v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v24);
  v28 = &v15[*(v54 + 36)];
  *v28 = 0;
  *(v28 + 1) = 0;
  *(v28 + 2) = sub_100026288;
  *(v28 + 3) = v27;
  LOBYTE(v61) = *v2;
  v29 = v61;
  sub_10002588C(v2, v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = swift_allocObject();
  sub_1000258F4(v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v24);
  sub_1000259D0();
  View.onChange<A>(of:initial:_:)();

  sub_10001370C(v15, &qword_1001D4878);
  v31 = *(v2 + 64);
  v61 = *(v2 + 56);
  v62 = v31;
  sub_1000033A8(&qword_1001D48E0);
  State.wrappedValue.getter();
  v32 = *(v58 + 36);
  v54 = v17;
  *&v17[v32] = v60;
  if (v29 == 1)
  {
    static CoordinateSpaceProtocol<>.local.getter();
    v33 = v46;
    DragGesture.init<A>(minimumDistance:coordinateSpace:)();
    sub_10002588C(v2, v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = swift_allocObject();
    sub_1000258F4(v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v24);
    sub_100025FF0(&qword_1001D4908, &type metadata accessor for DragGesture);
    sub_100025FF0(&qword_1001D4910, &type metadata accessor for DragGesture.Value);
    v35 = v48;
    v36 = v49;
    Gesture<>.onChanged(_:)();

    (*(v47 + 8))(v33, v35);
    sub_10002588C(v2, v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v37 = swift_allocObject();
    sub_1000258F4(v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v24);
    sub_100013608(&qword_1001D4918, &qword_1001D4860);
    v38 = v55;
    v39 = v51;
    Gesture.onEnded(_:)();

    (*(v50 + 8))(v36, v39);
    v40 = 0;
  }

  else
  {
    v40 = 1;
    v38 = v55;
  }

  v41 = sub_1000033A8(&qword_1001D48E8);
  (*(*(v41 - 8) + 56))(v38, v40, 1, v41);
  static GestureMask.all.getter();
  sub_100025B50();
  sub_100025C2C();
  v42 = v54;
  View.gesture<A>(_:including:)();
  sub_10001370C(v38, &qword_1001D4868);
  return sub_10001370C(v42, &qword_1001D4880);
}

uint64_t sub_1000245B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000033A8(&qword_1001D48E0);
  State.wrappedValue.getter();
  static UnitPoint.center.getter();
  v5 = v4;
  v7 = v6;
  sub_100026080(a1, a2);
  result = sub_1000033A8(&qword_1001D48A8);
  v9 = (a2 + *(result + 36));
  *v9 = v10;
  v9[1] = v10;
  v9[2] = v5;
  v9[3] = v7;
  return result;
}

uint64_t sub_100024664()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  v8 = *(v0 + 32);
  v16 = *(v0 + 24);
  v17 = v8;
  v15 = 0;
  sub_1000033A8(&qword_1001D4888);
  State.wrappedValue.setter();
  v9 = *(v0 + 64);
  v16 = *(v0 + 56);
  v17 = v9;
  v15 = 0x3FF0000000000000;
  sub_1000033A8(&qword_1001D48E0);
  State.wrappedValue.setter();
  v10 = *(v0 + 80);
  v16 = *(v0 + 72);
  v17 = v10;
  v15 = 0x3FF0000000000000;
  State.wrappedValue.setter();
  v11 = *(v0 + 96);
  v16 = *(v0 + 88);
  v17 = v11;
  v15 = 0;
  State.wrappedValue.setter();
  v12 = *(v0 + 48);
  LOBYTE(v16) = *(v0 + 40);
  v17 = v12;
  LOBYTE(v15) = 0;
  sub_1000033A8(&qword_1001D3E88);
  result = State.wrappedValue.setter();
  if (*(v0 + 1) == 1)
  {
    UUID.init()();
    type metadata accessor for SwipeToDismissModifier();
    (*(v2 + 16))(v5, v7, v1);
    sub_1000033A8(&qword_1001D4790);
    State.wrappedValue.setter();
    return (*(v2 + 8))(v7, v1);
  }

  return result;
}

_BYTE *sub_1000248AC(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    __chkstk_darwin(result);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_10002494C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  LOBYTE(v23) = v7;
  v24 = v8;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  if (LOBYTE(v22))
  {
    static Log.ui.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Ignoring card swipe change because the card is animating away", v11, 2u);
    }

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    DragGesture.Value.translation.getter();
    v14 = v13 * 0.9;
    v15 = *(a2 + 24);
    v16 = *(a2 + 32);
    v22 = v13 * 0.9;
    v23 = v15;
    v24 = v16;
    sub_1000033A8(&qword_1001D4888);
    State.wrappedValue.setter();
    result = DragGesture.Value.translation.getter();
    v17 = fabs(v14);
    if (v18 <= 0.0)
    {
      if (v17 <= 60.0)
      {
        return result;
      }

      LOBYTE(v23) = v7;
      v24 = v8;
      LOBYTE(v22) = 1;
      State.wrappedValue.setter();
      v20 = static Animation.spring(response:dampingFraction:blendDuration:)();
      __chkstk_darwin(v20);
      *(&v21 - 16) = 0;
      *(&v21 - 1) = a2;
    }

    else
    {
      if (v17 <= 85.0)
      {
        return result;
      }

      LOBYTE(v23) = v7;
      v24 = v8;
      LOBYTE(v22) = 1;
      State.wrappedValue.setter();
      v19 = static Animation.spring(response:dampingFraction:blendDuration:)();
      __chkstk_darwin(v19);
      *(&v21 - 16) = 1;
      *(&v21 - 1) = a2;
    }

    withAnimation<A>(_:_:)();
  }
}

uint64_t sub_100024CE8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a2 + 1) != 1 || (v7 = *(a2 + 48), v13[8] = *(a2 + 40), v14 = v7, sub_1000033A8(&qword_1001D3E88), result = State.wrappedValue.getter(), (v13[7] & 1) == 0))
  {
    static Log.ui.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Not restoring card position after swipe because card is animating away", v11, 2u);
    }

    (*(v4 + 8))(v6, v3);
    v12 = static Animation.spring(response:dampingFraction:blendDuration:)();
    __chkstk_darwin(v12);
    *&v13[-16] = a2;
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_100024EF4(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SwipeToDismissModifier();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchTime();
  v11 = *(v43 - 8);
  v12 = __chkstk_darwin(v43);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v32 - v16;
  __chkstk_darwin(v15);
  v36 = &v32 - v18;
  v19 = *(a2 + 32);
  aBlock = *(a2 + 24);
  v45 = v19;
  v50 = 0;
  sub_1000033A8(&qword_1001D4888);
  State.wrappedValue.setter();
  if (*(a2 + 1) == 1)
  {
    v20 = static Animation.spring(response:dampingFraction:blendDuration:)();
    __chkstk_darwin(v20);
    *(&v32 - 2) = a2;
    withAnimation<A>(_:_:)();
  }

  (*(a2 + 8))(a1 & 1);
  sub_100014FBC();
  v33 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v21 = *(v11 + 8);
  v22 = v43;
  v21(v14, v43);
  v34 = v21;
  v23 = v36;
  + infix(_:_:)();
  v21(v17, v22);
  sub_10002588C(a2, &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v25 = swift_allocObject();
  sub_1000258F4(v10, v25 + v24);
  v48 = sub_100025F4C;
  v49 = v25;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_1000B5F04;
  v47 = &unk_1001C02E0;
  v26 = _Block_copy(&aBlock);
  v27 = v37;
  static DispatchQoS.unspecified.getter();
  v50 = &_swiftEmptyArrayStorage;
  sub_100025FF0(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  v28 = v40;
  v29 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = v33;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);

  (*(v41 + 8))(v28, v29);
  (*(v38 + 8))(v27, v39);
  v34(v23, v43);
}

uint64_t sub_1000254B4()
{
  sub_1000033A8(&qword_1001D48E0);
  State.wrappedValue.setter();
  State.wrappedValue.setter();
  sub_1000033A8(&qword_1001D4888);
  return State.wrappedValue.setter();
}

uint64_t sub_100025594(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  v9 = *(a1 + 48);
  v11[16] = *(a1 + 40);
  v12 = v9;
  v11[15] = 0;
  sub_1000033A8(&qword_1001D3E88);
  result = State.wrappedValue.setter();
  if (*(a1 + 1) == 1)
  {
    UUID.init()();
    type metadata accessor for SwipeToDismissModifier();
    (*(v3 + 16))(v6, v8, v2);
    sub_1000033A8(&qword_1001D4790);
    State.wrappedValue.setter();
    return (*(v3 + 8))(v8, v2);
  }

  return result;
}

unint64_t sub_100025748()
{
  result = qword_1001D48B0;
  if (!qword_1001D48B0)
  {
    sub_10001276C(&qword_1001D4870);
    sub_100013608(&qword_1001D48B8, &qword_1001D48A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D48B0);
  }

  return result;
}

unint64_t sub_100025800()
{
  result = qword_1001D48C0;
  if (!qword_1001D48C0)
  {
    sub_10001276C(&qword_1001D48A8);
    sub_100025748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D48C0);
  }

  return result;
}

uint64_t sub_10002588C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwipeToDismissModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000258F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwipeToDismissModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000259D0()
{
  result = qword_1001D48D0;
  if (!qword_1001D48D0)
  {
    sub_10001276C(&qword_1001D4878);
    sub_100025A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D48D0);
  }

  return result;
}

unint64_t sub_100025A5C()
{
  result = qword_1001D48D8;
  if (!qword_1001D48D8)
  {
    sub_10001276C(&qword_1001D48C8);
    sub_10001276C(&qword_1001D4870);
    sub_10001276C(&qword_1001D48A8);
    sub_100025748();
    sub_100025800();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D48D8);
  }

  return result;
}

unint64_t sub_100025B50()
{
  result = qword_1001D48F0;
  if (!qword_1001D48F0)
  {
    sub_10001276C(&qword_1001D4880);
    sub_10001276C(&qword_1001D4878);
    sub_1000259D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D48F0);
  }

  return result;
}

unint64_t sub_100025C2C()
{
  result = qword_1001D48F8;
  if (!qword_1001D48F8)
  {
    sub_10001276C(&qword_1001D4868);
    sub_100013608(&qword_1001D4900, &qword_1001D48E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D48F8);
  }

  return result;
}

uint64_t sub_100025D0C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SwipeToDismissModifier() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_100025E18()
{
  v1 = (type metadata accessor for SwipeToDismissModifier() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[14];
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1000033A8(&qword_1001D4790);

  return swift_deallocObject();
}

uint64_t sub_100025F64(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SwipeToDismissModifier() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100025FD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100025FF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100026080(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D4870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SwipeToDismissDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10002619C()
{
  sub_10001276C(&qword_1001D4880);
  sub_10001276C(&qword_1001D4868);
  sub_100025B50();
  sub_100025C2C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100026230()
{
  result = qword_1001D4920;
  if (!qword_1001D4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4920);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LoggingConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for LoggingConfiguration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100026424(void *a1)
{
  v3 = sub_1000033A8(&qword_1001D4980);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100006AAC(a1, a1[3]);
  sub_100027918();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1000265A4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1000265E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000016 && 0x800000010016B930 == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010016B950 == a2)
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

uint64_t sub_1000266D0(uint64_t a1)
{
  v2 = sub_100027918();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002670C(uint64_t a1)
{
  v2 = sub_100027918();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100026748@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1001D31C0 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_1001EB600;
  a1[1] = 0;
  return result;
}

uint64_t sub_1000267B0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100027738(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

unint64_t sub_100026844()
{
  result = qword_1001D4928;
  if (!qword_1001D4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4928);
  }

  return result;
}

unint64_t sub_10002689C()
{
  result = qword_1001D4930;
  if (!qword_1001D4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4930);
  }

  return result;
}

unint64_t sub_1000268F4()
{
  result = qword_1001D4938;
  if (!qword_1001D4938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4938);
  }

  return result;
}

uint64_t sub_100026948()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_1000276D4(v6, qword_1001EB508);
  sub_10002769C(v6, qword_1001EB508);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100026B3C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = type metadata accessor for ConfigToggle();
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = __chkstk_darwin(v3);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v41 - v7;
  v44 = sub_1000033A8(&qword_1001D4948);
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v10 = &v41 - v9;
  v11 = sub_1000033A8(&qword_1001D4950);
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = __chkstk_darwin(v11);
  v46 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v52 = &v41 - v14;
  v62 = *v1;
  v63 = *(v1 + 16);
  v55 = *v1;
  LOWORD(v56) = *(v1 + 16);
  sub_1000033A8(&qword_1001D4958);
  Binding.projectedValue.getter();
  v15 = v58;
  v16 = v59;
  v17 = v60;
  swift_getKeyPath();
  v55 = v15;
  LOBYTE(v56) = v16;
  BYTE1(v56) = v17;
  Binding.subscript.getter();

  v61 = *(v2 + 19);
  ConfigToggle.init(_:isOn:initialValue:onChange:)();
  v55 = v62;
  LOWORD(v56) = v63;
  Binding.wrappedValue.getter();
  v18 = swift_allocObject();
  v19 = *(v2 + 16);
  *(v18 + 16) = *v2;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(v2 + 32);
  sub_100027664(v2, &v55);
  v20 = sub_100021E58();
  v21 = v10;
  v22 = v53;
  v51 = v8;
  View.onChange<A>(of:initial:_:)();

  v42 = *(v54 + 8);
  v43 = v54 + 8;
  v42(v8, v22);
  v58 = *(v2 + 24);
  sub_1000033A8(&qword_1001D3E88);
  State.projectedValue.getter();
  *&v55 = v22;
  *(&v55 + 1) = &type metadata for Bool;
  v56 = v20;
  v57 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v23 = v52;
  v24 = v44;
  View.alert(isPresented:content:)();

  (*(v45 + 8))(v21, v24);
  v55 = v62;
  LOWORD(v56) = v63;
  Binding.projectedValue.getter();
  v25 = v58;
  v26 = v59;
  v27 = v60;
  swift_getKeyPath();
  v55 = v25;
  LOBYTE(v56) = v26;
  BYTE1(v56) = v27;
  Binding.subscript.getter();

  v28 = v51;
  ConfigToggle.init(_:isOn:initialValue:onChange:)();
  v30 = v47;
  v29 = v48;
  v31 = *(v47 + 16);
  v32 = v46;
  v31(v46, v23, v48);
  v33 = v53;
  v34 = *(v54 + 16);
  v35 = v49;
  v34(v49, v28, v53);
  v36 = v50;
  v31(v50, v32, v29);
  v37 = sub_1000033A8(&qword_1001D4960);
  v34(&v36[*(v37 + 48)], v35, v33);
  v38 = v42;
  v42(v51, v33);
  v39 = *(v30 + 8);
  v39(v52, v29);
  v38(v35, v33);
  return (v39)(v32, v29);
}

uint64_t sub_1000271A8(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    sub_1000033A8(&qword_1001D3E88);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10002720C@<X0>(uint64_t a1@<X8>)
{
  v19[3] = a1;
  v1 = sub_1000033A8(&qword_1001D4968);
  __chkstk_darwin(v1 - 8);
  v3 = v19 - v2;
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v19[1] = v9;
  v19[2] = v8;
  v19[0] = v10;
  if (qword_1001D3148 != -1)
  {
    swift_once();
  }

  v11 = sub_10002769C(v4, qword_1001EB508);
  (*(v5 + 16))(v7, v11, v4);
  Text.init(_:)();
  LocalizedStringKey.init(stringLiteral:)();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  static Alert.Button.default(_:action:)();
  sub_100020D44(v12, v14, v16 & 1);

  v17 = type metadata accessor for Alert.Button();
  (*(*(v17 - 8) + 56))(v3, 0, 1, v17);
  return Alert.init(title:message:dismissButton:)();
}

uint64_t sub_1000274CC@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *a2;
  v9 = a2[1];
  result = State.init(wrappedValue:)();
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 17) = v7;
  *(a3 + 18) = v8;
  *(a3 + 19) = v9;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
  return result;
}

unint64_t sub_1000275C0()
{
  result = qword_1001D4940;
  if (!qword_1001D4940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4940);
  }

  return result;
}

uint64_t sub_100027614()
{

  return swift_deallocObject();
}

uint64_t sub_10002769C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000276D4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100027738(void *a1)
{
  v3 = sub_1000033A8(&qword_1001D4970);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  if (qword_1001D31C0 != -1)
  {
    swift_once();
  }

  sub_100006AAC(a1, a1[3]);
  sub_100027918();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100006B44(a1);
  }

  v11[15] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[14] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100006B44(a1);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 0xFFFFFFFE | v7 & 1;
}

unint64_t sub_100027918()
{
  result = qword_1001D4978;
  if (!qword_1001D4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4978);
  }

  return result;
}

__n128 sub_10002797C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100027990(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000279D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100027A34()
{
  result = qword_1001D4988;
  if (!qword_1001D4988)
  {
    sub_10001276C(&qword_1001D4990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4988);
  }

  return result;
}

unint64_t sub_100027A9C()
{
  result = qword_1001D4998;
  if (!qword_1001D4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4998);
  }

  return result;
}

unint64_t sub_100027AF4()
{
  result = qword_1001D49A0;
  if (!qword_1001D49A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D49A0);
  }

  return result;
}

unint64_t sub_100027B4C()
{
  result = qword_1001D49A8;
  if (!qword_1001D49A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D49A8);
  }

  return result;
}

uint64_t sub_100027BA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100027BC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_100027C08()
{
  v0 = type metadata accessor for Material.Layer.Glass();
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ColorScheme();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Material.Context.environment.getter();
  EnvironmentValues.colorScheme.getter();
  (*(v11 + 8))(v13, v10);
  (*(v4 + 104))(v7, enum case for ColorScheme.dark(_:), v3);
  static ColorScheme.== infix(_:_:)();
  v14 = *(v4 + 8);
  v14(v7, v3);
  v14(v9, v3);
  Material.Layer.Glass.init()();
  Material.Layer.Glass.thickness.setter();
  Material.Layer.Glass.lightAngle.setter();
  Material.Layer.Glass.strength.setter();
  sub_1000033A8(&qword_1001D49C0);
  type metadata accessor for Material.Layer.Filter();
  *(swift_allocObject() + 16) = xmmword_100171D90;
  static Material.Layer.Filter.brightness(amount:)();
  __asm { FMOV            V0.4S, #0.25 }

  static Material.Layer.Filter.luminanceCurve(_:amount:)();
  static Material.Layer.Filter.saturation(amount:)();
  static Material.Layer.Filter.gaussianBlur(radius:isOpaque:isDithered:)();
  Material.Layer.Glass.filters.setter();
  sub_1000033A8(&qword_1001D49C8);
  type metadata accessor for Material.Layer();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100171DA0;
  static Material.Layer.glass(_:)();
  (*(v22 + 8))(v2, v23);
  return v20;
}

void sub_100028044()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
}

Swift::Int sub_100028124()
{
  Hasher.init(_seed:)();
  sub_100028044();
  return Hasher._finalize()();
}

Swift::Int sub_1000281B4()
{
  Hasher.init(_seed:)();
  sub_100028044();
  return Hasher._finalize()();
}

unint64_t sub_100028248()
{
  result = qword_1001D49B0;
  if (!qword_1001D49B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D49B0);
  }

  return result;
}

unint64_t sub_1000282A0()
{
  result = qword_1001D49B8;
  if (!qword_1001D49B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D49B8);
  }

  return result;
}

id sub_1000282F4(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 areaMinMaxRedFilter];
    v7 = v5;
    [v6 setInputImage:v7];
    [v7 extent];
    [v6 setExtent:?];
    v8 = [v6 outputImage];
    if (!v8)
    {

      goto LABEL_6;
    }

    v9 = v8;
    v10 = swift_slowAlloc();
    [a2 render:v9 toBitmap:v10 rowBytes:16 bounds:kCIFormatRGBAf format:0 colorSpace:{0.0, 0.0, 1.0, 1.0}];
    v11 = *v10;
    v12 = v10[1];

    v13 = v12 - v11;
    if (v13 < 0.0039216)
    {

LABEL_6:
      return 0;
    }

    v14 = [v4 colorMatrixFilter];
    [v14 setInputImage:v7];

    v15 = 1.0 / v13;
    v16 = [objc_allocWithZone(CIVector) initWithX:v15 Y:0.0 Z:0.0 W:0.0];
    [v14 setRVector:v16];

    v17 = [objc_allocWithZone(CIVector) initWithX:v15 Y:0.0 Z:0.0 W:0.0];
    [v14 setGVector:v17];

    v18 = [objc_allocWithZone(CIVector) initWithX:v15 Y:0.0 Z:0.0 W:0.0];
    [v14 setBVector:v18];

    v19 = [objc_allocWithZone(CIVector) initWithX:-(v11 / v13) Y:-(v11 / v13) Z:-(v11 / v13) W:0.0];
    [v14 setBiasVector:v19];

    v20 = [v14 outputImage];
    return v20;
  }

  return result;
}

uint64_t sub_1000285D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ScanwaveImageConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (*(a1 + 16) && v10 != 1)
  {
    if (v8 > 1)
    {
      if (v8 ^ 2 | v9)
      {
        if (qword_1001D3168 != -1)
        {
          swift_once();
        }

        v11 = qword_1001EB538;
      }

      else
      {
        if (qword_1001D3160 != -1)
        {
          swift_once();
        }

        v11 = qword_1001EB530;
      }
    }

    else if (v8 | v9)
    {
      if (qword_1001D3158 != -1)
      {
        swift_once();
      }

      v11 = qword_1001EB528;
    }

    else
    {
      if (qword_1001D3150 != -1)
      {
        swift_once();
      }

      v11 = qword_1001EB520;
    }
  }

  else
  {
    v11 = *a1;
  }

  v12 = v11;
  v13 = sub_100029F54(v8, v9, v10);
  ScanwaveImageConfiguration.init(image:depthImage:)();
  (*(v5 + 16))(a2, v7, v4);
  v36 = *(a1 + 72);
  sub_1000033A8(&qword_1001D3E88);
  State.projectedValue.getter();
  v30 = *(&v34 + 1);
  v31 = v34;
  v14 = v35;
  v34 = *(a1 + 24);
  v35 = *(a1 + 40);
  sub_1000033A8(&qword_1001D4A78);
  Binding.projectedValue.getter();
  v32 = v7;
  v33 = v4;
  v15 = v36;
  v16 = v37;
  v34 = *(a1 + 48);
  v35 = *(a1 + 64);
  sub_1000033A8(&qword_1001D3E78);
  Binding.projectedValue.getter();
  v17 = v36;
  v18 = v5;
  v19 = v37;
  v20 = type metadata accessor for ScanwaveViewControllerWrapper();
  v21 = a2 + v20[5];
  v22 = v30;
  *v21 = v31;
  *(v21 + 8) = v22;
  *(v21 + 16) = v14;
  v23 = a2 + v20[6];
  *v23 = v15;
  *(v23 + 16) = v16;
  v24 = a2 + v20[7];
  *v24 = v17;
  *(v24 + 16) = v19;
  static LoggingSignposter.ui.getter();
  v25 = swift_allocObject();
  v26 = *(a1 + 48);
  *(v25 + 48) = *(a1 + 32);
  *(v25 + 64) = v26;
  *(v25 + 80) = *(a1 + 64);
  *(v25 + 96) = *(a1 + 80);
  v27 = *(a1 + 16);
  *(v25 + 16) = *a1;
  *(v25 + 32) = v27;
  v28 = (a2 + *(sub_1000033A8(&qword_1001D4A80) + 36));
  type metadata accessor for _TaskModifier();
  sub_10002A38C(a1, &v34);
  static TaskPriority.userInitiated.getter();
  result = (*(v18 + 8))(v32, v33);
  *v28 = &unk_1001720C0;
  v28[1] = v25;
  return result;
}

uint64_t sub_1000289A4(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for ContinuousClock();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_100028A98, v4, v3);
}

uint64_t sub_100028A98()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100028B64;

  return sub_1000A9BE0(10000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100028B64()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_100028DE4;
  }

  else
  {
    v8 = sub_100028CFC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100028CFC()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v1 = *(v0 + 56);
    v2 = *(v1 + 40);
    *(v0 + 16) = *(v1 + 24);
    *(v0 + 32) = v2;
    sub_1000033A8(&qword_1001D4A78);
    Binding.wrappedValue.getter();
    if (*(v0 + 33) == 2)
    {
      *(v0 + 40) = *(*(v0 + 56) + 72);
      *(v0 + 34) = 1;
      sub_1000033A8(&qword_1001D3E88);
      State.wrappedValue.setter();
    }
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100028DE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100028E58@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v8[4] = *(v1 + 64);
  v9 = *(v1 + 80);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  *a1 = static Alignment.center.getter();
  a1[1] = v5;
  v6 = sub_1000033A8(&qword_1001D4A70);
  return sub_1000285D8(v8, a1 + *(v6 + 44));
}

uint64_t sub_100028ECC(uint64_t a1)
{
  v3 = type metadata accessor for ScanwaveViewControllerWrapper();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  sub_1000033A8(&qword_1001D4B50);
  UIViewControllerRepresentableContext.coordinator.getter();
  v10 = v23[0];
  if (*(v23[0] + 16))
  {
  }

  v11 = v1 + *(v3 + 20);
  v12 = *v11;
  v13 = *(v11 + 8);
  LOBYTE(v11) = *(v11 + 16);
  v23[0] = v12;
  v23[1] = v13;
  v24 = v11;
  sub_1000033A8(&qword_1001D3E78);
  Binding.wrappedValue.getter();
  if (LOBYTE(v22[0]) != 1)
  {
  }

  v20 = a1;
  static LoggingSignposter.scanwavePlayback.getter();
  v21 = v4;
  default argument 1 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  default argument 2 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  *(v10 + 16) = 1;
  dispatch thunk of ScanwaveViewController.activate()();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_10002A7FC(v1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002A860(v23, v22);
  type metadata accessor for MainActor();
  v15 = static MainActor.shared.getter();
  v16 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v17 = (v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = &protocol witness table for MainActor;
  sub_10002AA40(v6, v18 + v16);
  sub_10002AAA4(v22, v18 + v17);
  sub_1000154EC(0, 0, v9, &unk_1001721B8, v18);

  return sub_100006B44(v23);
}

uint64_t sub_1000291B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[19] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[20] = v8;
  v5[21] = v7;

  return _swift_task_switch(sub_1000292AC, v8, v7);
}

uint64_t sub_1000292AC()
{
  v1 = static Duration.milliseconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_10002938C;

  return sub_1000A9BE0(v1, v3, 0, 0, 1);
}

uint64_t sub_10002938C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[18];
  v5 = v2[17];
  v6 = v2[16];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[20];
    v8 = v3[21];
    v9 = sub_10002AC20;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[20];
    v8 = v3[21];
    v9 = sub_100029520;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100029520()
{
  v1 = *(v0 + 112);

  v2 = type metadata accessor for ScanwaveViewControllerWrapper();
  v3 = (v1 + v2[6]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  *(v0 + 16) = *v3;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  sub_1000033A8(&qword_1001D4A78);
  Binding.wrappedValue.getter();
  if (*(v0 + 33) == 2)
  {
    *(v0 + 36) = 3;
    *(v0 + 88) = v4;
    *(v0 + 96) = v5;
    *(v0 + 104) = v6;
    Binding.wrappedValue.setter();
  }

  v7 = *(v0 + 112);
  sub_100006AAC(*(v0 + 120), *(*(v0 + 120) + 24));
  dispatch thunk of LoggingSignposter.Interval.end()();
  v8 = (v7 + v2[5]);
  v9 = *v8;
  v10 = v8[1];
  LOBYTE(v8) = *(v8 + 16);
  *(v0 + 40) = v9;
  *(v0 + 48) = v10;
  *(v0 + 56) = v8;
  *(v0 + 34) = 0;
  sub_1000033A8(&qword_1001D3E78);
  Binding.wrappedValue.setter();
  v11 = (v7 + v2[7]);
  v12 = *v11;
  v13 = v11[1];
  LOBYTE(v11) = *(v11 + 16);
  *(v0 + 64) = v12;
  *(v0 + 72) = v13;
  *(v0 + 80) = v11;
  *(v0 + 35) = 1;
  Binding.wrappedValue.setter();

  v14 = *(v0 + 8);

  return v14();
}

id sub_1000296C8()
{
  v1 = sub_1000033A8(&qword_1001D4B58);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  type metadata accessor for ScanwaveViewController();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = type metadata accessor for ScanwaveImageConfiguration();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v3, v0, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  dispatch thunk of ScanwaveViewController.imageConfiguration.setter();
  return v4;
}

uint64_t sub_1000297F4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ScanwaveViewControllerWrapper.Coordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_100029868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002ABD8(&qword_1001D4B60);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000298E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002ABD8(&qword_1001D4B60);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100029968()
{
  sub_10002ABD8(&qword_1001D4B60);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

void sub_1000299AC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    qword_1001EB520 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_100029A2C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    qword_1001EB528 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_100029AA4()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    qword_1001EB530 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_100029B1C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    qword_1001EB538 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_100029B94()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    qword_1001EB540 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_100029C0C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    qword_1001EB548 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_100029C84()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    qword_1001EB550 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_100029CFC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    qword_1001EB558 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100029DA8(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_100029DC4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100029DD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100029E20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100029E64(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100029E8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100029ED4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_100029F54(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      if (a1 > 1)
      {
        if (a1 ^ 2 | a2)
        {
          if (qword_1001D3168 != -1)
          {
            swift_once();
          }

          return qword_1001EB538;
        }

        else
        {
          if (qword_1001D3160 != -1)
          {
            swift_once();
          }

          return qword_1001EB530;
        }
      }

      else if (a1 | a2)
      {
        if (qword_1001D3178 != -1)
        {
          swift_once();
        }

        return qword_1001EB548;
      }

      else
      {
        if (qword_1001D3170 != -1)
        {
          swift_once();
        }

        return qword_1001EB540;
      }
    }

    return a2;
  }

  [a1 size];
  v5 = v4;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [a1 size];
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = v5 / v6;
  if (v7 <= 1.0)
  {
    if (v7 >= 0.642857143)
    {
LABEL_16:
      if (qword_1001D3180 == -1)
      {
        return qword_1001EB550;
      }

LABEL_39:
      swift_once();
      return qword_1001EB550;
    }
  }

  else if (v7 <= 1.55555556)
  {
    goto LABEL_16;
  }

  if (qword_1001D3188 != -1)
  {
    swift_once();
  }

  return qword_1001EB558;
}

uint64_t type metadata accessor for ScanwaveViewControllerWrapper()
{
  result = qword_1001D4AE0;
  if (!qword_1001D4AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002A248()
{
  sub_10002A2AC(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

void sub_10002A2AC(void *a1, void *a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t sub_10002A2F8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100019340;

  return sub_1000289A4(v0 + 16);
}

uint64_t sub_10002A3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ScanwaveImageConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for LoggingSignposter();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10002A514(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ScanwaveImageConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for LoggingSignposter();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10002A63C()
{
  type metadata accessor for ScanwaveImageConfiguration();
  if (v0 <= 0x3F)
  {
    sub_10002A714(319, &qword_1001D4AF0);
    if (v1 <= 0x3F)
    {
      sub_10002A714(319, &unk_1001D4AF8);
      if (v2 <= 0x3F)
      {
        type metadata accessor for LoggingSignposter();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10002A714(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Binding();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_10002A764()
{
  result = qword_1001D4B38;
  if (!qword_1001D4B38)
  {
    sub_10001276C(&qword_1001D4B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4B38);
  }

  return result;
}

uint64_t sub_10002A7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScanwaveViewControllerWrapper();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A860(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002A8C4()
{
  v1 = (type metadata accessor for ScanwaveViewControllerWrapper() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v4 = v0 + v2;
  v5 = type metadata accessor for ScanwaveImageConfiguration();
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = v1[10];
  v7 = type metadata accessor for LoggingSignposter();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  sub_100006B44(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_10002AA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScanwaveViewControllerWrapper();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002AAA4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10002AABC(uint64_t a1)
{
  v4 = *(type metadata accessor for ScanwaveViewControllerWrapper() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100019774;

  return sub_1000291B8(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_10002ABD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScanwaveViewControllerWrapper();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002AC24@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

BOOL sub_10002AC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UUID.== infix(_:_:)() & 1) != 0 && ((v6 = *(a3 + 20), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), v10 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002AD0C()
{
  type metadata accessor for DebugToaster(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC6Tamale12DebugToaster__currentToast;
  v2 = type metadata accessor for Toast(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  result = ObservationRegistrar.init()();
  qword_1001EB560 = v0;
  return result;
}

uint64_t sub_10002ADA0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10002E3E4(&qword_1001D4DB8, type metadata accessor for DebugToaster);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC6Tamale12DebugToaster__currentToast;
  swift_beginAccess();
  return sub_1000138BC(v5 + v3, a1, &qword_1001D4D58);
}

uint64_t sub_10002AE78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002E3E4(&qword_1001D4DB8, type metadata accessor for DebugToaster);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC6Tamale12DebugToaster__currentToast;
  swift_beginAccess();
  return sub_1000138BC(v3 + v4, a2, &qword_1001D4D58);
}

uint64_t sub_10002AF50(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D4D58);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000138BC(a1, &v6 - v3, &qword_1001D4D58);
  return sub_10002AFFC(v4);
}

uint64_t sub_10002AFFC(uint64_t a1)
{
  v3 = sub_1000033A8(&qword_1001D4D58);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC6Tamale12DebugToaster__currentToast;
  swift_beginAccess();
  sub_1000138BC(v1 + v6, v5, &qword_1001D4D58);
  v7 = sub_10002DFEC(v5, a1);
  sub_10001370C(v5, &qword_1001D4D58);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_10002E3E4(&qword_1001D4DB8, type metadata accessor for DebugToaster);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_10002E8D0(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_10001370C(a1, &qword_1001D4D58);
}

uint64_t sub_10002B1E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC6Tamale12DebugToaster__currentToast;
  swift_beginAccess();
  sub_10002E8D0(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_10002B254()
{
  sub_10001370C(v0 + OBJC_IVAR____TtC6Tamale12DebugToaster__currentToast, &qword_1001D4D58);
  v1 = OBJC_IVAR____TtC6Tamale12DebugToaster___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_10002B338()
{
  sub_10002BA88(319, &unk_1001D4BB0, type metadata accessor for Toast, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10002B468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002B53C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10002B5F8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10002B690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000033A8(&qword_1001D4CD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000033A8(&qword_1001D4CD8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10002B7E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000033A8(&qword_1001D4CD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000033A8(&qword_1001D4CD8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10002B93C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002B974()
{
  sub_10002BA88(319, &qword_1001D4D48, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DebugToaster(319);
    if (v1 <= 0x3F)
    {
      sub_10002BAEC(319, &qword_1001D4D50, &qword_1001D4D58);
      if (v2 <= 0x3F)
      {
        sub_10002BAEC(319, &qword_1001D4D60, &unk_1001D4D68);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10002BA88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10002BAEC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10001276C(a3);
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10002BB5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1000033A8(&qword_1001D4F10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100170800;
  v5 = *(v1 + 4);
  v21 = v5;
  v20 = *v1;
  v18[0] = *v1;
  sub_1000033A8(&qword_1001D4F18);
  result = State.wrappedValue.getter();
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = *(v5 + 16);
  if (v19 >= v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v5 + 32;
  *(v4 + 32) = *(v8 + 16 * v19);
  v18[0] = v20;

  result = State.wrappedValue.getter();
  if (v19 < v7)
  {
    *(v4 + 40) = *(v8 + 16 * v19 + 8);

    Gradient.init(colors:)();
    v19 = v1[1];
    sub_1000033A8(&qword_1001D4888);
    State.wrappedValue.getter();
    cos(*&__x);
    State.wrappedValue.getter();
    sin(*&__x);
    State.wrappedValue.getter();
    cos(*&__x);
    v18[0] = v19;
    State.wrappedValue.getter();
    sin(*&__x);
    LinearGradient.init(gradient:startPoint:endPoint:)();
    v9 = static Animation.easeInOut(duration:)();
    State.wrappedValue.getter();
    v10 = v19;
    static Animation.linear(duration:)();
    v11 = Animation.repeatForever(autoreverses:)();

    __x = v19;
    State.wrappedValue.getter();
    v12 = swift_allocObject();
    v13 = v2[1];
    *(v12 + 16) = *v2;
    *(v12 + 32) = v13;
    *(v12 + 48) = *(v2 + 4);
    sub_1000138BC(&v20, &__x, &qword_1001D4F18);
    sub_1000138BC(&v19, &__x, &qword_1001D4888);
    sub_1000138BC(&v21, &__x, &qword_1001D4F20);
    v14 = static SafeAreaRegions.all.getter();
    result = static Edge.Set.all.getter();
    *a1 = v10;
    v15 = *(v18 + 8);
    *(a1 + 24) = *(&v18[1] + 8);
    *(a1 + 8) = v15;
    *(a1 + 40) = v9;
    *(a1 + 48) = v16;
    *(a1 + 56) = v11;
    *(a1 + 64) = v16;
    *(a1 + 72) = sub_10002EF4C;
    *(a1 + 80) = v12;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = v14;
    *(a1 + 112) = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10002BEA4(__int128 *a1)
{
  v2 = objc_opt_self();
  v3 = a1[1];
  v17 = *a1;
  v16 = v3;
  v15 = *(a1 + 4);
  v4 = swift_allocObject();
  v5 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 4);
  v13 = sub_10002EF9C;
  v14 = v4;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v11 = sub_10002C13C;
  v12 = &unk_1001C08A0;
  v6 = _Block_copy(&aBlock);
  sub_1000138BC(&v17, v9, &qword_1001D4F18);
  sub_1000138BC(&v16, v9, &qword_1001D4888);
  sub_1000138BC(&v15, v9, &qword_1001D4F20);

  v7 = [v2 scheduledTimerWithTimeInterval:1 repeats:v6 block:4.0];
  _Block_release(v6);

  aBlock = v16;
  v9[0] = 0x401921FB54442D18;
  sub_1000033A8(&qword_1001D4888);
  return State.wrappedValue.setter();
}

uint64_t sub_10002C05C(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v7 = v6;
  v8 = *(&v6 + 1);
  sub_1000138BC(&v8, &v5, &qword_1001D4F28);
  sub_1000033A8(&qword_1001D4F18);
  result = State.wrappedValue.getter();
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *(*(a2 + 4) + 16);
    if (v4)
    {
      v6 = v7;
      v5 = (v5 + 1) % v4;
      State.wrappedValue.setter();
      return sub_10001370C(&v7, &qword_1001D4F18);
    }
  }

  __break(1u);
  return result;
}

void sub_10002C13C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10002C1A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v3 = type metadata accessor for ToastView(0);
  v4 = v3 - 8;
  v18 = *(v3 - 8);
  v5 = *(v18 + 64);
  __chkstk_darwin(v3);
  v19 = sub_1000033A8(&qword_1001D4D58);
  __chkstk_darwin(v19);
  v7 = &v18 - v6;
  v8 = sub_1000033A8(&qword_1001D4DA8);
  __chkstk_darwin(v8);
  v10 = (&v18 - v9);
  *v10 = static Alignment.center.getter();
  v10[1] = v11;
  v12 = sub_1000033A8(&qword_1001D4DB0);
  sub_10002C4C4(v2, v10 + *(v12 + 44));
  *(v10 + *(v8 + 36)) = 0;
  v13 = *(v2 + *(v4 + 28));
  swift_getKeyPath();
  v21 = v13;
  sub_10002E3E4(&qword_1001D4DB8, type metadata accessor for DebugToaster);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC6Tamale12DebugToaster__currentToast;
  swift_beginAccess();
  sub_1000138BC(v13 + v14, v7, &qword_1001D4D58);
  sub_10002EA20(v2, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToastView);
  v15 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v16 = swift_allocObject();
  sub_10002E9B8(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ToastView);
  sub_10002E4B0();
  sub_10002E568();
  View.onChange<A>(of:initial:_:)();

  sub_10001370C(v7, &qword_1001D4D58);
  return sub_10001370C(v10, &qword_1001D4DA8);
}

uint64_t sub_10002C4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a1;
  v102 = a2;
  v94 = type metadata accessor for BlurReplaceTransition.Configuration();
  v92 = *(v94 - 8);
  v2 = __chkstk_darwin(v94);
  v87 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v86 = &v82 - v4;
  v99 = type metadata accessor for BlurReplaceTransition();
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v93 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for OpacityTransition();
  v91 = *(v96 - 8);
  __chkstk_darwin(v96);
  v88 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1000033A8(&qword_1001D4E00);
  v95 = *(v98 - 8);
  v7 = __chkstk_darwin(v98);
  v89 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v90 = &v82 - v9;
  v10 = type metadata accessor for ColorScheme();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v82 - v15;
  v84 = sub_1000033A8(&qword_1001D4E08);
  __chkstk_darwin(v84);
  v18 = &v82 - v17;
  v101 = sub_1000033A8(&qword_1001D4E10);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v85 = &v82 - v19;
  v20 = sub_1000033A8(&qword_1001D4D58);
  __chkstk_darwin(v20 - 8);
  v22 = &v82 - v21;
  v23 = type metadata accessor for Toast(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToastView(0);
  sub_1000033A8(&qword_1001D4CD8);
  State.wrappedValue.getter();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_10001370C(v22, &qword_1001D4D58);
    return (*(v100 + 56))(v102, 1, 1, v101);
  }

  else
  {
    v83 = type metadata accessor for Toast;
    sub_10002E9B8(v22, v26, type metadata accessor for Toast);
    *v18 = static HorizontalAlignment.leading.getter();
    *(v18 + 1) = 0x4010000000000000;
    v18[16] = 0;
    v28 = sub_1000033A8(&qword_1001D4E18);
    sub_10002D120(v26, &v18[*(v28 + 44)]);
    v29 = static Edge.Set.all.getter();
    v30 = &v18[*(sub_1000033A8(&qword_1001D4E20) + 36)];
    *v30 = v29;
    *(v30 + 8) = xmmword_1001721D0;
    *(v30 + 24) = xmmword_1001721D0;
    v30[40] = 0;
    v31 = static Alignment.center.getter();
    v33 = v32;
    sub_100054010(v16);
    (*(v11 + 104))(v14, enum case for ColorScheme.light(_:), v10);
    v34 = static ColorScheme.== infix(_:_:)();
    v35 = *(v11 + 8);
    v35(v14, v10);
    v35(v16, v10);
    if (v34)
    {
      v36 = 0.8;
    }

    else
    {
      v36 = 0.3;
    }

    v37 = &v18[*(sub_1000033A8(&qword_1001D4E28) + 36)];
    *v37 = &off_1001BEB78;
    *(v37 + 1) = 0x403C000000000000;
    *(v37 + 2) = v36;
    *(v37 + 3) = 0x3FE3333333333333;
    *(v37 + 4) = v31;
    *(v37 + 5) = v33;
    v38 = &v18[*(sub_1000033A8(&qword_1001D4E30) + 36)];
    static Material.thin.getter();
    v39 = static Edge.Set.all.getter();
    v38[*(sub_1000033A8(&qword_1001D3CA0) + 36)] = v39;
    sub_10002E2E4(v110);
    v40 = v110[0];
    v41 = v110[1];
    v42 = v110[2];
    v43 = v110[3];
    v44 = v110[4];
    v45 = static Alignment.center.getter();
    v47 = v46;
    *&v105 = v40;
    *(&v105 + 1) = v41;
    *&v106 = v42;
    *(&v106 + 1) = v43;
    *&v107 = v44;
    *(&v107 + 1) = 0x3FE6666666666666;
    *&v108 = v45;
    *(&v108 + 1) = v46;
    v48 = &v18[*(sub_1000033A8(&qword_1001D4E38) + 36)];
    v49 = v106;
    *v48 = v105;
    *(v48 + 1) = v49;
    v50 = v108;
    *(v48 + 2) = v107;
    *(v48 + 3) = v50;
    v109[0] = v40;
    v109[1] = v41;
    v109[2] = v42;
    v109[3] = v43;
    v109[4] = v44;
    v109[5] = 0x3FE6666666666666;
    v109[6] = v45;
    v109[7] = v47;
    sub_1000138BC(&v105, v104, &qword_1001D4E40);
    sub_10001370C(v109, &qword_1001D4E40);
    v51 = &v18[*(sub_1000033A8(&qword_1001D4E48) + 36)];
    v52 = *(type metadata accessor for RoundedRectangle() + 20);
    v53 = enum case for RoundedCornerStyle.continuous(_:);
    v54 = type metadata accessor for RoundedCornerStyle();
    (*(*(v54 - 8) + 104))(&v51[v52], v53, v54);
    __asm { FMOV            V0.2D, #28.0 }

    *v51 = _Q0;
    *&v51[*(sub_1000033A8(&qword_1001D4E50) + 36)] = 256;
    static Color.black.getter();
    v60 = Color.opacity(_:)();

    v61 = &v18[*(sub_1000033A8(&qword_1001D4E58) + 36)];
    *v61 = v60;
    *(v61 + 8) = xmmword_1001721E0;
    *(v61 + 3) = 0x4010000000000000;
    LOBYTE(v53) = static Edge.Set.all.getter();
    v62 = &v18[*(sub_1000033A8(&qword_1001D4E60) + 36)];
    *v62 = v53;
    *(v62 + 8) = 0u;
    *(v62 + 24) = 0u;
    v62[40] = 1;
    v63 = static Animation.easeInOut(duration:)();
    v64 = &v18[*(v84 + 36)];
    v65 = sub_1000033A8(&qword_1001D4E68);
    sub_10002EA20(v26, v64 + *(v65 + 36), v83);
    *v64 = v63;
    v66 = v88;
    OpacityTransition.init()();
    v67 = v86;
    static BlurReplaceTransition.Configuration.downUp.getter();
    v68 = v92;
    v69 = v94;
    (*(v92 + 16))(v87, v67, v94);
    v70 = v93;
    BlurReplaceTransition.init(configuration:)();
    (*(v68 + 8))(v67, v69);
    v71 = sub_10002E3E4(&qword_1001D4E70, &type metadata accessor for OpacityTransition);
    v72 = sub_10002E3E4(&qword_1001D4E78, &type metadata accessor for BlurReplaceTransition);
    v73 = v90;
    v74 = v96;
    v75 = v99;
    Transition.combined<A>(with:)();
    (*(v97 + 8))(v70, v75);
    (*(v91 + 8))(v66, v74);
    v76 = v95;
    v77 = v98;
    (*(v95 + 16))(v89, v73, v98);
    v104[0] = v74;
    v104[1] = v75;
    v104[2] = v71;
    v104[3] = v72;
    swift_getOpaqueTypeConformance2();
    v78 = AnyTransition.init<A>(_:)();
    (*(v76 + 8))(v73, v77);
    v79 = v85;
    sub_1000138BC(v18, v85, &qword_1001D4E08);
    v80 = v101;
    *(v79 + *(v101 + 36)) = v78;
    sub_10001370C(v18, &qword_1001D4E08);
    v81 = v102;
    sub_10002EA88(v79, v102);
    (*(v100 + 56))(v81, 0, 1, v80);
    return sub_10002E95C(v26);
  }
}

uint64_t sub_10002D120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v68 = a2;
  v66 = sub_1000033A8(&qword_1001D4E80) - 8;
  v2 = __chkstk_darwin(v66);
  v67 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v64 = &v57 - v4;
  v5 = sub_1000033A8(&qword_1001D4E88);
  __chkstk_darwin(v5 - 8);
  v7 = &v57 - v6;
  v8 = sub_1000033A8(&qword_1001D4E90);
  __chkstk_darwin(v8);
  v10 = &v57 - v9;
  v11 = sub_1000033A8(&qword_1001D4E98);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v65 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v57 - v15;
  v17 = &v10[*(v8 + 36)];
  v18 = *(sub_1000033A8(&qword_1001D4EA0) + 28);
  v19 = enum case for Text.Case.uppercase(_:);
  v20 = type metadata accessor for Text.Case();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v17 + v18, v19, v20);
  (*(v21 + 56))(v17 + v18, 0, 1, v20);
  *v17 = swift_getKeyPath();
  *v10 = xmmword_1001721F0;
  v10[16] = 0;
  *(v10 + 3) = &_swiftEmptyArrayStorage;
  v22 = enum case for Font.Design.rounded(_:);
  v61 = enum case for Font.Design.rounded(_:);
  v23 = type metadata accessor for Font.Design();
  v24 = *(v23 - 8);
  v60 = *(v24 + 104);
  v60(v7, v22, v23);
  v59 = *(v24 + 56);
  v59(v7, 0, 1, v23);
  sub_10002EB20();
  View.fontDesign(_:)();
  sub_10001370C(v7, &qword_1001D4E88);
  sub_10001370C(v10, &qword_1001D4E90);
  v62 = objc_opt_self();
  v25 = [v62 secondaryLabelColor];
  v26 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v28 = &v16[*(sub_1000033A8(&qword_1001D4EB8) + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  static Font.caption.getter();
  static Font.Weight.semibold.getter();
  v29 = Font.weight(_:)();

  v30 = swift_getKeyPath();
  v31 = *(sub_1000033A8(&qword_1001D4EC0) + 36);
  v58 = v16;
  v32 = &v16[v31];
  *v32 = v30;
  v32[1] = v29;
  v33 = swift_getKeyPath();
  v34 = &v16[*(v12 + 44)];
  *v34 = v33;
  *(v34 + 1) = 1;
  v34[16] = 0;
  v35 = (v63 + *(type metadata accessor for Toast(0) + 20));
  v36 = v35[1];
  v69 = *v35;
  v70 = v36;
  sub_10002EC9C();

  v37 = Text.init<A>(_:)();
  v39 = v38;
  LOBYTE(v36) = v40;
  v42 = v41;
  v43 = swift_getKeyPath();
  v69 = v37;
  v70 = v39;
  v71 = v36 & 1;
  v72 = v42;
  v73 = v43;
  v74 = 0;
  v60(v7, v61, v23);
  v59(v7, 0, 1, v23);
  sub_1000033A8(&qword_1001D4ED0);
  sub_10002ED44();
  v44 = v64;
  View.fontDesign(_:)();
  sub_10001370C(v7, &qword_1001D4E88);
  sub_100020D44(v37, v39, v36 & 1);

  v45 = [v62 labelColor];
  v46 = Color.init(uiColor:)();
  v47 = swift_getKeyPath();
  v48 = (v44 + *(sub_1000033A8(&qword_1001D4EF0) + 36));
  *v48 = v47;
  v48[1] = v46;
  v49 = swift_getKeyPath();
  v50 = v44 + *(sub_1000033A8(&qword_1001D4EF8) + 36);
  *v50 = v49;
  *(v50 + 8) = 5;
  *(v50 + 16) = 0;
  v51 = v65;
  *(v44 + *(v66 + 44)) = 256;
  v52 = v58;
  sub_1000138BC(v58, v51, &qword_1001D4E98);
  v53 = v67;
  sub_1000138BC(v44, v67, &qword_1001D4E80);
  v54 = v68;
  sub_1000138BC(v51, v68, &qword_1001D4E98);
  v55 = sub_1000033A8(&qword_1001D4F00);
  sub_1000138BC(v53, v54 + *(v55 + 48), &qword_1001D4E80);
  sub_10001370C(v44, &qword_1001D4E80);
  sub_10001370C(v52, &qword_1001D4E98);
  sub_10001370C(v53, &qword_1001D4E80);
  return sub_10001370C(v51, &qword_1001D4E98);
}

uint64_t sub_10002D800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ToastView(0);
  v6 = v5 - 8;
  v24 = *(v5 - 8);
  v7 = *(v24 + 64);
  __chkstk_darwin(v5);
  v8 = sub_1000033A8(&qword_1001D4D58);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v25 = a3;
  v26 = a2;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  v11 = (a3 + *(v6 + 36));
  v12 = *v11;
  v13 = v11[1];
  aBlock = *v11;
  v28 = v13;
  sub_1000033A8(&qword_1001D4DF0);
  State.wrappedValue.getter();
  v14 = v33;
  [v33 invalidate];

  sub_1000033A8(&qword_1001D4CD8);
  State.wrappedValue.getter();
  v15 = type metadata accessor for Toast(0);
  v16 = 1.0;
  if (!(*(*(v15 - 8) + 48))(v10, 1, v15))
  {
    v16 = *&v10[*(v15 + 24)];
  }

  v17 = objc_opt_self();
  sub_10001370C(v10, &qword_1001D4D58);
  sub_10002EA20(a3, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToastView);
  v18 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v19 = swift_allocObject();
  sub_10002E9B8(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for ToastView);
  v31 = sub_10002E82C;
  v32 = v19;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_10002C13C;
  v30 = &unk_1001C07A0;
  v20 = _Block_copy(&aBlock);

  v21 = [v17 scheduledTimerWithTimeInterval:0 repeats:v20 block:v16];
  _Block_release(v20);
  aBlock = v12;
  v28 = v13;
  v33 = v21;
  return State.wrappedValue.setter();
}

uint64_t sub_10002DB4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000033A8(&qword_1001D4D58);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - v4;
  type metadata accessor for ToastView(0);
  sub_1000138BC(a2, v5, &qword_1001D4D58);
  sub_1000033A8(&qword_1001D4CD8);
  return State.wrappedValue.setter();
}

uint64_t sub_10002DC2C()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10002DC98()
{
  v0 = sub_1000033A8(&qword_1001D4D58);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = v8 - v4;
  v6 = type metadata accessor for Toast(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for ToastView(0);
  sub_1000138BC(v5, v3, &qword_1001D4D58);
  sub_1000033A8(&qword_1001D4CD8);
  State.wrappedValue.setter();
  return sub_10001370C(v5, &qword_1001D4D58);
}

uint64_t sub_10002DE34@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002DE88@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002DEE0(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D4F08);
  __chkstk_darwin(v2 - 8);
  sub_1000138BC(a1, &v5 - v3, &qword_1001D4F08);
  return EnvironmentValues.textCase.setter();
}

uint64_t sub_10002DF88@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10002DFEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Toast(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000033A8(&qword_1001D4D58);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_1000033A8(&qword_1001D4DF8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = *(v12 + 56);
  sub_1000138BC(a1, &v24 - v13, &qword_1001D4D58);
  sub_1000138BC(a2, &v14[v15], &qword_1001D4D58);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_10001370C(v14, &qword_1001D4D58);
      return 0;
    }

    goto LABEL_6;
  }

  sub_1000138BC(v14, v10, &qword_1001D4D58);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_10002E95C(v10);
LABEL_6:
    sub_10001370C(v14, &qword_1001D4DF8);
    return 1;
  }

  sub_10002E9B8(&v14[v15], v7, type metadata accessor for Toast);
  v23 = (static UUID.== infix(_:_:)() & 1) == 0 || ((v18 = *(v4 + 20), v19 = *&v10[v18], v20 = *&v10[v18 + 8], v21 = &v7[v18], v19 == *v21) ? (v22 = v20 == *(v21 + 1)) : (v22 = 0), !v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0) || *&v10[*(v4 + 24)] != *&v7[*(v4 + 24)];
  sub_10002E95C(v7);
  sub_10002E95C(v10);
  sub_10001370C(v14, &qword_1001D4D58);
  return v23;
}

uint64_t sub_10002E2E4@<X0>(void *a1@<X8>)
{
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  sub_1000033A8(&qword_1001D4DA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100171D90;
  *(v2 + 32) = static Color.red.getter();
  *(v2 + 40) = static Color.indigo.getter();
  *(v2 + 48) = static Color.purple.getter();
  *(v2 + 56) = static Color.orange.getter();
  *(v2 + 64) = static Color.red.getter();
  *(v2 + 72) = static Color.purple.getter();
  *(v2 + 80) = static Color.purple.getter();
  result = static Color.red.getter();
  *(v2 + 88) = result;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v2;
  return result;
}

uint64_t sub_10002E3E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002E430(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ToastView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10002D800(a1, a2, v6);
}

unint64_t sub_10002E4B0()
{
  result = qword_1001D4DC8;
  if (!qword_1001D4DC8)
  {
    sub_10001276C(&qword_1001D4DA8);
    sub_100013608(&qword_1001D4DD0, &qword_1001D4DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4DC8);
  }

  return result;
}

unint64_t sub_10002E568()
{
  result = qword_1001D4DE0;
  if (!qword_1001D4DE0)
  {
    sub_10001276C(&qword_1001D4D58);
    sub_10002E3E4(&qword_1001D4DE8, type metadata accessor for Toast);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4DE0);
  }

  return result;
}

uint64_t sub_10002E638()
{
  v1 = type metadata accessor for ToastView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_1000033A8(&qword_1001D4DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 24);
  v6 = type metadata accessor for Toast(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  sub_1000033A8(&qword_1001D4CD8);

  return swift_deallocObject();
}

uint64_t sub_10002E82C()
{
  type metadata accessor for ToastView(0);

  return sub_10002DC2C();
}

uint64_t sub_10002E89C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002E8D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D4D58);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E95C(uint64_t a1)
{
  v2 = type metadata accessor for Toast(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002E9B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002EA20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002EA88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D4E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002EB20()
{
  result = qword_1001D4EA8;
  if (!qword_1001D4EA8)
  {
    sub_10001276C(&qword_1001D4E90);
    sub_100013608(&qword_1001D4EB0, &qword_1001D4EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4EA8);
  }

  return result;
}

uint64_t sub_10002EBD8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002EC38@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10002EC9C()
{
  result = qword_1001D4EC8;
  if (!qword_1001D4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4EC8);
  }

  return result;
}

uint64_t sub_10002ECF0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10002ED44()
{
  result = qword_1001D4ED8;
  if (!qword_1001D4ED8)
  {
    sub_10001276C(&qword_1001D4ED0);
    sub_100013608(&qword_1001D4EE0, &qword_1001D4EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4ED8);
  }

  return result;
}

uint64_t sub_10002EDFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002EE44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002EE9C()
{
  sub_10001276C(&qword_1001D4DA8);
  sub_10001276C(&qword_1001D4D58);
  sub_10002E4B0();
  sub_10002E568();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002EF54()
{

  return swift_deallocObject();
}

unint64_t sub_10002EFA8()
{
  result = qword_1001D4F30;
  if (!qword_1001D4F30)
  {
    sub_10001276C(&qword_1001D4F38);
    sub_10002F034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4F30);
  }

  return result;
}

unint64_t sub_10002F034()
{
  result = qword_1001D4F40;
  if (!qword_1001D4F40)
  {
    sub_10001276C(&qword_1001D4F48);
    sub_10002F0C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4F40);
  }

  return result;
}

unint64_t sub_10002F0C0()
{
  result = qword_1001D4F50;
  if (!qword_1001D4F50)
  {
    sub_10001276C(&qword_1001D4F58);
    sub_10002F178();
    sub_100013608(&qword_1001D4F80, &qword_1001D4F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4F50);
  }

  return result;
}

unint64_t sub_10002F178()
{
  result = qword_1001D4F60;
  if (!qword_1001D4F60)
  {
    sub_10001276C(&qword_1001D4F68);
    sub_100013DE8();
    sub_100013608(&qword_1001D4F70, &qword_1001D4F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4F60);
  }

  return result;
}

uint64_t sub_10002F25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000033A8(&qword_1001D4F90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_1000033A8(&qword_1001D4F98);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10002F3A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000033A8(&qword_1001D4F90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  else
  {
    v11 = sub_1000033A8(&qword_1001D4F98);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for MissingIntelligenceView()
{
  result = qword_1001D4FF8;
  if (!qword_1001D4FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002F530()
{
  sub_10002F690(319, &qword_1001D5008, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10002F62C();
    if (v1 <= 0x3F)
    {
      sub_10002F690(319, &unk_1001D5020, &type metadata accessor for GenerativeModelsAvailability.Availability, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10002F62C()
{
  if (!qword_1001D5010)
  {
    sub_10001276C(&qword_1001D5018);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1001D5010);
    }
  }
}

void sub_10002F690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10002F710@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = type metadata accessor for ScrollBounceBehavior();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000033A8(&qword_1001D5058);
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = &v36 - v5;
  v46 = sub_1000033A8(&qword_1001D5060);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v40 = &v36 - v7;
  v39 = sub_1000033A8(&qword_1001D5068);
  __chkstk_darwin(v39);
  v9 = &v36 - v8;
  v43 = sub_1000033A8(&qword_1001D5070);
  __chkstk_darwin(v43);
  v11 = &v36 - v10;
  v42 = sub_1000033A8(&qword_1001D5078);
  __chkstk_darwin(v42);
  v37 = &v36 - v12;
  v38 = sub_1000033A8(&qword_1001D5080);
  __chkstk_darwin(v38);
  v14 = &v36 - v13;
  v50 = v1;
  static Axis.Set.vertical.getter();
  sub_1000033A8(&qword_1001D5088);
  sub_100013608(&qword_1001D5090, &qword_1001D5088);
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollBounceBehavior.basedOnSize.getter();
  v15 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v15)
  {
    Axis.Set.init(rawValue:)();
  }

  sub_100013608(&qword_1001D5098, &qword_1001D5058);
  v16 = v40;
  v17 = v44;
  View.scrollBounceBehavior(_:axes:)();
  (*(v47 + 8))(v4, v48);
  (*(v41 + 8))(v6, v17);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v45 + 32))(v9, v16, v46);
  v18 = &v9[*(v39 + 36)];
  v19 = v56;
  *(v18 + 4) = v55;
  *(v18 + 5) = v19;
  *(v18 + 6) = v57;
  v20 = v52;
  *v18 = v51;
  *(v18 + 1) = v20;
  v21 = v54;
  *(v18 + 2) = v53;
  *(v18 + 3) = v21;
  v22 = static Color.black.getter();
  v23 = static Edge.Set.all.getter();
  sub_10002091C(v9, v11, &qword_1001D5068);
  v24 = &v11[*(v43 + 36)];
  *v24 = v22;
  v24[8] = v23;
  v25 = static SafeAreaRegions.all.getter();
  v26 = static Edge.Set.all.getter();
  v27 = v37;
  sub_10002091C(v11, v37, &qword_1001D5070);
  v28 = v27 + *(v42 + 36);
  *v28 = v25;
  *(v28 + 8) = v26;
  v29 = &v14[*(v38 + 36)];
  v30 = *(sub_1000033A8(&qword_1001D45B8) + 28);
  v31 = enum case for ColorScheme.dark(_:);
  v32 = type metadata accessor for ColorScheme();
  (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
  *v29 = swift_getKeyPath();
  sub_10002091C(v27, v14, &qword_1001D5078);
  v33 = v49;
  sub_10002091C(v14, v49, &qword_1001D5080);
  result = sub_1000033A8(&qword_1001D50A0);
  v35 = (v33 + *(result + 36));
  *v35 = sub_1000302F8;
  v35[1] = 0;
  v35[2] = 0;
  v35[3] = 0;
  return result;
}

uint64_t sub_10002FDD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MissingIntelligenceView();
  v48 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v49 = v5;
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000033A8(&qword_1001D50A8);
  v6 = __chkstk_darwin(v47);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v46 = sub_1000033A8(&qword_1001D50B0);
  v45 = *(v46 - 8);
  v10 = __chkstk_darwin(v46);
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  *a2 = static Alignment.center.getter();
  a2[1] = v14;
  *&v53 = 0;
  BYTE8(v53) = 1;
  sub_1000033A8(&qword_1001D50B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100170800;
  v16 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v16;
  v17 = static Axis.Set.vertical.getter();
  *(inited + 33) = v17;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v16)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v17)
  {
    Axis.Set.init(rawValue:)();
  }

  v18 = a2 + *(sub_1000033A8(&qword_1001D50C0) + 44);
  static Alignment.center.getter();
  v44 = v13;
  View.containerRelativeFrame(_:alignment:)();
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v19 = sub_1000033A8(&qword_1001D50C8);
  sub_1000303D8(a1, &v9[*(v19 + 44)]);
  v20 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = &v9[*(sub_1000033A8(&qword_1001D50D0) + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  static Edge.Set.vertical.getter();
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  sub_1000033A8(&qword_1001D50D8);
  SafeAreaPaddingModifier.init(edges:insets:)();
  v30 = a1;
  v31 = v51;
  sub_100035750(v30, v51);
  v32 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v33 = swift_allocObject();
  sub_1000357C4(v31, v33 + v32);
  v34 = &v9[*(v47 + 36)];
  *v34 = sub_100035828;
  v34[1] = v33;
  v34[2] = 0;
  v34[3] = 0;
  v35 = v45;
  v36 = *(v45 + 16);
  v37 = v50;
  v38 = v13;
  v39 = v46;
  v36(v50, v38, v46);
  v40 = v52;
  sub_1000138BC(v9, v52, &qword_1001D50A8);
  v36(v18, v37, v39);
  v41 = sub_1000033A8(&qword_1001D50E8);
  sub_1000138BC(v40, &v18[*(v41 + 48)], &qword_1001D50A8);
  sub_10001370C(v9, &qword_1001D50A8);
  v42 = *(v35 + 8);
  v42(v44, v39);
  sub_10001370C(v40, &qword_1001D50A8);
  return (v42)(v37, v39);
}

uint64_t sub_1000302F8()
{
  v0 = type metadata accessor for AccessibilityNotification.ScreenChanged();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v5, 0, sizeof(v5));
  AccessibilityNotification.ScreenChanged.init(_:)();
  _AccessibilityNotifications.post()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000303D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a1;
  v111 = a2;
  v2 = type metadata accessor for MissingIntelligenceView();
  v100 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v101 = v3;
  v102 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1000033A8(&qword_1001D50F8);
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v103 = &v83 - v4;
  v105 = sub_1000033A8(&qword_1001D5100);
  __chkstk_darwin(v105);
  v104 = &v83 - v5;
  v6 = sub_1000033A8(&qword_1001D5108);
  v7 = __chkstk_darwin(v6 - 8);
  v110 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v108 = &v83 - v9;
  v10 = sub_1000033A8(&qword_1001D5110);
  v11 = __chkstk_darwin(v10 - 8);
  v109 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v116 = (&v83 - v13);
  v97 = sub_1000033A8(&qword_1001D5118);
  __chkstk_darwin(v97);
  v98 = &v83 - v14;
  v90 = type metadata accessor for SymbolEffectOptions.RepeatBehavior();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v85 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for SymbolEffectOptions();
  v87 = *(v94 - 8);
  v16 = __chkstk_darwin(v94);
  v84 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v91 = &v83 - v18;
  v92 = type metadata accessor for PulseSymbolEffect();
  v89 = *(v92 - 8);
  __chkstk_darwin(v92);
  v86 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1000033A8(&qword_1001D5120);
  __chkstk_darwin(v112);
  v93 = &v83 - v20;
  v21 = sub_1000033A8(&qword_1001D5128);
  v22 = __chkstk_darwin(v21 - 8);
  v99 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v115 = &v83 - v24;
  v25 = type metadata accessor for DynamicTypeSize();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1000033A8(&qword_1001D5130);
  v96 = *(v95 - 8);
  __chkstk_darwin(v95);
  v30 = &v83 - v29;
  v113 = sub_1000033A8(&qword_1001D5138);
  __chkstk_darwin(v113);
  v117 = &v83 - v31;
  sub_100031518();
  v32 = Image.init(_internalSystemName:)();
  v33 = static Font.largeTitle.getter();
  KeyPath = swift_getKeyPath();
  v130 = v32;
  v131 = KeyPath;
  v132 = v33;
  (*(v26 + 104))(v28, enum case for DynamicTypeSize.large(_:), v25);
  v35 = sub_1000033A8(&qword_1001D46B8);
  v36 = sub_100022DB8();
  View.dynamicTypeSize(_:)();
  (*(v26 + 8))(v28, v25);

  static Font.Weight.medium.getter();
  v130 = v35;
  v131 = v36;
  v37 = v117;
  swift_getOpaqueTypeConformance2();
  v38 = v95;
  View.fontWeight(_:)();
  (*(v96 + 8))(v30, v38);
  v39 = (v37 + *(sub_1000033A8(&qword_1001D5140) + 36));
  v40 = *(sub_1000033A8(&qword_1001D5148) + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v41 = type metadata accessor for SymbolRenderingMode();
  (*(*(v41 - 8) + 56))(v39 + v40, 0, 1, v41);
  *v39 = swift_getKeyPath();
  *(v37 + *(v113 + 36)) = static HierarchicalShapeStyle.primary.getter();
  v43 = sub_100031518();
  v44 = v42;
  if (v43 == 0xD00000000000001ALL && 0x800000010016BAF0 == v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v43 == 0xD000000000000012 && 0x800000010016BB10 == v44)
  {
  }

  else
  {
    v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v82 & 1) == 0)
    {
      sub_1000138BC(v37, v98, &qword_1001D5138);
      swift_storeEnumTagMultiPayload();
      sub_100035850();
      sub_10003590C();
      v56 = v115;
      _ConditionalContent<>.init(storage:)();
      goto LABEL_8;
    }
  }

  v45 = v86;
  PulseSymbolEffect.init()();
  v46 = v84;
  static SymbolEffectOptions.speed(_:)();
  v47 = v85;
  static SymbolEffectOptions.RepeatBehavior.periodic.getter();
  v48 = v91;
  SymbolEffectOptions.repeat(_:)();
  (*(v88 + 8))(v47, v90);
  v49 = v87;
  v50 = *(v87 + 8);
  v51 = v94;
  v50(v46, v94);
  v52 = v93;
  v53 = &v93[*(v112 + 36)];
  v54 = type metadata accessor for _IndefiniteSymbolEffectModifier();
  (*(v49 + 16))(&v53[*(v54 + 20)], v48, v51);
  sub_1000360D4(&qword_1001D51D0, &type metadata accessor for PulseSymbolEffect);
  v55 = v92;
  dispatch thunk of SymbolEffect.configuration.getter();
  v50(v48, v51);
  (*(v89 + 8))(v45, v55);
  v53[*(v54 + 24)] = 1;
  sub_1000138BC(v117, v52, &qword_1001D5138);
  sub_1000138BC(v52, v98, &qword_1001D5120);
  swift_storeEnumTagMultiPayload();
  sub_100035850();
  sub_10003590C();
  v56 = v115;
  _ConditionalContent<>.init(storage:)();
  sub_10001370C(v52, &qword_1001D5120);
LABEL_8:
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v113 = v124;
  v112 = v126;
  v98 = v128;
  v97 = v129;
  v120 = 1;
  v119 = v125;
  v118 = v127;
  v57 = static HorizontalAlignment.center.getter();
  v58 = v116;
  *v116 = v57;
  v58[1] = 0x4018000000000000;
  *(v58 + 16) = 0;
  v59 = sub_1000033A8(&qword_1001D5188);
  v60 = v114;
  sub_100032398(v114, v58 + *(v59 + 44));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v96 = v130;
  v95 = v132;
  v94 = v134;
  v93 = v135;
  v123 = 1;
  v122 = v131;
  v121 = v133;
  v61 = v102;
  sub_100035750(v60, v102);
  v62 = (*(v100 + 80) + 16) & ~*(v100 + 80);
  v63 = swift_allocObject();
  sub_1000357C4(v61, v63 + v62);
  sub_1000033A8(&qword_1001D5190);
  sub_100035D10();
  v64 = v103;
  Button.init(action:label:)();
  sub_100013608(&qword_1001D51B0, &qword_1001D50F8);
  sub_100035DC8();
  v65 = v104;
  v66 = v107;
  View.buttonStyle<A>(_:)();
  (*(v106 + 8))(v64, v66);
  *(v65 + *(v105 + 36)) = static HierarchicalShapeStyle.primary.getter();
  sub_100035E1C();
  v67 = v108;
  View.accessibilityIdentifier(_:)();
  sub_10001370C(v65, &qword_1001D5100);
  v68 = v99;
  sub_1000138BC(v56, v99, &qword_1001D5128);
  v69 = v120;
  v70 = v119;
  v71 = v118;
  v72 = v58;
  v73 = v109;
  sub_1000138BC(v72, v109, &qword_1001D5110);
  LODWORD(v106) = v123;
  LODWORD(v107) = v122;
  LODWORD(v114) = v121;
  v74 = v110;
  sub_1000138BC(v67, v110, &qword_1001D5108);
  v75 = v111;
  sub_1000138BC(v68, v111, &qword_1001D5128);
  v76 = sub_1000033A8(&qword_1001D51C8);
  v77 = v75 + v76[12];
  *v77 = 0;
  *(v77 + 8) = v69;
  *(v77 + 16) = v113;
  *(v77 + 24) = v70;
  *(v77 + 32) = v112;
  *(v77 + 40) = v71;
  v78 = v97;
  *(v77 + 48) = v98;
  *(v77 + 56) = v78;
  sub_1000138BC(v73, v75 + v76[16], &qword_1001D5110);
  v79 = v75 + v76[20];
  *v79 = 0;
  *(v79 + 8) = v106;
  *(v79 + 16) = v96;
  *(v79 + 24) = v107;
  *(v79 + 32) = v95;
  *(v79 + 40) = v114;
  v80 = v93;
  *(v79 + 48) = v94;
  *(v79 + 56) = v80;
  sub_1000138BC(v74, v75 + v76[24], &qword_1001D5108);
  sub_10001370C(v67, &qword_1001D5108);
  sub_10001370C(v116, &qword_1001D5110);
  sub_10001370C(v115, &qword_1001D5128);
  sub_10001370C(v117, &qword_1001D5138);
  sub_10001370C(v74, &qword_1001D5108);
  sub_10001370C(v73, &qword_1001D5110);
  return sub_10001370C(v68, &qword_1001D5128);
}

uint64_t sub_100031518()
{
  v0 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v55 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v54 = &v53 - v4;
  v5 = sub_1000033A8(&qword_1001D5230);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v57 = &v53 - v9;
  v10 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v61 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v62 = *(v60 - 8);
  v13 = __chkstk_darwin(v60);
  v56 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v58 = &v53 - v15;
  v16 = sub_1000033A8(&qword_1001D5238);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v59 = &v53 - v20;
  v21 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v64 = *(v21 - 8);
  v65 = v21;
  __chkstk_darwin(v21);
  v63 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static GreymatterAvailability.isGreymatterEligible()() & 1) == 0)
  {
    return 0;
  }

  v53 = v1;
  type metadata accessor for MissingIntelligenceView();
  sub_1000033A8(&qword_1001D4F98);
  State.wrappedValue.getter();
  v27 = (*(v24 + 88))(v26, v23);
  if (v27 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    (*(v24 + 96))(v26, v23);
    (*(v64 + 32))(v63, v26, v65);
    v28 = GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
    v29 = v28;
    v30 = *(v28 + 16);
    if (v30)
    {
      v31 = sub_1000355C4(*(v28 + 16), 0, &qword_1001D5240, &unk_100175320, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
      v32 = sub_100037988(&v66, &v31[(*(v62 + 80) + 32) & ~*(v62 + 80)], v30, v29, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);

      sub_100037980();
      if (v32 == v30)
      {

LABEL_13:
        v37 = v62;
        v38 = v59;
        v66 = v31;
        sub_100036124(&v66, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, sub_1000C3720, sub_1000363A0);
        if (*(v66 + 2))
        {
          v39 = v60;
          (*(v37 + 16))(v38, &v66[(*(v37 + 80) + 32) & ~*(v37 + 80)], v60);
          v40 = 0;
        }

        else
        {
          v40 = 1;
          v39 = v60;
        }

        (*(v37 + 56))(v38, v40, 1, v39);
        sub_1000138BC(v38, v19, &qword_1001D5238);
        if ((*(v37 + 48))(v19, 1, v39) == 1)
        {
          sub_10001370C(v38, &qword_1001D5238);
          (*(v64 + 8))(v63, v65);
          sub_10001370C(v19, &qword_1001D5238);
          return 0;
        }

        v41 = v58;
        (*(v37 + 32))(v58, v19, v39);
        v42 = v56;
        (*(v37 + 16))(v56, v41, v39);
        v43 = (*(v37 + 88))(v42, v39);
        if (v43 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.assetIsNotReady(_:) && v43 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.siriAssetIsNotReady(_:))
        {
          if (v43 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.shortOfStorage(_:))
          {
            v51 = *(v37 + 8);
            v51(v58, v39);
            sub_10001370C(v38, &qword_1001D5238);
            (*(v64 + 8))(v63, v65);
            v51(v42, v39);
            return 0;
          }

          (*(v37 + 8))(v58, v39);
          sub_10001370C(v38, &qword_1001D5238);
          (*(v64 + 8))(v63, v65);
          return 0xD000000000000012;
        }

        (*(v37 + 8))(v58, v39);
        sub_10001370C(v38, &qword_1001D5238);
        (*(v64 + 8))(v63, v65);
        return 0xD00000000000001ALL;
      }

      __break(1u);
LABEL_55:
      __break(1u);

      __break(1u);
      return result;
    }

LABEL_12:

    v31 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  if (v27 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
  {
    (*(v24 + 96))(v26, v23);
    (*(v11 + 32))(v61, v26, v10);
    v33 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
    v34 = *(v33 + 16);
    if (v34)
    {
      v63 = v0;
      v64 = v11;
      v65 = v10;
      v35 = sub_1000355C4(v34, 0, &qword_1001D63C0, &unk_100172960, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
      v36 = sub_100037988(&v66, &v35[(*(v53 + 80) + 32) & ~*(v53 + 80)], v34, v33, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);

      sub_100037980();
      if (v36 != v34)
      {
        goto LABEL_55;
      }

      v11 = v64;
      v10 = v65;
      v0 = v63;
    }

    else
    {

      v35 = &_swiftEmptyArrayStorage;
    }

    v45 = v53;
    v66 = v35;
    sub_100036124(&v66, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, sub_1000C370C, sub_1000361E8);
    v46 = v57;
    if (*(v66 + 2))
    {
      (*(v45 + 16))(v57, &v66[(*(v45 + 80) + 32) & ~*(v45 + 80)], v0);
      v47 = 0;
    }

    else
    {
      v47 = 1;
    }

    (*(v45 + 56))(v46, v47, 1, v0);
    sub_1000138BC(v46, v8, &qword_1001D5230);
    if ((*(v45 + 48))(v8, 1, v0) == 1)
    {
      sub_10001370C(v46, &qword_1001D5230);
      (*(v11 + 8))(v61, v10);
      sub_10001370C(v8, &qword_1001D5230);
      return 0;
    }

    v48 = v54;
    (*(v45 + 32))(v54, v8, v0);
    v49 = v55;
    (*(v45 + 16))(v55, v48, v0);
    v50 = (*(v45 + 88))(v49, v0);
    if (v50 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.deviceNotCapable(_:) && v50 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.regionIneligible(_:) && v50 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.localeIneligible(_:) && v50 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.countryLocationIneligible(_:) && v50 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.mdmAndParentalControl(_:))
    {
      if (v50 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.inWaitList(_:) && v50 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.accessNotGranted(_:) && v50 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.unableToFetchAvailability(_:) && v50 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.notOptedIn(_:))
      {
        if (v50 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.assetIsNotReady(_:) || v50 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.siriAssetIsNotReady(_:))
        {
          (*(v45 + 8))(v48, v0);
          sub_10001370C(v46, &qword_1001D5230);
          (*(v11 + 8))(v61, v10);
          return 0xD00000000000001ALL;
        }

        if (v50 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.shortOfStorage(_:))
        {
          (*(v45 + 8))(v48, v0);
          sub_10001370C(v46, &qword_1001D5230);
          (*(v11 + 8))(v61, v10);
          return 0xD000000000000012;
        }

        if (v50 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.useCaseDisabled(_:))
        {
          goto LABEL_47;
        }

        if (v50 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.noCacheForDeviceEligibility(_:) && v50 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.noCacheForBaseUnavailableReasons(_:))
        {
          v52 = *(v45 + 8);
          v52(v48, v0);
          sub_10001370C(v46, &qword_1001D5230);
          (*(v11 + 8))(v61, v10);
          v52(v49, v0);
          return 0;
        }
      }

      (*(v45 + 8))(v48, v0);
      sub_10001370C(v46, &qword_1001D5230);
      (*(v11 + 8))(v61, v10);
      return 0;
    }

LABEL_47:
    (*(v45 + 8))(v48, v0);
    sub_10001370C(v46, &qword_1001D5230);
    (*(v11 + 8))(v61, v10);
    return 0x6E6769736F6ELL;
  }

  if (v27 != enum case for GenerativeModelsAvailability.Availability.available(_:))
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_100032398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45[1] = a1;
  v49 = a2;
  v47 = sub_1000033A8(&qword_1001D51E0) - 8;
  v2 = __chkstk_darwin(v47);
  v48 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = v45 - v4;
  v6 = sub_1000033A8(&qword_1001D51E8);
  __chkstk_darwin(v6);
  v8 = v45 - v7;
  v9 = sub_1000033A8(&qword_1001D51F0);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v46 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v45 - v13;
  v50 = sub_100032880();
  v51 = v15;
  v45[0] = sub_10002EC9C();
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v50 = v16;
  v51 = v17;
  v20 = v19 & 1;
  v52 = v19 & 1;
  v53 = v21;
  View.accessibilityIdentifier(_:)();
  sub_100020D44(v16, v18, v20);

  v22 = static Font.title3.getter();
  KeyPath = swift_getKeyPath();
  v24 = &v8[*(v6 + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  static Font.Weight.medium.getter();
  sub_100035F60();
  View.fontWeight(_:)();
  sub_10001370C(v8, &qword_1001D51E8);
  v25 = swift_getKeyPath();
  v26 = &v14[*(sub_1000033A8(&qword_1001D5210) + 36)];
  *v26 = v25;
  v26[8] = 1;
  *&v14[*(v10 + 44)] = static HierarchicalShapeStyle.primary.getter();
  v50 = sub_1000337BC();
  v51 = v27;
  v28 = Text.init<A>(_:)();
  v30 = v29;
  v50 = v28;
  v51 = v29;
  v32 = v31 & 1;
  v52 = v31 & 1;
  v53 = v33;
  View.accessibilityIdentifier(_:)();
  sub_100020D44(v28, v30, v32);

  v34 = static Font.headline.getter();
  v35 = swift_getKeyPath();
  v36 = &v8[*(v6 + 36)];
  *v36 = v35;
  v36[1] = v34;
  static Font.Weight.regular.getter();
  View.fontWeight(_:)();
  sub_10001370C(v8, &qword_1001D51E8);
  LODWORD(v34) = static HierarchicalShapeStyle.secondary.getter();
  *&v5[*(sub_1000033A8(&qword_1001D5218) + 36)] = v34;
  v37 = swift_getKeyPath();
  v38 = &v5[*(sub_1000033A8(&qword_1001D5220) + 36)];
  *v38 = v37;
  v38[8] = 1;
  v39 = static Color.white.getter();
  v40 = v46;
  *&v5[*(v47 + 44)] = v39;
  sub_1000138BC(v14, v40, &qword_1001D51F0);
  v41 = v48;
  sub_1000138BC(v5, v48, &qword_1001D51E0);
  v42 = v49;
  sub_1000138BC(v40, v49, &qword_1001D51F0);
  v43 = sub_1000033A8(&qword_1001D5228);
  sub_1000138BC(v41, v42 + *(v43 + 48), &qword_1001D51E0);
  sub_10001370C(v5, &qword_1001D51E0);
  sub_10001370C(v14, &qword_1001D51F0);
  sub_10001370C(v41, &qword_1001D51E0);
  return sub_10001370C(v40, &qword_1001D51F0);
}

uint64_t sub_100032880()
{
  v0 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v72 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v66 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v67 = &v61 - v3;
  v4 = sub_1000033A8(&qword_1001D5230);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v70 = &v61 - v8;
  v9 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v76 = *(v9 - 8);
  v77 = v9;
  __chkstk_darwin(v9);
  v75 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v78 = *(v74 - 8);
  v11 = __chkstk_darwin(v74);
  v68 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v69 = &v61 - v13;
  v14 = sub_1000033A8(&qword_1001D5238);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v73 = &v61 - v18;
  v19 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v80 = *(v19 - 8);
  v81 = v19;
  __chkstk_darwin(v19);
  v79 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Locale();
  __chkstk_darwin(v25 - 8);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v28 - 8);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v71 = v30;
  v31 = String.init(localized:table:bundle:locale:comment:)();
  v33 = v32;
  if ((static GreymatterAvailability.isGreymatterEligible()() & 1) == 0)
  {
    return v31;
  }

  v62 = v0;
  type metadata accessor for MissingIntelligenceView();
  sub_1000033A8(&qword_1001D4F98);
  State.wrappedValue.getter();
  v34 = (*(v22 + 88))(v24, v21);
  if (v34 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    v63 = v27;
    v64 = v31;
    v65 = v33;
    (*(v22 + 96))(v24, v21);
    (*(v80 + 32))(v79, v24, v81);
    v35 = GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
    v36 = v35;
    v37 = *(v35 + 16);
    if (!v37)
    {

      v38 = &_swiftEmptyArrayStorage;
      goto LABEL_13;
    }

    v38 = sub_1000355C4(*(v35 + 16), 0, &qword_1001D5240, &unk_100175320, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
    v39 = sub_100037988(&v82, &v38[(*(v78 + 80) + 32) & ~*(v78 + 80)], v37, v36, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);

    sub_100037980();
    if (v39 == v37)
    {

LABEL_13:
      v45 = v73;
      v44 = v74;
      v46 = v78;
      v82 = v38;
      sub_100036124(&v82, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, sub_1000C3720, sub_1000363A0);
      v31 = v64;
      if (*(v82 + 2))
      {
        (*(v46 + 16))(v45, &v82[(*(v46 + 80) + 32) & ~*(v46 + 80)], v44);
        v47 = 0;
      }

      else
      {
        v47 = 1;
      }

      (*(v46 + 56))(v45, v47, 1, v44);
      sub_1000138BC(v45, v17, &qword_1001D5238);
      if ((*(v46 + 48))(v17, 1, v44) == 1)
      {
        sub_10001370C(v45, &qword_1001D5238);
        (*(v80 + 8))(v79, v81);
        sub_10001370C(v17, &qword_1001D5238);
      }

      else
      {
        v48 = v69;
        (*(v46 + 32))(v69, v17, v44);
        v49 = v68;
        (*(v46 + 16))(v68, v48, v44);
        v50 = (*(v46 + 88))(v49, v44);
        if (v50 == enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.assetIsNotReady(_:) || v50 == enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.siriAssetIsNotReady(_:) || v50 == enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.shortOfStorage(_:))
        {

          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v31 = String.init(localized:table:bundle:locale:comment:)();
          (*(v46 + 8))(v48, v44);
          sub_10001370C(v45, &qword_1001D5238);
          (*(v80 + 8))(v79, v81);
        }

        else
        {
          v58 = *(v46 + 8);
          v58(v48, v44);
          sub_10001370C(v45, &qword_1001D5238);
          (*(v80 + 8))(v79, v81);
          v58(v49, v44);
        }
      }

      return v31;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (v34 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
  {
    v65 = v33;
    (*(v22 + 96))(v24, v21);
    (*(v76 + 32))(v75, v24, v77);
    v40 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
    v41 = *(v40 + 16);
    if (v41)
    {
      v63 = v27;
      v64 = v31;
      v42 = sub_1000355C4(v41, 0, &qword_1001D63C0, &unk_100172960, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
      v43 = sub_100037988(&v82, &v42[(*(v72 + 80) + 32) & ~*(v72 + 80)], v41, v40, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);

      sub_100037980();
      if (v43 != v41)
      {
LABEL_41:
        __break(1u);

        __break(1u);
        goto LABEL_42;
      }

      v31 = v64;
    }

    else
    {

      v42 = &_swiftEmptyArrayStorage;
    }

    v51 = v62;
    v52 = v70;
    v82 = v42;
    sub_100036124(&v82, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, sub_1000C370C, sub_1000361E8);
    v53 = v72;
    if (*(v82 + 2))
    {
      (*(v72 + 16))(v52, &v82[(*(v72 + 80) + 32) & ~*(v72 + 80)], v51);
      v54 = 0;
    }

    else
    {
      v54 = 1;
    }

    (*(v53 + 56))(v52, v54, 1, v51);
    sub_1000138BC(v52, v7, &qword_1001D5230);
    if ((*(v53 + 48))(v7, 1, v51) == 1)
    {
      sub_10001370C(v52, &qword_1001D5230);
      (*(v76 + 8))(v75, v77);
      sub_10001370C(v7, &qword_1001D5230);
    }

    else
    {
      v55 = v67;
      (*(v53 + 32))(v67, v7, v51);
      v56 = v66;
      (*(v53 + 16))(v66, v55, v51);
      v57 = (*(v53 + 88))(v56, v51);
      if (v57 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.inWaitList(_:) || v57 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.accessNotGranted(_:) || v57 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.unableToFetchAvailability(_:) || v57 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.notOptedIn(_:) || v57 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.assetIsNotReady(_:) || v57 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.siriAssetIsNotReady(_:) || v57 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.shortOfStorage(_:))
      {

        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v31 = String.init(localized:table:bundle:locale:comment:)();
        (*(v53 + 8))(v55, v51);
        sub_10001370C(v52, &qword_1001D5230);
        (*(v76 + 8))(v75, v77);
      }

      else
      {
        v60 = *(v53 + 8);
        v60(v55, v51);
        sub_10001370C(v52, &qword_1001D5230);
        (*(v76 + 8))(v75, v77);
        v60(v56, v51);
      }
    }

    return v31;
  }

  if (v34 == enum case for GenerativeModelsAvailability.Availability.available(_:))
  {

    return 0;
  }

LABEL_42:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1000337BC()
{
  v120 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v123 = *(v120 - 8);
  v0 = __chkstk_darwin(v120);
  v113 = v110 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __chkstk_darwin(v0);
  v118 = v110 - v3;
  v4 = __chkstk_darwin(v2);
  v6 = v110 - v5;
  __chkstk_darwin(v4);
  v133 = v110 - v7;
  v8 = sub_1000033A8(&qword_1001D5230);
  v9 = __chkstk_darwin(v8 - 8);
  v121 = v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v119 = v110 - v11;
  v12 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v124 = *(v12 - 8);
  __chkstk_darwin(v12);
  v128 = v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v116 = v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v15 - 8);
  v117 = v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v18 = *(v17 - 8);
  v129 = v17;
  v130 = v18;
  v19 = __chkstk_darwin(v17);
  v122 = v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v126 = v110 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = v110 - v24;
  __chkstk_darwin(v23);
  v134 = v110 - v26;
  v27 = sub_1000033A8(&qword_1001D5238);
  v28 = __chkstk_darwin(v27 - 8);
  v125 = v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v127 = v110 - v30;
  v31 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v131 = *(v31 - 8);
  __chkstk_darwin(v31);
  v132 = v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Locale();
  __chkstk_darwin(v37 - 8);
  v39 = v110 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v40 - 8);
  v42 = v110 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static GreymatterAvailability.isGreymatterEligible()())
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v110[1] = v42;
    v110[2] = v39;
    v111 = String.init(localized:table:bundle:locale:comment:)();
    v112 = v43;
    if ((static GreymatterAvailability.isGreymatterEligible()() & 1) == 0)
    {
      return v111;
    }

    v110[0] = v12;
    type metadata accessor for MissingIntelligenceView();
    sub_1000033A8(&qword_1001D4F98);
    State.wrappedValue.getter();
    v44 = (*(v34 + 88))(v36, v33);
    if (v44 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
    {
      (*(v34 + 96))(v36, v33);
      (*(v131 + 32))(v132, v36, v31);
      v45 = GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
      v46 = v45;
      v47 = v45 + 56;
      v48 = 1 << *(v45 + 32);
      v49 = -1;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      v50 = v49 & *(v45 + 56);
      v120 = v31;
      if (v50)
      {
        v51 = 0;
        v52 = __clz(__rbit64(v50));
        v53 = (v50 - 1) & v50;
        v54 = (v48 + 63) >> 6;
        v55 = v129;
        v56 = v130;
        v57 = v134;
LABEL_22:
        v68 = *(v46 + 6);
        v59 = v56 + 16;
        v69 = *(v56 + 16);
        v124 = *(v56 + 72);
        v128 = v69;
        (v69)(v57, v68 + v124 * v52, v55);
        v123 = (v56 + 8);
        v121 = (v56 + 32);
        v133 = v46;

        while (v53)
        {
          v70 = v51;
LABEL_30:
          v71 = __clz(__rbit64(v53));
          v53 &= v53 - 1;
          (v128)(v25, *(v133 + 6) + (v71 | (v70 << 6)) * v124, v55);
          v56 = v25;
          v72 = v134;
          v73 = v55;
          v74 = GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.displayPriority.getter();
          v75 = GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.displayPriority.getter();
          v76 = *v123;
          if (v74 >= v75)
          {
            v76(v56, v73);
          }

          else
          {
            v76(v72, v73);
            (*v121)(v72, v56, v73);
          }

          v51 = v70;
          v55 = v73;
          v25 = v56;
        }

        while (1)
        {
          v70 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            break;
          }

          if (v70 >= v54)
          {

            v77 = v127;
            (*v121)(v127, v134, v55);
            v78 = 0;
            v56 = v130;
            goto LABEL_33;
          }

          v53 = *(v47 + 8 * v70);
          ++v51;
          if (v53)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_89:
        __break(1u);
LABEL_95:

        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        (*(v114 + 104))(v116, enum case for LocalizedStringResource.BundleDescription.main(_:), v115);
        LocalizedStringResource.init(_:table:locale:bundle:comment:)();
        v87 = String.init(localized:)();
        (*(v54 + 8))(v53, v55);
        goto LABEL_76;
      }

      v66 = 0;
      v54 = (v48 + 63) >> 6;
      v55 = v129;
      v56 = v130;
      v57 = v134;
      while (v54 - 1 != v50)
      {
        v51 = v50 + 1;
        v67 = *&v46[8 * v50 + 64];
        v66 -= 64;
        ++v50;
        if (v67)
        {
          v53 = (v67 - 1) & v67;
          v52 = __clz(__rbit64(v67)) - v66;
          goto LABEL_22;
        }
      }

      v78 = 1;
      v77 = v127;
LABEL_33:
      (*(v56 + 56))(v77, v78, 1, v55);

      v79 = v125;
      sub_1000138BC(v77, v125, &qword_1001D5238);
      v80 = (*(v56 + 48))(v79, 1, v55);
      v81 = v126;
      if (v80 != 1)
      {

        (*(v56 + 32))(v81, v79, v55);
        v84 = v122;
        (*(v56 + 16))(v122, v81, v55);
        v85 = (*(v56 + 88))(v84, v55);
        if (v85 == enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.assetIsNotReady(_:) || v85 == enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.siriAssetIsNotReady(_:))
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          (*(v114 + 104))(v116, enum case for LocalizedStringResource.BundleDescription.main(_:), v115);
          LocalizedStringResource.init(_:table:locale:bundle:comment:)();
          v87 = String.init(localized:)();
          (*(v56 + 8))(v81, v55);
          sub_10001370C(v77, &qword_1001D5238);
          (*(v131 + 8))(v132, v120);
        }

        else
        {
          v88 = (v56 + 8);
          v89 = (v131 + 8);
          if (v85 == enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.shortOfStorage(_:))
          {
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            v87 = String.init(localized:table:bundle:locale:comment:)();
            (*v88)(v81, v129);
            sub_10001370C(v77, &qword_1001D5238);
            (*v89)(v132, v120);
          }

          else
          {
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            v87 = String.init(localized:table:bundle:locale:comment:)();
            v105 = *v88;
            v106 = v81;
            v107 = v129;
            (*v88)(v106, v129);
            sub_10001370C(v77, &qword_1001D5238);
            (*v89)(v132, v120);
            v105(v122, v107);
          }
        }

        return v87;
      }

      v82 = &qword_1001D5238;
      sub_10001370C(v77, &qword_1001D5238);
      (*(v131 + 8))(v132, v120);
      v83 = v79;
      goto LABEL_62;
    }

    if (v44 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
    {
      (*(v34 + 96))(v36, v33);
      v56 = v124;
      v59 = v110[0];
      (*(v124 + 32))(v128, v36, v110[0]);
      v60 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
      v61 = v60 + 56;
      v62 = 1 << *(v60 + 32);
      v63 = -1;
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      v64 = v63 & *(v60 + 56);
      v134 = v60;
      if (v64)
      {
        v53 = 0;
        v65 = __clz(__rbit64(v64));
        v56 = (v64 - 1) & v64;
        v25 = ((v62 + 63) >> 6);
        v54 = v123;
        v55 = v120;
LABEL_48:
        v93 = *(v134 + 6);
        v94 = *(v54 + 16);
        v54 += 16;
        v131 = *(v54 + 56);
        v132 = v94;
        (v94)(v133, v93 + v131 * v65, v55);
        v129 = (v54 + 16);
        v130 = (v54 - 8);

        while (v56)
        {
          v95 = v53;
          v96 = v133;
LABEL_57:
          v97 = __clz(__rbit64(v56));
          v56 &= v56 - 1;
          (v132)(v6, *(v134 + 6) + (v97 | (v95 << 6)) * v131, v55);
          v59 = v55;
          v98 = GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.displayPriority.getter();
          v99 = GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.displayPriority.getter();
          v100 = *v130;
          if (v98 >= v99)
          {
            v100(v6, v59);
          }

          else
          {
            v100(v96, v59);
            (*v129)(v96, v6, v59);
          }

          v53 = v95;
          v55 = v59;
        }

        v96 = v133;
        while (1)
        {
          v95 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            goto LABEL_89;
          }

          if (v95 >= v25)
          {

            v25 = v119;
            (*v129)(v119, v96, v55);
            v101 = 0;
            v54 = v123;
            v56 = v124;
            v59 = v110[0];
            v91 = v121;
            goto LABEL_60;
          }

          v56 = *(v61 + 8 * v95);
          ++v53;
          if (v56)
          {
            goto LABEL_57;
          }
        }
      }

      v90 = 0;
      v25 = ((v62 + 63) >> 6);
      v54 = v123;
      v55 = v120;
      v91 = v121;
      while (v25 - 1 != v64)
      {
        v53 = v64 + 1;
        v92 = *(v60 + 64 + 8 * v64);
        v90 -= 64;
        ++v64;
        if (v92)
        {
          v56 = (v92 - 1) & v92;
          v65 = __clz(__rbit64(v92)) - v90;
          goto LABEL_48;
        }
      }

      v101 = 1;
      v25 = v119;
LABEL_60:
      (*(v54 + 56))(v25, v101, 1, v55);

      sub_1000138BC(v25, v91, &qword_1001D5230);
      v102 = (*(v54 + 48))(v91, 1, v55);
      v53 = v118;
      if (v102 == 1)
      {
        v82 = &qword_1001D5230;
        sub_10001370C(v25, &qword_1001D5230);
        (*(v56 + 8))(v128, v59);
        v83 = v91;
LABEL_62:
        sub_10001370C(v83, v82);
        return v111;
      }

      (*(v54 + 32))(v118, v91, v55);
      v103 = v113;
      (*(v54 + 16))(v113, v53, v55);
      v104 = (*(v54 + 88))(v103, v55);
      if (v104 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.deviceNotCapable(_:) || (v104 != enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.regionIneligible(_:) ? (v108 = v104 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.localeIneligible(_:)) : (v108 = 1), v108 || v104 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.countryLocationIneligible(_:)))
      {
LABEL_75:

        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v87 = String.init(localized:table:bundle:locale:comment:)();
        (*(v54 + 8))(v53, v55);
LABEL_76:
        sub_10001370C(v25, &qword_1001D5230);
        (*(v56 + 8))(v128, v59);
        return v87;
      }

      if (v104 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.mdmAndParentalControl(_:))
      {
        goto LABEL_79;
      }

      if (v104 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.inWaitList(_:) || v104 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.accessNotGranted(_:) || v104 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.unableToFetchAvailability(_:) || v104 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.notOptedIn(_:) || v104 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.assetIsNotReady(_:) || v104 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.siriAssetIsNotReady(_:))
      {
        goto LABEL_95;
      }

      if (v104 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.shortOfStorage(_:))
      {
        goto LABEL_75;
      }

      if (v104 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.useCaseDisabled(_:))
      {
LABEL_79:
        (*(v54 + 8))(v53, v55);
        sub_10001370C(v25, &qword_1001D5230);
        (*(v56 + 8))(v128, v59);
        return v111;
      }

      if (v104 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.noCacheForDeviceEligibility(_:) || v104 == enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.noCacheForBaseUnavailableReasons(_:))
      {
        goto LABEL_95;
      }

      v109 = *(v54 + 8);
      v109(v53, v55);
      sub_10001370C(v25, &qword_1001D5230);
      (*(v56 + 8))(v128, v59);
      v109(v113, v55);
      return v111;
    }

    if (v44 == enum case for GenerativeModelsAvailability.Availability.available(_:))
    {

      return 0;
    }

    else
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  else if (static SystemVariantSupport.isInternalBuild.getter())
  {
    return 0x1000000000000056;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  return result;
}

uint64_t sub_100034D04(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D51D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_10001370C(v11, &qword_1001D8020);
  }

  (*(v13 + 32))(v15, v11, v12);
  v17 = a1 + *(type metadata accessor for MissingIntelligenceView() + 20);
  v18 = *v17;
  if (*(v17 + 16) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v22 = v5;
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000357B8();
    (*(v6 + 8))(v8, v22);
    v18 = v23;
  }

  OpenSensitiveURLOptions.init(promptForUnlock:)();
  v20 = type metadata accessor for OpenSensitiveURLOptions();
  (*(*(v20 - 8) + 56))(v4, 0, 1, v20);
  v18(v15, v4);

  sub_10001370C(v4, &qword_1001D51D8);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1000350B0@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.headline.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_100020D44(v2, v4, v6 & 1);

  static Font.Weight.semibold.getter();
  v12 = Text.fontWeight(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_100020D44(v7, v9, v11 & 1);

  result = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_10003520C(uint64_t a1)
{
  v27 = a1;
  v1 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GreymatterAvailability.UseCaseIdentifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for GreymatterAvailability();
  v8 = *(v24 - 8);
  __chkstk_darwin(v24);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000033A8(&qword_1001D50F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v23 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v14 = *(v23 - 8);
  v15 = __chkstk_darwin(v23);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v22 - v18;
  static GreymatterAvailability.shared.getter();
  (*(v5 + 104))(v7, enum case for GreymatterAvailability.UseCaseIdentifier.settings(_:), v4);
  default argument 1 of GreymatterAvailability.availability(_:languageOption:)();
  GreymatterAvailability.availability(_:languageOption:)();
  (*(v25 + 8))(v3, v26);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v24);
  sub_10001370C(v13, &qword_1001D50F0);
  type metadata accessor for MissingIntelligenceView();
  v20 = v23;
  (*(v14 + 16))(v17, v19, v23);
  sub_1000033A8(&qword_1001D4F98);
  State.wrappedValue.setter();
  return (*(v14 + 8))(v19, v20);
}

char *sub_1000355C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000033A8(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if (&result[-v10] != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * (&result[-v10] / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1000356C0(uint64_t a1, uint64_t a2)
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

  sub_1000033A8(&qword_1001D5248);
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

uint64_t sub_100035750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MissingIntelligenceView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000357C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MissingIntelligenceView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100035850()
{
  result = qword_1001D5150;
  if (!qword_1001D5150)
  {
    sub_10001276C(&qword_1001D5120);
    sub_10003590C();
    sub_1000360D4(&qword_1001D5180, &type metadata accessor for _IndefiniteSymbolEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5150);
  }

  return result;
}

unint64_t sub_10003590C()
{
  result = qword_1001D5158;
  if (!qword_1001D5158)
  {
    sub_10001276C(&qword_1001D5138);
    sub_1000359C4();
    sub_100013608(&qword_1001D5170, &qword_1001D5178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5158);
  }

  return result;
}

unint64_t sub_1000359C4()
{
  result = qword_1001D5160;
  if (!qword_1001D5160)
  {
    sub_10001276C(&qword_1001D5140);
    sub_10001276C(&qword_1001D5130);
    sub_10001276C(&qword_1001D46B8);
    sub_100022DB8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D5168, &qword_1001D5148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5160);
  }

  return result;
}

uint64_t sub_100035AFC()
{
  v1 = type metadata accessor for MissingIntelligenceView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1000033A8(&qword_1001D50E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for OpenURLAction();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  sub_1000357B8();
  v4 = v0 + v2 + *(v1 + 24);
  v5 = type metadata accessor for GenerativeModelsAvailability.Availability();
  (*(*(v5 - 8) + 8))(v4, v5);
  sub_1000033A8(&qword_1001D4F98);

  return swift_deallocObject();
}

uint64_t sub_100035C9C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MissingIntelligenceView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100035D10()
{
  result = qword_1001D5198;
  if (!qword_1001D5198)
  {
    sub_10001276C(&qword_1001D5190);
    sub_100013608(&qword_1001D51A0, &qword_1001D51A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5198);
  }

  return result;
}

unint64_t sub_100035DC8()
{
  result = qword_1001D51B8;
  if (!qword_1001D51B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D51B8);
  }

  return result;
}

unint64_t sub_100035E1C()
{
  result = qword_1001D51C0;
  if (!qword_1001D51C0)
  {
    sub_10001276C(&qword_1001D5100);
    sub_10001276C(&qword_1001D50F8);
    sub_100013608(&qword_1001D51B0, &qword_1001D50F8);
    sub_100035DC8();
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D5170, &qword_1001D5178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D51C0);
  }

  return result;
}

unint64_t sub_100035F60()
{
  result = qword_1001D51F8;
  if (!qword_1001D51F8)
  {
    sub_10001276C(&qword_1001D51E8);
    sub_100036018();
    sub_100013608(&qword_1001D46C0, &qword_1001D46C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D51F8);
  }

  return result;
}

unint64_t sub_100036018()
{
  result = qword_1001D5200;
  if (!qword_1001D5200)
  {
    sub_10001276C(&qword_1001D5208);
    sub_1000360D4(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5200);
  }

  return result;
}

uint64_t sub_1000360D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100036124(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *))
{
  v7 = *(a2(0) - 8);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a3(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v11[1] = v9;
  result = a4(v11);
  *a1 = v8;
  return result;
}

Swift::Int sub_1000361E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100036810(v8, v9, a1, v4, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.displayPriority.getter, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.displayPriority.getter, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
      v6[2] = 0;
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
    return sub_100036558(0, v2, 1, a1, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.displayPriority.getter);
  }

  return result;
}

Swift::Int sub_1000363A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100036810(v8, v9, a1, v4, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.displayPriority.getter, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.displayPriority.getter, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
      v6[2] = 0;
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
    return sub_100036558(0, v2, 1, a1, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.displayPriority.getter);
  }

  return result;
}

uint64_t sub_100036558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v52 = a6;
  v10 = a5(0);
  v11 = __chkstk_darwin(v10);
  v46 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v51 = &v36 - v14;
  result = __chkstk_darwin(v13);
  v50 = &v36 - v17;
  v38 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v16 + 16);
    v19 = v16 + 16;
    v21 = *(v19 + 56);
    v47 = (v19 - 8);
    v48 = v20;
    v49 = v19;
    v22 = v18 + v21 * (a3 - 1);
    v43 = -v21;
    v44 = (v19 + 16);
    v23 = a1 - a3;
    v45 = v18;
    v37 = v21;
    v24 = v18 + v21 * a3;
LABEL_5:
    v41 = v22;
    v42 = a3;
    v39 = v24;
    v40 = v23;
    v53 = v23;
    while (1)
    {
      v25 = v50;
      v26 = v48;
      v48(v50, v24, v10);
      v27 = v51;
      v28 = v26(v51, v22, v10);
      v29 = v52;
      v30 = (v52)(v28);
      v31 = v29();
      v32 = *v47;
      (*v47)(v27, v10);
      result = v32(v25, v10);
      if (v31 >= v30)
      {
LABEL_4:
        a3 = v42 + 1;
        v22 = v41 + v37;
        v23 = v40 - 1;
        v24 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v33 = *v44;
      v34 = v46;
      (*v44)(v46, v24, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = (v33)(v22, v34, v10);
      v22 += v43;
      v24 += v43;
      if (__CFADD__(v53++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100036810(unint64_t *a1, uint64_t a2, uint64_t (**a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void), uint64_t (*a9)(void))
{
  v144 = a7;
  v156 = a6;
  v11 = v9;
  v133 = a1;
  v143 = a9;
  v14 = a5(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v136 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v150 = &v130 - v19;
  v20 = __chkstk_darwin(v18);
  v155 = &v130 - v21;
  result = __chkstk_darwin(v20);
  v157 = &v130 - v23;
  v146 = a3;
  if (a3[1] < 1)
  {
    v26 = &_swiftEmptyArrayStorage;
LABEL_98:
    v14 = *v133;
    if (!*v133)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_130:
      result = sub_1000BD6CC(v26);
      v26 = result;
    }

    v159 = v26;
    v126 = *(v26 + 2);
    if (v126 >= 2)
    {
      while (*v146)
      {
        v127 = *&v26[16 * v126];
        v128 = *&v26[16 * v126 + 24];
        sub_1000372B0(*v146 + v15[9] * v127, *v146 + v15[9] * *&v26[16 * v126 + 16], *v146 + v15[9] * v128, v14, v144, a8, v143);
        if (v11)
        {
        }

        if (v128 < v127)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1000BD6CC(v26);
        }

        if (v126 - 2 >= *(v26 + 2))
        {
          goto LABEL_124;
        }

        v129 = &v26[16 * v126];
        *v129 = v127;
        *(v129 + 1) = v128;
        v159 = v26;
        result = sub_1000BD640(v126 - 1);
        v26 = v159;
        v126 = *(v159 + 2);
        if (v126 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v24 = a3[1];
  v131 = a4;
  v25 = 0;
  v153 = (v15 + 1);
  v154 = v15 + 2;
  v152 = (v15 + 4);
  v26 = &_swiftEmptyArrayStorage;
  v140 = v15;
  v141 = a8;
  v158 = v14;
  while (1)
  {
    v27 = v25;
    v145 = v26;
    if (v25 + 1 >= v24)
    {
      v40 = (v25 + 1);
    }

    else
    {
      v147 = v24;
      v132 = v11;
      v28 = *v146;
      v151 = v28;
      v29 = v15[9];
      v30 = v25;
      v134 = v25;
      v31 = v28 + v29 * (v25 + 1);
      v32 = v15[2];
      (v32)(v157, v31, v14);
      v33 = v28 + v29 * v30;
      v34 = v155;
      v139 = v32;
      v35 = (v32)(v155, v33, v14);
      v36 = v156;
      v37 = v157;
      v148 = (v156)(v35);
      v142 = v36();
      v38 = v15[1];
      v38(v34, v14);
      v138 = v38;
      result = (v38)(v37, v14);
      a8 = (v134 + 2);
      v149 = v29;
      v39 = v151 + v29 * (v134 + 2);
      while (1)
      {
        v40 = v147;
        if (v147 == a8)
        {
          break;
        }

        LODWORD(v151) = v142 < v148;
        v42 = v157;
        v41 = v158;
        v43 = v139;
        (v139)(v157, v39, v158);
        v44 = v155;
        v45 = (v43)(v155, v31, v41);
        v46 = v156;
        v47 = (v156)(v45);
        v48 = v46();
        v49 = v44;
        v50 = v138;
        (v138)(v49, v41);
        result = v50(v42, v41);
        v51 = v48 < v47;
        v15 = v140;
        v52 = !v51;
        v26 = v145;
        a8 = (a8 + 1);
        v39 = v149 + v39;
        v31 = v149 + v31;
        if (((v151 ^ v52) & 1) == 0)
        {
          v40 = (a8 - 1);
          break;
        }
      }

      v11 = v132;
      v14 = v158;
      v27 = v134;
      if (v142 < v148)
      {
        if (v40 < v134)
        {
          goto LABEL_127;
        }

        if (v134 < v40)
        {
          v53 = v149 * (v40 - 1);
          v54 = v40 * v149;
          v147 = v40;
          v55 = v40;
          v56 = v134;
          v57 = v134 * v149;
          do
          {
            v55 = (v55 - 1);
            if (v56 != v55)
            {
              a8 = *v146;
              if (!*v146)
              {
                goto LABEL_133;
              }

              v58 = *v152;
              (*v152)(v136, a8 + v57, v14);
              if (v57 < v53 || a8 + v57 >= a8 + v54)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v57 != v53)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v58)(a8 + v53, v136, v14);
              v26 = v145;
            }

            v56 = (v56 + 1);
            v53 -= v149;
            v54 -= v149;
            v57 += v149;
          }

          while (v56 < v55);
          v11 = v132;
          v15 = v140;
          v27 = v134;
          v40 = v147;
        }
      }
    }

    v59 = v146[1];
    if (v40 < v59)
    {
      if (__OFSUB__(v40, v27))
      {
        goto LABEL_126;
      }

      if (v40 - v27 < v131)
      {
        if (__OFADD__(v27, v131))
        {
          goto LABEL_128;
        }

        if (v27 + v131 >= v59)
        {
          v60 = v146[1];
        }

        else
        {
          v60 = (v27 + v131);
        }

        if (v60 < v27)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v40 != v60)
        {
          break;
        }
      }
    }

    v61 = v40;
    if (v40 < v27)
    {
      goto LABEL_125;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100094DE4(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v63 = *(v26 + 2);
    v62 = *(v26 + 3);
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      result = sub_100094DE4((v62 > 1), v63 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v64;
    v65 = &v26[16 * v63];
    *(v65 + 4) = v27;
    *(v65 + 5) = v61;
    v66 = *v133;
    if (!*v133)
    {
      goto LABEL_135;
    }

    v137 = v61;
    if (v63)
    {
      a8 = v66;
      while (1)
      {
        v67 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v68 = *(v26 + 4);
          v69 = *(v26 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_56:
          if (v71)
          {
            goto LABEL_114;
          }

          v84 = &v26[16 * v64];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_117;
          }

          v90 = &v26[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_121;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v64 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v94 = &v26[16 * v64];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_70:
        if (v89)
        {
          goto LABEL_116;
        }

        v97 = &v26[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_119;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_77:
        v105 = v67 - 1;
        if (v67 - 1 >= v64)
        {
          __break(1u);
LABEL_110:
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
          goto LABEL_129;
        }

        if (!*v146)
        {
          goto LABEL_132;
        }

        v106 = *&v26[16 * v105 + 32];
        v107 = *&v26[16 * v67 + 40];
        sub_1000372B0(*v146 + v15[9] * v106, *v146 + v15[9] * *&v26[16 * v67 + 32], *v146 + v15[9] * v107, a8, v144, v141, v143);
        if (v11)
        {
        }

        if (v107 < v106)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1000BD6CC(v26);
        }

        if (v105 >= *(v26 + 2))
        {
          goto LABEL_111;
        }

        v108 = &v26[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v159 = v26;
        result = sub_1000BD640(v67);
        v26 = v159;
        v64 = *(v159 + 2);
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v26[16 * v64 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_112;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_113;
      }

      v79 = &v26[16 * v64];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_115;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_118;
      }

      if (v83 >= v75)
      {
        v101 = &v26[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_122;
        }

        if (v70 < v104)
        {
          v67 = v64 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v24 = v146[1];
    v25 = v137;
    a8 = v141;
    if (v137 >= v24)
    {
      goto LABEL_98;
    }
  }

  v132 = v11;
  v109 = *v146;
  v110 = v15[9];
  v151 = v15[2];
  v111 = v109 + v110 * (v40 - 1);
  v148 = -v110;
  v134 = v27;
  a8 = (v27 - v40);
  v149 = v109;
  v135 = v110;
  v112 = v109 + v40 * v110;
  v137 = v60;
LABEL_89:
  v147 = v40;
  v138 = v112;
  v139 = a8;
  v142 = v111;
  v113 = v111;
  while (1)
  {
    v114 = v157;
    v115 = v151;
    (v151)(v157, v112, v14);
    v116 = v155;
    v117 = (v115)(v155, v113, v158);
    v118 = v156;
    v119 = (v156)(v117);
    v120 = v118();
    v121 = *v153;
    v122 = v116;
    v14 = v158;
    (*v153)(v122, v158);
    result = v121(v114, v14);
    if (v120 >= v119)
    {
LABEL_88:
      v40 = (v147 + 1);
      v111 = v142 + v135;
      a8 = (v139 - 1);
      v112 = &v138[v135];
      v61 = v137;
      if ((v147 + 1) != v137)
      {
        goto LABEL_89;
      }

      v11 = v132;
      v15 = v140;
      v26 = v145;
      v27 = v134;
      if (v137 < v134)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v149)
    {
      break;
    }

    v123 = *v152;
    v124 = v150;
    (*v152)(v150, v112, v14);
    swift_arrayInitWithTakeFrontToBack();
    v123(v113, v124, v14);
    v113 += v148;
    v112 += v148;
    v125 = __CFADD__(a8, 1);
    a8 = (a8 + 1);
    if (v125)
    {
      goto LABEL_88;
    }
  }

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
  return result;
}

uint64_t sub_1000372B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v68 = a6;
  v12 = a5(0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v67 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v66 = &v56 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_62;
  }

  v57 = a7;
  v21 = (a2 - a1) / v19;
  v73 = a1;
  v72 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v23 < 1)
    {
      v42 = a4 + v23;
    }

    else
    {
      v40 = -v19;
      v60 = a4;
      v61 = (v13 + 16);
      v59 = (v13 + 8);
      v41 = a4 + v23;
      v42 = a4 + v23;
      v70 = a1;
      v62 = -v19;
      do
      {
        v56 = v42;
        v43 = a2 + v40;
        v63 = a2;
        v64 = a2 + v40;
        while (1)
        {
          if (a2 <= a1)
          {
            v73 = a2;
            v71 = v56;
            goto LABEL_59;
          }

          v45 = a3;
          v58 = v42;
          v46 = v12;
          v69 = a3 + v40;
          v47 = v43;
          v48 = v41 + v40;
          v49 = *v61;
          v50 = v66;
          (*v61)(v66, v41 + v40, v46);
          v51 = v67;
          v52 = (v49)(v67, v47, v46);
          v53 = v68;
          v65 = (v68)(v52);
          v54 = v53();
          v55 = *v59;
          (*v59)(v51, v46);
          v55(v50, v46);
          if (v54 < v65)
          {
            break;
          }

          v42 = v48;
          a3 = v69;
          if (v45 < v41 || v69 >= v41)
          {
            v12 = v46;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v70;
          }

          else
          {
            v12 = v46;
            a1 = v70;
            if (v45 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v41 = v48;
          v44 = v48 > v60;
          a2 = v63;
          v43 = v64;
          v40 = v62;
          if (!v44)
          {
            goto LABEL_57;
          }
        }

        a3 = v69;
        if (v45 < v63 || v69 >= v63)
        {
          a2 = v64;
          v12 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v70;
          v42 = v58;
        }

        else
        {
          a2 = v64;
          v12 = v46;
          a1 = v70;
          v42 = v58;
          if (v45 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v40 = v62;
      }

      while (v41 > v60);
    }

LABEL_57:
    v73 = a2;
    v71 = v42;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v65 = a4 + v22;
    v71 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v13 + 16);
      v63 = v19;
      v64 = v13 + 16;
      v61 = (v13 + 8);
      v62 = v25;
      v69 = a3;
      do
      {
        v70 = a1;
        v26 = v66;
        v27 = v62;
        (v62)(v66, a2, v12);
        v28 = v12;
        v29 = v67;
        v30 = v27(v67, a4, v28);
        v31 = a4;
        v32 = v68;
        v33 = a2;
        v34 = (v68)(v30);
        v35 = v32();
        v36 = *v61;
        v37 = v29;
        v12 = v28;
        (*v61)(v37, v28);
        v36(v26, v28);
        if (v35 >= v34)
        {
          a2 = v33;
          v38 = v63;
          a4 = v31 + v63;
          v39 = v70;
          if (v70 < v31 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v72 = a4;
        }

        else
        {
          v38 = v63;
          a2 = v33 + v63;
          v39 = v70;
          a4 = v31;
          if (v70 < v33 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v39 + v38;
        v73 = a1;
      }

      while (a4 < v65 && a2 < v69);
    }
  }

LABEL_59:
  sub_100037898(&v73, &v72, &v71, v57);
  return 1;
}

uint64_t sub_100037898(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100037988(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_100037C38()
{
  result = qword_1001D5250;
  if (!qword_1001D5250)
  {
    sub_10001276C(&qword_1001D50A0);
    sub_100037CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5250);
  }

  return result;
}

unint64_t sub_100037CC4()
{
  result = qword_1001D5258;
  if (!qword_1001D5258)
  {
    sub_10001276C(&qword_1001D5080);
    sub_100037D7C();
    sub_100013608(&qword_1001D45B0, &qword_1001D45B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5258);
  }

  return result;
}

unint64_t sub_100037D7C()
{
  result = qword_1001D5260;
  if (!qword_1001D5260)
  {
    sub_10001276C(&qword_1001D5078);
    sub_100037E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5260);
  }

  return result;
}

unint64_t sub_100037E08()
{
  result = qword_1001D5268;
  if (!qword_1001D5268)
  {
    sub_10001276C(&qword_1001D5070);
    sub_100037EC0();
    sub_100013608(&qword_1001D5278, &qword_1001D5280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5268);
  }

  return result;
}

unint64_t sub_100037EC0()
{
  result = qword_1001D5270;
  if (!qword_1001D5270)
  {
    sub_10001276C(&qword_1001D5068);
    sub_10001276C(&qword_1001D5058);
    sub_100013608(&qword_1001D5098, &qword_1001D5058);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5270);
  }

  return result;
}

uint64_t sub_100037FC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for ConfigToggle();
  v22 = *(*(v5 - 8) + 16);
  (v22)((v5 - 8), a2, v4, v5);
  v6 = sub_1000033A8(&qword_1001D5730);
  v7 = v6[12];
  v8 = a1[1];
  v9 = sub_1000033A8(&qword_1001D5530);
  (*(*(v9 - 8) + 16))(a2 + v7, v8, v9);
  sub_1000138BC(a1[2], a2 + v6[16], &qword_1001D5528);
  v22(a2 + v6[20], a1[3], v5);
  v10 = v6[24];
  v11 = a1[4];
  v12 = sub_1000033A8(&qword_1001D5520);
  (*(*(v12 - 8) + 16))(a2 + v10, v11, v12);
  v22(a2 + v6[28], a1[5], v5);
  v13 = v6[32];
  v14 = a1[6];
  v15 = sub_1000033A8(&qword_1001D5518);
  (*(*(v15 - 8) + 16))(a2 + v13, v14, v15);
  v16 = v6[36];
  v17 = a1[7];
  v18 = sub_1000033A8(&qword_1001D5510);
  (*(*(v18 - 8) + 16))(a2 + v16, v17, v18);
  v22(a2 + v6[40], a1[8], v5);
  v22(a2 + v6[44], a1[9], v5);
  v19 = a1[10];
  v20 = a2 + v6[48];

  return (v22)(v20, v19, v5);
}

uint64_t sub_10003826C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = **a1;
  v6 = *(*a1 + 9);
  v7 = *(*a1 + 16);
  v8 = *(*a1 + 24);
  *(a2 + 8) = *(*a1 + 8);
  *a2 = v5;
  *(a2 + 9) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  v9 = *v4;
  v10 = v4[1];
  LOBYTE(v4) = v4[2];
  *(a2 + 25) = v9;
  *(a2 + 26) = v10;
  *(a2 + 27) = v4;
  v11 = sub_1000033A8(&qword_1001D5FA8);
  sub_1000138BC(a1[2], a2 + v11[16], &qword_1001D5FB0);
  sub_1000138BC(a1[3], a2 + v11[20], &qword_1001D5FB8);
  sub_1000138BC(a1[4], a2 + v11[24], &qword_1001D5FC0);
  v12 = v11[28];
  v13 = a1[5];
  v14 = sub_1000033A8(&qword_1001D5FC8);
  (*(*(v14 - 8) + 16))(a2 + v12, v13, v14);
  sub_1000138BC(a1[6], a2 + v11[32], &qword_1001D5FD0);
  sub_1000138BC(a1[7], a2 + v11[36], &qword_1001D5FD8);
  sub_1000138BC(a1[8], a2 + v11[40], &qword_1001D5FE0);
  sub_1000138BC(a1[9], a2 + v11[44], &qword_1001D5FE8);
  sub_1000138BC(a1[10], a2 + v11[48], &qword_1001D5FF0);
}

uint64_t sub_100038468@<X0>(uint64_t a1@<X8>)
{
  sub_10003B080(a1);
  if (AVGestaltGetBoolAnswer() && AVGestaltGetBoolAnswer())
  {
    if (AVGestaltGetBoolAnswer())
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for CameraControllerConfiguration(0);
  *(a1 + v3[5]) = v2;
  *(a1 + v3[6]) = 0;
  *(a1 + v3[7]) = 1;
  *(a1 + v3[8]) = 0;
  *(a1 + v3[9]) = 1;
  *(a1 + v3[10]) = 1;
  *(a1 + v3[11]) = 1;
  v4 = v3[12];
  if (qword_1001D3198 != -1)
  {
    swift_once();
  }

  v5 = a1 + v4;
  v6 = byte_1001EB570;
  *v5 = qword_1001EB568;
  *(v5 + 8) = v6;
  v7 = v3[13];
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v8, v9, 0);

  *(a1 + v7) = AppBooleanValue != 0;
  v11 = v3[14];
  v12 = type metadata accessor for URL();
  v15 = *(*(v12 - 8) + 56);
  (v15)((v12 - 8), a1 + v11, 1, 1, v12);
  *(a1 + v3[15]) = 4;
  *(a1 + v3[16]) = 0;
  v15(a1 + v3[17], 1, 1, v12);
  *(a1 + v3[18]) = 1;
  *(a1 + v3[19]) = 0;
  *(a1 + v3[20]) = 1;
  v13 = a1 + v3[21];

  return (v15)(v13, 1, 1, v12);
}

uint64_t sub_1000386D0(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_1000033A8(&qword_1001D5838);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_1000033A8(&qword_1001D5840);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_1000033A8(&qword_1001D5848);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_1000033A8(&qword_1001D5850);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_100006AAC(a1, a1[3]);
  sub_10004F588();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_10004F630();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_10004F5DC();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_10004F684();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_100038A5C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_100038A8C(uint64_t a1)
{
  v2 = sub_10004F684();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100038AC8(uint64_t a1)
{
  v2 = sub_10004F684();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100038B04(uint64_t a1)
{
  v2 = sub_10004F630();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100038B40(uint64_t a1)
{
  v2 = sub_10004F630();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100038B84()
{
  v1 = 0x7275747061437661;
  if (*v0 != 1)
  {
    v1 = 0x6F74616C756D6973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74694B7261;
  }
}

uint64_t sub_100038BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004BB58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100038C08(uint64_t a1)
{
  v2 = sub_10004F588();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100038C44(uint64_t a1)
{
  v2 = sub_10004F588();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100038C80(uint64_t a1)
{
  v2 = sub_10004F5DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100038CBC(uint64_t a1)
{
  v2 = sub_10004F5DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100038D08@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004BC78(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100038D50()
{
  v1 = 0x7275747061435641;
  if (*v0 != 1)
  {
    v1 = 0x6F74616C756D6953;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74694B5241;
  }
}

uint64_t sub_100038DAC(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_1000033A8(&qword_1001D5A98);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_1000033A8(&qword_1001D5AA0);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_1000033A8(&qword_1001D5AA8);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_1000033A8(&qword_1001D5AB0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_100006AAC(a1, a1[3]);
  sub_100050008();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1000500B0();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_10005005C();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_100050104();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_10003912C()
{
  v1 = 0x656469576C617564;
  if (*v0 != 1)
  {
    v1 = 0x656C70697274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701079415;
  }
}

uint64_t sub_10003917C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004C208(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000391B0(uint64_t a1)
{
  v2 = sub_100050008();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000391EC(uint64_t a1)
{
  v2 = sub_100050008();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100039228(uint64_t a1)
{
  v2 = sub_1000500B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100039264(uint64_t a1)
{
  v2 = sub_1000500B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000392A0(uint64_t a1)
{
  v2 = sub_10005005C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000392DC(uint64_t a1)
{
  v2 = sub_10005005C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100039318(uint64_t a1)
{
  v2 = sub_100050104();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100039354(uint64_t a1)
{
  v2 = sub_100050104();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100039390@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004C31C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000393D8()
{
  v1 = 0x646957206C617544;
  if (*v0 != 1)
  {
    v1 = 0x656C70697254;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701079383;
  }
}

uint64_t sub_10003943C(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_1000033A8(&qword_1001D59F0);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_1000033A8(&qword_1001D59F8);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_1000033A8(&qword_1001D5A00);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_1000033A8(&qword_1001D5A08);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_100006AAC(a1, a1[3]);
  sub_10004FDBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_10004FE64();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_10004FE10();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_10004FEB8();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_1000397BC(uint64_t a1)
{
  v2 = sub_10004FEB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000397F8(uint64_t a1)
{
  v2 = sub_10004FEB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100039834()
{
  v1 = 0x6F73655268676968;
  if (*v0 != 1)
  {
    v1 = 0x4B72756F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1869903201;
  }
}

uint64_t sub_100039890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004C8AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000398B8(uint64_t a1)
{
  v2 = sub_10004FDBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000398F4(uint64_t a1)
{
  v2 = sub_10004FDBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100039930(uint64_t a1)
{
  v2 = sub_10004FE10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003996C(uint64_t a1)
{
  v2 = sub_10004FE10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000399A8(uint64_t a1)
{
  v2 = sub_10004FE64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000399E4(uint64_t a1)
{
  v2 = sub_10004FE64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100039A20@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004C9C8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100039A68()
{
  v1 = 0x7365522068676948;
  if (*v0 != 1)
  {
    v1 = 19252;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1869903169;
  }
}

uint64_t sub_100039ACC(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_1000033A8(&qword_1001D5A40);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_1000033A8(&qword_1001D5A48);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_1000033A8(&qword_1001D5A50);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_100006AAC(a1, a1[3]);
  sub_10004FF0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_10004FF60();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_10004FFB4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_100039D88()
{
  if (*v0)
  {
    return 0x74736568676968;
  }

  else
  {
    return 0x6465657073;
  }
}

uint64_t sub_100039DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465657073 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736568676968 && a2 == 0xE700000000000000)
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

uint64_t sub_100039E98(uint64_t a1)
{
  v2 = sub_10004FF0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100039ED4(uint64_t a1)
{
  v2 = sub_10004FF0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100039F10(uint64_t a1)
{
  v2 = sub_10004FF60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100039F4C(uint64_t a1)
{
  v2 = sub_10004FF60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100039F88(uint64_t a1)
{
  v2 = sub_10004FFB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100039FC4(uint64_t a1)
{
  v2 = sub_10004FFB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003A000@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004CF58(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_10003A04C()
{
  if (*v0)
  {
    return 0x74736568676948;
  }

  else
  {
    return 0x6465657053;
  }
}

uint64_t sub_10003A094(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_1000033A8(&qword_1001D5998);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_1000033A8(&qword_1001D59A0);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_1000033A8(&qword_1001D59A8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_100006AAC(a1, a1[3]);
  sub_10004FCC0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_10004FD14();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_10004FD68();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_10003A350()
{
  if (*v0)
  {
    return 0x7974786973;
  }

  else
  {
    return 0x797472696874;
  }
}

uint64_t sub_10003A384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x797472696874 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7974786973 && a2 == 0xE500000000000000)
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

uint64_t sub_10003A458(uint64_t a1)
{
  v2 = sub_10004FCC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003A494(uint64_t a1)
{
  v2 = sub_10004FCC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003A4D0(uint64_t a1)
{
  v2 = sub_10004FD14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003A50C(uint64_t a1)
{
  v2 = sub_10004FD14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003A548(uint64_t a1)
{
  v2 = sub_10004FD68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003A584(uint64_t a1)
{
  v2 = sub_10004FD68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003A5C0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004D394(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_10003A60C()
{
  if (*v0)
  {
    return 0x535046203036;
  }

  else
  {
    return 0x535046203033;
  }
}

void sub_10003A640()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    mainScreenWidth = MobileGestalt_get_mainScreenWidth();

    v3 = MobileGestalt_get_current_device();
    if (v3)
    {
      v4 = v3;
      v5 = mainScreenWidth;
      mainScreenHeight = MobileGestalt_get_mainScreenHeight();

      *&qword_1001EB568 = v5 / mainScreenHeight;
      byte_1001EB570 = 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10003A6C8(uint64_t a1, char a2)
{
  if (a2)
  {
    return 1701736270;
  }

  _StringGuts.grow(_:)(16);

  strcpy(v7, "Aspect Crop (");
  sub_1000033A8(&qword_1001D58A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100171DA0;
  *(v4 + 56) = &type metadata for Double;
  *(v4 + 64) = &protocol witness table for Double;
  *(v4 + 32) = a1;
  v5._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return v7[0];
}

uint64_t sub_10003A7C8(void *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v18 = a2;
  v4 = sub_1000033A8(&qword_1001D5888);
  v19 = *(v4 - 8);
  v20 = v4;
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v17 = sub_1000033A8(&qword_1001D5890);
  v7 = *(v17 - 8);
  __chkstk_darwin(v17);
  v9 = &v16 - v8;
  v10 = sub_1000033A8(&qword_1001D5898);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  sub_100006AAC(a1, a1[3]);
  sub_10004F6D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v21)
  {
    v22 = 0;
    sub_10004F780();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v7 + 8))(v9, v17);
  }

  else
  {
    v23 = 1;
    sub_10004F72C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v20;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v19 + 8))(v6, v15);
  }

  return (*(v11 + 8))(v13, v10);
}

Swift::Int sub_10003AACC(Swift::UInt64 a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
  }

  return Hasher._finalize()();
}

uint64_t sub_10003AB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10003ABE8(uint64_t a1)
{
  v2 = sub_10004F72C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003AC24(uint64_t a1)
{
  v2 = sub_10004F72C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003AC60()
{
  if (*v0)
  {
    return 0x7243746365707361;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_10003AC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7243746365707361 && a2 == 0xEA0000000000706FLL)
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

uint64_t sub_10003AD7C(uint64_t a1)
{
  v2 = sub_10004F6D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003ADB8(uint64_t a1)
{
  v2 = sub_10004F6D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003ADF4(uint64_t a1)
{
  v2 = sub_10004F780();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003AE30(uint64_t a1)
{
  v2 = sub_10004F780();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_10003AE6C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

void sub_10003AEB4()
{
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *v0;
    Hasher._combine(_:)(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    Hasher._combine(_:)(v2);
  }
}

Swift::Int sub_10003AF04()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    Hasher._combine(_:)(v3);
  }

  return Hasher._finalize()();
}

void *sub_10003AF70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10004D7D0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_10003AFD0@<X0>(uint64_t *a1@<X8>)
{
  sub_1000033A8(&qword_1001D58A8);
  result = swift_allocObject();
  *(result + 16) = xmmword_100170800;
  *(result + 32) = 0;
  *(result + 40) = 1;
  if (qword_1001D3198 != -1)
  {
    v4 = result;
    swift_once();
    result = v4;
  }

  v3 = byte_1001EB570;
  *(result + 48) = qword_1001EB568;
  *(result + 56) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10003B080@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v54 = type metadata accessor for EntryPoint();
  v51 = *(v54 - 8);
  __chkstk_darwin(v54);
  v63 = v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ActionPredictor.Configuration();
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = __chkstk_darwin(v2);
  v53 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v48 = v42 - v5;
  v60 = type metadata accessor for BundleSelector.Configuration();
  v6 = *(v60 - 8);
  v7 = __chkstk_darwin(v60);
  v52 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v42 - v10;
  __chkstk_darwin(v9);
  v13 = v42 - v12;
  v62 = type metadata accessor for BundleManager.Configuration();
  v50 = *(v62 - 8);
  v14 = __chkstk_darwin(v62);
  v49 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v42 - v16;
  v61 = type metadata accessor for TrackManager.Configuration();
  v47 = *(v61 - 8);
  v18 = __chkstk_darwin(v61);
  v46 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v42 - v20;
  v22 = type metadata accessor for CVCoordinator.Configuration();
  v58 = *(v22 - 8);
  v59 = v22;
  v23 = __chkstk_darwin(v22);
  v25 = v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v42 - v26;
  static CVCoordinator.Configuration.cameraSettings.getter();
  v28 = v21;
  static TrackManager.Configuration.factorySettings.getter();
  v29 = v17;
  static BundleManager.Configuration.cameraSettings.getter();
  static BundleSelector.Configuration.factorySettings.getter();
  type metadata accessor for RellenoGlobalSettings();
  static RellenoGlobalSettings.shared.getter();
  LOBYTE(v21) = dispatch thunk of RellenoGlobalSettings.isRelleno.getter();

  if ((v21 & 1) == 0)
  {
    BundleSelector.Configuration.pinPresentableUIArea.setter();
  }

  v30 = *(v6 + 32);
  v42[0] = v13;
  v31 = v11;
  v32 = v60;
  v30(v13, v31, v60);
  v33 = v48;
  static ActionPredictor.Configuration.factorySettings.getter();
  (*(v51 + 104))(v63, enum case for EntryPoint.viewfinder(_:), v54);
  v34 = *(v58 + 16);
  v42[1] = v25;
  v45 = v27;
  v34(v25, v27, v59);
  v35 = v47;
  v36 = *(v47 + 16);
  v44 = v28;
  v36(v46, v28, v61);
  v37 = v50;
  v38 = *(v50 + 16);
  v43 = v29;
  v38(v49, v29, v62);
  (*(v6 + 16))(v52, v13, v32);
  v40 = v55;
  v39 = v56;
  (*(v55 + 16))(v53, v33, v56);
  SaliencyStreamConfiguration.init(entryPoint:cvCoordinatorConfiguration:trackManagerConfiguration:bundleManagerConfiguration:bundleSelectorConfiguration:actionPredictorConfiguration:)();
  (*(v40 + 8))(v33, v39);
  (*(v6 + 8))(v42[0], v60);
  (*(v37 + 8))(v43, v62);
  (*(v35 + 8))(v44, v61);
  return (*(v58 + 8))(v45, v59);
}

unint64_t sub_10003B6B4(char a1)
{
  result = 0x6172656D6163;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0x7954656372756F73;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0x6175516F746F6870;
      break;
    case 7:
    case 16:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0x6172466C6C697473;
      break;
    case 12:
      result = 0x6172466F65646976;
      break;
    case 13:
      result = 0x7065526F65646976;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 15:
      result = 0x4F764373746E6177;
      break;
    case 17:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t sub_10003B920(void *a1)
{
  v3 = v1;
  v5 = sub_1000033A8(&qword_1001D5908);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_100006AAC(a1, a1[3]);
  sub_10004F7D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for SaliencyStreamConfiguration();
  sub_10003E86C(&qword_1001D5910, &type metadata accessor for SaliencyStreamConfiguration);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for CameraControllerConfiguration(0);
  LOBYTE(v15) = *(v3 + v9[5]);
  v17 = 1;
  sub_10004FA74();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v15) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v15) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v15) = *(v3 + v9[8]);
  v17 = 4;
  sub_10004FAC8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v15) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v15) = *(v3 + v9[10]);
  v17 = 6;
  sub_10004FB1C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v15) = *(v3 + v9[11]);
  v17 = 7;
  sub_10004FB70();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v10 = (v3 + v9[12]);
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  v15 = v11;
  v16 = v10;
  v17 = 8;
  sub_10004FBC4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v15) = 9;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = v6;
  LOBYTE(v15) = 10;
  type metadata accessor for URL();
  sub_10003E86C(&qword_1001D5940, &type metadata accessor for URL);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v15) = *(v3 + v9[15]);
  v17 = 11;
  sub_10004FC18();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v15) = *(v3 + v9[16]);
  v17 = 12;
  sub_10004FC6C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v15) = 13;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v15) = 14;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v15) = 15;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v15) = 16;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v15) = 17;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v14 + 8))(v8, v5);
}

uint64_t sub_10003BED0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_1000033A8(&qword_1001D8020);
  v4 = __chkstk_darwin(v3 - 8);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v54 = &v47 - v7;
  __chkstk_darwin(v6);
  v58 = &v47 - v8;
  v69 = type metadata accessor for SaliencyStreamConfiguration();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000033A8(&qword_1001D58B0);
  v70 = *(v11 - 8);
  v71 = v11;
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003B080(v16);
  BoolAnswer = AVGestaltGetBoolAnswer();
  v75 = a1;
  if (BoolAnswer && AVGestaltGetBoolAnswer())
  {
    if (AVGestaltGetBoolAnswer())
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  v68 = v10;
  v74 = v13;
  v19 = v14[5];
  v16[v19] = v18;
  v65 = v14[6];
  v66 = v19;
  v16[v65] = 0;
  v64 = v14[7];
  v16[v64] = 1;
  v63 = v14[8];
  v16[v63] = 0;
  v62 = v14[9];
  v16[v62] = 1;
  v61 = v14[10];
  v16[v61] = 1;
  v60 = v14[11];
  v16[v60] = 1;
  v20 = &v16[v14[12]];
  if (qword_1001D3198 != -1)
  {
    swift_once();
  }

  v21 = byte_1001EB570;
  *v20 = qword_1001EB568;
  v20[8] = v21;
  v22 = v14[13];
  v23 = String._bridgeToObjectiveC()();
  v24 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v23, v24, 0);

  v57 = v22;
  v16[v22] = AppBooleanValue != 0;
  v26 = v14[14];
  v27 = type metadata accessor for URL();
  v59 = v20;
  v28 = v27;
  v29 = *(*(v27 - 8) + 56);
  v56 = v26;
  v29(&v16[v26], 1, 1, v27);
  v55 = v14[15];
  v16[v55] = 4;
  v53 = v14[16];
  v16[v53] = 0;
  v52 = v14[17];
  v29(&v16[v52], 1, 1, v28);
  v30 = v14[18];
  v16[v30] = 1;
  v31 = v14[19];
  v16[v31] = 0;
  v32 = v16;
  v33 = v14[20];
  v16[v33] = 1;
  v34 = v14[21];
  v73 = v32;
  v29(&v32[v34], 1, 1, v28);
  sub_100006AAC(v75, v75[3]);
  sub_10004F7D4();
  v35 = v72;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v35)
  {
    v45 = v73;
    v40 = v75;
  }

  else
  {
    v72 = v30;
    v49 = v31;
    v48 = v33;
    v47 = v34;
    LOBYTE(v76) = 0;
    sub_10003E86C(&qword_1001D58C0, &type metadata accessor for SaliencyStreamConfiguration);
    v37 = v68;
    v36 = v69;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39 = v73;
    (*(v67 + 40))(v73, v37, v36);
    v78 = 1;
    sub_10004F828();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = v75;
    *(v39 + v66) = v76;
    LOBYTE(v76) = 2;
    *(v39 + v65) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v76) = 3;
    *(v39 + v64) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v78 = 4;
    sub_10004F87C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v39 + v63) = v76;
    LOBYTE(v76) = 5;
    *(v39 + v62) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v78 = 6;
    sub_10004F8D0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v39 + v61) = v76;
    v78 = 7;
    sub_10004F924();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v39 + v60) = v76;
    v78 = 8;
    sub_10004F978();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v41 = v77;
    v42 = v59;
    *v59 = v76;
    v42[8] = v41;
    LOBYTE(v76) = 9;
    *(v73 + v57) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v76) = 10;
    sub_10003E86C(&qword_1001D58F0, &type metadata accessor for URL);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10004E3A0(v58, v73 + v56);
    v78 = 11;
    sub_10004F9CC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v73 + v55) = v76;
    v78 = 12;
    sub_10004FA20();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v73 + v53) = v76;
    LOBYTE(v76) = 13;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10004E3A0(v54, v73 + v52);
    LOBYTE(v76) = 14;
    *(v73 + v72) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v76) = 15;
    *(v73 + v49) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v76) = 16;
    v43 = KeyedDecodingContainer.decode(_:forKey:)();
    v45 = v73;
    v44 = v74;
    *(v73 + v48) = v43 & 1;
    LOBYTE(v76) = 17;
    v46 = v71;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v70 + 8))(v44, v46);
    sub_10004E3A0(v50, v45 + v47);
    sub_10004EB44(v45, v51, type metadata accessor for CameraControllerConfiguration);
  }

  sub_100006B44(v40);
  return sub_10004A93C(v45, type metadata accessor for CameraControllerConfiguration);
}